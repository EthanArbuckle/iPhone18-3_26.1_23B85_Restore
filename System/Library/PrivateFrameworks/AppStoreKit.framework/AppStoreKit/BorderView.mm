@interface BorderView
- (UIColor)backgroundColor;
- (_TtC11AppStoreKit10BorderView)initWithCoder:(id)coder;
- (_TtC11AppStoreKit10BorderView)initWithFrame:(CGRect)frame;
- (void)setBackgroundColor:(id)color;
- (void)setClipsToBounds:(BOOL)bounds;
@end

@implementation BorderView

- (_TtC11AppStoreKit10BorderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  height = [(BorderView *)&v9 initWithFrame:x, y, width, height];
  [(BorderView *)height setUserInteractionEnabled:0];
  return height;
}

- (_TtC11AppStoreKit10BorderView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(BorderView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (UIColor)backgroundColor
{
  clearColor = [objc_opt_self() clearColor];

  return clearColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1E18B9904();
}

- (void)setClipsToBounds:(BOOL)bounds
{
  selfCopy = self;
  _s11AppStoreKit10BorderViewC13clipsToBoundsSbvs_0();
}

@end