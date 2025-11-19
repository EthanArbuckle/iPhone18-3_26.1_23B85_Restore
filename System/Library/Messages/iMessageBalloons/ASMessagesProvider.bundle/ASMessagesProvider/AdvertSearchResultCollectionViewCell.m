@interface AdvertSearchResultCollectionViewCell
- (_TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AdvertSearchResultCollectionViewCell

- (_TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell)initWithCoder:(id)a3
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v2 = v4.receiver;
  [(AdvertSearchResultCollectionViewCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v2 = v4.receiver;
  [(AdvertSearchResultCollectionViewCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView];
  sub_12F484();
  sub_55AFC4();
}

@end