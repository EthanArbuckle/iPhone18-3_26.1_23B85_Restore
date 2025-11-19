@interface SearchResultsContextCardCollectionViewCell
- (_TtC8AppStore42SearchResultsContextCardCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SearchResultsContextCardCollectionViewCell

- (_TtC8AppStore42SearchResultsContextCardCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(SearchResultsContextCardCollectionViewCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore42SearchResultsContextCardCollectionViewCell_content];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(SearchResultsContextCardCollectionViewCell *)&v5 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore42SearchResultsContextCardCollectionViewCell_content];
  sub_1004F7970();
  v4 = *(v3 + qword_100989E00);
  *(v3 + qword_100989E00) = 0;
  sub_10051FC1C(v4);
}

@end