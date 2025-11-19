@interface NowPlayingControlsHeader
- (_TtC12NowPlayingUI24NowPlayingControlsHeader)initWithCoder:(id)a3;
- (_TtC12NowPlayingUI24NowPlayingControlsHeader)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation NowPlayingControlsHeader

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(NowPlayingControlsHeader *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingControlsHeader_controlsView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame:?];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC12NowPlayingUI24NowPlayingControlsHeader)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingControlsHeader_controlsView) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(NowPlayingControlsHeader *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC12NowPlayingUI24NowPlayingControlsHeader)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingControlsHeader_controlsView) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(NowPlayingControlsHeader *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end