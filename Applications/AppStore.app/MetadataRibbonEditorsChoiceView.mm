@interface MetadataRibbonEditorsChoiceView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC8AppStore31MetadataRibbonEditorsChoiceView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation MetadataRibbonEditorsChoiceView

- (_TtC8AppStore31MetadataRibbonEditorsChoiceView)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_id;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_itemType;
  v6 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = self + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_labelMaxWidth;
  *v7 = 0;
  v7[8] = 1;
  v8 = self + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold;
  *v8 = 0;
  v8[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_allowsTruncation) = 2;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10021EC28();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_10021EEE8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.var3 = v16;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

@end