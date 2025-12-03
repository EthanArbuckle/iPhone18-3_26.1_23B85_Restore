@interface RibbonBarItemCollectionViewCell
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)handleTap;
- (void)layoutSubviews;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setIsAccessibilityElement:(BOOL)element;
@end

@implementation RibbonBarItemCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001C0C9C();
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  elementCopy = element;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(RibbonBarItemCollectionViewCell *)&v4 setIsAccessibilityElement:elementCopy];
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(RibbonBarItemCollectionViewCell *)&v4 setAccessibilityTraits:traits];
}

- (void)handleTap
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10001B5AC(v2);
    v2(v4);

    sub_1000164A8(v2);
  }
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001C0F00(v20);
  sub_10000C888(v20, v20[3]);
  traitCollection = [in traitCollection];
  sub_100751254();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  swift_unknownObjectRelease();
  sub_10000C620(v20);
  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

@end