@interface TUIHBox
- (void)setChildrenUsesModifiers:(BOOL)a3;
@end

@implementation TUIHBox

- (void)setChildrenUsesModifiers:(BOOL)a3
{
  if (a3)
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