@interface VideoPlayerView
+ (Class)layerClass;
- (_TtC7JournalP33_8971A4D4DABD01F7D96D597148782DCD15VideoPlayerView)initWithCoder:(id)a3;
- (_TtC7JournalP33_8971A4D4DABD01F7D96D597148782DCD15VideoPlayerView)initWithFrame:(CGRect)a3;
@end

@implementation VideoPlayerView

+ (Class)layerClass
{
  sub_1000065A8(0, &qword_100AF4038);

  return swift_getObjCClassFromMetadata();
}

- (_TtC7JournalP33_8971A4D4DABD01F7D96D597148782DCD15VideoPlayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoPlayerView();
  return [(VideoPlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7JournalP33_8971A4D4DABD01F7D96D597148782DCD15VideoPlayerView)initWithCoder:(id)a3
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