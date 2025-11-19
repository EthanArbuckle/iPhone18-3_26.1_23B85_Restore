@interface BuddyAppearanceController.BuddyAppearanceAnimationView
- (_TtCC5Setup25BuddyAppearanceControllerP33_6B82E87976C9B809FE5943B5C46331D528BuddyAppearanceAnimationView)initWithCoder:(id)a3;
- (_TtCC5Setup25BuddyAppearanceControllerP33_6B82E87976C9B809FE5943B5C46331D528BuddyAppearanceAnimationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation BuddyAppearanceController.BuddyAppearanceAnimationView

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for BuddyAppearanceController.BuddyAppearanceAnimationView();
  v2 = v11.receiver;
  [(BuddyAppearanceController.BuddyAppearanceAnimationView *)&v11 layoutSubviews];
  v3 = [v2 packageLayer];
  [v2 center];
  v5 = v4;
  [v2 frame];
  v7 = v5 - v6;
  [v2 center];
  v9 = v8;
  [v2 frame];
  [v3 setPosition:{v7, v9 - v10}];
}

- (_TtCC5Setup25BuddyAppearanceControllerP33_6B82E87976C9B809FE5943B5C46331D528BuddyAppearanceAnimationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BuddyAppearanceController.BuddyAppearanceAnimationView();
  return [(BuddyAppearanceController.BuddyAppearanceAnimationView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC5Setup25BuddyAppearanceControllerP33_6B82E87976C9B809FE5943B5C46331D528BuddyAppearanceAnimationView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BuddyAppearanceController.BuddyAppearanceAnimationView();
  v4 = a3;
  v5 = [(BuddyAppearanceController.BuddyAppearanceAnimationView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end