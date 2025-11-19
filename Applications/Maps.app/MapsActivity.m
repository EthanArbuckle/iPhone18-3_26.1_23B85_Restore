@interface MapsActivity
+ (id)mapsActivityPerDefault;
+ (void)brandMapsActivityFromUserActivity:(id)a3 completion:(id)a4;
- (BOOL)affectsMapType;
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (BOOL)shouldIndex;
- (MapsActivity)initWithBzip2CompressedData:(id)a3;
- (NSData)bzip2CompressedData;
- (NSData)bzip2DataByIterativelyReducingIfNeeded;
- (NSString)name;
- (id)_destinationDirectionsURL;
- (id)categoryString;
- (id)collectionsModeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)destinationString;
- (id)dictionaryRepresentation;
- (id)mapsSiriAction;
- (int)StringAsCollectionsMode:(id)a3;
- (int)collectionsMode;
- (int64_t)type;
- (unint64_t)hash;
- (void)addSearchPlaces:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCollectionsMode:(BOOL)a3;
- (void)setHasIsDroppedPinPresented:(BOOL)a3;
- (void)setHasIsDroppedPinSelected:(BOOL)a3;
- (void)setHasIsPresentingSelectedPlace:(BOOL)a3;
- (void)setHasSelectedTransitFeatureID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MapsActivity

- (NSString)name
{
  if ([(MapsActivity *)self hasPresentedMapItem]|| [(MapsActivity *)self hasSelectedPlaceIndex]&& (v7 = [(MapsActivity *)self selectedPlaceIndex], v7 < [(MapsActivity *)self searchPlacesCount]))
  {
    if ([(MapsActivity *)self hasPresentedMapItem])
    {
      v3 = [(MapsActivity *)self presentedMapItem];
      v4 = [v3 data];
      v5 = [GEOMapItemStorage mapItemStorageForSerializedMapItemStorage:v4];

      if (!v5)
      {
        v22 = 0;
LABEL_15:

        v23 = +[NSBundle mainBundle];
        v24 = [v23 localizedStringForKey:@"Maps" value:@"localized string not found" table:0];

        if (v22)
        {
          v25 = [v22 _addressFormattedAsCity];
          if ([v25 length])
          {
            v26 = +[NSBundle mainBundle];
            v27 = [v26 localizedStringForKey:@"History_Directions_Title" value:@"localized string not found" table:0];
            v28 = [v22 name];
            v29 = [NSString stringWithFormat:v27, v28, v25];

            v24 = v26;
          }

          else
          {
            v29 = [v22 name];
          }

          v24 = v29;
        }

        goto LABEL_25;
      }

      v6 = [MKMapItem _itemWithGeoMapItem:v5];
    }

    else
    {
      v21 = [(MapsActivity *)self searchPlaces];
      v5 = [v21 objectAtIndexedSubscript:{-[MapsActivity selectedPlaceIndex](self, "selectedPlaceIndex")}];

      v6 = [[MKMapItem alloc] initWithGeoMapItem:v5 isPlaceHolderPlace:0];
    }

    v22 = v6;
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
        v22 = [v54 customSearchResult];

        v55 = [v22 mapItem];
        v56 = [v55 _addressFormattedAsShortenedAddress];

        v57 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
        if (v56)
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
          v68 = [v22 mapItem];
          v69 = [v68 _addressFormattedAsShortenedAddress];
          v24 = [NSString stringWithFormat:v67, v69];
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

          v24 = [v65 localizedStringForKey:v66 value:@"localized string not found" table:0];
        }
      }

      else
      {
        v22 = +[NSBundle mainBundle];
        v24 = [v22 localizedStringForKey:@"Maps" value:@"localized string not found" table:0];
      }

LABEL_25:

      goto LABEL_73;
    }

    v30 = +[SearchSession currentSearchSession];
    v31 = [v30 searchFieldItem];
    v82 = 0;
    v83 = &v82;
    v84 = 0x3032000000;
    v85 = sub_100BF3C2C;
    v86 = sub_100BF3C3C;
    v87 = 0;
    v32 = [v31 historyItem];
    v33 = [v32 historyEntry];
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_100BF3C44;
    v81[3] = &unk_101656AE8;
    v81[4] = &v82;
    [v33 ifSearch:v81 ifRoute:0 ifPlaceDisplay:0 ifTransitLineItem:0];

    v24 = [v30 currentResults];
    v34 = [v24 count];

    if ([(MapsActivity *)self hasSearchCategoryStorage])
    {
      v35 = [GEOSearchCategory alloc];
      v36 = [(MapsActivity *)self searchCategoryStorage];
      v24 = [v35 initWithStorage:v36];

      v37 = [v24 popularTokenString];
      v38 = v37;
      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = [v24 displayString];
      }

      v43 = v39;

      if (!v34)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v43 = [(MapsActivity *)self searchString];
      v34 = [(MapsActivity *)self searchPlacesCount];
      if (!v34)
      {
        goto LABEL_42;
      }
    }

    if ([v83[5] length])
    {
      v50 = +[NSBundle mainBundle];
      v51 = [v50 localizedStringForKey:@"Title_for_search_in_maps_history" value:@"localized string not found" table:0];

      v52 = [NSString localizedStringWithFormat:v51, v34, v83[5]];
      v24 = [NSString stringWithFormat:@"%@\n%@", v43, v52];

      goto LABEL_44;
    }

LABEL_42:
    if (!v43)
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

    v24 = v43;
LABEL_44:
    v53 = 0;
    goto LABEL_46;
  }

  v8 = [(MapsActivity *)self directionsPlan];
  v9 = [v8 originString];

  v10 = [(MapsActivity *)self directionsPlan];
  v11 = [v10 destinationString];

  v12 = [(MapsActivity *)self directionsPlan];
  v13 = [v12 routeRequestStorage];
  v14 = [v13 waypoints];
  v15 = [v14 count];

  v16 = MKLocalizedStringForCurrentLocation();
  if (v9 && !v11 && v15)
  {
    v17 = [(MapsActivity *)self directionsPlan];
    v18 = [v17 routeRequestStorage];
    v19 = [v18 waypoints];
    v20 = [v19 firstObject];

    if ([v20 isCurrentLocation])
    {
      v11 = v16;
LABEL_71:

      goto LABEL_72;
    }

    v49 = [v20 geoMapItem];
    v11 = [v49 name];
    goto LABEL_56;
  }

  if (v11 && !v9 && v15)
  {
    v40 = [(MapsActivity *)self directionsPlan];
    v41 = [v40 routeRequestStorage];
    v42 = [v41 waypoints];
    v20 = [v42 firstObject];

    if ([v20 isCurrentLocation])
    {
      v9 = v16;
      goto LABEL_71;
    }

    v49 = [v20 geoMapItem];
    v9 = [v49 name];
LABEL_56:

    goto LABEL_71;
  }

  if (v15 >= 2)
  {
    v44 = [(MapsActivity *)self directionsPlan];
    v45 = [v44 routeRequestStorage];
    v46 = [v45 waypoints];
    v47 = [v46 firstObject];

    if ([v47 isCurrentLocation])
    {
      v48 = v9;
      v9 = v16;
    }

    else
    {
      v48 = [v47 geoMapItem];
      v70 = [v48 name];

      v9 = v70;
    }

    v71 = [(MapsActivity *)self directionsPlan];
    v72 = [v71 routeRequestStorage];
    v73 = [v72 waypoints];
    v20 = [v73 lastObject];

    if ([v20 isCurrentLocation])
    {
      v74 = v16;
    }

    else
    {
      v75 = [v20 geoMapItem];
      v74 = [v75 name];

      v11 = v75;
    }

    v11 = v74;
    goto LABEL_71;
  }

  if (v15 == 1)
  {
    v61 = [(MapsActivity *)self directionsPlan];
    v62 = [v61 routeRequestStorage];
    v63 = [v62 waypoints];
    v20 = [v63 firstObject];

    if ([v20 isCurrentLocation])
    {
      v64 = v16;
    }

    else
    {
      v76 = [v20 geoMapItem];
      v64 = [v76 name];

      v11 = v76;
    }

    v77 = v16;
    v11 = v64;
    v9 = v77;
    goto LABEL_71;
  }

LABEL_72:
  v78 = +[NSBundle mainBundle];
  v79 = [v78 localizedStringForKey:@"%@\nDirection from %@" value:@"localized string not found" table:0];
  v24 = [NSString stringWithFormat:v79, v11, v9];

LABEL_73:

  return v24;
}

- (NSData)bzip2CompressedData
{
  v2 = [(MapsActivity *)self data];
  v3 = [v2 bzip2CompressedData];

  return v3;
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
  v3 = [(MapsActivity *)self type];
  if (v3 == 1)
  {
    v27 = [(MapsActivity *)self searchString];
    v28 = v27;
    v29 = &stru_1016631F0;
    if (v27)
    {
      v29 = v27;
    }

    v7 = v29;

    v8 = [GEOMapURLBuilder URLForSearch:v7];
    if (![(__CFString *)v7 length])
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_27;
    }

    v41[0] = @"MapsActionKey";
    v41[1] = @"MapsActionSearchStringKey";
    v42[0] = @"MapsSearchActionKey";
    v42[1] = v7;
    v41[2] = @"MapsActionLaunchURLKey";
    v42[2] = v8;
    v10 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
    v11 = +[NSBundle mainBundle];
    v12 = v11;
    v13 = @"SearchActionTitleFor";
LABEL_20:
    v26 = [v11 localizedStringForKey:v13 value:@"localized string not found" table:0];

    v30 = [[NSString alloc] initWithFormat:v26, v7];
    goto LABEL_25;
  }

  if (v3 != 4)
  {
    if (v3 != 3)
    {
      v10 = 0;
      v9 = 0;
      goto LABEL_30;
    }

    v4 = [(MapsActivity *)self destinationString];
    v5 = v4;
    v6 = &stru_1016631F0;
    if (v4)
    {
      v6 = v4;
    }

    v7 = v6;

    v8 = [(MapsActivity *)self _destinationDirectionsURL];
    v9 = 0;
    if (![(__CFString *)v7 length]|| !v8)
    {
      v10 = 0;
      goto LABEL_27;
    }

    v43[0] = @"MapsActionKey";
    v43[1] = @"MapsActionDestinationStringKey";
    v44[0] = @"MapsDirectionsActionKey";
    v44[1] = v7;
    v43[2] = @"MapsActionLaunchURLKey";
    v44[2] = v8;
    v10 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];
    v11 = +[NSBundle mainBundle];
    v12 = v11;
    v13 = @"DirectionsActionTitleFor";
    goto LABEL_20;
  }

  v7 = [(MapsActivity *)self presentedMapItem];
  if ([(MapsActivity *)self hasSelectedPlaceIndex])
  {
    v14 = [(MapsActivity *)self selectedPlaceIndex];
    if (v14 < [(MapsActivity *)self searchPlacesCount])
    {
      v15 = [(MapsActivity *)self searchPlaces];
      v16 = [v15 objectAtIndexedSubscript:{-[MapsActivity selectedPlaceIndex](self, "selectedPlaceIndex")}];

      v7 = v16;
    }
  }

  v17 = [(__CFString *)v7 name];
  v18 = v17;
  v19 = &stru_1016631F0;
  if (v17)
  {
    v19 = v17;
  }

  v8 = v19;

  if (MapsFeature_IsEnabled_URLUnification())
  {
    [(__CFString *)v7 coordinate];
    v21 = v20;
    v23 = v22;
    v24 = [(__CFString *)v7 shortAddress];
    v25 = [(__CFString *)v7 _identifier];
    v26 = [GEOMapURLBuilder URLForCoordinate:v24 address:v8 label:v25 mapItemIdentifier:v21, v23];
  }

  else
  {
    v31 = [(__CFString *)v7 _muid];
    v32 = [(__CFString *)v7 _resultProviderID];
    [(__CFString *)v7 coordinate];
    v34 = v33;
    v36 = v35;
    v24 = [(__CFString *)v7 shortAddress];
    v26 = [GEOMapURLBuilder URLForInternalBusiness:v8 id:v31 provider:v32 coordinate:v24 address:v34, v36];
  }

  if (![(__CFString *)v8 length])
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_26;
  }

  v39[0] = @"MapsActionKey";
  v39[1] = @"MapsActionMapItemNameKey";
  v40[0] = @"MapsMapItemActionKey";
  v40[1] = v8;
  v39[2] = @"MapsActionLaunchURLKey";
  v40[2] = v26;
  v10 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:3];
  v30 = [[NSString alloc] initWithString:v8];
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
    v4 = [(MapsActivity *)self selectedPlaceIndex];
    if (v4 < [(MapsActivity *)self searchPlacesCount])
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MapsActivity *)v2 bzip2CompressedData];
  if ([v3 length] <= 0x2328)
  {
    v9 = v3;
  }

  else
  {
    v4 = [(MapsActivity *)v2 copy];
    while (1)
    {
      v5 = [v4 searchPlaces];
      v6 = [v5 count];

      if (!v6)
      {
        break;
      }

      v7 = [v4 searchPlaces];
      [v7 removeLastObject];

      v8 = [v4 bzip2CompressedData];

      v3 = v8;
      if ([v8 length] <= 0x2328)
      {
        goto LABEL_8;
      }
    }

    v8 = v3;
LABEL_8:
    v9 = v8;
  }

  objc_sync_exit(v2);

  return v9;
}

- (id)destinationString
{
  v3 = [(MapsActivity *)self directionsPlan];
  v4 = [v3 destinationString];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = [(MapsActivity *)self directionsPlan];
    v7 = [v6 routeRequestStorage];
    v8 = [v7 waypoints];
    v9 = [v8 lastObject];

    v10 = [v9 geoMapItem];
    v11 = [v10 name];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v9 geoMapItem];
      v5 = [v13 name];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_destinationDirectionsURL
{
  v3 = [(MapsActivity *)self destinationString];
  v4 = [(MapsActivity *)self directionsPlan];
  v5 = [v4 routeRequestStorage];
  v6 = [v5 waypoints];
  v7 = [v6 lastObject];

  v8 = [v7 geoMapItem];
  v9 = [v8 shortAddress];
  v10 = [(MapsActivity *)self directionsPlan];
  v11 = [v10 destinationString];

  if ([v9 length])
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12;
  if ([v13 length])
  {
    v14 = +[GEOMapURLBuilder URLForDirectionsFromHereTo:label:muid:provider:transport:](GEOMapURLBuilder, "URLForDirectionsFromHereTo:label:muid:provider:transport:", v13, v3, [v8 _muid], objc_msgSend(v8, "_resultProviderID"), 4);
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
    v4 = [(MapsActivity *)self searchCategoryStorage];
    v5 = [v3 initWithStorage:v4];

    v6 = [v5 popularTokenString];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v5 displayString];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)affectsMapType
{
  v3 = [(MapsActivity *)self displayOptions];
  if ([v3 hasMapType])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MapsActivity *)self displayOptions];
    if ([v5 hasTransportType])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(MapsActivity *)self directionsPlan];
      v7 = [v6 routeRequestStorage];
      v4 = [v7 hasTransportType];
    }
  }

  return v4;
}

- (MapsActivity)initWithBzip2CompressedData:(id)a3
{
  v4 = [a3 bzip2UncompressedData];
  if (v4)
  {
    self = [(MapsActivity *)self initWithData:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)mapsActivityPerDefault
{
  v2 = objc_alloc_init(MapsActivity);
  v3 = objc_alloc_init(GEOURLOptions);
  [(MapsActivity *)v2 setDisplayOptions:v3];

  v4 = [(MapsActivity *)v2 displayOptions];
  [v4 setUserTrackingMode:1];

  v5 = +[MapsSettings selectedViewMode]- 1;
  if (v5 > 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_101216080[v5];
  }

  v7 = [(MapsActivity *)v2 displayOptions];
  [v7 setMapType:v6];

  return v2;
}

+ (void)brandMapsActivityFromUserActivity:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 activityType];
  v8 = [v7 isEqualToString:@"MKPlaceBrandUserActivity"];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v9, v10, objc_opt_class(), 0];
    v12 = [v5 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"MKPlaceBrandUserActivityData"];
    v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v13 error:0];

    v15 = [v14 objectForKeyedSubscript:@"MKPlaceBrandUserActivityID"];
    v16 = [v15 longLongValue];

    v17 = +[MKMapService sharedService];
    v18 = [v17 ticketForSearchPoisForBrandMUID:v16 traits:0];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100BF3F6C;
    v20[3] = &unk_1016601F0;
    v21 = v14;
    v22 = v6;
    v19 = v14;
    [v18 submitWithHandler:v20 networkActivity:&stru_10164D6D0];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  displayOptions = self->_displayOptions;
  v6 = *(v4 + 5);
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

  if ((*(v4 + 116) & 4) != 0)
  {
    self->_collectionsMode = *(v4 + 6);
    *&self->_has |= 4u;
  }

  if (*(v4 + 11))
  {
    [(MapsActivity *)self setSearchString:?];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = *(v4 + 10);
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

  v12 = *(v4 + 116);
  if (v12)
  {
    self->_selectedPlaceIndex = *(v4 + 1);
    *&self->_has |= 1u;
    v12 = *(v4 + 116);
  }

  if ((v12 & 0x20) != 0)
  {
    self->_isPresentingSelectedPlace = *(v4 + 114);
    *&self->_has |= 0x20u;
  }

  directionsPlan = self->_directionsPlan;
  v14 = *(v4 + 4);
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
  v16 = *(v4 + 6);
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

  v17 = *(v4 + 116);
  if ((v17 & 0x10) != 0)
  {
    self->_isDroppedPinSelected = *(v4 + 113);
    *&self->_has |= 0x10u;
    v17 = *(v4 + 116);
  }

  if ((v17 & 8) != 0)
  {
    self->_isDroppedPinPresented = *(v4 + 112);
    *&self->_has |= 8u;
  }

  presentedMapItem = self->_presentedMapItem;
  v19 = *(v4 + 8);
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
  v21 = *(v4 + 9);
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

  if ((*(v4 + 116) & 2) != 0)
  {
    self->_selectedTransitFeatureID = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 12))
  {
    [(MapsActivity *)self setSelectedTransitLineName:?];
  }

  lineItem = self->_lineItem;
  v23 = *(v4 + 7);
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

  if (*(v4 + 13))
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  displayOptions = self->_displayOptions;
  if (displayOptions | *(v4 + 5))
  {
    if (![(GEOURLOptions *)displayOptions isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 116) & 4) == 0 || self->_collectionsMode != *(v4 + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 116) & 4) != 0)
  {
    goto LABEL_36;
  }

  searchString = self->_searchString;
  if (searchString | *(v4 + 11) && ![(NSString *)searchString isEqual:?])
  {
    goto LABEL_36;
  }

  searchPlaces = self->_searchPlaces;
  if (searchPlaces | *(v4 + 10))
  {
    if (![(NSMutableArray *)searchPlaces isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 116) & 1) == 0 || self->_selectedPlaceIndex != *(v4 + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 116))
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 116) & 0x20) == 0)
    {
      goto LABEL_36;
    }

    if (self->_isPresentingSelectedPlace)
    {
      if ((*(v4 + 114) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(v4 + 114))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 116) & 0x20) != 0)
  {
    goto LABEL_36;
  }

  directionsPlan = self->_directionsPlan;
  if (directionsPlan | *(v4 + 4) && ![(DirectionsPlan *)directionsPlan isEqual:?])
  {
    goto LABEL_36;
  }

  droppedPin = self->_droppedPin;
  if (droppedPin | *(v4 + 6))
  {
    if (![(MSPDroppedPin *)droppedPin isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 116) & 0x10) == 0)
    {
      goto LABEL_36;
    }

    if (self->_isDroppedPinSelected)
    {
      if ((*(v4 + 113) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(v4 + 113))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 116) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 116) & 8) == 0)
    {
      goto LABEL_36;
    }

    if (self->_isDroppedPinPresented)
    {
      if ((*(v4 + 112) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(v4 + 112))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 116) & 8) != 0)
  {
    goto LABEL_36;
  }

  presentedMapItem = self->_presentedMapItem;
  if (presentedMapItem | *(v4 + 8) && ![(GEOMapItemStorage *)presentedMapItem isEqual:?])
  {
    goto LABEL_36;
  }

  searchCategoryStorage = self->_searchCategoryStorage;
  if (searchCategoryStorage | *(v4 + 9))
  {
    if (![(GEOSearchCategoryStorage *)searchCategoryStorage isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 116) & 2) == 0)
    {
      goto LABEL_57;
    }

LABEL_36:
    v12 = 0;
    goto LABEL_37;
  }

  if ((*(v4 + 116) & 2) == 0 || self->_selectedTransitFeatureID != *(v4 + 2))
  {
    goto LABEL_36;
  }

LABEL_57:
  selectedTransitLineName = self->_selectedTransitLineName;
  if (selectedTransitLineName | *(v4 + 12) && ![(NSString *)selectedTransitLineName isEqual:?])
  {
    goto LABEL_36;
  }

  lineItem = self->_lineItem;
  if (lineItem | *(v4 + 7))
  {
    if (![(MSPTransitStorageLineItem *)lineItem isEqual:?])
    {
      goto LABEL_36;
    }
  }

  userCreatedCollectionID = self->_userCreatedCollectionID;
  if (userCreatedCollectionID | *(v4 + 13))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(GEOURLOptions *)self->_displayOptions copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 6) = self->_collectionsMode;
    *(v5 + 116) |= 4u;
  }

  v8 = [(NSString *)self->_searchString copyWithZone:a3];
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

        v15 = [*(*(&v33 + 1) + 8 * i) copyWithZone:{a3, v33}];
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

  v17 = [(DirectionsPlan *)self->_directionsPlan copyWithZone:a3, v33];
  v18 = v5[4];
  v5[4] = v17;

  v19 = [(MSPDroppedPin *)self->_droppedPin copyWithZone:a3];
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

  v22 = [(GEOMapItemStorage *)self->_presentedMapItem copyWithZone:a3];
  v23 = v5[8];
  v5[8] = v22;

  v24 = [(GEOSearchCategoryStorage *)self->_searchCategoryStorage copyWithZone:a3];
  v25 = v5[9];
  v5[9] = v24;

  if ((*&self->_has & 2) != 0)
  {
    v5[2] = self->_selectedTransitFeatureID;
    *(v5 + 116) |= 2u;
  }

  v26 = [(NSString *)self->_selectedTransitLineName copyWithZone:a3];
  v27 = v5[12];
  v5[12] = v26;

  v28 = [(MSPTransitStorageLineItem *)self->_lineItem copyWithZone:a3];
  v29 = v5[7];
  v5[7] = v28;

  v30 = [(NSString *)self->_userCreatedCollectionID copyWithZone:a3];
  v31 = v5[13];
  v5[13] = v30;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_displayOptions)
  {
    [v4 setDisplayOptions:?];
    v4 = v12;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 6) = self->_collectionsMode;
    *(v4 + 116) |= 4u;
  }

  if (self->_searchString)
  {
    [v12 setSearchString:?];
  }

  if ([(MapsActivity *)self searchPlacesCount])
  {
    [v12 clearSearchPlaces];
    v5 = [(MapsActivity *)self searchPlacesCount];
    if (v5)
    {
      v6 = v5;
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

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 >= [a3 length])
  {
    return [a3 hasError] ^ 1;
  }

  while (2)
  {
    if ([a3 hasError])
    {
      return [a3 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v62) = 0;
      v9 = [a3 position] + 1;
      if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
      {
        v11 = [a3 data];
        [v11 getBytes:&v62 range:{objc_msgSend(a3, "position"), 1}];

        [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
      }

      else
      {
        [a3 _setError];
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

    v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
    if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a3 hasError] ^ 1;
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
          v41 = [a3 position] + 1;
          if (v41 >= [a3 position] && (v42 = objc_msgSend(a3, "position") + 1, v42 <= objc_msgSend(a3, "length")))
          {
            v43 = [a3 data];
            [v43 getBytes:&v62 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v19 = [a3 position] + 1;
          if (v19 >= [a3 position] && (v20 = objc_msgSend(a3, "position") + 1, v20 <= objc_msgSend(a3, "length")))
          {
            v21 = [a3 data];
            [v21 getBytes:&v62 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v48 = [a3 position] + 1;
          if (v48 >= [a3 position] && (v49 = objc_msgSend(a3, "position") + 1, v49 <= objc_msgSend(a3, "length")))
          {
            v50 = [a3 data];
            [v50 getBytes:&v62 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v35 = (v47 != 0) & ~[a3 hasError];
LABEL_107:
        v59 = 114;
        goto LABEL_110;
      case 7u:
        v14 = objc_alloc_init(DirectionsPlan);
        objc_storeStrong(&self->_directionsPlan, v14);
        v62 = 0;
        v63 = 0;
        if (!PBReaderPlaceMark() || !sub_100A6C418(v14, a3))
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
          v55 = [a3 position] + 1;
          if (v55 >= [a3 position] && (v56 = objc_msgSend(a3, "position") + 1, v56 <= objc_msgSend(a3, "length")))
          {
            v57 = [a3 data];
            [v57 getBytes:&v62 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v35 = (v54 != 0) & ~[a3 hasError];
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
          v32 = [a3 position] + 1;
          if (v32 >= [a3 position] && (v33 = objc_msgSend(a3, "position") + 1, v33 <= objc_msgSend(a3, "length")))
          {
            v34 = [a3 data];
            [v34 getBytes:&v62 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v35 = (v31 != 0) & ~[a3 hasError];
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
          v26 = [a3 position] + 1;
          if (v26 >= [a3 position] && (v27 = objc_msgSend(a3, "position") + 1, v27 <= objc_msgSend(a3, "length")))
          {
            v28 = [a3 data];
            [v28 getBytes:&v62 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
        if (PBReaderPlaceMark() && [(DirectionsPlan *)v14 readFrom:a3])
        {
LABEL_79:
          PBReaderRecallMark();

LABEL_111:
          v60 = [a3 position];
          if (v60 >= [a3 length])
          {
            return [a3 hasError] ^ 1;
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
    v5 = [(GEOURLOptions *)displayOptions dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"displayOptions"];
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

          v15 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
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
    v20 = [(DirectionsPlan *)directionsPlan dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"directionsPlan"];
  }

  droppedPin = self->_droppedPin;
  if (droppedPin)
  {
    v22 = [(MSPDroppedPin *)droppedPin dictionaryRepresentation];
    [v3 setObject:v22 forKey:@"droppedPin"];
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
    v27 = [(GEOMapItemStorage *)presentedMapItem dictionaryRepresentation];
    [v3 setObject:v27 forKey:@"presentedMapItem"];
  }

  searchCategoryStorage = self->_searchCategoryStorage;
  if (searchCategoryStorage)
  {
    v29 = [(GEOSearchCategoryStorage *)searchCategoryStorage dictionaryRepresentation];
    [v3 setObject:v29 forKey:@"searchCategoryStorage"];
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
    v33 = [(MSPTransitStorageLineItem *)lineItem dictionaryRepresentation];
    [v3 setObject:v33 forKey:@"lineItem"];
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
  v4 = [(MapsActivity *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasSelectedTransitFeatureID:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsDroppedPinPresented:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsDroppedPinSelected:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsPresentingSelectedPlace:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)addSearchPlaces:(id)a3
{
  v4 = a3;
  searchPlaces = self->_searchPlaces;
  v8 = v4;
  if (!searchPlaces)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_searchPlaces;
    self->_searchPlaces = v6;

    v4 = v8;
    searchPlaces = self->_searchPlaces;
  }

  [(NSMutableArray *)searchPlaces addObject:v4];
}

- (int)StringAsCollectionsMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Bookmarks"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Recents"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Contacts"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)collectionsModeAsString:(int)a3
{
  if (a3 >= 4)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_10165D518[a3];
  }

  return v4;
}

- (void)setHasCollectionsMode:(BOOL)a3
{
  if (a3)
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