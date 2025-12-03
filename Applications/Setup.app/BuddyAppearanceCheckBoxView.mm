@interface BuddyAppearanceCheckBoxView
- (_TtC5Setup27BuddyAppearanceCheckBoxView)initWithFrame:(CGRect)frame;
- (void)tapped:(id)tapped;
@end

@implementation BuddyAppearanceCheckBoxView

- (void)tapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  if ([(BuddyAppearanceCheckBoxView *)tappedCopy state]== 3)
  {
    (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_onTapGestureHandler))((*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_isSelected) & 1) == 0);
    v5 = selfCopy;
  }

  else
  {
    v5 = tappedCopy;
    tappedCopy = selfCopy;
  }
}

- (_TtC5Setup27BuddyAppearanceCheckBoxView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end