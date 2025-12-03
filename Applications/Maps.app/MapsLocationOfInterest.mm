@interface MapsLocationOfInterest
+ (void)fetchLocationOfInterestWithIdentifier:(id)identifier completion:(id)completion;
- (BOOL)isFrequentLocation;
- (MapsLocationOfInterest)initWithLocationOfInterest:(id)interest geoMapItem:(id)item;
- (MapsLocationOfInterest)initWithLocationOfInterestType:(int64_t)type mapItem:(id)item;
- (MapsLocationOfInterest)initWithMapsFavoriteItem:(id)item;
- (MapsLocationOfInterest)initWithMapsSuggestionEntry:(id)entry;
- (NSString)name;
- (id)description;
- (void)_updateMapItemName;
- (void)_updateMapItemWithGeoMapItem:(id)item;
@end

@implementation MapsLocationOfInterest

- (id)description
{
  v3 = objc_opt_class();
  name = [(MapsLocationOfInterest *)self name];
  mapItem = [(MapsLocationOfInterest *)self mapItem];
  name2 = [mapItem name];
  identifier = [(MapsLocationOfInterest *)self identifier];
  v8 = [NSString stringWithFormat:@"<%@ %p: name='%@', mapItem='%@', loi=%@>", v3, self, name, name2, identifier];

  return v8;
}

- (BOOL)isFrequentLocation
{
  identifier = [(MapsLocationOfInterest *)self identifier];
  v3 = identifier != 0;

  return v3;
}

- (NSString)name
{
  [(MapsLocationOfInterest *)self type];
  customLabel = [(MapsLocationOfInterest *)self customLabel];
  v4 = MapsSuggestionsRoutineLocalizedLabelLOIType();

  if ([v4 length])
  {
    name = v4;
  }

  else
  {
    name = [(MKMapItem *)self->_mapItem name];
  }

  v6 = name;

  return v6;
}

- (void)_updateMapItemWithGeoMapItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v27 = itemCopy;
    [(MapsLocationOfInterest *)self willChangeValueForKey:@"mapItem"];
    _clientAttributes = [v27 _clientAttributes];

    if (_clientAttributes)
    {
      v6 = v27;
    }

    else
    {
      v7 = objc_alloc_init(GEOMapItemClientAttributes);
      v8 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v27 clientAttributes:v7];

      v6 = v8;
    }

    v28 = v6;
    _clientAttributes2 = [v6 _clientAttributes];
    routineAttributes = [_clientAttributes2 routineAttributes];

    if (!routineAttributes)
    {
      v11 = objc_alloc_init(GEOMapItemRoutineAttributes);
      _clientAttributes3 = [v28 _clientAttributes];
      [_clientAttributes3 setRoutineAttributes:v11];
    }

    identifier = self->_identifier;
    v14 = v28;
    if (identifier)
    {
      _clientAttributes4 = [v28 _clientAttributes];
      routineAttributes2 = [_clientAttributes4 routineAttributes];
      [routineAttributes2 setLoiIdentifier:identifier];

      v14 = v28;
    }

    type = self->_type;
    if (type < 4)
    {
      v18 = (type + 1);
    }

    else
    {
      v18 = 0;
    }

    _clientAttributes5 = [v14 _clientAttributes];
    routineAttributes3 = [_clientAttributes5 routineAttributes];
    [routineAttributes3 setLoiType:v18];

    v21 = [[MKMapItem alloc] initWithGeoMapItem:v28 isPlaceHolderPlace:0];
    mapItem = self->_mapItem;
    self->_mapItem = v21;

    name = [(MapsLocationOfInterest *)self name];
    if (name)
    {
      [(MapsLocationOfInterest *)self willChangeValueForKey:@"name"];
      name2 = [(MKMapItem *)self->_mapItem name];
      v25 = [name2 copy];
      originalName = self->_originalName;
      self->_originalName = v25;

      [(MKMapItem *)self->_mapItem setName:name];
      [(MapsLocationOfInterest *)self didChangeValueForKey:@"name"];
    }

    [(MapsLocationOfInterest *)self didChangeValueForKey:@"mapItem"];
  }
}

- (void)_updateMapItemName
{
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  [(MapsLocationOfInterest *)self _updateMapItemWithGeoMapItem:_geoMapItem];
}

- (MapsLocationOfInterest)initWithMapsFavoriteItem:(id)item
{
  itemCopy = item;
  mkMapItem = [itemCopy mkMapItem];
  if (mkMapItem)
  {
    v17.receiver = self;
    v17.super_class = MapsLocationOfInterest;
    v6 = [(MapsLocationOfInterest *)&v17 init];
    if (v6)
    {
      type = [itemCopy type];
      if (type > 6)
      {
        v8 = 0;
      }

      else
      {
        v8 = qword_101215500[type];
      }

      v6->_type = v8;
      v10 = [NSUUID alloc];
      identifier = [itemCopy identifier];
      v12 = [v10 initWithUUIDString:identifier];
      identifier = v6->_identifier;
      v6->_identifier = v12;

      customName = [itemCopy customName];
      customLabel = v6->_customLabel;
      v6->_customLabel = customName;

      objc_storeStrong(&v6->_mapItem, mkMapItem);
      [(MapsLocationOfInterest *)v6 _updateMapItemName];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MapsLocationOfInterest)initWithMapsSuggestionEntry:(id)entry
{
  entryCopy = entry;
  mKMapItem = [entryCopy MKMapItem];
  if (mKMapItem)
  {
    v17.receiver = self;
    v17.super_class = MapsLocationOfInterest;
    v6 = [(MapsLocationOfInterest *)&v17 init];
    if (v6)
    {
      type = [entryCopy type];
      if (type == 1)
      {
        v8 = 0;
      }

      else if (type == 19)
      {
        v8 = 2;
      }

      else if (type == 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }

      v6->_type = v8;
      v10 = [NSUUID alloc];
      uniqueIdentifier = [entryCopy uniqueIdentifier];
      v12 = [v10 initWithUUIDString:uniqueIdentifier];
      identifier = v6->_identifier;
      v6->_identifier = v12;

      v14 = [entryCopy stringForKey:@"MapsSuggestionsCoreRoutineCustomLabel"];
      customLabel = v6->_customLabel;
      v6->_customLabel = v14;

      objc_storeStrong(&v6->_mapItem, mKMapItem);
      [(MapsLocationOfInterest *)v6 _updateMapItemName];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MapsLocationOfInterest)initWithLocationOfInterest:(id)interest geoMapItem:(id)item
{
  interestCopy = interest;
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = MapsLocationOfInterest;
  v8 = [(MapsLocationOfInterest *)&v14 init];
  if (v8)
  {
    v8->_type = [interestCopy type];
    identifierUUID = [interestCopy identifierUUID];
    identifier = v8->_identifier;
    v8->_identifier = identifierUUID;

    customLabel = [interestCopy customLabel];
    customLabel = v8->_customLabel;
    v8->_customLabel = customLabel;

    [(MapsLocationOfInterest *)v8 _updateMapItemWithGeoMapItem:itemCopy];
  }

  return v8;
}

- (MapsLocationOfInterest)initWithLocationOfInterestType:(int64_t)type mapItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MapsLocationOfInterest;
  v7 = [(MapsLocationOfInterest *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    _geoMapItem = [itemCopy _geoMapItem];
    [(MapsLocationOfInterest *)v8 _updateMapItemWithGeoMapItem:_geoMapItem];
  }

  return v8;
}

+ (void)fetchLocationOfInterestWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = completionCopy;
  if (identifierCopy && completionCopy)
  {
    v8 = [[MapsSuggestionsSelfBuildingResourceDepot alloc] initWithName:@"MapsLocationOfInterestResourceDepot"];
    oneRoutine = [v8 oneRoutine];
    oneNetworkRequester = [v8 oneNetworkRequester];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100BBF988;
    v12[3] = &unk_10164C8F0;
    v13 = identifierCopy;
    v14 = oneNetworkRequester;
    v15 = v7;
    v11 = oneNetworkRequester;
    [oneRoutine fetchLocationOfInterestWithIdentifier:v13 withHandler:v12];
  }
}

@end