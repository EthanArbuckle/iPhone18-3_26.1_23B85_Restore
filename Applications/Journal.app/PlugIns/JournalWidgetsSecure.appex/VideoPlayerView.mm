@interface VideoPlayerView
+ (Class)layerClass;
- (_TtC20JournalWidgetsSecureP33_31F3567620D0C5010386072F9BB039BA15VideoPlayerView)initWithCoder:(id)a3;
- (_TtC20JournalWidgetsSecureP33_31F3567620D0C5010386072F9BB039BA15VideoPlayerView)initWithFrame:(CGRect)a3;
@end

@implementation VideoPlayerView

+ (Class)layerClass
{
  sub_100008068(0, &qword_100121798);

  return swift_getObjCClassFromMetadata();
}

- (_TtC20JournalWidgetsSecureP33_31F3567620D0C5010386072F9BB039BA15VideoPlayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoPlayerView();
  return [(VideoPlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC20JournalWidgetsSecureP33_31F3567620D0C5010386072F9BB039BA15VideoPlayerView)initWithCoder:(id)a3
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