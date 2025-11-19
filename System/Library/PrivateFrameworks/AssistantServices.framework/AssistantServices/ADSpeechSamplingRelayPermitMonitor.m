@interface ADSpeechSamplingRelayPermitMonitor
- (ADSpeechSamplingRelayPermitMonitor)init;
@end

@implementation ADSpeechSamplingRelayPermitMonitor

- (ADSpeechSamplingRelayPermitMonitor)init
{
  v3.receiver = self;
  v3.super_class = ADSpeechSamplingRelayPermitMonitor;
  result = [(ADSpeechSamplingRelayPermitMonitor *)&v3 init];
  if (result)
  {
    result->_shouldAbort = 0;
  }

  return result;
}

@end