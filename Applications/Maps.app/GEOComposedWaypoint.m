@interface GEOComposedWaypoint
- (AddressBookAddress)addressBookAddress;
- (BOOL)needsAdditionalNavData;
- (BOOL)shouldOfferAlternateChargersAtArrival;
- (CNContact)contact;
- (GEOComposedWaypoint)initWithSearchResult:(id)a3;
- (MKMapItem)mkMapItem;
- (NSString)arrivingDisplayName;
- (NSString)parkingDisplayName;
- (_TtC4Maps16MapsFindMyHandle)findMyHandle;
- (id)_addressBookAttributes;
- (id)_maps_waypointImageWithScale:(double)a3;
- (id)_maps_waypointName;
- (id)hawkQueryRepresentation;
- (id)shortDescription;
- (void)clearFindMyData;
- (void)setAddressBookContactName:(id)a3;
- (void)setAddressBookContactSpokenName:(id)a3;
- (void)setUserValuesName:(id)a3;
@end

@implementation GEOComposedWaypoint

- (_TtC4Maps16MapsFindMyHandle)findMyHandle
{
  v4 = [(GEOComposedWaypoint *)self findMyHandleID];

  if (v4)
  {
    v5 = objc_getAssociatedObject(self, a2);
    if (!v5)
    {
      v6 = [_TtC4Maps16MapsFindMyHandle alloc];
      v7 = [(GEOComposedWaypoint *)self findMyHandleID];
      v5 = [(MapsFindMyHandle *)v6 initWithIdentifier:v7];

      objc_setAssociatedObject(self, a2, v5, 1);
    }

    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (AddressBookAddress)addressBookAddress
{
  v4 = [(GEOComposedWaypoint *)self mapItemStorage];
  v5 = [v4 clientAttributes];
  v6 = [v5 addressBookAttributes];
  v7 = [v6 contactIdentifier];

  v8 = [(GEOComposedWaypoint *)self mapItemStorage];
  v9 = [v8 clientAttributes];
  v10 = [v9 addressBookAttributes];
  v11 = [v10 addressIdentifier];

  v12 = 0;
  if (v7 && v11)
  {
    v13 = objc_getAssociatedObject(self, a2);
    if (!v13)
    {
      v13 = [[AddressBookAddress alloc] initWithCNContactIdentifier:v7 addressIdentifier:v11];
      objc_setAssociatedObject(self, a2, v13, 1);
    }

    v12 = v13;
  }

  return v12;
}

- (GEOComposedWaypoint)initWithSearchResult:(id)a3
{
  v4 = a3;
  if ([v4 hasExplicitlyProvidedComposedWaypoint])
  {
    v5 = [v4 composedWaypoint];
    v6 = [v5 copy];

    self = v6;
  }

  else if ([v4 type] == 3)
  {
    [v4 coordinate];
    v8 = v7;
    [v4 coordinate];
    v5 = [[GEOLocation alloc] initWithGEOCoordinate:{v8, v9}];
    v10 = [v4 mapItem];

    if (v10)
    {
      v11 = [v4 mapItem];
      v12 = [v11 _geoMapItemStorageForPersistence];
      self = [(GEOComposedWaypoint *)self initWithMapItem:v12];
    }

    else
    {
      self = [(GEOComposedWaypoint *)self initWithLocation:v5 isCurrentLocation:0];
    }

    [(GEOComposedWaypoint *)self setType:1];
    [(GEOComposedWaypoint *)self setLocation:v5];
    v16 = [v5 latLng];
    [(GEOComposedWaypoint *)self setLatLng:v16];

    v17 = objc_alloc_init(GEOWaypointTyped);
    [v17 setWaypointType:4];
    v18 = objc_alloc_init(GEOWaypointLocation);
    [v17 setWaypointLocation:v18];

    v19 = [v17 waypointLocation];
    [v19 setLocation:v5];

    [(GEOComposedWaypoint *)self setWaypoint:v17];
  }

  else
  {
    v13 = [v4 mapItem];

    if (v13)
    {
      v14 = [v4 mapItem];
      v15 = [v14 _geoMapItemStorageForPersistence];
    }

    else
    {
      v20 = [v4 place];

      if (!v20)
      {
        goto LABEL_14;
      }

      v14 = [v4 place];
      v15 = [GEOMapItemStorage mapItemStorageForPlace:v14];
    }

    v5 = v15;

    self = [(GEOComposedWaypoint *)self initWithMapItem:v5];
  }

LABEL_14:
  if ([v4 type] == 4)
  {
    [(GEOComposedWaypoint *)self setIsCurrentLocation:1];
    [(GEOComposedWaypoint *)self recomputeGeoWaypointTyped];
  }

  return self;
}

- (BOOL)shouldOfferAlternateChargersAtArrival
{
  v3 = [(GEOComposedWaypoint *)self chargingInfo];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(GEOComposedWaypoint *)self geoMapItem];
    v6 = [v5 _poiCategory];
    v4 = v6 == GEOPOICategoryEVCharger;
  }

  return v4;
}

- (id)hawkQueryRepresentation
{
  v3 = [(GEOComposedWaypoint *)self navDisplayAddress];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(GEOComposedWaypoint *)self bestLatLng];
    v7 = v6;
    if (v6)
    {
      [v6 coordinate];
      v9 = v8;
      v10 = [NSNumber numberWithDouble:?];
      v11 = [NSNumber numberWithDouble:v9];
      v12 = [NSString stringWithFormat:@"%@, %@", v10, v11];
    }

    v5 = @"<invalid>";
  }

  return v5;
}

- (id)shortDescription
{
  v16 = objc_opt_class();
  v15 = [(GEOComposedWaypoint *)self muid];
  v3 = [(GEOComposedWaypoint *)self timezone];
  v4 = [(GEOComposedWaypoint *)self location];
  v5 = [(GEOComposedWaypoint *)self name];
  v6 = [(GEOComposedWaypoint *)self navDisplayName];
  v7 = [(GEOComposedWaypoint *)self navDisplayAddress];
  v8 = [(GEOComposedWaypoint *)self directionsListAddress];
  v9 = [(GEOComposedWaypoint *)self waypointCategory];
  if (v9 >= 0xE)
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", v9];
  }

  else
  {
    v10 = *(&off_101630940 + v9);
  }

  v11 = [(GEOComposedWaypoint *)self type];
  if (v11 >= 4)
  {
    v12 = [NSString stringWithFormat:@"(unknown: %i)", v11];
  }

  else
  {
    v12 = *(&off_1016309B0 + v11);
  }

  v13 = [NSString stringWithFormat:@"<%@:%p, muid: %llu, timezone: %@, location: %@, name: %@, navDisplayName: %@, navDisplayAddress: %@, directionsListAddress: %@, waypointCategory: %@, waypointType: %@, isCurrentLocation: %d, isServerProvidedWaypoint: %d>", v16, self, v15, v3, v4, v5, v6, v7, v8, v10, v12, [(GEOComposedWaypoint *)self isCurrentLocation], [(GEOComposedWaypoint *)self isServerProvidedWaypoint]];

  return v13;
}

- (id)_maps_waypointImageWithScale:(double)a3
{
  v5 = [(GEOComposedWaypoint *)self findMyHandleID];

  if (v5)
  {
    v6 = [(GEOComposedWaypoint *)self findMyHandle];
    v7 = [v6 thumbnailIconWithScale:a3 size:{44.0, 44.0}];
    goto LABEL_12;
  }

  v8 = [(GEOComposedWaypoint *)self addressBookAddress];

  if (v8)
  {
    v6 = [(GEOComposedWaypoint *)self addressBookAddress];
    v7 = [v6 thumbnailIconWithScale:3 size:a3];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = +[GEOFeatureStyleAttributes customSavedRouteStyleAttributes];
LABEL_11:
    v6 = v9;
    v7 = [MKIconManager imageForStyle:v9 size:3 forScale:0 format:a3];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
    goto LABEL_11;
  }

  v10 = [(GEOComposedWaypoint *)self styleAttributes];

  if (v10)
  {
    v9 = [(GEOComposedWaypoint *)self styleAttributes];
    goto LABEL_11;
  }

  v6 = [(GEOComposedWaypoint *)self mkMapItem];
  v7 = [MKMapItem _maps_markerImageForMapItem:v6 scale:3 size:1 useMarkerFallback:a3];
LABEL_12:
  v11 = v7;

  return v11;
}

- (id)_maps_waypointName
{
  v3 = [(GEOComposedWaypoint *)self findMyHandleID];

  if (v3)
  {
    v4 = [(GEOComposedWaypoint *)self findMyHandle];
    v5 = [v4 displayName];
LABEL_7:
    v8 = v5;
    goto LABEL_8;
  }

  v6 = [(GEOComposedWaypoint *)self addressBookAddress];

  if (v6)
  {
    v4 = [(GEOComposedWaypoint *)self addressBookAddress];
    v5 = [v4 waypointCompositeName];
    goto LABEL_7;
  }

  v7 = [(GEOComposedWaypoint *)self name];
  if (v7)
  {
    v5 = v7;
    v4 = v5;
    goto LABEL_7;
  }

  v8 = MKLocalizedStringForUnknownLocation();
  v4 = 0;
LABEL_8:

  return v8;
}

- (BOOL)needsAdditionalNavData
{
  v3 = [(GEOComposedWaypoint *)self geoMapItem];
  v4 = [v3 _place];

  v5 = [v4 address];
  v6 = [v5 structuredAddress];

  if ([v6 hasSubThoroughfare])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 hasFullThoroughfare];
  }

  v8 = [(GEOComposedWaypoint *)self geoMapItem];
  if ([v8 _hasMUID])
  {
    v9 = [v4 hasSpokenName] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = [(GEOComposedWaypoint *)self geoMapItem];
  [v10 coordinate];
  v12 = v11;
  v14 = v13;

  if (v7)
  {
    v15 = [v4 hasSpokenAddress] ^ 1;
    v16 = [v4 entryPoints];
    v17 = [v16 count];

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v9 | (fabs(v14) > 180.0) | (v12 < -90.0 || v12 > 90.0) | v18;

  return v19 & 1;
}

- (id)_addressBookAttributes
{
  v2 = [(GEOComposedWaypoint *)self mapItemStorage];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 clientAttributes];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_opt_new();
    }

    v8 = v6;

    v9 = [v8 addressBookAttributes];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_opt_new();
    }

    v7 = v11;

    [v8 setAddressBookAttributes:v7];
    [v3 setClientAttributes:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAddressBookContactSpokenName:(id)a3
{
  v5 = [a3 copy];
  v4 = [(GEOComposedWaypoint *)self _addressBookAttributes];
  [v4 setSpokenName:v5];
}

- (void)setAddressBookContactName:(id)a3
{
  v5 = [a3 copy];
  v4 = [(GEOComposedWaypoint *)self _addressBookAttributes];
  [v4 setName:v5];
}

- (void)setUserValuesName:(id)a3
{
  v11 = a3;
  v4 = [(GEOComposedWaypoint *)self mapItemStorage];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userValues];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_opt_new();
    }

    v9 = v8;

    v10 = [v11 copy];
    [v9 setName:v10];

    [v5 setUserValues:v9];
  }
}

- (void)clearFindMyData
{
  [(GEOComposedWaypoint *)self setFindMyHandleID:0];
  [(GEOComposedWaypoint *)self setStyleAttributes:0];
  v3 = [(GEOComposedWaypoint *)self mapItemStorage];
  v4 = [v3 userValues];
  [v4 setName:0];

  v5 = [(GEOComposedWaypoint *)self mapItemStorage];
  v6 = [v5 clientAttributes];
  [v6 setAddressBookAttributes:0];

  [(GEOComposedWaypoint *)self recomputeGeoWaypointTyped];

  objc_setAssociatedObject(self, "findMyHandle", 0, 1);
}

- (CNContact)contact
{
  v3 = [(GEOComposedWaypoint *)self addressBookAddress];
  v4 = [v3 contact];

  if (!v4)
  {
    v5 = [(GEOComposedWaypoint *)self findMyHandle];
    v4 = [v5 contact];
  }

  return v4;
}

- (MKMapItem)mkMapItem
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v5 = [(GEOComposedWaypoint *)self isCurrentLocation];
    v6 = [MKMapItem alloc];
    v7 = [(GEOComposedWaypoint *)self geoMapItem];
    if (v5)
    {
      v8 = [v6 initWithGeoMapItemAsCurrentLocation:v7];
    }

    else
    {
      v8 = [v6 initWithGeoMapItem:v7 isPlaceHolderPlace:0];
    }

    v4 = v8;

    objc_setAssociatedObject(self, a2, v4, 1);
  }

  v9 = v4;

  return v9;
}

- (NSString)parkingDisplayName
{
  v3 = [(GEOComposedWaypoint *)self arrivingDisplayName];
  v4 = +[MNNavigationService sharedService];
  v5 = [v4 lastLocation];

  if (v5)
  {
    [v5 coordinate];
    [(GEOComposedWaypoint *)self coordinate];
    GEOCalculateDistance();
    v6 = [NSString _navigation_localizedStringForDistance:1 context:0 extraDetail:?];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Parking Display Address [Nav Tray Header]" value:@"localized string not found" table:0];
    v9 = [NSString stringWithFormat:v8, v6, v3];
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

- (NSString)arrivingDisplayName
{
  v3 = [(GEOComposedWaypoint *)self navDisplayName];
  v4 = [(GEOComposedWaypoint *)self findMyHandleID];

  if (v4)
  {
    v5 = [(GEOComposedWaypoint *)self findMyHandle];
    v6 = [v5 displayName];
LABEL_5:
    v8 = v6;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }

    v10 = v9;

    v3 = v10;
    goto LABEL_9;
  }

  v7 = [(GEOComposedWaypoint *)self addressBookAddress];

  if (v7)
  {
    v5 = [(GEOComposedWaypoint *)self addressBookAddress];
    v6 = [v5 waypointCompositeName];
    goto LABEL_5;
  }

LABEL_9:

  return v3;
}

@end