@interface ArtworkComponentVideoView
+ (Class)layerClass;
- (_TtC16MusicMessagesApp25ArtworkComponentVideoView)initWithFrame:(CGRect)a3;
@end

@implementation ArtworkComponentVideoView

+ (Class)layerClass
{
  sub_100006F10(0, &qword_100632FF0);

  return swift_getObjCClassFromMetadata();
}

- (_TtC16MusicMessagesApp25ArtworkComponentVideoView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp25ArtworkComponentVideoView_statusHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp25ArtworkComponentVideoView_waitingToPlayHandler);
  *v8 = 0;
  v8[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp25ArtworkComponentVideoView_cropStyle) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ArtworkComponentVideoView();
  return [(ArtworkComponentVideoView *)&v10 initWithFrame:x, y, width, height];
}

@end