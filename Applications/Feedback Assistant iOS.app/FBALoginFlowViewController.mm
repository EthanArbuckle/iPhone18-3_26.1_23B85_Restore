@interface FBALoginFlowViewController
- (void)prepareForSegue:(id)segue sender:(id)sender;
@end

@implementation FBALoginFlowViewController

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  segueCopy = segue;
  senderCopy = sender;
  identifier = [segueCopy identifier];
  v9 = [identifier isEqualToString:@"FBAStartupLicensePresentation"];

  if (v9)
  {
    destinationViewController = [segueCopy destinationViewController];
    topViewController = [destinationViewController topViewController];

    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002CDDC;
    v12[3] = &unk_1000DE618;
    objc_copyWeak(&v13, &location);
    v12[4] = self;
    [topViewController setCompletion:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

@end