@interface TitledButtonStackCollectionViewCell
- (_TtC20ProductPageExtension35TitledButtonStackCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TitledButtonStackCollectionViewCell

- (_TtC20ProductPageExtension35TitledButtonStackCollectionViewCell)initWithCoder:(id)a3
{
  v4 = sub_10000A5D4(&qword_10094CF28);
  __chkstk_darwin(v4);
  v5 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_itemLayoutContext;
  v6 = sub_10076341C();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_lineBreaks;
  v8 = sub_10000A5D4(&qword_10094CF18);
  (*(*(v8 - 8) + 56))(self + v7, 1, 1, v8);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_buttons) = _swiftEmptyArrayStorage;
  type metadata accessor for RoundedTitledButton();
  sub_10076D4CC();
  sub_1001D52C4();
  sub_10076E18C();
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001D4B64();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TitledButtonStackCollectionViewCell();
  v2 = v3.receiver;
  [(TitledButtonStackCollectionViewCell *)&v3 prepareForReuse];
  sub_1001D42E4();
}

@end