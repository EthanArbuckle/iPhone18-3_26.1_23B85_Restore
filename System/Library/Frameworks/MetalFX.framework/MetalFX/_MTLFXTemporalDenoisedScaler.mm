@interface _MTLFXTemporalDenoisedScaler
- (void)_emitTelemetry:(id)telemetry forDevice:(id)device;
@end

@implementation _MTLFXTemporalDenoisedScaler

- (void)_emitTelemetry:(id)telemetry forDevice:(id)device
{
  telemetryCopy = telemetry;
  deviceCopy = device;
  [telemetryCopy colorTextureFormat];
  [telemetryCopy outputTextureFormat];
  [telemetryCopy inputWidth];
  [telemetryCopy inputHeight];
  [telemetryCopy outputWidth];
  [telemetryCopy outputHeight];
  name = [deviceCopy name];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [telemetryCopy version];
  v10 = v8;
  v11 = name;
  AnalyticsSendEventLazy();
}

@end