@interface SearchResultsContextCardCollectionViewCell
- (_TtC22SubscribePageExtension42SearchResultsContextCardCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SearchResultsContextCardCollectionViewCell

- (_TtC22SubscribePageExtension42SearchResultsContextCardCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(SearchResultsContextCardCollectionViewCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension42SearchResultsContextCardCollectionViewCell_content];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(SearchResultsContextCardCollectionViewCell *)&v5 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension42SearchResultsContextCardCollectionViewCell_content];
  sub_100151A48();
  v4 = *(v3 + qword_10092D708);
  *(v3 + qword_10092D708) = 0;
  sub_1001F2CE0(v4);
}

@end