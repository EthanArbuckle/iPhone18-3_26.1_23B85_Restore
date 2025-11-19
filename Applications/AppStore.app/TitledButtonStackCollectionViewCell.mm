@interface TitledButtonStackCollectionViewCell
- (_TtC8AppStore35TitledButtonStackCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TitledButtonStackCollectionViewCell

- (_TtC8AppStore35TitledButtonStackCollectionViewCell)initWithCoder:(id)a3
{
  v4 = sub_10002849C(&qword_100995858);
  __chkstk_darwin(v4);
  v5 = OBJC_IVAR____TtC8AppStore35TitledButtonStackCollectionViewCell_itemLayoutContext;
  v6 = type metadata accessor for ItemLayoutContext();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8AppStore35TitledButtonStackCollectionViewCell_lineBreaks;
  v8 = sub_10002849C(&qword_100973F58);
  (*(*(v8 - 8) + 56))(self + v7, 1, 1, v8);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore35TitledButtonStackCollectionViewCell_buttons) = _swiftEmptyArrayStorage;
  type metadata accessor for RoundedTitledButton();
  ViewRecycler.init()();
  sub_10074B528();
  ReusePool.init(recycler:limit:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10074ADC8();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TitledButtonStackCollectionViewCell();
  v2 = v3.receiver;
  [(TitledButtonStackCollectionViewCell *)&v3 prepareForReuse];
  sub_10074A548();
}

@end