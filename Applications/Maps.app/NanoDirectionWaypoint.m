@interface NanoDirectionWaypoint
+ (NanoDirectionWaypoint)directionWaypointWithGEOMapItem:(id)a3;
+ (NanoDirectionWaypoint)directionWaypointWithLabel:(id)a3 muid:(unint64_t)a4 providerID:(int)a5;
+ (NanoDirectionWaypoint)directionWaypointWithSearchString:(id)a3;
+ (id)directionWaypointForCompanionWaypoint:(id)a3;
+ (id)directionWaypointForComposedWaypoint:(id)a3;
+ (id)directionWaypointForCurrentLocation:(id)a3;
+ (id)directionWaypointForLocation:(id)a3;
+ (id)directionWaypointForLocation:(id)a3 findMyHandleID:(id)a4;
+ (id)directionWaypointToCustomRoute:(id)a3;
- (BOOL)isValid;
- (NSString)name;
- (NanoDirectionWaypoint)initWithCoder:(id)a3;
- (id)companionWaypoint;
- (id)debugDescription;
- (id)description;
- (void)cancelRefinement;
- (void)encodeWithCoder:(id)a3;
- (void)refineWithTraits:(id)a3 auditToken:(id)a4 completionHandler:(id)a5;
- (void)setComposedWaypoint:(id)a3;
@end

@implementation NanoDirectionWaypoint

- (id)debugDescription
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100CE2E84;
  v16[3] = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v17 = v3;
  v4 = objc_retainBlock(v16);
  (v4[2])(v4, @"name", self->_name);
  (v4[2])(v4, @"location", self->_location);
  if (self->_currentLocation)
  {
    v5 = [NSNumber numberWithBool:1];
    (v4[2])(v4, @"currentLocation", v5);
  }

  else
  {
    (v4[2])(v4, @"currentLocation", 0);
  }

  (v4[2])(v4, @"searchString", self->_searchString);
  if (self->_muid)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:?];
    (v4[2])(v4, @"muid", v6);
  }

  else
  {
    (v4[2])(v4, @"muid");
  }

  if (self->_providerID <= 0)
  {
    (v4[2])(v4, @"providerId", 0);
  }

  else
  {
    v7 = [NSNumber numberWithInt:?];
    (v4[2])(v4, @"providerId", v7);
  }

  (v4[2])(v4, @"geoMapItem", self->_geoMapItem);
  v8 = [(GEOComposedWaypoint *)self->_composedWaypoint shortDescription];
  (v4[2])(v4, @"composedWaypoint", v8);

  (v4[2])(v4, @"findMyHandleID", self->_findMyHandleID);
  if (self->_destinationRouteData)
  {
    v9 = &__kCFBooleanTrue;
  }

  else
  {
    v9 = 0;
  }

  (v4[2])(v4, @"destinationRouteData", v9);
  v15.receiver = self;
  v15.super_class = NanoDirectionWaypoint;
  v10 = [(NanoDirectionWaypoint *)&v15 debugDescription];
  v11 = [(NanoDirectionWaypoint *)self name];
  v12 = [v3 componentsJoinedByString:{@", \n"}];
  v13 = [NSString stringWithFormat:@"%@ %@ {\n%@\n}", v10, v11, v12];

  return v13;
}

- (id)description
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100CE3258;
  v17[3] = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(v17);
  (v4[2])(v4, @"name", self->_name);
  (v4[2])(v4, @"location", self->_location);
  if (self->_currentLocation)
  {
    v5 = [NSNumber numberWithBool:1];
    (v4[2])(v4, @"currentLocation", v5);
  }

  else
  {
    (v4[2])(v4, @"currentLocation", 0);
  }

  (v4[2])(v4, @"searchString", self->_searchString);
  if (self->_muid)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:?];
    (v4[2])(v4, @"muid", v6);
  }

  else
  {
    (v4[2])(v4, @"muid");
  }

  if (self->_providerID <= 0)
  {
    (v4[2])(v4, @"providerId", 0);
  }

  else
  {
    v7 = [NSNumber numberWithInt:?];
    (v4[2])(v4, @"providerId", v7);
  }

  (v4[2])(v4, @"geoMapItem", self->_geoMapItem);
  v8 = [(GEOComposedWaypoint *)self->_composedWaypoint shortDescription];
  (v4[2])(v4, @"composedWaypoint", v8);

  (v4[2])(v4, @"findMyHandleID", self->_findMyHandleID);
  v9 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
  (v4[2])(v4, @"clientAttrbutes", v9);

  if (self->_destinationRouteData)
  {
    v10 = &__kCFBooleanTrue;
  }

  else
  {
    v10 = 0;
  }

  (v4[2])(v4, @"destinationRouteData", v10);
  v16.receiver = self;
  v16.super_class = NanoDirectionWaypoint;
  v11 = [(NanoDirectionWaypoint *)&v16 description];
  v12 = [(NanoDirectionWaypoint *)self name];
  v13 = [v3 componentsJoinedByString:{@", "}];
  v14 = [NSString stringWithFormat:@"%@ %@ (%@)", v11, v12, v13];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v9 = a3;
  [v9 encodeObject:name forKey:@"name"];
  [v9 encodeObject:self->_location forKey:@"location"];
  v5 = [NSNumber numberWithBool:self->_currentLocation];
  [v9 encodeObject:v5 forKey:@"currentLocation"];

  [v9 encodeObject:self->_searchString forKey:@"searchString"];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_muid];
  [v9 encodeObject:v6 forKey:@"muid"];

  v7 = [NSNumber numberWithInt:self->_providerID];
  [v9 encodeObject:v7 forKey:@"providerID"];

  v8 = [GEOMapItemStorage mapItemStorageForGEOMapItem:self->_geoMapItem];
  [v9 encodeObject:v8 forKey:@"geoMapItemStorage"];

  [v9 encodeObject:self->_composedWaypoint forKey:@"composedWaypoint"];
  [v9 encodeObject:self->_findMyHandleID forKey:@"findMyHandleID"];
  [v9 encodeObject:self->_destinationRouteData forKey:@"destinationRouteData"];
}

- (NanoDirectionWaypoint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NanoDirectionWaypoint *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentLocation"];
    v5->_currentLocation = [v10 BOOLValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    searchString = v5->_searchString;
    v5->_searchString = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"muid"];
    v5->_muid = [v13 unsignedLongLongValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerID"];
    v5->_providerID = [v14 intValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geoMapItemStorage"];
    geoMapItem = v5->_geoMapItem;
    v5->_geoMapItem = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"composedWaypoint"];
    composedWaypoint = v5->_composedWaypoint;
    v5->_composedWaypoint = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"findMyHandleID"];
    findMyHandleID = v5->_findMyHandleID;
    v5->_findMyHandleID = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationRouteData"];
    destinationRouteData = v5->_destinationRouteData;
    v5->_destinationRouteData = v21;
  }

  return v5;
}

- (void)cancelRefinement
{
  WeakRetained = objc_loadWeakRetained(&self->_refinementTicket);
  [WeakRetained cancel];
}

- (void)refineWithTraits:(id)a3 auditToken:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if ([(NanoDirectionWaypoint *)self isValid])
    {
      v12 = [(NanoDirectionWaypoint *)self geoMapItem];
      if (v12 || ([(NanoDirectionWaypoint *)self destinationRouteData], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = [(NanoDirectionWaypoint *)self composedWaypoint];

        if (v12)
        {

          if (v13)
          {
            goto LABEL_14;
          }
        }

        else
        {

          if (v13)
          {
            goto LABEL_14;
          }
        }

        v14 = [(NanoDirectionWaypoint *)self destinationRouteData];

        if (v14)
        {
          v15 = [GEORouteBuilder_PersistentData alloc];
          v16 = [(NanoDirectionWaypoint *)self destinationRouteData];
          v17 = [v15 initWithPersistentData:v16];

          v18 = [v17 buildRoute];
          v19 = [[GEOComposedWaypointToRoute alloc] initWithRoute:v18];
          [(NanoDirectionWaypoint *)self setComposedWaypoint:v19];
        }

        else
        {
          v20 = [GEOComposedWaypoint alloc];
          v17 = [(NanoDirectionWaypoint *)self geoMapItem];
          v18 = [v20 initWithMapItem:v17];
          [(NanoDirectionWaypoint *)self setComposedWaypoint:v18];
        }
      }

LABEL_14:
      objc_initWeak(&location, self);
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100CE3E24;
      v55[3] = &unk_101650BB0;
      objc_copyWeak(&v57, &location);
      v21 = v11;
      v56 = v21;
      v52 = objc_retainBlock(v55);
      v22 = [(NanoDirectionWaypoint *)self composedWaypoint];

      if (v22)
      {
        v23 = [(NanoDirectionWaypoint *)self composedWaypoint];
        v24 = [v23 needsAdditionalNavData];

        v25 = sub_100798A3C();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
        if (!v24)
        {
          if (v26)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Using existing composedWaypoint for refinement", buf, 2u);
          }

          v27 = [(NanoDirectionWaypoint *)self composedWaypoint];
          (*(v21 + 2))(v21, v27, 0);
          goto LABEL_49;
        }

        if (v26)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "composedWaypoint needs additional nav data", buf, 2u);
        }

        v27 = [(NanoDirectionWaypoint *)self geoMapItem];
        v28 = [GEOComposedWaypoint composedWaypointForIncompleteMapItem:v27 traits:v9 clientAttributes:0 completionHandler:v52 networkActivityHandler:0];
        objc_storeWeak(&self->_refinementTicket, v28);
      }

      else
      {
        if ([(NanoDirectionWaypoint *)self isCurrentLocation])
        {
          [v9 deviceLocation];
        }

        else
        {
          [(NanoDirectionWaypoint *)self location];
        }
        v27 = ;
        v29 = [(NanoDirectionWaypoint *)self isCurrentLocation];
        if (v27)
        {
          v30 = 0;
        }

        else
        {
          v30 = v29;
        }

        if (v30 == 1)
        {
          v31 = sub_100798A3C();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Waypoint wants current location but none found on traits", buf, 2u);
          }
        }

        v28 = [(NanoDirectionWaypoint *)self searchString];
        v32 = [(NanoDirectionWaypoint *)self muid];
        v51 = [(NanoDirectionWaypoint *)self providerID];
        v33 = [v27 latLng];
        [v33 lat];
        v35 = v34;
        v36 = [v27 latLng];
        [v36 lng];
        v38 = CLLocationCoordinate2DMake(v35, v37);

        if (v27 && CLLocationCoordinate2DIsValid(v38))
        {
          v39 = sub_100798A3C();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = [v27 latLng];
            [v40 lat];
            v42 = v41;
            v43 = [v27 latLng];
            [v43 lng];
            *buf = 134283777;
            v60 = v42;
            v61 = 2049;
            v62 = v44;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Will refine location: %{private}#.3lf,%{private}#.3lf", buf, 0x16u);
          }

          v45 = [GEOComposedWaypoint composedWaypointForCurrentLocation:v27 traits:v9 auditToken:v10 completionHandler:v52 networkActivityHandler:0];
          objc_storeWeak(&self->_refinementTicket, v45);
        }

        else if (v32)
        {
          v46 = sub_100798A3C();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 134283777;
            v60 = v32;
            v61 = 1025;
            LODWORD(v62) = v51;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Will refine ID: %{private}llu/%{private}d", buf, 0x12u);
          }

          v47 = [GEOComposedWaypoint composedWaypointForID:v32 resultsProviderID:v51 contentProvider:0 traits:v9 clientAttributes:0 completionHandler:v52 networkActivityHandler:0];
          objc_storeWeak(&self->_refinementTicket, v47);
        }

        else
        {
          v48 = sub_100798A3C();
          v49 = v48;
          if (v28)
          {
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v60 = v28;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Will refine address: %{private}@", buf, 0xCu);
            }

            v50 = [GEOComposedWaypoint composedWaypointForSearchString:v28 completionItem:0 traits:v9 clientAttributes:0 completionHandler:v52 networkActivityHandler:0];
            objc_storeWeak(&self->_refinementTicket, v50);
          }

          else
          {
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              *buf = 138477827;
              v60 = self;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Unable to refine: %{private}@", buf, 0xCu);
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100CE3EF4;
            block[3] = &unk_101661090;
            block[4] = self;
            v54 = v52;
            dispatch_async(&_dispatch_main_q, block);

            v28 = 0;
          }
        }
      }

LABEL_49:
      objc_destroyWeak(&v57);
      objc_destroyWeak(&location);
      goto LABEL_50;
    }

    (*(v11 + 2))(v11, 0, 0);
  }

LABEL_50:
}

- (void)setComposedWaypoint:(id)a3
{
  objc_storeStrong(&self->_composedWaypoint, a3);
  v5 = a3;
  v6 = [(NanoDirectionWaypoint *)self findMyHandleID];
  [(GEOComposedWaypoint *)self->_composedWaypoint setFindMyHandleID:v6];
}

- (BOOL)isValid
{
  v3 = [(NanoDirectionWaypoint *)self composedWaypoint];
  if (v3 || [(NanoDirectionWaypoint *)self isCurrentLocation])
  {
    v4 = 1;
  }

  else
  {
    v6 = [(NanoDirectionWaypoint *)self location];
    if (v6)
    {
      v4 = 1;
    }

    else
    {
      v7 = [(NanoDirectionWaypoint *)self geoMapItem];
      if (v7)
      {
        v4 = 1;
      }

      else
      {
        v8 = [(NanoDirectionWaypoint *)self searchString];
        if ([v8 length])
        {
          v4 = 1;
        }

        else
        {
          v4 = [(NanoDirectionWaypoint *)self muid]!= 0;
        }
      }
    }
  }

  return v4;
}

- (NSString)name
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(GEOComposedWaypoint *)self->_composedWaypoint name];
LABEL_5:
    v5 = v3;
    goto LABEL_6;
  }

  name = self->_name;
  if (name)
  {
    v3 = name;
    goto LABEL_5;
  }

  v7 = [(GEOComposedWaypoint *)self->_composedWaypoint geoMapItem];
  v8 = [v7 name];
  searchString = v8;
  if (v8 || (searchString = self->_searchString) != 0)
  {
    v5 = searchString;
  }

  else
  {
    v10 = [(NanoDirectionWaypoint *)self geoMapItem];
    v11 = [v10 name];
    v12 = v11;
    if (v11)
    {
      v5 = v11;
    }

    else
    {
      v13 = +[NSBundle mainBundle];
      v5 = [v13 localizedStringForKey:@"Destination [Nano value:Route Planning]" table:{@"localized string not found", 0}];
    }
  }

LABEL_6:

  return v5;
}

+ (NanoDirectionWaypoint)directionWaypointWithLabel:(id)a3 muid:(unint64_t)a4 providerID:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = objc_alloc_init(a1);
  [v9 setSearchString:v8];

  [v9 setMuid:a4];
  [v9 setProviderID:v5];

  return v9;
}

+ (NanoDirectionWaypoint)directionWaypointWithSearchString:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setSearchString:v4];

  return v5;
}

+ (NanoDirectionWaypoint)directionWaypointWithGEOMapItem:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setGeoMapItem:v4];
  v6 = [[GEOComposedWaypoint alloc] initWithMapItem:v4];

  [v5 setComposedWaypoint:v6];

  return v5;
}

+ (id)directionWaypointForLocation:(id)a3 findMyHandleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  v9 = [v6 copy];

  [v8 setFindMyHandleID:v9];
  [v8 setLocation:v7];

  return v8;
}

+ (id)directionWaypointForLocation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setLocation:v4];

  return v5;
}

+ (id)directionWaypointForCurrentLocation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setCurrentLocation:1];
  [v5 setLocation:v4];

  return v5;
}

+ (id)directionWaypointForComposedWaypoint:(id)a3
{
  v3 = a3;
  if ([v3 isCurrentLocation])
  {
    if ([v3 hasLatLng])
    {
      v4 = [GEOLocation alloc];
      v5 = [v3 latLng];
      v6 = [v4 initWithLocation:v5 isUserLocation:objc_msgSend(v3 floorOrdinal:{"isCurrentLocation"), 0x7FFFFFFFLL}];
    }

    else
    {
      v6 = 0;
    }

    v8 = [NanoDirectionWaypoint directionWaypointForCurrentLocation:v6];
  }

  else
  {
    v7 = [v3 geoMapItem];
    v8 = [NanoDirectionWaypoint directionWaypointWithGEOMapItem:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v3 route];
      v10 = [v9 persistentData];
      v11 = v8[8];
      v8[8] = v10;
    }

    v6 = [v3 findMyHandleID];
    [v8 setFindMyHandleID:v6];
  }

  return v8;
}

+ (id)directionWaypointToCustomRoute:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 persistentData];
  v6 = v4[8];
  v4[8] = v5;

  v7 = [v3 name];
  [v4 setName:v7];

  v8 = [[GEOComposedWaypointToRoute alloc] initWithRoute:v3];
  [v4 setComposedWaypoint:v8];

  return v4;
}

+ (id)directionWaypointForCompanionWaypoint:(id)a3
{
  v4 = a3;
  if ([v4 isCurrentLocation])
  {
    v5 = [v4 location];
    v6 = [a1 directionWaypointForCurrentLocation:v5];
  }

  else
  {
    v6 = objc_alloc_init(a1);
    v7 = [v4 location];
    [v6 setLocation:v7];

    v8 = [v4 mapItem];
    [v6 setGeoMapItem:v8];

    v9 = [v4 searchString];
    [v6 setSearchString:v9];

    v10 = [[GEOComposedWaypoint alloc] initWithCompanionWaypoint:v4];
    [v6 setComposedWaypoint:v10];

    v11 = [v4 findMyHandleID];
    [v6 setFindMyHandleID:v11];

    v5 = [v4 routeData];
    if (v5)
    {
      v16 = 0;
      v12 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v16];
      v13 = v16;
      v14 = v6[8];
      v6[8] = v12;
    }
  }

  return v6;
}

- (id)companionWaypoint
{
  v3 = objc_alloc_init(GEOCompanionWaypoint);
  [v3 setIsCurrentLocation:{-[NanoDirectionWaypoint isCurrentLocation](self, "isCurrentLocation")}];
  v4 = [(NanoDirectionWaypoint *)self geoMapItem];
  v5 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v4];
  [v3 setMapItem:v5];

  v6 = [(NanoDirectionWaypoint *)self composedWaypoint];
  v7 = [v6 waypoint];
  [v3 setWaypointTyped:v7];

  v8 = [(NanoDirectionWaypoint *)self searchString];
  [v3 setSearchString:v8];

  v9 = [(NanoDirectionWaypoint *)self findMyHandleID];
  [v3 setFindMyHandleID:v9];

  v10 = [(NanoDirectionWaypoint *)self destinationRouteData];

  if (v10)
  {
    v11 = [(NanoDirectionWaypoint *)self destinationRouteData];
    v14 = 0;
    v12 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v14];

    [v3 setRouteData:v12];
  }

  return v3;
}

@end