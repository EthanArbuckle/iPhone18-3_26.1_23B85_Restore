@interface ASReportAConcernViewController
- (ASReportAConcernViewController)initWithConfiguration:(id)configuration;
@end

@implementation ASReportAConcernViewController

- (ASReportAConcernViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_storeStrong(&self->_configuration, configuration);
  v6 = [[ASReportAConcernReasonViewController alloc] initWithConfiguration:configurationCopy];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004728;
  v10[3] = &unk_100861108;
  objc_copyWeak(&v11, &location);
  [(ASReportAConcernReasonViewController *)v6 setCompletion:v10];
  v9.receiver = self;
  v9.super_class = ASReportAConcernViewController;
  v7 = [(ASReportAConcernViewController *)&v9 initWithRootViewController:v6];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

@end