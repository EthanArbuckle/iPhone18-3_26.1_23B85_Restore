@interface ContentSearchResultCollectionViewCell
- (_TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ContentSearchResultCollectionViewCell

- (_TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots;
  *(&self->super.super.super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_preferredImageSizes) = &_swiftEmptyDictionarySingleton;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001D7D60();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  v2 = v4.receiver;
  [(ContentSearchResultCollectionViewCell *)&v4 prepareForReuse];
  sub_10017D15C();
  v3 = OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots;
  sub_100630618();
  [*&v2[v3] setHidden:{0, v4.receiver, v4.super_class}];
}

@end