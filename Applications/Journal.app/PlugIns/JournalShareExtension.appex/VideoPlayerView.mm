@interface VideoPlayerView
+ (Class)layerClass;
- (_TtC21JournalShareExtensionP33_44A2318C1FD87471E26356171ABDC08C15VideoPlayerView)initWithCoder:(id)coder;
- (_TtC21JournalShareExtensionP33_44A2318C1FD87471E26356171ABDC08C15VideoPlayerView)initWithFrame:(CGRect)frame;
@end

@implementation VideoPlayerView

+ (Class)layerClass
{
  sub_100010F50(0, &qword_10014CD00);

  return swift_getObjCClassFromMetadata();
}

- (_TtC21JournalShareExtensionP33_44A2318C1FD87471E26356171ABDC08C15VideoPlayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoPlayerView();
  return [(VideoPlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC21JournalShareExtensionP33_44A2318C1FD87471E26356171ABDC08C15VideoPlayerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VideoPlayerView();
  coderCopy = coder;
  v5 = [(VideoPlayerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end