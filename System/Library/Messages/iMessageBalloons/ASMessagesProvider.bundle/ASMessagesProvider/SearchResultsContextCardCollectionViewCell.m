@interface SearchResultsContextCardCollectionViewCell
- (_TtC18ASMessagesProvider42SearchResultsContextCardCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SearchResultsContextCardCollectionViewCell

- (_TtC18ASMessagesProvider42SearchResultsContextCardCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(SearchResultsContextCardCollectionViewCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider42SearchResultsContextCardCollectionViewCell_content];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(SearchResultsContextCardCollectionViewCell *)&v5 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider42SearchResultsContextCardCollectionViewCell_content];
  sub_4EAB5C();
  v4 = *(v3 + qword_95D988);
  *(v3 + qword_95D988) = 0;
  sub_5F01B8(v4);
}

@end