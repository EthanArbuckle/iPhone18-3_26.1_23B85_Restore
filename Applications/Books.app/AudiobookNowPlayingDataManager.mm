@interface AudiobookNowPlayingDataManager
- (_TtC5Books30AudiobookNowPlayingDataManager)init;
- (void)audiobookBuyButtonProgressDidChangeTo:(double)a3;
- (void)audiobookCoverWillChangeTo:(CGImage *)a3;
- (void)audiobookPreorderStateChangedTo:(BOOL)a3;
- (void)audiobookProductProfileDidChangeTo:(id)a3;
- (void)audiobookStoreIDDidChangeTo:(id)a3;
- (void)dealloc;
- (void)libraryItemStateCenter:(id)a3 didUpdateItemState:(id)a4 forIdentifier:(id)a5;
- (void)player:(id)a3 artworkDidChange:(CGImage *)a4;
- (void)player:(id)a3 bufferedPositionsDidChangeInChapter:(unint64_t)a4 bufferInfo:(id)a5;
- (void)player:(id)a3 currentPositionDidChange:(double)a4 inChapter:(unint64_t)a5 absolutePosition:(double)a6;
- (void)player:(id)a3 failedWithError:(id)a4;
- (void)player:(id)a3 isScrubbing:(BOOL)a4;
- (void)player:(id)a3 isStalling:(BOOL)a4 isLoadingResources:(BOOL)a5;
- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
- (void)skipController:(id)a3 updatedCumulativeDelta:(double)a4;
- (void)skipController:(id)a3 willBeginSkippingInDirection:(unint64_t)a4;
- (void)skipControllerDidEndSkipping:(id)a3 actionSource:(unint64_t)a4;
- (void)skipControllerSettingsDidChange:(id)a3;
- (void)sleepTimer:(id)a3 remainingTimeDidUpdate:(double)a4;
- (void)sleepTimerCanceled:(id)a3;
- (void)sleepTimerDidExpire:(id)a3;
- (void)sleepTimerEnabled:(id)a3;
@end

@implementation AudiobookNowPlayingDataManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
  v5 = self;
  [v4 removeObserver:v5];
  v6 = [*(&v5->super.isa + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_libraryItemStateProvider) stateCenter];
  [v6 removeObserver:v5];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(AudiobookNowPlayingDataManager *)&v7 dealloc];
}

- (_TtC5Books30AudiobookNowPlayingDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)audiobookBuyButtonProgressDidChangeTo:(double)a3
{
  v4 = self;
  sub_100463B68(a3);
}

- (void)audiobookCoverWillChangeTo:(CGImage *)a3
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (a3)
    {
      v5 = a3;
      v6 = self;
      sub_1002D2BDC(a3);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

- (void)audiobookProductProfileDidChangeTo:(id)a3
{
  if (a3)
  {
    v4 = sub_1007A2044();
  }

  else
  {
    v4 = 0;
  }

  *(&self->super.isa + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_productProfile) = v4;
  v5 = self;

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002D358C(v4);
    swift_unknownObjectRelease();
  }
}

- (void)audiobookStoreIDDidChangeTo:(id)a3
{
  if (a3)
  {
    v4 = sub_1007A2254();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_storeID);
  *v6 = v4;
  v6[1] = v5;
}

- (void)audiobookPreorderStateChangedTo:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_100463EE8(v3);
}

- (void)player:(id)a3 artworkDidChange:(CGImage *)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_100464394(a3, a4);
  swift_unknownObjectRelease();
}

- (void)player:(id)a3 currentPositionDidChange:(double)a4 inChapter:(unint64_t)a5 absolutePosition:(double)a6
{
  swift_unknownObjectRetain();
  v11 = self;
  sub_100464680(a3, a5, a4, a6);
  swift_unknownObjectRelease();
}

- (void)player:(id)a3 bufferedPositionsDidChangeInChapter:(unint64_t)a4 bufferInfo:(id)a5
{
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100464828(a3, a4, v9);
  swift_unknownObjectRelease();
}

- (void)player:(id)a3 failedWithError:(id)a4
{
  swift_unknownObjectRetain();
  v8 = a4;
  v7 = self;
  sub_100464C7C(a3, v8);
  swift_unknownObjectRelease();
}

- (void)player:(id)a3 isScrubbing:(BOOL)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_100465B70(a3, a4);
  swift_unknownObjectRelease();
}

- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  swift_unknownObjectRetain();
  v8 = self;
  sub_1004670C0(a3, a5);
  swift_unknownObjectRelease();
}

- (void)player:(id)a3 isStalling:(BOOL)a4 isLoadingResources:(BOOL)a5
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_100465F6C(a3);
  swift_unknownObjectRelease();
}

- (void)sleepTimerEnabled:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004671B4(&unk_100A1CF68, sub_100467BD0, &unk_100A1CF80);
}

- (void)sleepTimerDidExpire:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004671B4(&unk_100A1CF18, sub_100467C44, &unk_100A1CF30);
}

- (void)sleepTimerCanceled:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004671B4(&unk_100A1CEC8, sub_100467BB4, &unk_100A1CEE0);
}

- (void)sleepTimer:(id)a3 remainingTimeDidUpdate:(double)a4
{
  v6 = a3;
  v7 = self;
  sub_10046746C(a4);
}

- (void)skipController:(id)a3 willBeginSkippingInDirection:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_100467804(1);
}

- (void)skipController:(id)a3 updatedCumulativeDelta:(double)a4
{
  v5 = a3;
  v6 = self;
  sub_100467740();
}

- (void)skipControllerDidEndSkipping:(id)a3 actionSource:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_100467804(0);
}

- (void)skipControllerSettingsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004666C4(v4);
}

- (void)libraryItemStateCenter:(id)a3 didUpdateItemState:(id)a4 forIdentifier:(id)a5
{
  v8 = sub_1007A2254();
  v10 = v9;
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  sub_100467894(a4, v8, v10);

  swift_unknownObjectRelease();
}

@end