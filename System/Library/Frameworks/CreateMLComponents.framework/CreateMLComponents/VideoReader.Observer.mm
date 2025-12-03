@interface VideoReader.Observer
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
@end

@implementation VideoReader.Observer

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  bufferCopy = buffer;
  connectionCopy = connection;
  selfCopy = self;
  sub_237DA5B30();
}

@end