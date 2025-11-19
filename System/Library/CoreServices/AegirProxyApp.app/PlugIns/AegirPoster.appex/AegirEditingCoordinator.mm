@interface AegirEditingCoordinator
- (void)pulseAnimationDidFinish;
- (void)styleAnimationDidFinish;
@end

@implementation AegirEditingCoordinator

- (void)styleAnimationDidFinish
{
  v2 = *self->vistaController;
  if (v2)
  {

    v3 = v2;
    if ([v3 mode] != 1)
    {
      [v3 applyMode:1];
    }
  }
}

- (void)pulseAnimationDidFinish
{
  self->locationPulseAnimating[0] = 0;

  sub_10002A9F0();
}

@end