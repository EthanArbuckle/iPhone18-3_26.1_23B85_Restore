@interface MacLargeTitleCollectionViewCell
- (_TtC7Journal31MacLargeTitleCollectionViewCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)layoutSubviews;
@end

@implementation MacLargeTitleCollectionViewCell

- (_TtC7Journal31MacLargeTitleCollectionViewCell)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItemObserver);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_scrollOffsetObserver;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_scrollOffsetObserver) = 0;
  v6 = OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItem;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItem) = 0;
  sub_100004F84(v4, &qword_100AD13D0);

  type metadata accessor for MacLargeTitleCollectionViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100108AB4(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100109264();
}

@end