@interface IOSCardTestCustomContainerContext
- (id)customContainerViewController;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)prepareToEnterStackInChromeViewController:(id)controller;
@end

@implementation IOSCardTestCustomContainerContext

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007DBB14;
  v4[3] = &unk_101661738;
  v4[4] = self;
  [animation addCompletion:v4];
}

- (void)prepareToEnterStackInChromeViewController:(id)controller
{
  controllerCopy = controller;
  customContainerViewController = [(IOSCardTestCustomContainerContext *)self customContainerViewController];
  [customContainerViewController setChromeViewController:controllerCopy];

  v5 = (_UISolariumEnabled() & 1) == 0 && sub_10000FA08(controllerCopy) == 5;
  customContainerViewController2 = [(IOSCardTestCustomContainerContext *)self customContainerViewController];
  [customContainerViewController2 setStackOnOppositeSide:v5];
}

- (id)customContainerViewController
{
  containerViewController = self->_containerViewController;
  if (!containerViewController)
  {
    v4 = objc_alloc_init(OverlayContainerViewController);
    v5 = self->_containerViewController;
    self->_containerViewController = v4;

    [(ContainerViewController *)self->_containerViewController setChromeContext:self];
    containerViewController = self->_containerViewController;
  }

  return containerViewController;
}

@end