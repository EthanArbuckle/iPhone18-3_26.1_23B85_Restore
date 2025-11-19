@interface BKDimmedCoverDownloadProgressView
- (BKDimmedCoverDownloadProgressViewDelegate)delegate;
- (void)setAsset:(id)a3;
- (void)stopDownloadButtonPressed;
@end

@implementation BKDimmedCoverDownloadProgressView

- (BKDimmedCoverDownloadProgressViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1002B3DDC(a3);
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
      v6 = self;
      v7 = v2;
      [v5 didTapStopDownloadButtonWithAsset:v7];

      swift_unknownObjectRelease();
    }
  }
}

@end