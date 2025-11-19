@interface ASDStreamFormat
- (ASDStreamFormat)initWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)a3;
- (ASDStreamFormat)initWithAudioStreamRangedDescription:(AudioStreamRangedDescription *)a3;
- (ASDStreamFormat)initWithSampleRate:(double)a3 numChannels:(unsigned int)a4 commonPCMFormat:(unsigned int)a5 isInterleaved:(BOOL)a6;
- (AudioStreamBasicDescription)audioStreamBasicDescription;
- (AudioStreamRangedDescription)audioStreamRangedDescription;
- (BOOL)isCompatible:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASDStreamFormat

- (AudioStreamBasicDescription)audioStreamBasicDescription
{
  *&retstr->mBitsPerChannel = 0;
  [(ASDStreamFormat *)self sampleRate];
  retstr->mSampleRate = v5;
  retstr->mFormatID = [(ASDStreamFormat *)self formatID];
  retstr->mFormatFlags = [(ASDStreamFormat *)self formatFlags];
  retstr->mBytesPerPacket = [(ASDStreamFormat *)self bytesPerPacket];
  retstr->mFramesPerPacket = [(ASDStreamFormat *)self framesPerPacket];
  retstr->mBytesPerFrame = [(ASDStreamFormat *)self bytesPerFrame];
  retstr->mChannelsPerFrame = [(ASDStreamFormat *)self channelsPerFrame];
  result = [(ASDStreamFormat *)self bitsPerChannel];
  retstr->mBitsPerChannel = result;
  return result;
}

- (AudioStreamRangedDescription)audioStreamRangedDescription
{
  [(ASDStreamFormat *)self audioStreamBasicDescription];
  retstr->mSampleRateRange.mMinimum = 0.0;
  retstr->mSampleRateRange.mMaximum = 0.0;
  [(ASDStreamFormat *)self minimumSampleRate];
  retstr->mSampleRateRange.mMinimum = v5;
  result = [(ASDStreamFormat *)self maximumSampleRate];
  retstr->mSampleRateRange.mMaximum = v7;
  return result;
}

- (ASDStreamFormat)initWithSampleRate:(double)a3 numChannels:(unsigned int)a4 commonPCMFormat:(unsigned int)a5 isInterleaved:(BOOL)a6
{
  v6 = a6;
  v15.receiver = self;
  v15.super_class = ASDStreamFormat;
  result = [(ASDStreamFormat *)&v15 init];
  if (result)
  {
    result->_sampleRate = a3;
    result->_minimumSampleRate = a3;
    result->_maximumSampleRate = a3;
    *&result->_formatID = 0x86C70636DLL;
    result->_framesPerPacket = 1;
    result->_channelsPerFrame = a4;
    v11 = a5 - 1;
    if (a5 - 1 > 4)
    {
      v14 = 0;
      v13 = 40;
    }

    else
    {
      v12 = dword_241643268[v11];
      v13 = dword_24164327C[v11];
      v14 = dword_241643290[v11];
      result->_formatFlags = v12;
    }

    result->_bitsPerChannel = 8 * v14;
    if (v6)
    {
      v14 *= a4;
    }

    else
    {
      result->_formatFlags = v13;
    }

    result->_bytesPerPacket = v14;
    result->_bytesPerFrame = v14;
  }

  return result;
}

- (ASDStreamFormat)initWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)a3
{
  v8.receiver = self;
  v8.super_class = ASDStreamFormat;
  result = [(ASDStreamFormat *)&v8 init];
  if (result)
  {
    mSampleRate = a3->mSampleRate;
    result->_formatID = a3->mFormatID;
    result->_formatFlags = a3->mFormatFlags;
    result->_bytesPerPacket = a3->mBytesPerPacket;
    mFramesPerPacket = a3->mFramesPerPacket;
    result->_framesPerPacket = mFramesPerPacket;
    result->_channelsPerFrame = a3->mChannelsPerFrame;
    mBytesPerFrame = a3->mBytesPerFrame;
    result->_bytesPerFrame = mBytesPerFrame;
    result->_bitsPerChannel = a3->mBitsPerChannel;
    result->_sampleRate = mSampleRate;
    result->_minimumSampleRate = mSampleRate;
    result->_maximumSampleRate = mSampleRate;
    if (a3->mFormatID == 1819304813)
    {
      result->_bytesPerPacket = mBytesPerFrame * mFramesPerPacket;
    }
  }

  return result;
}

- (ASDStreamFormat)initWithAudioStreamRangedDescription:(AudioStreamRangedDescription *)a3
{
  v7.receiver = self;
  v7.super_class = ASDStreamFormat;
  result = [(ASDStreamFormat *)&v7 init];
  if (result)
  {
    result->_sampleRate = a3->mFormat.mSampleRate;
    result->_formatID = a3->mFormat.mFormatID;
    result->_formatFlags = a3->mFormat.mFormatFlags;
    result->_bytesPerPacket = a3->mFormat.mBytesPerPacket;
    mFramesPerPacket = a3->mFormat.mFramesPerPacket;
    result->_framesPerPacket = mFramesPerPacket;
    result->_channelsPerFrame = a3->mFormat.mChannelsPerFrame;
    mBytesPerFrame = a3->mFormat.mBytesPerFrame;
    result->_bytesPerFrame = mBytesPerFrame;
    result->_bitsPerChannel = a3->mFormat.mBitsPerChannel;
    result->_minimumSampleRate = a3->mSampleRateRange.mMinimum;
    result->_maximumSampleRate = a3->mSampleRateRange.mMaximum;
    if (a3->mFormat.mFormatID == 1819304813)
    {
      result->_bytesPerPacket = mBytesPerFrame * mFramesPerPacket;
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(ASDStreamFormat *)self sampleRate];
  [v4 setSampleRate:?];
  [v4 setFormatID:{-[ASDStreamFormat formatID](self, "formatID")}];
  [v4 setFormatFlags:{-[ASDStreamFormat formatFlags](self, "formatFlags")}];
  [v4 setBytesPerPacket:{-[ASDStreamFormat bytesPerPacket](self, "bytesPerPacket")}];
  [v4 setFramesPerPacket:{-[ASDStreamFormat framesPerPacket](self, "framesPerPacket")}];
  [v4 setBytesPerFrame:{-[ASDStreamFormat bytesPerFrame](self, "bytesPerFrame")}];
  [v4 setChannelsPerFrame:{-[ASDStreamFormat channelsPerFrame](self, "channelsPerFrame")}];
  [v4 setBitsPerChannel:{-[ASDStreamFormat bitsPerChannel](self, "bitsPerChannel")}];
  [(ASDStreamFormat *)self minimumSampleRate];
  [v4 setMinimumSampleRate:?];
  [(ASDStreamFormat *)self maximumSampleRate];
  [v4 setMaximumSampleRate:?];
  return v4;
}

- (unint64_t)hash
{
  v3 = [(ASDStreamFormat *)self formatID];
  v4 = [(ASDStreamFormat *)self formatFlags]| v3;
  v5 = [(ASDStreamFormat *)self bytesPerPacket];
  v6 = v4 | v5 | [(ASDStreamFormat *)self framesPerPacket];
  v7 = [(ASDStreamFormat *)self bytesPerFrame];
  v8 = v7 | [(ASDStreamFormat *)self channelsPerFrame];
  return *&self->_sampleRate | v6 | v8 | [(ASDStreamFormat *)self bitsPerChannel];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ASDStreamFormat *)v5 formatID];
      if (v6 == [(ASDStreamFormat *)self formatID]&& (v7 = [(ASDStreamFormat *)v5 formatFlags], v7 == [(ASDStreamFormat *)self formatFlags]) && (v8 = [(ASDStreamFormat *)v5 bytesPerPacket], v8 == [(ASDStreamFormat *)self bytesPerPacket]) && (v9 = [(ASDStreamFormat *)v5 framesPerPacket], v9 == [(ASDStreamFormat *)self framesPerPacket]) && (v10 = [(ASDStreamFormat *)v5 bytesPerFrame], v10 == [(ASDStreamFormat *)self bytesPerFrame]) && (v11 = [(ASDStreamFormat *)v5 channelsPerFrame], v11 == [(ASDStreamFormat *)self channelsPerFrame]) && (v12 = [(ASDStreamFormat *)v5 bitsPerChannel], v12 == [(ASDStreamFormat *)self bitsPerChannel]))
      {
        [(ASDStreamFormat *)v5 sampleRate];
        v14 = v13;
        [(ASDStreamFormat *)self sampleRate];
        v16 = vabdd_f64(v14, v15) < 0.001;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (BOOL)isCompatible:(id)a3
{
  v4 = a3;
  v5 = [v4 formatID];
  if (v5 != [(ASDStreamFormat *)self formatID])
  {
    goto LABEL_13;
  }

  v6 = [v4 formatFlags];
  if (v6 != [(ASDStreamFormat *)self formatFlags])
  {
    goto LABEL_13;
  }

  v7 = [v4 bytesPerPacket];
  if (v7 != [(ASDStreamFormat *)self bytesPerPacket])
  {
    goto LABEL_13;
  }

  v8 = [v4 framesPerPacket];
  if (v8 != [(ASDStreamFormat *)self framesPerPacket])
  {
    goto LABEL_13;
  }

  v9 = [v4 bytesPerFrame];
  if (v9 != [(ASDStreamFormat *)self bytesPerFrame])
  {
    goto LABEL_13;
  }

  v10 = [v4 channelsPerFrame];
  if (v10 != [(ASDStreamFormat *)self channelsPerFrame])
  {
    goto LABEL_13;
  }

  v11 = [v4 bitsPerChannel];
  if (v11 != [(ASDStreamFormat *)self bitsPerChannel])
  {
    goto LABEL_13;
  }

  [v4 minimumSampleRate];
  v13 = v12;
  [(ASDStreamFormat *)self sampleRate];
  if (vabdd_f64(v13, v14) < 0.001)
  {
    goto LABEL_10;
  }

  [v4 maximumSampleRate];
  v16 = v15;
  [(ASDStreamFormat *)self sampleRate];
  if (vabdd_f64(v16, v17) < 0.001 || ([v4 minimumSampleRate], v20 = v19, -[ASDStreamFormat sampleRate](self, "sampleRate"), v20 <= v21) && (objc_msgSend(v4, "maximumSampleRate"), v23 = v22, -[ASDStreamFormat sampleRate](self, "sampleRate"), v23 >= v24))
  {
LABEL_10:
    v18 = 1;
  }

  else
  {
LABEL_13:
    v18 = 0;
  }

  return v18;
}

- (id)description
{
  v24 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(ASDStreamFormat *)self sampleRate];
  v6 = v5;
  if ([(ASDStreamFormat *)self formatID]< 0x20000000 || [(ASDStreamFormat *)self formatID]> 2130706431)
  {
    v7 = 32;
  }

  else
  {
    v7 = ([(ASDStreamFormat *)self formatID]>> 24);
  }

  v23 = v7;
  if (([(ASDStreamFormat *)self formatID]<< 8) < 0x20000000 || ([(ASDStreamFormat *)self formatID]<< 8) > 2130706431)
  {
    v8 = 32;
  }

  else
  {
    v8 = (([(ASDStreamFormat *)self formatID]<< 8) >> 24);
  }

  v22 = v8;
  if ([(ASDStreamFormat *)self formatID]< 0x2000 || [(ASDStreamFormat *)self formatID]> 32511)
  {
    v9 = 32;
  }

  else
  {
    v9 = ([(ASDStreamFormat *)self formatID]>> 8);
  }

  if ([(ASDStreamFormat *)self formatID]< 32 || [(ASDStreamFormat *)self formatID]== 127)
  {
    v10 = 32;
  }

  else
  {
    v10 = [(ASDStreamFormat *)self formatID];
  }

  v11 = [(ASDStreamFormat *)self formatFlags];
  v12 = [(ASDStreamFormat *)self bytesPerPacket];
  v13 = [(ASDStreamFormat *)self framesPerPacket];
  v14 = [(ASDStreamFormat *)self bytesPerFrame];
  v15 = [(ASDStreamFormat *)self channelsPerFrame];
  v16 = [(ASDStreamFormat *)self bitsPerChannel];
  [(ASDStreamFormat *)self minimumSampleRate];
  v18 = v17;
  [(ASDStreamFormat *)self maximumSampleRate];
  v20 = [v24 stringWithFormat:@"<%@ sampleRate:%f formatID:%c%c%c%c formatFlags:0x%08x bytesPerPacket:%u framesPerPacket:%u bytesPerFrame:%u channelsPerFrame:%u bitsPerChannel:%u minimumSampleRate:%f maximumSampleRate:%f>", v4, v6, v23, v22, v9, v10, v11, v12, v13, v14, v15, v16, v18, v19];

  return v20;
}

@end