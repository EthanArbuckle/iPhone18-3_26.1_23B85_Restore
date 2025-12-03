@interface EntrySwipeMenuButton
- (BOOL)accessibilityActivate;
- (void)buttonTapped;
@end

@implementation EntrySwipeMenuButton

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_tapClosure);
  selfCopy = self;

  v2(v3);
}

- (BOOL)accessibilityActivate
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_tapClosure);
  selfCopy = self;

  v2(v4);

  return 1;
}

@end