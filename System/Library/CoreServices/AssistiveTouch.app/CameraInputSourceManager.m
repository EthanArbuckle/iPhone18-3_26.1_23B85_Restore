@interface CameraInputSourceManager
- (void)captureOutput:(id)a3 didDropSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
@end

@implementation CameraInputSourceManager

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  sub_1000FB560(0, &qword_100217F10);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a5;
  v11 = self;
  v15.super.super.isa = v9;
  v15.super._outputInternal = v8;
  v15._internal = v10;
  CameraInputSourceManager.metadataOutput(_:didOutput:from:)(v15, v12, v13);
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11.super.isa = self;
  isa = v11.super.isa;
  v12.super.isa = v8;
  v12._outputInternal = v9;
  CameraInputSourceManager.captureOutput(_:didOutput:from:)(v12, v10, v11);
}

- (void)captureOutput:(id)a3 didDropSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11.super.isa = self;
  isa = v11.super.isa;
  v12.super.isa = v8;
  v12._outputInternal = v9;
  CameraInputSourceManager.captureOutput(_:didDrop:from:)(v12, v10, v11);
}

@end