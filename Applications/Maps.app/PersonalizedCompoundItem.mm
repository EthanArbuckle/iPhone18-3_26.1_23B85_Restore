@interface PersonalizedCompoundItem
- (AddressBookAddress)address;
- (AutocompleteMatchInfo)matchInfo;
- (BOOL)containsPossiblePersonalizedItemSourceSubtype:(int64_t)subtype;
- (BOOL)containsPossiblePersonalizedItemSourceType:(int64_t)type;
- (BOOL)hasPriorityOverride;
- (BOOL)hasServerItemIndex;
- (BOOL)hidden;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRouteStartOrEnd;
- (BOOL)mustRefineMapItem;
- (BOOL)needsToPreserveSelection;
- (BOOL)shouldBeClustered;
- (BOOL)shouldBeHiddenFromMap;
- (BOOL)showsBalloonCallout;
- (BOOL)wantsDisplayedSearchResultsTypePoints;
- (CLLocationCoordinate2D)coordinate;
- (GEOEnhancedPlacement)enhancedPlacement;
- (GEOLabelGeometry)labelGeometry;
- (GEOServerResultScoreMetadata)serverResultScoreMetadata;
- (MKMapItem)mapItem;
- (MapsLocationOfInterest)locationOfInterest;
- (NSArray)autocompletionStrings;
- (NSArray)searchableStrings;
- (NSString)description;
- (ParkedCar)parkedCar;
- (PersonalizedAutocompleteItem)autocompleteItemWithHighestPriority;
- (PersonalizedAutocompleteItem)cachedAutocompleteItemWithHighestPriority;
- (PersonalizedCompoundItem)initWithItems:(id)items;
- (PersonalizedCompoundItem)itemWithHighestPriorityForFunction:(id)function;
- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID;
- (PersonalizedItemPrioritizedStringAdornment)prefix;
- (PersonalizedItemPrioritizedStringAdornment)subtitle;
- (PersonalizedItemPrioritizedStringAdornment)title;
- (PersonalizedItemSource)source;
- (PersonalizedItemStyleAttributesAdornment)styleAttributes;
- (SearchDotPlace)searchDotPlace;
- (SearchResult)searchResult;
- (TrafficIncidentReport)incidentReport;
- (VKLabelMarker)sourceLabelMarker;
- (id)autocompleteItemWithEarliestServerSectionAndIndexInSection;
- (id)autocompleteItemWithHighestObjectPriority;
- (id)autocompleteObject;
- (id)leafPersonalizedAutocompleteItems;
- (int64_t)priorityOverride;
- (int64_t)sourceSubtype;
- (int64_t)sourceType;
- (unint64_t)priority;
- (unint64_t)serverItemIndexInSection;
- (unint64_t)serverSectionIndex;
- (unint64_t)sortOrder;
- (void)configureWithClientACSuggestionEntry:(id)entry;
- (void)setPriorityFunction:(id)function;
@end

@implementation PersonalizedCompoundItem

- (BOOL)shouldBeHiddenFromMap
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) shouldBeHiddenFromMap])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (MKMapItem)mapItem
{
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = self->_items;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v4)
  {

    v8 = 0;
    goto LABEL_29;
  }

  v5 = v4;
  obj = v3;
  selfCopy = self;
  priority2 = 0;
  v7 = 0;
  v8 = 0;
  v30 = *v32;
  do
  {
    v9 = 0;
    do
    {
      if (*v32 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      mapItem = [v10 mapItem];
      priority = [v10 priority];
      if ([mapItem _hasResolvablePartialInformation])
      {
        mustRefineMapItem = 1;
        if (!v8)
        {
          goto LABEL_20;
        }
      }

      else
      {
        _geoMapItem = [mapItem _geoMapItem];
        if ([_geoMapItem hasExpiredComponents])
        {
          mustRefineMapItem = 1;
        }

        else
        {
          mustRefineMapItem = [v10 mustRefineMapItem];
        }

        if (!v8)
        {
LABEL_20:
          v8 = mapItem;
          priority2 = [v10 priority];
          v7 = mustRefineMapItem;
          goto LABEL_21;
        }
      }

      if (priority2 >= priority)
      {
        if (priority2 <= priority)
        {
          if (mustRefineMapItem & 1 | ((v7 & 1) == 0))
          {
            if (v7 & 1 | ((mustRefineMapItem & 1) == 0))
            {
              _geoMapItemStorageForPersistence = [mapItem _geoMapItemStorageForPersistence];
              _geoMapItemStorageForPersistence2 = [v8 _geoMapItemStorageForPersistence];
              v28 = _geoMapItemStorageForPersistence;
              encodedData = [_geoMapItemStorageForPersistence encodedData];
              v26 = [encodedData length];
              v27 = _geoMapItemStorageForPersistence2;
              encodedData2 = [_geoMapItemStorageForPersistence2 encodedData];
              v20 = [encodedData2 length];

              if (v26 > v20)
              {
                v21 = mapItem;

                priority2 = [v10 priority];
                v8 = v21;
              }
            }

            else
            {
              v7 = 0;
            }
          }

          else
          {
            v22 = mapItem;

            priority2 = [v10 priority];
            v7 = 0;
            v8 = v22;
          }
        }
      }

      else
      {
        v14 = mapItem;

        priority2 = [v10 priority];
        v7 = mustRefineMapItem;
        v8 = v14;
      }

LABEL_21:

      v9 = v9 + 1;
    }

    while (v5 != v9);
    v23 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    v5 = v23;
  }

  while (v23);

  if (v8)
  {
    [v8 setPersonalizedCompoundItem:selfCopy];
  }

LABEL_29:

  return v8;
}

- (unint64_t)sortOrder
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        sortOrder = [*(*(&v10 + 1) + 8 * v6) sortOrder];
        if (sortOrder)
        {
          v8 = sortOrder;
          goto LABEL_11;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (SearchResult)searchResult
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        searchResult = [*(*(&v10 + 1) + 8 * i) searchResult];
        if (searchResult)
        {
          v8 = searchResult;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)shouldBeClustered
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldBeClustered])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (PersonalizedItemPrioritizedStringAdornment)title
{
  v3 = +[PersonalizedItemPrioritizedStringAdornment defaultAdornment];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        title = [*(*(&v12 + 1) + 8 * v8) title];
        v3 = [v9 combineAdornment:title];

        v8 = v8 + 1;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (PersonalizedItemPrioritizedStringAdornment)subtitle
{
  v3 = +[PersonalizedItemPrioritizedStringAdornment defaultAdornment];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        subtitle = [*(*(&v12 + 1) + 8 * v8) subtitle];
        v3 = [v9 combineAdornment:subtitle];

        v8 = v8 + 1;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = kCLLocationCoordinate2DInvalid.latitude;
  longitude = kCLLocationCoordinate2DInvalid.longitude;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = 1;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v14 + 1) + 8 * v9) coordinate];
        if (v8)
        {
          longitude = v11;
          latitude = v10;
        }

        v9 = v9 + 1;
        v8 = 0;
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v8 = 0;
    }

    while (v6);
  }

  v12 = latitude;
  v13 = longitude;
  result.longitude = v13;
  result.latitude = v12;
  return result;
}

- (PersonalizedItemStyleAttributesAdornment)styleAttributes
{
  v3 = +[PersonalizedItemStyleAttributesAdornment defaultAdornment];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        styleAttributes = [*(*(&v12 + 1) + 8 * v8) styleAttributes];
        v3 = [v9 combineAdornment:styleAttributes];

        v8 = v8 + 1;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isRouteStartOrEnd
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 isRouteStartOrEnd])
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)showsBalloonCallout
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) showsBalloonCallout])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (PersonalizedItemPrioritizedStringAdornment)prefix
{
  v3 = +[PersonalizedItemPrioritizedStringAdornment defaultAdornment];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        prefix = [*(*(&v12 + 1) + 8 * v8) prefix];
        v3 = [v9 combineAdornment:prefix];

        v8 = v8 + 1;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (GEOLabelGeometry)labelGeometry
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_items;
  labelGeometry2 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (labelGeometry2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != labelGeometry2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        labelGeometry = [v6 labelGeometry];

        if (labelGeometry)
        {
          labelGeometry2 = [v6 labelGeometry];
          goto LABEL_11;
        }
      }

      labelGeometry2 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (labelGeometry2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return labelGeometry2;
}

- (GEOEnhancedPlacement)enhancedPlacement
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_items;
  enhancedPlacement2 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (enhancedPlacement2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != enhancedPlacement2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        enhancedPlacement = [v6 enhancedPlacement];

        if (enhancedPlacement)
        {
          enhancedPlacement2 = [v6 enhancedPlacement];
          goto LABEL_11;
        }
      }

      enhancedPlacement2 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (enhancedPlacement2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return enhancedPlacement2;
}

- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID
{
  v3 = +[PersonalizedItemClientFeatureIDAdornment defaultAdornment];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        clientFeatureID = [*(*(&v12 + 1) + 8 * i) clientFeatureID];
        if (clientFeatureID)
        {
          v10 = [v3 combineAdornment:clientFeatureID];

          v3 = v10;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (PersonalizedAutocompleteItem)cachedAutocompleteItemWithHighestPriority
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedAutocompleteItemWithHighestPriority);

  return WeakRetained;
}

- (PersonalizedItemSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->source);

  return WeakRetained;
}

- (void)configureWithClientACSuggestionEntry:(id)entry
{
  entryCopy = entry;
  if (self->_mifClientACSuggestionEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(&self->_mifClientACSuggestionEntry, entry);
    v6 = +[NSUUID UUID];
    mifItemIdentifier = self->_mifItemIdentifier;
    self->_mifItemIdentifier = v6;

    entryCopy = v8;
  }
}

- (BOOL)containsPossiblePersonalizedItemSourceType:(int64_t)type
{
  possiblePersonalizedItemSourceTypes = [(PersonalizedCompoundItem *)self possiblePersonalizedItemSourceTypes];
  v5 = [NSNumber numberWithInteger:type];
  v6 = [possiblePersonalizedItemSourceTypes containsObject:v5];

  return v6;
}

- (BOOL)containsPossiblePersonalizedItemSourceSubtype:(int64_t)subtype
{
  possiblePersonalizedItemSourceSubtypes = [(PersonalizedCompoundItem *)self possiblePersonalizedItemSourceSubtypes];
  v5 = [NSNumber numberWithInteger:subtype];
  v6 = [possiblePersonalizedItemSourceSubtypes containsObject:v5];

  return v6;
}

- (BOOL)wantsDisplayedSearchResultsTypePoints
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 wantsDisplayedSearchResultsTypePoints])
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v28 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    keys = [(PersonalizedCompoundItem *)self keys];
    keys2 = [(PersonalizedCompoundItem *)v6 keys];
    v9 = [keys isEqual:keys2];

    if (v9 && ([(PersonalizedCompoundItem *)self coordinate], v11 = v10, v13 = v12, [(PersonalizedCompoundItem *)v6 coordinate], vabdd_f64(v11, v15) < 0.00000000999999994) && vabdd_f64(v13, v14) < 0.00000000999999994)
    {
      title = [(PersonalizedCompoundItem *)self title];
      value = [title value];
      title2 = [(PersonalizedCompoundItem *)v6 title];
      value2 = [title2 value];
      if ([value isEqualToString:value2])
      {
        subtitle = [(PersonalizedCompoundItem *)self subtitle];
        value3 = [subtitle value];
        subtitle2 = [(PersonalizedCompoundItem *)v6 subtitle];
        value4 = [subtitle2 value];
        v38 = value3;
        if ([value3 isEqualToString:value4])
        {
          prefix = [(PersonalizedCompoundItem *)self prefix];
          value5 = [prefix value];
          prefix2 = [(PersonalizedCompoundItem *)v6 prefix];
          value6 = [prefix2 value];
          v36 = value5;
          v25 = value5;
          v26 = value6;
          if ([v25 isEqualToString:value6])
          {
            styleAttributes = [(PersonalizedCompoundItem *)self styleAttributes];
            v32StyleAttributes = [styleAttributes styleAttributes];
            styleAttributes2 = [(PersonalizedCompoundItem *)v6 styleAttributes];
            [styleAttributes2 styleAttributes];
            v27 = v33 = subtitle;
            v28 = [v32StyleAttributes isEqual:v27];

            subtitle = v33;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSArray *)self->_items count];
  firstObject = [(NSArray *)self->_items firstObject];
  mapItem = [firstObject mapItem];
  name = [mapItem name];
  v10 = [NSString stringWithFormat:@"\n<%@: %p (%d items) name='%@'", v5, self, v6, name];
  v11 = [v3 initWithString:v10];

  if (MapsFeature_IsEnabled_PersonalizedAutocompleteRanker())
  {
    autocompleteObject = [(PersonalizedCompoundItem *)self autocompleteObject];
    if (autocompleteObject)
    {
      [v11 appendFormat:@"- %@ -", objc_opt_class()];
      [v11 appendFormat:@"- %@ -", self->_mifItemIdentifier];
    }
  }

  [v11 appendString:@">"];

  return v11;
}

- (id)autocompleteObject
{
  autocompleteItemWithHighestObjectPriority = [(PersonalizedCompoundItem *)self autocompleteItemWithHighestObjectPriority];
  v3 = autocompleteItemWithHighestObjectPriority;
  if (autocompleteItemWithHighestObjectPriority)
  {
    autocompleteObject = [autocompleteItemWithHighestObjectPriority autocompleteObject];
  }

  else
  {
    autocompleteObject = 0;
  }

  return autocompleteObject;
}

- (id)leafPersonalizedAutocompleteItems
{
  items = [(PersonalizedCompoundItem *)self items];
  v4 = [items count];

  if (v4 != 1)
  {
    items2 = [(PersonalizedCompoundItem *)self items];
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [items2 count]);

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    items3 = [(PersonalizedCompoundItem *)self items];
    v12 = [items3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(items3);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if ([v16 conformsToProtocol:&OBJC_PROTOCOL___PersonalizedAutocompleteItem])
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            [v7 addObject:v16];
          }
        }

        v13 = [items3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    v9 = [v7 copy];
    goto LABEL_20;
  }

  items4 = [(PersonalizedCompoundItem *)self items];
  firstObject = [items4 firstObject];

  v7 = firstObject;
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___PersonalizedAutocompleteItem])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v25 = v7;
    v9 = [NSArray arrayWithObjects:&v25 count:1];
LABEL_20:
    v18 = v9;
    goto LABEL_21;
  }

  v18 = &__NSArray0__struct;
LABEL_21:

  return v18;
}

- (unint64_t)serverItemIndexInSection
{
  autocompleteItemWithEarliestServerSectionAndIndexInSection = [(PersonalizedCompoundItem *)self autocompleteItemWithEarliestServerSectionAndIndexInSection];
  serverItemIndexInSection = [autocompleteItemWithEarliestServerSectionAndIndexInSection serverItemIndexInSection];

  return serverItemIndexInSection;
}

- (unint64_t)serverSectionIndex
{
  autocompleteItemWithEarliestServerSectionAndIndexInSection = [(PersonalizedCompoundItem *)self autocompleteItemWithEarliestServerSectionAndIndexInSection];
  serverSectionIndex = [autocompleteItemWithEarliestServerSectionAndIndexInSection serverSectionIndex];

  return serverSectionIndex;
}

- (BOOL)hasServerItemIndex
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if ([v6 conformsToProtocol:{&OBJC_PROTOCOL___PersonalizedAutocompleteItem, v11}])
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;

        if (v8)
        {
          hasServerItemIndex = [v6 hasServerItemIndex];

          if (hasServerItemIndex)
          {
            LOBYTE(v3) = 1;
            goto LABEL_15;
          }
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v3;
}

- (NSArray)autocompletionStrings
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 conformsToProtocol:{&OBJC_PROTOCOL___PersonalizedAutocompleteItem, v14}])
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          autocompletionStrings = [v9 autocompletionStrings];
          if (autocompletionStrings)
          {
            [v3 addObjectsFromArray:autocompletionStrings];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (BOOL)hidden
{
  autocompleteItemWithHighestPriority = [(PersonalizedCompoundItem *)self autocompleteItemWithHighestPriority];
  v3 = autocompleteItemWithHighestPriority;
  if (autocompleteItemWithHighestPriority)
  {
    hidden = [autocompleteItemWithHighestPriority hidden];
  }

  else
  {
    hidden = 1;
  }

  return hidden;
}

- (GEOServerResultScoreMetadata)serverResultScoreMetadata
{
  autocompleteItemWithHighestPriority = [(PersonalizedCompoundItem *)self autocompleteItemWithHighestPriority];
  serverResultScoreMetadata = [autocompleteItemWithHighestPriority serverResultScoreMetadata];

  return serverResultScoreMetadata;
}

- (int64_t)priorityOverride
{
  autocompleteItemWithHighestPriority = [(PersonalizedCompoundItem *)self autocompleteItemWithHighestPriority];
  v3 = autocompleteItemWithHighestPriority;
  if (autocompleteItemWithHighestPriority)
  {
    priorityOverride = [autocompleteItemWithHighestPriority priorityOverride];
  }

  else
  {
    priorityOverride = 0;
  }

  return priorityOverride;
}

- (BOOL)hasPriorityOverride
{
  autocompleteItemWithHighestPriority = [(PersonalizedCompoundItem *)self autocompleteItemWithHighestPriority];
  v3 = autocompleteItemWithHighestPriority;
  if (autocompleteItemWithHighestPriority)
  {
    hasPriorityOverride = [autocompleteItemWithHighestPriority hasPriorityOverride];
  }

  else
  {
    hasPriorityOverride = 0;
  }

  return hasPriorityOverride;
}

- (int64_t)sourceSubtype
{
  autocompleteItemWithHighestPriority = [(PersonalizedCompoundItem *)self autocompleteItemWithHighestPriority];
  v3 = autocompleteItemWithHighestPriority;
  if (autocompleteItemWithHighestPriority)
  {
    sourceSubtype = [autocompleteItemWithHighestPriority sourceSubtype];
  }

  else
  {
    sourceSubtype = 0;
  }

  return sourceSubtype;
}

- (int64_t)sourceType
{
  autocompleteItemWithHighestPriority = [(PersonalizedCompoundItem *)self autocompleteItemWithHighestPriority];
  v3 = autocompleteItemWithHighestPriority;
  if (autocompleteItemWithHighestPriority)
  {
    sourceType = [autocompleteItemWithHighestPriority sourceType];
  }

  else
  {
    sourceType = 0;
  }

  return sourceType;
}

- (id)autocompleteItemWithEarliestServerSectionAndIndexInSection
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v19 = 0;
    v6 = 0;
    v7 = *v21;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&OBJC_PROTOCOL___PersonalizedAutocompleteItem])
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          hasServerItemIndex = [v9 hasServerItemIndex];

          if (hasServerItemIndex)
          {
            if ((v13 = [v9 serverSectionIndex], v14 = objc_msgSend(v9, "serverItemIndexInSection"), v15 = v14, !v5) || v13 < v6 || (v13 == v6 ? (v16 = v14 >= v19) : (v16 = 1), !v16))
            {
              v17 = v9;

              v5 = v17;
              v19 = v15;
              v6 = v13;
            }
          }
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)autocompleteItemWithHighestObjectPriority
{
  v3 = +[PersonalizedItemPriorityFunction defaultPriorityFunctionForAutocompleteObject];
  v4 = [(PersonalizedCompoundItem *)self itemWithHighestPriorityForFunction:v3];

  return v4;
}

- (PersonalizedAutocompleteItem)autocompleteItemWithHighestPriority
{
  if ([(PersonalizedCompoundItem *)self hasCachedAutocompleteItemWithHighestPriority])
  {
    cachedAutocompleteItemWithHighestPriority = [(PersonalizedCompoundItem *)self cachedAutocompleteItemWithHighestPriority];
  }

  else
  {
    priorityFunction = [(PersonalizedCompoundItem *)self priorityFunction];
    cachedAutocompleteItemWithHighestPriority = [(PersonalizedCompoundItem *)self itemWithHighestPriorityForFunction:priorityFunction];

    [(PersonalizedCompoundItem *)self setCachedAutocompleteItemWithHighestPriority:cachedAutocompleteItemWithHighestPriority];
    [(PersonalizedCompoundItem *)self setHasCachedAutocompleteItemWithHighestPriority:1];
  }

  return cachedAutocompleteItemWithHighestPriority;
}

- (PersonalizedCompoundItem)itemWithHighestPriorityForFunction:(id)function
{
  functionCopy = function;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(PersonalizedCompoundItem *)self items];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&OBJC_PROTOCOL___PersonalizedAutocompleteItem])
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          if ((v13 = [functionCopy priorityForPersonalizedAutocompleteItem:v11], !v8) || objc_msgSend(v8, "hidden") && !objc_msgSend(v11, "hidden") || ((v14 = objc_msgSend(v8, "hidden"), v14 == objc_msgSend(v11, "hidden")) ? (v15 = v13 <= v7) : (v15 = 1), !v15))
          {
            v16 = v11;

            v7 = v13;
            v8 = v16;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)needsToPreserveSelection
{
  if (![(NSArray *)self->_items count])
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_items;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) == 0 || ![v8 needsToPreserveSelection])
        {
          v9 = 0;
          goto LABEL_15;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_15:

  return v9;
}

- (BOOL)mustRefineMapItem
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) mustRefineMapItem])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (MapsLocationOfInterest)locationOfInterest
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          locationOfInterest = [v7 locationOfInterest];
          if (locationOfInterest)
          {
            v9 = locationOfInterest;
            goto LABEL_12;
          }
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (SearchDotPlace)searchDotPlace
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        searchDotPlace = [*(*(&v10 + 1) + 8 * i) searchDotPlace];
        if (searchDotPlace)
        {
          v8 = searchDotPlace;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (AddressBookAddress)address
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        address = [*(*(&v10 + 1) + 8 * i) address];
        if (address)
        {
          v8 = address;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (VKLabelMarker)sourceLabelMarker
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        sourceLabelMarker = [*(*(&v10 + 1) + 8 * i) sourceLabelMarker];
        if (sourceLabelMarker)
        {
          v8 = sourceLabelMarker;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (TrafficIncidentReport)incidentReport
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          incidentReport = [v7 incidentReport];
          if (incidentReport)
          {
            v9 = incidentReport;
            goto LABEL_12;
          }
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (ParkedCar)parkedCar
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          parkedCar = [v7 parkedCar];
          if (parkedCar)
          {
            v9 = parkedCar;
            goto LABEL_12;
          }
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (NSArray)searchableStrings
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        searchableStrings = [*(*(&v12 + 1) + 8 * i) searchableStrings];
        if (searchableStrings)
        {
          [v3 addObjectsFromArray:searchableStrings];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (unint64_t)priority
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    priority = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 priority] > priority)
        {
          priority = [v8 priority];
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    priority = 0;
  }

  return priority;
}

- (void)setPriorityFunction:(id)function
{
  functionCopy = function;
  if (!functionCopy)
  {
    functionCopy = +[PersonalizedItemPriorityFunction defaultPriorityFunctionForCompoundItemResolution];
  }

  if (self->_priorityFunction != functionCopy)
  {
    obj = functionCopy;
    [(PersonalizedCompoundItem *)self setHasCachedAutocompleteItemWithHighestPriority:0];
    objc_storeStrong(&self->_priorityFunction, obj);
    functionCopy = obj;
  }
}

- (PersonalizedCompoundItem)initWithItems:(id)items
{
  itemsCopy = items;
  v34.receiver = self;
  v34.super_class = PersonalizedCompoundItem;
  v5 = [(PersonalizedCompoundItem *)&v34 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    items = v5->_items;
    v27 = v5;
    v5->_items = v6;

    v8 = +[NSMutableSet set];
    v29 = objc_opt_new();
    v28 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = itemsCopy;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          keys = [v14 keys];
          [v8 unionSet:keys];

          if ([v14 conformsToProtocol:&OBJC_PROTOCOL___PersonalizedAutocompleteItem])
          {
            v16 = v14;
            v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 sourceType]);
            [v29 addObject:v17];

            sourceSubtype = [v16 sourceSubtype];
            v19 = [NSNumber numberWithInteger:sourceSubtype];
            [v28 addObject:v19];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v11);
    }

    v20 = [v29 copy];
    v5 = v27;
    [(PersonalizedCompoundItem *)v27 setPossiblePersonalizedItemSourceTypes:v20];

    v21 = [v28 copy];
    [(PersonalizedCompoundItem *)v27 setPossiblePersonalizedItemSourceSubtypes:v21];

    v22 = [v8 copy];
    keys = v27->_keys;
    v27->_keys = v22;

    v24 = +[PersonalizedItemPriorityFunction defaultPriorityFunctionForCompoundItemResolution];
    priorityFunction = v27->_priorityFunction;
    v27->_priorityFunction = v24;
  }

  return v5;
}

- (AutocompleteMatchInfo)matchInfo
{
  autocompleteItemWithHighestPriority = [(PersonalizedCompoundItem *)self autocompleteItemWithHighestPriority];
  if ([autocompleteItemWithHighestPriority conformsToProtocol:&OBJC_PROTOCOL___AutocompleteItemWithMatchInfo])
  {
    matchInfo = [autocompleteItemWithHighestPriority matchInfo];
  }

  else
  {
    matchInfo = 0;
  }

  return matchInfo;
}

@end