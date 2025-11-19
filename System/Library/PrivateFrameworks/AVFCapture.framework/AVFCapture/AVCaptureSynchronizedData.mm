@interface AVCaptureSynchronizedData
- (CMTime)timestamp;
- (id)_initWithTimestamp:(id *)a3;
- (void)dealloc;
- (void)setAdjustedTimestamp:(id *)a3;
- (void)setTimestampOverride:(id *)a3;
@end

@implementation AVCaptureSynchronizedData

- (id)_initWithTimestamp:(id *)a3
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
      v6 = *&a3->var0;
      v5->timestamp.epoch = a3->var3;
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

- (void)setTimestampOverride:(id *)a3
{
  synchronizedDataInternal = self->_synchronizedDataInternal;
  v4 = *&a3->var0;
  synchronizedDataInternal->timestamp.epoch = a3->var3;
  *&synchronizedDataInternal->timestamp.value = v4;
}

- (void)setAdjustedTimestamp:(id *)a3
{
  synchronizedDataInternal = self->_synchronizedDataInternal;
  v4 = *&a3->var0;
  synchronizedDataInternal->adjustedTimestamp.epoch = a3->var3;
  *&synchronizedDataInternal->adjustedTimestamp.value = v4;
}

@end