@interface BuddyAppearanceController.BuddyAppearanceAnimationView
- (_TtCC5Setup25BuddyAppearanceControllerP33_6B82E87976C9B809FE5943B5C46331D528BuddyAppearanceAnimationView)initWithCoder:(id)coder;
- (_TtCC5Setup25BuddyAppearanceControllerP33_6B82E87976C9B809FE5943B5C46331D528BuddyAppearanceAnimationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation BuddyAppearanceController.BuddyAppearanceAnimationView

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for BuddyAppearanceController.BuddyAppearanceAnimationView();
  v2 = v11.receiver;
  [(BuddyAppearanceController.BuddyAppearanceAnimationView *)&v11 layoutSubviews];
  packageLayer = [v2 packageLayer];
  [v2 center];
  v5 = v4;
  [v2 frame];
  v7 = v5 - v6;
  [v2 center];
  v9 = v8;
  [v2 frame];
  [packageLayer setPosition:{v7, v9 - v10}];
}

- (_TtCC5Setup25BuddyAppearanceControllerP33_6B82E87976C9B809FE5943B5C46331D528BuddyAppearanceAnimationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BuddyAppearanceController.BuddyAppearanceAnimationView();
  return [(BuddyAppearanceController.BuddyAppearanceAnimationView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC5Setup25BuddyAppearanceControllerP33_6B82E87976C9B809FE5943B5C46331D528BuddyAppearanceAnimationView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BuddyAppearanceController.BuddyAppearanceAnimationView();
  coderCopy = coder;
  v5 = [(BuddyAppearanceController.BuddyAppearanceAnimationView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end