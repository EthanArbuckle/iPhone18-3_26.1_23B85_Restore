@interface MTLIOCompressor
- (MTLIOCompressor)initWithType:(int64_t)type dst:(id)dst chunkSize:(unint64_t)size;
- (void)appendData:(id)data;
- (void)dealloc;
@end

@implementation MTLIOCompressor

- (MTLIOCompressor)initWithType:(int64_t)type dst:(id)dst chunkSize:(unint64_t)size
{
  v10.receiver = self;
  v10.super_class = MTLIOCompressor;
  v8 = [(MTLIOCompressor *)&v10 init];
  if (v8)
  {
    v8->context = MTLIOCreateCompressionContext([objc_msgSend(dst "path")], type, size);
  }

  return v8;
}

- (void)appendData:(id)data
{
  context = self->context;
  bytes = [data bytes];
  v6 = [data length];

  MTLIOCompressionContextAppendData(context, bytes, v6);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLIOCompressor;
  [(MTLIOCompressor *)&v2 dealloc];
}

@end