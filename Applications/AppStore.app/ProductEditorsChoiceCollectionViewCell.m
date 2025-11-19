@interface ProductEditorsChoiceCollectionViewCell
- (_TtC8AppStore38ProductEditorsChoiceCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ProductEditorsChoiceCollectionViewCell

- (_TtC8AppStore38ProductEditorsChoiceCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_editorsChoiceView;
  type metadata accessor for ProductEditorsChoiceView();
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(ProductEditorsChoiceCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_editorsChoiceView];
  v4 = [v2 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

@end