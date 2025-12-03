@interface COSSOSSettingsKappaSharingViewController
- (void)disableKappaThirdPartyAppForSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation COSSOSSettingsKappaSharingViewController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = COSSOSSettingsKappaSharingViewController;
  [(COSSOSSettingsKappaSharingViewController *)&v12 viewDidLoad];
  crashDetectionThirdPartyDescription = [sub_10004C1B4() crashDetectionThirdPartyDescription];
  [(COSSOSSettingsKappaSharingViewController *)self setTitle:crashDetectionThirdPartyDescription];

  specifier = [(COSSOSSettingsKappaSharingViewController *)self specifier];
  v5 = [specifier propertyForKey:PSValueKey];
  app = self->_app;
  self->_app = v5;

  objc_initWeak(&location, self);
  v7 = sub_10004C1B4();
  v8 = self->_app;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004C294;
  v9[3] = &unk_1002692A0;
  objc_copyWeak(&v10, &location);
  [v7 thirdPartySettingsSpecifiersForRemoteDeviceWithTarget:self forApp:v8 disableAction:"disableKappaThirdPartyAppForSpecifier:" withCompletion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)disableKappaThirdPartyAppForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  objc_initWeak(&location, self);
  v5 = sub_10004C1B4();
  app = self->_app;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004C3F4;
  v7[3] = &unk_100268260;
  objc_copyWeak(&v8, &location);
  [v5 setKappaThirdPartyActive:0 forApp:app forPairedDevice:1 presentConfirmationOnViewController:self completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

@end