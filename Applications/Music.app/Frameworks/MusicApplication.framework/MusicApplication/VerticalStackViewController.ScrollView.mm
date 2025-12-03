@interface VerticalStackViewController.ScrollView
- (_TtCC16MusicApplication27VerticalStackViewController10ScrollView)initWithCoder:(id)coder;
- (_TtCC16MusicApplication27VerticalStackViewController10ScrollView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation VerticalStackViewController.ScrollView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4DDAE8();
}

- (_TtCC16MusicApplication27VerticalStackViewController10ScrollView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_backgroundView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VerticalStackViewController.ScrollView();
  return [(VerticalStackViewController.ScrollView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC16MusicApplication27VerticalStackViewController10ScrollView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_backgroundView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for VerticalStackViewController.ScrollView();
  coderCopy = coder;
  v5 = [(VerticalStackViewController.ScrollView *)&v7 initWithCoder:coderCopy];

  return v5;
}

@end