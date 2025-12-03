@interface AdvertSearchResultCollectionViewCell
- (_TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AdvertSearchResultCollectionViewCell

- (_TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell)initWithCoder:(id)coder
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v2 = v4.receiver;
  [(AdvertSearchResultCollectionViewCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v2 = v4.receiver;
  [(AdvertSearchResultCollectionViewCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
  sub_100522870();
  sub_10057EDF4();
}

@end