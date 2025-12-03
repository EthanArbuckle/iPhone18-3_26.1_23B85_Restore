@interface SearchResultMapItem
- (BOOL)showsBalloonCallout;
- (id)createSubtitle;
- (id)style;
- (id)styleAttributes;
- (id)subtitle;
- (id)title;
@end

@implementation SearchResultMapItem

- (BOOL)showsBalloonCallout
{
  style = [(SearchResultMapItem *)self style];
  isLabelPOI = [style isLabelPOI];

  return isLabelPOI ^ 1;
}

- (id)styleAttributes
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v43[0] = &off_1016E9AA0;
  v43[1] = &off_1016E9AD0;
  v44[0] = &off_1016E9AB8;
  v44[1] = &off_1016E9AB8;
  v43[2] = &off_1016E9AE8;
  v43[3] = &off_1016E9B00;
  v44[2] = &off_1016E9AB8;
  v44[3] = &off_1016E9AB8;
  v4 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:4];
  [v3 addEntriesFromDictionary:v4];

  if ([(SearchResultMapItemBase *)self isVisited])
  {
    v41 = &off_1016E9B18;
    v42 = &off_1016E9B30;
    v5 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    [v3 addEntriesFromDictionary:v5];
  }

  if (GEOConfigGetBOOL())
  {
    mapItem = [(SearchResultMapItemBase *)self mapItem];
    if ([mapItem _venueFeatureType] == 1)
    {

LABEL_7:
      v39 = &off_1016E9B48;
      v40 = &off_1016E9AB8;
      v9 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      [v3 addEntriesFromDictionary:v9];

      goto LABEL_8;
    }

    mapItem2 = [(SearchResultMapItemBase *)self mapItem];
    _venueFeatureType = [mapItem2 _venueFeatureType];

    if (_venueFeatureType == 2)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  style = [(SearchResultMapItem *)self style];
  if (MapsFeature_IsEnabled_RealTimeEVCharger() && [style poiType] == 335)
  {
    mapItem3 = [(SearchResultMapItemBase *)self mapItem];
    _realTimeAvailableEVCharger = [mapItem3 _realTimeAvailableEVCharger];

    v13 = [_TtC4Maps16EVChargerUtility realTimeEVChargerStatusWithEvCharger:_realTimeAvailableEVCharger];
    if (v13 > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = dword_101215BB8[v13];
    }

    v37 = &off_1016E9B60;
    v15 = [NSNumber numberWithInt:v14];
    v38 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v3 addEntriesFromDictionary:v16];
  }

  searchResult = [(SearchResultMapItemBase *)self searchResult];
  if ([searchResult locationType] != 1)
  {

LABEL_18:
    searchResult2 = [(SearchResultMapItemBase *)self searchResult];
    if ([searchResult2 locationType] == 2)
    {
      searchResult3 = [(SearchResultMapItemBase *)self searchResult];
      autocompletePerson = [searchResult3 autocompletePerson];

      if (autocompletePerson)
      {
        v20 = +[GEOFeatureStyleAttributes workStyleAttributes];
        goto LABEL_35;
      }
    }

    else
    {
    }

    searchResult4 = [(SearchResultMapItemBase *)self searchResult];
    if ([searchResult4 locationType] == 3)
    {
      searchResult5 = [(SearchResultMapItemBase *)self searchResult];
      autocompletePerson2 = [searchResult5 autocompletePerson];

      if (autocompletePerson2)
      {
        v20 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
        goto LABEL_35;
      }
    }

    else
    {
    }

    searchResult6 = [(SearchResultMapItemBase *)self searchResult];
    if ([searchResult6 locationType] == 4)
    {
      searchResult7 = [(SearchResultMapItemBase *)self searchResult];
      autocompletePerson3 = [searchResult7 autocompletePerson];

      if (autocompletePerson3)
      {
        v20 = +[GEOFeatureStyleAttributes sharedLocationStyleAttributes];
        goto LABEL_35;
      }
    }

    else
    {
    }

    searchResult8 = [(SearchResultMapItemBase *)self searchResult];
    if ([searchResult8 locationType])
    {
    }

    else
    {
      searchResult9 = [(SearchResultMapItemBase *)self searchResult];
      autocompletePerson4 = [searchResult9 autocompletePerson];

      if (autocompletePerson4)
      {
        v20 = +[GEOFeatureStyleAttributes addressMarkerStyleAttributes];
        goto LABEL_35;
      }
    }

    v31 = [v3 copy];
    v32 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:style additionalAttributes:v31];
    goto LABEL_36;
  }

  searchResult10 = [(SearchResultMapItemBase *)self searchResult];
  autocompletePerson5 = [searchResult10 autocompletePerson];

  if (!autocompletePerson5)
  {
    goto LABEL_18;
  }

  v20 = +[GEOFeatureStyleAttributes homeStyleAttributes];
LABEL_35:
  v31 = v20;
  v35 = [v3 copy];
  v32 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:v31 additionalAttributes:v35];

LABEL_36:

  return v32;
}

- (id)style
{
  style = self->_style;
  if (!style)
  {
    searchResult = [(SearchResultMapItemBase *)self searchResult];
    v5 = [GEOFeatureStyleAttributes styleAttributesForSearchResult:searchResult];
    v6 = self->_style;
    self->_style = v5;

    style = self->_style;
  }

  return style;
}

- (id)createSubtitle
{
  IsEnabled_RealTimeEVCharger = MapsFeature_IsEnabled_RealTimeEVCharger();
  searchResult = [(SearchResultMapItemBase *)self searchResult];
  mapItem = [searchResult mapItem];
  v6 = mapItem;
  if (IsEnabled_RealTimeEVCharger)
  {
    _geoMapItem = [mapItem _geoMapItem];
    _hasEVCharger = [_geoMapItem _hasEVCharger];

    if (_hasEVCharger)
    {
      searchResult2 = [(SearchResultMapItemBase *)self searchResult];
      mapItem2 = [searchResult2 mapItem];
      searchResult = [mapItem2 _realTimeAvailableEVCharger];

      subtitle = [_TtC4Maps16EVChargerUtility realTimeEVChargerDisplayStringWithEvCharger:searchResult mapDisplay:1];
    }

    else
    {
      searchResult = [(SearchResultMapItem *)self styleAttributes];
      styleAttributes = [searchResult styleAttributes];
      [styleAttributes poiType];

      subtitle = &stru_1016631F0;
    }
  }

  else
  {
    _firstLocalizedCategoryName = [mapItem _firstLocalizedCategoryName];
    v13 = _firstLocalizedCategoryName;
    if (_firstLocalizedCategoryName)
    {
      subtitle = _firstLocalizedCategoryName;
    }

    else
    {
      searchResult3 = [(SearchResultMapItemBase *)self searchResult];
      subtitle = [searchResult3 subtitle];
    }
  }

  return subtitle;
}

- (id)subtitle
{
  searchResult = [(SearchResultMapItemBase *)self searchResult];
  address = [searchResult address];

  if (address)
  {
    searchResult2 = [(SearchResultMapItemBase *)self searchResult];
    address2 = [searchResult2 address];
    addressValue = [address2 addressValue];

    identifier = [addressValue identifier];
    v9 = +[CNContact _mapkit_sharedLocationContactIdentifer];
    v10 = [identifier isEqualToString:v9];

    if (v10)
    {
      searchResult3 = [(SearchResultMapItemBase *)self searchResult];
      autocompletePerson = [searchResult3 autocompletePerson];
      [autocompletePerson locationTimestampString:1];
    }

    else
    {
      searchResult3 = [addressValue label];
      autocompletePerson = [CNLabeledValue localizedStringForLabel:searchResult3];
      [autocompletePerson capitalizedString];
    }
    createSubtitle = ;
  }

  else
  {
    createSubtitle = [(SearchResultMapItem *)self createSubtitle];
  }

  if (createSubtitle)
  {
    [PersonalizedItemPrioritizedStringAdornment adornmentWithString:createSubtitle priority:100];
  }

  else
  {
    +[PersonalizedItemPrioritizedStringAdornment defaultAdornment];
  }
  v14 = ;

  return v14;
}

- (id)title
{
  searchResult = [(SearchResultMapItemBase *)self searchResult];
  if ([searchResult locationType] == 1)
  {
    searchResult2 = [(SearchResultMapItemBase *)self searchResult];
    autocompletePerson = [searchResult2 autocompletePerson];

    if (autocompletePerson)
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"Contact's Home [SearchResultMapItem]";
LABEL_16:
      v18 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];
      searchResult3 = [(SearchResultMapItemBase *)self searchResult];
      title = [searchResult3 title];
      v21 = [NSString stringWithFormat:v18, title];

      title2 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:v21 priority:1];

      goto LABEL_19;
    }
  }

  else
  {
  }

  searchResult4 = [(SearchResultMapItemBase *)self searchResult];
  if ([searchResult4 locationType] == 2)
  {
    searchResult5 = [(SearchResultMapItemBase *)self searchResult];
    autocompletePerson2 = [searchResult5 autocompletePerson];

    if (autocompletePerson2)
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"Contact's Work [SearchResultMapItem]";
      goto LABEL_16;
    }
  }

  else
  {
  }

  searchResult6 = [(SearchResultMapItemBase *)self searchResult];
  if ([searchResult6 locationType] == 3)
  {
    searchResult7 = [(SearchResultMapItemBase *)self searchResult];
    autocompletePerson3 = [searchResult7 autocompletePerson];

    if (autocompletePerson3)
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"Contact's School [SearchResultMapItem]";
      goto LABEL_16;
    }
  }

  else
  {
  }

  searchResult8 = [(SearchResultMapItemBase *)self searchResult];
  if ([searchResult8 locationType] == 4)
  {
    searchResult9 = [(SearchResultMapItemBase *)self searchResult];
    autocompletePerson4 = [searchResult9 autocompletePerson];

    if (autocompletePerson4)
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"Contact's Location [SearchResultMapItem]";
      goto LABEL_16;
    }
  }

  else
  {
  }

  v24.receiver = self;
  v24.super_class = SearchResultMapItem;
  title2 = [(SearchResultMapItemBase *)&v24 title];
LABEL_19:

  return title2;
}

@end