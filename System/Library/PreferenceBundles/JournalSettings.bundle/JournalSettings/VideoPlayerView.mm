@interface VideoPlayerView
+ (Class)layerClass;
- (_TtC15JournalSettingsP33_DC842252687D111FA09317F78A27F39815VideoPlayerView)initWithCoder:(id)a3;
- (_TtC15JournalSettingsP33_DC842252687D111FA09317F78A27F39815VideoPlayerView)initWithFrame:(CGRect)a3;
@end

@implementation VideoPlayerView

+ (Class)layerClass
{
  sub_2561C(0, &qword_C57D8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC15JournalSettingsP33_DC842252687D111FA09317F78A27F39815VideoPlayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoPlayerView();
  return [(VideoPlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15JournalSettingsP33_DC842252687D111FA09317F78A27F39815VideoPlayerView)initWithCoder:(id)a3
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