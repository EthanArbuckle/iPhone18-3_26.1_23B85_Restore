@interface STTTRDelegate
- (STStorageOtherDetailController)controller;
- (void)enableOptionForTip:(id)a3;
@end

@implementation STTTRDelegate

- (void)enableOptionForTip:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v5 = [WeakRetained otherSize];
  [v5 longLongValue];
  v6 = STFormattedSize();
  v11 = [NSString stringWithFormat:@"[Large System Data]: %@ of System Data", v6];

  v7 = objc_loadWeakRetained(&self->_controller);
  v8 = [v7 detailedText];
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