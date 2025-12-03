@interface _MTLFXTemporalScaler
- (void)_emitTelemetry:(id)telemetry forDevice:(id)device;
@end

@implementation _MTLFXTemporalScaler

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
  v11 = name;
  v9 = v8;
  AnalyticsSendEventLazy();
}

@end