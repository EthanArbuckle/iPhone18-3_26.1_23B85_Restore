@interface VideoPlayerView
+ (Class)layerClass;
- (_TtC20JournalNotificationsP33_F6B25E7FEE003188D4B89F2A75F6EB5015VideoPlayerView)initWithCoder:(id)a3;
- (_TtC20JournalNotificationsP33_F6B25E7FEE003188D4B89F2A75F6EB5015VideoPlayerView)initWithFrame:(CGRect)a3;
@end

@implementation VideoPlayerView

+ (Class)layerClass
{
  sub_BE28(0, &qword_105548);

  return swift_getObjCClassFromMetadata();
}

- (_TtC20JournalNotificationsP33_F6B25E7FEE003188D4B89F2A75F6EB5015VideoPlayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoPlayerView();
  return [(VideoPlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC20JournalNotificationsP33_F6B25E7FEE003188D4B89F2A75F6EB5015VideoPlayerView)initWithCoder:(id)a3
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