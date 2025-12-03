@interface BKDimmedCoverDownloadProgressView
- (BKDimmedCoverDownloadProgressViewDelegate)delegate;
- (void)setAsset:(id)asset;
- (void)stopDownloadButtonPressed;
@end

@implementation BKDimmedCoverDownloadProgressView

- (BKDimmedCoverDownloadProgressViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  selfCopy = self;
  sub_1002B3DDC(asset);
}

- (void)stopDownloadButtonPressed
{
  v2 = *(self + OBJC_IVAR___BKDimmedCoverDownloadProgressView_asset);
  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      selfCopy = self;
      v7 = v2;
      [v5 didTapStopDownloadButtonWithAsset:v7];

      swift_unknownObjectRelease();
    }
  }
}

@end