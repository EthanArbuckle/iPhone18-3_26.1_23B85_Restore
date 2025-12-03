@interface SNAudioRingBuffer
+ (BOOL)copyRecentFramesFrom:(id)from to:(id)to error:(id *)error;
+ (id)copyRecentFramesOfAudioRingBufferToAVAudioBufferFrom:(id)from frameCount:(int64_t)count ringBufferStartSampleTime:(int64_t *)time;
+ (id)copyToAVAudioBufferFrom:(id)from ringBufferStartSampleTime:(int64_t *)time error:(id *)error;
- (BOOL)fetch:(AudioBufferList *)fetch frameCount:(unsigned int)count frameNumber:(int64_t)number error:(id *)error;
- (BOOL)getTimeBoundsWithStartTime:(int64_t *)time endTime:(int64_t *)endTime;
- (BOOL)resizeWithFormat:(id)format newCapacityFrames:(unsigned int)frames error:(id *)error;
- (BOOL)store:(const AudioBufferList *)store frameCount:(unsigned int)count frameNumber:(int64_t)number error:(id *)error;
- (SNAudioRingBuffer)initWithFormat:(id)format capacityFrames:(int64_t)frames error:(id *)error;
- (id)capacityFramesWithError:(id *)error;
- (id)formatWithError:(id *)error;
@end

@implementation SNAudioRingBuffer

- (SNAudioRingBuffer)initWithFormat:(id)format capacityFrames:(int64_t)frames error:(id *)error
{
  formatCopy = format;
  v28.receiver = self;
  v28.super_class = SNAudioRingBuffer;
  v9 = [(SNAudioRingBuffer *)&v28 init];
  if (v9)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3812000000;
    v24 = sub_1C9A78310;
    v25 = sub_1C9A78320;
    v26 = "";
    v27 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1C9A7832C;
    v17[3] = &unk_1E83474E0;
    v19 = &v21;
    v18 = formatCopy;
    framesCopy = frames;
    if (sub_1C9A74388(SNDSPGraphUtilities, v17, error))
    {
      v10 = v22[6];
      v22[6] = 0;
      sub_1C9A78DD8(v9 + 1, v10);
    }

    else
    {

      v9 = 0;
    }

    _Block_object_dispose(&v21, 8);
    v14 = v27;
    v27 = 0;
    if (v14)
    {
      v15 = MEMORY[0x1CCA91ED0](v14, v11, v12, v13);
      MEMORY[0x1CCA92400](v15, 0x1020C4047CAF6D5);
    }
  }

  return v9;
}

- (id)formatWithError:(id *)error
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1C9A7844C;
  v5[3] = &unk_1E8347508;
  v5[4] = self;
  v3 = sub_1C9A72EA0(SNDSPGraphUtilities, v5, error);

  return v3;
}

- (BOOL)resizeWithFormat:(id)format newCapacityFrames:(unsigned int)frames error:(id *)error
{
  formatCopy = format;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1C9A78568;
  v11[3] = &unk_1E8347530;
  v11[4] = self;
  v12 = formatCopy;
  framesCopy = frames;
  v9 = formatCopy;
  LOBYTE(error) = sub_1C9A74388(SNDSPGraphUtilities, v11, error);

  return error;
}

- (id)capacityFramesWithError:(id *)error
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1C9A78700;
  v5[3] = &unk_1E8346FF8;
  v5[4] = self;
  v3 = sub_1C9A72EA0(SNDSPGraphUtilities, v5, error);

  return v3;
}

- (BOOL)getTimeBoundsWithStartTime:(int64_t *)time endTime:(int64_t *)endTime
{
  v8 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1C9A787F4;
  v9[3] = &unk_1E8347558;
  v9[4] = self;
  v9[5] = time;
  v9[6] = endTime;
  v4 = sub_1C9A72EA0(SNDSPGraphUtilities, v9, &v8);
  v5 = v8;
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)store:(const AudioBufferList *)store frameCount:(unsigned int)count frameNumber:(int64_t)number error:(id *)error
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1C9A788CC;
  v7[3] = &unk_1E8347580;
  v7[4] = self;
  v7[5] = store;
  countCopy = count;
  v7[6] = number;
  return sub_1C9A74388(SNDSPGraphUtilities, v7, error);
}

- (BOOL)fetch:(AudioBufferList *)fetch frameCount:(unsigned int)count frameNumber:(int64_t)number error:(id *)error
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1C9A78984;
  v7[3] = &unk_1E8347580;
  v7[4] = self;
  v7[5] = fetch;
  countCopy = count;
  v7[6] = number;
  return sub_1C9A74388(SNDSPGraphUtilities, v7, error);
}

+ (id)copyToAVAudioBufferFrom:(id)from ringBufferStartSampleTime:(int64_t *)time error:(id *)error
{
  fromCopy = from;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1C9A78A84;
  v11[3] = &unk_1E83475A8;
  v12 = fromCopy;
  timeCopy = time;
  v8 = fromCopy;
  v9 = sub_1C9A72EA0(SNDSPGraphUtilities, v11, error);

  return v9;
}

+ (id)copyRecentFramesOfAudioRingBufferToAVAudioBufferFrom:(id)from frameCount:(int64_t)count ringBufferStartSampleTime:(int64_t *)time
{
  fromCopy = from;
  v12 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1C9A78C88;
  v13[3] = &unk_1E83475D0;
  v14 = fromCopy;
  countCopy = count;
  timeCopy = time;
  v8 = fromCopy;
  v9 = sub_1C9A72EA0(SNDSPGraphUtilities, v13, &v12);
  v10 = v12;

  return v9;
}

+ (BOOL)copyRecentFramesFrom:(id)from to:(id)to error:(id *)error
{
  fromCopy = from;
  toCopy = to;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C9A78D9C;
  v12[3] = &unk_1E8347160;
  v13 = fromCopy;
  v14 = toCopy;
  v9 = toCopy;
  v10 = fromCopy;
  LOBYTE(error) = sub_1C9A74388(SNDSPGraphUtilities, v12, error);

  return error;
}

@end