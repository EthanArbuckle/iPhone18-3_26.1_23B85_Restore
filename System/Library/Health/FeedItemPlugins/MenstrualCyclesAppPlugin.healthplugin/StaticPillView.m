@interface StaticPillView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
@end

@implementation StaticPillView

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration);
  v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for StaticPillView();
  v2 = v4.receiver;
  [(StaticPillView *)&v4 layoutSubviews];
  sub_29DE994F4();
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions_];
  sub_29DE99854(v2);
  [v3 commit];
}

@end