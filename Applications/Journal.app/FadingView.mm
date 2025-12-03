@interface FadingView
- (_TtC7Journal10FadingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation FadingView

- (_TtC7Journal10FadingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC7Journal10FadingView_contentFadeGradientLayer;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(CAGradientLayer) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal10FadingView_fadeLocations) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal10FadingView_fadeColors) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for FadingView();
  height = [(FadingView *)&v11 initWithFrame:x, y, width, height];
  sub_1000248C4();

  return height;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FadingView();
  v2 = v4.receiver;
  [(FadingView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7Journal10FadingView_contentFadeGradientLayer];
  [v2 bounds];
  [v3 setFrame:?];
}

@end