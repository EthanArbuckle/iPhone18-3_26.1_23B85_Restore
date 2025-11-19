@interface VerticalStackViewController.ScrollView
- (_TtCC16MusicApplication27VerticalStackViewController10ScrollView)initWithCoder:(id)a3;
- (_TtCC16MusicApplication27VerticalStackViewController10ScrollView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation VerticalStackViewController.ScrollView

- (void)layoutSubviews
{
  v2 = self;
  sub_4DDAE8();
}

- (_TtCC16MusicApplication27VerticalStackViewController10ScrollView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_backgroundView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VerticalStackViewController.ScrollView();
  return [(VerticalStackViewController.ScrollView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC16MusicApplication27VerticalStackViewController10ScrollView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_backgroundView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for VerticalStackViewController.ScrollView();
  v4 = a3;
  v5 = [(VerticalStackViewController.ScrollView *)&v7 initWithCoder:v4];

  return v5;
}

@end