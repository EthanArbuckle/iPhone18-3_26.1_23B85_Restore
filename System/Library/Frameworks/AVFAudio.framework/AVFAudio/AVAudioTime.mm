@interface AVAudioTime
+ (AVAudioTime)timeWithAudioTimeStamp:(const AudioTimeStamp *)ts sampleRate:(double)sampleRate;
+ (AVAudioTime)timeWithHostTime:(uint64_t)hostTime;
+ (AVAudioTime)timeWithHostTime:(uint64_t)hostTime sampleTime:(AVAudioFramePosition)sampleTime atRate:(double)sampleRate;
+ (AVAudioTime)timeWithSampleTime:(AVAudioFramePosition)sampleTime atRate:(double)sampleRate;
- (AVAudioTime)extrapolateTimeFromAnchor:(AVAudioTime *)anchorTime;
- (AVAudioTime)init;
- (AVAudioTime)initWithAudioTimeStamp:(const AudioTimeStamp *)ts sampleRate:(double)sampleRate;
- (AVAudioTime)initWithHostTime:(uint64_t)hostTime;
- (AVAudioTime)initWithHostTime:(uint64_t)hostTime sampleTime:(AVAudioFramePosition)sampleTime atRate:(double)sampleRate;
- (AVAudioTime)initWithSampleTime:(AVAudioFramePosition)sampleTime atRate:(double)sampleRate;
- (AudioTimeStamp)audioTimeStamp;
- (id)description;
@end

@implementation AVAudioTime

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  mFlags = self->_ats.mFlags;
  if ((mFlags & 2) == 0)
  {
    v9[0] = 0;
    if (mFlags)
    {
      goto LABEL_3;
    }

LABEL_6:
    __str[0] = 0;
    if ((mFlags & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7[0] = 0;
    goto LABEL_8;
  }

  [AVAudioTime secondsForHostTime:self->_ats.mHostTime];
  snprintf(v9, 0x20uLL, "%.6f s", v4);
  mFlags = self->_ats.mFlags;
  if ((mFlags & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  snprintf(__str, 0x30uLL, "%ld fr (/%.f Hz)", self->_ats.mSampleTime, self->_sampleRate);
  if ((self->_ats.mFlags & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  snprintf(v7, 0x20uLL, "%.6f rs", self->_ats.mRateScalar);
LABEL_8:
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVAudioTime %p: %s %s %s>", self, v9, __str, v7];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (AudioTimeStamp)audioTimeStamp
{
  v3 = *&self->mWordClockTime;
  *&retstr->mSampleTime = *&self->mHostTime;
  *&retstr->mRateScalar = v3;
  v4 = *&self->mFlags;
  *&retstr->mSMPTETime.mSubframes = *&self->mSMPTETime.mType;
  *&retstr->mSMPTETime.mHours = v4;
  return self;
}

- (AVAudioTime)initWithAudioTimeStamp:(const AudioTimeStamp *)ts sampleRate:(double)sampleRate
{
  v10.receiver = self;
  v10.super_class = AVAudioTime;
  result = [(AVAudioTime *)&v10 init];
  if (result)
  {
    v7 = *&ts->mSampleTime;
    v8 = *&ts->mRateScalar;
    v9 = *&ts->mSMPTETime.mSubframes;
    *&result->_ats.mSMPTETime.mHours = *&ts->mSMPTETime.mHours;
    *&result->_ats.mSMPTETime.mSubframes = v9;
    *&result->_ats.mRateScalar = v8;
    *&result->_ats.mSampleTime = v7;
    result->_sampleRate = sampleRate;
  }

  return result;
}

- (AVAudioTime)extrapolateTimeFromAnchor:(AVAudioTime *)anchorTime
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (anchorTime)
  {
    [(AVAudioTime *)anchorTime audioTimeStamp];
  }

  sampleRate = self->_sampleRate;
  if (sampleRate == 0.0)
  {
    return 0;
  }

  v6 = *&self->_ats.mSMPTETime.mHours;
  v7 = *&self->_ats.mRateScalar;
  v9 = *&self->_ats.mSampleTime;
  v10 = v7;
  v11 = *&self->_ats.mSMPTETime.mSubframes;
  v12 = v6;
  v8 = DWORD2(v6);
  if ((~DWORD2(v6) & 7) == 0)
  {
    return [AVAudioTime timeWithAudioTimeStamp:&v9 sampleRate:sampleRate, *&v6];
  }

  result = 0;
  if ((BYTE8(v6) & 3) != 0 && (BYTE8(v16) & 3) == 3)
  {
    if ((BYTE8(v6) & 4) != 0)
    {
      *&v6 = v10;
    }

    else
    {
      *&v6 = 1.0;
      if ((BYTE8(v16) & 4) != 0)
      {
        v8 = DWORD2(v6) | 4;
        *&v6 = v14;
        *&v10 = v14;
      }
    }

    if ((v8 & 2) == 0)
    {
      *(&v9 + 1) = (*(&v13 + 1) + (*&v9 - *&v13) * (*&v6 * 24000000.0 / sampleRate));
    }

    if ((v8 & 1) == 0)
    {
      *&v6 = *&v13 + round(sampleRate / (*&v6 * 24000000.0) * (*(&v9 + 1) - *(&v13 + 1)));
      *&v9 = v6;
    }

    DWORD2(v12) = v8 | 3;
    return [AVAudioTime timeWithAudioTimeStamp:&v9 sampleRate:sampleRate, *&v6];
  }

  return result;
}

- (AVAudioTime)initWithHostTime:(uint64_t)hostTime sampleTime:(AVAudioFramePosition)sampleTime atRate:(double)sampleRate
{
  v9.receiver = self;
  v9.super_class = AVAudioTime;
  result = [(AVAudioTime *)&v9 init];
  if (result)
  {
    result->_ats.mFlags = 3;
    result->_ats.mHostTime = hostTime;
    result->_ats.mSampleTime = sampleTime;
    result->_sampleRate = sampleRate;
  }

  return result;
}

- (AVAudioTime)initWithSampleTime:(AVAudioFramePosition)sampleTime atRate:(double)sampleRate
{
  v7.receiver = self;
  v7.super_class = AVAudioTime;
  result = [(AVAudioTime *)&v7 init];
  if (result)
  {
    result->_ats.mFlags = 1;
    result->_ats.mSampleTime = sampleTime;
    result->_sampleRate = sampleRate;
  }

  return result;
}

- (AVAudioTime)initWithHostTime:(uint64_t)hostTime
{
  v5.receiver = self;
  v5.super_class = AVAudioTime;
  result = [(AVAudioTime *)&v5 init];
  if (result)
  {
    result->_ats.mFlags = 2;
    result->_ats.mHostTime = hostTime;
  }

  return result;
}

- (AVAudioTime)init
{
  v3.receiver = self;
  v3.super_class = AVAudioTime;
  return [(AVAudioTime *)&v3 init];
}

+ (AVAudioTime)timeWithAudioTimeStamp:(const AudioTimeStamp *)ts sampleRate:(double)sampleRate
{
  v4 = [[AVAudioTime alloc] initWithAudioTimeStamp:ts sampleRate:sampleRate];

  return v4;
}

+ (AVAudioTime)timeWithHostTime:(uint64_t)hostTime sampleTime:(AVAudioFramePosition)sampleTime atRate:(double)sampleRate
{
  v5 = [[AVAudioTime alloc] initWithHostTime:hostTime sampleTime:sampleTime atRate:sampleRate];

  return v5;
}

+ (AVAudioTime)timeWithSampleTime:(AVAudioFramePosition)sampleTime atRate:(double)sampleRate
{
  v4 = [[AVAudioTime alloc] initWithSampleTime:sampleTime atRate:sampleRate];

  return v4;
}

+ (AVAudioTime)timeWithHostTime:(uint64_t)hostTime
{
  v3 = [[AVAudioTime alloc] initWithHostTime:hostTime];

  return v3;
}

@end