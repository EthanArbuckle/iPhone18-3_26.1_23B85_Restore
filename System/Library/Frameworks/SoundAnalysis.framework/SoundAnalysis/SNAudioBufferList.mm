@interface SNAudioBufferList
+ (void)unownedViewOfRecentFramesWithSourceBuffer:(id)buffer destinationBuffer:(id)destinationBuffer numberOfRecentFrames:(unsigned int)frames;
- (SNAudioBufferList)initWithFormat:(id)format;
@end

@implementation SNAudioBufferList

- (SNAudioBufferList)initWithFormat:(id)format
{
  formatCopy = format;
  v14.receiver = self;
  v14.super_class = SNAudioBufferList;
  v5 = [(SNAudioBufferList *)&v14 init];
  if (v5)
  {
    streamDescription = [formatCopy streamDescription];
    v7 = *streamDescription;
    v8 = *(streamDescription + 16);
    v13 = *(streamDescription + 32);
    v12[0] = v7;
    v12[1] = v8;
    v9 = sub_1C9A5574C(v12);
    ptr = v5->_ringBufferWriteBufferList.__ptr_;
    v5->_ringBufferWriteBufferList.__ptr_ = v9;
    if (ptr)
    {
      sub_1C9A54D5C(v5 + 8, ptr);
    }
  }

  return v5;
}

+ (void)unownedViewOfRecentFramesWithSourceBuffer:(id)buffer destinationBuffer:(id)destinationBuffer numberOfRecentFrames:(unsigned int)frames
{
  v6 = *(destinationBuffer + 1);
  bufferCopy = buffer;
  if ([bufferCopy frameLength] < frames)
  {
    v14 = "numberOfRecentFrames <= sourceBuffer.frameLength";
    v15 = 22;
    v16 = "SNAudioBufferList.mm";
    v17 = "unownedViewOfRecentFrames";
    goto LABEL_12;
  }

  audioBufferList = [bufferCopy audioBufferList];
  if (*v6)
  {
    v14 = "mBufferMemory == NULL";
    v15 = 112;
    v16 = "CABufferList.h";
    v17 = "VerifyNotTrashingOwnedBuffer";
LABEL_12:
    __assert_rtn(v17, v16, v15, v14);
  }

  memcpy(v6 + 2, audioBufferList, (16 * *audioBufferList) | 8);
  frameLength = [bufferCopy frameLength];
  format = [bufferCopy format];
  streamDescription = [format streamDescription];
  if (*v6)
  {
    __assert_rtn("VerifyNotTrashingOwnedBuffer", "CABufferList.h", 112, "mBufferMemory == NULL");
  }

  v11 = *(v6 + 4);
  if (v11)
  {
    v12 = *(streamDescription + 24) * (frameLength - frames);
    v13 = v6 + 4;
    do
    {
      *v13 += v12;
      *(v13 - 1) -= v12;
      v13 += 2;
      --v11;
    }

    while (v11);
  }
}

@end