@interface COSTinkerWiFiPickerOptinViewContoller
+ (BOOL)controllerNeedsToRun;
- (COSTinkerWiFiPickerOptinViewContoller)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)alternateButtonPressed:(id)pressed;
- (void)okayButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation COSTinkerWiFiPickerOptinViewContoller

+ (BOOL)controllerNeedsToRun
{
  bridgeController = [UIApp bridgeController];
  currentWiFiNetworkName = [bridgeController currentWiFiNetworkName];

  return currentWiFiNetworkName != 0;
}

- (COSTinkerWiFiPickerOptinViewContoller)init
{
  v5.receiver = self;
  v5.super_class = COSTinkerWiFiPickerOptinViewContoller;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSTinkerWiFiPickerOptinViewContoller *)v2 setStyle:74];
  }

  return v3;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = SFLocalizableWAPIStringKeyForKey();
  v4 = [v2 localizedStringForKey:v3 value:&stru_10026E598 table:@"Localizable-tinker"];
  setupController = [UIApp setupController];
  tinkerUserName = [setupController tinkerUserName];
  localizedCapitalizedString = [tinkerUserName localizedCapitalizedString];
  v8 = [NSString stringWithFormat:v4, localizedCapitalizedString];

  return v8;
}

- (id)detailString
{
  v2 = UIApp;
  bridgeController = [v2 bridgeController];
  currentWiFiNetworkName = [bridgeController currentWiFiNetworkName];

  setupController = [v2 setupController];

  tinkerUserName = [setupController tinkerUserName];
  localizedCapitalizedString = [tinkerUserName localizedCapitalizedString];

  v8 = +[NSBundle mainBundle];
  v9 = SFLocalizableWAPIStringKeyForKey();
  v10 = [v8 localizedStringForKey:v9 value:&stru_10026E598 table:@"Localizable-tinker"];
  v11 = [NSString stringWithFormat:v10, currentWiFiNetworkName, localizedCapitalizedString, localizedCapitalizedString];

  return v11;
}

- (void)suggestedButtonPressed:(id)pressed
{
  v4 = +[UIApplication sharedApplication];
  bridgeController = [v4 bridgeController];
  [bridgeController sendAllTinkerWirelessCredentials:0];

  delegate = [(COSTinkerWiFiPickerOptinViewContoller *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)alternateButtonPressed:(id)pressed
{
  delegate = [(COSTinkerWiFiPickerOptinViewContoller *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)okayButtonPressed:(id)pressed
{
  delegate = [(COSTinkerWiFiPickerOptinViewContoller *)self delegate];
  [delegate buddyControllerDone:self];
}

- (id)suggestedButtonTitle
{
  bridgeController = [UIApp bridgeController];
  currentWiFiNetworkName = [bridgeController currentWiFiNetworkName];

  if ([currentWiFiNetworkName length])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"WIFI_TINKER_NAMED_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
    [NSString stringWithFormat:v5, currentWiFiNetworkName];
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v5 = SFLocalizableWAPIStringKeyForKey();
    [v4 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable-tinker"];
  }
  v6 = ;

  return v6;
}

- (id)okayButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WIFI_TINKER_SHARE_SKIP" value:&stru_10026E598 table:@"Localizable-tinker"];

  return v3;
}

@end