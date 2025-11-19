@interface CalendarItemSourceMapItem
- (CLLocationCoordinate2D)coordinate;
- (CalendarItemSourceMapItem)initWithCalendarItem:(id)a3 mapItem:(id)a4;
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
  v4 = self;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

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
  v4 = [(CalendarItemSourceMapItem *)self title];
  v5 = [v4 value];

  if ([v5 length])
  {
    v6 = [AutocompleteMatchInfo matchInfoWithType:1];
    v7 = [[AutocompleteStringMatcher alloc] initWithString:v5 requiredMatchLength:1 matchInfo:v6];
    [v3 addObject:v7];
  }

  v8 = [(CalendarItemSourceMapItem *)self subtitle];
  v9 = [v8 value];

  if ([v9 length])
  {
    v10 = [AutocompleteMatchInfo matchInfoWithType:4];
    v11 = [[AutocompleteStringMatcher alloc] initWithString:v9 requiredMatchLength:3 matchInfo:v10];
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
  v3 = [(CalendarItemSourceMapItem *)self styleAttributes];
  v4 = [v3 styleAttributes];
  v5 = [v4 poiType];
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

  v14 = v13 ^ v5;
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

  v24 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v25 = [v24 name];

  if (v25)
  {
    v26 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v27 = [v26 name];
    v23 ^= [v27 hash];
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

  v6 = [(MKMapItem *)self->_mapItem _styleAttributes];
  if (!v6)
  {
    v7 = [(MKMapItem *)self->_mapItem place];
    v8 = v7;
    if (byte_10195EFE1)
    {
      v9 = 223;
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = 353;
      if (v4)
      {
        if (!v7)
        {
LABEL_16:
          NSLog(@"We have a search result that has no style attributes and is not a 'place'. What is it? How should we display it?");
          v6 = 0;
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

        if (!v7)
        {
          goto LABEL_16;
        }
      }
    }

    v6 = [[GEOFeatureStyleAttributes alloc] initWithAttributes:{4, 226, 5, 3, 6, v9, 10, 0, 0}];
LABEL_17:
  }

  v10 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:v6 additionalAttributes:v3];

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

- (CalendarItemSourceMapItem)initWithCalendarItem:(id)a3 mapItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v42.receiver = self;
  v42.super_class = CalendarItemSourceMapItem;
  v9 = [(CalendarItemSourceMapItem *)&v42 init];
  v10 = v9;
  if (v9)
  {
    v41 = v7;
    objc_storeStrong(&v9->_calendarItem, a3);
    objc_storeStrong(&v10->_mapItem, a4);
    v11 = [[PersonalizedMapItemKey alloc] initWithMapItem:v8];
    key = v10->_key;
    v10->_key = v11;

    v13 = [v8 name];
    v14 = [v8 _hasMUID];
    v15 = v10->_calendarItem;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [(EKCalendarItem *)v15 title];
      v17 = +[CalendarItemSource sharedDateFormatter];
      v18 = [(EKCalendarItem *)v15 startDate];
      v19 = [v17 stringFromDate:v18];
    }

    else
    {
      v19 = 0;
      v16 = 0;
    }

    v20 = v10->_calendarItem;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [(EKCalendarItem *)v20 title];

      v16 = v21;
    }

    if (v14)
    {
      objc_storeStrong(&v10->_title, v13);
      v22 = v16;
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
      objc_storeStrong(&v10->_title, v16);
      v24 = v13;
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

    v7 = v41;
  }

  return v10;
}

@end