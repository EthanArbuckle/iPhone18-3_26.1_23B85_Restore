@interface _NSOwningObservingObservation
- (void)setObservation:(id)observation;
@end

@implementation _NSOwningObservingObservation

- (void)setObservation:(id)observation
{
  ownedObservation = self->_ownedObservation;
  if (ownedObservation != observation)
  {

    self->_ownedObservation = observation;
  }
}

@end