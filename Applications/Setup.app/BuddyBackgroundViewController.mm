@interface BuddyBackgroundViewController
- (BOOL)prefersStatusBarHidden;
- (double)alphaForBuddyBackgroundStyle:(unint64_t)a3;
- (void)dismissModalViewControllerWithTransition:(int)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4;
- (void)setBuddyBackgroundFilterStyle:(unint64_t)a3;
- (void)viewDidLoad;
@end

@implementation BuddyBackgroundViewController

- (void)viewDidLoad
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyBackgroundViewController;
  [(BuddyBackgroundViewController *)&v5 viewDidLoad];
  v2 = [UIVisualEffectView alloc];
  v3 = [UIBlurEffect effectWithStyle:19];
  v4 = [v2 initWithEffect:v3];
  [(BuddyBackgroundViewController *)v7 setView:v4];

  [(BuddyBackgroundViewController *)v7 setBuddyBackgroundFilterStyle:0];
}

- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BuddyBackgroundViewController *)v9 presentedViewController];
    sub_10006AE18(buf, v4);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Preventing dismissal of %@...", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (location)
  {
    (*(location + 2))();
  }

  objc_storeStrong(&location, 0);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BuddyBackgroundViewController *)v9 presentedViewController];
    sub_10006AE18(buf, v4);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Preventing dismissal of %@...", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (location)
  {
    (*(location + 2))();
  }

  objc_storeStrong(&location, 0);
}

- (void)dismissModalViewControllerWithTransition:(int)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(BuddyBackgroundViewController *)v7 presentedViewController];
    sub_10006AE18(buf, v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Preventing dismissal of %@...", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(BuddyBackgroundViewController *)self presentedViewController:a2];
  v3 = [v2 prefersStatusBarHidden];

  return v3 & 1;
}

- (void)setBuddyBackgroundFilterStyle:(unint64_t)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  oslog = _BYLoggingFacility();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, v11);
    _os_log_impl(&_mh_execute_header, oslog, v9, "Setting background style: %lu", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10020E698;
  v7 = &unk_10032B718;
  v8[0] = v13;
  v8[1] = v11;
  [UIView animateWithDuration:&v3 animations:0.5];
  objc_storeStrong(v8, 0);
}

- (double)alphaForBuddyBackgroundStyle:(unint64_t)a3
{
  if (!a3)
  {
    return 0.0;
  }

  if (a3 == 1)
  {
    return 0.7;
  }

  return v4;
}

@end