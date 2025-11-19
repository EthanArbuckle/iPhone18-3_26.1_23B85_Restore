@interface FMMapOptionsView.FMPlatterViewTransparent
- (_TtCC6FindMy16FMMapOptionsViewP33_4FBFA1E850653445CBAB4C80170F66AB24FMPlatterViewTransparent)initWithCoder:(id)a3;
- (_TtCC6FindMy16FMMapOptionsViewP33_4FBFA1E850653445CBAB4C80170F66AB24FMPlatterViewTransparent)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation FMMapOptionsView.FMPlatterViewTransparent

- (_TtCC6FindMy16FMMapOptionsViewP33_4FBFA1E850653445CBAB4C80170F66AB24FMPlatterViewTransparent)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v3 = [v2 layer];
  [v2 frame];
  [v3 setCornerRadius:CGRectGetWidth(v5) * 0.5];
}

- (_TtCC6FindMy16FMMapOptionsViewP33_4FBFA1E850653445CBAB4C80170F66AB24FMPlatterViewTransparent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(FMMapOptionsView.FMPlatterViewTransparent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end