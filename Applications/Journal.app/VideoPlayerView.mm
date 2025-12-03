@interface VideoPlayerView
+ (Class)layerClass;
- (_TtC7JournalP33_8971A4D4DABD01F7D96D597148782DCD15VideoPlayerView)initWithCoder:(id)coder;
- (_TtC7JournalP33_8971A4D4DABD01F7D96D597148782DCD15VideoPlayerView)initWithFrame:(CGRect)frame;
@end

@implementation VideoPlayerView

+ (Class)layerClass
{
  sub_1000065A8(0, &qword_100AF4038);

  return swift_getObjCClassFromMetadata();
}

- (_TtC7JournalP33_8971A4D4DABD01F7D96D597148782DCD15VideoPlayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoPlayerView();
  return [(VideoPlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7JournalP33_8971A4D4DABD01F7D96D597148782DCD15VideoPlayerView)initWithCoder:(id)coder
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