@interface BuddyBackgroundViewController
- (BOOL)prefersStatusBarHidden;
- (double)alphaForBuddyBackgroundStyle:(unint64_t)style;
- (void)dismissModalViewControllerWithTransition:(int)transition;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion;
- (void)setBuddyBackgroundFilterStyle:(unint64_t)style;
- (void)viewDidLoad;
@end

@implementation BuddyBackgroundViewController

- (void)viewDidLoad
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyBackgroundViewController;
  [(BuddyBackgroundViewController *)&v5 viewDidLoad];
  v2 = [UIVisualEffectView alloc];
  v3 = [UIBlurEffect effectWithStyle:19];
  v4 = [v2 initWithEffect:v3];
  [(BuddyBackgroundViewController *)selfCopy setView:v4];

  [(BuddyBackgroundViewController *)selfCopy setBuddyBackgroundFilterStyle:0];
}

- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion
{
  selfCopy = self;
  v8 = a2;
  transitionCopy = transition;
  location = 0;
  objc_storeStrong(&location, completion);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    presentedViewController = [(BuddyBackgroundViewController *)selfCopy presentedViewController];
    sub_10006AE18(buf, presentedViewController);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Preventing dismissal of %@...", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (location)
  {
    (*(location + 2))();
  }

  objc_storeStrong(&location, 0);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  v8 = a2;
  animatedCopy = animated;
  location = 0;
  objc_storeStrong(&location, completion);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    presentedViewController = [(BuddyBackgroundViewController *)selfCopy presentedViewController];
    sub_10006AE18(buf, presentedViewController);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Preventing dismissal of %@...", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (location)
  {
    (*(location + 2))();
  }

  objc_storeStrong(&location, 0);
}

- (void)dismissModalViewControllerWithTransition:(int)transition
{
  selfCopy = self;
  v6 = a2;
  transitionCopy = transition;
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    presentedViewController = [(BuddyBackgroundViewController *)selfCopy presentedViewController];
    sub_10006AE18(buf, presentedViewController);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Preventing dismissal of %@...", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(BuddyBackgroundViewController *)self presentedViewController:a2];
  prefersStatusBarHidden = [v2 prefersStatusBarHidden];

  return prefersStatusBarHidden & 1;
}

- (void)setBuddyBackgroundFilterStyle:(unint64_t)style
{
  selfCopy = self;
  v12 = a2;
  styleCopy = style;
  oslog = _BYLoggingFacility();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, styleCopy);
    _os_log_impl(&_mh_execute_header, oslog, v9, "Setting background style: %lu", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10020E698;
  v7 = &unk_10032B718;
  v8[0] = selfCopy;
  v8[1] = styleCopy;
  [UIView animateWithDuration:&v3 animations:0.5];
  objc_storeStrong(v8, 0);
}

- (double)alphaForBuddyBackgroundStyle:(unint64_t)style
{
  if (!style)
  {
    return 0.0;
  }

  if (style == 1)
  {
    return 0.7;
  }

  return v4;
}

@end