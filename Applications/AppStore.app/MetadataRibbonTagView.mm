@interface MetadataRibbonTagView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (void)layoutSubviews;
@end

@implementation MetadataRibbonTagView

- (void)layoutSubviews
{
  v2 = self;
  sub_1001EC15C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  v5 = type metadata accessor for MetadataRibbonTagViewLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetadataRibbonTagViewLayout();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_tagLabel);
  v28[4] = type metadata accessor for DynamicTypeLabel();
  v28[5] = &protocol witness table for UILabel;
  v28[1] = v13;
  (*(v6 + 16))(v8, self + OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_metrics, v5);
  swift_unknownObjectRetain();
  v14 = self;
  v15 = v13;
  MetadataRibbonTagViewLayout.init(descriptionLabelTextView:metrics:)();
  MetadataRibbonTagViewLayout.measurements(fitting:in:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  swift_unknownObjectRelease();

  (*(v10 + 8))(v12, v9);
  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.var3 = v27;
  result.var2 = v26;
  result.var1 = v25;
  result.var0 = v24;
  return result;
}

@end