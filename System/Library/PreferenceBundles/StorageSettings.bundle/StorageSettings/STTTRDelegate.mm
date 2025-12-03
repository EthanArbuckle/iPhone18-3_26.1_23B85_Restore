@interface STTTRDelegate
- (STStorageOtherDetailController)controller;
- (void)enableOptionForTip:(id)tip;
@end

@implementation STTTRDelegate

- (void)enableOptionForTip:(id)tip
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  otherSize = [WeakRetained otherSize];
  [otherSize longLongValue];
  v6 = STFormattedSize();
  v11 = [NSString stringWithFormat:@"[Large System Data]: %@ of System Data", v6];

  v7 = objc_loadWeakRetained(&self->_controller);
  detailedText = [v7 detailedText];
  v9 = STTapToRadarURLWithTitleAndContent();

  v10 = +[LSApplicationWorkspace defaultWorkspace];
  [v10 openURL:v9 configuration:0 completionHandler:0];
}

- (STStorageOtherDetailController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end