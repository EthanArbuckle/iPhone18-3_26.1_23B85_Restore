@interface ArtworkComponentVideoView
+ (Class)layerClass;
- (_TtC16MusicApplication25ArtworkComponentVideoView)initWithCoder:(id)a3;
- (_TtC16MusicApplication25ArtworkComponentVideoView)initWithFrame:(CGRect)a3;
@end

@implementation ArtworkComponentVideoView

+ (Class)layerClass
{
  sub_13C80(0, &qword_DEB578);

  return swift_getObjCClassFromMetadata();
}

- (_TtC16MusicApplication25ArtworkComponentVideoView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication25ArtworkComponentVideoView_statusHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication25ArtworkComponentVideoView_waitingToPlayHandler);
  *v8 = 0;
  v8[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication25ArtworkComponentVideoView_cropStyle) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ArtworkComponentVideoView();
  return [(ArtworkComponentVideoView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC16MusicApplication25ArtworkComponentVideoView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication25ArtworkComponentVideoView_statusHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication25ArtworkComponentVideoView_waitingToPlayHandler);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication25ArtworkComponentVideoView_cropStyle) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ArtworkComponentVideoView();
  v6 = a3;
  v7 = [(ArtworkComponentVideoView *)&v9 initWithCoder:v6];

  return v7;
}

@end