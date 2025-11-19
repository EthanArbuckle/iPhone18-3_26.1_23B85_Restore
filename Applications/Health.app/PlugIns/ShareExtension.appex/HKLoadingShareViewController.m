@interface HKLoadingShareViewController
- (void)viewDidLoad;
@end

@implementation HKLoadingShareViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HKLoadingShareViewController;
  [(HKLoadingShareViewController *)&v7 viewDidLoad];
  v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  activityIndicatorView = self->_activityIndicatorView;
  self->_activityIndicatorView = v3;

  [(UIActivityIndicatorView *)self->_activityIndicatorView setHidesWhenStopped:1];
  [(HKLoadingShareViewController *)self setView:self->_activityIndicatorView];
  v5 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002ABC;
  block[3] = &unk_100008278;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

@end