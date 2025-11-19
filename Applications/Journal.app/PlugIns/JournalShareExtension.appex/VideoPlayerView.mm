@interface VideoPlayerView
+ (Class)layerClass;
- (_TtC21JournalShareExtensionP33_44A2318C1FD87471E26356171ABDC08C15VideoPlayerView)initWithCoder:(id)a3;
- (_TtC21JournalShareExtensionP33_44A2318C1FD87471E26356171ABDC08C15VideoPlayerView)initWithFrame:(CGRect)a3;
@end

@implementation VideoPlayerView

+ (Class)layerClass
{
  sub_100010F50(0, &qword_10014CD00);

  return swift_getObjCClassFromMetadata();
}

- (_TtC21JournalShareExtensionP33_44A2318C1FD87471E26356171ABDC08C15VideoPlayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoPlayerView();
  return [(VideoPlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC21JournalShareExtensionP33_44A2318C1FD87471E26356171ABDC08C15VideoPlayerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VideoPlayerView();
  v4 = a3;
  v5 = [(VideoPlayerView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end