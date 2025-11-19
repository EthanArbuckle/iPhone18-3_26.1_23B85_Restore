@interface CRLFollowBorderHighlightView
- (_TtC8Freeform28CRLFollowBorderHighlightView)initWithCoder:(id)a3;
- (_TtC8Freeform28CRLFollowBorderHighlightView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CRLFollowBorderHighlightView

- (_TtC8Freeform28CRLFollowBorderHighlightView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform28CRLFollowBorderHighlightView_defaultCornerRadius) = 0x4030000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLFollowBorderHighlightView();
  v2 = v3.receiver;
  [(CRLFollowBorderHighlightView *)&v3 layoutSubviews];
  [v2 setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  sub_100BEA14C();
}

- (_TtC8Freeform28CRLFollowBorderHighlightView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end