@interface BKBookSceneMainViewController
- (BKAuxiliarySceneMainFlowController)mainFlowController;
- (id)modalPresentingViewController;
- (id)rootViewController;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKBookSceneMainViewController

- (id)modalPresentingViewController
{
  v2 = [(BKBookSceneMainViewController *)self rootViewController];
  v3 = [v2 presentedViewController];
  objc_opt_class();
  v4 = BUClassAndProtocolCast();

  if (v4)
  {
    v5 = v4;

    v2 = v5;
  }

  return v2;
}

- (BKAuxiliarySceneMainFlowController)mainFlowController
{
  mainFlowController = self->_mainFlowController;
  if (!mainFlowController)
  {
    v4 = objc_alloc_init(BKAuxiliarySceneMainFlowController);
    v5 = self->_mainFlowController;
    self->_mainFlowController = v4;

    [(BKAuxiliarySceneMainFlowController *)self->_mainFlowController setDelegate:self];
    mainFlowController = self->_mainFlowController;
  }

  return mainFlowController;
}

- (id)rootViewController
{
  v2 = self;
  v3 = [(BKBookSceneMainViewController *)v2 parentViewController];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = v4;

      v4 = [(BKBookSceneMainViewController *)v5 parentViewController];

      v2 = v5;
    }

    while (v4);
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011FA68;
  v9[3] = &unk_100A04410;
  v9[4] = self;
  v7 = a4;
  [v7 animateAlongsideTransition:0 completion:v9];
  v8.receiver = self;
  v8.super_class = BKBookSceneMainViewController;
  [(BKBookSceneMainViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

@end