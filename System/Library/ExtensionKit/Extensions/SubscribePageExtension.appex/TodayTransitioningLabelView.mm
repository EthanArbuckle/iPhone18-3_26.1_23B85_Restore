@interface TodayTransitioningLabelView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension27TodayTransitioningLabelView)initWithFrame:(CGRect)frame;
- (void)layoutDirectionDidChange;
- (void)layoutSubviews;
@end

@implementation TodayTransitioningLabelView

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel))
  {
    [*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel) sizeThatFits:{fits.width, fits.height}];
  }

  else
  {
    [*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label) sizeThatFits:{fits.width, fits.height}];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10020BF7C();
}

- (void)layoutDirectionDidChange
{
  selfCopy = self;
  sub_10020D7E4();
}

- (_TtC22SubscribePageExtension27TodayTransitioningLabelView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end