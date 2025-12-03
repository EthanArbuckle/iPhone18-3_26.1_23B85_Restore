@interface PersonalizedCollectionPlaceItem
- (CLLocationCoordinate2D)coordinate;
- (NSArray)autocompletionStrings;
- (NSString)description;
- (PersonalizedCollectionPlaceItem)initWithMapItem:(id)item title:(id)title libraryBadgeType:(unint64_t)type;
- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID;
- (PersonalizedItemSource)source;
- (PersonalizedItemStyleAttributesAdornment)styleAttributes;
- (id)autocompleteObject;
- (id)leafPersonalizedAutocompleteItems;
@end

@implementation PersonalizedCollectionPlaceItem

- (CLLocationCoordinate2D)coordinate
{
  [(MKMapItem *)self->_mapItem _coordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (PersonalizedItemStyleAttributesAdornment)styleAttributes
{
  _styleAttributes = [(MKMapItem *)self->_mapItem _styleAttributes];
  v4 = _styleAttributes;
  if (!_styleAttributes || ([_styleAttributes hasAttributes] & 1) == 0)
  {
    v5 = +[GEOFeatureStyleAttributes markerStyleAttributes];

    v4 = v5;
  }

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    if (self->_libraryBadgeType <= 1)
    {
      libraryBadgeType = 1;
    }

    else
    {
      libraryBadgeType = self->_libraryBadgeType;
    }
  }

  else
  {
    libraryBadgeType = 1;
  }

  v11[0] = &off_1016E62F0;
  v7 = [NSNumber numberWithUnsignedInteger:libraryBadgeType];
  v11[1] = &off_1016E6308;
  v12[0] = v7;
  v12[1] = &off_1016E6320;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:v4 additionalAttributes:v8];

  return v9;
}

- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID
{
  styleAttributes = [(PersonalizedCollectionPlaceItem *)self styleAttributes];
  v3StyleAttributes = [styleAttributes styleAttributes];
  poiType = [v3StyleAttributes poiType];
  [(MKMapItem *)self->_mapItem _coordinate];
  v7 = fabs(v6);
  v8 = floor(v7 + 0.5);
  v9 = (v7 - v8) * 1.84467441e19;
  v10 = 2654435761u * (v8 - trunc(v8 * 5.42101086e-20) * 1.84467441e19);
  v11 = v10 + v9;
  v12 = fabs(v9);
  if (v9 <= 0.0)
  {
    v11 = v10;
  }

  v13 = v10 - v12;
  if (v9 >= 0.0)
  {
    v13 = v11;
  }

  v14 = v13 ^ poiType;
  [(MKMapItem *)self->_mapItem _coordinate];
  v16 = fabs(v15);
  v17 = floor(v16 + 0.5);
  v18 = (v16 - v17) * 1.84467441e19;
  v19 = v17 - trunc(v17 * 5.42101086e-20) * 1.84467441e19;
  v20 = 2654435761u * v19;
  v21 = v20 + v18;
  if (v18 <= 0.0)
  {
    v21 = 2654435761u * v19;
  }

  v22 = v20 - fabs(v18);
  if (v18 >= 0.0)
  {
    v22 = v21;
  }

  v23 = v14 ^ v22;

  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  name = [_geoMapItem name];

  if (name)
  {
    _geoMapItem2 = [(MKMapItem *)self->_mapItem _geoMapItem];
    name2 = [_geoMapItem2 name];
    v23 ^= [name2 hash];
  }

  return [PersonalizedItemClientFeatureIDAdornment adornmentWithClientFeatureID:v23];
}

- (PersonalizedItemSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (NSString)description
{
  name = [(MKMapItem *)self->_mapItem name];
  v4 = [NSString stringWithFormat:@"<PersonalizedCollectionPlaceItem %p: %@>", self, name];

  return v4;
}

- (PersonalizedCollectionPlaceItem)initWithMapItem:(id)item title:(id)title libraryBadgeType:(unint64_t)type
{
  itemCopy = item;
  titleCopy = title;
  v22.receiver = self;
  v22.super_class = PersonalizedCollectionPlaceItem;
  v11 = [(PersonalizedCollectionPlaceItem *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mapItem, item);
    if (titleCopy)
    {
      name = titleCopy;
    }

    else
    {
      name = [(MKMapItem *)v12->_mapItem name];
    }

    title = v12->_title;
    v12->_title = name;

    v12->_libraryBadgeType = type;
    v15 = +[NSMutableSet set];
    v16 = [[PersonalizedMapItemKey alloc] initWithMapItem:itemCopy];
    if (v16)
    {
      [v15 addObject:v16];
    }

    _muid = [itemCopy _muid];
    if (_muid)
    {
      v18 = [[PersonalizedMapItemMUIDKey alloc] initWithMUID:_muid];
      if (v18)
      {
        [v15 addObject:v18];
      }
    }

    v19 = [v15 copy];
    keys = v12->_keys;
    v12->_keys = v19;
  }

  return v12;
}

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
      v5 = [AutocompleteMatchInfo matchInfoWithType:1];
      v6 = [[AutocompleteStringMatcher alloc] initWithPlaceName:selfCopy->_title matchInfo:v5];
      v10 = v6;
      v7 = [NSArray arrayWithObjects:&v10 count:1];
      v8 = self->_autocompletionStrings;
      self->_autocompletionStrings = v7;
    }

    objc_sync_exit(selfCopy);

    autocompletionStrings = self->_autocompletionStrings;
  }

  return autocompletionStrings;
}

- (id)autocompleteObject
{
  searchResult = self->_searchResult;
  if (!searchResult)
  {
    v4 = [[SearchResult alloc] initWithMapItem:self->_mapItem];
    v5 = self->_searchResult;
    self->_searchResult = v4;

    searchResult = self->_searchResult;
  }

  return searchResult;
}

@end