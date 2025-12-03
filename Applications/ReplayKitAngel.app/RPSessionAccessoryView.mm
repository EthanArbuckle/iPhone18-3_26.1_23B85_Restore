@interface RPSessionAccessoryView
- (CGSize)intrinsicContentSize;
- (_TtC14ReplayKitAngel22RPSessionAccessoryView)initWithCoder:(id)coder;
- (_TtC14ReplayKitAngel22RPSessionAccessoryView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation RPSessionAccessoryView

- (_TtC14ReplayKitAngel22RPSessionAccessoryView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_package) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_viewState);
  v4 = sub_10003720C();
  v5 = *(v4 + 1);
  *v3 = *v4;
  v3[1] = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100012F78();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_100013470();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC14ReplayKitAngel22RPSessionAccessoryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end