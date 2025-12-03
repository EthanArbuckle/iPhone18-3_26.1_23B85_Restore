@interface AudiobookNowPlayingDataManager
- (_TtC5Books30AudiobookNowPlayingDataManager)init;
- (void)audiobookBuyButtonProgressDidChangeTo:(double)to;
- (void)audiobookCoverWillChangeTo:(CGImage *)to;
- (void)audiobookPreorderStateChangedTo:(BOOL)to;
- (void)audiobookProductProfileDidChangeTo:(id)to;
- (void)audiobookStoreIDDidChangeTo:(id)to;
- (void)dealloc;
- (void)libraryItemStateCenter:(id)center didUpdateItemState:(id)state forIdentifier:(id)identifier;
- (void)player:(id)player artworkDidChange:(CGImage *)change;
- (void)player:(id)player bufferedPositionsDidChangeInChapter:(unint64_t)chapter bufferInfo:(id)info;
- (void)player:(id)player currentPositionDidChange:(double)change inChapter:(unint64_t)chapter absolutePosition:(double)position;
- (void)player:(id)player failedWithError:(id)error;
- (void)player:(id)player isScrubbing:(BOOL)scrubbing;
- (void)player:(id)player isStalling:(BOOL)stalling isLoadingResources:(BOOL)resources;
- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)skipController:(id)controller updatedCumulativeDelta:(double)delta;
- (void)skipController:(id)controller willBeginSkippingInDirection:(unint64_t)direction;
- (void)skipControllerDidEndSkipping:(id)skipping actionSource:(unint64_t)source;
- (void)skipControllerSettingsDidChange:(id)change;
- (void)sleepTimer:(id)timer remainingTimeDidUpdate:(double)update;
- (void)sleepTimerCanceled:(id)canceled;
- (void)sleepTimerDidExpire:(id)expire;
- (void)sleepTimerEnabled:(id)enabled;
@end

@implementation AudiobookNowPlayingDataManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
  selfCopy = self;
  [v4 removeObserver:selfCopy];
  stateCenter = [*(&selfCopy->super.isa + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_libraryItemStateProvider) stateCenter];
  [stateCenter removeObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(AudiobookNowPlayingDataManager *)&v7 dealloc];
}

- (_TtC5Books30AudiobookNowPlayingDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)audiobookBuyButtonProgressDidChangeTo:(double)to
{
  selfCopy = self;
  sub_100463B68(to);
}

- (void)audiobookCoverWillChangeTo:(CGImage *)to
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (to)
    {
      toCopy = to;
      selfCopy = self;
      sub_1002D2BDC(to);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

- (void)audiobookProductProfileDidChangeTo:(id)to
{
  if (to)
  {
    v4 = sub_1007A2044();
  }

  else
  {
    v4 = 0;
  }

  *(&self->super.isa + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_productProfile) = v4;
  selfCopy = self;

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002D358C(v4);
    swift_unknownObjectRelease();
  }
}

- (void)audiobookStoreIDDidChangeTo:(id)to
{
  if (to)
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

- (void)audiobookPreorderStateChangedTo:(BOOL)to
{
  toCopy = to;
  selfCopy = self;
  sub_100463EE8(toCopy);
}

- (void)player:(id)player artworkDidChange:(CGImage *)change
{
  swift_unknownObjectRetain();
  changeCopy = change;
  selfCopy = self;
  sub_100464394(player, change);
  swift_unknownObjectRelease();
}

- (void)player:(id)player currentPositionDidChange:(double)change inChapter:(unint64_t)chapter absolutePosition:(double)position
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100464680(player, chapter, change, position);
  swift_unknownObjectRelease();
}

- (void)player:(id)player bufferedPositionsDidChangeInChapter:(unint64_t)chapter bufferInfo:(id)info
{
  swift_unknownObjectRetain();
  infoCopy = info;
  selfCopy = self;
  sub_100464828(player, chapter, infoCopy);
  swift_unknownObjectRelease();
}

- (void)player:(id)player failedWithError:(id)error
{
  swift_unknownObjectRetain();
  errorCopy = error;
  selfCopy = self;
  sub_100464C7C(player, errorCopy);
  swift_unknownObjectRelease();
}

- (void)player:(id)player isScrubbing:(BOOL)scrubbing
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100465B70(player, scrubbing);
  swift_unknownObjectRelease();
}

- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1004670C0(player, to);
  swift_unknownObjectRelease();
}

- (void)player:(id)player isStalling:(BOOL)stalling isLoadingResources:(BOOL)resources
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100465F6C(player);
  swift_unknownObjectRelease();
}

- (void)sleepTimerEnabled:(id)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  sub_1004671B4(&unk_100A1CF68, sub_100467BD0, &unk_100A1CF80);
}

- (void)sleepTimerDidExpire:(id)expire
{
  expireCopy = expire;
  selfCopy = self;
  sub_1004671B4(&unk_100A1CF18, sub_100467C44, &unk_100A1CF30);
}

- (void)sleepTimerCanceled:(id)canceled
{
  canceledCopy = canceled;
  selfCopy = self;
  sub_1004671B4(&unk_100A1CEC8, sub_100467BB4, &unk_100A1CEE0);
}

- (void)sleepTimer:(id)timer remainingTimeDidUpdate:(double)update
{
  timerCopy = timer;
  selfCopy = self;
  sub_10046746C(update);
}

- (void)skipController:(id)controller willBeginSkippingInDirection:(unint64_t)direction
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100467804(1);
}

- (void)skipController:(id)controller updatedCumulativeDelta:(double)delta
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100467740();
}

- (void)skipControllerDidEndSkipping:(id)skipping actionSource:(unint64_t)source
{
  skippingCopy = skipping;
  selfCopy = self;
  sub_100467804(0);
}

- (void)skipControllerSettingsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1004666C4(changeCopy);
}

- (void)libraryItemStateCenter:(id)center didUpdateItemState:(id)state forIdentifier:(id)identifier
{
  v8 = sub_1007A2254();
  v10 = v9;
  centerCopy = center;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100467894(state, v8, v10);

  swift_unknownObjectRelease();
}

@end