@interface ContentSearchResultCollectionViewCell
- (_TtC20ProductPageExtension37ContentSearchResultCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ContentSearchResultCollectionViewCell

- (_TtC20ProductPageExtension37ContentSearchResultCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots;
  *(&self->super.super.super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_preferredImageSizes) = &_swiftEmptyDictionarySingleton;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100295C00();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  v2 = v4.receiver;
  [(ContentSearchResultCollectionViewCell *)&v4 prepareForReuse];
  sub_100522870();
  v3 = OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots;
  sub_10057EDF4();
  [*&v2[v3] setHidden:{0, v4.receiver, v4.super_class}];
}

@end