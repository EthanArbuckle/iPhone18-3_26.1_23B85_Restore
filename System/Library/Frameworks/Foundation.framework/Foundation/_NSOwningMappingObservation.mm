@interface _NSOwningMappingObservation
- (void)setObservation:(id)observation;
@end

@implementation _NSOwningMappingObservation

- (void)setObservation:(id)observation
{
  ownedObservation = self->_ownedObservation;
  if (ownedObservation != observation)
  {

    self->_ownedObservation = observation;
    LHSobservable = self->super._LHSobservable;

    [(NSObservable *)LHSobservable setObservation:self];
  }
}

@end