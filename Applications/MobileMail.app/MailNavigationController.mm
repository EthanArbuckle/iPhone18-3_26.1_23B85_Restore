@interface MailNavigationController
- (BOOL)_shouldCrossFadeNavigationBar;
- (BOOL)_willPerformCustomNavigationTransitionForPop;
- (BOOL)_willPerformCustomNavigationTransitionForPush;
- (BOOL)shouldAutorotate;
- (MailNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (MailNavigationController)initWithRootViewController:(id)a3;
- (void)_commonInit;
- (void)doubleTappedNavbar:(id)a3;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation MailNavigationController

- (void)_commonInit
{
  v4 = +[UIColor clearColor];
  v3 = [(MailNavigationController *)self view];
  [v3 setBackgroundColor:v4];

  v5 = [(MailNavigationController *)self view];
  [v5 setOpaque:0];
}

- (MailNavigationController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MailNavigationController;
  v5 = [(MailNavigationController *)&v8 initWithRootViewController:v4];
  v6 = v5;
  if (v5)
  {
    [(MailNavigationController *)v5 _commonInit];
  }

  return v6;
}

- (MailNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = MailNavigationController;
  v4 = [(MailNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
  v5 = v4;
  if (v4)
  {
    [(MailNavigationController *)v4 _commonInit];
  }

  return v5;
}

- (BOOL)shouldAutorotate
{
  v2 = [(MailNavigationController *)self topViewController];
  v3 = [v2 shouldAutorotate];

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = MailNavigationController;
  [(MailNavigationController *)&v10 viewDidAppear:a3];
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

    v8 = [(MailNavigationController *)self navigationBar];
    [v8 addGestureRecognizer:self->_navbarDoubleTapRecognizer];
  }

  else
  {
    v9 = [(MailNavigationController *)self navigationBar];
    [v9 removeGestureRecognizer:self->_navbarDoubleTapRecognizer];

    v8 = self->_navbarDoubleTapRecognizer;
    self->_navbarDoubleTapRecognizer = 0;
  }
}

- (BOOL)_willPerformCustomNavigationTransitionForPop
{
  v8.receiver = self;
  v8.super_class = MailNavigationController;
  v3 = [(MailNavigationController *)&v8 _willPerformCustomNavigationTransitionForPop];
  v4 = [(MailNavigationController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(MailNavigationController *)self topViewController];
    v3 = [v6 _willPerformCustomNavigationTransitionForPop];
  }

  return v3;
}

- (BOOL)_willPerformCustomNavigationTransitionForPush
{
  v8.receiver = self;
  v8.super_class = MailNavigationController;
  v3 = [(MailNavigationController *)&v8 _willPerformCustomNavigationTransitionForPush];
  v4 = [(MailNavigationController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(MailNavigationController *)self topViewController];
    v3 = [v6 _willPerformCustomNavigationTransitionForPush];
  }

  return v3;
}

- (BOOL)_shouldCrossFadeNavigationBar
{
  v8.receiver = self;
  v8.super_class = MailNavigationController;
  v3 = [(MailNavigationController *)&v8 _shouldCrossFadeNavigationBar];
  v4 = [(MailNavigationController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(MailNavigationController *)self topViewController];
    v3 = [v6 _shouldCrossFadeNavigationBar];
  }

  return v3;
}

- (void)doubleTappedNavbar:(id)a3
{
  v4 = objc_alloc_init(UIImagePickerController);
  [v4 setSourceType:0];
  [v4 setDelegate:self];
  [v4 setAllowsEditing:0];
  [(MailNavigationController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100121DDC;
  v6[3] = &unk_10064C660;
  v7 = a4;
  v8 = self;
  v5 = v7;
  [(MailNavigationController *)self dismissViewControllerAnimated:1 completion:v6];
}

@end