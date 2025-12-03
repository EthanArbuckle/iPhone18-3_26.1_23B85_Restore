@interface MailNavigationController
- (BOOL)_shouldCrossFadeNavigationBar;
- (BOOL)_willPerformCustomNavigationTransitionForPop;
- (BOOL)_willPerformCustomNavigationTransitionForPush;
- (BOOL)shouldAutorotate;
- (MailNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (MailNavigationController)initWithRootViewController:(id)controller;
- (void)_commonInit;
- (void)doubleTappedNavbar:(id)navbar;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation MailNavigationController

- (void)_commonInit
{
  v4 = +[UIColor clearColor];
  view = [(MailNavigationController *)self view];
  [view setBackgroundColor:v4];

  view2 = [(MailNavigationController *)self view];
  [view2 setOpaque:0];
}

- (MailNavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = MailNavigationController;
  v5 = [(MailNavigationController *)&v8 initWithRootViewController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    [(MailNavigationController *)v5 _commonInit];
  }

  return v6;
}

- (MailNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = MailNavigationController;
  v4 = [(MailNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
  v5 = v4;
  if (v4)
  {
    [(MailNavigationController *)v4 _commonInit];
  }

  return v5;
}

- (BOOL)shouldAutorotate
{
  topViewController = [(MailNavigationController *)self topViewController];
  shouldAutorotate = [topViewController shouldAutorotate];

  return shouldAutorotate;
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = MailNavigationController;
  [(MailNavigationController *)&v10 viewDidAppear:appear];
  v4 = +[NSUserDefaults em_userDefaults];
  v5 = [v4 BOOLForKey:@"EnableDoubleTapToShowSpec"];

  if (v5)
  {
    if (!self->_navbarDoubleTapRecognizer)
    {
      v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"doubleTappedNavbar:"];
      navbarDoubleTapRecognizer = self->_navbarDoubleTapRecognizer;
      self->_navbarDoubleTapRecognizer = v6;

      [(UITapGestureRecognizer *)self->_navbarDoubleTapRecognizer setNumberOfTapsRequired:2];
    }

    navigationBar = [(MailNavigationController *)self navigationBar];
    [navigationBar addGestureRecognizer:self->_navbarDoubleTapRecognizer];
  }

  else
  {
    navigationBar2 = [(MailNavigationController *)self navigationBar];
    [navigationBar2 removeGestureRecognizer:self->_navbarDoubleTapRecognizer];

    navigationBar = self->_navbarDoubleTapRecognizer;
    self->_navbarDoubleTapRecognizer = 0;
  }
}

- (BOOL)_willPerformCustomNavigationTransitionForPop
{
  v8.receiver = self;
  v8.super_class = MailNavigationController;
  _willPerformCustomNavigationTransitionForPop = [(MailNavigationController *)&v8 _willPerformCustomNavigationTransitionForPop];
  topViewController = [(MailNavigationController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    topViewController2 = [(MailNavigationController *)self topViewController];
    _willPerformCustomNavigationTransitionForPop = [topViewController2 _willPerformCustomNavigationTransitionForPop];
  }

  return _willPerformCustomNavigationTransitionForPop;
}

- (BOOL)_willPerformCustomNavigationTransitionForPush
{
  v8.receiver = self;
  v8.super_class = MailNavigationController;
  _willPerformCustomNavigationTransitionForPush = [(MailNavigationController *)&v8 _willPerformCustomNavigationTransitionForPush];
  topViewController = [(MailNavigationController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    topViewController2 = [(MailNavigationController *)self topViewController];
    _willPerformCustomNavigationTransitionForPush = [topViewController2 _willPerformCustomNavigationTransitionForPush];
  }

  return _willPerformCustomNavigationTransitionForPush;
}

- (BOOL)_shouldCrossFadeNavigationBar
{
  v8.receiver = self;
  v8.super_class = MailNavigationController;
  _shouldCrossFadeNavigationBar = [(MailNavigationController *)&v8 _shouldCrossFadeNavigationBar];
  topViewController = [(MailNavigationController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    topViewController2 = [(MailNavigationController *)self topViewController];
    _shouldCrossFadeNavigationBar = [topViewController2 _shouldCrossFadeNavigationBar];
  }

  return _shouldCrossFadeNavigationBar;
}

- (void)doubleTappedNavbar:(id)navbar
{
  v4 = objc_alloc_init(UIImagePickerController);
  [v4 setSourceType:0];
  [v4 setDelegate:self];
  [v4 setAllowsEditing:0];
  [(MailNavigationController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100121DDC;
  v6[3] = &unk_10064C660;
  infoCopy = info;
  selfCopy = self;
  v5 = infoCopy;
  [(MailNavigationController *)self dismissViewControllerAnimated:1 completion:v6];
}

@end