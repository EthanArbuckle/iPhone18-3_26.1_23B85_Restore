@interface _TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView
- (_TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView)initWithCoder:(id)a3;
- (_TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation _TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView

- (_TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView)initWithCoder:(id)a3
{
  result = sub_1005740F8();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  CTRunRef.PartialRunView.draw(_:)(x, y, width, height);
}

- (_TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end