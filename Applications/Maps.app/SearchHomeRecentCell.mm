@interface SearchHomeRecentCell
+ (NSString)reuseIdentifier;
- (NSArray)recentItems;
- (SearchHomeRecentCellDelegate)delegate;
- (id)deletionBlock;
- (void)configureUsing:(id)a3 delegate:(id)a4 deletionBlock:(id)a5;
- (void)layoutSubviews;
- (void)setDeletionBlock:(id)a3;
- (void)setRecentItems:(id)a3;
@end

@implementation SearchHomeRecentCell

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSArray)recentItems
{
  type metadata accessor for HistoryEntryRecentsItemWrapper(0);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setRecentItems:(id)a3
{
  type metadata accessor for HistoryEntryRecentsItemWrapper(0);
  *(self + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_recentItems) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (SearchHomeRecentCellDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)deletionBlock
{
  if (*(self + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100482904;
    v5[3] = &unk_10161B378;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDeletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100116428;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock);
  v8 = *(self + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock);
  v9 = *(self + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_1000D3B90(v8, v9);
}

- (void)configureUsing:(id)a3 delegate:(id)a4 deletionBlock:(id)a5
{
  v7 = _Block_copy(a5);
  type metadata accessor for HistoryEntryRecentsItemWrapper(0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_1000D2C9C;
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRetain();
  v10 = self;
  sub_1004845F8(v8, a4, v7, v9);
  sub_1000D3B90(v7, v9);
  swift_unknownObjectRelease();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1004848E4();
}

@end