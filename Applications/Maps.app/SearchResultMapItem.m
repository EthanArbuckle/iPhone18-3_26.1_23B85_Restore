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
  v2 = [(SearchResultMapItem *)self style];
  v3 = [v2 isLabelPOI];

  return v3 ^ 1;
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
    v6 = [(SearchResultMapItemBase *)self mapItem];
    if ([v6 _venueFeatureType] == 1)
    {

LABEL_7:
      v39 = &off_1016E9B48;
      v40 = &off_1016E9AB8;
      v9 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      [v3 addEntriesFromDictionary:v9];

      goto LABEL_8;
    }

    v7 = [(SearchResultMapItemBase *)self mapItem];
    v8 = [v7 _venueFeatureType];

    if (v8 == 2)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v10 = [(SearchResultMapItem *)self style];
  if (MapsFeature_IsEnabled_RealTimeEVCharger() && [v10 poiType] == 335)
  {
    v11 = [(SearchResultMapItemBase *)self mapItem];
    v12 = [v11 _realTimeAvailableEVCharger];

    v13 = [_TtC4Maps16EVChargerUtility realTimeEVChargerStatusWithEvCharger:v12];
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

  v17 = [(SearchResultMapItemBase *)self searchResult];
  if ([v17 locationType] != 1)
  {

LABEL_18:
    v21 = [(SearchResultMapItemBase *)self searchResult];
    if ([v21 locationType] == 2)
    {
      v22 = [(SearchResultMapItemBase *)self searchResult];
      v23 = [v22 autocompletePerson];

      if (v23)
      {
        v20 = +[GEOFeatureStyleAttributes workStyleAttributes];
        goto LABEL_35;
      }
    }

    else
    {
    }

    v24 = [(SearchResultMapItemBase *)self searchResult];
    if ([v24 locationType] == 3)
    {
      v25 = [(SearchResultMapItemBase *)self searchResult];
      v26 = [v25 autocompletePerson];

      if (v26)
      {
        v20 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
        goto LABEL_35;
      }
    }

    else
    {
    }

    v27 = [(SearchResultMapItemBase *)self searchResult];
    if ([v27 locationType] == 4)
    {
      v28 = [(SearchResultMapItemBase *)self searchResult];
      v29 = [v28 autocompletePerson];

      if (v29)
      {
        v20 = +[GEOFeatureStyleAttributes sharedLocationStyleAttributes];
        goto LABEL_35;
      }
    }

    else
    {
    }

    v30 = [(SearchResultMapItemBase *)self searchResult];
    if ([v30 locationType])
    {
    }

    else
    {
      v33 = [(SearchResultMapItemBase *)self searchResult];
      v34 = [v33 autocompletePerson];

      if (v34)
      {
        v20 = +[GEOFeatureStyleAttributes addressMarkerStyleAttributes];
        goto LABEL_35;
      }
    }

    v31 = [v3 copy];
    v32 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:v10 additionalAttributes:v31];
    goto LABEL_36;
  }

  v18 = [(SearchResultMapItemBase *)self searchResult];
  v19 = [v18 autocompletePerson];

  if (!v19)
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
    v4 = [(SearchResultMapItemBase *)self searchResult];
    v5 = [GEOFeatureStyleAttributes styleAttributesForSearchResult:v4];
    v6 = self->_style;
    self->_style = v5;

    style = self->_style;
  }

  return style;
}

- (id)createSubtitle
{
  IsEnabled_RealTimeEVCharger = MapsFeature_IsEnabled_RealTimeEVCharger();
  v4 = [(SearchResultMapItemBase *)self searchResult];
  v5 = [v4 mapItem];
  v6 = v5;
  if (IsEnabled_RealTimeEVCharger)
  {
    v7 = [v5 _geoMapItem];
    v8 = [v7 _hasEVCharger];

    if (v8)
    {
      v9 = [(SearchResultMapItemBase *)self searchResult];
      v10 = [v9 mapItem];
      v4 = [v10 _realTimeAvailableEVCharger];

      v11 = [_TtC4Maps16EVChargerUtility realTimeEVChargerDisplayStringWithEvCharger:v4 mapDisplay:1];
    }

    else
    {
      v4 = [(SearchResultMapItem *)self styleAttributes];
      v14 = [v4 styleAttributes];
      [v14 poiType];

      v11 = &stru_1016631F0;
    }
  }

  else
  {
    v12 = [v5 _firstLocalizedCategoryName];
    v13 = v12;
    if (v12)
    {
      v11 = v12;
    }

    else
    {
      v15 = [(SearchResultMapItemBase *)self searchResult];
      v11 = [v15 subtitle];
    }
  }

  return v11;
}

- (id)subtitle
{
  v3 = [(SearchResultMapItemBase *)self searchResult];
  v4 = [v3 address];

  if (v4)
  {
    v5 = [(SearchResultMapItemBase *)self searchResult];
    v6 = [v5 address];
    v7 = [v6 addressValue];

    v8 = [v7 identifier];
    v9 = +[CNContact _mapkit_sharedLocationContactIdentifer];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = [(SearchResultMapItemBase *)self searchResult];
      v12 = [v11 autocompletePerson];
      [v12 locationTimestampString:1];
    }

    else
    {
      v11 = [v7 label];
      v12 = [CNLabeledValue localizedStringForLabel:v11];
      [v12 capitalizedString];
    }
    v13 = ;
  }

  else
  {
    v13 = [(SearchResultMapItem *)self createSubtitle];
  }

  if (v13)
  {
    [PersonalizedItemPrioritizedStringAdornment adornmentWithString:v13 priority:100];
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
  v3 = [(SearchResultMapItemBase *)self searchResult];
  if ([v3 locationType] == 1)
  {
    v4 = [(SearchResultMapItemBase *)self searchResult];
    v5 = [v4 autocompletePerson];

    if (v5)
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"Contact's Home [SearchResultMapItem]";
LABEL_16:
      v18 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];
      v19 = [(SearchResultMapItemBase *)self searchResult];
      v20 = [v19 title];
      v21 = [NSString stringWithFormat:v18, v20];

      v22 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:v21 priority:1];

      goto LABEL_19;
    }
  }

  else
  {
  }

  v9 = [(SearchResultMapItemBase *)self searchResult];
  if ([v9 locationType] == 2)
  {
    v10 = [(SearchResultMapItemBase *)self searchResult];
    v11 = [v10 autocompletePerson];

    if (v11)
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

  v12 = [(SearchResultMapItemBase *)self searchResult];
  if ([v12 locationType] == 3)
  {
    v13 = [(SearchResultMapItemBase *)self searchResult];
    v14 = [v13 autocompletePerson];

    if (v14)
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

  v15 = [(SearchResultMapItemBase *)self searchResult];
  if ([v15 locationType] == 4)
  {
    v16 = [(SearchResultMapItemBase *)self searchResult];
    v17 = [v16 autocompletePerson];

    if (v17)
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
  v22 = [(SearchResultMapItemBase *)&v24 title];
LABEL_19:

  return v22;
}

@end