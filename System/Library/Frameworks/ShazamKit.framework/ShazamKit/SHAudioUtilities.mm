@interface SHAudioUtilities
+ (BOOL)isAudioFormatSupported:(id)a3;
+ (BOOL)willAudioFormatCauseBufferMutation:(id)a3;
+ (double)durationOfBuffer:(id)a3;
+ (id)appendBuffer:(id)a3 toBuffer:(id)a4;
+ (id)audioBufferFromData:(void *)a3 byteSize:(unint64_t)a4 inFormat:(id)a5;
+ (id)bufferHead:(id)a3 duration:(double)a4;
+ (id)bufferTail:(id)a3 duration:(double)a4;
+ (id)extractFromBuffer:(id)a3 atPosition:(unsigned int)a4 length:(unsigned int)a5;
@end

@implementation SHAudioUtilities

+ (id)bufferHead:(id)a3 duration:(double)a4
{
  v7 = a3;
  [a1 durationOfBuffer:v7];
  if (v8 <= a4)
  {
    v11 = v7;
  }

  else
  {
    v9 = [v7 format];
    [v9 sampleRate];
    LODWORD(v4) = vcvtad_u64_f64(v10 * a4);

    v11 = [a1 extractFromBuffer:v7 atPosition:0 length:v4];
  }

  v12 = v11;

  return v12;
}

+ (id)bufferTail:(id)a3 duration:(double)a4
{
  v7 = a3;
  [a1 durationOfBuffer:v7];
  if (v8 <= a4)
  {
    v15 = v7;
  }

  else
  {
    v9 = v8 - a4;
    v10 = [v7 format];
    [v10 sampleRate];
    v12 = (v9 * v11);

    v13 = [v7 format];
    [v13 sampleRate];
    LODWORD(v4) = vcvtad_u64_f64(v14 * a4);

    v15 = [a1 extractFromBuffer:v7 atPosition:v12 length:v4];
  }

  v16 = v15;

  return v16;
}

+ (double)durationOfBuffer:(id)a3
{
  v3 = a3;
  v4 = [v3 frameLength];
  v5 = [v3 format];

  [v5 sampleRate];
  v7 = v4 / v6;

  return v7;
}

+ (id)extractFromBuffer:(id)a3 atPosition:(unsigned int)a4 length:(unsigned int)a5
{
  v7 = a3;
  if ([v7 frameLength] >= a4)
  {
    v9 = [v7 frameLength] - a4;
    if (v9 >= a5)
    {
      v10 = a5;
    }

    else
    {
      v10 = v9;
    }

    v11 = objc_alloc(MEMORY[0x277CB83C8]);
    v12 = [v7 format];
    v8 = [v11 initWithPCMFormat:v12 frameCapacity:v10];

    [v8 setFrameLength:v10];
    if (*[v7 audioBufferList])
    {
      v13 = 0;
      v14 = 16;
      do
      {
        v15 = [v8 format];
        v16 = *([v15 streamDescription] + 24);

        memcpy(*([v8 audioBufferList] + v14), (*(objc_msgSend(v7, "audioBufferList") + v14) + v16 * a4), objc_msgSend(v8, "frameLength") * v16);
        ++v13;
        v14 += 16;
      }

      while (v13 < *[v7 audioBufferList]);
    }
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

+ (BOOL)willAudioFormatCauseBufferMutation:(id)a3
{
  v3 = a3;
  v4 = [v3 commonFormat] != 3 || objc_msgSend(v3, "channelCount") != 1;

  return v4;
}

+ (BOOL)isAudioFormatSupported:(id)a3
{
  v3 = a3;
  if (*([v3 streamDescription] + 8) == 1819304813 && objc_msgSend(v3, "channelCount") <= 2 && objc_msgSend(v3, "commonFormat") != 4 && objc_msgSend(v3, "commonFormat") != 2 && ((objc_msgSend(v3, "isInterleaved") & 1) != 0 || objc_msgSend(v3, "channelCount") != 2))
  {
    [v3 sampleRate];
    v7 = v6;
    v4 = 1;
    if (v6 > 44099)
    {
      if (v7 == 44100)
      {
        goto LABEL_6;
      }

      v8 = 48000;
    }

    else
    {
      if (v7 == 16000)
      {
        goto LABEL_6;
      }

      v8 = 32000;
    }

    if (v7 == v8)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:

  return v4;
}

+ (id)audioBufferFromData:(void *)a3 byteSize:(unint64_t)a4 inFormat:(id)a5
{
  v7 = a5;
  v8 = a4 / *([v7 streamDescription] + 24);
  v9 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v7 frameCapacity:v8];

  [v9 setFrameLength:v8];
  memcpy(*([v9 audioBufferList] + 16), a3, a4);

  return v9;
}

+ (id)appendBuffer:(id)a3 toBuffer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 format];
  v8 = *([v7 streamDescription] + 8);
  v9 = [v5 format];
  v10 = *([v9 streamDescription] + 8);

  if (v8 == v10)
  {
    v11 = [v6 frameLength];
    v12 = [v5 frameLength] + v11;
    if (v12 <= [v6 frameCapacity])
    {
      v15 = v6;
      if (*[v15 audioBufferList])
      {
        v28 = v12;
        v19 = 0;
        v20 = 16;
        do
        {
          v21 = [v15 frameLength];
          v22 = [v5 format];
          v23 = (*([v22 streamDescription] + 24) * v21);

          v24 = *([v15 audioBufferList] + v20);
          v25 = *([v5 audioBufferList] + v20);
          LODWORD(v22) = [v5 frameLength];
          v26 = [v5 format];
          memcpy((v24 + v23), v25, (*([v26 streamDescription] + 24) * v22));

          ++v19;
          v20 += 16;
        }

        while (v19 < *[v15 audioBufferList]);
        v12 = v28;
      }
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x277CB83C8]);
      v14 = [v6 format];
      v15 = [v13 initWithPCMFormat:v14 frameCapacity:v12];

      if (*[v6 audioBufferList])
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = [MEMORY[0x277CBEB28] dataWithBytes:*(objc_msgSend(v6 length:{"audioBufferList") + v16 + 16), *(objc_msgSend(v6, "audioBufferList") + v16 + 12)}];
          [v18 appendBytes:*(objc_msgSend(v5 length:{"audioBufferList") + v16 + 16), *(objc_msgSend(v5, "audioBufferList") + v16 + 12)}];
          [v18 getBytes:*(objc_msgSend(v15 length:{"audioBufferList") + v16 + 16), objc_msgSend(v18, "length")}];

          ++v17;
          v16 += 16;
        }

        while (v17 < *[v6 audioBufferList]);
      }
    }

    [v15 setFrameLength:v12];
  }

  else
  {
    v15 = v6;
  }

  return v15;
}

@end