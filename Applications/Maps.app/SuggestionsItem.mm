@interface SuggestionsItem
- (CLLocationCoordinate2D)coordinate;
- (NSArray)autocompletionStrings;
- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID;
- (PersonalizedItemPrioritizedStringAdornment)subtitle;
- (PersonalizedItemPrioritizedStringAdornment)title;
- (PersonalizedItemSource)source;
- (PersonalizedItemStyleAttributesAdornment)styleAttributes;
- (SearchResult)searchResult;
- (SuggestionsItem)initWithSuggestion:(id)suggestion order:(unsigned __int16)order sourceType:(int64_t)type sourceSubtype:(int64_t)subtype hasPriorityOverride:(BOOL)override priorityOverride:(int64_t)priorityOverride;
- (id)leafPersonalizedAutocompleteItems;
@end

@implementation SuggestionsItem

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

- (NSArray)autocompletionStrings
{
  undecoratedTitle = [(MapsSuggestionsEntry *)self->_suggestion undecoratedTitle];
  v4 = undecoratedTitle;
  if (undecoratedTitle && [undecoratedTitle length])
  {
    if ([(MapsSuggestionsEntry *)self->_suggestion type]== 3)
    {
      v5 = 16;
    }

    else
    {
      v5 = 1;
    }

    v6 = [AutocompleteMatchInfo matchInfoWithType:v5];
    v7 = [[AutocompleteStringMatcher alloc] initWithString:v4 requiredMatchLength:1 matchInfo:v6];
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID
{
  styleAttributes = [(SuggestionsItem *)self styleAttributes];
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
  styleAttributes = [(MapsSuggestionsEntry *)self->_suggestion styleAttributes];
  if (!styleAttributes)
  {
    styleAttributes = +[GEOFeatureStyleAttributes markerStyleAttributes];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  suggestion = self->_suggestion;
  v4 = [NSArray arrayWithObjects:&suggestion count:1];
  MapsSuggestionsShortcutSplit();

  v19 = &off_1016E6368;
  v20 = &off_1016E6380;
  v5 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v6 = [v5 mutableCopy];

  type = [(MapsSuggestionsEntry *)self->_suggestion type];
  v8 = type;
  if (type > 5 || ((1 << type) & 0x26) == 0)
  {
    v11 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v12 = *(v16 + 24);
    if (v12)
    {
      if (v11)
      {
        v13 = 3;
      }

      else
      {
        v13 = 0;
      }

      v14 = [NSNumber numberWithUnsignedInteger:v13];
    }

    else
    {
      v14 = &off_1016E6398;
    }

    [v6 setObject:v14 forKeyedSubscript:&off_1016E63B0];
    if (v12)
    {
    }

    if (v8 == 3)
    {
      [v6 setObject:&off_1016E6380 forKeyedSubscript:&off_1016E63C8];
      [v6 setObject:&off_1016E6380 forKeyedSubscript:&off_1016E63E0];
    }
  }

  v9 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:styleAttributes additionalAttributes:v6];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (PersonalizedItemPrioritizedStringAdornment)subtitle
{
  type = [(MapsSuggestionsEntry *)self->_suggestion type];
  if (type > 0x19)
  {
    v5 = 0;
  }

  else
  {
    if (((1 << type) & 0x37E9EF7) != 0)
    {
      v4 = +[PersonalizedItemPrioritizedStringAdornment defaultAdornment];
      goto LABEL_9;
    }

    if (((1 << type) & 0x814100) != 0)
    {
      [(MapsSuggestionsEntry *)self->_suggestion undecoratedSubtitle];
    }

    else
    {
      [(MapsSuggestionsEntry *)self->_suggestion stringForKey:@"MapsSuggestionsCalendarPersonalizedPOIAdornmentKey"];
    }
    v5 = ;
  }

  v4 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:v5 priority:700];

LABEL_9:

  return v4;
}

- (PersonalizedItemPrioritizedStringAdornment)title
{
  poiTitle = [(MapsSuggestionsEntry *)self->_suggestion poiTitle];
  type = [(MapsSuggestionsEntry *)self->_suggestion type];
  if (type == 1)
  {
    v5 = 901;
  }

  else if (type == 2)
  {
    v5 = 1001;
  }

  else
  {
    v5 = 900;
  }

  v6 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:poiTitle priority:v5];

  return v6;
}

- (SearchResult)searchResult
{
  if ([(MapsSuggestionsEntry *)self->_suggestion type]== 24 && [(MapsSuggestionsEntry *)self->_suggestion containsKey:@"MapsSuggestionsContactLikelyAppleIDKey"])
  {
    findMyWaypoint = [(MapsSuggestionsEntry *)self->_suggestion findMyWaypoint];
    if (!findMyWaypoint)
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315906;
        v12 = "[SuggestionsItem searchResult]";
        v13 = 2080;
        v14 = "SuggestionsItemSource.m";
        v15 = 1024;
        v16 = 143;
        v17 = 2080;
        v18 = "findMyWaypoint != nil";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v11, 0x26u);
      }

      if (sub_100E03634())
      {
        v9 = sub_10006D178();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = +[NSThread callStackSymbols];
          v11 = 138412290;
          v12 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
        }
      }
    }

    v4 = [[SearchResult alloc] initWithComposedWaypoint:findMyWaypoint];
  }

  else
  {
    findMyWaypoint = [[MapsLocationOfInterest alloc] initWithMapsSuggestionEntry:self->_suggestion];
    if (findMyWaypoint)
    {
      v5 = [SearchResult alloc];
      mapItem = [(MapsLocationOfInterest *)findMyWaypoint mapItem];
      v4 = [(SearchResult *)v5 initWithMapItem:mapItem];

      [(SearchResult *)v4 setLocationOfInterest:findMyWaypoint];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (CLLocationCoordinate2D)coordinate
{
  [(MKMapItem *)self->_mapItem _coordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (SuggestionsItem)initWithSuggestion:(id)suggestion order:(unsigned __int16)order sourceType:(int64_t)type sourceSubtype:(int64_t)subtype hasPriorityOverride:(BOOL)override priorityOverride:(int64_t)priorityOverride
{
  suggestionCopy = suggestion;
  mKMapItem = [suggestionCopy MKMapItem];
  if (mKMapItem)
  {
    v34.receiver = self;
    v34.super_class = SuggestionsItem;
    v17 = [(SuggestionsItem *)&v34 init];
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(&v17->_suggestion, suggestion);
      v18->_order = order;
      v18->_sourceType = type;
      v18->_sourceSubtype = subtype;
      v18->_hasPriorityOverride = override;
      v18->_priorityOverride = priorityOverride;
      v19 = [[PersonalizedMapItemKey alloc] initWithMapItem:mKMapItem];
      v20 = [NSSet setWithObject:v19];
      keys = v18->_keys;
      v18->_keys = v20;

      v22 = [[MapsLocationOfInterest alloc] initWithMapsSuggestionEntry:suggestionCopy];
      v23 = v22;
      if (v22)
      {
        mapItem = [(MapsLocationOfInterest *)v22 mapItem];
      }

      else
      {
        mapItem = mKMapItem;
      }

      mapItem = v18->_mapItem;
      v18->_mapItem = mapItem;

      if ([suggestionCopy type] == 7)
      {
        v27 = +[ParkedCar personalizedItemKey];
        v28 = [NSSet setWithObject:v27];
        v29 = v18->_keys;
        v18->_keys = v28;

        v30 = +[ParkedCarManager sharedManager];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1005EB44C;
        v32[3] = &unk_101623500;
        v33 = v18;
        [v30 fetchParkedCar:v32];
      }
    }

    self = v18;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end