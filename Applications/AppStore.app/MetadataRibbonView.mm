@interface MetadataRibbonView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC8AppStore18MetadataRibbonView)initWithCoder:(id)a3;
- (_TtC8AppStore18MetadataRibbonView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation MetadataRibbonView

- (_TtC8AppStore18MetadataRibbonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews) = _swiftEmptyArrayStorage;
  static MetadataRibbonViewLayout.Metrics.standard.getter();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18MetadataRibbonView_isInsideSearchAd) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(MetadataRibbonView *)&v11 initWithFrame:x, y, width, height];
  [(MetadataRibbonView *)v9 setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return v9;
}

- (_TtC8AppStore18MetadataRibbonView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews) = _swiftEmptyArrayStorage;
  static MetadataRibbonViewLayout.Metrics.standard.getter();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18MetadataRibbonView_isInsideSearchAd) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  MetadataRibbonView.layoutSubviews()();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  MetadataRibbonView.measurements(fitting:in:)(a4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (BOOL)hasContent
{
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);

  v5 = self;
  v6 = sub_1004849E0(0, v4);

  return v6 & 1;
}

@end