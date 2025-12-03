@interface RAPAcknowledgementOptions
+ (id)defaultOptions;
- (RAPAcknowledgementOptions)init;
- (id)_defaultMessage;
- (id)_defaultTitle;
@end

@implementation RAPAcknowledgementOptions

- (id)_defaultMessage
{
  v2 = +[UserProfileReportHistoryManager sharedInstance];
  inChina = [v2 inChina];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (inChina)
  {
    v6 = @"You’re making Maps better for everyone!";
  }

  else
  {
    v6 = @"You’re making Maps better for everyone! We’ll let you know when we’ve reviewed your report.";
  }

  v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

  return v7;
}

- (id)_defaultTitle
{
  v2 = +[UserInformationManager sharedInstance];
  loggedIn = [v2 loggedIn];

  v4 = +[NSBundle mainBundle];
  if (loggedIn)
  {
    v5 = [v4 localizedStringForKey:@"[RAP] Title for the Thank You screen value:logged in" table:{@"localized string not found", 0}];
    v6 = +[UserInformationManager sharedInstance];
    userGivenName = [v6 userGivenName];
    v8 = [NSString stringWithFormat:v5, userGivenName];
  }

  else
  {
    v8 = [v4 localizedStringForKey:@"[RAP] Title for the Thank You screen value:not logged in" table:{@"localized string not found", 0}];
  }

  return v8;
}

- (RAPAcknowledgementOptions)init
{
  v10.receiver = self;
  v10.super_class = RAPAcknowledgementOptions;
  v2 = [(RAPAcknowledgementOptions *)&v10 init];
  v3 = v2;
  if (v2)
  {
    _defaultTitle = [(RAPAcknowledgementOptions *)v2 _defaultTitle];
    title = v3->_title;
    v3->_title = _defaultTitle;

    _defaultMessage = [(RAPAcknowledgementOptions *)v3 _defaultMessage];
    message = v3->_message;
    v3->_message = _defaultMessage;

    primaryButtonTitle = v3->_primaryButtonTitle;
    v3->_primaryButtonTitle = &stru_1016631F0;
  }

  return v3;
}

+ (id)defaultOptions
{
  v2 = objc_alloc_init(RAPAcknowledgementOptions);

  return v2;
}

@end