@interface NotchedSliderCoordinator
- (void)editingEnded:(id)ended;
- (void)valueChanged:(id)changed;
@end

@implementation NotchedSliderCoordinator

- (void)valueChanged:(id)changed
{
  changedCopy = changed;

  sub_551C(changedCopy);
}

- (void)editingEnded:(id)ended
{
  self->isUpdating[0] = 0;
  v3 = *&self->configuration[88];

  v3(0);
}

@end