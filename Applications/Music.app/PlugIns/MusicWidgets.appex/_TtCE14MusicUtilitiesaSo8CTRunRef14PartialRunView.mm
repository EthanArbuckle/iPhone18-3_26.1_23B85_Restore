@interface _TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView
- (_TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView)initWithCoder:(id)coder;
- (_TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation _TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView

- (_TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView)initWithCoder:(id)coder
{
  result = sub_1005740F8();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  CTRunRef.PartialRunView.draw(_:)(x, y, width, height);
}

- (_TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end