@interface TitledButtonStackCollectionViewCell
- (_TtC22SubscribePageExtension35TitledButtonStackCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TitledButtonStackCollectionViewCell

- (_TtC22SubscribePageExtension35TitledButtonStackCollectionViewCell)initWithCoder:(id)coder
{
  v4 = sub_10000C518(&qword_100926508);
  __chkstk_darwin(v4);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension35TitledButtonStackCollectionViewCell_itemLayoutContext;
  v6 = sub_1007469A4();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension35TitledButtonStackCollectionViewCell_lineBreaks;
  v8 = sub_10000C518(&qword_100923F78);
  (*(*(v8 - 8) + 56))(self + v7, 1, 1, v8);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TitledButtonStackCollectionViewCell_buttons) = _swiftEmptyArrayStorage;
  type metadata accessor for RoundedTitledButton();
  sub_100750624();
  sub_1000B627C();
  sub_1007512E4();
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000B5B1C();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TitledButtonStackCollectionViewCell();
  v2 = v3.receiver;
  [(TitledButtonStackCollectionViewCell *)&v3 prepareForReuse];
  sub_1000B529C();
}

@end