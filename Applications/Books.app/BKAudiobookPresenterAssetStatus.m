@interface BKAudiobookPresenterAssetStatus
- (BKAudiobookPresenterAssetStatus)init;
- (void)assetAudiobookStatusTogglePlayPause;
@end

@implementation BKAudiobookPresenterAssetStatus

- (void)assetAudiobookStatusTogglePlayPause
{
  v2 = self;
  sub_10055BF00();
}

- (BKAudiobookPresenterAssetStatus)init
{
  *(&self->super.isa + OBJC_IVAR___BKAudiobookPresenterAssetStatus_assetAudiobookStatusIsPlaying) = 0;
  *(&self->super.isa + OBJC_IVAR___BKAudiobookPresenterAssetStatus_assetAudiobookStatusTrackDuration) = 0;
  *(&self->super.isa + OBJC_IVAR___BKAudiobookPresenterAssetStatus_assetAudiobookStatusTrackProgress) = 0;
  *(&self->super.isa + OBJC_IVAR___BKAudiobookPresenterAssetStatus_assetAudiobookStatusTrackTimeRemaining) = 0;
  *(&self->assetAudiobookStatusIsPlaying + OBJC_IVAR___BKAudiobookPresenterAssetStatus_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for AudiobookNowPlayingPresenterAssetStatus();
  return [(BKAudiobookPresenterAssetStatus *)&v4 init];
}

@end