@interface COSHelloMetalAnimationView
- (_TtC6Bridge26COSHelloMetalAnimationView)initWithCoder:(id)a3;
- (_TtC6Bridge26COSHelloMetalAnimationView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation COSHelloMetalAnimationView

- (_TtC6Bridge26COSHelloMetalAnimationView)initWithCoder:(id)a3
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
  v2 = self;
  v3 = sub_10015F514();
  [v3 stopAnimation];

  v4.receiver = v2;
  v4.super_class = type metadata accessor for COSHelloMetalAnimationView(0);
  [(COSHelloMetalAnimationView *)&v4 dealloc];
}

- (void)willMoveToSuperview:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for COSHelloMetalAnimationView(0);
  v4 = a3;
  v5 = v6.receiver;
  [(COSHelloMetalAnimationView *)&v6 willMoveToSuperview:v4];
  sub_1001608F0();
}

- (_TtC6Bridge26COSHelloMetalAnimationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end