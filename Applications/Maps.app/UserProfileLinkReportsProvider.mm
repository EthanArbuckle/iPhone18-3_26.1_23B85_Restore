@interface UserProfileLinkReportsProvider
+ (id)sharedInstance;
- (GEOObserverHashTable)observers;
- (UserProfileLinkReportsProvider)init;
- (id)createUserProfileLink;
- (id)retrieveSubtitleText;
- (void)_updateLinkAndNotifyObservers:(BOOL)observers;
@end

@implementation UserProfileLinkReportsProvider

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___UserProfileLinkDataProvidingObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)_updateLinkAndNotifyObservers:(BOOL)observers
{
  observersCopy = observers;
  retrieveSubtitleText = [(UserProfileLinkReportsProvider *)self retrieveSubtitleText];
  subtitle = [(UserProfileLink *)self->_newLink subtitle];
  v6 = [subtitle isEqualToString:retrieveSubtitleText];

  if ((v6 & 1) == 0)
  {
    [(UserProfileLink *)self->_newLink setSubtitle:retrieveSubtitleText];
    if (observersCopy)
    {
      [(GEOObserverHashTable *)self->_observers dataDidUpdateForUserProfileLinkType:[(UserProfileLinkReportsProvider *)self userProfileLinkType]];
    }
  }
}

- (id)retrieveSubtitleText
{
  v2 = +[UserInformationManager sharedInstance];
  loggedIn = [v2 loggedIn];

  if (loggedIn && (+[UserProfileReportHistoryManager sharedInstance](UserProfileReportHistoryManager, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), [v4 rapHistory], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v6))
  {
    v7 = [NSString localizedStringWithFormat:@"%ld", v6];
  }

  else
  {
    v7 = &stru_1016631F0;
  }

  return v7;
}

- (id)createUserProfileLink
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[User Profile Reports] Reports" value:@"localized string not found" table:0];

  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  v7 = [UIFont fontWithDescriptor:v6 size:15.0];

  v8 = [UIImage _systemImageNamed:@"exclamationmark.bubble.fill"];
  v9 = [UIImageSymbolConfiguration configurationWithFont:v7];
  v10 = [v8 imageWithConfiguration:v9];

  v11 = [[UserProfileLink alloc] initWithTitle:v4 icon:v10];
  newLink = self->_newLink;
  self->_newLink = v11;

  [(UserProfileLink *)self->_newLink setUserProfileLinkType:[(UserProfileLinkReportsProvider *)self userProfileLinkType]];
  retrieveSubtitleText = [(UserProfileLinkReportsProvider *)self retrieveSubtitleText];
  [(UserProfileLink *)self->_newLink setSubtitle:retrieveSubtitleText];

  v14 = self->_newLink;
  v15 = v14;

  return v14;
}

- (UserProfileLinkReportsProvider)init
{
  v8.receiver = self;
  v8.super_class = UserProfileLinkReportsProvider;
  v2 = [(UserProfileLinkReportsProvider *)&v8 init];
  if (v2)
  {
    v3 = +[UserProfileReportHistoryManager sharedInstance];
    observers = [v3 observers];
    [observers registerObserver:v2];

    v5 = +[UserInformationManager sharedInstance];
    observers2 = [v5 observers];
    [observers2 registerObserver:v2];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10195D060 != -1)
  {
    dispatch_once(&qword_10195D060, &stru_101627750);
  }

  v3 = qword_10195D058;

  return v3;
}

@end