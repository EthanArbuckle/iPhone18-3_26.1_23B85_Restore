@interface FMLostModeSummaryButton
- (_TtC6FindMy23FMLostModeSummaryButton)init;
- (_TtC6FindMy23FMLostModeSummaryButton)initWithCoder:(id)coder;
- (_TtC6FindMy23FMLostModeSummaryButton)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
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

- (_TtC6FindMy23FMLostModeSummaryButton)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for FMLostModeSummaryButton();
  changeCopy = change;
  v5 = v13.receiver;
  [(FMLostModeSummaryButton *)&v13 traitCollectionDidChange:changeCopy];
  v6 = objc_opt_self();
  defaultMetrics = [v6 defaultMetrics];
  [defaultMetrics scaledValueForValue:15.0];
  v9 = v8;

  defaultMetrics2 = [v6 defaultMetrics];
  [defaultMetrics2 scaledValueForValue:15.0];
  v12 = v11;

  [v5 setContentEdgeInsets:{v9, 16.0, v12, 16.0}];
}

- (_TtC6FindMy23FMLostModeSummaryButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end