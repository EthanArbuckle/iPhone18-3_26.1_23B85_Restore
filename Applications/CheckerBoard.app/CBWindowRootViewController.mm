@interface CBWindowRootViewController
- (CBWindowLike)window;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation CBWindowRootViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CBWindowRootViewController;
  [(CBWindowRootViewController *)&v5 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(CBWindowRootViewController *)self view];
  [view setBackgroundColor:v3];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000239C8;
  v9[3] = &unk_10007E080;
  objc_copyWeak(&v11, &location);
  v7 = completionCopy;
  v10 = v7;
  v8.receiver = self;
  v8.super_class = CBWindowRootViewController;
  [(CBWindowRootViewController *)&v8 dismissViewControllerAnimated:animatedCopy completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (CBWindowLike)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end