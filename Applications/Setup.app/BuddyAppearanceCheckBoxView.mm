@interface BuddyAppearanceCheckBoxView
- (_TtC5Setup27BuddyAppearanceCheckBoxView)initWithFrame:(CGRect)a3;
- (void)tapped:(id)a3;
@end

@implementation BuddyAppearanceCheckBoxView

- (void)tapped:(id)a3
{
  v6 = a3;
  v4 = self;
  if ([(BuddyAppearanceCheckBoxView *)v6 state]== 3)
  {
    (*(&v4->super.super.super.isa + OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_onTapGestureHandler))((*(&v4->super.super.super.isa + OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_isSelected) & 1) == 0);
    v5 = v4;
  }

  else
  {
    v5 = v6;
    v6 = v4;
  }
}

- (_TtC5Setup27BuddyAppearanceCheckBoxView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end