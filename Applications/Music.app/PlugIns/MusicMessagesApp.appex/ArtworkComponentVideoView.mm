@interface ArtworkComponentVideoView
+ (Class)layerClass;
- (_TtC16MusicMessagesApp25ArtworkComponentVideoView)initWithFrame:(CGRect)frame;
@end

@implementation ArtworkComponentVideoView

+ (Class)layerClass
{
  sub_100006F10(0, &qword_100632FF0);

  return swift_getObjCClassFromMetadata();
}

- (_TtC16MusicMessagesApp25ArtworkComponentVideoView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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