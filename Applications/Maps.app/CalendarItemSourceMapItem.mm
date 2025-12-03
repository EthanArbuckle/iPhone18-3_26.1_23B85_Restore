@interface CalendarItemSourceMapItem
- (CLLocationCoordinate2D)coordinate;
- (CalendarItemSourceMapItem)initWithCalendarItem:(id)item mapItem:(id)mapItem;
- (NSArray)autocompletionStrings;
- (NSDate)eventDate;
- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID;
- (PersonalizedItemPrioritizedStringAdornment)subtitle;
- (PersonalizedItemPrioritizedStringAdornment)title;
- (PersonalizedItemSource)source;
- (PersonalizedItemStyleAttributesAdornment)styleAttributes;
- (id)autocompleteObject;
- (id)leafPersonalizedAutocompleteItems;
@end

@implementation CalendarItemSourceMapItem

- (PersonalizedItemSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->source);

  return WeakRetained;
}

- (id)leafPersonalizedAutocompleteItems
{
  selfCopy = self;
  v2 = [NSArray arrayWithObjects:&selfCopy count:1];

  return v2;
}

- (id)autocompleteObject
{
  v2 = [[SearchResult alloc] initWithMapItem:self->_mapItem];

  return v2;
}

- (NSArray)autocompletionStrings
{
  v3 = +[NSMutableArray array];
  title = [(CalendarItemSourceMapItem *)self title];
  value = [title value];

  if ([value length])
  {
    v6 = [AutocompleteMatchInfo matchInfoWithType:1];
    v7 = [[AutocompleteStringMatcher alloc] initWithString:value requiredMatchLength:1 matchInfo:v6];
    [v3 addObject:v7];
  }

  subtitle = [(CalendarItemSourceMapItem *)self subtitle];
  value2 = [subtitle value];

  if ([value2 length])
  {
    v10 = [AutocompleteMatchInfo matchInfoWithType:4];
    v11 = [[AutocompleteStringMatcher alloc] initWithString:value2 requiredMatchLength:3 matchInfo:v10];
    [v3 addObject:v11];
  }

  return v3;
}

- (NSDate)eventDate
{
  v2 = self->_calendarItem;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(EKCalendarItem *)v2 startDate];
  }

  else
  {
    +[NSDate distantPast];
  }
  v3 = ;

  return v3;
}

- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID
{
  styleAttributes = [(CalendarItemSourceMapItem *)self styleAttributes];
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

- (PersonalizedItemStyleAttributesAdornment)styleAttributes
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:&off_1016E96C8 forKeyedSubscript:&off_1016E96E0];
  [v3 setObject:&off_1016E96C8 forKeyedSubscript:&off_1016E96F8];
  v4 = self->_calendarItem;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setObject:&off_1016E96C8 forKeyedSubscript:&off_1016E9710];
  }

  v5 = self->_calendarItem;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setObject:&off_1016E9728 forKeyedSubscript:&off_1016E9710];
  }

  _styleAttributes = [(MKMapItem *)self->_mapItem _styleAttributes];
  if (!_styleAttributes)
  {
    place = [(MKMapItem *)self->_mapItem place];
    v8 = place;
    if (byte_10195EFE1)
    {
      v9 = 223;
      if (!place)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = 353;
      if (v4)
      {
        if (!place)
        {
LABEL_16:
          NSLog(@"We have a search result that has no style attributes and is not a 'place'. What is it? How should we display it?");
          _styleAttributes = 0;
          goto LABEL_17;
        }
      }

      else
      {
        if (v5)
        {
          v9 = 353;
        }

        else
        {
          v9 = 348;
        }

        if (!place)
        {
          goto LABEL_16;
        }
      }
    }

    _styleAttributes = [[GEOFeatureStyleAttributes alloc] initWithAttributes:{4, 226, 5, 3, 6, v9, 10, 0, 0}];
LABEL_17:
  }

  v10 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:_styleAttributes additionalAttributes:v3];

  return v10;
}

- (PersonalizedItemPrioritizedStringAdornment)subtitle
{
  if ([(NSString *)self->_subtitle length])
  {
    [PersonalizedItemPrioritizedStringAdornment adornmentWithString:self->_subtitle priority:800];
  }

  else
  {
    +[PersonalizedItemPrioritizedStringAdornment defaultAdornment];
  }
  v3 = ;

  return v3;
}

- (PersonalizedItemPrioritizedStringAdornment)title
{
  if ([(NSString *)self->_title length])
  {
    [PersonalizedItemPrioritizedStringAdornment adornmentWithString:self->_title priority:800];
  }

  else
  {
    +[PersonalizedItemPrioritizedStringAdornment defaultAdornment];
  }
  v3 = ;

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  [(MKMapItem *)self->_mapItem _coordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (CalendarItemSourceMapItem)initWithCalendarItem:(id)item mapItem:(id)mapItem
{
  itemCopy = item;
  mapItemCopy = mapItem;
  v42.receiver = self;
  v42.super_class = CalendarItemSourceMapItem;
  v9 = [(CalendarItemSourceMapItem *)&v42 init];
  v10 = v9;
  if (v9)
  {
    v41 = itemCopy;
    objc_storeStrong(&v9->_calendarItem, item);
    objc_storeStrong(&v10->_mapItem, mapItem);
    v11 = [[PersonalizedMapItemKey alloc] initWithMapItem:mapItemCopy];
    key = v10->_key;
    v10->_key = v11;

    name = [mapItemCopy name];
    _hasMUID = [mapItemCopy _hasMUID];
    v15 = v10->_calendarItem;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      title = [(EKCalendarItem *)v15 title];
      v17 = +[CalendarItemSource sharedDateFormatter];
      startDate = [(EKCalendarItem *)v15 startDate];
      v19 = [v17 stringFromDate:startDate];
    }

    else
    {
      v19 = 0;
      title = 0;
    }

    v20 = v10->_calendarItem;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      title2 = [(EKCalendarItem *)v20 title];

      title = title2;
    }

    if (_hasMUID)
    {
      objc_storeStrong(&v10->_title, name);
      v22 = title;
      if ([v22 length])
      {
        v23 = [NSString stringWithFormat:@"\b%@\b", v22];
      }

      else
      {
        v23 = v22;
      }

      v26 = v23;

      v27 = v19;
      if ([v27 length])
      {
        v28 = [NSString stringWithFormat:@"\b%@\b", v27];
      }

      else
      {
        v28 = v27;
      }

      v32 = v28;

      v33 = v26;
      v34 = v32;
      if ([v33 length])
      {
        if ([v34 length])
        {
          v35 = [NSString stringWithFormat:@"%@\n%@", v33, v34];
        }

        else
        {
          v35 = v33;
          v33 = v35;
        }
      }

      else
      {
        v35 = v34;
        v34 = v35;
      }

      v38 = v35;
    }

    else
    {
      objc_storeStrong(&v10->_title, title);
      v24 = name;
      if ([v24 length])
      {
        v25 = [NSString stringWithFormat:@"\b%@\b", v24];
      }

      else
      {
        v25 = v24;
      }

      v29 = v25;

      v30 = v19;
      if ([v30 length])
      {
        v31 = [NSString stringWithFormat:@"\b%@\b", v30];
      }

      else
      {
        v31 = v30;
      }

      v36 = v31;

      v33 = v29;
      v34 = v36;
      if ([v33 length])
      {
        if ([v34 length])
        {
          v37 = [NSString stringWithFormat:@"%@\n%@", v33, v34];
        }

        else
        {
          v37 = v33;
          v33 = v37;
        }
      }

      else
      {
        v37 = v34;
        v34 = v37;
      }

      v38 = v37;
    }

    subtitle = v10->_subtitle;
    v10->_subtitle = v38;

    itemCopy = v41;
  }

  return v10;
}

@end