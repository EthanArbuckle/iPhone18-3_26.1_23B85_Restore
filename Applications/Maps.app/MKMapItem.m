@interface MKMapItem
+ (id)_maps_markerImageForMapItem:(id)a3 scale:(double)a4 size:(unint64_t)a5 useMarkerFallback:(BOOL)a6;
+ (id)carMapItemFromDestination:(id)a3;
+ (id)searchResultsForMapItems:(id)a3 options:(id)a4;
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
- (id)_flyoverAnnouncementMessageWithDefaultTitle:(id)a3;
- (id)_maps_addressFormattedAsStreetOnly;
- (id)_maps_defaultCollectionItemTitle;
- (id)_maps_detourTextForIdiom:(int64_t)a3;
- (id)_maps_detourTextForIdiom:(int64_t)a3 travelTime:(double)a4;
- (id)_maps_diffableDataSourceIdentifier;
- (id)_maps_distanceStringFromDetourInformation;
- (id)_maps_externalDeviceDictionaryRepresentation;
- (id)_maps_intentsRestaurantUsingParameters:(id)a3;
- (id)_maps_placeAreaNameWithDefaultName:(id)a3;
- (id)_maps_placeTitleWithDefaultTitle:(id)a3;
- (id)_maps_stateAndCountry;
- (id)_maps_styleAttributesForMapItem;
- (id)notificationDisplayName;
- (void)setPersonalizedCompoundItem:(id)a3;
- (void)updateModel:(id)a3;
@end

@implementation MKMapItem

- (PersonalizedCompoundItem)personalizedCompoundItem
{
  v2 = objc_getAssociatedObject(self, &off_101929320);
  v3 = [v2 item];

  return v3;
}

- (void)setPersonalizedCompoundItem:(id)a3
{
  if (a3)
  {
    v4 = a3;
    value = objc_alloc_init(_WeakPersonalizedCompoundItem);
    [(_WeakPersonalizedCompoundItem *)value setItem:v4];
  }

  else
  {
    value = 0;
  }

  objc_setAssociatedObject(self, &off_101929320, value, 1);
}

- (id)_maps_addressFormattedAsStreetOnly
{
  v3 = [(MKMapItem *)self _addressFormattedAsStreetOnly];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MKMapItem *)self _addressFormattedAsName];
  }

  v6 = v5;

  return v6;
}

- (void)updateModel:(id)a3
{
  v8 = a3;
  v4 = [(MKMapItem *)self name];
  [v8 setFirstLine:v4];

  if (([(MKMapItem *)self _hasUserRatingScore]& 1) != 0)
  {
    [(MKMapItem *)self _normalizedUserRatingScore];
    v5 = [NSNumber numberWithFloat:?];
    [v8 setRating:v5];
  }

  else
  {
    [v8 setRating:0];
  }

  if (([(MKMapItem *)self _hasChargerNumberString]& 1) != 0)
  {
    v6 = [(MKMapItem *)self _chargerNumberString];
    [v8 setChargerNumberString:v6];
  }

  else
  {
    [v8 setChargerNumberString:0];
  }

  v7 = [(MKMapItem *)self _maps_addressFormattedAsStreetOnly];
  [v8 setSecondLine:v7];

  [v8 setMapItem:self];
  [v8 setDebugSubtitle:@"[MapItem]"];
}

- (id)_maps_externalDeviceDictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(MKMapItem *)self name];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"DisplayName"];
  }

  v5 = [(MKMapItem *)self placemark];
  if (v5 && (v6 = v5, -[MKMapItem placemark](self, "placemark"), v7 = objc_claimAutoreleasedReturnValue(), [v7 coordinate], v8 = CLLocationCoordinate2DIsValid(v51), v7, v6, v8))
  {
    v9 = [(MKMapItem *)self placemark];
    [v9 coordinate];
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
    v16 = [(MKMapItem *)self placemark];
    [v16 coordinate];
    v17 = [NSNumber numberWithDouble:?];
    v49[0] = v17;
    v18 = [(MKMapItem *)self placemark];
    [v18 coordinate];
    v20 = [NSNumber numberWithDouble:v19];
    v49[1] = v20;
    v21 = [NSArray arrayWithObjects:v49 count:2];

    [v3 setObject:v21 forKeyedSubscript:@"CenterCoordinate"];
  }

  v41 = [(MKMapItem *)self _geoAddress];
  v22 = [v41 formattedAddressLines];
  if (v22)
  {
    [v3 setObject:v22 forKeyedSubscript:@"Address"];
  }

  v42 = v3;
  v23 = [(MKMapItem *)self place];
  v24 = [v23 entryPoints];

  v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v24 count]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v26 = v24;
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
  v4 = [(MKMapItem *)self placemark];
  v5 = [v4 name];
  if (v5)
  {
    v6 = v5;
    v7 = [(MKMapItem *)self placemark];
    v8 = [v7 locality];

    if (v8)
    {
      v9 = [(MKMapItem *)self placemark];
      v10 = [v9 name];
      [v3 addObject:v10];

      v11 = [(MKMapItem *)self placemark];
      v12 = [v11 locality];
      [v3 addObject:v12];

      goto LABEL_14;
    }
  }

  else
  {
  }

  v13 = [(MKMapItem *)self placemark];
  v14 = [v13 name];

  if (v14)
  {
    v15 = [(MKMapItem *)self placemark];
    v16 = [v15 name];
    [v3 addObject:v16];
  }

  v17 = [(MKMapItem *)self placemark];
  v18 = [v17 thoroughfare];

  if (v18)
  {
    v19 = [(MKMapItem *)self placemark];
    v20 = [v19 thoroughfare];
    [v3 addObject:v20];
  }

  v21 = [(MKMapItem *)self placemark];
  v22 = [v21 locality];

  if (v22)
  {
    v23 = [(MKMapItem *)self placemark];
    v24 = [v23 locality];
    [v3 addObject:v24];
  }

  v25 = [(MKMapItem *)self placemark];
  v26 = [v25 administrativeArea];

  if (v26)
  {
    v27 = [(MKMapItem *)self placemark];
    v28 = [v27 administrativeArea];
    [v3 addObject:v28];
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
  v2 = [(MKMapItem *)self _geoMapItem];
  v3 = [v2 _venueInfo];

  v4 = [v3 venueIdentifier];
  if (v4)
  {
    v22 = v3;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = v4;
    obj = [v4 componentIdentifiers];
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
          v11 = [v10 floorInfo];

          if (v11)
          {
            if ([v10 _hasBuildingID])
            {
              v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 buildingID]);
            }

            else
            {
              v12 = 0;
            }

            v13 = [v10 floorInfo];
            v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v13 levelID]);

            v15 = [v10 floorInfo];
            v16 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v15 ordinal]);

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
    v3 = v22;
    v4 = v24;
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
  v2 = [(MKMapItem *)self place];
  v3 = [v2 address];
  v4 = [v3 structuredAddress];

  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 administrativeArea];
  if (![v6 length])
  {
    v7 = [v4 administrativeAreaCode];

    v6 = v7;
  }

  if ([v6 length])
  {
    [v5 setObject:v6 forKeyedSubscript:@"State"];
  }

  if (!qword_10195E038)
  {
    v8 = CFLocaleCopyCurrent();
    v9 = [CFLocaleGetValue(v8 kCFLocaleCountryCode)];
    v10 = qword_10195E038;
    qword_10195E038 = v9;

    CFRelease(v8);
  }

  v11 = [v4 countryCode];
  v12 = [v11 lowercaseString];

  if (([v12 isEqualToString:qword_10195E038] & 1) == 0)
  {
    v13 = [v4 country];
    if ([v13 length])
    {
      [v5 setObject:v13 forKeyedSubscript:@"Country"];
    }
  }

  v14 = MKAddressStringForAddressDictionary();

  return v14;
}

- (id)_maps_placeAreaNameWithDefaultName:(id)a3
{
  v4 = a3;
  v5 = [(MKMapItem *)self place];
  v6 = [v5 type];
  v7 = 0;
  if (v6 <= 0x2B)
  {
    if (((1 << v6) & 0x80000010010) != 0)
    {
      v7 = [(MKMapItem *)self _maps_stateAndCountry];
    }

    else if (((1 << v6) & 6) != 0)
    {
      v8 = [v5 address];
      v9 = [v8 structuredAddress];
      v7 = [v9 country];

      if (![v7 length])
      {
        v10 = [v5 address];
        v11 = [v10 structuredAddress];
        v12 = [v11 countryCode];

        v7 = v12;
      }
    }
  }

  if ([v7 length])
  {
    v13 = v7;
  }

  else
  {
    v13 = v4;
  }

  v14 = v13;

  return v13;
}

- (id)_maps_placeTitleWithDefaultTitle:(id)a3
{
  v4 = a3;
  v5 = [(MKMapItem *)self place];
  v6 = [v5 type];

  v7 = [(MKMapItem *)self place];
  v8 = [v7 address];
  v9 = [v8 structuredAddress];

  if (v6 == 43)
  {
    v10 = [v9 subLocality];
    goto LABEL_5;
  }

  if (v6 == 16)
  {
    v10 = [(MKMapItem *)self _addressFormattedAsCity];
LABEL_5:
    v11 = v10;
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
    v12 = v4;
  }

  v13 = v12;

  return v12;
}

- (BOOL)_maps_isEVChargingStation
{
  v2 = [(MKMapItem *)self _geoMapItem];
  v3 = [v2 _poiCategory];
  v4 = [v3 isEqual:GEOPOICategoryEVCharger];

  return v4;
}

- (BOOL)_maps_isLargeAreaPlace
{
  v2 = [(MKMapItem *)self place];
  v3 = [v2 type];

  return (v3 < 0x3E) & (0x2001580000010016uLL >> v3);
}

- (id)_maps_distanceStringFromDetourInformation
{
  v3 = [(MKMapItem *)self _detourInfo];

  if (v3)
  {
    v4 = [(MKMapItem *)self _detourInfo];
    [v4 distanceToPlace];
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

- (id)_maps_detourTextForIdiom:(int64_t)a3 travelTime:(double)a4
{
  v4 = [NSString _navigation_stringForExpectedTravelTime:2 dateUnitStyle:a4];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Adds %@" value:@"localized string not found" table:0];
  v7 = [NSString localizedStringWithFormat:v6, v4];

  return v7;
}

- (id)_maps_detourTextForIdiom:(int64_t)a3
{
  v5 = [(MKMapItem *)self _detourInfo];
  [v5 detourTime];
  v6 = 60.0;
  if (v7 > 60.0)
  {
    v8 = [(MKMapItem *)self _detourInfo];
    [v8 detourTime];
    v6 = v9;
  }

  v10 = [(MKMapItem *)self _detourInfo];

  if (v10)
  {
    v11 = [(MKMapItem *)self _maps_detourTextForIdiom:a3 travelTime:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSUUID)locationOfInterestIdentifier
{
  v2 = [(MKMapItem *)self _geoMapItem];
  v3 = [v2 _clientAttributes];
  v4 = [v3 routineAttributes];
  v5 = [v4 loiIdentifier];

  return v5;
}

- (id)_maps_defaultCollectionItemTitle
{
  v3 = [(MKMapItem *)self _styleAttributes];
  v4 = [v3 isLabelPOI];

  if (v4)
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
  v3 = [(MKMapItem *)self _styleAttributes];
  v4 = [v3 isLabelPOI];

  if (v4)
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

  v4 = [(MKMapItem *)self _styleAttributes];
  v5 = [v4 isLabelPOI];

  return v5 ^ 1;
}

- (BOOL)_maps_isParkedCar
{
  v3 = +[ParkedCarManager sharedManager];
  v4 = [v3 parkedCar];

  if (v4)
  {
    v5 = [v4 mapItem];
    v6 = [v5 _geoMapItem];
    v7 = [(MKMapItem *)self _geoMapItem];
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
  v5 = [(MKMapItem *)self _geoMapItem];
  v6 = [v5 _clientAttributes];

  if (!v6)
  {
LABEL_14:
    v15 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v7 = [v15 shortcutForMapItem:self];

    if (!v7 || ([v7 isHidden] & 1) != 0 || objc_msgSend(v7, "type") != 5)
    {
      v14 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v14 = 1;
LABEL_19:

    goto LABEL_20;
  }

  v7 = [v6 addressBookAttributes];
  v8 = [v7 isMe];
  if (v8)
  {
    v2 = [v6 addressBookAttributes];
    if ([v2 addressType] == 3)
    {

      goto LABEL_17;
    }
  }

  v9 = [v6 mapsSyncAttributes];
  if (v9)
  {
    v3 = [v6 mapsSyncAttributes];
    if ([v3 secondaryObjectType] == 3)
    {
      v10 = 1;
      goto LABEL_10;
    }
  }

  v11 = [v6 routineAttributes];
  if (v11)
  {
    v12 = v11;
    v13 = [v6 routineAttributes];
    v10 = [v13 loiType] == 3;

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    if (v9)
    {
LABEL_10:

      if ((v8 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (v8)
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
  v5 = [(MKMapItem *)self _geoMapItem];
  v6 = [v5 _clientAttributes];

  if (!v6)
  {
LABEL_14:
    v15 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v7 = [v15 shortcutForMapItem:self];

    if (!v7 || ([v7 isHidden] & 1) != 0 || objc_msgSend(v7, "type") != 3)
    {
      v14 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v14 = 1;
LABEL_19:

    goto LABEL_20;
  }

  v7 = [v6 addressBookAttributes];
  v8 = [v7 isMe];
  if (v8)
  {
    v2 = [v6 addressBookAttributes];
    if ([v2 addressType] == 2)
    {

      goto LABEL_17;
    }
  }

  v9 = [v6 mapsSyncAttributes];
  if (v9)
  {
    v3 = [v6 mapsSyncAttributes];
    if ([v3 secondaryObjectType] == 2)
    {
      v10 = 1;
      goto LABEL_10;
    }
  }

  v11 = [v6 routineAttributes];
  if (v11)
  {
    v12 = v11;
    v13 = [v6 routineAttributes];
    v10 = [v13 loiType] == 2;

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    if (v9)
    {
LABEL_10:

      if ((v8 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (v8)
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
  v5 = [(MKMapItem *)self _geoMapItem];
  v6 = [v5 _clientAttributes];

  if (!v6)
  {
LABEL_14:
    v15 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v7 = [v15 shortcutForMapItem:self];

    if (!v7 || ([v7 isHidden] & 1) != 0 || objc_msgSend(v7, "type") != 2)
    {
      v14 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v14 = 1;
LABEL_19:

    goto LABEL_20;
  }

  v7 = [v6 addressBookAttributes];
  v8 = [v7 isMe];
  if (v8)
  {
    v2 = [v6 addressBookAttributes];
    if ([v2 addressType] == 1)
    {

      goto LABEL_17;
    }
  }

  v9 = [v6 mapsSyncAttributes];
  if (v9)
  {
    v3 = [v6 mapsSyncAttributes];
    if ([v3 secondaryObjectType] == 1)
    {
      v10 = 1;
      goto LABEL_10;
    }
  }

  v11 = [v6 routineAttributes];
  if (v11)
  {
    v12 = v11;
    v13 = [v6 routineAttributes];
    v10 = [v13 loiType] == 1;

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    if (v9)
    {
LABEL_10:

      if ((v8 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (v8)
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

+ (id)_maps_markerImageForMapItem:(id)a3 scale:(double)a4 size:(unint64_t)a5 useMarkerFallback:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  if (![v9 _maps_hasCustomStyleAttributes] || (objc_msgSend(v9, "_maps_styleAttributesForMapItem"), v10 = objc_claimAutoreleasedReturnValue(), +[MKIconManager imageForStyle:size:forScale:format:](MKIconManager, "imageForStyle:size:forScale:format:", v10, a5, 0, a4), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v11 = [MKIconManager imageForMapItem:v9 size:a5 forScale:0 format:0 fallbackToBundleIcon:a4];
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = !v6;
    }

    if (!v12)
    {
      v13 = +[GEOFeatureStyleAttributes markerStyleAttributes];
      v11 = [MKIconManager imageForStyle:v13 size:a5 forScale:0 format:a4];
    }

    if (v11)
    {
      v14 = 1;
    }

    else
    {
      v14 = !v6;
    }

    if (!v14)
    {
      v11 = [UIImage imageNamed:@"Pin-Circle"];
    }
  }

  return v11;
}

- (id)_maps_intentsRestaurantUsingParameters:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 vendorId];
  [v5 setVendorIdentifier:v6];

  v7 = [v4 externalItemId];

  [v5 setRestaurantIdentifier:v7];
  v8 = [(MKMapItem *)self name];
  [v5 setName:v8];

  v9 = [(MKMapItem *)self placemark];
  v10 = [v9 location];
  [v5 setLocation:v10];

  return v5;
}

- (BOOL)needsAdditionalNavData
{
  v3 = [(MKMapItem *)self place];
  v4 = [v3 address];
  v5 = [v4 structuredAddress];

  if ([v5 hasSubThoroughfare])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 hasFullThoroughfare];
  }

  if ([(MKMapItem *)self _hasMUID])
  {
    v7 = [v3 hasSpokenName] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  [(MKMapItem *)self _coordinate];
  v9 = v8;
  v11 = v10;
  if (v6)
  {
    v12 = [v3 hasSpokenAddress] ^ 1;
    v13 = [v3 entryPoints];
    v14 = [v13 count];

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

+ (id)searchResultsForMapItems:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
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
          v15 = [v13 _geoMapItem];
          v16 = [v15 addressObject];

          v17 = v13;
          if (v16)
          {
            v18 = +[AddressBookManager sharedManager];
            v19 = [v18 addressForAddressObject:v16];

            if (v19)
            {
              v20 = [v19 geocodedMapItem];

              if (v20)
              {
                v21 = [v19 geocodedMapItem];

                v17 = v21;
              }
            }
          }

          v14 = [[SearchResult alloc] initWithMapItem:v17];
          [(SearchResult *)v14 setOriginatedFromExternal:1];
          v22 = [v6 objectForKeyedSubscript:v25];
          [(SearchResult *)v14 setSourceURL:v22];

          v23 = [v6 objectForKeyedSubscript:v11];
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
    v7 = [(MKMapItem *)self _geoMapItem];
    v8 = [v7 _storefrontPresentationInfo];

    v9 = [v8 closeUpView];
    v10 = v9;
    if (v9)
    {
      [v9 lookAt];
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

+ (id)carMapItemFromDestination:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 mapItem];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v3;
    v5 = [v7 MKMapItem];

    if (v5)
    {
      v8 = [[MapsLocationOfInterest alloc] initWithMapsSuggestionEntry:v7];
LABEL_15:
      v9 = v8;
      v5 = [(MapsLocationOfInterest *)v8 mapItem];
LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v3;
    v5 = [v7 mkMapItem];

    if (v5)
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
    v4 = [v3 geocodedMapItem];
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([v3 conformsToProtocol:&OBJC_PROTOCOL___GEOMapItem])
    {
      v4 = [[MKMapItem alloc] initWithGeoMapItem:v3 isPlaceHolderPlace:0];
      goto LABEL_5;
    }

    v13 = v3;
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
      v19 = [(MapsLocationOfInterest *)v9 historyEntry];
      [SearchResult newStartWaypointSearchResult:0 endWaypointSearchResult:&v21 forRouteHistoryEntry:v19];
      v20 = v21;

      v5 = [v20 mapItem];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_16;
  }

  v10 = v3;
  v11 = [MKMapItem alloc];
  v12 = [v10 geoMapItem];

  v5 = [v11 initWithGeoMapItem:v12 isPlaceHolderPlace:0];
LABEL_6:

  return v5;
}

- (id)_maps_diffableDataSourceIdentifier
{
  if ([(MKMapItem *)self isCurrentLocation])
  {
    v3 = @"CurrentLocation";
  }

  else
  {
    v4 = [(MKMapItem *)self _identifier];
    v5 = v4;
    if (v4)
    {
      v3 = [v4 _maps_diffableDataSourceIdentifier];
    }

    else
    {
      [(MKMapItem *)self _coordinate];
      v3 = 0;
      if (fabs(v7) <= 180.0 && v6 >= -90.0 && v6 <= 90.0)
      {
        v8 = [NSString stringWithFormat:@"%+.8f, %+.8f", *&v6, *&v7];
        v3 = [NSString stringWithFormat:@"MarkedLocation(%@)", v8];
      }
    }
  }

  return v3;
}

- (id)_flyoverAnnouncementMessageWithDefaultTitle:(id)a3
{
  v4 = a3;
  v5 = [(MKMapItem *)self _flyoverAnnouncementMessage];
  if (!v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"3D Flyover Tour" value:@"localized string not found" table:0];
    v5 = [NSString stringWithFormat:@"%@ - %@", v7, v4];
  }

  return v5;
}

@end