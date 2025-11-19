@interface ClientTypeResolverPersonalizedItemSource
- (BOOL)hasObjectWithType:(int)a3;
- (ClientTypeResolverPersonalizedItemSource)initWithAddressBookManager:(id)a3 locationOfInterestManager:(id)a4;
- (id)cachedAddressWithType:(int)a3;
- (id)cachedLOIWithType:(int)a3;
- (id)cachedObjectWithType:(int)a3;
- (void)addressOrLOIWithType:(int)a3 completion:(id)a4;
- (void)objectWithType:(int)a3 completion:(id)a4;
@end

@implementation ClientTypeResolverPersonalizedItemSource

- (void)addressOrLOIWithType:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10094090C;
    v8[3] = &unk_101658568;
    v9 = v6;
    [(ClientTypeResolverPersonalizedItemSource *)self objectWithType:v4 completion:v8];
  }
}

- (id)cachedLOIWithType:(int)a3
{
  v3 = [(ClientTypeResolverPersonalizedItemSource *)self cachedObjectWithType:*&a3];
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

- (id)cachedAddressWithType:(int)a3
{
  v3 = [(ClientTypeResolverPersonalizedItemSource *)self cachedObjectWithType:*&a3];
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

- (id)cachedObjectWithType:(int)a3
{
  v3 = *&a3;
  if (!+[AddressBookManager addressBookAllowed]|| ![(ClientTypeResolverPersonalizedItemSource *)self homeAndWorkEnabled]|| ![(ClientTypeResolverSource *)self typeIsValid:v3])
  {
    goto LABEL_9;
  }

  if (v3 == 6)
  {
    v12 = [(ClientTypeResolverPersonalizedItemSource *)self addressBookManager];
    v6 = [v12 meCardSchoolAddress];

    if (!v6)
    {
      v7 = [(ClientTypeResolverPersonalizedItemSource *)self locationOfInterestManager];
      v8 = [v7 schoolLOIs];
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v5 = [(ClientTypeResolverPersonalizedItemSource *)self addressBookManager];
      v6 = [v5 meCardHomeAddress];

      if (!v6)
      {
        v7 = [(ClientTypeResolverPersonalizedItemSource *)self locationOfInterestManager];
        v8 = [v7 homeLOIs];
LABEL_18:
        v14 = v8;
        v9 = [v8 firstObject];

        v13 = 0;
        goto LABEL_19;
      }

      goto LABEL_16;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v11 = [(ClientTypeResolverPersonalizedItemSource *)self addressBookManager];
  v6 = [v11 meCardWorkAddress];

  if (!v6)
  {
    v7 = [(ClientTypeResolverPersonalizedItemSource *)self locationOfInterestManager];
    v8 = [v7 workLOIs];
    goto LABEL_18;
  }

LABEL_16:
  v13 = v6;
  v9 = v13;
LABEL_19:

LABEL_10:

  return v9;
}

- (void)objectWithType:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (v6)
  {
    if (+[AddressBookManager addressBookAllowed]&& [(ClientTypeResolverPersonalizedItemSource *)self homeAndWorkEnabled]&& [(ClientTypeResolverSource *)self typeIsValid:v4])
    {
      objc_initWeak(&location, self);
      v7 = [(ClientTypeResolverPersonalizedItemSource *)self addressBookManager];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100940FE0;
      v8[3] = &unk_10162F420;
      objc_copyWeak(&v10, &location);
      v11 = v4;
      v9 = v6;
      [v7 performBlockAfterFirstCollection:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

- (BOOL)hasObjectWithType:(int)a3
{
  v3 = *&a3;
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

- (ClientTypeResolverPersonalizedItemSource)initWithAddressBookManager:(id)a3 locationOfInterestManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ClientTypeResolverPersonalizedItemSource;
  v9 = [(ClientTypeResolverPersonalizedItemSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_addressBookManager, a3);
    objc_storeStrong(&v10->_locationOfInterestManager, a4);
    locationOfInterestManager = v10->_locationOfInterestManager;
    v12 = [NSSet setWithArray:&off_1016ED0D0];
    [(CoreRoutineLocationOfInterestManager *)locationOfInterestManager monitorLOIsOfTypes:v12];
  }

  return v10;
}

@end