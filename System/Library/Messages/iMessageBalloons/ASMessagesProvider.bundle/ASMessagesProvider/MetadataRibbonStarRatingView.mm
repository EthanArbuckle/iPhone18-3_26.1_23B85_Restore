@interface MetadataRibbonStarRatingView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC18ASMessagesProvider28MetadataRibbonStarRatingView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation MetadataRibbonStarRatingView

- (_TtC18ASMessagesProvider28MetadataRibbonStarRatingView)initWithCoder:(id)coder
{
  sub_7638B0();
  v4 = self + OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_id;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_itemType;
  v6 = sub_75FC90();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = self + OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_labelMaxWidth;
  *v7 = 0;
  v7[8] = 1;
  v8 = self + OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_truncationLegibilityThreshold;
  *v8 = 0;
  v8[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_allowsTruncation) = 2;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_494238();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_494534(in);
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

@end