@interface MapsActivity
+ (id)mapsActivityPerDefault;
+ (void)brandMapsActivityFromUserActivity:(id)activity completion:(id)completion;
- (BOOL)affectsMapType;
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (BOOL)shouldIndex;
- (MapsActivity)initWithBzip2CompressedData:(id)data;
- (NSData)bzip2CompressedData;
- (NSData)bzip2DataByIterativelyReducingIfNeeded;
- (NSString)name;
- (id)_destinationDirectionsURL;
- (id)categoryString;
- (id)collectionsModeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)destinationString;
- (id)dictionaryRepresentation;
- (id)mapsSiriAction;
- (int)StringAsCollectionsMode:(id)mode;
- (int)collectionsMode;
- (int64_t)type;
- (unint64_t)hash;
- (void)addSearchPlaces:(id)places;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCollectionsMode:(BOOL)mode;
- (void)setHasIsDroppedPinPresented:(BOOL)presented;
- (void)setHasIsDroppedPinSelected:(BOOL)selected;
- (void)setHasIsPresentingSelectedPlace:(BOOL)place;
- (void)setHasSelectedTransitFeatureID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation MapsActivity

- (NSString)name
{
  if ([(MapsActivity *)self hasPresentedMapItem]|| [(MapsActivity *)self hasSelectedPlaceIndex]&& (v7 = [(MapsActivity *)self selectedPlaceIndex], v7 < [(MapsActivity *)self searchPlacesCount]))
  {
    if ([(MapsActivity *)self hasPresentedMapItem])
    {
      presentedMapItem = [(MapsActivity *)self presentedMapItem];
      data = [presentedMapItem data];
      v5 = [GEOMapItemStorage mapItemStorageForSerializedMapItemStorage:data];

      if (!v5)
      {
        customSearchResult = 0;
LABEL_15:

        v23 = +[NSBundle mainBundle];
        currentResults = [v23 localizedStringForKey:@"Maps" value:@"localized string not found" table:0];

        if (customSearchResult)
        {
          _addressFormattedAsCity = [customSearchResult _addressFormattedAsCity];
          if ([_addressFormattedAsCity length])
          {
            v26 = +[NSBundle mainBundle];
            v27 = [v26 localizedStringForKey:@"History_Directions_Title" value:@"localized string not found" table:0];
            name = [customSearchResult name];
            name2 = [NSString stringWithFormat:v27, name, _addressFormattedAsCity];

            currentResults = v26;
          }

          else
          {
            name2 = [customSearchResult name];
          }

          currentResults = name2;
        }

        goto LABEL_25;
      }

      v6 = [MKMapItem _itemWithGeoMapItem:v5];
    }

    else
    {
      searchPlaces = [(MapsActivity *)self searchPlaces];
      v5 = [searchPlaces objectAtIndexedSubscript:{-[MapsActivity selectedPlaceIndex](self, "selectedPlaceIndex")}];

      v6 = [[MKMapItem alloc] initWithGeoMapItem:v5 isPlaceHolderPlace:0];
    }

    customSearchResult = v6;
    goto LABEL_15;
  }

  if (![(MapsActivity *)self hasDirectionsPlan])
  {
    if (![(MapsActivity *)self hasSearchCategoryStorage]&& ![(MapsActivity *)self hasSearchString])
    {
LABEL_47:
      if ([(MapsActivity *)self hasDroppedPin])
      {
        v54 = +[CustomSearchManager sharedManager];
        customSearchResult = [v54 customSearchResult];

        mapItem = [customSearchResult mapItem];
        _addressFormattedAsShortenedAddress = [mapItem _addressFormattedAsShortenedAddress];

        v57 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
        if (_addressFormattedAsShortenedAddress)
        {
          v58 = +[NSBundle mainBundle];
          v59 = v58;
          if (v57)
          {
            v60 = @"Marked Location at %@";
          }

          else
          {
            v60 = @"Dropped Pin on %@";
          }

          v67 = [v58 localizedStringForKey:v60 value:@"localized string not found" table:0];
          mapItem2 = [customSearchResult mapItem];
          _addressFormattedAsShortenedAddress2 = [mapItem2 _addressFormattedAsShortenedAddress];
          currentResults = [NSString stringWithFormat:v67, _addressFormattedAsShortenedAddress2];
        }

        else
        {
          v65 = +[NSBundle mainBundle];
          v59 = v65;
          if (v57)
          {
            v66 = @"Marked Location";
          }

          else
          {
            v66 = @"Dropped Pin";
          }

          currentResults = [v65 localizedStringForKey:v66 value:@"localized string not found" table:0];
        }
      }

      else
      {
        customSearchResult = +[NSBundle mainBundle];
        currentResults = [customSearchResult localizedStringForKey:@"Maps" value:@"localized string not found" table:0];
      }

LABEL_25:

      goto LABEL_73;
    }

    v30 = +[SearchSession currentSearchSession];
    searchFieldItem = [v30 searchFieldItem];
    v82 = 0;
    v83 = &v82;
    v84 = 0x3032000000;
    v85 = sub_100BF3C2C;
    v86 = sub_100BF3C3C;
    v87 = 0;
    historyItem = [searchFieldItem historyItem];
    historyEntry = [historyItem historyEntry];
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_100BF3C44;
    v81[3] = &unk_101656AE8;
    v81[4] = &v82;
    [historyEntry ifSearch:v81 ifRoute:0 ifPlaceDisplay:0 ifTransitLineItem:0];

    currentResults = [v30 currentResults];
    searchPlacesCount = [currentResults count];

    if ([(MapsActivity *)self hasSearchCategoryStorage])
    {
      v35 = [GEOSearchCategory alloc];
      searchCategoryStorage = [(MapsActivity *)self searchCategoryStorage];
      currentResults = [v35 initWithStorage:searchCategoryStorage];

      popularTokenString = [currentResults popularTokenString];
      v38 = popularTokenString;
      if (popularTokenString)
      {
        displayString = popularTokenString;
      }

      else
      {
        displayString = [currentResults displayString];
      }

      searchString = displayString;

      if (!searchPlacesCount)
      {
        goto LABEL_42;
      }
    }

    else
    {
      searchString = [(MapsActivity *)self searchString];
      searchPlacesCount = [(MapsActivity *)self searchPlacesCount];
      if (!searchPlacesCount)
      {
        goto LABEL_42;
      }
    }

    if ([v83[5] length])
    {
      v50 = +[NSBundle mainBundle];
      v51 = [v50 localizedStringForKey:@"Title_for_search_in_maps_history" value:@"localized string not found" table:0];

      v52 = [NSString localizedStringWithFormat:v51, searchPlacesCount, v83[5]];
      currentResults = [NSString stringWithFormat:@"%@\n%@", searchString, v52];

      goto LABEL_44;
    }

LABEL_42:
    if (!searchString)
    {
      v53 = 1;
LABEL_46:

      _Block_object_dispose(&v82, 8);
      if ((v53 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_47;
    }

    currentResults = searchString;
LABEL_44:
    v53 = 0;
    goto LABEL_46;
  }

  directionsPlan = [(MapsActivity *)self directionsPlan];
  originString = [directionsPlan originString];

  directionsPlan2 = [(MapsActivity *)self directionsPlan];
  destinationString = [directionsPlan2 destinationString];

  directionsPlan3 = [(MapsActivity *)self directionsPlan];
  routeRequestStorage = [directionsPlan3 routeRequestStorage];
  waypoints = [routeRequestStorage waypoints];
  v15 = [waypoints count];

  v16 = MKLocalizedStringForCurrentLocation();
  if (originString && !destinationString && v15)
  {
    directionsPlan4 = [(MapsActivity *)self directionsPlan];
    routeRequestStorage2 = [directionsPlan4 routeRequestStorage];
    waypoints2 = [routeRequestStorage2 waypoints];
    firstObject = [waypoints2 firstObject];

    if ([firstObject isCurrentLocation])
    {
      destinationString = v16;
LABEL_71:

      goto LABEL_72;
    }

    geoMapItem = [firstObject geoMapItem];
    destinationString = [geoMapItem name];
    goto LABEL_56;
  }

  if (destinationString && !originString && v15)
  {
    directionsPlan5 = [(MapsActivity *)self directionsPlan];
    routeRequestStorage3 = [directionsPlan5 routeRequestStorage];
    waypoints3 = [routeRequestStorage3 waypoints];
    firstObject = [waypoints3 firstObject];

    if ([firstObject isCurrentLocation])
    {
      originString = v16;
      goto LABEL_71;
    }

    geoMapItem = [firstObject geoMapItem];
    originString = [geoMapItem name];
LABEL_56:

    goto LABEL_71;
  }

  if (v15 >= 2)
  {
    directionsPlan6 = [(MapsActivity *)self directionsPlan];
    routeRequestStorage4 = [directionsPlan6 routeRequestStorage];
    waypoints4 = [routeRequestStorage4 waypoints];
    firstObject2 = [waypoints4 firstObject];

    if ([firstObject2 isCurrentLocation])
    {
      geoMapItem2 = originString;
      originString = v16;
    }

    else
    {
      geoMapItem2 = [firstObject2 geoMapItem];
      name3 = [geoMapItem2 name];

      originString = name3;
    }

    directionsPlan7 = [(MapsActivity *)self directionsPlan];
    routeRequestStorage5 = [directionsPlan7 routeRequestStorage];
    waypoints5 = [routeRequestStorage5 waypoints];
    firstObject = [waypoints5 lastObject];

    if ([firstObject isCurrentLocation])
    {
      name4 = v16;
    }

    else
    {
      geoMapItem3 = [firstObject geoMapItem];
      name4 = [geoMapItem3 name];

      destinationString = geoMapItem3;
    }

    destinationString = name4;
    goto LABEL_71;
  }

  if (v15 == 1)
  {
    directionsPlan8 = [(MapsActivity *)self directionsPlan];
    routeRequestStorage6 = [directionsPlan8 routeRequestStorage];
    waypoints6 = [routeRequestStorage6 waypoints];
    firstObject = [waypoints6 firstObject];

    if ([firstObject isCurrentLocation])
    {
      name5 = v16;
    }

    else
    {
      geoMapItem4 = [firstObject geoMapItem];
      name5 = [geoMapItem4 name];

      destinationString = geoMapItem4;
    }

    v77 = v16;
    destinationString = name5;
    originString = v77;
    goto LABEL_71;
  }

LABEL_72:
  v78 = +[NSBundle mainBundle];
  v79 = [v78 localizedStringForKey:@"%@\nDirection from %@" value:@"localized string not found" table:0];
  currentResults = [NSString stringWithFormat:v79, destinationString, originString];

LABEL_73:

  return currentResults;
}

- (NSData)bzip2CompressedData
{
  data = [(MapsActivity *)self data];
  bzip2CompressedData = [data bzip2CompressedData];

  return bzip2CompressedData;
}

- (BOOL)shouldIndex
{
  if ([(MapsActivity *)self hasDirectionsPlan]|| [(MapsActivity *)self hasSearchCategoryStorage]|| [(MapsActivity *)self hasSearchString]|| [(MapsActivity *)self hasPresentedMapItem])
  {
    return 1;
  }

  return [(MapsActivity *)self hasDroppedPin];
}

- (id)mapsSiriAction
{
  type = [(MapsActivity *)self type];
  if (type == 1)
  {
    searchString = [(MapsActivity *)self searchString];
    v28 = searchString;
    v29 = &stru_1016631F0;
    if (searchString)
    {
      v29 = searchString;
    }

    presentedMapItem = v29;

    _destinationDirectionsURL = [GEOMapURLBuilder URLForSearch:presentedMapItem];
    if (![(__CFString *)presentedMapItem length])
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_27;
    }

    v41[0] = @"MapsActionKey";
    v41[1] = @"MapsActionSearchStringKey";
    v42[0] = @"MapsSearchActionKey";
    v42[1] = presentedMapItem;
    v41[2] = @"MapsActionLaunchURLKey";
    v42[2] = _destinationDirectionsURL;
    v10 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
    v11 = +[NSBundle mainBundle];
    v12 = v11;
    v13 = @"SearchActionTitleFor";
LABEL_20:
    v26 = [v11 localizedStringForKey:v13 value:@"localized string not found" table:0];

    v30 = [[NSString alloc] initWithFormat:v26, presentedMapItem];
    goto LABEL_25;
  }

  if (type != 4)
  {
    if (type != 3)
    {
      v10 = 0;
      v9 = 0;
      goto LABEL_30;
    }

    destinationString = [(MapsActivity *)self destinationString];
    v5 = destinationString;
    v6 = &stru_1016631F0;
    if (destinationString)
    {
      v6 = destinationString;
    }

    presentedMapItem = v6;

    _destinationDirectionsURL = [(MapsActivity *)self _destinationDirectionsURL];
    v9 = 0;
    if (![(__CFString *)presentedMapItem length]|| !_destinationDirectionsURL)
    {
      v10 = 0;
      goto LABEL_27;
    }

    v43[0] = @"MapsActionKey";
    v43[1] = @"MapsActionDestinationStringKey";
    v44[0] = @"MapsDirectionsActionKey";
    v44[1] = presentedMapItem;
    v43[2] = @"MapsActionLaunchURLKey";
    v44[2] = _destinationDirectionsURL;
    v10 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];
    v11 = +[NSBundle mainBundle];
    v12 = v11;
    v13 = @"DirectionsActionTitleFor";
    goto LABEL_20;
  }

  presentedMapItem = [(MapsActivity *)self presentedMapItem];
  if ([(MapsActivity *)self hasSelectedPlaceIndex])
  {
    selectedPlaceIndex = [(MapsActivity *)self selectedPlaceIndex];
    if (selectedPlaceIndex < [(MapsActivity *)self searchPlacesCount])
    {
      searchPlaces = [(MapsActivity *)self searchPlaces];
      v16 = [searchPlaces objectAtIndexedSubscript:{-[MapsActivity selectedPlaceIndex](self, "selectedPlaceIndex")}];

      presentedMapItem = v16;
    }
  }

  name = [(__CFString *)presentedMapItem name];
  v18 = name;
  v19 = &stru_1016631F0;
  if (name)
  {
    v19 = name;
  }

  _destinationDirectionsURL = v19;

  if (MapsFeature_IsEnabled_URLUnification())
  {
    [(__CFString *)presentedMapItem coordinate];
    v21 = v20;
    v23 = v22;
    shortAddress = [(__CFString *)presentedMapItem shortAddress];
    _identifier = [(__CFString *)presentedMapItem _identifier];
    v26 = [GEOMapURLBuilder URLForCoordinate:shortAddress address:_destinationDirectionsURL label:_identifier mapItemIdentifier:v21, v23];
  }

  else
  {
    _muid = [(__CFString *)presentedMapItem _muid];
    _resultProviderID = [(__CFString *)presentedMapItem _resultProviderID];
    [(__CFString *)presentedMapItem coordinate];
    v34 = v33;
    v36 = v35;
    shortAddress = [(__CFString *)presentedMapItem shortAddress];
    v26 = [GEOMapURLBuilder URLForInternalBusiness:_destinationDirectionsURL id:_muid provider:_resultProviderID coordinate:shortAddress address:v34, v36];
  }

  if (![(__CFString *)_destinationDirectionsURL length])
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_26;
  }

  v39[0] = @"MapsActionKey";
  v39[1] = @"MapsActionMapItemNameKey";
  v40[0] = @"MapsMapItemActionKey";
  v40[1] = _destinationDirectionsURL;
  v39[2] = @"MapsActionLaunchURLKey";
  v40[2] = v26;
  v10 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:3];
  v30 = [[NSString alloc] initWithString:_destinationDirectionsURL];
LABEL_25:
  v9 = v30;
LABEL_26:

LABEL_27:
  if (v9 && [v10 count])
  {
    v37 = [[MapsSiriAction alloc] initWithTitle:v9 userInfo:v10];
    goto LABEL_31;
  }

LABEL_30:
  v37 = 0;
LABEL_31:

  return v37;
}

- (int64_t)type
{
  if ([(MapsActivity *)self hasPresentedMapItem])
  {
    return 4;
  }

  if ([(MapsActivity *)self hasSelectedPlaceIndex])
  {
    selectedPlaceIndex = [(MapsActivity *)self selectedPlaceIndex];
    if (selectedPlaceIndex < [(MapsActivity *)self searchPlacesCount])
    {
      return 4;
    }
  }

  if ([(MapsActivity *)self hasDirectionsPlan])
  {
    return 3;
  }

  if ([(MapsActivity *)self hasSearchCategoryStorage])
  {
    return 2;
  }

  if ([(MapsActivity *)self hasSearchString])
  {
    return 1;
  }

  if ([(MapsActivity *)self hasDroppedPin])
  {
    return 5;
  }

  return 0;
}

- (NSData)bzip2DataByIterativelyReducingIfNeeded
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bzip2CompressedData = [(MapsActivity *)selfCopy bzip2CompressedData];
  if ([bzip2CompressedData length] <= 0x2328)
  {
    v9 = bzip2CompressedData;
  }

  else
  {
    v4 = [(MapsActivity *)selfCopy copy];
    while (1)
    {
      searchPlaces = [v4 searchPlaces];
      v6 = [searchPlaces count];

      if (!v6)
      {
        break;
      }

      searchPlaces2 = [v4 searchPlaces];
      [searchPlaces2 removeLastObject];

      bzip2CompressedData2 = [v4 bzip2CompressedData];

      bzip2CompressedData = bzip2CompressedData2;
      if ([bzip2CompressedData2 length] <= 0x2328)
      {
        goto LABEL_8;
      }
    }

    bzip2CompressedData2 = bzip2CompressedData;
LABEL_8:
    v9 = bzip2CompressedData2;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (id)destinationString
{
  directionsPlan = [(MapsActivity *)self directionsPlan];
  destinationString = [directionsPlan destinationString];

  if ([destinationString length])
  {
    name2 = destinationString;
  }

  else
  {
    directionsPlan2 = [(MapsActivity *)self directionsPlan];
    routeRequestStorage = [directionsPlan2 routeRequestStorage];
    waypoints = [routeRequestStorage waypoints];
    lastObject = [waypoints lastObject];

    geoMapItem = [lastObject geoMapItem];
    name = [geoMapItem name];
    v12 = [name length];

    if (v12)
    {
      geoMapItem2 = [lastObject geoMapItem];
      name2 = [geoMapItem2 name];
    }

    else
    {
      name2 = 0;
    }
  }

  return name2;
}

- (id)_destinationDirectionsURL
{
  destinationString = [(MapsActivity *)self destinationString];
  directionsPlan = [(MapsActivity *)self directionsPlan];
  routeRequestStorage = [directionsPlan routeRequestStorage];
  waypoints = [routeRequestStorage waypoints];
  lastObject = [waypoints lastObject];

  geoMapItem = [lastObject geoMapItem];
  shortAddress = [geoMapItem shortAddress];
  directionsPlan2 = [(MapsActivity *)self directionsPlan];
  destinationString2 = [directionsPlan2 destinationString];

  if ([shortAddress length])
  {
    v12 = shortAddress;
  }

  else
  {
    v12 = destinationString2;
  }

  v13 = v12;
  if ([v13 length])
  {
    v14 = +[GEOMapURLBuilder URLForDirectionsFromHereTo:label:muid:provider:transport:](GEOMapURLBuilder, "URLForDirectionsFromHereTo:label:muid:provider:transport:", v13, destinationString, [geoMapItem _muid], objc_msgSend(geoMapItem, "_resultProviderID"), 4);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)categoryString
{
  if ([(MapsActivity *)self hasSearchCategoryStorage])
  {
    v3 = [GEOSearchCategory alloc];
    searchCategoryStorage = [(MapsActivity *)self searchCategoryStorage];
    v5 = [v3 initWithStorage:searchCategoryStorage];

    popularTokenString = [v5 popularTokenString];
    v7 = popularTokenString;
    if (popularTokenString)
    {
      displayString = popularTokenString;
    }

    else
    {
      displayString = [v5 displayString];
    }

    v9 = displayString;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)affectsMapType
{
  displayOptions = [(MapsActivity *)self displayOptions];
  if ([displayOptions hasMapType])
  {
    hasTransportType = 1;
  }

  else
  {
    displayOptions2 = [(MapsActivity *)self displayOptions];
    if ([displayOptions2 hasTransportType])
    {
      hasTransportType = 1;
    }

    else
    {
      directionsPlan = [(MapsActivity *)self directionsPlan];
      routeRequestStorage = [directionsPlan routeRequestStorage];
      hasTransportType = [routeRequestStorage hasTransportType];
    }
  }

  return hasTransportType;
}

- (MapsActivity)initWithBzip2CompressedData:(id)data
{
  bzip2UncompressedData = [data bzip2UncompressedData];
  if (bzip2UncompressedData)
  {
    self = [(MapsActivity *)self initWithData:bzip2UncompressedData];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)mapsActivityPerDefault
{
  v2 = objc_alloc_init(MapsActivity);
  v3 = objc_alloc_init(GEOURLOptions);
  [(MapsActivity *)v2 setDisplayOptions:v3];

  displayOptions = [(MapsActivity *)v2 displayOptions];
  [displayOptions setUserTrackingMode:1];

  v5 = +[MapsSettings selectedViewMode]- 1;
  if (v5 > 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_101216080[v5];
  }

  displayOptions2 = [(MapsActivity *)v2 displayOptions];
  [displayOptions2 setMapType:v6];

  return v2;
}

+ (void)brandMapsActivityFromUserActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  activityType = [activityCopy activityType];
  v8 = [activityType isEqualToString:@"MKPlaceBrandUserActivity"];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v9, v10, objc_opt_class(), 0];
    userInfo = [activityCopy userInfo];
    v13 = [userInfo objectForKeyedSubscript:@"MKPlaceBrandUserActivityData"];
    v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v13 error:0];

    v15 = [v14 objectForKeyedSubscript:@"MKPlaceBrandUserActivityID"];
    longLongValue = [v15 longLongValue];

    v17 = +[MKMapService sharedService];
    v18 = [v17 ticketForSearchPoisForBrandMUID:longLongValue traits:0];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100BF3F6C;
    v20[3] = &unk_1016601F0;
    v21 = v14;
    v22 = completionCopy;
    v19 = v14;
    [v18 submitWithHandler:v20 networkActivity:&stru_10164D6D0];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  displayOptions = self->_displayOptions;
  v6 = *(fromCopy + 5);
  if (displayOptions)
  {
    if (v6)
    {
      [(GEOURLOptions *)displayOptions mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MapsActivity *)self setDisplayOptions:?];
  }

  if ((*(fromCopy + 116) & 4) != 0)
  {
    self->_collectionsMode = *(fromCopy + 6);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 11))
  {
    [(MapsActivity *)self setSearchString:?];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = *(fromCopy + 10);
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(MapsActivity *)self addSearchPlaces:*(*(&v24 + 1) + 8 * i), v24];
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v12 = *(fromCopy + 116);
  if (v12)
  {
    self->_selectedPlaceIndex = *(fromCopy + 1);
    *&self->_has |= 1u;
    v12 = *(fromCopy + 116);
  }

  if ((v12 & 0x20) != 0)
  {
    self->_isPresentingSelectedPlace = *(fromCopy + 114);
    *&self->_has |= 0x20u;
  }

  directionsPlan = self->_directionsPlan;
  v14 = *(fromCopy + 4);
  if (directionsPlan)
  {
    if (v14)
    {
      [(DirectionsPlan *)directionsPlan mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(MapsActivity *)self setDirectionsPlan:?];
  }

  droppedPin = self->_droppedPin;
  v16 = *(fromCopy + 6);
  if (droppedPin)
  {
    if (v16)
    {
      [(MSPDroppedPin *)droppedPin mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(MapsActivity *)self setDroppedPin:?];
  }

  v17 = *(fromCopy + 116);
  if ((v17 & 0x10) != 0)
  {
    self->_isDroppedPinSelected = *(fromCopy + 113);
    *&self->_has |= 0x10u;
    v17 = *(fromCopy + 116);
  }

  if ((v17 & 8) != 0)
  {
    self->_isDroppedPinPresented = *(fromCopy + 112);
    *&self->_has |= 8u;
  }

  presentedMapItem = self->_presentedMapItem;
  v19 = *(fromCopy + 8);
  if (presentedMapItem)
  {
    if (v19)
    {
      [(GEOMapItemStorage *)presentedMapItem mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(MapsActivity *)self setPresentedMapItem:?];
  }

  searchCategoryStorage = self->_searchCategoryStorage;
  v21 = *(fromCopy + 9);
  if (searchCategoryStorage)
  {
    if (v21)
    {
      [(GEOSearchCategoryStorage *)searchCategoryStorage mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(MapsActivity *)self setSearchCategoryStorage:?];
  }

  if ((*(fromCopy + 116) & 2) != 0)
  {
    self->_selectedTransitFeatureID = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 12))
  {
    [(MapsActivity *)self setSelectedTransitLineName:?];
  }

  lineItem = self->_lineItem;
  v23 = *(fromCopy + 7);
  if (lineItem)
  {
    if (v23)
    {
      [(MSPTransitStorageLineItem *)lineItem mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(MapsActivity *)self setLineItem:?];
  }

  if (*(fromCopy + 13))
  {
    [(MapsActivity *)self setUserCreatedCollectionID:?];
  }
}

- (unint64_t)hash
{
  v20 = [(GEOURLOptions *)self->_displayOptions hash];
  if ((*&self->_has & 4) != 0)
  {
    v19 = 2654435761 * self->_collectionsMode;
  }

  else
  {
    v19 = 0;
  }

  v18 = [(NSString *)self->_searchString hash];
  v16 = [(NSMutableArray *)self->_searchPlaces hash];
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_selectedPlaceIndex;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_6:
      v4 = 2654435761 * self->_isPresentingSelectedPlace;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  v5 = [(DirectionsPlan *)self->_directionsPlan hash];
  v6 = [(MSPDroppedPin *)self->_droppedPin hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v7 = 2654435761 * self->_isDroppedPinSelected;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_11:
      v8 = 2654435761 * self->_isDroppedPinPresented;
      goto LABEL_14;
    }
  }

  v8 = 0;
LABEL_14:
  v9 = [(GEOMapItemStorage *)self->_presentedMapItem hash];
  v10 = [(GEOSearchCategoryStorage *)self->_searchCategoryStorage hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761u * self->_selectedTransitFeatureID;
  }

  else
  {
    v11 = 0;
  }

  v12 = v19 ^ v20 ^ v18 ^ v17 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  v13 = [(NSString *)self->_selectedTransitLineName hash];
  v14 = v13 ^ [(MSPTransitStorageLineItem *)self->_lineItem hash];
  return v12 ^ v14 ^ [(NSString *)self->_userCreatedCollectionID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  displayOptions = self->_displayOptions;
  if (displayOptions | *(equalCopy + 5))
  {
    if (![(GEOURLOptions *)displayOptions isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 116) & 4) == 0 || self->_collectionsMode != *(equalCopy + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 116) & 4) != 0)
  {
    goto LABEL_36;
  }

  searchString = self->_searchString;
  if (searchString | *(equalCopy + 11) && ![(NSString *)searchString isEqual:?])
  {
    goto LABEL_36;
  }

  searchPlaces = self->_searchPlaces;
  if (searchPlaces | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)searchPlaces isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 116) & 1) == 0 || self->_selectedPlaceIndex != *(equalCopy + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 116))
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 116) & 0x20) == 0)
    {
      goto LABEL_36;
    }

    if (self->_isPresentingSelectedPlace)
    {
      if ((*(equalCopy + 114) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(equalCopy + 114))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 116) & 0x20) != 0)
  {
    goto LABEL_36;
  }

  directionsPlan = self->_directionsPlan;
  if (directionsPlan | *(equalCopy + 4) && ![(DirectionsPlan *)directionsPlan isEqual:?])
  {
    goto LABEL_36;
  }

  droppedPin = self->_droppedPin;
  if (droppedPin | *(equalCopy + 6))
  {
    if (![(MSPDroppedPin *)droppedPin isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 116) & 0x10) == 0)
    {
      goto LABEL_36;
    }

    if (self->_isDroppedPinSelected)
    {
      if ((*(equalCopy + 113) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(equalCopy + 113))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 116) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 116) & 8) == 0)
    {
      goto LABEL_36;
    }

    if (self->_isDroppedPinPresented)
    {
      if ((*(equalCopy + 112) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(equalCopy + 112))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 116) & 8) != 0)
  {
    goto LABEL_36;
  }

  presentedMapItem = self->_presentedMapItem;
  if (presentedMapItem | *(equalCopy + 8) && ![(GEOMapItemStorage *)presentedMapItem isEqual:?])
  {
    goto LABEL_36;
  }

  searchCategoryStorage = self->_searchCategoryStorage;
  if (searchCategoryStorage | *(equalCopy + 9))
  {
    if (![(GEOSearchCategoryStorage *)searchCategoryStorage isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 116) & 2) == 0)
    {
      goto LABEL_57;
    }

LABEL_36:
    v12 = 0;
    goto LABEL_37;
  }

  if ((*(equalCopy + 116) & 2) == 0 || self->_selectedTransitFeatureID != *(equalCopy + 2))
  {
    goto LABEL_36;
  }

LABEL_57:
  selectedTransitLineName = self->_selectedTransitLineName;
  if (selectedTransitLineName | *(equalCopy + 12) && ![(NSString *)selectedTransitLineName isEqual:?])
  {
    goto LABEL_36;
  }

  lineItem = self->_lineItem;
  if (lineItem | *(equalCopy + 7))
  {
    if (![(MSPTransitStorageLineItem *)lineItem isEqual:?])
    {
      goto LABEL_36;
    }
  }

  userCreatedCollectionID = self->_userCreatedCollectionID;
  if (userCreatedCollectionID | *(equalCopy + 13))
  {
    v12 = [(NSString *)userCreatedCollectionID isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_37:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(GEOURLOptions *)self->_displayOptions copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 6) = self->_collectionsMode;
    *(v5 + 116) |= 4u;
  }

  v8 = [(NSString *)self->_searchString copyWithZone:zone];
  v9 = v5[11];
  v5[11] = v8;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_searchPlaces;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v33 + 1) + 8 * i) copyWithZone:{zone, v33}];
        [v5 addSearchPlaces:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }

  has = self->_has;
  if (has)
  {
    v5[1] = self->_selectedPlaceIndex;
    *(v5 + 116) |= 1u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    *(v5 + 114) = self->_isPresentingSelectedPlace;
    *(v5 + 116) |= 0x20u;
  }

  v17 = [(DirectionsPlan *)self->_directionsPlan copyWithZone:zone, v33];
  v18 = v5[4];
  v5[4] = v17;

  v19 = [(MSPDroppedPin *)self->_droppedPin copyWithZone:zone];
  v20 = v5[6];
  v5[6] = v19;

  v21 = self->_has;
  if ((v21 & 0x10) != 0)
  {
    *(v5 + 113) = self->_isDroppedPinSelected;
    *(v5 + 116) |= 0x10u;
    v21 = self->_has;
  }

  if ((v21 & 8) != 0)
  {
    *(v5 + 112) = self->_isDroppedPinPresented;
    *(v5 + 116) |= 8u;
  }

  v22 = [(GEOMapItemStorage *)self->_presentedMapItem copyWithZone:zone];
  v23 = v5[8];
  v5[8] = v22;

  v24 = [(GEOSearchCategoryStorage *)self->_searchCategoryStorage copyWithZone:zone];
  v25 = v5[9];
  v5[9] = v24;

  if ((*&self->_has & 2) != 0)
  {
    v5[2] = self->_selectedTransitFeatureID;
    *(v5 + 116) |= 2u;
  }

  v26 = [(NSString *)self->_selectedTransitLineName copyWithZone:zone];
  v27 = v5[12];
  v5[12] = v26;

  v28 = [(MSPTransitStorageLineItem *)self->_lineItem copyWithZone:zone];
  v29 = v5[7];
  v5[7] = v28;

  v30 = [(NSString *)self->_userCreatedCollectionID copyWithZone:zone];
  v31 = v5[13];
  v5[13] = v30;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_displayOptions)
  {
    [toCopy setDisplayOptions:?];
    toCopy = v12;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 6) = self->_collectionsMode;
    *(toCopy + 116) |= 4u;
  }

  if (self->_searchString)
  {
    [v12 setSearchString:?];
  }

  if ([(MapsActivity *)self searchPlacesCount])
  {
    [v12 clearSearchPlaces];
    searchPlacesCount = [(MapsActivity *)self searchPlacesCount];
    if (searchPlacesCount)
    {
      v6 = searchPlacesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(MapsActivity *)self searchPlacesAtIndex:i];
        [v12 addSearchPlaces:v8];
      }
    }
  }

  has = self->_has;
  v10 = v12;
  if (has)
  {
    *(v12 + 1) = self->_selectedPlaceIndex;
    *(v12 + 116) |= 1u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    *(v12 + 114) = self->_isPresentingSelectedPlace;
    *(v12 + 116) |= 0x20u;
  }

  if (self->_directionsPlan)
  {
    [v12 setDirectionsPlan:?];
    v10 = v12;
  }

  if (self->_droppedPin)
  {
    [v12 setDroppedPin:?];
    v10 = v12;
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    v10[113] = self->_isDroppedPinSelected;
    v10[116] |= 0x10u;
    v11 = self->_has;
  }

  if ((v11 & 8) != 0)
  {
    v10[112] = self->_isDroppedPinPresented;
    v10[116] |= 8u;
  }

  if (self->_presentedMapItem)
  {
    [v12 setPresentedMapItem:?];
    v10 = v12;
  }

  if (self->_searchCategoryStorage)
  {
    [v12 setSearchCategoryStorage:?];
    v10 = v12;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 2) = self->_selectedTransitFeatureID;
    v10[116] |= 2u;
  }

  if (self->_selectedTransitLineName)
  {
    [v12 setSelectedTransitLineName:?];
    v10 = v12;
  }

  if (self->_lineItem)
  {
    [v12 setLineItem:?];
    v10 = v12;
  }

  if (self->_userCreatedCollectionID)
  {
    [v12 setUserCreatedCollectionID:?];
    v10 = v12;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_displayOptions)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_searchString)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_searchPlaces;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_directionsPlan)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_droppedPin)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
    v11 = self->_has;
  }

  if ((v11 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_presentedMapItem)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_searchCategoryStorage)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_selectedTransitLineName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lineItem)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_userCreatedCollectionID)
  {
    PBDataWriterWriteStringField();
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position >= [from length])
  {
    return [from hasError] ^ 1;
  }

  while (2)
  {
    if ([from hasError])
    {
      return [from hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v62) = 0;
      v9 = [from position] + 1;
      if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
      {
        data = [from data];
        [data getBytes:&v62 range:{objc_msgSend(from, "position"), 1}];

        [from setPosition:{objc_msgSend(from, "position") + 1}];
      }

      else
      {
        [from _setError];
      }

      v8 |= (v62 & 0x7F) << v6;
      if ((v62 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_15;
      }
    }

    v13 = [from hasError] ? 0 : v8;
LABEL_15:
    if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [from hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(GEOURLOptions);
        v15 = 40;
        goto LABEL_76;
      case 2u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *&self->_has |= 4u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v41 = [from position] + 1;
          if (v41 >= [from position] && (v42 = objc_msgSend(from, "position") + 1, v42 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:&v62 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v40 |= (v62 & 0x7F) << v38;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v12 = v39++ >= 9;
          if (v12)
          {
            v44 = 0;
            goto LABEL_105;
          }
        }

        if ([from hasError])
        {
          v44 = 0;
        }

        else
        {
          v44 = v40;
        }

LABEL_105:
        self->_collectionsMode = v44;
        goto LABEL_111;
      case 3u:
        v36 = PBReaderReadString();
        v37 = 88;
        goto LABEL_71;
      case 4u:
        v14 = objc_alloc_init(GEOMapItemStorage);
        [(MapsActivity *)self addSearchPlaces:v14];
        goto LABEL_77;
      case 5u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v19 = [from position] + 1;
          if (v19 >= [from position] && (v20 = objc_msgSend(from, "position") + 1, v20 <= objc_msgSend(from, "length")))
          {
            data3 = [from data];
            [data3 getBytes:&v62 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v18 |= (v62 & 0x7F) << v16;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_94;
          }
        }

        if ([from hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_94:
        v58 = 8;
        goto LABEL_99;
      case 6u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *&self->_has |= 0x20u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v48 = [from position] + 1;
          if (v48 >= [from position] && (v49 = objc_msgSend(from, "position") + 1, v49 <= objc_msgSend(from, "length")))
          {
            data4 = [from data];
            [data4 getBytes:&v62 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v47 |= (v62 & 0x7F) << v45;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v12 = v46++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_107;
          }
        }

        v35 = (v47 != 0) & ~[from hasError];
LABEL_107:
        v59 = 114;
        goto LABEL_110;
      case 7u:
        v14 = objc_alloc_init(DirectionsPlan);
        objc_storeStrong(&self->_directionsPlan, v14);
        v62 = 0;
        v63 = 0;
        if (!PBReaderPlaceMark() || !sub_100A6C418(v14, from))
        {
          goto LABEL_113;
        }

        goto LABEL_79;
      case 8u:
        v14 = objc_alloc_init(MSPDroppedPin);
        v15 = 48;
        goto LABEL_76;
      case 9u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *&self->_has |= 0x10u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v55 = [from position] + 1;
          if (v55 >= [from position] && (v56 = objc_msgSend(from, "position") + 1, v56 <= objc_msgSend(from, "length")))
          {
            data5 = [from data];
            [data5 getBytes:&v62 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v54 |= (v62 & 0x7F) << v52;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_109;
          }
        }

        v35 = (v54 != 0) & ~[from hasError];
LABEL_109:
        v59 = 113;
        goto LABEL_110;
      case 0xAu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *&self->_has |= 8u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v32 = [from position] + 1;
          if (v32 >= [from position] && (v33 = objc_msgSend(from, "position") + 1, v33 <= objc_msgSend(from, "length")))
          {
            data6 = [from data];
            [data6 getBytes:&v62 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v31 |= (v62 & 0x7F) << v29;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_101;
          }
        }

        v35 = (v31 != 0) & ~[from hasError];
LABEL_101:
        v59 = 112;
LABEL_110:
        self->PBCodable_opaque[v59] = v35;
        goto LABEL_111;
      case 0xBu:
        v14 = objc_alloc_init(GEOMapItemStorage);
        v15 = 64;
        goto LABEL_76;
      case 0xCu:
        v14 = objc_alloc_init(GEOSearchCategoryStorage);
        v15 = 72;
        goto LABEL_76;
      case 0xDu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v26 = [from position] + 1;
          if (v26 >= [from position] && (v27 = objc_msgSend(from, "position") + 1, v27 <= objc_msgSend(from, "length")))
          {
            data7 = [from data];
            [data7 getBytes:&v62 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v25 |= (v62 & 0x7F) << v23;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_98;
          }
        }

        if ([from hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_98:
        v58 = 16;
LABEL_99:
        *&self->PBCodable_opaque[v58] = v22;
        goto LABEL_111;
      case 0xEu:
        v36 = PBReaderReadString();
        v37 = 96;
        goto LABEL_71;
      case 0xFu:
        v14 = objc_alloc_init(MSPTransitStorageLineItem);
        v15 = 56;
LABEL_76:
        objc_storeStrong(&self->PBCodable_opaque[v15], v14);
LABEL_77:
        v62 = 0;
        v63 = 0;
        if (PBReaderPlaceMark() && [(DirectionsPlan *)v14 readFrom:from])
        {
LABEL_79:
          PBReaderRecallMark();

LABEL_111:
          position2 = [from position];
          if (position2 >= [from length])
          {
            return [from hasError] ^ 1;
          }

          continue;
        }

LABEL_113:

        return 0;
      case 0x10u:
        v36 = PBReaderReadString();
        v37 = 104;
LABEL_71:
        v51 = *&self->PBCodable_opaque[v37];
        *&self->PBCodable_opaque[v37] = v36;

        goto LABEL_111;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_111;
    }
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  displayOptions = self->_displayOptions;
  if (displayOptions)
  {
    dictionaryRepresentation = [(GEOURLOptions *)displayOptions dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"displayOptions"];
  }

  if ((*&self->_has & 4) != 0)
  {
    collectionsMode = self->_collectionsMode;
    if (collectionsMode >= 4)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_collectionsMode];
    }

    else
    {
      v7 = off_10165D518[collectionsMode];
    }

    [v3 setObject:v7 forKey:@"collectionsMode"];
  }

  searchString = self->_searchString;
  if (searchString)
  {
    [v3 setObject:searchString forKey:@"searchString"];
  }

  if ([(NSMutableArray *)self->_searchPlaces count])
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_searchPlaces, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = self->_searchPlaces;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation2 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation2];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKey:@"searchPlaces"];
  }

  has = self->_has;
  if (has)
  {
    v17 = [NSNumber numberWithUnsignedLongLong:self->_selectedPlaceIndex];
    [v3 setObject:v17 forKey:@"selectedPlaceIndex"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v18 = [NSNumber numberWithBool:self->_isPresentingSelectedPlace];
    [v3 setObject:v18 forKey:@"isPresentingSelectedPlace"];
  }

  directionsPlan = self->_directionsPlan;
  if (directionsPlan)
  {
    dictionaryRepresentation3 = [(DirectionsPlan *)directionsPlan dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"directionsPlan"];
  }

  droppedPin = self->_droppedPin;
  if (droppedPin)
  {
    dictionaryRepresentation4 = [(MSPDroppedPin *)droppedPin dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"droppedPin"];
  }

  v23 = self->_has;
  if ((v23 & 0x10) != 0)
  {
    v24 = [NSNumber numberWithBool:self->_isDroppedPinSelected];
    [v3 setObject:v24 forKey:@"isDroppedPinSelected"];

    v23 = self->_has;
  }

  if ((v23 & 8) != 0)
  {
    v25 = [NSNumber numberWithBool:self->_isDroppedPinPresented];
    [v3 setObject:v25 forKey:@"isDroppedPinPresented"];
  }

  presentedMapItem = self->_presentedMapItem;
  if (presentedMapItem)
  {
    dictionaryRepresentation5 = [(GEOMapItemStorage *)presentedMapItem dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation5 forKey:@"presentedMapItem"];
  }

  searchCategoryStorage = self->_searchCategoryStorage;
  if (searchCategoryStorage)
  {
    dictionaryRepresentation6 = [(GEOSearchCategoryStorage *)searchCategoryStorage dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation6 forKey:@"searchCategoryStorage"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v30 = [NSNumber numberWithUnsignedLongLong:self->_selectedTransitFeatureID];
    [v3 setObject:v30 forKey:@"selectedTransitFeatureID"];
  }

  selectedTransitLineName = self->_selectedTransitLineName;
  if (selectedTransitLineName)
  {
    [v3 setObject:selectedTransitLineName forKey:@"selectedTransitLineName"];
  }

  lineItem = self->_lineItem;
  if (lineItem)
  {
    dictionaryRepresentation7 = [(MSPTransitStorageLineItem *)lineItem dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation7 forKey:@"lineItem"];
  }

  userCreatedCollectionID = self->_userCreatedCollectionID;
  if (userCreatedCollectionID)
  {
    [v3 setObject:userCreatedCollectionID forKey:@"userCreatedCollectionID"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = MapsActivity;
  v3 = [(MapsActivity *)&v7 description];
  dictionaryRepresentation = [(MapsActivity *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasSelectedTransitFeatureID:(BOOL)d
{
  if (d)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsDroppedPinPresented:(BOOL)presented
{
  if (presented)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsDroppedPinSelected:(BOOL)selected
{
  if (selected)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsPresentingSelectedPlace:(BOOL)place
{
  if (place)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)addSearchPlaces:(id)places
{
  placesCopy = places;
  searchPlaces = self->_searchPlaces;
  v8 = placesCopy;
  if (!searchPlaces)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_searchPlaces;
    self->_searchPlaces = v6;

    placesCopy = v8;
    searchPlaces = self->_searchPlaces;
  }

  [(NSMutableArray *)searchPlaces addObject:placesCopy];
}

- (int)StringAsCollectionsMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Bookmarks"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Recents"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"Contacts"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)collectionsModeAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_10165D518[string];
  }

  return v4;
}

- (void)setHasCollectionsMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)collectionsMode
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_collectionsMode;
  }

  else
  {
    return 0;
  }
}

@end