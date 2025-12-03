@interface BKBookSceneMainViewController
- (BKAuxiliarySceneMainFlowController)mainFlowController;
- (id)modalPresentingViewController;
- (id)rootViewController;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKBookSceneMainViewController

- (id)modalPresentingViewController
{
  rootViewController = [(BKBookSceneMainViewController *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  objc_opt_class();
  v4 = BUClassAndProtocolCast();

  if (v4)
  {
    v5 = v4;

    rootViewController = v5;
  }

  return rootViewController;
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
  selfCopy = self;
  parentViewController = [(BKBookSceneMainViewController *)selfCopy parentViewController];
  if (parentViewController)
  {
    parentViewController2 = parentViewController;
    do
    {
      v5 = parentViewController2;

      parentViewController2 = [(BKBookSceneMainViewController *)v5 parentViewController];

      selfCopy = v5;
    }

    while (parentViewController2);
  }

  else
  {
    v5 = selfCopy;
  }

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011FA68;
  v9[3] = &unk_100A04410;
  v9[4] = self;
  coordinatorCopy = coordinator;
  [coordinatorCopy animateAlongsideTransition:0 completion:v9];
  v8.receiver = self;
  v8.super_class = BKBookSceneMainViewController;
  [(BKBookSceneMainViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

@end