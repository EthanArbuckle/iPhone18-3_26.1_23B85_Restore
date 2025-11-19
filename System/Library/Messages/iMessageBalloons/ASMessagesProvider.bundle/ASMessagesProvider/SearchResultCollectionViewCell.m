@interface SearchResultCollectionViewCell
- (_TtC18ASMessagesProvider30SearchResultCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SearchResultCollectionViewCell

- (_TtC18ASMessagesProvider30SearchResultCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  *v6 = 0;
  v6[1] = 0;
  swift_weakInit();
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_impressionsUpdateBlock);
  *v7 = 0;
  v7[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2A9570();
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for SearchResultCollectionViewCell();
  v2 = v8.receiver;
  [(SearchResultCollectionViewCell *)&v8 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents + 8];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 40);
    v7 = v3;
    v6(ObjectType, v4);
  }
}

@end