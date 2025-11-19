@interface FMLostModeSummaryButton
- (_TtC6FindMy23FMLostModeSummaryButton)init;
- (_TtC6FindMy23FMLostModeSummaryButton)initWithCoder:(id)a3;
- (_TtC6FindMy23FMLostModeSummaryButton)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMLostModeSummaryButton

- (_TtC6FindMy23FMLostModeSummaryButton)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMLostModeSummaryButton();
  v2 = [(FMLostModeSummaryButton *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_1003E5450();

  return v2;
}

- (_TtC6FindMy23FMLostModeSummaryButton)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for FMLostModeSummaryButton();
  v4 = a3;
  v5 = v13.receiver;
  [(FMLostModeSummaryButton *)&v13 traitCollectionDidChange:v4];
  v6 = objc_opt_self();
  v7 = [v6 defaultMetrics];
  [v7 scaledValueForValue:15.0];
  v9 = v8;

  v10 = [v6 defaultMetrics];
  [v10 scaledValueForValue:15.0];
  v12 = v11;

  [v5 setContentEdgeInsets:{v9, 16.0, v12, 16.0}];
}

- (_TtC6FindMy23FMLostModeSummaryButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end