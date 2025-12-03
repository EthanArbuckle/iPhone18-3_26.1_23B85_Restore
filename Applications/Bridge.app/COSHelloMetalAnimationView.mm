@interface COSHelloMetalAnimationView
- (_TtC6Bridge26COSHelloMetalAnimationView)initWithCoder:(id)coder;
- (_TtC6Bridge26COSHelloMetalAnimationView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation COSHelloMetalAnimationView

- (_TtC6Bridge26COSHelloMetalAnimationView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView_animationFinishedContinuation;
  v5 = sub_1001379C4(&qword_1002BCF30);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView____lazy_storage___viewProvider) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = sub_10015F514();
  [v3 stopAnimation];

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for COSHelloMetalAnimationView(0);
  [(COSHelloMetalAnimationView *)&v4 dealloc];
}

- (void)willMoveToSuperview:(id)superview
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for COSHelloMetalAnimationView(0);
  superviewCopy = superview;
  v5 = v6.receiver;
  [(COSHelloMetalAnimationView *)&v6 willMoveToSuperview:superviewCopy];
  sub_1001608F0();
}

- (_TtC6Bridge26COSHelloMetalAnimationView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end