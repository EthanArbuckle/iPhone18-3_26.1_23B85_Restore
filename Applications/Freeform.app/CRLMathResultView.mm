@interface CRLMathResultView
- (_TtC8Freeform17CRLMathResultView)initWithCoder:(id)coder;
- (_TtC8Freeform17CRLMathResultView)initWithFrame:(CGRect)frame;
- (_TtC8Freeform17CRLMathResultView)initWithFrame:(CGRect)frame delegate:(id)delegate;
- (_TtP8Freeform25CRLMathResultViewDelegate_)delegate;
@end

@implementation CRLMathResultView

- (_TtP8Freeform25CRLMathResultViewDelegate_)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtC8Freeform17CRLMathResultView)initWithFrame:(CGRect)frame delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectRetain();
  return sub_1008969C4(delegate, x, y, width, height);
}

- (_TtC8Freeform17CRLMathResultView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC8Freeform17CRLMathResultView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end