@interface UserProfileLinkGarageProvider
+ (id)sharedInstance;
- (GEOObserverHashTable)observers;
- (UserProfileLinkGarageProvider)init;
- (id)createUserProfileLink;
- (id)retrieveSubtitleText;
- (void)_loadGarage;
- (void)_loadUnpairedVehicles;
- (void)_updateLinkAndNotifyObservers:(BOOL)observers;
- (void)virtualGarage:(id)garage didUpdateUnpairedVehicles:(id)vehicles;
- (void)virtualGarageDidUpdate:(id)update;
@end

@implementation UserProfileLinkGarageProvider

- (void)virtualGarage:(id)garage didUpdateUnpairedVehicles:(id)vehicles
{
  vehiclesCopy = vehicles;
  hasUnpairedVehicles = [(UserProfileLinkGarageProvider *)self hasUnpairedVehicles];
  v7 = [vehiclesCopy count];

  [(UserProfileLinkGarageProvider *)self setHasUnpairedVehicles:v7 != 0];
  if (hasUnpairedVehicles != [(UserProfileLinkGarageProvider *)self hasUnpairedVehicles])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006230A4;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)virtualGarageDidUpdate:(id)update
{
  updateCopy = update;
  if (([(VGVirtualGarage *)self->_virtualGarage isEqual:updateCopy]& 1) == 0)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100623180;
    block[3] = &unk_101661340;
    objc_copyWeak(&v7, &location);
    v6 = updateCopy;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_updateLinkAndNotifyObservers:(BOOL)observers
{
  observersCopy = observers;
  retrieveSubtitleText = [(UserProfileLinkGarageProvider *)self retrieveSubtitleText];
  subtitle = [(UserProfileLink *)self->_newLink subtitle];
  v6 = [subtitle isEqualToString:retrieveSubtitleText];

  if ((v6 & 1) == 0)
  {
    [(UserProfileLink *)self->_newLink setSubtitle:retrieveSubtitleText];
    if (observersCopy)
    {
      [(GEOObserverHashTable *)self->_observers dataDidUpdateForUserProfileLinkType:[(UserProfileLinkGarageProvider *)self userProfileLinkType]];
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

- (void)_loadUnpairedVehicles
{
  objc_initWeak(&location, self);
  v2 = +[VGVirtualGarageService sharedService];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006233C0;
  v3[3] = &unk_10165F290;
  objc_copyWeak(&v4, &location);
  [v2 virtualGarageGetListOfUnpairedVehiclesWithReply:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_loadGarage
{
  objc_initWeak(&location, self);
  v2 = +[VGVirtualGarageService sharedService];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062363C;
  v3[3] = &unk_101655840;
  objc_copyWeak(&v4, &location);
  [v2 virtualGarageGetGarageWithReply:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)retrieveSubtitleText
{
  if ((MapsFeature_IsEnabled_EVRouting() & 1) != 0 || MapsFeature_IsEnabled_Alberta())
  {
    vehicles = [(VGVirtualGarage *)self->_virtualGarage vehicles];
    v4 = [vehicles count] != 0;
  }

  else
  {
    v4 = 0;
  }

  IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
  selectedVehicle = [(VGVirtualGarage *)self->_virtualGarage selectedVehicle];
  v7 = selectedVehicle;
  if (!IsEnabled_Alberta || v4)
  {
    displayName = [selectedVehicle displayName];
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    displayName = [v8 localizedStringForKey:@"[User Profile Vehicles] Add" value:@"localized string not found" table:0];
  }

  return displayName;
}

- (id)createUserProfileLink
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[User Profile My Vehicles] Vehicles" value:@"localized string not found" table:0];

  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  v7 = [UIFont fontWithDescriptor:v6 size:15.0];

  v8 = [UIImage systemImageNamed:@"car.fill"];
  v9 = [UIImageSymbolConfiguration configurationWithFont:v7];
  v10 = [v8 imageWithConfiguration:v9];

  v11 = [[UserProfileLink alloc] initWithTitle:v4 icon:v10];
  newLink = self->_newLink;
  self->_newLink = v11;

  [(UserProfileLink *)self->_newLink setUserProfileLinkType:[(UserProfileLinkGarageProvider *)self userProfileLinkType]];
  retrieveSubtitleText = [(UserProfileLinkGarageProvider *)self retrieveSubtitleText];
  [(UserProfileLink *)self->_newLink setSubtitle:retrieveSubtitleText];

  v14 = self->_newLink;
  v15 = v14;

  return v14;
}

- (UserProfileLinkGarageProvider)init
{
  v7.receiver = self;
  v7.super_class = UserProfileLinkGarageProvider;
  v2 = [(UserProfileLinkGarageProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(UserProfileLinkGarageProvider *)v2 _loadGarage];
    v4 = +[VGVirtualGarageService sharedService];
    garageService = v3->_garageService;
    v3->_garageService = v4;

    [(VGVirtualGarageService *)v3->_garageService registerObserver:v3];
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_10195CD68 != -1)
  {
    dispatch_once(&qword_10195CD68, &stru_101624308);
  }

  v3 = qword_10195CD60;

  return v3;
}

@end