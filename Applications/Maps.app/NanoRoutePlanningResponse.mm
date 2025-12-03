@interface NanoRoutePlanningResponse
+ (void)clearDiskRouteStorage;
- (BOOL)canNavigateRouteWithID:(id)d;
- (BOOL)hasReceivedAllExpectedRoutes;
- (GEOComposedRoute)selectedRoute;
- (NSArray)companionRoutes;
- (NSUUID)selectedRouteID;
- (NanoRoutePlanningResponse)init;
- (NanoRoutePlanningResponse)initWithCoder:(id)coder;
- (id)_generateCompanionRouteFromComposedRoute:(id)route;
- (id)companionRouteWithID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)routeWithID:(id)d;
- (id)selectedCompanionRoute;
- (id)snapshot;
- (id)userInfoForRouteWithID:(id)d;
- (unint64_t)numberOfRoutes;
- (unint64_t)selectedRouteIndex;
- (void)_generateCompanionRoutesFromComposedRoutes;
- (void)_populateCopy:(id)copy;
- (void)_setRoutes:(id)routes withRouteIDs:(id)ds;
- (void)encodeWithCoder:(id)coder;
- (void)setObject:(id)object forUserInfoKey:(id)key forRouteID:(id)d;
- (void)setRoutes:(id)routes;
@end

@implementation NanoRoutePlanningResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_routeIDs forKey:@"_routeIDs"];
  BOOL = GEOConfigGetBOOL();
  v6 = BOOL;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A1F88;
  block[3] = &unk_1016591E0;
  v32 = BOOL;
  if (qword_10195CED0 != -1)
  {
    dispatch_once(&qword_10195CED0, block);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    [coderCopy encodeObject:self->_routes forKey:@"_routes"];
    goto LABEL_24;
  }

  if (!BOOL)
  {
    goto LABEL_23;
  }

LABEL_3:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = self->_routes;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = *v28;
  while (2)
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v27 + 1) + 8 * i);
      v13 = MNSaveRouteWithSubpath();
      v14 = 0;
      v15 = v14;
      if ((v13 & 1) == 0)
      {
        v16 = sub_100798A3C();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
LABEL_22:

          [coderCopy encodeBool:1 forKey:@"DiskRouteStorage"];
          goto LABEL_23;
        }

        selfCopy = self;
        if (!selfCopy)
        {
          selfCopy = @"<nil>";
          goto LABEL_21;
        }

        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        if (objc_opt_respondsToSelector())
        {
          v20 = [(NanoRoutePlanningResponse *)selfCopy performSelector:"accessibilityIdentifier"];
          v21 = v20;
          if (v20 && ![v20 isEqualToString:v19])
          {
            selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy, v21];

            goto LABEL_19;
          }
        }

        selfCopy = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy];
LABEL_19:

LABEL_21:
        v23 = selfCopy;
        uniqueRouteID = [v12 uniqueRouteID];

        *buf = 138543874;
        v34 = selfCopy;
        v35 = 2114;
        v36 = uniqueRouteID;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to write route %{public}@ to disk: %@", buf, 0x20u);

        goto LABEL_22;
      }
    }

    v9 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_11:

  [coderCopy encodeBool:1 forKey:@"DiskRouteStorage"];
LABEL_24:
  [coderCopy encodeObject:self->_selectedRouteID forKey:@"_selectedRouteID"];
  v25 = [NSNumber numberWithUnsignedInteger:self->_routeOrigin];
  [coderCopy encodeObject:v25 forKey:@"_routeOrigin"];

  v26 = [NSNumber numberWithUnsignedInteger:self->_expectedNumberOfRoutes];
  [coderCopy encodeObject:v26 forKey:@"_expectedNumberOfRoutes"];

  [coderCopy encodeObject:self->_traceRecordingData forKey:@"_traceRecordingData"];
  [coderCopy encodeObject:self->_directionsRequest forKey:@"_directionsRequest"];
  [coderCopy encodeObject:self->_directionsResponse forKey:@"_directionsResponse"];
  [coderCopy encodeObject:self->_lastError forKey:@"_lastError"];
  [coderCopy encodeObject:self->_userInfoByRouteID forKey:@"_userInfoByRouteID"];
}

- (NanoRoutePlanningResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = NanoRoutePlanningResponse;
  v5 = [(NanoRoutePlanningResponse *)&v38 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"_routeIDs"];

    if ([coderCopy decodeBoolForKey:@"DiskRouteStorage"] && v8)
    {
      v9 = sub_100021DB0(v8, &stru_101625FE8);
    }

    else
    {
      v10 = objc_opt_class();
      v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
      v9 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_routes"];
    }

    [(NanoRoutePlanningResponse *)v5 _setRoutes:v9 withRouteIDs:v8];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_routeOrigin"];
    v5->_routeOrigin = [v12 unsignedIntegerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_selectedRouteID"];
    selectedRouteID = v5->_selectedRouteID;
    v5->_selectedRouteID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_expectedNumberOfRoutes"];
    v5->_expectedNumberOfRoutes = [v15 unsignedIntegerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_traceRecordingData"];
    traceRecordingData = v5->_traceRecordingData;
    v5->_traceRecordingData = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_directionsRequest"];
    directionsRequest = v5->_directionsRequest;
    v5->_directionsRequest = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_directionsResponse"];
    directionsResponse = v5->_directionsResponse;
    v5->_directionsResponse = v20;

    v22 = objc_opt_class();
    v23 = [NSSet setWithObjects:v22, objc_opt_class(), 0];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"_lastError"];
    lastError = v5->_lastError;
    v5->_lastError = v24;

    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = [NSSet setWithObjects:v26, v27, v28, v29, objc_opt_class(), 0];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"_userInfoByRouteID"];
    v32 = [v31 mutableCopy];
    userInfoByRouteID = v5->_userInfoByRouteID;
    v5->_userInfoByRouteID = v32;

    v34 = v5->_userInfoByRouteID;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1006A2414;
    v36[3] = &unk_101626010;
    v37 = v5;
    [(NSDictionary *)v34 enumerateKeysAndObjectsUsingBlock:v36];
  }

  return v5;
}

- (void)_populateCopy:(id)copy
{
  objc_storeStrong(copy + 2, self->_routeIDs);
  copyCopy = copy;
  objc_storeStrong(copyCopy + 3, self->_routes);
  objc_storeStrong(copyCopy + 4, self->_companionRoutes);
  copyCopy[10] = self->_routeOrigin;
  objc_storeStrong(copyCopy + 5, self->_selectedRouteID);
  copyCopy[11] = self->_expectedNumberOfRoutes;
  objc_storeStrong(copyCopy + 7, self->_traceRecordingData);
  objc_storeStrong(copyCopy + 8, self->_directionsRequest);
  objc_storeStrong(copyCopy + 9, self->_directionsResponse);
  objc_storeStrong(copyCopy + 1, self->_userInfoByRouteID);
  objc_storeStrong(copyCopy + 6, self->_lastError);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NanoRoutePlanningMutableResponse);
  [(NanoRoutePlanningResponse *)self _populateCopy:v4];
  return v4;
}

+ (void)clearDiskRouteStorage
{
  v2 = sub_100798A3C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = @"planning";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Clearing disk route storage at subpath %{public}@", &v4, 0xCu);
  }

  v3 = MNRecommendedDateForClearingRoutes();
  MNClearStoredRoutesWithSubpathUsedBefore();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NanoRoutePlanningResponse);
  [(NanoRoutePlanningResponse *)self _populateCopy:v4];
  return v4;
}

- (id)snapshot
{
  v3 = objc_alloc_init(NanoRoutePlanningResponseSnapshot);
  routeIDs = [(NanoRoutePlanningResponse *)self routeIDs];
  [(NanoRoutePlanningResponseSnapshot *)v3 setRouteIdentifiers:routeIDs];

  selectedRouteID = [(NanoRoutePlanningResponse *)self selectedRouteID];
  [(NanoRoutePlanningResponseSnapshot *)v3 setSelectedRouteIdentifier:selectedRouteID];

  if ([(NSArray *)self->_routes count])
  {
    v6 = sub_100021DB0(self->_routes, &stru_101625F28);
    [(NanoRoutePlanningResponseSnapshot *)v3 setRevisionIdentifiers:v6];

    v7 = sub_100021DB0(self->_routes, &stru_101625F68);
    [(NanoRoutePlanningResponseSnapshot *)v3 setSelectedRideIndexes:v7];
  }

  else
  {
    if (![(NSArray *)self->_companionRoutes count])
    {
      goto LABEL_6;
    }

    v7 = sub_100021DB0(self->_companionRoutes, &stru_101625FA8);
    [(NanoRoutePlanningResponseSnapshot *)v3 setRevisionIdentifiers:v7];
  }

LABEL_6:

  return v3;
}

- (BOOL)canNavigateRouteWithID:(id)d
{
  v3 = [(NanoRoutePlanningResponse *)self userInfoForRouteWithID:d];
  v4 = [v3 objectForKeyedSubscript:@"canNavigate"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)userInfoForRouteWithID:(id)d
{
  v5 = 0;
  if (d)
  {
    userInfoByRouteID = self->_userInfoByRouteID;
    if (userInfoByRouteID)
    {
      v5 = [(NSDictionary *)userInfoByRouteID objectForKeyedSubscript:?];
      v3 = vars8;
    }
  }

  return v5;
}

- (id)routeWithID:(id)d
{
  dCopy = d;
  if ([(NanoRoutePlanningResponse *)self numberOfRoutes])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_1006A2B4C;
    v15 = sub_1006A2B5C;
    v16 = 0;
    routes = [(NanoRoutePlanningResponse *)self routes];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006A2B64;
    v8[3] = &unk_101625F08;
    v9 = dCopy;
    v10 = &v11;
    [routes enumerateObjectsWithOptions:1 usingBlock:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)selectedRouteIndex
{
  selectedRouteID = [(NanoRoutePlanningResponse *)self selectedRouteID];
  if (selectedRouteID)
  {
    routeIDs = [(NanoRoutePlanningResponse *)self routeIDs];
    v5 = [routeIDs indexOfObject:selectedRouteID];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (GEOComposedRoute)selectedRoute
{
  selectedRouteID = [(NanoRoutePlanningResponse *)self selectedRouteID];
  if (selectedRouteID)
  {
    v4 = [(NanoRoutePlanningResponse *)self routeWithID:selectedRouteID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)selectedRouteID
{
  selectedRouteID = self->_selectedRouteID;
  if (selectedRouteID)
  {
    firstObject = selectedRouteID;
  }

  else
  {
    firstObject = [(NSArray *)self->_routeIDs firstObject];
  }

  return firstObject;
}

- (BOOL)hasReceivedAllExpectedRoutes
{
  numberOfRoutes = [(NanoRoutePlanningResponse *)self numberOfRoutes];
  if (numberOfRoutes)
  {
    expectedNumberOfRoutes = self->_expectedNumberOfRoutes;
    if (expectedNumberOfRoutes)
    {
      v5 = numberOfRoutes == expectedNumberOfRoutes;
    }

    else
    {
      v5 = 1;
    }

    LOBYTE(numberOfRoutes) = v5;
  }

  return numberOfRoutes;
}

- (unint64_t)numberOfRoutes
{
  routes = self->_routes;
  if (!routes)
  {
    routes = self->_companionRoutes;
  }

  return [(NSArray *)routes count];
}

- (id)_generateCompanionRouteFromComposedRoute:(id)route
{
  routeCopy = route;
  v5 = +[MNNanoFormattedStringFormatter sharedFormatter];
  destination = [routeCopy destination];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  destination2 = [routeCopy destination];
  v9 = destination2;
  if (isKindOfClass)
  {
    name = [destination2 name];
  }

  else
  {
    geoMapItem = [destination2 geoMapItem];
    name = [geoMapItem name];
  }

  v12 = [[GEOCompanionRouteDetails alloc] initWithRoute:routeCopy destinationName:name stringFormatter:v5 traffic:0];
  uniqueRouteID = [routeCopy uniqueRouteID];
  v14 = [(NanoRoutePlanningResponse *)self userInfoForRouteWithID:uniqueRouteID];
  v15 = [v14 objectForKeyedSubscript:@"canNavigate"];

  if (v15)
  {
    bOOLValue = [v15 BOOLValue];
  }

  else
  {
    bOOLValue = [objc_opt_class() _canRunNavigationForRoute:routeCopy];
  }

  [v12 setCanNavigate:bOOLValue];
  directionsRequest = [(NanoRoutePlanningResponse *)self directionsRequest];
  [v12 setRequest:directionsRequest];

  directionsResponse = [(NanoRoutePlanningResponse *)self directionsResponse];
  v19 = [directionsResponse preJupiterCompatibleDirectionsResponseWithRoute:routeCopy];
  [v12 setResponse:v19];

  return v12;
}

- (void)_generateCompanionRoutesFromComposedRoutes
{
  if ([(NSArray *)self->_routes count])
  {
    v3 = sub_100798A3C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [(NSArray *)self->_routes count];
      *buf = 134217984;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Will construct %lu companion routes from composed routes", buf, 0xCu);
    }

    routes = self->_routes;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006A3084;
    v9[3] = &unk_101625EE0;
    v9[4] = self;
    v6 = sub_100021DB0(routes, v9);
    companionRoutes = self->_companionRoutes;
    self->_companionRoutes = v6;
  }

  else
  {
    v8 = self->_companionRoutes;
    self->_companionRoutes = 0;
  }
}

- (id)companionRouteWithID:(id)d
{
  dCopy = d;
  if ([(NanoRoutePlanningResponse *)self numberOfRoutes])
  {
    _maps_data = [dCopy _maps_data];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_1006A2B4C;
    v34 = sub_1006A2B5C;
    v35 = 0;
    companionRoutes = self->_companionRoutes;
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_1006A3318;
    v27 = &unk_101625EB8;
    v7 = _maps_data;
    v28 = v7;
    v29 = &v30;
    [(NSArray *)companionRoutes enumerateObjectsWithOptions:1 usingBlock:&v24];
    v8 = v31[5];
    if (!v8)
    {
      v9 = [(NanoRoutePlanningResponse *)self routeWithID:dCopy, v24, v25, v26, v27];
      routes = [(NanoRoutePlanningResponse *)self routes];
      v11 = [routes indexOfObject:v9];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [(NanoRoutePlanningResponse *)self _generateCompanionRouteFromComposedRoute:v9];
        v13 = v31[5];
        v31[5] = v12;

        v14 = [(NSArray *)self->_companionRoutes mutableCopy];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v18 = [NSMutableArray alloc];
          routes2 = [(NanoRoutePlanningResponse *)self routes];
          v16 = [v18 initWithCapacity:{objc_msgSend(routes2, "count")}];
        }

        v20 = v31[5];
        if ([v16 count] < v11)
        {
          v11 = [v16 count];
        }

        [v16 insertObject:v20 atIndex:v11];
        v21 = [v16 copy];
        v22 = self->_companionRoutes;
        self->_companionRoutes = v21;
      }

      v8 = v31[5];
    }

    v17 = v8;

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)selectedCompanionRoute
{
  selectedRouteID = [(NanoRoutePlanningResponse *)self selectedRouteID];
  if (selectedRouteID)
  {
    v4 = [(NanoRoutePlanningResponse *)self companionRouteWithID:selectedRouteID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)companionRoutes
{
  v3 = [(NSArray *)self->_routes count];
  if (v3)
  {
    if ([(NSArray *)self->_companionRoutes count])
    {
      v4 = sub_100798A3C();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [(NSArray *)self->_routes count];
        v6 = [(NSArray *)self->_companionRoutes count];
        *buf = 134217984;
        v20 = v5 - v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will construct %lu remaining companion routes from composed routes", buf, 0xCu);
      }

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      routes = [(NanoRoutePlanningResponse *)self routes];
      v8 = [routes countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(routes);
            }

            v12 = [(NanoRoutePlanningResponse *)self _generateCompanionRouteFromComposedRoute:*(*(&v14 + 1) + 8 * v11)];
            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [routes countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }

    else
    {
      [(NanoRoutePlanningResponse *)self _generateCompanionRoutesFromComposedRoutes];
    }

    v3 = self->_companionRoutes;
  }

  return v3;
}

- (void)setObject:(id)object forUserInfoKey:(id)key forRouteID:(id)d
{
  if (d)
  {
    dCopy = d;
    keyCopy = key;
    objectCopy = object;
    v11 = [(NanoRoutePlanningResponse *)self userInfoForRouteWithID:dCopy];
    v12 = [v11 mutableCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = objc_alloc_init(NSMutableDictionary);
    }

    v22 = v14;

    [v22 setObject:objectCopy forKeyedSubscript:keyCopy];
    v15 = [(NSDictionary *)self->_userInfoByRouteID mutableCopy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_alloc_init(NSMutableDictionary);
    }

    v18 = v17;

    v19 = [v22 copy];
    [v18 setObject:v19 forKeyedSubscript:dCopy];

    v20 = [v18 copy];
    userInfoByRouteID = self->_userInfoByRouteID;
    self->_userInfoByRouteID = v20;
  }
}

- (void)_setRoutes:(id)routes withRouteIDs:(id)ds
{
  routesCopy = routes;
  dsCopy = ds;
  objc_storeStrong(&self->_routes, routes);
  v9 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(routesCopy, "count")}];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1006A3834;
  v16[3] = &unk_101625E70;
  v10 = dsCopy;
  v17 = v10;
  selfCopy = self;
  v11 = v9;
  v19 = v11;
  [routesCopy enumerateObjectsWithOptions:0 usingBlock:v16];
  v12 = [v11 copy];
  userInfoByRouteID = self->_userInfoByRouteID;
  self->_userInfoByRouteID = v12;

  if (v10)
  {
    v14 = v10;
LABEL_5:
    routeIDs = self->_routeIDs;
    self->_routeIDs = v14;

    goto LABEL_6;
  }

  if (routesCopy)
  {
    v14 = sub_100021DB0(routesCopy, &stru_101625E90);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)setRoutes:(id)routes
{
  routesCopy = routes;
  routes = self->_routes;
  if (routes != routesCopy)
  {
    v7 = routesCopy;
    v6 = [(NSArray *)routes isEqualToArray:routesCopy];
    routesCopy = v7;
    if ((v6 & 1) == 0)
    {
      [(NanoRoutePlanningResponse *)self _setRoutes:v7 withRouteIDs:0];
      routesCopy = v7;
    }
  }
}

- (id)description
{
  v3 = objc_opt_class();
  routeIDs = [(NanoRoutePlanningResponse *)self routeIDs];
  lastError = [(NanoRoutePlanningResponse *)self lastError];
  v6 = [NSString stringWithFormat:@"<%@: %p, routeIDs: %@, error: %@, (%lu/%lu)>", v3, self, routeIDs, lastError, [(NanoRoutePlanningResponse *)self numberOfRoutes], [(NanoRoutePlanningResponse *)self expectedNumberOfRoutes]];

  return v6;
}

- (NanoRoutePlanningResponse)init
{
  v3.receiver = self;
  v3.super_class = NanoRoutePlanningResponse;
  result = [(NanoRoutePlanningResponse *)&v3 init];
  if (result)
  {
    result->_routeOrigin = 1;
  }

  return result;
}

@end