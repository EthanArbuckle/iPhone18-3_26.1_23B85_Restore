@interface TrendDetailVO2MaxChartView
- (void)layoutSubviews;
- (void)setupFontsWithNote:(id)a3;
@end

@implementation TrendDetailVO2MaxChartView

- (void)setupFontsWithNote:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_title365);
  v9 = objc_opt_self();
  v10 = self;
  v11 = [v9 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024];
  [v8 setFont:v11];

  v12 = *(&v10->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_title90);
  v13 = [v9 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024];
  [v12 setFont:v13];

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100320BA4();
}

@end