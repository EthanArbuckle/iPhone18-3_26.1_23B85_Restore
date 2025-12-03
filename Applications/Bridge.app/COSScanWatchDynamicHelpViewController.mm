@interface COSScanWatchDynamicHelpViewController
- (COSScanWatchDynamicHelpDelegate)scanDelegate;
- (void)setState:(int64_t)state animated:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation COSScanWatchDynamicHelpViewController

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = COSScanWatchDynamicHelpViewController;
  [(COSScanWatchDynamicHelpViewController *)&v30 viewDidLoad];
  v3 = objc_alloc_init(COSAppleWatchPairingDiscoveryLayingFlatViewController);
  layingFlatController = self->_layingFlatController;
  self->_layingFlatController = v3;

  view = [(COSScanWatchDynamicHelpViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self->_layingFlatController view];
  [view2 setFrame:{v7, v9, v11, v13}];

  view3 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self->_layingFlatController view];
  [view3 setAutoresizingMask:5];

  v16 = objc_alloc_init(COSAppleWatchPairingDiscoveryNoWatchViewController);
  noWatchController = self->_noWatchController;
  self->_noWatchController = v16;

  view4 = [(COSScanWatchDynamicHelpViewController *)self view];
  [view4 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  view5 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self->_noWatchController view];
  [view5 setFrame:{v20, v22, v24, v26 + -50.0}];

  view6 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self->_noWatchController view];
  [view6 setAutoresizingMask:5];

  if (self->_discoveredWatchNearby)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  self->_state = v29;
  [COSScanWatchDynamicHelpViewController setState:"setState:animated:" animated:?];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = COSScanWatchDynamicHelpViewController;
  [(COSScanWatchDynamicHelpViewController *)&v5 viewDidDisappear:disappear];
  [PBBridgeCAReporter recordTransitionedDynamicHelpViewFromType:self->_state toType:3];
  WeakRetained = objc_loadWeakRetained(&self->_scanDelegate);
  [WeakRetained dynamicHelpControllerDidDisappear:self];
}

- (void)setState:(int64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E5188;
  v11[3] = &unk_100268220;
  v11[4] = self;
  v11[5] = state;
  v7 = objc_retainBlock(v11);
  [PBBridgeCAReporter recordTransitionedDynamicHelpViewFromType:self->_state toType:state];
  if (animatedCopy)
  {
    view = [(COSScanWatchDynamicHelpViewController *)self view];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E52E4;
    v9[3] = &unk_100269120;
    v10 = v7;
    [UIView transitionWithView:view duration:5242880 options:v9 animations:&stru_10026B8F0 completion:0.45];
  }

  else
  {
    (v7[2])(v7);
  }

  self->_state = state;
}

- (COSScanWatchDynamicHelpDelegate)scanDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scanDelegate);

  return WeakRetained;
}

@end