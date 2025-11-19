@interface ProductEditorsChoiceCollectionViewCell
- (_TtC22SubscribePageExtension38ProductEditorsChoiceCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ProductEditorsChoiceCollectionViewCell

- (_TtC22SubscribePageExtension38ProductEditorsChoiceCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView;
  type metadata accessor for ProductEditorsChoiceView();
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(ProductEditorsChoiceCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView];
  v4 = [v2 contentView];
  sub_100009D34();
  sub_1007477B4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

@end