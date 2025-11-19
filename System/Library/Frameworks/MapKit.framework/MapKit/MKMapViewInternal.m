@interface MKMapViewInternal
- (void)startEffects;
@end

@implementation MKMapViewInternal

- (void)startEffects
{
  WeakRetained = objc_loadWeakRetained(&self->view);
  v4 = WeakRetained[67];

  if (!v4)
  {
    v5 = objc_loadWeakRetained(&self->view);
    [v5 _updateShouldDisplayEffects];
  }
}

@end