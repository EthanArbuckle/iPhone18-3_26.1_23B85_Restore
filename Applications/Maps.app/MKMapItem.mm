@interface MKMapItem
+ (id)_maps_markerImageForMapItem:(id)item scale:(double)scale size:(unint64_t)size useMarkerFallback:(BOOL)fallback;
+ (id)carMapItemFromDestination:(id)destination;
+ (id)searchResultsForMapItems:(id)items options:(id)options;
- (BOOL)_maps_canAddToCollections;
- (BOOL)_maps_canRenameCollectionItem;
- (BOOL)_maps_hasCustomStyleAttributes;
- (BOOL)_maps_isEVChargingStation;
- (BOOL)_maps_isHome;
- (BOOL)_maps_isHomeWorkOrSchool;
- (BOOL)_maps_isLargeAreaPlace;
- (BOOL)_maps_isParkedCar;
- (BOOL)_maps_isSchool;
- (BOOL)_maps_isWork;
- (BOOL)needsAdditionalNavData;
- (CLLocationCoordinate2D)closeUpViewCoordinate;
- (NSArray)venueAreaIdentifiers;
- (NSUUID)locationOfInterestIdentifier;
- (PersonalizedCompoundItem)personalizedCompoundItem;
- (id)_flyoverAnnouncementMessageWithDefaultTitle:(id)title;
- (id)_maps_addressFormattedAsStreetOnly;
- (id)_maps_defaultCollectionItemTitle;
- (id)_maps_detourTextForIdiom:(int64_t)idiom;
- (id)_maps_detourTextForIdiom:(int64_t)idiom travelTime:(double)time;
- (id)_maps_diffableDataSourceIdentifier;
- (id)_maps_distanceStringFromDetourInformation;
- (id)_maps_externalDeviceDictionaryRepresentation;
- (id)_maps_intentsRestaurantUsingParameters:(id)parameters;
- (id)_maps_placeAreaNameWithDefaultName:(id)name;
- (id)_maps_placeTitleWithDefaultTitle:(id)title;
- (id)_maps_stateAndCountry;
- (id)_maps_styleAttributesForMapItem;
- (id)notificationDisplayName;
- (void)setPersonalizedCompoundItem:(id)item;
- (void)updateModel:(id)model;
@end

@implementation MKMapItem

- (PersonalizedCompoundItem)personalizedCompoundItem
{
  v2 = objc_getAssociatedObject(self, &off_101929320);
  item = [v2 item];

  return item;
}

- (void)setPersonalizedCompoundItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    value = objc_alloc_init(_WeakPersonalizedCompoundItem);
    [(_WeakPersonalizedCompoundItem *)value setItem:itemCopy];
  }

  else
  {
    value = 0;
  }

  objc_setAssociatedObject(self, &off_101929320, value, 1);
}

- (id)_maps_addressFormattedAsStreetOnly
{
  _addressFormattedAsStreetOnly = [(MKMapItem *)self _addressFormattedAsStreetOnly];
  v4 = _addressFormattedAsStreetOnly;
  if (_addressFormattedAsStreetOnly)
  {
    _addressFormattedAsName = _addressFormattedAsStreetOnly;
  }

  else
  {
    _addressFormattedAsName = [(MKMapItem *)self _addressFormattedAsName];
  }

  v6 = _addressFormattedAsName;

  return v6;
}

- (void)updateModel:(id)model
{
  modelCopy = model;
  name = [(MKMapItem *)self name];
  [modelCopy setFirstLine:name];

  if (([(MKMapItem *)self _hasUserRatingScore]& 1) != 0)
  {
    [(MKMapItem *)self _normalizedUserRatingScore];
    v5 = [NSNumber numberWithFloat:?];
    [modelCopy setRating:v5];
  }

  else
  {
    [modelCopy setRating:0];
  }

  if (([(MKMapItem *)self _hasChargerNumberString]& 1) != 0)
  {
    _chargerNumberString = [(MKMapItem *)self _chargerNumberString];
    [modelCopy setChargerNumberString:_chargerNumberString];
  }

  else
  {
    [modelCopy setChargerNumberString:0];
  }

  _maps_addressFormattedAsStreetOnly = [(MKMapItem *)self _maps_addressFormattedAsStreetOnly];
  [modelCopy setSecondLine:_maps_addressFormattedAsStreetOnly];

  [modelCopy setMapItem:self];
  [modelCopy setDebugSubtitle:@"[MapItem]"];
}

- (id)_maps_externalDeviceDictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  name = [(MKMapItem *)self name];
  if (name)
  {
    [v3 setObject:name forKeyedSubscript:@"DisplayName"];
  }

  placemark = [(MKMapItem *)self placemark];
  if (placemark && (v6 = placemark, -[MKMapItem placemark](self, "placemark"), v7 = objc_claimAutoreleasedReturnValue(), [v7 coordinate], v8 = CLLocationCoordinate2DIsValid(v51), v7, v6, v8))
  {
    placemark2 = [(MKMapItem *)self placemark];
    [placemark2 coordinate];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    [(MKMapItem *)self _coordinate];
    v11 = v14;
    v13 = v15;
  }

  v52.latitude = v11;
  v52.longitude = v13;
  if (CLLocationCoordinate2DIsValid(v52))
  {
    placemark3 = [(MKMapItem *)self placemark];
    [placemark3 coordinate];
    v17 = [NSNumber numberWithDouble:?];
    v49[0] = v17;
    placemark4 = [(MKMapItem *)self placemark];
    [placemark4 coordinate];
    v20 = [NSNumber numberWithDouble:v19];
    v49[1] = v20;
    v21 = [NSArray arrayWithObjects:v49 count:2];

    [v3 setObject:v21 forKeyedSubscript:@"CenterCoordinate"];
  }

  _geoAddress = [(MKMapItem *)self _geoAddress];
  formattedAddressLines = [_geoAddress formattedAddressLines];
  if (formattedAddressLines)
  {
    [v3 setObject:formattedAddressLines forKeyedSubscript:@"Address"];
  }

  v42 = v3;
  place = [(MKMapItem *)self place];
  entryPoints = [place entryPoints];

  v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [entryPoints count]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v26 = entryPoints;
  v27 = [v26 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v44;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v43 + 1) + 8 * i);
        [v31 lat];
        v32 = [NSNumber numberWithDouble:?];
        v47[0] = v32;
        [v31 lng];
        v33 = [NSNumber numberWithDouble:?];
        v47[1] = v33;
        v34 = [NSArray arrayWithObjects:v47 count:2];
        [v25 addObject:v34];
      }

      v28 = [v26 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v28);
  }

  [v42 setObject:v25 forKeyedSubscript:@"EntryPoints"];
  v35 = +[NSLocale currentLocale];
  v36 = [v35 objectForKey:NSLocaleLanguageCode];
  [v42 setObject:v36 forKeyedSubscript:@"Locale"];
  GEOConfigGetDouble();
  v37 = [NSNumber numberWithDouble:?];
  [v42 setObject:v37 forKeyedSubscript:@"CoordinateThreshold"];

  v38 = [v42 copy];

  return v38;
}

- (id)notificationDisplayName
{
  v3 = [NSMutableArray arrayWithCapacity:2];
  placemark = [(MKMapItem *)self placemark];
  name = [placemark name];
  if (name)
  {
    v6 = name;
    placemark2 = [(MKMapItem *)self placemark];
    locality = [placemark2 locality];

    if (locality)
    {
      placemark3 = [(MKMapItem *)self placemark];
      name2 = [placemark3 name];
      [v3 addObject:name2];

      placemark4 = [(MKMapItem *)self placemark];
      locality2 = [placemark4 locality];
      [v3 addObject:locality2];

      goto LABEL_14;
    }
  }

  else
  {
  }

  placemark5 = [(MKMapItem *)self placemark];
  name3 = [placemark5 name];

  if (name3)
  {
    placemark6 = [(MKMapItem *)self placemark];
    name4 = [placemark6 name];
    [v3 addObject:name4];
  }

  placemark7 = [(MKMapItem *)self placemark];
  thoroughfare = [placemark7 thoroughfare];

  if (thoroughfare)
  {
    placemark8 = [(MKMapItem *)self placemark];
    thoroughfare2 = [placemark8 thoroughfare];
    [v3 addObject:thoroughfare2];
  }

  placemark9 = [(MKMapItem *)self placemark];
  locality3 = [placemark9 locality];

  if (locality3)
  {
    placemark10 = [(MKMapItem *)self placemark];
    locality4 = [placemark10 locality];
    [v3 addObject:locality4];
  }

  placemark11 = [(MKMapItem *)self placemark];
  administrativeArea = [placemark11 administrativeArea];

  if (administrativeArea)
  {
    placemark12 = [(MKMapItem *)self placemark];
    administrativeArea2 = [placemark12 administrativeArea];
    [v3 addObject:administrativeArea2];
  }

  [v3 trimToLength:2];
LABEL_14:
  if (![v3 count])
  {
    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"Unknown Location [Report an Issue notification]" value:@"localized string not found" table:0];
    [v3 addObject:v30];
  }

  v31 = [v3 componentsJoinedByString:{@", \n"}];

  return v31;
}

- (NSArray)venueAreaIdentifiers
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _venueInfo = [_geoMapItem _venueInfo];

  venueIdentifier = [_venueInfo venueIdentifier];
  if (venueIdentifier)
  {
    v22 = _venueInfo;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = venueIdentifier;
    obj = [venueIdentifier componentIdentifiers];
    v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v26;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          floorInfo = [v10 floorInfo];

          if (floorInfo)
          {
            if ([v10 _hasBuildingID])
            {
              v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 buildingID]);
            }

            else
            {
              v12 = 0;
            }

            floorInfo2 = [v10 floorInfo];
            v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [floorInfo2 levelID]);

            floorInfo3 = [v10 floorInfo];
            v16 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [floorInfo3 ordinal]);

            v17 = -[VenueAreaIdentifier initWithVenueID:buildingID:levelID:floorOrdinal:]([VenueAreaIdentifier alloc], "initWithVenueID:buildingID:levelID:floorOrdinal:", [v24 venueID], v12, v14, v16);
            v18 = v17;
            if (v7)
            {
              [v7 addObject:v17];
            }

            else
            {
              v29 = v17;
              v19 = [NSArray arrayWithObjects:&v29 count:1];
              v7 = [v19 mutableCopy];
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v20 = [v7 copy];
    _venueInfo = v22;
    venueIdentifier = v24;
  }

  else
  {
    v7 = 0;
    v20 = 0;
  }

  return v20;
}

- (id)_maps_stateAndCountry
{
  place = [(MKMapItem *)self place];
  address = [place address];
  structuredAddress = [address structuredAddress];

  v5 = objc_alloc_init(NSMutableDictionary);
  administrativeArea = [structuredAddress administrativeArea];
  if (![administrativeArea length])
  {
    administrativeAreaCode = [structuredAddress administrativeAreaCode];

    administrativeArea = administrativeAreaCode;
  }

  if ([administrativeArea length])
  {
    [v5 setObject:administrativeArea forKeyedSubscript:@"State"];
  }

  if (!qword_10195E038)
  {
    v8 = CFLocaleCopyCurrent();
    v9 = [CFLocaleGetValue(v8 kCFLocaleCountryCode)];
    v10 = qword_10195E038;
    qword_10195E038 = v9;

    CFRelease(v8);
  }

  countryCode = [structuredAddress countryCode];
  lowercaseString = [countryCode lowercaseString];

  if (([lowercaseString isEqualToString:qword_10195E038] & 1) == 0)
  {
    country = [structuredAddress country];
    if ([country length])
    {
      [v5 setObject:country forKeyedSubscript:@"Country"];
    }
  }

  v14 = MKAddressStringForAddressDictionary();

  return v14;
}

- (id)_maps_placeAreaNameWithDefaultName:(id)name
{
  nameCopy = name;
  place = [(MKMapItem *)self place];
  type = [place type];
  _maps_stateAndCountry = 0;
  if (type <= 0x2B)
  {
    if (((1 << type) & 0x80000010010) != 0)
    {
      _maps_stateAndCountry = [(MKMapItem *)self _maps_stateAndCountry];
    }

    else if (((1 << type) & 6) != 0)
    {
      address = [place address];
      structuredAddress = [address structuredAddress];
      _maps_stateAndCountry = [structuredAddress country];

      if (![_maps_stateAndCountry length])
      {
        address2 = [place address];
        structuredAddress2 = [address2 structuredAddress];
        countryCode = [structuredAddress2 countryCode];

        _maps_stateAndCountry = countryCode;
      }
    }
  }

  if ([_maps_stateAndCountry length])
  {
    v13 = _maps_stateAndCountry;
  }

  else
  {
    v13 = nameCopy;
  }

  v14 = v13;

  return v13;
}

- (id)_maps_placeTitleWithDefaultTitle:(id)title
{
  titleCopy = title;
  place = [(MKMapItem *)self place];
  type = [place type];

  place2 = [(MKMapItem *)self place];
  address = [place2 address];
  structuredAddress = [address structuredAddress];

  if (type == 43)
  {
    subLocality = [structuredAddress subLocality];
    goto LABEL_5;
  }

  if (type == 16)
  {
    subLocality = [(MKMapItem *)self _addressFormattedAsCity];
LABEL_5:
    v11 = subLocality;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  if ([v11 length])
  {
    v12 = v11;
  }

  else
  {
    v12 = titleCopy;
  }

  v13 = v12;

  return v12;
}

- (BOOL)_maps_isEVChargingStation
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _poiCategory = [_geoMapItem _poiCategory];
  v4 = [_poiCategory isEqual:GEOPOICategoryEVCharger];

  return v4;
}

- (BOOL)_maps_isLargeAreaPlace
{
  place = [(MKMapItem *)self place];
  type = [place type];

  return (type < 0x3E) & (0x2001580000010016uLL >> type);
}

- (id)_maps_distanceStringFromDetourInformation
{
  _detourInfo = [(MKMapItem *)self _detourInfo];

  if (_detourInfo)
  {
    _detourInfo2 = [(MKMapItem *)self _detourInfo];
    [_detourInfo2 distanceToPlace];
    v6 = v5;

    if (v6 <= 50.0)
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"Less than %@" value:@"localized string not found" table:0];
      v10 = [NSString _navigation_localizedStringForDistance:0 detail:1 unitFormat:0 locale:0 useMetric:0 useYards:50.0];
      v7 = [NSString stringWithFormat:v9, v10];
    }

    else
    {
      v7 = [NSString _navigation_localizedStringForDistance:0 detail:1 unitFormat:0 locale:0 useMetric:0 useYards:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_maps_detourTextForIdiom:(int64_t)idiom travelTime:(double)time
{
  v4 = [NSString _navigation_stringForExpectedTravelTime:2 dateUnitStyle:time];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Adds %@" value:@"localized string not found" table:0];
  v7 = [NSString localizedStringWithFormat:v6, v4];

  return v7;
}

- (id)_maps_detourTextForIdiom:(int64_t)idiom
{
  _detourInfo = [(MKMapItem *)self _detourInfo];
  [_detourInfo detourTime];
  v6 = 60.0;
  if (v7 > 60.0)
  {
    _detourInfo2 = [(MKMapItem *)self _detourInfo];
    [_detourInfo2 detourTime];
    v6 = v9;
  }

  _detourInfo3 = [(MKMapItem *)self _detourInfo];

  if (_detourInfo3)
  {
    v11 = [(MKMapItem *)self _maps_detourTextForIdiom:idiom travelTime:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSUUID)locationOfInterestIdentifier
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _clientAttributes = [_geoMapItem _clientAttributes];
  routineAttributes = [_clientAttributes routineAttributes];
  loiIdentifier = [routineAttributes loiIdentifier];

  return loiIdentifier;
}

- (id)_maps_defaultCollectionItemTitle
{
  _styleAttributes = [(MKMapItem *)self _styleAttributes];
  isLabelPOI = [_styleAttributes isLabelPOI];

  if (isLabelPOI)
  {
    [(MKMapItem *)self _addressFormattedAsName];
  }

  else
  {
    [(MKMapItem *)self name];
  }
  v5 = ;

  return v5;
}

- (BOOL)_maps_canRenameCollectionItem
{
  _styleAttributes = [(MKMapItem *)self _styleAttributes];
  isLabelPOI = [_styleAttributes isLabelPOI];

  if (isLabelPOI)
  {
    return 0;
  }

  if (([(MKMapItem *)self _isMapItemTypeAddress]& 1) != 0)
  {
    return 1;
  }

  return [(MKMapItem *)self _isMapItemTypeUnknown];
}

- (BOOL)_maps_canAddToCollections
{
  if ([(MKMapItem *)self _hasMUID]&& [(MKMapItem *)self _muid])
  {
    return 1;
  }

  _styleAttributes = [(MKMapItem *)self _styleAttributes];
  isLabelPOI = [_styleAttributes isLabelPOI];

  return isLabelPOI ^ 1;
}

- (BOOL)_maps_isParkedCar
{
  v3 = +[ParkedCarManager sharedManager];
  parkedCar = [v3 parkedCar];

  if (parkedCar)
  {
    mapItem = [parkedCar mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    _geoMapItem2 = [(MKMapItem *)self _geoMapItem];
    IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();
  }

  else
  {
    IsEqualToMapItemForPurpose = 0;
  }

  return IsEqualToMapItemForPurpose;
}

- (BOOL)_maps_isSchool
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _clientAttributes = [_geoMapItem _clientAttributes];

  if (!_clientAttributes)
  {
LABEL_14:
    v15 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    addressBookAttributes = [v15 shortcutForMapItem:self];

    if (!addressBookAttributes || ([addressBookAttributes isHidden] & 1) != 0 || objc_msgSend(addressBookAttributes, "type") != 5)
    {
      v14 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v14 = 1;
LABEL_19:

    goto LABEL_20;
  }

  addressBookAttributes = [_clientAttributes addressBookAttributes];
  isMe = [addressBookAttributes isMe];
  if (isMe)
  {
    addressBookAttributes2 = [_clientAttributes addressBookAttributes];
    if ([addressBookAttributes2 addressType] == 3)
    {

      goto LABEL_17;
    }
  }

  mapsSyncAttributes = [_clientAttributes mapsSyncAttributes];
  if (mapsSyncAttributes)
  {
    mapsSyncAttributes2 = [_clientAttributes mapsSyncAttributes];
    if ([mapsSyncAttributes2 secondaryObjectType] == 3)
    {
      v10 = 1;
      goto LABEL_10;
    }
  }

  routineAttributes = [_clientAttributes routineAttributes];
  if (routineAttributes)
  {
    v12 = routineAttributes;
    routineAttributes2 = [_clientAttributes routineAttributes];
    v10 = [routineAttributes2 loiType] == 3;

    if (mapsSyncAttributes)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    if (mapsSyncAttributes)
    {
LABEL_10:

      if ((isMe & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (isMe)
  {
LABEL_11:
  }

LABEL_12:

  if (!v10)
  {
    goto LABEL_14;
  }

  v14 = 1;
LABEL_20:

  return v14;
}

- (BOOL)_maps_isWork
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _clientAttributes = [_geoMapItem _clientAttributes];

  if (!_clientAttributes)
  {
LABEL_14:
    v15 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    addressBookAttributes = [v15 shortcutForMapItem:self];

    if (!addressBookAttributes || ([addressBookAttributes isHidden] & 1) != 0 || objc_msgSend(addressBookAttributes, "type") != 3)
    {
      v14 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v14 = 1;
LABEL_19:

    goto LABEL_20;
  }

  addressBookAttributes = [_clientAttributes addressBookAttributes];
  isMe = [addressBookAttributes isMe];
  if (isMe)
  {
    addressBookAttributes2 = [_clientAttributes addressBookAttributes];
    if ([addressBookAttributes2 addressType] == 2)
    {

      goto LABEL_17;
    }
  }

  mapsSyncAttributes = [_clientAttributes mapsSyncAttributes];
  if (mapsSyncAttributes)
  {
    mapsSyncAttributes2 = [_clientAttributes mapsSyncAttributes];
    if ([mapsSyncAttributes2 secondaryObjectType] == 2)
    {
      v10 = 1;
      goto LABEL_10;
    }
  }

  routineAttributes = [_clientAttributes routineAttributes];
  if (routineAttributes)
  {
    v12 = routineAttributes;
    routineAttributes2 = [_clientAttributes routineAttributes];
    v10 = [routineAttributes2 loiType] == 2;

    if (mapsSyncAttributes)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    if (mapsSyncAttributes)
    {
LABEL_10:

      if ((isMe & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (isMe)
  {
LABEL_11:
  }

LABEL_12:

  if (!v10)
  {
    goto LABEL_14;
  }

  v14 = 1;
LABEL_20:

  return v14;
}

- (BOOL)_maps_isHome
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _clientAttributes = [_geoMapItem _clientAttributes];

  if (!_clientAttributes)
  {
LABEL_14:
    v15 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    addressBookAttributes = [v15 shortcutForMapItem:self];

    if (!addressBookAttributes || ([addressBookAttributes isHidden] & 1) != 0 || objc_msgSend(addressBookAttributes, "type") != 2)
    {
      v14 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v14 = 1;
LABEL_19:

    goto LABEL_20;
  }

  addressBookAttributes = [_clientAttributes addressBookAttributes];
  isMe = [addressBookAttributes isMe];
  if (isMe)
  {
    addressBookAttributes2 = [_clientAttributes addressBookAttributes];
    if ([addressBookAttributes2 addressType] == 1)
    {

      goto LABEL_17;
    }
  }

  mapsSyncAttributes = [_clientAttributes mapsSyncAttributes];
  if (mapsSyncAttributes)
  {
    mapsSyncAttributes2 = [_clientAttributes mapsSyncAttributes];
    if ([mapsSyncAttributes2 secondaryObjectType] == 1)
    {
      v10 = 1;
      goto LABEL_10;
    }
  }

  routineAttributes = [_clientAttributes routineAttributes];
  if (routineAttributes)
  {
    v12 = routineAttributes;
    routineAttributes2 = [_clientAttributes routineAttributes];
    v10 = [routineAttributes2 loiType] == 1;

    if (mapsSyncAttributes)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    if (mapsSyncAttributes)
    {
LABEL_10:

      if ((isMe & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (isMe)
  {
LABEL_11:
  }

LABEL_12:

  if (!v10)
  {
    goto LABEL_14;
  }

  v14 = 1;
LABEL_20:

  return v14;
}

- (BOOL)_maps_isHomeWorkOrSchool
{
  if ([(MKMapItem *)self _maps_isHome]|| [(MKMapItem *)self _maps_isWork])
  {
    return 1;
  }

  return [(MKMapItem *)self _maps_isSchool];
}

- (BOOL)_maps_hasCustomStyleAttributes
{
  if ([(MKMapItem *)self _maps_isHomeWorkOrSchool])
  {
    return 1;
  }

  return [(MKMapItem *)self _maps_isParkedCar];
}

- (id)_maps_styleAttributesForMapItem
{
  if ([(MKMapItem *)self _maps_isParkedCar])
  {
    v3 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
  }

  else if ([(MKMapItem *)self _maps_isHome])
  {
    v3 = +[GEOFeatureStyleAttributes homeStyleAttributes];
  }

  else if ([(MKMapItem *)self _maps_isWork])
  {
    v3 = +[GEOFeatureStyleAttributes workStyleAttributes];
  }

  else
  {
    if ([(MKMapItem *)self _maps_isSchool])
    {
      +[GEOFeatureStyleAttributes schoolStyleAttributes];
    }

    else
    {
      [(MKMapItem *)self _styleAttributes];
    }
    v3 = ;
  }

  return v3;
}

+ (id)_maps_markerImageForMapItem:(id)item scale:(double)scale size:(unint64_t)size useMarkerFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  itemCopy = item;
  if (![itemCopy _maps_hasCustomStyleAttributes] || (objc_msgSend(itemCopy, "_maps_styleAttributesForMapItem"), v10 = objc_claimAutoreleasedReturnValue(), +[MKIconManager imageForStyle:size:forScale:format:](MKIconManager, "imageForStyle:size:forScale:format:", v10, size, 0, scale), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v11 = [MKIconManager imageForMapItem:itemCopy size:size forScale:0 format:0 fallbackToBundleIcon:scale];
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = !fallbackCopy;
    }

    if (!v12)
    {
      v13 = +[GEOFeatureStyleAttributes markerStyleAttributes];
      v11 = [MKIconManager imageForStyle:v13 size:size forScale:0 format:scale];
    }

    if (v11)
    {
      v14 = 1;
    }

    else
    {
      v14 = !fallbackCopy;
    }

    if (!v14)
    {
      v11 = [UIImage imageNamed:@"Pin-Circle"];
    }
  }

  return v11;
}

- (id)_maps_intentsRestaurantUsingParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = objc_opt_new();
  vendorId = [parametersCopy vendorId];
  [v5 setVendorIdentifier:vendorId];

  externalItemId = [parametersCopy externalItemId];

  [v5 setRestaurantIdentifier:externalItemId];
  name = [(MKMapItem *)self name];
  [v5 setName:name];

  placemark = [(MKMapItem *)self placemark];
  location = [placemark location];
  [v5 setLocation:location];

  return v5;
}

- (BOOL)needsAdditionalNavData
{
  place = [(MKMapItem *)self place];
  address = [place address];
  structuredAddress = [address structuredAddress];

  if ([structuredAddress hasSubThoroughfare])
  {
    hasFullThoroughfare = 1;
  }

  else
  {
    hasFullThoroughfare = [structuredAddress hasFullThoroughfare];
  }

  if ([(MKMapItem *)self _hasMUID])
  {
    v7 = [place hasSpokenName] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  [(MKMapItem *)self _coordinate];
  v9 = v8;
  v11 = v10;
  if (hasFullThoroughfare)
  {
    v12 = [place hasSpokenAddress] ^ 1;
    entryPoints = [place entryPoints];
    v14 = [entryPoints count];

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v7 | (fabs(v11) > 180.0) | (v9 < -90.0 || v9 > 90.0) | v15;

  return v16 & 1;
}

+ (id)searchResultsForMapItems:(id)items options:(id)options
{
  itemsCopy = items;
  optionsCopy = options;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = itemsCopy;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    v25 = MKLaunchOptionsURLKey;
    v11 = MKLaunchOptionsReferralIdentifierKey;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        if ([v13 isCurrentLocation])
        {
          v14 = +[SearchResult currentLocationSearchResult];
          if (v14)
          {
            goto LABEL_15;
          }
        }

        else
        {
          _geoMapItem = [v13 _geoMapItem];
          addressObject = [_geoMapItem addressObject];

          v17 = v13;
          if (addressObject)
          {
            v18 = +[AddressBookManager sharedManager];
            v19 = [v18 addressForAddressObject:addressObject];

            if (v19)
            {
              geocodedMapItem = [v19 geocodedMapItem];

              if (geocodedMapItem)
              {
                geocodedMapItem2 = [v19 geocodedMapItem];

                v17 = geocodedMapItem2;
              }
            }
          }

          v14 = [[SearchResult alloc] initWithMapItem:v17];
          [(SearchResult *)v14 setOriginatedFromExternal:1];
          v22 = [optionsCopy objectForKeyedSubscript:v25];
          [(SearchResult *)v14 setSourceURL:v22];

          v23 = [optionsCopy objectForKeyedSubscript:v11];
          [(SearchResult *)v14 setSourceApplication:v23];

          if (v14)
          {
LABEL_15:
            [v7 addObject:v14];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  return v7;
}

- (CLLocationCoordinate2D)closeUpViewCoordinate
{
  [(MKMapItem *)self _coordinate];
  latitude = v3;
  longitude = v5;
  if ([(MKMapItem *)self _hasLookAroundStorefront])
  {
    _geoMapItem = [(MKMapItem *)self _geoMapItem];
    _storefrontPresentationInfo = [_geoMapItem _storefrontPresentationInfo];

    closeUpView = [_storefrontPresentationInfo closeUpView];
    v10 = closeUpView;
    if (closeUpView)
    {
      [closeUpView lookAt];
    }

    GEOLocationCoordinate2DFromOrientedPosition();
    v13 = CLLocationCoordinate2DMake(v11, v12);
    latitude = v13.latitude;
    longitude = v13.longitude;
  }

  v14 = latitude;
  v15 = longitude;
  result.longitude = v15;
  result.latitude = v14;
  return result;
}

+ (id)carMapItemFromDestination:(id)destination
{
  destinationCopy = destination;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mapItem = destinationCopy;
LABEL_5:
    mKMapItem = mapItem;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mapItem = [destinationCopy mapItem];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = destinationCopy;
    mKMapItem = [v7 MKMapItem];

    if (mKMapItem)
    {
      v8 = [[MapsLocationOfInterest alloc] initWithMapsSuggestionEntry:v7];
LABEL_15:
      v9 = v8;
      mKMapItem = [(MapsLocationOfInterest *)v8 mapItem];
LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = destinationCopy;
    mKMapItem = [v7 mkMapItem];

    if (mKMapItem)
    {
      v8 = [[MapsLocationOfInterest alloc] initWithMapsFavoriteItem:v7];
      goto LABEL_15;
    }

LABEL_17:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mapItem = [destinationCopy geocodedMapItem];
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([destinationCopy conformsToProtocol:&OBJC_PROTOCOL___GEOMapItem])
    {
      mapItem = [[MKMapItem alloc] initWithGeoMapItem:destinationCopy isPlaceHolderPlace:0];
      goto LABEL_5;
    }

    v13 = destinationCopy;
    v14 = &OBJC_PROTOCOL___MSPHistoryEntryRoute;
    objc_opt_class();
    v7 = v13;
    if (objc_opt_isKindOfClass())
    {
      v15 = v7;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16 && ([v16 historyEntry], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "conformsToProtocol:", v14), v17, v18))
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v21 = 0;
      historyEntry = [(MapsLocationOfInterest *)v9 historyEntry];
      [SearchResult newStartWaypointSearchResult:0 endWaypointSearchResult:&v21 forRouteHistoryEntry:historyEntry];
      v20 = v21;

      mKMapItem = [v20 mapItem];
    }

    else
    {
      mKMapItem = 0;
    }

    goto LABEL_16;
  }

  v10 = destinationCopy;
  v11 = [MKMapItem alloc];
  geoMapItem = [v10 geoMapItem];

  mKMapItem = [v11 initWithGeoMapItem:geoMapItem isPlaceHolderPlace:0];
LABEL_6:

  return mKMapItem;
}

- (id)_maps_diffableDataSourceIdentifier
{
  if ([(MKMapItem *)self isCurrentLocation])
  {
    _maps_diffableDataSourceIdentifier = @"CurrentLocation";
  }

  else
  {
    _identifier = [(MKMapItem *)self _identifier];
    v5 = _identifier;
    if (_identifier)
    {
      _maps_diffableDataSourceIdentifier = [_identifier _maps_diffableDataSourceIdentifier];
    }

    else
    {
      [(MKMapItem *)self _coordinate];
      _maps_diffableDataSourceIdentifier = 0;
      if (fabs(v7) <= 180.0 && v6 >= -90.0 && v6 <= 90.0)
      {
        v8 = [NSString stringWithFormat:@"%+.8f, %+.8f", *&v6, *&v7];
        _maps_diffableDataSourceIdentifier = [NSString stringWithFormat:@"MarkedLocation(%@)", v8];
      }
    }
  }

  return _maps_diffableDataSourceIdentifier;
}

- (id)_flyoverAnnouncementMessageWithDefaultTitle:(id)title
{
  titleCopy = title;
  _flyoverAnnouncementMessage = [(MKMapItem *)self _flyoverAnnouncementMessage];
  if (!_flyoverAnnouncementMessage)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"3D Flyover Tour" value:@"localized string not found" table:0];
    _flyoverAnnouncementMessage = [NSString stringWithFormat:@"%@ - %@", v7, titleCopy];
  }

  return _flyoverAnnouncementMessage;
}

@end