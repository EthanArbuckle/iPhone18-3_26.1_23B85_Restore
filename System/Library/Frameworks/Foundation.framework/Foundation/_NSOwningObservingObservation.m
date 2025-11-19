@interface _NSOwningObservingObservation
- (void)setObservation:(id)a3;
@end

@implementation _NSOwningObservingObservation

- (void)setObservation:(id)a3
{
  ownedObservation = self->_ownedObservation;
  if (ownedObservation != a3)
  {

    self->_ownedObservation = a3;
  }
}

@end