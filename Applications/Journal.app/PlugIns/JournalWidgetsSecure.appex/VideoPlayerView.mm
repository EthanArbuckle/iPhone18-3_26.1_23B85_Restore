@interface VideoPlayerView
+ (Class)layerClass;
- (_TtC20JournalWidgetsSecureP33_31F3567620D0C5010386072F9BB039BA15VideoPlayerView)initWithCoder:(id)coder;
- (_TtC20JournalWidgetsSecureP33_31F3567620D0C5010386072F9BB039BA15VideoPlayerView)initWithFrame:(CGRect)frame;
@end

@implementation VideoPlayerView

+ (Class)layerClass
{
  sub_100008068(0, &qword_100121798);

  return swift_getObjCClassFromMetadata();
}

- (_TtC20JournalWidgetsSecureP33_31F3567620D0C5010386072F9BB039BA15VideoPlayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoPlayerView();
  return [(VideoPlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC20JournalWidgetsSecureP33_31F3567620D0C5010386072F9BB039BA15VideoPlayerView)initWithCoder:(id)coder
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