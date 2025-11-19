@interface SNAudioBufferList
+ (void)unownedViewOfRecentFramesWithSourceBuffer:(id)a3 destinationBuffer:(id)a4 numberOfRecentFrames:(unsigned int)a5;
- (SNAudioBufferList)initWithFormat:(id)a3;
@end

@implementation SNAudioBufferList

- (SNAudioBufferList)initWithFormat:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SNAudioBufferList;
  v5 = [(SNAudioBufferList *)&v14 init];
  if (v5)
  {
    v6 = [v4 streamDescription];
    v7 = *v6;
    v8 = *(v6 + 16);
    v13 = *(v6 + 32);
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

+ (void)unownedViewOfRecentFramesWithSourceBuffer:(id)a3 destinationBuffer:(id)a4 numberOfRecentFrames:(unsigned int)a5
{
  v6 = *(a4 + 1);
  v18 = a3;
  if ([v18 frameLength] < a5)
  {
    v14 = "numberOfRecentFrames <= sourceBuffer.frameLength";
    v15 = 22;
    v16 = "SNAudioBufferList.mm";
    v17 = "unownedViewOfRecentFrames";
    goto LABEL_12;
  }

  v7 = [v18 audioBufferList];
  if (*v6)
  {
    v14 = "mBufferMemory == NULL";
    v15 = 112;
    v16 = "CABufferList.h";
    v17 = "VerifyNotTrashingOwnedBuffer";
LABEL_12:
    __assert_rtn(v17, v16, v15, v14);
  }

  memcpy(v6 + 2, v7, (16 * *v7) | 8);
  v8 = [v18 frameLength];
  v9 = [v18 format];
  v10 = [v9 streamDescription];
  if (*v6)
  {
    __assert_rtn("VerifyNotTrashingOwnedBuffer", "CABufferList.h", 112, "mBufferMemory == NULL");
  }

  v11 = *(v6 + 4);
  if (v11)
  {
    v12 = *(v10 + 24) * (v8 - a5);
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