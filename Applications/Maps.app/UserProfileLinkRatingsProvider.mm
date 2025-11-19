@interface UserProfileLinkRatingsProvider
+ (id)sharedInstance;
- (GEOObserverHashTable)observers;
- (UserProfileLinkRatingsProvider)init;
- (id)createUserProfileLink;
- (id)retrieveSubtitleText;
- (void)_fetchCount;
- (void)_updateLinkWithCount:(int64_t)a3 notifyObservers:(BOOL)a4;
@end

@implementation UserProfileLinkRatingsProvider

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

- (void)_updateLinkWithCount:(int64_t)a3 notifyObservers:(BOOL)a4
{
  v4 = a4;
  v8 = sub_100026868();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v14 = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ %@, count = %d", &v14, 0x1Cu);
  }

  if (self->_count != a3)
  {
    self->_count = a3;
    v12 = [(UserProfileLinkRatingsProvider *)self retrieveSubtitleText];
    [(UserProfileLink *)self->_newLink setSubtitle:v12];

    if (v4)
    {
      v13 = [(UserProfileLinkRatingsProvider *)self observers];
      [v13 dataDidUpdateForUserProfileLinkType:{-[UserProfileLinkRatingsProvider userProfileLinkType](self, "userProfileLinkType")}];
    }
  }
}

- (void)_fetchCount
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100BF81DC;
  v2[3] = &unk_101654BC0;
  objc_copyWeak(&v3, &location);
  [UGCReviewedPlaceManager fetchAllHistoryObjectsFromStorageWithCompletion:v2];
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (id)retrieveSubtitleText
{
  count = self->_count;
  if (count)
  {
    v3 = [NSString localizedStringWithFormat:@"%ld", count];
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v3 = [v4 localizedStringForKey:@"[User Profile Ratings] Add" value:@"localized string not found" table:0];
  }

  return v3;
}

- (id)createUserProfileLink
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[User Profile Ratings & Photos] Ratings & Photos" value:@"localized string not found" table:0];

  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  v7 = [UIFont fontWithDescriptor:v6 size:15.0];

  v8 = [UIImage systemImageNamed:@"hand.thumbsup.fill"];
  v9 = [UIImageSymbolConfiguration configurationWithFont:v7];
  v10 = [v8 imageWithConfiguration:v9];

  v11 = [[UserProfileLink alloc] initWithTitle:v4 icon:v10];
  newLink = self->_newLink;
  self->_newLink = v11;

  [(UserProfileLink *)self->_newLink setUserProfileLinkType:[(UserProfileLinkRatingsProvider *)self userProfileLinkType]];
  v13 = [(UserProfileLinkRatingsProvider *)self retrieveSubtitleText];
  [(UserProfileLink *)self->_newLink setSubtitle:v13];

  v14 = self->_newLink;
  v15 = v14;

  return v14;
}

- (UserProfileLinkRatingsProvider)init
{
  v5.receiver = self;
  v5.super_class = UserProfileLinkRatingsProvider;
  v2 = [(UserProfileLinkRatingsProvider *)&v5 init];
  if (v2)
  {
    v3 = +[UGCReviewedPlaceMapsSync sharedInstance];
    [v3 registerObserver:v2];

    [(UserProfileLinkRatingsProvider *)v2 _fetchCount];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10195EAA0 != -1)
  {
    dispatch_once(&qword_10195EAA0, &stru_10164D750);
  }

  v3 = qword_10195EA98;

  return v3;
}

@end