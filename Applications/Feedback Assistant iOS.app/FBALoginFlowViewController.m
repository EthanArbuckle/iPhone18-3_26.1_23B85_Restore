@interface FBALoginFlowViewController
- (void)prepareForSegue:(id)a3 sender:(id)a4;
@end

@implementation FBALoginFlowViewController

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v8 isEqualToString:@"FBAStartupLicensePresentation"];

  if (v9)
  {
    v10 = [v6 destinationViewController];
    v11 = [v10 topViewController];

    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002CDDC;
    v12[3] = &unk_1000DE618;
    objc_copyWeak(&v13, &location);
    v12[4] = self;
    [v11 setCompletion:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

@end