@interface SearchTagsRibbonView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (void)layoutSubviews;
@end

@implementation SearchTagsRibbonView

- (void)layoutSubviews
{
  v2 = self;
  sub_D4B4();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_DAB8(a4);
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
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels);

  v4 = self;
  v5 = sub_101F5C(v3, 0);

  return v5 & 1;
}

@end