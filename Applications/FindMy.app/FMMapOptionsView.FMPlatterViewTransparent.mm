@interface FMMapOptionsView.FMPlatterViewTransparent
- (_TtCC6FindMy16FMMapOptionsViewP33_4FBFA1E850653445CBAB4C80170F66AB24FMPlatterViewTransparent)initWithCoder:(id)coder;
- (_TtCC6FindMy16FMMapOptionsViewP33_4FBFA1E850653445CBAB4C80170F66AB24FMPlatterViewTransparent)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation FMMapOptionsView.FMPlatterViewTransparent

- (_TtCC6FindMy16FMMapOptionsViewP33_4FBFA1E850653445CBAB4C80170F66AB24FMPlatterViewTransparent)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(FMMapOptionsView.FMPlatterViewTransparent *)&v8 initWithFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(FMMapOptionsView.FMPlatterViewTransparent *)&v4 layoutSubviews];
  layer = [v2 layer];
  [v2 frame];
  [layer setCornerRadius:CGRectGetWidth(v5) * 0.5];
}

- (_TtCC6FindMy16FMMapOptionsViewP33_4FBFA1E850653445CBAB4C80170F66AB24FMPlatterViewTransparent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(FMMapOptionsView.FMPlatterViewTransparent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end