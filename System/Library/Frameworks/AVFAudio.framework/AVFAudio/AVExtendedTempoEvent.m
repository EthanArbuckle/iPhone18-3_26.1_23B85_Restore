@interface AVExtendedTempoEvent
- (AVExtendedTempoEvent)initWithTempo:(double)tempo;
@end

@implementation AVExtendedTempoEvent

- (AVExtendedTempoEvent)initWithTempo:(double)tempo
{
  v5.receiver = self;
  v5.super_class = AVExtendedTempoEvent;
  result = [(AVExtendedTempoEvent *)&v5 init];
  if (result)
  {
    result->_bpm = tempo;
  }

  return result;
}

@end