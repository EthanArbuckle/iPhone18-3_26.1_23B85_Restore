@interface VideoPlayerView
+ (Class)layerClass;
- (_TtC15JournalSettingsP33_DC842252687D111FA09317F78A27F39815VideoPlayerView)initWithCoder:(id)coder;
- (_TtC15JournalSettingsP33_DC842252687D111FA09317F78A27F39815VideoPlayerView)initWithFrame:(CGRect)frame;
@end

@implementation VideoPlayerView

+ (Class)layerClass
{
  sub_2561C(0, &qword_C57D8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC15JournalSettingsP33_DC842252687D111FA09317F78A27F39815VideoPlayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoPlayerView();
  return [(VideoPlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15JournalSettingsP33_DC842252687D111FA09317F78A27F39815VideoPlayerView)initWithCoder:(id)coder
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