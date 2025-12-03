@interface AudiobookNowPlayingPresenter
- (BOOL)isScrubbing;
- (NSArray)playbackRates;
- (float)playbackRate;
- (id)analyticsAssetPropertyProviderFor:(id)for actionSource:(id)source;
- (id)analyticsData;
- (id)contextMenuItemsFor:(id)for from:(id)from actionSource:(id)source;
- (int64_t)sleepTimerOption;
- (void)clearAudiobook;
- (void)goToChapterIndex:(int64_t)index;
- (void)play;
- (void)scrubTo:(float)to completion:(id)completion;
- (void)setActiveMode:(BOOL)mode;
- (void)setAudiobookTimeRemainingMode:(BOOL)mode;
- (void)setBuyButtonProgress:(double)progress;
- (void)setIsScrubbing:(BOOL)scrubbing;
- (void)setPlaybackRateTo:(float)to;
- (void)setSleepTimerOption:(int64_t)option;
- (void)setVolume:(float)volume;
- (void)setWithDownloadState:(int64_t)state assetState:(signed __int16)assetState progressValue:(float)value;
- (void)viewSupplementalContentWithViewController:(id)controller;
@end

@implementation AudiobookNowPlayingPresenter

- (void)clearAudiobook
{
  swift_beginAccess();
  v3 = (*sub_10000E3E8(self->interactor, *&self->interactor[24]) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  sub_10000E3E8(v3, v3[3]);

  sub_1004636DC();
}

- (void)setPlaybackRateTo:(float)to
{
  swift_beginAccess();
  v5 = *sub_10000E3E8(self->interactor, *&self->interactor[24]) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  sub_10022569C(v5, v6);
  v8 = *(v7 + 152);

  v8(v6, v7, to);
  swift_endAccess();
}

- (void)goToChapterIndex:(int64_t)index
{
  swift_beginAccess();
  sub_10000E3E8(self->interactor, *&self->interactor[24]);

  sub_1002CE180(index);
}

- (void)play
{
  swift_beginAccess();
  sub_10000E3E8(self->interactor, *&self->interactor[24]);

  sub_1002CF778(0);
}

- (void)scrubTo:(float)to completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_10021C1E0;
  }

  else
  {
    v6 = 0;
  }

  sub_100559960(v5, v6, to);
  sub_100007020(v5);
}

- (void)setVolume:(float)volume
{
  swift_beginAccess();
  v5 = *&self->interactor[24];
  v6 = *&self->interactor[32];
  sub_10022569C(self->interactor, v5);
  v7 = *(v6 + 256);

  v7(v5, v6, volume);
  swift_endAccess();
}

- (void)setBuyButtonProgress:(double)progress
{
  swift_beginAccess();
  v5 = (*sub_10000E3E8(self->interactor, *&self->interactor[24]) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v6 = sub_10000E3E8(v5, v5[3]);
  sub_10000E3E8((*v6 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider), *(*v6 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider + 24));

  sub_10049F9E4(progress);
}

- (void)setWithDownloadState:(int64_t)state assetState:(signed __int16)assetState progressValue:(float)value
{
  swift_beginAccess();
  sub_10000E3E8(self->interactor, *&self->interactor[24]);

  sub_1002CE464(state, assetState, value);
}

- (void)viewSupplementalContentWithViewController:(id)controller
{
  controllerCopy = controller;

  sub_10055A0E8(controllerCopy);
}

- (id)contextMenuItemsFor:(id)for from:(id)from actionSource:(id)source
{
  sub_1007A2254();
  forCopy = for;
  fromCopy = from;

  sub_10055A884(forCopy, fromCopy);

  sub_10055CBC8();
  v9.super.isa = sub_1007A25D4().super.isa;

  return v9.super.isa;
}

- (id)analyticsAssetPropertyProviderFor:(id)for actionSource:(id)source
{
  sub_1007A2254();
  forCopy = for;

  v6 = sub_10055AA84(forCopy);

  return v6;
}

- (id)analyticsData
{
  swift_beginAccess();
  sub_10000E3E8(self->interactor, *&self->interactor[24]);

  v3 = sub_1002D0C04();

  return v3;
}

- (void)setActiveMode:(BOOL)mode
{
  modeCopy = mode;
  swift_beginAccess();
  v5 = *&self->interactor[24];
  v6 = *&self->interactor[32];
  sub_10022569C(self->interactor, v5);
  v7 = *(v6 + 40);

  v7(modeCopy, v5, v6);
  swift_endAccess();
}

- (void)setAudiobookTimeRemainingMode:(BOOL)mode
{
  modeCopy = mode;
  swift_beginAccess();
  v5 = *&self->interactor[24];
  v6 = *&self->interactor[32];
  sub_10022569C(self->interactor, v5);
  v7 = *(v6 + 80);

  v7(modeCopy, v5, v6);
  swift_endAccess();
}

- (BOOL)isScrubbing
{
  swift_beginAccess();
  v3 = (*sub_10000E3E8(self->interactor, *&self->interactor[24]) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v4 = *(*sub_10000E3E8(v3, v3[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);

  LOBYTE(v4) = [v4 isScrubbing];
  swift_endAccess();
  swift_endAccess();

  return v4;
}

- (void)setIsScrubbing:(BOOL)scrubbing
{
  scrubbingCopy = scrubbing;
  swift_beginAccess();
  v5 = *&self->interactor[24];
  v6 = *&self->interactor[32];
  sub_10022569C(self->interactor, v5);
  v7 = *(v6 + 168);

  v7(scrubbingCopy, v5, v6);
  swift_endAccess();
}

- (int64_t)sleepTimerOption
{
  swift_beginAccess();
  v3 = (*sub_10000E3E8(self->interactor, *&self->interactor[24]) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  sub_10000E3E8(v3, v3[3]);

  v4 = sub_100462738();
  swift_endAccess();
  swift_endAccess();

  return v4;
}

- (void)setSleepTimerOption:(int64_t)option
{
  swift_beginAccess();
  v5 = *&self->interactor[24];
  v6 = *&self->interactor[32];
  sub_10022569C(self->interactor, v5);
  v7 = *(v6 + 200);

  v7(option, v5, v6);
  swift_endAccess();
}

- (NSArray)playbackRates
{

  sub_10055B15C();

  v2.super.isa = sub_1007A25D4().super.isa;

  return v2.super.isa;
}

- (float)playbackRate
{

  v2 = sub_10055B2B0();

  return v2;
}

@end