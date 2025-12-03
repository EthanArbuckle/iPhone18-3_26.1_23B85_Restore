@interface SHAudioUtilities
+ (BOOL)isAudioFormatSupported:(id)supported;
+ (BOOL)willAudioFormatCauseBufferMutation:(id)mutation;
+ (double)durationOfBuffer:(id)buffer;
+ (id)appendBuffer:(id)buffer toBuffer:(id)toBuffer;
+ (id)audioBufferFromData:(void *)data byteSize:(unint64_t)size inFormat:(id)format;
+ (id)bufferHead:(id)head duration:(double)duration;
+ (id)bufferTail:(id)tail duration:(double)duration;
+ (id)extractFromBuffer:(id)buffer atPosition:(unsigned int)position length:(unsigned int)length;
@end

@implementation SHAudioUtilities

+ (id)bufferHead:(id)head duration:(double)duration
{
  headCopy = head;
  [self durationOfBuffer:headCopy];
  if (v8 <= duration)
  {
    v11 = headCopy;
  }

  else
  {
    format = [headCopy format];
    [format sampleRate];
    LODWORD(v4) = vcvtad_u64_f64(v10 * duration);

    v11 = [self extractFromBuffer:headCopy atPosition:0 length:v4];
  }

  v12 = v11;

  return v12;
}

+ (id)bufferTail:(id)tail duration:(double)duration
{
  tailCopy = tail;
  [self durationOfBuffer:tailCopy];
  if (v8 <= duration)
  {
    v15 = tailCopy;
  }

  else
  {
    v9 = v8 - duration;
    format = [tailCopy format];
    [format sampleRate];
    v12 = (v9 * v11);

    format2 = [tailCopy format];
    [format2 sampleRate];
    LODWORD(v4) = vcvtad_u64_f64(v14 * duration);

    v15 = [self extractFromBuffer:tailCopy atPosition:v12 length:v4];
  }

  v16 = v15;

  return v16;
}

+ (double)durationOfBuffer:(id)buffer
{
  bufferCopy = buffer;
  frameLength = [bufferCopy frameLength];
  format = [bufferCopy format];

  [format sampleRate];
  v7 = frameLength / v6;

  return v7;
}

+ (id)extractFromBuffer:(id)buffer atPosition:(unsigned int)position length:(unsigned int)length
{
  bufferCopy = buffer;
  if ([bufferCopy frameLength] >= position)
  {
    v9 = [bufferCopy frameLength] - position;
    if (v9 >= length)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = v9;
    }

    v11 = objc_alloc(MEMORY[0x277CB83C8]);
    format = [bufferCopy format];
    v8 = [v11 initWithPCMFormat:format frameCapacity:lengthCopy];

    [v8 setFrameLength:lengthCopy];
    if (*[bufferCopy audioBufferList])
    {
      v13 = 0;
      v14 = 16;
      do
      {
        format2 = [v8 format];
        v16 = *([format2 streamDescription] + 24);

        memcpy(*([v8 audioBufferList] + v14), (*(objc_msgSend(bufferCopy, "audioBufferList") + v14) + v16 * position), objc_msgSend(v8, "frameLength") * v16);
        ++v13;
        v14 += 16;
      }

      while (v13 < *[bufferCopy audioBufferList]);
    }
  }

  else
  {
    v8 = bufferCopy;
  }

  return v8;
}

+ (BOOL)willAudioFormatCauseBufferMutation:(id)mutation
{
  mutationCopy = mutation;
  v4 = [mutationCopy commonFormat] != 3 || objc_msgSend(mutationCopy, "channelCount") != 1;

  return v4;
}

+ (BOOL)isAudioFormatSupported:(id)supported
{
  supportedCopy = supported;
  if (*([supportedCopy streamDescription] + 8) == 1819304813 && objc_msgSend(supportedCopy, "channelCount") <= 2 && objc_msgSend(supportedCopy, "commonFormat") != 4 && objc_msgSend(supportedCopy, "commonFormat") != 2 && ((objc_msgSend(supportedCopy, "isInterleaved") & 1) != 0 || objc_msgSend(supportedCopy, "channelCount") != 2))
  {
    [supportedCopy sampleRate];
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

+ (id)audioBufferFromData:(void *)data byteSize:(unint64_t)size inFormat:(id)format
{
  formatCopy = format;
  v8 = size / *([formatCopy streamDescription] + 24);
  v9 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:formatCopy frameCapacity:v8];

  [v9 setFrameLength:v8];
  memcpy(*([v9 audioBufferList] + 16), data, size);

  return v9;
}

+ (id)appendBuffer:(id)buffer toBuffer:(id)toBuffer
{
  bufferCopy = buffer;
  toBufferCopy = toBuffer;
  format = [toBufferCopy format];
  v8 = *([format streamDescription] + 8);
  format2 = [bufferCopy format];
  v10 = *([format2 streamDescription] + 8);

  if (v8 == v10)
  {
    frameLength = [toBufferCopy frameLength];
    v12 = [bufferCopy frameLength] + frameLength;
    if (v12 <= [toBufferCopy frameCapacity])
    {
      v15 = toBufferCopy;
      if (*[v15 audioBufferList])
      {
        v28 = v12;
        v19 = 0;
        v20 = 16;
        do
        {
          frameLength2 = [v15 frameLength];
          format3 = [bufferCopy format];
          v23 = (*([format3 streamDescription] + 24) * frameLength2);

          v24 = *([v15 audioBufferList] + v20);
          v25 = *([bufferCopy audioBufferList] + v20);
          LODWORD(format3) = [bufferCopy frameLength];
          format4 = [bufferCopy format];
          memcpy((v24 + v23), v25, (*([format4 streamDescription] + 24) * format3));

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
      format5 = [toBufferCopy format];
      v15 = [v13 initWithPCMFormat:format5 frameCapacity:v12];

      if (*[toBufferCopy audioBufferList])
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = [MEMORY[0x277CBEB28] dataWithBytes:*(objc_msgSend(toBufferCopy length:{"audioBufferList") + v16 + 16), *(objc_msgSend(toBufferCopy, "audioBufferList") + v16 + 12)}];
          [v18 appendBytes:*(objc_msgSend(bufferCopy length:{"audioBufferList") + v16 + 16), *(objc_msgSend(bufferCopy, "audioBufferList") + v16 + 12)}];
          [v18 getBytes:*(objc_msgSend(v15 length:{"audioBufferList") + v16 + 16), objc_msgSend(v18, "length")}];

          ++v17;
          v16 += 16;
        }

        while (v17 < *[toBufferCopy audioBufferList]);
      }
    }

    [v15 setFrameLength:v12];
  }

  else
  {
    v15 = toBufferCopy;
  }

  return v15;
}

@end