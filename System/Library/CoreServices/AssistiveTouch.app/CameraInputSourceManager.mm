@interface CameraInputSourceManager
- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
@end

@implementation CameraInputSourceManager

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  sub_1000FB560(0, &qword_100217F10);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  outputCopy = output;
  connectionCopy = connection;
  selfCopy = self;
  v15.super.super.isa = outputCopy;
  v15.super._outputInternal = v8;
  v15._internal = connectionCopy;
  CameraInputSourceManager.metadataOutput(_:didOutput:from:)(v15, v12, v13);
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  bufferCopy = buffer;
  connectionCopy = connection;
  v11.super.isa = self;
  isa = v11.super.isa;
  v12.super.isa = outputCopy;
  v12._outputInternal = bufferCopy;
  CameraInputSourceManager.captureOutput(_:didOutput:from:)(v12, connectionCopy, v11);
}

- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  bufferCopy = buffer;
  connectionCopy = connection;
  v11.super.isa = self;
  isa = v11.super.isa;
  v12.super.isa = outputCopy;
  v12._outputInternal = bufferCopy;
  CameraInputSourceManager.captureOutput(_:didDrop:from:)(v12, connectionCopy, v11);
}

@end