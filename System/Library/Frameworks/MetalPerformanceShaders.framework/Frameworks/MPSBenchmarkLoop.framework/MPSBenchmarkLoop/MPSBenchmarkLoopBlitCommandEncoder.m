@interface MPSBenchmarkLoopBlitCommandEncoder
- (BOOL)respondsToSelector:(SEL)a3;
- (MPSBenchmarkLoopBlitCommandEncoder)initWithBlitEncoder:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)dealloc;
- (void)endEncoding;
@end

@implementation MPSBenchmarkLoopBlitCommandEncoder

- (MPSBenchmarkLoopBlitCommandEncoder)initWithBlitEncoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MPSBenchmarkLoopBlitCommandEncoder;
  result = [(MPSBenchmarkLoopBlitCommandEncoder *)&v7 init];
  if (result)
  {
    v5 = result;
    v6 = a3;
    result = v5;
    v5->_originalCommandEncoder = v6;
  }

  return result;
}

- (void)endEncoding
{
  currentWorkloadCapture = self->_currentWorkloadCapture;
  v7 = objc_msgSend_label(self, a2, v2, v3, v4);
  objc_msgSend_endComputeEncoderWithLabel_(currentWorkloadCapture, v8, v7, v9, v10);
  originalCommandEncoder = self->_originalCommandEncoder;

  MEMORY[0x2821F9670](originalCommandEncoder, sel_endEncoding, v11, v12, v13);
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  originalCommandEncoder = self->_originalCommandEncoder;
  if (objc_opt_respondsToSelector())
  {
    return self->_originalCommandEncoder;
  }

  else
  {
    return 0;
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  originalCommandEncoder = self->_originalCommandEncoder;
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = MPSBenchmarkLoopBlitCommandEncoder;
  return [(MPSBenchmarkLoopBlitCommandEncoder *)&v7 respondsToSelector:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSBenchmarkLoopBlitCommandEncoder;
  [(MPSBenchmarkLoopBlitCommandEncoder *)&v3 dealloc];
}

@end