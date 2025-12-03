@interface ARPAcknowledgementOptions
+ (id)defaultOptions;
- (ARPAcknowledgementOptions)init;
- (id)_defaultMessage;
- (id)_defaultTitle;
@end

@implementation ARPAcknowledgementOptions

- (id)_defaultMessage
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"You’re making Maps better for everyone!" value:@"localized string not found" table:0];

  return v3;
}

- (id)_defaultTitle
{
  v2 = +[UserInformationManager sharedInstance];
  loggedIn = [v2 loggedIn];

  v4 = +[NSBundle mainBundle];
  if (loggedIn)
  {
    v5 = [v4 localizedStringForKey:@"[ARP] Title for the Thank You screen value:logged in" table:{@"localized string not found", 0}];
    v6 = +[UserInformationManager sharedInstance];
    userGivenName = [v6 userGivenName];
    v8 = [NSString stringWithFormat:v5, userGivenName];
  }

  else
  {
    v8 = [v4 localizedStringForKey:@"[ARP] Title for the Thank You screen value:not logged in" table:{@"localized string not found", 0}];
  }

  return v8;
}

- (ARPAcknowledgementOptions)init
{
  v10.receiver = self;
  v10.super_class = ARPAcknowledgementOptions;
  v2 = [(ARPAcknowledgementOptions *)&v10 init];
  v3 = v2;
  if (v2)
  {
    _defaultTitle = [(ARPAcknowledgementOptions *)v2 _defaultTitle];
    title = v3->_title;
    v3->_title = _defaultTitle;

    _defaultMessage = [(ARPAcknowledgementOptions *)v3 _defaultMessage];
    message = v3->_message;
    v3->_message = _defaultMessage;

    primaryButtonTitle = v3->_primaryButtonTitle;
    v3->_primaryButtonTitle = &stru_1016631F0;
  }

  return v3;
}

+ (id)defaultOptions
{
  v2 = objc_alloc_init(ARPAcknowledgementOptions);

  return v2;
}

@end