@interface TodayTransitioningLabelView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC22SubscribePageExtension27TodayTransitioningLabelView)initWithFrame:(CGRect)a3;
- (void)layoutDirectionDidChange;
- (void)layoutSubviews;
@end

@implementation TodayTransitioningLabelView

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel))
  {
    [*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel) sizeThatFits:{a3.width, a3.height}];
  }

  else
  {
    [*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label) sizeThatFits:{a3.width, a3.height}];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10020BF7C();
}

- (void)layoutDirectionDidChange
{
  v2 = self;
  sub_10020D7E4();
}

- (_TtC22SubscribePageExtension27TodayTransitioningLabelView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end