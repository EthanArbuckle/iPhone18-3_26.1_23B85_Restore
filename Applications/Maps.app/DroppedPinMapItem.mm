@interface DroppedPinMapItem
- (DroppedPinMapItem)initWithSearchResult:(id)a3;
- (NSArray)autocompletionStrings;
- (id)clientFeatureID;
- (id)leafPersonalizedAutocompleteItems;
- (id)styleAttributes;
- (id)title;
@end

@implementation DroppedPinMapItem

- (id)leafPersonalizedAutocompleteItems
{
  v4 = self;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (NSArray)autocompletionStrings
{
  autocompletionStrings = self->_autocompletionStrings;
  if (!autocompletionStrings)
  {
    v4 = self;
    objc_sync_enter(v4);
    if (!self->_autocompletionStrings)
    {
      +[NSMutableArray array];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100D5831C;
      v5 = v15[3] = &unk_101652AB0;
      v16 = v5;
      v6 = objc_retainBlock(v15);
      v7 = [(SearchResultMapItemBase *)v4 searchResult];
      v8 = [v7 name];
      (v6[2])(v6, v8, 1, 1);

      v9 = [(SearchResultMapItemBase *)v4 searchResult];
      v10 = [v9 mapItem];
      v11 = [v10 _addressFormattedAsName];
      (v6[2])(v6, v11, 3, 4);

      v12 = [v5 copy];
      v13 = self->_autocompletionStrings;
      self->_autocompletionStrings = v12;
    }

    objc_sync_exit(v4);

    autocompletionStrings = self->_autocompletionStrings;
  }

  return autocompletionStrings;
}

- (id)clientFeatureID
{
  v3 = [(DroppedPinMapItem *)self styleAttributes];
  v4 = [v3 styleAttributes];
  v5 = [v4 poiType];
  v6 = [(SearchResultMapItemBase *)self mapItem];
  [v6 _coordinate];
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

  v15 = v14 ^ v5;
  v16 = [(SearchResultMapItemBase *)self mapItem];
  [v16 _coordinate];
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

  v26 = [(SearchResultMapItemBase *)self mapItem];
  v27 = [v26 _geoMapItem];
  v28 = [v27 name];

  if (v28)
  {
    v29 = [(SearchResultMapItemBase *)self mapItem];
    v30 = [v29 _geoMapItem];
    v31 = [v30 name];
    v25 ^= [v31 hash];
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
  v3 = [(SearchResultMapItemBase *)self searchResult];
  v4 = [v3 isReverseGeocoded];

  if (v4)
  {
    v5 = [(SearchResultMapItemBase *)self searchResult];
    v6 = [v5 mapItem];
    v7 = [v6 _addressFormattedAsName];

    if (v7 && [v7 length])
    {
      v8 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:v7 priority:1];
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = +[PersonalizedItemPrioritizedStringAdornment defaultAdornment];
LABEL_7:
  v9 = v8;

  return v9;
}

- (DroppedPinMapItem)initWithSearchResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DroppedPinMapItem;
  v5 = [(SearchResultMapItemBase *)&v10 initWithSearchResult:v4];
  if (v5)
  {
    v6 = [DroppedPinMapItemKey alloc];
    [v4 coordinate];
    v7 = [(DroppedPinMapItemKey *)v6 initWithCoordinate:?];
    droppedPinKey = v5->_droppedPinKey;
    v5->_droppedPinKey = v7;
  }

  return v5;
}

@end