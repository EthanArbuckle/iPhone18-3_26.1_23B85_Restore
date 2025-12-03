@interface AdvertSearchResultCollectionViewCell
- (_TtC8AppStore36AdvertSearchResultCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AdvertSearchResultCollectionViewCell

- (_TtC8AppStore36AdvertSearchResultCollectionViewCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v2 = v4.receiver;
  [(AdvertSearchResultCollectionViewCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v2 = v4.receiver;
  [(AdvertSearchResultCollectionViewCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView];
  sub_1000ACF48();
  sub_1001B8FAC();
}

@end