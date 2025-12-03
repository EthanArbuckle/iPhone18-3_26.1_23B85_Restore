@interface CRLFollowBorderHighlightView
- (_TtC8Freeform28CRLFollowBorderHighlightView)initWithCoder:(id)coder;
- (_TtC8Freeform28CRLFollowBorderHighlightView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
@end

@implementation CRLFollowBorderHighlightView

- (_TtC8Freeform28CRLFollowBorderHighlightView)initWithCoder:(id)coder
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

- (void)drawRect:(CGRect)rect
{
  selfCopy = self;
  sub_100BEA14C();
}

- (_TtC8Freeform28CRLFollowBorderHighlightView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end