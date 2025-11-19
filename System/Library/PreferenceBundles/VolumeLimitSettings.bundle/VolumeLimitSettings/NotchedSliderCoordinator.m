@interface NotchedSliderCoordinator
- (void)editingEnded:(id)a3;
- (void)valueChanged:(id)a3;
@end

@implementation NotchedSliderCoordinator

- (void)valueChanged:(id)a3
{
  v3 = a3;

  sub_551C(v3);
}

- (void)editingEnded:(id)a3
{
  self->isUpdating[0] = 0;
  v3 = *&self->configuration[88];

  v3(0);
}

@end