@interface TagFacetRibbonView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC18ASMessagesProvider18TagFacetRibbonView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation TagFacetRibbonView

- (_TtC18ASMessagesProvider18TagFacetRibbonView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_tagFacetViews) = _swiftEmptyArrayStorage;
  sub_75EE50();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_ribbonBarItemModels) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_impressionsCalculator) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_31A8A4();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_31AC00(in);
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
  selfCopy = self;

  v4 = sub_769490();

  return v4 & 1;
}

@end