@interface IOSCardTestCustomContainerContext
- (id)customContainerViewController;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)prepareToEnterStackInChromeViewController:(id)a3;
@end

@implementation IOSCardTestCustomContainerContext

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007DBB14;
  v4[3] = &unk_101661738;
  v4[4] = self;
  [a4 addCompletion:v4];
}

- (void)prepareToEnterStackInChromeViewController:(id)a3
{
  v7 = a3;
  v4 = [(IOSCardTestCustomContainerContext *)self customContainerViewController];
  [v4 setChromeViewController:v7];

  v5 = (_UISolariumEnabled() & 1) == 0 && sub_10000FA08(v7) == 5;
  v6 = [(IOSCardTestCustomContainerContext *)self customContainerViewController];
  [v6 setStackOnOppositeSide:v5];
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