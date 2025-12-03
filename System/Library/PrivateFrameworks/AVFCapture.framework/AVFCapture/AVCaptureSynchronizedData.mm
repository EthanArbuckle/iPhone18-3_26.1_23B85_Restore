@interface AVCaptureSynchronizedData
- (CMTime)timestamp;
- (id)_initWithTimestamp:(id *)timestamp;
- (void)dealloc;
- (void)setAdjustedTimestamp:(id *)timestamp;
- (void)setTimestampOverride:(id *)override;
@end

@implementation AVCaptureSynchronizedData

- (id)_initWithTimestamp:(id *)timestamp
{
  v10.receiver = self;
  v10.super_class = AVCaptureSynchronizedData;
  v4 = [(AVCaptureSynchronizedData *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVCaptureSynchronizedDataInternal);
    v4->_synchronizedDataInternal = v5;
    if (v5)
    {
      v6 = *&timestamp->var0;
      v5->timestamp.epoch = timestamp->var3;
      *&v5->timestamp.value = v6;
      synchronizedDataInternal = v4->_synchronizedDataInternal;
      v8 = MEMORY[0x1E6960C70];
      *&synchronizedDataInternal->adjustedTimestamp.value = *MEMORY[0x1E6960C70];
      synchronizedDataInternal->adjustedTimestamp.epoch = *(v8 + 16);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureSynchronizedData;
  [(AVCaptureSynchronizedData *)&v3 dealloc];
}

- (CMTime)timestamp
{
  v3 = *&self->timescale;
  v4 = 8;
  if ((*(v3 + 20) & 1) == 0)
  {
    v4 = 32;
  }

  *retstr = *(v3 + v4);
  return self;
}

- (void)setTimestampOverride:(id *)override
{
  synchronizedDataInternal = self->_synchronizedDataInternal;
  v4 = *&override->var0;
  synchronizedDataInternal->timestamp.epoch = override->var3;
  *&synchronizedDataInternal->timestamp.value = v4;
}

- (void)setAdjustedTimestamp:(id *)timestamp
{
  synchronizedDataInternal = self->_synchronizedDataInternal;
  v4 = *&timestamp->var0;
  synchronizedDataInternal->adjustedTimestamp.epoch = timestamp->var3;
  *&synchronizedDataInternal->adjustedTimestamp.value = v4;
}

@end