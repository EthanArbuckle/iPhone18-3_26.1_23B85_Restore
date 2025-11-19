@interface MapsLocationOfInterest
+ (void)fetchLocationOfInterestWithIdentifier:(id)a3 completion:(id)a4;
- (BOOL)isFrequentLocation;
- (MapsLocationOfInterest)initWithLocationOfInterest:(id)a3 geoMapItem:(id)a4;
- (MapsLocationOfInterest)initWithLocationOfInterestType:(int64_t)a3 mapItem:(id)a4;
- (MapsLocationOfInterest)initWithMapsFavoriteItem:(id)a3;
- (MapsLocationOfInterest)initWithMapsSuggestionEntry:(id)a3;
- (NSString)name;
- (id)description;
- (void)_updateMapItemName;
- (void)_updateMapItemWithGeoMapItem:(id)a3;
@end

@implementation MapsLocationOfInterest

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(MapsLocationOfInterest *)self name];
  v5 = [(MapsLocationOfInterest *)self mapItem];
  v6 = [v5 name];
  v7 = [(MapsLocationOfInterest *)self identifier];
  v8 = [NSString stringWithFormat:@"<%@ %p: name='%@', mapItem='%@', loi=%@>", v3, self, v4, v6, v7];

  return v8;
}

- (BOOL)isFrequentLocation
{
  v2 = [(MapsLocationOfInterest *)self identifier];
  v3 = v2 != 0;

  return v3;
}

- (NSString)name
{
  [(MapsLocationOfInterest *)self type];
  v3 = [(MapsLocationOfInterest *)self customLabel];
  v4 = MapsSuggestionsRoutineLocalizedLabelLOIType();

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(MKMapItem *)self->_mapItem name];
  }

  v6 = v5;

  return v6;
}

- (void)_updateMapItemWithGeoMapItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v27 = v4;
    [(MapsLocationOfInterest *)self willChangeValueForKey:@"mapItem"];
    v5 = [v27 _clientAttributes];

    if (v5)
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
    v9 = [v6 _clientAttributes];
    v10 = [v9 routineAttributes];

    if (!v10)
    {
      v11 = objc_alloc_init(GEOMapItemRoutineAttributes);
      v12 = [v28 _clientAttributes];
      [v12 setRoutineAttributes:v11];
    }

    identifier = self->_identifier;
    v14 = v28;
    if (identifier)
    {
      v15 = [v28 _clientAttributes];
      v16 = [v15 routineAttributes];
      [v16 setLoiIdentifier:identifier];

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

    v19 = [v14 _clientAttributes];
    v20 = [v19 routineAttributes];
    [v20 setLoiType:v18];

    v21 = [[MKMapItem alloc] initWithGeoMapItem:v28 isPlaceHolderPlace:0];
    mapItem = self->_mapItem;
    self->_mapItem = v21;

    v23 = [(MapsLocationOfInterest *)self name];
    if (v23)
    {
      [(MapsLocationOfInterest *)self willChangeValueForKey:@"name"];
      v24 = [(MKMapItem *)self->_mapItem name];
      v25 = [v24 copy];
      originalName = self->_originalName;
      self->_originalName = v25;

      [(MKMapItem *)self->_mapItem setName:v23];
      [(MapsLocationOfInterest *)self didChangeValueForKey:@"name"];
    }

    [(MapsLocationOfInterest *)self didChangeValueForKey:@"mapItem"];
  }
}

- (void)_updateMapItemName
{
  v3 = [(MKMapItem *)self->_mapItem _geoMapItem];
  [(MapsLocationOfInterest *)self _updateMapItemWithGeoMapItem:v3];
}

- (MapsLocationOfInterest)initWithMapsFavoriteItem:(id)a3
{
  v4 = a3;
  v5 = [v4 mkMapItem];
  if (v5)
  {
    v17.receiver = self;
    v17.super_class = MapsLocationOfInterest;
    v6 = [(MapsLocationOfInterest *)&v17 init];
    if (v6)
    {
      v7 = [v4 type];
      if (v7 > 6)
      {
        v8 = 0;
      }

      else
      {
        v8 = qword_101215500[v7];
      }

      v6->_type = v8;
      v10 = [NSUUID alloc];
      v11 = [v4 identifier];
      v12 = [v10 initWithUUIDString:v11];
      identifier = v6->_identifier;
      v6->_identifier = v12;

      v14 = [v4 customName];
      customLabel = v6->_customLabel;
      v6->_customLabel = v14;

      objc_storeStrong(&v6->_mapItem, v5);
      [(MapsLocationOfInterest *)v6 _updateMapItemName];
    }

    self = v6;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MapsLocationOfInterest)initWithMapsSuggestionEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 MKMapItem];
  if (v5)
  {
    v17.receiver = self;
    v17.super_class = MapsLocationOfInterest;
    v6 = [(MapsLocationOfInterest *)&v17 init];
    if (v6)
    {
      v7 = [v4 type];
      if (v7 == 1)
      {
        v8 = 0;
      }

      else if (v7 == 19)
      {
        v8 = 2;
      }

      else if (v7 == 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }

      v6->_type = v8;
      v10 = [NSUUID alloc];
      v11 = [v4 uniqueIdentifier];
      v12 = [v10 initWithUUIDString:v11];
      identifier = v6->_identifier;
      v6->_identifier = v12;

      v14 = [v4 stringForKey:@"MapsSuggestionsCoreRoutineCustomLabel"];
      customLabel = v6->_customLabel;
      v6->_customLabel = v14;

      objc_storeStrong(&v6->_mapItem, v5);
      [(MapsLocationOfInterest *)v6 _updateMapItemName];
    }

    self = v6;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MapsLocationOfInterest)initWithLocationOfInterest:(id)a3 geoMapItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MapsLocationOfInterest;
  v8 = [(MapsLocationOfInterest *)&v14 init];
  if (v8)
  {
    v8->_type = [v6 type];
    v9 = [v6 identifierUUID];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v6 customLabel];
    customLabel = v8->_customLabel;
    v8->_customLabel = v11;

    [(MapsLocationOfInterest *)v8 _updateMapItemWithGeoMapItem:v7];
  }

  return v8;
}

- (MapsLocationOfInterest)initWithLocationOfInterestType:(int64_t)a3 mapItem:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MapsLocationOfInterest;
  v7 = [(MapsLocationOfInterest *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 _geoMapItem];
    [(MapsLocationOfInterest *)v8 _updateMapItemWithGeoMapItem:v9];
  }

  return v8;
}

+ (void)fetchLocationOfInterestWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [[MapsSuggestionsSelfBuildingResourceDepot alloc] initWithName:@"MapsLocationOfInterestResourceDepot"];
    v9 = [v8 oneRoutine];
    v10 = [v8 oneNetworkRequester];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100BBF988;
    v12[3] = &unk_10164C8F0;
    v13 = v5;
    v14 = v10;
    v15 = v7;
    v11 = v10;
    [v9 fetchLocationOfInterestWithIdentifier:v13 withHandler:v12];
  }
}

@end