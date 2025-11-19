@interface UpsellBreakoutCollectionViewCell
- (UIEdgeInsets)layoutMargins;
- (_TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell)initWithCoder:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation UpsellBreakoutCollectionViewCell

- (_TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData) = 1;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (UIEdgeInsets)layoutMargins
{
  [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_upsellBreakoutView) layoutMargins];
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
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_upsellBreakoutView];
  v4 = [v2 contentView];
  sub_2630C();
  sub_75D650();
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

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_338440(v4);
}

@end