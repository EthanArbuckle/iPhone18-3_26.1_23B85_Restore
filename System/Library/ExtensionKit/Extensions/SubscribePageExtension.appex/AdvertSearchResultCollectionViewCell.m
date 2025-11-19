@interface AdvertSearchResultCollectionViewCell
- (_TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AdvertSearchResultCollectionViewCell

- (_TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell)initWithCoder:(id)a3
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v2 = v4.receiver;
  [(AdvertSearchResultCollectionViewCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v2 = v4.receiver;
  [(AdvertSearchResultCollectionViewCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
  sub_10017D15C();
  sub_100630618();
}

@end