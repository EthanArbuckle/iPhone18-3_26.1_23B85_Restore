@interface COSScanWatchDynamicHelpViewController
- (COSScanWatchDynamicHelpDelegate)scanDelegate;
- (void)setState:(int64_t)a3 animated:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
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

  v5 = [(COSScanWatchDynamicHelpViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self->_layingFlatController view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self->_layingFlatController view];
  [v15 setAutoresizingMask:5];

  v16 = objc_alloc_init(COSAppleWatchPairingDiscoveryNoWatchViewController);
  noWatchController = self->_noWatchController;
  self->_noWatchController = v16;

  v18 = [(COSScanWatchDynamicHelpViewController *)self view];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self->_noWatchController view];
  [v27 setFrame:{v20, v22, v24, v26 + -50.0}];

  v28 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self->_noWatchController view];
  [v28 setAutoresizingMask:5];

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

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = COSScanWatchDynamicHelpViewController;
  [(COSScanWatchDynamicHelpViewController *)&v5 viewDidDisappear:a3];
  [PBBridgeCAReporter recordTransitionedDynamicHelpViewFromType:self->_state toType:3];
  WeakRetained = objc_loadWeakRetained(&self->_scanDelegate);
  [WeakRetained dynamicHelpControllerDidDisappear:self];
}

- (void)setState:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E5188;
  v11[3] = &unk_100268220;
  v11[4] = self;
  v11[5] = a3;
  v7 = objc_retainBlock(v11);
  [PBBridgeCAReporter recordTransitionedDynamicHelpViewFromType:self->_state toType:a3];
  if (v4)
  {
    v8 = [(COSScanWatchDynamicHelpViewController *)self view];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E52E4;
    v9[3] = &unk_100269120;
    v10 = v7;
    [UIView transitionWithView:v8 duration:5242880 options:v9 animations:&stru_10026B8F0 completion:0.45];
  }

  else
  {
    (v7[2])(v7);
  }

  self->_state = a3;
}

- (COSScanWatchDynamicHelpDelegate)scanDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scanDelegate);

  return WeakRetained;
}

@end