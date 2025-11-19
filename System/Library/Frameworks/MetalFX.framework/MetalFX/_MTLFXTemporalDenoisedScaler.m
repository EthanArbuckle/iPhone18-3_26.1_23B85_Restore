@interface _MTLFXTemporalDenoisedScaler
- (void)_emitTelemetry:(id)a3 forDevice:(id)a4;
@end

@implementation _MTLFXTemporalDenoisedScaler

- (void)_emitTelemetry:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v9 = a4;
  [v5 colorTextureFormat];
  [v5 outputTextureFormat];
  [v5 inputWidth];
  [v5 inputHeight];
  [v5 outputWidth];
  [v5 outputHeight];
  v6 = [v9 name];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 version];
  v10 = v8;
  v11 = v6;
  AnalyticsSendEventLazy();
}

@end