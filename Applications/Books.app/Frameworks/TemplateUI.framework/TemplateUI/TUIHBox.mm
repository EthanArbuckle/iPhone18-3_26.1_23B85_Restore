@interface TUIHBox
- (void)setChildrenUsesModifiers:(BOOL)modifiers;
@end

@implementation TUIHBox

- (void)setChildrenUsesModifiers:(BOOL)modifiers
{
  if (modifiers)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->super.super._flags + 6) = *(&self->super.super._flags + 6) & 0xFB | v3;
}

@end