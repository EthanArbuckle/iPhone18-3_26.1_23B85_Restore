@interface SearchActionCollectionViewCell
- (_TtC18ASMessagesProvider30SearchActionCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SearchActionCollectionViewCell

- (_TtC18ASMessagesProvider30SearchActionCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider30SearchActionCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30SearchActionCollectionViewCell_actionContentView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(type metadata accessor for SearchActionContentView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SearchActionCollectionViewCell();
  v2 = v4.receiver;
  [(SearchActionCollectionViewCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30SearchActionCollectionViewCell_actionContentView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SearchActionCollectionViewCell();
  v2 = v4.receiver;
  [(SearchActionCollectionViewCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30SearchActionCollectionViewCell_actionContentView];
  sub_759190();
  [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_linkLabel) setText:{0, v4.receiver, v4.super_class}];
}

@end