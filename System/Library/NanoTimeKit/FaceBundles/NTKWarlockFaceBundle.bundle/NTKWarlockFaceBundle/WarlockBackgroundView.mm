@interface WarlockBackgroundView
- (_TtC20NTKWarlockFaceBundle21WarlockBackgroundView)initWithCoder:(id)coder;
- (_TtC20NTKWarlockFaceBundle21WarlockBackgroundView)initWithFrame:(CGRect)frame;
@end

@implementation WarlockBackgroundView

- (_TtC20NTKWarlockFaceBundle21WarlockBackgroundView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_rampColorState;
  if (qword_58558 != -1)
  {
    swift_once();
  }

  *(&self->super.super.super.isa + v4) = qword_5CD28;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_isPaused) = 1;
  result = sub_37A30();
  __break(1u);
  return result;
}

- (_TtC20NTKWarlockFaceBundle21WarlockBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end