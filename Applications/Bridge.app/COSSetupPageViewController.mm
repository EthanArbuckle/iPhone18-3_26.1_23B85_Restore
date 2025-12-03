@interface COSSetupPageViewController
- (COSBuddyControllerDelegate)delegate;
- (COSSetupPageViewController)init;
- (id)tapToRadarMetadata;
- (id)titleLabel;
- (void)_endTapToRadarActivity;
- (void)_startTapToRadarActivity;
- (void)openTapToRadar;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  headerView = [(COSSetupPageViewController *)self headerView];
  subviews = [headerView subviews];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100117530;
  v6[3] = &unk_10026C4A8;
  v6[4] = &v7;
  [subviews enumerateObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = COSSetupPageViewController;
  [(COSSetupPageViewController *)&v4 viewDidAppear:appear];
  [(COSSetupPageViewController *)self _startTapToRadarActivity];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = COSSetupPageViewController;
  [(COSSetupPageViewController *)&v4 viewWillDisappear:disappear];
  [(COSSetupPageViewController *)self _endTapToRadarActivity];
}

- (id)tapToRadarMetadata
{
  v2 = [[BPSTTRMetadata alloc] initWithComponent:0];

  return v2;
}

- (void)openTapToRadar
{
  tapToRadarMetadata = [(COSSetupPageViewController *)self tapToRadarMetadata];
  v3 = tapToRadarMetadata;
  if (tapToRadarMetadata)
  {
    [BPSTapToRadarCoordinator openTapToRadarWithInitialMetadata:tapToRadarMetadata];
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
    tapToRadarMetadata = [(COSSetupPageViewController *)self tapToRadarMetadata];

    if (tapToRadarMetadata)
    {
      tapToRadarMetadata2 = [(COSSetupPageViewController *)self tapToRadarMetadata];
      v5 = [BPSTapToRadarCoordinator tapToRadarUserActivityWithInitialMetadata:tapToRadarMetadata2];
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