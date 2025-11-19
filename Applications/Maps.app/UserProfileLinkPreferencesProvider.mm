@interface UserProfileLinkPreferencesProvider
+ (id)sharedInstance;
- (GEOObserverHashTable)observers;
- (UserProfileLinkPreferencesProvider)init;
- (id)createUserProfileLink;
- (id)retrieveTravelPreference;
- (void)_updateLinkAndNotifyObservers:(BOOL)a3;
- (void)dealloc;
@end

@implementation UserProfileLinkPreferencesProvider

- (void)_updateLinkAndNotifyObservers:(BOOL)a3
{
  v3 = a3;
  v7 = [(UserProfileLinkPreferencesProvider *)self retrieveTravelPreference];
  v5 = [(UserProfileLink *)self->_newLink subtitle];
  v6 = [v5 isEqualToString:v7];

  if ((v6 & 1) == 0)
  {
    [(UserProfileLink *)self->_newLink setSubtitle:v7];
    if (v3)
    {
      [(GEOObserverHashTable *)self->_observers dataDidUpdateForUserProfileLinkType:[(UserProfileLinkPreferencesProvider *)self userProfileLinkType]];
    }
  }
}

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

- (id)retrieveTravelPreference
{
  v2 = GEOGetUserTransportTypePreference();
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if ((v2 - 1) > 3)
  {
    v5 = @"[User Profile Preferences] Preferred Transport Type - Driving";
  }

  else
  {
    v5 = *(&off_10165CE38 + v2 - 1);
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v6;
}

- (id)createUserProfileLink
{
  v3 = +[UIScreen mainScreen];
  v4 = sub_10000FA08(v3);
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4 == 5)
  {
    v7 = @"[User Profile Preferences] Preferences (macOS)";
  }

  else
  {
    v7 = @"[User Profile Preferences] Preferences (iOS)";
  }

  v8 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];

  v9 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v10 = [v9 fontDescriptorWithSymbolicTraits:2];
  v11 = [UIFont fontWithDescriptor:v10 size:15.0];

  v12 = [UIImage systemImageNamed:@"switch.2"];
  v13 = [UIImageSymbolConfiguration configurationWithFont:v11];
  v14 = [v12 imageWithConfiguration:v13];

  v15 = [[UserProfileLink alloc] initWithTitle:v8 icon:v14];
  newLink = self->_newLink;
  self->_newLink = v15;

  [(UserProfileLink *)self->_newLink setUserProfileLinkType:[(UserProfileLinkPreferencesProvider *)self userProfileLinkType]];
  v17 = +[UIDevice currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18 != 5)
  {
    v19 = [(UserProfileLinkPreferencesProvider *)self retrieveTravelPreference];
    [(UserProfileLink *)self->_newLink setSubtitle:v19];
  }

  v20 = self->_newLink;
  v21 = v20;

  return v20;
}

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  v3.receiver = self;
  v3.super_class = UserProfileLinkPreferencesProvider;
  [(UserProfileLinkPreferencesProvider *)&v3 dealloc];
}

- (UserProfileLinkPreferencesProvider)init
{
  v8.receiver = self;
  v8.super_class = UserProfileLinkPreferencesProvider;
  v2 = [(UserProfileLinkPreferencesProvider *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v7 = v2;
    v4 = _GEOConfigAddBlockListenerForKey();
    transportTypeChangedListener = v7->_transportTypeChangedListener;
    v7->_transportTypeChangedListener = v4;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_10195F6E0 != -1)
  {
    dispatch_once(&qword_10195F6E0, &stru_10165CDF0);
  }

  v3 = qword_10195F6D8;

  return v3;
}

@end