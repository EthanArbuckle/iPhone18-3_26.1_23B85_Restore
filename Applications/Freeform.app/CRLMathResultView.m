@interface CRLMathResultView
- (_TtC8Freeform17CRLMathResultView)initWithCoder:(id)a3;
- (_TtC8Freeform17CRLMathResultView)initWithFrame:(CGRect)a3;
- (_TtC8Freeform17CRLMathResultView)initWithFrame:(CGRect)a3 delegate:(id)a4;
- (_TtP8Freeform25CRLMathResultViewDelegate_)delegate;
@end

@implementation CRLMathResultView

- (_TtP8Freeform25CRLMathResultViewDelegate_)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtC8Freeform17CRLMathResultView)initWithFrame:(CGRect)a3 delegate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectRetain();
  return sub_1008969C4(a4, x, y, width, height);
}

- (_TtC8Freeform17CRLMathResultView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC8Freeform17CRLMathResultView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end