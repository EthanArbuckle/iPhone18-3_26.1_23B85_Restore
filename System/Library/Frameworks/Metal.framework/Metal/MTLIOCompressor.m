@interface MTLIOCompressor
- (MTLIOCompressor)initWithType:(int64_t)a3 dst:(id)a4 chunkSize:(unint64_t)a5;
- (void)appendData:(id)a3;
- (void)dealloc;
@end

@implementation MTLIOCompressor

- (MTLIOCompressor)initWithType:(int64_t)a3 dst:(id)a4 chunkSize:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = MTLIOCompressor;
  v8 = [(MTLIOCompressor *)&v10 init];
  if (v8)
  {
    v8->context = MTLIOCreateCompressionContext([objc_msgSend(a4 "path")], a3, a5);
  }

  return v8;
}

- (void)appendData:(id)a3
{
  context = self->context;
  v5 = [a3 bytes];
  v6 = [a3 length];

  MTLIOCompressionContextAppendData(context, v5, v6);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLIOCompressor;
  [(MTLIOCompressor *)&v2 dealloc];
}

@end