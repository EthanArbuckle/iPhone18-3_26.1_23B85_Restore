@interface ClientTypeResolverPersonalizedItemSource
- (BOOL)hasObjectWithType:(int)type;
- (ClientTypeResolverPersonalizedItemSource)initWithAddressBookManager:(id)manager locationOfInterestManager:(id)interestManager;
- (id)cachedAddressWithType:(int)type;
- (id)cachedLOIWithType:(int)type;
- (id)cachedObjectWithType:(int)type;
- (void)addressOrLOIWithType:(int)type completion:(id)completion;
- (void)objectWithType:(int)type completion:(id)completion;
@end

@implementation ClientTypeResolverPersonalizedItemSource

- (void)addressOrLOIWithType:(int)type completion:(id)completion
{
  v4 = *&type;
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10094090C;
    v8[3] = &unk_101658568;
    v9 = completionCopy;
    [(ClientTypeResolverPersonalizedItemSource *)self objectWithType:v4 completion:v8];
  }
}

- (id)cachedLOIWithType:(int)type
{
  v3 = [(ClientTypeResolverPersonalizedItemSource *)self cachedObjectWithType:*&type];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)cachedAddressWithType:(int)type
{
  v3 = [(ClientTypeResolverPersonalizedItemSource *)self cachedObjectWithType:*&type];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)cachedObjectWithType:(int)type
{
  v3 = *&type;
  if (!+[AddressBookManager addressBookAllowed]|| ![(ClientTypeResolverPersonalizedItemSource *)self homeAndWorkEnabled]|| ![(ClientTypeResolverSource *)self typeIsValid:v3])
  {
    goto LABEL_9;
  }

  if (v3 == 6)
  {
    addressBookManager = [(ClientTypeResolverPersonalizedItemSource *)self addressBookManager];
    meCardSchoolAddress = [addressBookManager meCardSchoolAddress];

    if (!meCardSchoolAddress)
    {
      locationOfInterestManager = [(ClientTypeResolverPersonalizedItemSource *)self locationOfInterestManager];
      schoolLOIs = [locationOfInterestManager schoolLOIs];
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v3 != 2)
  {
    if (v3 == 1)
    {
      addressBookManager2 = [(ClientTypeResolverPersonalizedItemSource *)self addressBookManager];
      meCardSchoolAddress = [addressBookManager2 meCardHomeAddress];

      if (!meCardSchoolAddress)
      {
        locationOfInterestManager = [(ClientTypeResolverPersonalizedItemSource *)self locationOfInterestManager];
        schoolLOIs = [locationOfInterestManager homeLOIs];
LABEL_18:
        v14 = schoolLOIs;
        firstObject = [schoolLOIs firstObject];

        v13 = 0;
        goto LABEL_19;
      }

      goto LABEL_16;
    }

LABEL_9:
    firstObject = 0;
    goto LABEL_10;
  }

  addressBookManager3 = [(ClientTypeResolverPersonalizedItemSource *)self addressBookManager];
  meCardSchoolAddress = [addressBookManager3 meCardWorkAddress];

  if (!meCardSchoolAddress)
  {
    locationOfInterestManager = [(ClientTypeResolverPersonalizedItemSource *)self locationOfInterestManager];
    schoolLOIs = [locationOfInterestManager workLOIs];
    goto LABEL_18;
  }

LABEL_16:
  v13 = meCardSchoolAddress;
  firstObject = v13;
LABEL_19:

LABEL_10:

  return firstObject;
}

- (void)objectWithType:(int)type completion:(id)completion
{
  v4 = *&type;
  completionCopy = completion;
  if (completionCopy)
  {
    if (+[AddressBookManager addressBookAllowed]&& [(ClientTypeResolverPersonalizedItemSource *)self homeAndWorkEnabled]&& [(ClientTypeResolverSource *)self typeIsValid:v4])
    {
      objc_initWeak(&location, self);
      addressBookManager = [(ClientTypeResolverPersonalizedItemSource *)self addressBookManager];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100940FE0;
      v8[3] = &unk_10162F420;
      objc_copyWeak(&v10, &location);
      v11 = v4;
      v9 = completionCopy;
      [addressBookManager performBlockAfterFirstCollection:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (BOOL)hasObjectWithType:(int)type
{
  v3 = *&type;
  if (![(ClientTypeResolverSource *)self typeIsValid:?])
  {
    return 0;
  }

  v5 = [(ClientTypeResolverPersonalizedItemSource *)self cachedAddressWithType:v3];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(ClientTypeResolverPersonalizedItemSource *)self cachedLOIWithType:v3];
    v6 = v7 != 0;
  }

  return v6;
}

- (ClientTypeResolverPersonalizedItemSource)initWithAddressBookManager:(id)manager locationOfInterestManager:(id)interestManager
{
  managerCopy = manager;
  interestManagerCopy = interestManager;
  v14.receiver = self;
  v14.super_class = ClientTypeResolverPersonalizedItemSource;
  v9 = [(ClientTypeResolverPersonalizedItemSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_addressBookManager, manager);
    objc_storeStrong(&v10->_locationOfInterestManager, interestManager);
    locationOfInterestManager = v10->_locationOfInterestManager;
    v12 = [NSSet setWithArray:&off_1016ED0D0];
    [(CoreRoutineLocationOfInterestManager *)locationOfInterestManager monitorLOIsOfTypes:v12];
  }

  return v10;
}

@end