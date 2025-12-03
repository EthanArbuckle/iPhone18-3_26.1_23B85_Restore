@interface DroppedPinMapItem
- (DroppedPinMapItem)initWithSearchResult:(id)result;
- (NSArray)autocompletionStrings;
- (id)clientFeatureID;
- (id)leafPersonalizedAutocompleteItems;
- (id)styleAttributes;
- (id)title;
@end

@implementation DroppedPinMapItem

- (id)leafPersonalizedAutocompleteItems
{
  selfCopy = self;
  v2 = [NSArray arrayWithObjects:&selfCopy count:1];

  return v2;
}

- (NSArray)autocompletionStrings
{
  autocompletionStrings = self->_autocompletionStrings;
  if (!autocompletionStrings)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_autocompletionStrings)
    {
      +[NSMutableArray array];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100D5831C;
      v5 = v15[3] = &unk_101652AB0;
      v16 = v5;
      v6 = objc_retainBlock(v15);
      searchResult = [(SearchResultMapItemBase *)selfCopy searchResult];
      name = [searchResult name];
      (v6[2])(v6, name, 1, 1);

      searchResult2 = [(SearchResultMapItemBase *)selfCopy searchResult];
      mapItem = [searchResult2 mapItem];
      _addressFormattedAsName = [mapItem _addressFormattedAsName];
      (v6[2])(v6, _addressFormattedAsName, 3, 4);

      v12 = [v5 copy];
      v13 = self->_autocompletionStrings;
      self->_autocompletionStrings = v12;
    }

    objc_sync_exit(selfCopy);

    autocompletionStrings = self->_autocompletionStrings;
  }

  return autocompletionStrings;
}

- (id)clientFeatureID
{
  styleAttributes = [(DroppedPinMapItem *)self styleAttributes];
  v3StyleAttributes = [styleAttributes styleAttributes];
  poiType = [v3StyleAttributes poiType];
  mapItem = [(SearchResultMapItemBase *)self mapItem];
  [mapItem _coordinate];
  v8 = fabs(v7);
  v9 = floor(v8 + 0.5);
  v10 = (v8 - v9) * 1.84467441e19;
  v11 = v9 - trunc(v9 * 5.42101086e-20) * 1.84467441e19;
  v12 = 2654435761u * v11;
  v13 = v12 + v10;
  if (v10 <= 0.0)
  {
    v13 = 2654435761u * v11;
  }

  v14 = v12 - fabs(v10);
  if (v10 >= 0.0)
  {
    v14 = v13;
  }

  v15 = v14 ^ poiType;
  mapItem2 = [(SearchResultMapItemBase *)self mapItem];
  [mapItem2 _coordinate];
  v18 = fabs(v17);
  v19 = floor(v18 + 0.5);
  v20 = (v18 - v19) * 1.84467441e19;
  v21 = v19 - trunc(v19 * 5.42101086e-20) * 1.84467441e19;
  v22 = 2654435761u * v21;
  v23 = v22 + v20;
  if (v20 <= 0.0)
  {
    v23 = 2654435761u * v21;
  }

  v24 = v22 - fabs(v20);
  if (v20 >= 0.0)
  {
    v24 = v23;
  }

  v25 = v15 ^ v24;

  mapItem3 = [(SearchResultMapItemBase *)self mapItem];
  _geoMapItem = [mapItem3 _geoMapItem];
  name = [_geoMapItem name];

  if (name)
  {
    mapItem4 = [(SearchResultMapItemBase *)self mapItem];
    _geoMapItem2 = [mapItem4 _geoMapItem];
    name2 = [_geoMapItem2 name];
    v25 ^= [name2 hash];
  }

  return [PersonalizedItemClientFeatureIDAdornment adornmentWithClientFeatureID:v25];
}

- (id)styleAttributes
{
  v2 = +[GEOFeatureStyleAttributes markerStyleAttributes];
  v6 = &off_1016E9AD0;
  v7 = &off_1016E9AB8;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:v2 additionalAttributes:v3];

  return v4;
}

- (id)title
{
  searchResult = [(SearchResultMapItemBase *)self searchResult];
  isReverseGeocoded = [searchResult isReverseGeocoded];

  if (isReverseGeocoded)
  {
    searchResult2 = [(SearchResultMapItemBase *)self searchResult];
    mapItem = [searchResult2 mapItem];
    _addressFormattedAsName = [mapItem _addressFormattedAsName];

    if (_addressFormattedAsName && [_addressFormattedAsName length])
    {
      v8 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:_addressFormattedAsName priority:1];
      goto LABEL_7;
    }
  }

  else
  {
    _addressFormattedAsName = 0;
  }

  v8 = +[PersonalizedItemPrioritizedStringAdornment defaultAdornment];
LABEL_7:
  v9 = v8;

  return v9;
}

- (DroppedPinMapItem)initWithSearchResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = DroppedPinMapItem;
  v5 = [(SearchResultMapItemBase *)&v10 initWithSearchResult:resultCopy];
  if (v5)
  {
    v6 = [DroppedPinMapItemKey alloc];
    [resultCopy coordinate];
    v7 = [(DroppedPinMapItemKey *)v6 initWithCoordinate:?];
    droppedPinKey = v5->_droppedPinKey;
    v5->_droppedPinKey = v7;
  }

  return v5;
}

@end