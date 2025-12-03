@interface MetadataRibbonTagView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)layoutSubviews;
@end

@implementation MetadataRibbonTagView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10020396C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  v5 = sub_100768FCC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100768FDC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_tagLabel);
  v28[4] = sub_1007626BC();
  v28[5] = &protocol witness table for UILabel;
  v28[1] = v13;
  (*(v6 + 16))(v8, self + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_metrics, v5);
  swift_unknownObjectRetain();
  selfCopy = self;
  v15 = v13;
  sub_100768F7C();
  sub_100768F8C();
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