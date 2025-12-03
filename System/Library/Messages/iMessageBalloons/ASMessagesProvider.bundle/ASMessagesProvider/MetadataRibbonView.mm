@interface MetadataRibbonView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC18ASMessagesProvider18MetadataRibbonView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider18MetadataRibbonView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MetadataRibbonView

- (_TtC18ASMessagesProvider18MetadataRibbonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews) = _swiftEmptyArrayStorage;
  _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_isInsideSearchAd) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  height = [(MetadataRibbonView *)&v11 initWithFrame:x, y, width, height];
  [(MetadataRibbonView *)height setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return height;
}

- (_TtC18ASMessagesProvider18MetadataRibbonView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews) = _swiftEmptyArrayStorage;
  _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_isInsideSearchAd) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  MetadataRibbonView.layoutSubviews()();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MetadataRibbonView.measurements(fitting:in:)(in);
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
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);

  selfCopy = self;
  v6 = sub_101F5C(0, v4);

  return v6 & 1;
}

@end