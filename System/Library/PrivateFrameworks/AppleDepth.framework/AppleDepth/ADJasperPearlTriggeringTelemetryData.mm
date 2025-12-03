@interface ADJasperPearlTriggeringTelemetryData
- (ADJasperPearlTriggeringTelemetryData)init;
- (void)notifyNewFrameArrived:(double)arrived temperature:(float)temperature;
- (void)notifyTriggeringSessionEnded;
- (void)setTriggeringEndReason:(BOOL)reason triggerEndReasonIsMaxFrameCount:(BOOL)count triggerEndReasonIsValidationMetricIncreased:(BOOL)increased;
@end

@implementation ADJasperPearlTriggeringTelemetryData

- (void)notifyTriggeringSessionEnded
{
  [(ADJasperPearlTriggeringTelemetryData *)self caCurrentTriggerLastFrameTimestamp];
  [(ADJasperPearlTriggeringTelemetryData *)self setCaLastTriggerLastFrameTimestamp:?];
  [(ADJasperPearlTriggeringTelemetryData *)self caCurrentTriggerLastFrameTemperature];
  [(ADJasperPearlTriggeringTelemetryData *)self setCaLastTriggerLastFrameTemperature:?];
  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerFirstFrameTimestamp:NAN];
  LODWORD(v3) = 2143289344;
  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerFirstFrameTemperature:v3];
  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerLastFrameTimestamp:NAN];
  LODWORD(v4) = 2143289344;
  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerLastFrameTemperature:v4];
  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerFrameCount:0];
  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerEndReasonIsConvergence:0];
  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerEndReasonIsMaxFrameCount:0];

  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerEndReasonIsOutputValidationMetricIncreased:0];
}

- (void)setTriggeringEndReason:(BOOL)reason triggerEndReasonIsMaxFrameCount:(BOOL)count triggerEndReasonIsValidationMetricIncreased:(BOOL)increased
{
  increasedCopy = increased;
  countCopy = count;
  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerEndReasonIsConvergence:reason];
  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerEndReasonIsMaxFrameCount:countCopy];

  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerEndReasonIsOutputValidationMetricIncreased:increasedCopy];
}

- (void)notifyNewFrameArrived:(double)arrived temperature:(float)temperature
{
  [(ADJasperPearlTriggeringTelemetryData *)self caCurrentTriggerFirstFrameTimestamp];
  [(ADJasperPearlTriggeringTelemetryData *)self caCurrentTriggerFirstFrameTemperature];
  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerLastFrameTimestamp:arrived];
  *&v7 = temperature;
  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerLastFrameTemperature:v7];
  v8 = [(ADJasperPearlTriggeringTelemetryData *)self caCurrentTriggerFrameCount]+ 1;

  [(ADJasperPearlTriggeringTelemetryData *)self setCaCurrentTriggerFrameCount:v8];
}

- (ADJasperPearlTriggeringTelemetryData)init
{
  v3.receiver = self;
  v3.super_class = ADJasperPearlTriggeringTelemetryData;
  result = [(ADJasperPearlTriggeringTelemetryData *)&v3 init];
  if (result)
  {
    *&result->_caLastTriggerLastFrameTimestamp = vdupq_n_s64(0x7FF8000000000000uLL);
    *&result->_caLastTriggerLastFrameTemperature = vneg_f32(0x3F0000003FLL);
    result->_caCurrentTriggerLastFrameTemperature = NAN;
    result->_caCurrentTriggerLastFrameTimestamp = NAN;
    result->_caCurrentTriggerFrameCount = 0;
    *&result->_caCurrentTriggerEndReasonIsConvergence = 0;
    result->_caCurrentTriggerEndReasonIsOutputValidationMetricIncreased = 0;
  }

  return result;
}

@end