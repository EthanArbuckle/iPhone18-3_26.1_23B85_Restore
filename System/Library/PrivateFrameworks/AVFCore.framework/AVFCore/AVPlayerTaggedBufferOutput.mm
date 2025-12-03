@interface AVPlayerTaggedBufferOutput
+ (AVPlayerTaggedBufferOutput)taggedBufferOutputWithVideoOutput:(id)output;
- (AVPlayerTaggedBufferOutput)init;
- (AVPlayerTaggedBufferOutput)initWithSpecification:(id)specification;
- (AVPlayerTaggedBufferOutput)initWithVideoOutput:(id)output;
- (BOOL)hasNewTaggedBufferGroupForHostTime:(id *)time;
- (OpaqueCMTaggedBufferGroup)copyTaggedBufferGroupForHostTime:(id *)time presentationTimeStamp:(id *)stamp;
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

- (AVPlayerTaggedBufferOutput)initWithSpecification:(id)specification
{
  v4 = -[AVPlayerVideoOutput initWithSpecification:]([AVPlayerVideoOutput alloc], "initWithSpecification:", [specification realSpecification]);

  return [(AVPlayerTaggedBufferOutput *)self initWithVideoOutput:v4];
}

- (AVPlayerTaggedBufferOutput)initWithVideoOutput:(id)output
{
  v6.receiver = self;
  v6.super_class = AVPlayerTaggedBufferOutput;
  v4 = [(AVPlayerTaggedBufferOutput *)&v6 init];
  if (v4)
  {
    v4->_realOutput = output;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPlayerTaggedBufferOutput;
  [(AVPlayerTaggedBufferOutput *)&v3 dealloc];
}

+ (AVPlayerTaggedBufferOutput)taggedBufferOutputWithVideoOutput:(id)output
{
  v3 = [[AVPlayerTaggedBufferOutput alloc] initWithVideoOutput:output];

  return v3;
}

- (id)realOutput
{
  v2 = self->_realOutput;

  return v2;
}

- (BOOL)hasNewTaggedBufferGroupForHostTime:(id *)time
{
  realOutput = self->_realOutput;
  v5 = *time;
  return [(AVPlayerVideoOutput *)realOutput hasNewTaggedBufferGroupForHostTime:&v5];
}

- (OpaqueCMTaggedBufferGroup)copyTaggedBufferGroupForHostTime:(id *)time presentationTimeStamp:(id *)stamp
{
  realOutput = self->_realOutput;
  v6 = *time;
  return [(AVPlayerVideoOutput *)realOutput copyTaggedBufferGroupForHostTime:&v6 presentationTimeStamp:stamp activeConfiguration:0];
}

@end