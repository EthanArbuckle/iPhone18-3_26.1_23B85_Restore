@interface COSHelloAnimationView
- (_TtC6Bridge21COSHelloAnimationView)initWithCoder:(id)a3;
- (_TtC6Bridge21COSHelloAnimationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation COSHelloAnimationView

- (_TtC6Bridge21COSHelloAnimationView)initWithCoder:(id)a3
{
  *&self->pointSize[OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationTimer] = 0;
  v3 = OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationStartTime;
  *&self->pointSize[v3] = CFAbsoluteTimeGetCurrent();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for COSHelloAnimationView(0);
  v2 = v4.receiver;
  v3 = [(COSHelloAnimationView *)&v4 layoutSubviews];
  (*((swift_isaMask & *v2) + 0xC0))(v3);
}

- (_TtC6Bridge21COSHelloAnimationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end