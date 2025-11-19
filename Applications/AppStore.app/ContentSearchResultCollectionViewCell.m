@interface ContentSearchResultCollectionViewCell
- (_TtC8AppStore37ContentSearchResultCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ContentSearchResultCollectionViewCell

- (_TtC8AppStore37ContentSearchResultCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots;
  *(&self->super.super.super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_preferredImageSizes) = &_swiftEmptyDictionarySingleton;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1003488A4();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  v2 = v4.receiver;
  [(ContentSearchResultCollectionViewCell *)&v4 prepareForReuse];
  sub_1000ACF48();
  v3 = OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots;
  sub_1001B8FAC();
  [*&v2[v3] setHidden:{0, v4.receiver, v4.super_class}];
}

@end