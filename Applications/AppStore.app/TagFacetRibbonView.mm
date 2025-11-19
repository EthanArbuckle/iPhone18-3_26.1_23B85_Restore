@interface TagFacetRibbonView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC8AppStore18TagFacetRibbonView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation TagFacetRibbonView

- (_TtC8AppStore18TagFacetRibbonView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_tagFacetViews) = _swiftEmptyArrayStorage;
  static TagFacetRibbonLayout.Metrics.standard.getter();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_ribbonBarItemModels) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsCalculator) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1005ECD7C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_1005ED0D8(a4);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (BOOL)hasContent
{
  type metadata accessor for RibbonBarItemCollectionViewCell();
  v3 = self;

  v4 = Array.isNotEmpty.getter();

  return v4 & 1;
}

@end