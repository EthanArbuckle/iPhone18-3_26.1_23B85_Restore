@interface _NSOwningMappingObservation
- (void)setObservation:(id)a3;
@end

@implementation _NSOwningMappingObservation

- (void)setObservation:(id)a3
{
  ownedObservation = self->_ownedObservation;
  if (ownedObservation != a3)
  {

    self->_ownedObservation = a3;
    LHSobservable = self->super._LHSobservable;

    [(NSObservable *)LHSobservable setObservation:self];
  }
}

@end