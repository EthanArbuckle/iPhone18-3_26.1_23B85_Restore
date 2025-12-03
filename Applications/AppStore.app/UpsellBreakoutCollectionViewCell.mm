@interface UpsellBreakoutCollectionViewCell
- (UIEdgeInsets)layoutMargins;
- (_TtC8AppStore32UpsellBreakoutCollectionViewCell)initWithCoder:(id)coder;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation UpsellBreakoutCollectionViewCell

- (_TtC8AppStore32UpsellBreakoutCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (UIEdgeInsets)layoutMargins
{
  [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView) layoutMargins];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  v2 = v13.receiver;
  [(UpsellBreakoutCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView];
  contentView = [v2 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  [(UpsellBreakoutCollectionViewCell *)&v2 prepareForReuse];
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_1006BFE74(attributesCopy);
}

@end