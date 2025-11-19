@interface AVPlayerTaggedBufferOutput
+ (AVPlayerTaggedBufferOutput)taggedBufferOutputWithVideoOutput:(id)a3;
- (AVPlayerTaggedBufferOutput)init;
- (AVPlayerTaggedBufferOutput)initWithSpecification:(id)a3;
- (AVPlayerTaggedBufferOutput)initWithVideoOutput:(id)a3;
- (BOOL)hasNewTaggedBufferGroupForHostTime:(id *)a3;
- (OpaqueCMTaggedBufferGroup)copyTaggedBufferGroupForHostTime:(id *)a3 presentationTimeStamp:(id *)a4;
- (id)realOutput;
- (void)dealloc;
@end

@implementation AVPlayerTaggedBufferOutput

- (AVPlayerTaggedBufferOutput)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithSpecification_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVPlayerTaggedBufferOutput)initWithSpecification:(id)a3
{
  v4 = -[AVPlayerVideoOutput initWithSpecification:]([AVPlayerVideoOutput alloc], "initWithSpecification:", [a3 realSpecification]);

  return [(AVPlayerTaggedBufferOutput *)self initWithVideoOutput:v4];
}

- (AVPlayerTaggedBufferOutput)initWithVideoOutput:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVPlayerTaggedBufferOutput;
  v4 = [(AVPlayerTaggedBufferOutput *)&v6 init];
  if (v4)
  {
    v4->_realOutput = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPlayerTaggedBufferOutput;
  [(AVPlayerTaggedBufferOutput *)&v3 dealloc];
}

+ (AVPlayerTaggedBufferOutput)taggedBufferOutputWithVideoOutput:(id)a3
{
  v3 = [[AVPlayerTaggedBufferOutput alloc] initWithVideoOutput:a3];

  return v3;
}

- (id)realOutput
{
  v2 = self->_realOutput;

  return v2;
}

- (BOOL)hasNewTaggedBufferGroupForHostTime:(id *)a3
{
  realOutput = self->_realOutput;
  v5 = *a3;
  return [(AVPlayerVideoOutput *)realOutput hasNewTaggedBufferGroupForHostTime:&v5];
}

- (OpaqueCMTaggedBufferGroup)copyTaggedBufferGroupForHostTime:(id *)a3 presentationTimeStamp:(id *)a4
{
  realOutput = self->_realOutput;
  v6 = *a3;
  return [(AVPlayerVideoOutput *)realOutput copyTaggedBufferGroupForHostTime:&v6 presentationTimeStamp:a4 activeConfiguration:0];
}

@end