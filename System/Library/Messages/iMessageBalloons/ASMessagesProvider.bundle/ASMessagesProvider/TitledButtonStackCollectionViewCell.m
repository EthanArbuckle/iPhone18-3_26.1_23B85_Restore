@interface TitledButtonStackCollectionViewCell
- (_TtC18ASMessagesProvider35TitledButtonStackCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TitledButtonStackCollectionViewCell

- (_TtC18ASMessagesProvider35TitledButtonStackCollectionViewCell)initWithCoder:(id)a3
{
  v4 = sub_BD88(&qword_949F78);
  __chkstk_darwin(v4);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider35TitledButtonStackCollectionViewCell_itemLayoutContext;
  v6 = sub_75C840();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider35TitledButtonStackCollectionViewCell_lineBreaks;
  v8 = sub_BD88(&qword_949F68);
  (*(*(v8 - 8) + 56))(self + v7, 1, 1, v8);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider35TitledButtonStackCollectionViewCell_buttons) = _swiftEmptyArrayStorage;
  type metadata accessor for RoundedTitledButton();
  sub_7667C0();
  sub_1F5FF4();
  sub_767480();
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1F5894();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TitledButtonStackCollectionViewCell();
  v2 = v3.receiver;
  [(TitledButtonStackCollectionViewCell *)&v3 prepareForReuse];
  sub_1F5014();
}

@end