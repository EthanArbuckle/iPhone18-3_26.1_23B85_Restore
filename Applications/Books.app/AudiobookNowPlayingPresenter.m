@interface AudiobookNowPlayingPresenter
- (BOOL)isScrubbing;
- (NSArray)playbackRates;
- (float)playbackRate;
- (id)analyticsAssetPropertyProviderFor:(id)a3 actionSource:(id)a4;
- (id)analyticsData;
- (id)contextMenuItemsFor:(id)a3 from:(id)a4 actionSource:(id)a5;
- (int64_t)sleepTimerOption;
- (void)clearAudiobook;
- (void)goToChapterIndex:(int64_t)a3;
- (void)play;
- (void)scrubTo:(float)a3 completion:(id)a4;
- (void)setActiveMode:(BOOL)a3;
- (void)setAudiobookTimeRemainingMode:(BOOL)a3;
- (void)setBuyButtonProgress:(double)a3;
- (void)setIsScrubbing:(BOOL)a3;
- (void)setPlaybackRateTo:(float)a3;
- (void)setSleepTimerOption:(int64_t)a3;
- (void)setVolume:(float)a3;
- (void)setWithDownloadState:(int64_t)a3 assetState:(signed __int16)a4 progressValue:(float)a5;
- (void)viewSupplementalContentWithViewController:(id)a3;
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

- (void)setPlaybackRateTo:(float)a3
{
  swift_beginAccess();
  v5 = *sub_10000E3E8(self->interactor, *&self->interactor[24]) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  sub_10022569C(v5, v6);
  v8 = *(v7 + 152);

  v8(v6, v7, a3);
  swift_endAccess();
}

- (void)goToChapterIndex:(int64_t)a3
{
  swift_beginAccess();
  sub_10000E3E8(self->interactor, *&self->interactor[24]);

  sub_1002CE180(a3);
}

- (void)play
{
  swift_beginAccess();
  sub_10000E3E8(self->interactor, *&self->interactor[24]);

  sub_1002CF778(0);
}

- (void)scrubTo:(float)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
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

  sub_100559960(v5, v6, a3);
  sub_100007020(v5);
}

- (void)setVolume:(float)a3
{
  swift_beginAccess();
  v5 = *&self->interactor[24];
  v6 = *&self->interactor[32];
  sub_10022569C(self->interactor, v5);
  v7 = *(v6 + 256);

  v7(v5, v6, a3);
  swift_endAccess();
}

- (void)setBuyButtonProgress:(double)a3
{
  swift_beginAccess();
  v5 = (*sub_10000E3E8(self->interactor, *&self->interactor[24]) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v6 = sub_10000E3E8(v5, v5[3]);
  sub_10000E3E8((*v6 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider), *(*v6 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider + 24));

  sub_10049F9E4(a3);
}

- (void)setWithDownloadState:(int64_t)a3 assetState:(signed __int16)a4 progressValue:(float)a5
{
  swift_beginAccess();
  sub_10000E3E8(self->interactor, *&self->interactor[24]);

  sub_1002CE464(a3, a4, a5);
}

- (void)viewSupplementalContentWithViewController:(id)a3
{
  v3 = a3;

  sub_10055A0E8(v3);
}

- (id)contextMenuItemsFor:(id)a3 from:(id)a4 actionSource:(id)a5
{
  sub_1007A2254();
  v7 = a3;
  v8 = a4;

  sub_10055A884(v7, v8);

  sub_10055CBC8();
  v9.super.isa = sub_1007A25D4().super.isa;

  return v9.super.isa;
}

- (id)analyticsAssetPropertyProviderFor:(id)a3 actionSource:(id)a4
{
  sub_1007A2254();
  v5 = a3;

  v6 = sub_10055AA84(v5);

  return v6;
}

- (id)analyticsData
{
  swift_beginAccess();
  sub_10000E3E8(self->interactor, *&self->interactor[24]);

  v3 = sub_1002D0C04();

  return v3;
}

- (void)setActiveMode:(BOOL)a3
{
  v3 = a3;
  swift_beginAccess();
  v5 = *&self->interactor[24];
  v6 = *&self->interactor[32];
  sub_10022569C(self->interactor, v5);
  v7 = *(v6 + 40);

  v7(v3, v5, v6);
  swift_endAccess();
}

- (void)setAudiobookTimeRemainingMode:(BOOL)a3
{
  v3 = a3;
  swift_beginAccess();
  v5 = *&self->interactor[24];
  v6 = *&self->interactor[32];
  sub_10022569C(self->interactor, v5);
  v7 = *(v6 + 80);

  v7(v3, v5, v6);
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

- (void)setIsScrubbing:(BOOL)a3
{
  v3 = a3;
  swift_beginAccess();
  v5 = *&self->interactor[24];
  v6 = *&self->interactor[32];
  sub_10022569C(self->interactor, v5);
  v7 = *(v6 + 168);

  v7(v3, v5, v6);
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

- (void)setSleepTimerOption:(int64_t)a3
{
  swift_beginAccess();
  v5 = *&self->interactor[24];
  v6 = *&self->interactor[32];
  sub_10022569C(self->interactor, v5);
  v7 = *(v6 + 200);

  v7(a3, v5, v6);
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