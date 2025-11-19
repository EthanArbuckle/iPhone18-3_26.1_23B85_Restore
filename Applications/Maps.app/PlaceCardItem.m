@interface PlaceCardItem
- (BOOL)canAddNote;
- (BOOL)canAddToCollections;
- (BOOL)canAddToLibrary;
- (BOOL)canAddToShortcuts;
- (BOOL)canShowOpenFindMyAction;
- (BOOL)canShowRequestLocation;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHomeWorkSchoolAddress;
- (BOOL)isHomeWorkSchoolShortcut;
- (BOOL)isMeCard;
- (BOOL)shouldInsertInHistory;
- (BOOL)shouldInsertInHistoryForRAPTrackingOnly;
- (BOOL)shouldShowEditNameAction;
- (CGRect)calloutAnchorRect;
- (CNContact)contact;
- (MKMapItem)mapItem;
- (MapsSuggestionsShortcutLike)shortcut;
- (NSString)defaultCollectionItemTitle;
- (NSString)title;
- (PlaceCardItem)initWithLocationOfInterest:(id)a3;
- (PlaceCardItem)initWithMapItem:(id)a3;
- (PlaceCardItem)initWithMapItem:(id)a3 address:(id)a4;
- (PlaceCardItem)initWithMapItem:(id)a3 chargeStationWaypointInfo:(id)a4;
- (PlaceCardItem)initWithPersonalizedItem:(id)a3;
- (PlaceCardItem)initWithSearchResult:(id)a3;
- (RAPPlace)rapPlace;
- (_MKPlaceItem)placeItem;
- (id)_venueIdentifier;
- (int64_t)addressType;
- (unint64_t)venueCardID;
- (unint64_t)venueID;
@end

@implementation PlaceCardItem

- (id)_venueIdentifier
{
  v3 = [(PlaceCardItem *)self mapItem];
  v4 = [v3 _venueInfo];
  v5 = [v4 venueIdentifier];

  if (v5)
  {
    v6 = [(PlaceCardItem *)self mapItem];
    v7 = [v6 _venueInfo];
    v8 = [v7 venueIdentifier];
  }

  else
  {
    v6 = [(PlaceCardItem *)self searchResult];
    v7 = [v6 mapItem];
    v9 = [v7 _venueInfo];
    v8 = [v9 venueIdentifier];
  }

  return v8;
}

- (unint64_t)venueCardID
{
  v2 = [(PlaceCardItem *)self mapItem];
  v3 = [v2 _muid];

  return v3;
}

- (unint64_t)venueID
{
  v3 = [(PlaceCardItem *)self _venueIdentifier];
  if ([v3 _hasVenueID])
  {
    v4 = [v3 venueID];
  }

  else
  {
    v5 = [(PlaceCardItem *)self personalizedItem];
    v6 = [v5 sourceLabelMarker];
    v4 = [v6 venueID];
  }

  return v4;
}

- (CGRect)calloutAnchorRect
{
  x = self->_calloutAnchorRect.origin.x;
  y = self->_calloutAnchorRect.origin.y;
  width = self->_calloutAnchorRect.size.width;
  height = self->_calloutAnchorRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)shouldShowEditNameAction
{
  if (!self->_locationOfInterest)
  {
    return 0;
  }

  v3 = [(PlaceCardItem *)self mapItem];
  if ([v3 _hasMUID] && objc_msgSend(v3, "_muid"))
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PlaceCardItem *)self locationOfInterest];
    v4 = [v5 isFrequentLocation];
  }

  return v4;
}

- (int64_t)addressType
{
  v3 = [(PlaceCardItem *)self locationOfInterest];

  if (v3)
  {
    v4 = [(PlaceCardItem *)self locationOfInterest];
    v5 = [v4 type];

    return v5;
  }

  else
  {
    v7 = [(PlaceCardItem *)self address];
    v8 = [v7 addressType];

    if (v8 <= 3)
    {
      return v8 - 1;
    }

    else
    {
      return -1;
    }
  }
}

- (MapsSuggestionsShortcutLike)shortcut
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v4 = [(PlaceCardItem *)self mapItem];
    [v3 shortcutForMapItem:v4];
  }

  else
  {
    v5 = +[ShortcutManager sharedManager];
    v3 = [v5 meCard];

    v4 = [(PlaceCardItem *)self mapItem];
    [v3 _maps_shortcutIncludingHiddenForMapItem:v4];
  }
  v6 = ;

  return v6;
}

- (BOOL)isHomeWorkSchoolShortcut
{
  v2 = [(PlaceCardItem *)self shortcut];
  v3 = v2;
  v4 = v2 && ([v2 isHidden] & 1) == 0 && (objc_msgSend(v3, "type") == 2 || objc_msgSend(v3, "type") == 3 || objc_msgSend(v3, "type") == 5);

  return v4;
}

- (BOOL)isHomeWorkSchoolAddress
{
  v3 = [(MapsLocationOfInterest *)self->_locationOfInterest identifier];
  if (v3 && (![(MapsLocationOfInterest *)self->_locationOfInterest type]|| [(MapsLocationOfInterest *)self->_locationOfInterest type]== 1 || [(MapsLocationOfInterest *)self->_locationOfInterest type]== 2) || (address = self->_address) != 0 && [(AddressBookAddress *)address isHomeWorkSchoolAddress])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PlaceCardItem *)self mapItem];
    v5 = [v6 _maps_isHomeWorkOrSchool];
  }

  return v5;
}

- (BOOL)canShowRequestLocation
{
  IsEnabled_MapsWally = MapsFeature_IsEnabled_MapsWally();
  if (IsEnabled_MapsWally)
  {
    v4 = [(PlaceCardItem *)self searchResult];
    v5 = [v4 autocompletePerson];
    v6 = [v5 canShowRequestLocation];

    LOBYTE(IsEnabled_MapsWally) = v6;
  }

  return IsEnabled_MapsWally;
}

- (BOOL)canShowOpenFindMyAction
{
  IsEnabled_MapsWally = MapsFeature_IsEnabled_MapsWally();
  if (IsEnabled_MapsWally)
  {
    v4 = [(PlaceCardItem *)self searchResult];
    v5 = [v4 autocompletePerson];
    v6 = [v5 canShowOpenFindMy];

    LOBYTE(IsEnabled_MapsWally) = v6;
  }

  return IsEnabled_MapsWally;
}

- (BOOL)canAddNote
{
  v2 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  if (v2)
  {
    v3 = +[MapsOfflineUIHelper sharedHelper];
    v4 = [v3 isUsingOfflineMaps];

    LOBYTE(v2) = v4 ^ 1;
  }

  return v2;
}

- (BOOL)canAddToLibrary
{
  v2 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  if (v2)
  {
    v3 = +[MapsOfflineUIHelper sharedHelper];
    v4 = [v3 isUsingOfflineMaps];

    LOBYTE(v2) = v4 ^ 1;
  }

  return v2;
}

- (BOOL)canAddToShortcuts
{
  v2 = +[MapsOfflineUIHelper sharedHelper];
  v3 = [v2 isUsingOfflineMaps];

  return v3 ^ 1;
}

- (NSString)defaultCollectionItemTitle
{
  v3 = [(PlaceCardItem *)self address];
  if (v3)
  {
    if ([(PlaceCardItem *)self isHomeWorkSchoolAddress])
    {
      [v3 localizedLabel];
    }

    else
    {
      [v3 compositeName];
    }
    v5 = ;
  }

  else
  {
    v4 = [(PlaceCardItem *)self mapItem];
    if ([(PlaceCardItem *)self isDroppedPin])
    {
      [v4 _addressFormattedAsName];
    }

    else
    {
      [v4 _maps_defaultCollectionItemTitle];
    }
    v5 = ;
  }

  return v5;
}

- (BOOL)canAddToCollections
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  v4 = [v3 isUsingOfflineMaps];

  if ((v4 & 1) != 0 || [(PlaceCardItem *)self isMeCard])
  {
    return 0;
  }

  v6 = [(PlaceCardItem *)self searchResult];
  if (v6)
  {
    v7 = v6;
    v8 = [(PlaceCardItem *)self searchResult];
    v9 = [v8 type];

    if (v9 == 3)
    {
      return 1;
    }
  }

  v10 = [(PlaceCardItem *)self mapItem];
  v11 = [v10 _maps_canAddToCollections];

  return v11;
}

- (BOOL)isMeCard
{
  address = self->_address;
  if (address)
  {
    LOBYTE(address) = [(AddressBookAddress *)address isMeCard];
  }

  return address;
}

- (BOOL)shouldInsertInHistoryForRAPTrackingOnly
{
  if ([(PlaceCardItem *)self isHomeWorkSchoolAddress])
  {
    return 1;
  }

  v4 = [(PlaceCardItem *)self locationOfInterest];
  v5 = [v4 identifier];
  v3 = v5 != 0;

  return v3;
}

- (BOOL)shouldInsertInHistory
{
  if ([(PlaceCardItem *)self shouldInsertInHistoryForRAPTrackingOnly])
  {
    LOBYTE(v3) = 1;
  }

  else if ([(PlaceCardItem *)self isCurrentLocation]|| ([(PlaceCardItem *)self contact], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(PlaceCardItem *)self mapItem];

    if (v3)
    {
      v6 = [(PlaceCardItem *)self searchResult];
      v7 = v6;
      LOBYTE(v3) = !v6 || [v6 type] != 3;
    }
  }

  return v3;
}

- (CNContact)contact
{
  address = self->_address;
  if (address)
  {
    v4 = [(AddressBookAddress *)address contact];
  }

  else if (self->_isCurrentLocation)
  {
    v5 = +[AddressBookManager sharedManager];
    v4 = [v5 meCard];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)title
{
  v2 = [(PlaceCardItem *)self placeItem];
  v3 = [v2 name];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 == self)
  {
    v7 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = self->_address == v6->_address && self->_mapItem == v6->_mapItem && self->_searchResult == v6->_searchResult && self->_isDroppedPin == v6->_isDroppedPin;
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (MKMapItem)mapItem
{
  locationOfInterest = self->_locationOfInterest;
  if (locationOfInterest || (locationOfInterest = self->_searchResult) != 0)
  {
    v3 = [locationOfInterest mapItem];
  }

  else
  {
    v3 = self->_mapItem;
  }

  return v3;
}

- (RAPPlace)rapPlace
{
  searchResult = self->_searchResult;
  if (searchResult)
  {
    v3 = searchResult;
  }

  else
  {
    v3 = [[SearchResult alloc] initWithMapItem:self->_mapItem];
  }

  return v3;
}

- (_MKPlaceItem)placeItem
{
  v3 = [(PlaceCardItem *)self address];

  if (v3)
  {
    v4 = [(PlaceCardItem *)self address];
    v5 = [v4 isMeCard];

    if (v5)
    {
      v6 = 40;
    }

    else
    {
      v6 = 32;
    }

    v7 = [(PlaceCardItem *)self mapItem];
    v8 = [(PlaceCardItem *)self address];
    v9 = [v8 contact];
    v10 = [ContactPlaceItem placeItemWithMapItem:v7 contact:v9 options:v6];

    v11 = [(PlaceCardItem *)self address];
    v12 = [v11 addressValue];
    [v10 setSelectedAddress:v12];

    [v10 setLocationOfInterest:self->_locationOfInterest];
    v13 = [(PlaceCardItem *)self address];
    [v10 setIsMeCard:{objc_msgSend(v13, "isMeCard")}];

    v14 = [(PlaceCardItem *)self searchResult];
    [v10 setSearchResult:v14];
  }

  else if (self->_isDroppedPin)
  {
    v15 = [(PlaceCardItem *)self searchResult];
    if ([v15 failedToReverseGeocode])
    {
      v16 = 0;
    }

    else
    {
      v22 = [(PlaceCardItem *)self searchResult];
      v16 = [v22 hasIncompleteMetadata];
    }

    v23 = [(PlaceCardItem *)self mapItem];
    v14 = [v23 _addressFormattedAsName];

    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"Marked Location" value:@"localized string not found" table:0];

    if ([v14 length])
    {
      v26 = v14;
    }

    else
    {
      v26 = v25;
    }

    v27 = v26;
    if ([v27 isEqual:v14])
    {
      v28 = v25;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    v30 = [(PlaceCardItem *)self mapItem];
    v10 = [_MKMapItemPlaceItem placeItemWithMapItem:v30 options:2 isIntermediateMapItem:v16 preferredName:v27 preferredSecondaryName:v29];
  }

  else
  {
    if ([(PlaceCardItem *)self isHomeWorkSchoolAddress])
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    v18 = [(PlaceCardItem *)self isHomeWorkSchoolShortcut];
    v19 = 64;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v19 | v17;
    v21 = [(PlaceCardItem *)self isCurrentLocation];
    v14 = [(PlaceCardItem *)self mapItem];
    v10 = [_MKMapItemPlaceItem placeItemWithMapItem:v14 options:v20 | v21 isIntermediateMapItem:[(PlaceCardItem *)self isIntermediateMapItem]];
  }

  return v10;
}

- (PlaceCardItem)initWithPersonalizedItem:(id)a3
{
  v5 = a3;
  v6 = [v5 mapItem];
  v7 = [(PlaceCardItem *)self initWithMapItem:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_personalizedItem, a3);
    v8 = [v5 address];
    address = v7->_address;
    v7->_address = v8;

    v10 = [v5 searchResult];
    searchResult = v7->_searchResult;
    v7->_searchResult = v10;

    v12 = v7->_searchResult;
    if (v12)
    {
      v13 = [(SearchResultRepr *)v12 type]== 3;
    }

    else
    {
      v13 = 0;
    }

    v7->_isDroppedPin = v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = [v5 locationOfInterest];
      locationOfInterest = v7->_locationOfInterest;
      v7->_locationOfInterest = v14;
    }
  }

  return v7;
}

- (PlaceCardItem)initWithLocationOfInterest:(id)a3
{
  v5 = a3;
  v6 = [v5 mapItem];
  v7 = [(PlaceCardItem *)self initWithMapItem:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_locationOfInterest, a3);
    v8 = [v5 mapItem];
    v9 = [v8 _geoMapItem];

    v10 = [v9 _clientAttributes];
    v11 = [v10 addressBookAttributes];
    v12 = [v11 addressIdentifier];

    if ([v12 length])
    {
      v13 = +[AddressBookManager sharedManager];
      v14 = [v13 addressForIdentifier:v12];
      address = v7->_address;
      v7->_address = v14;

      if (!v7->_address)
      {
        v16 = [v9 addressObject];
        if (v16)
        {
          v17 = +[AddressBookManager sharedManager];
          v18 = [v17 addressForAddressObject:v16];
          v19 = v7->_address;
          v7->_address = v18;
        }
      }
    }
  }

  return v7;
}

- (PlaceCardItem)initWithMapItem:(id)a3 chargeStationWaypointInfo:(id)a4
{
  v7 = a4;
  v8 = [(PlaceCardItem *)self initWithMapItem:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_chargeStationWaypointInfo, a4);
  }

  return v9;
}

- (PlaceCardItem)initWithMapItem:(id)a3 address:(id)a4
{
  v7 = a4;
  v8 = [(PlaceCardItem *)self initWithMapItem:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_address, a4);
    v10 = [v7 locationOfInterest];
    locationOfInterest = v9->_locationOfInterest;
    v9->_locationOfInterest = v10;
  }

  return v9;
}

- (PlaceCardItem)initWithSearchResult:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = PlaceCardItem;
  v6 = [(PlaceCardItem *)&v16 init];
  if (v6)
  {
    v7 = [v5 address];
    address = v6->_address;
    v6->_address = v7;

    objc_storeStrong(&v6->_searchResult, a3);
    v6->_isDroppedPin = [v5 type] == 3;
    if ([(SearchResult *)v6->_searchResult isDynamicCurrentLocation])
    {
      v6->_isCurrentLocation = 1;
    }

    if ([(SearchResultRepr *)v6->_searchResult hasIncompleteMetadata])
    {
      v6->_isIntermediateMapItem = 1;
    }

    v9 = [v5 locationOfInterest];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      locationOfInterest = v6->_locationOfInterest;
      v6->_locationOfInterest = v11;
    }

    else
    {
      locationOfInterest = [v5 address];
      v13 = [locationOfInterest locationOfInterest];
      v14 = v6->_locationOfInterest;
      v6->_locationOfInterest = v13;
    }
  }

  return v6;
}

- (PlaceCardItem)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PlaceCardItem;
  v6 = [(PlaceCardItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
    if ([v5 isCurrentLocation])
    {
      v7->_isCurrentLocation = 1;
    }

    if ([(MKMapItem *)v7->_mapItem _hasResolvablePartialInformation])
    {
      [(PlaceCardItem *)v7 setIsIntermediateMapItem:1];
    }
  }

  return v7;
}

@end