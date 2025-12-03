@interface TrendAveragePlatterView
- (void)layoutSubviews;
- (void)setupFontsAndConstants;
@end

@implementation TrendAveragePlatterView

- (void)setupFontsAndConstants
{
  selfCopy = self;
  sub_1005963E8();
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TrendAveragePlatterView();
  v2 = v4.receiver;
  [(TrendAveragePlatterView *)&v4 layoutSubviews];
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions:1];
  sub_100596870(v2);
  [v3 commit];
}

@end