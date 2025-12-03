@interface VideoPlayerView
+ (Class)layerClass;
- (_TtC20JournalNotificationsP33_F6B25E7FEE003188D4B89F2A75F6EB5015VideoPlayerView)initWithCoder:(id)coder;
- (_TtC20JournalNotificationsP33_F6B25E7FEE003188D4B89F2A75F6EB5015VideoPlayerView)initWithFrame:(CGRect)frame;
@end

@implementation VideoPlayerView

+ (Class)layerClass
{
  sub_BE28(0, &qword_105548);

  return swift_getObjCClassFromMetadata();
}

- (_TtC20JournalNotificationsP33_F6B25E7FEE003188D4B89F2A75F6EB5015VideoPlayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoPlayerView();
  return [(VideoPlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC20JournalNotificationsP33_F6B25E7FEE003188D4B89F2A75F6EB5015VideoPlayerView)initWithCoder:(id)coder
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