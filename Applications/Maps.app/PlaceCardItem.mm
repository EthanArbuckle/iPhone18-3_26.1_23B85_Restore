@interface PlaceCardItem
- (BOOL)canAddNote;
- (BOOL)canAddToCollections;
- (BOOL)canAddToLibrary;
- (BOOL)canAddToShortcuts;
- (BOOL)canShowOpenFindMyAction;
- (BOOL)canShowRequestLocation;
- (BOOL)isEqual:(id)equal;
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
- (PlaceCardItem)initWithLocationOfInterest:(id)interest;
- (PlaceCardItem)initWithMapItem:(id)item;
- (PlaceCardItem)initWithMapItem:(id)item address:(id)address;
- (PlaceCardItem)initWithMapItem:(id)item chargeStationWaypointInfo:(id)info;
- (PlaceCardItem)initWithPersonalizedItem:(id)item;
- (PlaceCardItem)initWithSearchResult:(id)result;
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
  mapItem = [(PlaceCardItem *)self mapItem];
  _venueInfo = [mapItem _venueInfo];
  venueIdentifier = [_venueInfo venueIdentifier];

  if (venueIdentifier)
  {
    mapItem2 = [(PlaceCardItem *)self mapItem];
    _venueInfo2 = [mapItem2 _venueInfo];
    venueIdentifier2 = [_venueInfo2 venueIdentifier];
  }

  else
  {
    mapItem2 = [(PlaceCardItem *)self searchResult];
    _venueInfo2 = [mapItem2 mapItem];
    v7_venueInfo = [_venueInfo2 _venueInfo];
    venueIdentifier2 = [v7_venueInfo venueIdentifier];
  }

  return venueIdentifier2;
}

- (unint64_t)venueCardID
{
  mapItem = [(PlaceCardItem *)self mapItem];
  _muid = [mapItem _muid];

  return _muid;
}

- (unint64_t)venueID
{
  _venueIdentifier = [(PlaceCardItem *)self _venueIdentifier];
  if ([_venueIdentifier _hasVenueID])
  {
    venueID = [_venueIdentifier venueID];
  }

  else
  {
    personalizedItem = [(PlaceCardItem *)self personalizedItem];
    sourceLabelMarker = [personalizedItem sourceLabelMarker];
    venueID = [sourceLabelMarker venueID];
  }

  return venueID;
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

  mapItem = [(PlaceCardItem *)self mapItem];
  if ([mapItem _hasMUID] && objc_msgSend(mapItem, "_muid"))
  {
    isFrequentLocation = 0;
  }

  else
  {
    locationOfInterest = [(PlaceCardItem *)self locationOfInterest];
    isFrequentLocation = [locationOfInterest isFrequentLocation];
  }

  return isFrequentLocation;
}

- (int64_t)addressType
{
  locationOfInterest = [(PlaceCardItem *)self locationOfInterest];

  if (locationOfInterest)
  {
    locationOfInterest2 = [(PlaceCardItem *)self locationOfInterest];
    type = [locationOfInterest2 type];

    return type;
  }

  else
  {
    address = [(PlaceCardItem *)self address];
    addressType = [address addressType];

    if (addressType <= 3)
    {
      return addressType - 1;
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
    meCard = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    mapItem = [(PlaceCardItem *)self mapItem];
    [meCard shortcutForMapItem:mapItem];
  }

  else
  {
    v5 = +[ShortcutManager sharedManager];
    meCard = [v5 meCard];

    mapItem = [(PlaceCardItem *)self mapItem];
    [meCard _maps_shortcutIncludingHiddenForMapItem:mapItem];
  }
  v6 = ;

  return v6;
}

- (BOOL)isHomeWorkSchoolShortcut
{
  shortcut = [(PlaceCardItem *)self shortcut];
  v3 = shortcut;
  v4 = shortcut && ([shortcut isHidden] & 1) == 0 && (objc_msgSend(v3, "type") == 2 || objc_msgSend(v3, "type") == 3 || objc_msgSend(v3, "type") == 5);

  return v4;
}

- (BOOL)isHomeWorkSchoolAddress
{
  identifier = [(MapsLocationOfInterest *)self->_locationOfInterest identifier];
  if (identifier && (![(MapsLocationOfInterest *)self->_locationOfInterest type]|| [(MapsLocationOfInterest *)self->_locationOfInterest type]== 1 || [(MapsLocationOfInterest *)self->_locationOfInterest type]== 2) || (address = self->_address) != 0 && [(AddressBookAddress *)address isHomeWorkSchoolAddress])
  {
    _maps_isHomeWorkOrSchool = 1;
  }

  else
  {
    mapItem = [(PlaceCardItem *)self mapItem];
    _maps_isHomeWorkOrSchool = [mapItem _maps_isHomeWorkOrSchool];
  }

  return _maps_isHomeWorkOrSchool;
}

- (BOOL)canShowRequestLocation
{
  IsEnabled_MapsWally = MapsFeature_IsEnabled_MapsWally();
  if (IsEnabled_MapsWally)
  {
    searchResult = [(PlaceCardItem *)self searchResult];
    autocompletePerson = [searchResult autocompletePerson];
    canShowRequestLocation = [autocompletePerson canShowRequestLocation];

    LOBYTE(IsEnabled_MapsWally) = canShowRequestLocation;
  }

  return IsEnabled_MapsWally;
}

- (BOOL)canShowOpenFindMyAction
{
  IsEnabled_MapsWally = MapsFeature_IsEnabled_MapsWally();
  if (IsEnabled_MapsWally)
  {
    searchResult = [(PlaceCardItem *)self searchResult];
    autocompletePerson = [searchResult autocompletePerson];
    canShowOpenFindMy = [autocompletePerson canShowOpenFindMy];

    LOBYTE(IsEnabled_MapsWally) = canShowOpenFindMy;
  }

  return IsEnabled_MapsWally;
}

- (BOOL)canAddNote
{
  v2 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  if (v2)
  {
    v3 = +[MapsOfflineUIHelper sharedHelper];
    isUsingOfflineMaps = [v3 isUsingOfflineMaps];

    LOBYTE(v2) = isUsingOfflineMaps ^ 1;
  }

  return v2;
}

- (BOOL)canAddToLibrary
{
  v2 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  if (v2)
  {
    v3 = +[MapsOfflineUIHelper sharedHelper];
    isUsingOfflineMaps = [v3 isUsingOfflineMaps];

    LOBYTE(v2) = isUsingOfflineMaps ^ 1;
  }

  return v2;
}

- (BOOL)canAddToShortcuts
{
  v2 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v2 isUsingOfflineMaps];

  return isUsingOfflineMaps ^ 1;
}

- (NSString)defaultCollectionItemTitle
{
  address = [(PlaceCardItem *)self address];
  if (address)
  {
    if ([(PlaceCardItem *)self isHomeWorkSchoolAddress])
    {
      [address localizedLabel];
    }

    else
    {
      [address compositeName];
    }
    v5 = ;
  }

  else
  {
    mapItem = [(PlaceCardItem *)self mapItem];
    if ([(PlaceCardItem *)self isDroppedPin])
    {
      [mapItem _addressFormattedAsName];
    }

    else
    {
      [mapItem _maps_defaultCollectionItemTitle];
    }
    v5 = ;
  }

  return v5;
}

- (BOOL)canAddToCollections
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v3 isUsingOfflineMaps];

  if ((isUsingOfflineMaps & 1) != 0 || [(PlaceCardItem *)self isMeCard])
  {
    return 0;
  }

  searchResult = [(PlaceCardItem *)self searchResult];
  if (searchResult)
  {
    v7 = searchResult;
    searchResult2 = [(PlaceCardItem *)self searchResult];
    type = [searchResult2 type];

    if (type == 3)
    {
      return 1;
    }
  }

  mapItem = [(PlaceCardItem *)self mapItem];
  _maps_canAddToCollections = [mapItem _maps_canAddToCollections];

  return _maps_canAddToCollections;
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

  locationOfInterest = [(PlaceCardItem *)self locationOfInterest];
  identifier = [locationOfInterest identifier];
  v3 = identifier != 0;

  return v3;
}

- (BOOL)shouldInsertInHistory
{
  if ([(PlaceCardItem *)self shouldInsertInHistoryForRAPTrackingOnly])
  {
    LOBYTE(mapItem) = 1;
  }

  else if ([(PlaceCardItem *)self isCurrentLocation]|| ([(PlaceCardItem *)self contact], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    LOBYTE(mapItem) = 0;
  }

  else
  {
    mapItem = [(PlaceCardItem *)self mapItem];

    if (mapItem)
    {
      searchResult = [(PlaceCardItem *)self searchResult];
      v7 = searchResult;
      LOBYTE(mapItem) = !searchResult || [searchResult type] != 3;
    }
  }

  return mapItem;
}

- (CNContact)contact
{
  address = self->_address;
  if (address)
  {
    contact = [(AddressBookAddress *)address contact];
  }

  else if (self->_isCurrentLocation)
  {
    v5 = +[AddressBookManager sharedManager];
    contact = [v5 meCard];
  }

  else
  {
    contact = 0;
  }

  return contact;
}

- (NSString)title
{
  placeItem = [(PlaceCardItem *)self placeItem];
  name = [placeItem name];

  return name;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_9;
  }

  if (equalCopy == self)
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
    mapItem = [locationOfInterest mapItem];
  }

  else
  {
    mapItem = self->_mapItem;
  }

  return mapItem;
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
  address = [(PlaceCardItem *)self address];

  if (address)
  {
    address2 = [(PlaceCardItem *)self address];
    isMeCard = [address2 isMeCard];

    if (isMeCard)
    {
      v6 = 40;
    }

    else
    {
      v6 = 32;
    }

    mapItem = [(PlaceCardItem *)self mapItem];
    address3 = [(PlaceCardItem *)self address];
    contact = [address3 contact];
    v10 = [ContactPlaceItem placeItemWithMapItem:mapItem contact:contact options:v6];

    address4 = [(PlaceCardItem *)self address];
    addressValue = [address4 addressValue];
    [v10 setSelectedAddress:addressValue];

    [v10 setLocationOfInterest:self->_locationOfInterest];
    address5 = [(PlaceCardItem *)self address];
    [v10 setIsMeCard:{objc_msgSend(address5, "isMeCard")}];

    searchResult = [(PlaceCardItem *)self searchResult];
    [v10 setSearchResult:searchResult];
  }

  else if (self->_isDroppedPin)
  {
    searchResult2 = [(PlaceCardItem *)self searchResult];
    if ([searchResult2 failedToReverseGeocode])
    {
      hasIncompleteMetadata = 0;
    }

    else
    {
      searchResult3 = [(PlaceCardItem *)self searchResult];
      hasIncompleteMetadata = [searchResult3 hasIncompleteMetadata];
    }

    mapItem2 = [(PlaceCardItem *)self mapItem];
    searchResult = [mapItem2 _addressFormattedAsName];

    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"Marked Location" value:@"localized string not found" table:0];

    if ([searchResult length])
    {
      v26 = searchResult;
    }

    else
    {
      v26 = v25;
    }

    v27 = v26;
    if ([v27 isEqual:searchResult])
    {
      v28 = v25;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    mapItem3 = [(PlaceCardItem *)self mapItem];
    v10 = [_MKMapItemPlaceItem placeItemWithMapItem:mapItem3 options:2 isIntermediateMapItem:hasIncompleteMetadata preferredName:v27 preferredSecondaryName:v29];
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

    isHomeWorkSchoolShortcut = [(PlaceCardItem *)self isHomeWorkSchoolShortcut];
    v19 = 64;
    if (!isHomeWorkSchoolShortcut)
    {
      v19 = 0;
    }

    v20 = v19 | v17;
    isCurrentLocation = [(PlaceCardItem *)self isCurrentLocation];
    searchResult = [(PlaceCardItem *)self mapItem];
    v10 = [_MKMapItemPlaceItem placeItemWithMapItem:searchResult options:v20 | isCurrentLocation isIntermediateMapItem:[(PlaceCardItem *)self isIntermediateMapItem]];
  }

  return v10;
}

- (PlaceCardItem)initWithPersonalizedItem:(id)item
{
  itemCopy = item;
  mapItem = [itemCopy mapItem];
  v7 = [(PlaceCardItem *)self initWithMapItem:mapItem];

  if (v7)
  {
    objc_storeStrong(&v7->_personalizedItem, item);
    address = [itemCopy address];
    address = v7->_address;
    v7->_address = address;

    searchResult = [itemCopy searchResult];
    searchResult = v7->_searchResult;
    v7->_searchResult = searchResult;

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
      locationOfInterest = [itemCopy locationOfInterest];
      locationOfInterest = v7->_locationOfInterest;
      v7->_locationOfInterest = locationOfInterest;
    }
  }

  return v7;
}

- (PlaceCardItem)initWithLocationOfInterest:(id)interest
{
  interestCopy = interest;
  mapItem = [interestCopy mapItem];
  v7 = [(PlaceCardItem *)self initWithMapItem:mapItem];

  if (v7)
  {
    objc_storeStrong(&v7->_locationOfInterest, interest);
    mapItem2 = [interestCopy mapItem];
    _geoMapItem = [mapItem2 _geoMapItem];

    _clientAttributes = [_geoMapItem _clientAttributes];
    addressBookAttributes = [_clientAttributes addressBookAttributes];
    addressIdentifier = [addressBookAttributes addressIdentifier];

    if ([addressIdentifier length])
    {
      v13 = +[AddressBookManager sharedManager];
      v14 = [v13 addressForIdentifier:addressIdentifier];
      address = v7->_address;
      v7->_address = v14;

      if (!v7->_address)
      {
        addressObject = [_geoMapItem addressObject];
        if (addressObject)
        {
          v17 = +[AddressBookManager sharedManager];
          v18 = [v17 addressForAddressObject:addressObject];
          v19 = v7->_address;
          v7->_address = v18;
        }
      }
    }
  }

  return v7;
}

- (PlaceCardItem)initWithMapItem:(id)item chargeStationWaypointInfo:(id)info
{
  infoCopy = info;
  v8 = [(PlaceCardItem *)self initWithMapItem:item];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_chargeStationWaypointInfo, info);
  }

  return v9;
}

- (PlaceCardItem)initWithMapItem:(id)item address:(id)address
{
  addressCopy = address;
  v8 = [(PlaceCardItem *)self initWithMapItem:item];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_address, address);
    locationOfInterest = [addressCopy locationOfInterest];
    locationOfInterest = v9->_locationOfInterest;
    v9->_locationOfInterest = locationOfInterest;
  }

  return v9;
}

- (PlaceCardItem)initWithSearchResult:(id)result
{
  resultCopy = result;
  v16.receiver = self;
  v16.super_class = PlaceCardItem;
  v6 = [(PlaceCardItem *)&v16 init];
  if (v6)
  {
    address = [resultCopy address];
    address = v6->_address;
    v6->_address = address;

    objc_storeStrong(&v6->_searchResult, result);
    v6->_isDroppedPin = [resultCopy type] == 3;
    if ([(SearchResult *)v6->_searchResult isDynamicCurrentLocation])
    {
      v6->_isCurrentLocation = 1;
    }

    if ([(SearchResultRepr *)v6->_searchResult hasIncompleteMetadata])
    {
      v6->_isIntermediateMapItem = 1;
    }

    locationOfInterest = [resultCopy locationOfInterest];
    v10 = locationOfInterest;
    if (locationOfInterest)
    {
      v11 = locationOfInterest;
      locationOfInterest = v6->_locationOfInterest;
      v6->_locationOfInterest = v11;
    }

    else
    {
      locationOfInterest = [resultCopy address];
      locationOfInterest2 = [locationOfInterest locationOfInterest];
      v14 = v6->_locationOfInterest;
      v6->_locationOfInterest = locationOfInterest2;
    }
  }

  return v6;
}

- (PlaceCardItem)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PlaceCardItem;
  v6 = [(PlaceCardItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
    if ([itemCopy isCurrentLocation])
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