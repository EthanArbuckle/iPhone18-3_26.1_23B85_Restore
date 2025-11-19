@interface AVCaptureSynchronizedDepthData
- (id)_initWithDepthData:(id)a3 timestamp:(id *)a4 depthDataWasDropped:(BOOL)a5 droppedReason:(int64_t)a6;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
@end

@implementation AVCaptureSynchronizedDepthData

- (id)_initWithDepthData:(id)a3 timestamp:(id *)a4 depthDataWasDropped:(BOOL)a5 droppedReason:(int64_t)a6
{
  if (!a3)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v12);
    }

    NSLog(&cfstr_SuppressingExc.isa, v12);
    return 0;
  }

  v15.receiver = self;
  v15.super_class = AVCaptureSynchronizedDepthData;
  v14 = *a4;
  v10 = [(AVCaptureSynchronizedData *)&v15 _initWithTimestamp:&v14];
  if (v10)
  {
    v11 = objc_alloc_init(AVCaptureSynchronizedDepthDataInternal);
    v10[2] = v11;
    if (v11)
    {
      *(v10[2] + 8) = a3;
      *(v10[2] + 16) = a5;
      *(v10[2] + 24) = a6;
      return v10;
    }

    return 0;
  }

  return v10;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
  }

  v4.receiver = self;
  v4.super_class = AVCaptureSynchronizedDepthData;
  [(AVCaptureSynchronizedData *)&v4 dealloc];
}

- (id)debugDescription
{
  if ([(AVCaptureSynchronizedDepthData *)self depthDataWasDropped])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@", dropped reason (%d)", -[AVCaptureSynchronizedDepthData droppedReason](self, "droppedReason")];
  }

  else
  {
    v3 = &stru_1F1CBCFE8;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[AVDepthData debugDescription](-[AVCaptureSynchronizedDepthData depthData](self, "depthData"), "debugDescription"), v3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureSynchronizedDepthData debugDescription](self, "debugDescription")];
}

@end