@interface COSSetupPageViewController
- (COSBuddyControllerDelegate)delegate;
- (COSSetupPageViewController)init;
- (id)tapToRadarMetadata;
- (id)titleLabel;
- (void)_endTapToRadarActivity;
- (void)_startTapToRadarActivity;
- (void)openTapToRadar;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation COSSetupPageViewController

- (COSSetupPageViewController)init
{
  v3.receiver = self;
  v3.super_class = COSSetupPageViewController;
  return [(COSSetupPageViewController *)&v3 initWithTitle:&stru_10026E598 detailText:0 symbolName:0 adoptTableViewScrollView:0];
}

- (id)titleLabel
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100008C7C;
  v11 = sub_100009D30;
  v12 = 0;
  v2 = [(COSSetupPageViewController *)self headerView];
  v3 = [v2 subviews];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100117530;
  v6[3] = &unk_10026C4A8;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSSetupPageViewController;
  [(COSSetupPageViewController *)&v4 viewDidAppear:a3];
  [(COSSetupPageViewController *)self _startTapToRadarActivity];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSSetupPageViewController;
  [(COSSetupPageViewController *)&v4 viewWillDisappear:a3];
  [(COSSetupPageViewController *)self _endTapToRadarActivity];
}

- (id)tapToRadarMetadata
{
  v2 = [[BPSTTRMetadata alloc] initWithComponent:0];

  return v2;
}

- (void)openTapToRadar
{
  v2 = [(COSSetupPageViewController *)self tapToRadarMetadata];
  v3 = v2;
  if (v2)
  {
    [BPSTapToRadarCoordinator openTapToRadarWithInitialMetadata:v2];
  }

  else
  {
    NSLog(@"Error!! Could not retrieve metadata for tap to radar!");
  }
}

- (void)_startTapToRadarActivity
{
  if (PBIsInternalInstall())
  {
    v3 = [(COSSetupPageViewController *)self tapToRadarMetadata];

    if (v3)
    {
      v4 = [(COSSetupPageViewController *)self tapToRadarMetadata];
      v5 = [BPSTapToRadarCoordinator tapToRadarUserActivityWithInitialMetadata:v4];
      tapToRadarActivity = self->_tapToRadarActivity;
      self->_tapToRadarActivity = v5;

      v7 = self->_tapToRadarActivity;
      if (v7)
      {

        [(NSUserActivity *)v7 becomeCurrent];
      }

      else
      {
        NSLog(@"Error: We're eligible to raise a TTR NSUserActivity but it could not be generated, so we're aborting.");
      }
    }
  }
}

- (void)_endTapToRadarActivity
{
  tapToRadarActivity = self->_tapToRadarActivity;
  if (tapToRadarActivity)
  {
    [(NSUserActivity *)tapToRadarActivity invalidate];
    v4 = self->_tapToRadarActivity;
    self->_tapToRadarActivity = 0;
  }
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end