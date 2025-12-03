@interface PlaceCardLinkedPlacesItem
- (AddressBookAddress)address;
- (BOOL)mustRefineMapItem;
- (BOOL)shouldBeClustered;
- (BOOL)shouldBeHiddenFromMap;
- (BOOL)showsBalloonCallout;
- (BOOL)wantsDisplayedSearchResultsTypePoints;
- (CLLocationCoordinate2D)coordinate;
- (GEOEnhancedPlacement)enhancedPlacement;
- (GEOLabelGeometry)labelGeometry;
- (MKMapItem)mapItem;
- (NSArray)searchableStrings;
- (NSSet)keys;
- (PersonalizedItemPrioritizedStringAdornment)prefix;
- (PersonalizedItemPrioritizedStringAdornment)subtitle;
- (PersonalizedItemPrioritizedStringAdornment)title;
- (PersonalizedItemSource)source;
- (PersonalizedItemStyleAttributesAdornment)styleAttributes;
- (PlaceCardLinkedPlacesItem)init;
- (PlaceCardLinkedPlacesItem)initWithGEOMapItem:(id)item;
- (PlaceCardLinkedPlacesItem)initWithPersonalizedItem:(id)item;
- (SearchDotPlace)searchDotPlace;
- (SearchResult)searchResult;
- (VKLabelMarker)sourceLabelMarker;
- (unint64_t)priority;
@end

@implementation PlaceCardLinkedPlacesItem

- (PersonalizedItemSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->source);

  return WeakRetained;
}

- (SearchDotPlace)searchDotPlace
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    personalizedItem = [personalizedItem searchDotPlace];
    v2 = vars8;
  }

  return personalizedItem;
}

- (BOOL)wantsDisplayedSearchResultsTypePoints
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"__internalChinaAOIInjectPOIsAsSearchResults"];

  return v3;
}

- (BOOL)shouldBeHiddenFromMap
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    LOBYTE(personalizedItem) = [(PersonalizedItem *)personalizedItem shouldBeHiddenFromMap];
  }

  return personalizedItem;
}

- (BOOL)mustRefineMapItem
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    return [(PersonalizedItem *)personalizedItem mustRefineMapItem];
  }

  else
  {
    return 1;
  }
}

- (NSArray)searchableStrings
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    personalizedItem = [personalizedItem searchableStrings];
    v2 = vars8;
  }

  return personalizedItem;
}

- (AddressBookAddress)address
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    personalizedItem = [personalizedItem address];
    v2 = vars8;
  }

  return personalizedItem;
}

- (VKLabelMarker)sourceLabelMarker
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    personalizedItem = [personalizedItem sourceLabelMarker];
    v2 = vars8;
  }

  return personalizedItem;
}

- (SearchResult)searchResult
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    personalizedItem = [personalizedItem searchResult];
    v2 = vars8;
  }

  return personalizedItem;
}

- (BOOL)showsBalloonCallout
{
  if (self->_personalizedItem)
  {
    personalizedItem = self->_personalizedItem;

    return [(PersonalizedItem *)personalizedItem showsBalloonCallout];
  }

  else
  {
    styleAttributes = [(PlaceCardLinkedPlacesItem *)self styleAttributes];
    v5StyleAttributes = [styleAttributes styleAttributes];
    isLabelPOI = [v5StyleAttributes isLabelPOI];

    return isLabelPOI ^ 1;
  }
}

- (BOOL)shouldBeClustered
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    LOBYTE(personalizedItem) = [(PersonalizedItem *)personalizedItem shouldBeClustered];
  }

  return personalizedItem;
}

- (PersonalizedItemStyleAttributesAdornment)styleAttributes
{
  styleAttributes = self->_styleAttributes;
  if (!styleAttributes)
  {
    personalizedItem = self->_personalizedItem;
    if (personalizedItem)
    {
      styleAttributes = [(PersonalizedItem *)personalizedItem styleAttributes];
      v5StyleAttributes = [styleAttributes styleAttributes];

      if (v5StyleAttributes)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5StyleAttributes = [(GEOMapItem *)self->_geoMapItem _styleAttributes];
      if (v5StyleAttributes)
      {
LABEL_5:
        v7 = [v5StyleAttributes copy];

        v8 = +[NSUserDefaults standardUserDefaults];
        v9 = [v8 BOOLForKey:@"__internalChinaAOIInjectPOIsAsSearchResults"];

        if (v9)
        {
          v14 = 0x100010022;
          [v7 replaceAttributes:&v14 count:1];
        }

        if ([(PlaceCardLinkedPlacesItem *)self isParent])
        {
          v10 = 0x200000022;
        }

        else
        {
          if (![(PlaceCardLinkedPlacesItem *)self isChild])
          {
LABEL_12:
            v14 = 0x100010024;
            [v7 replaceAttributes:&v14 count:1];
            v11 = self->_styleAttributes;
            self->_styleAttributes = v7;

            styleAttributes = self->_styleAttributes;
            goto LABEL_13;
          }

          v10 = 0x100000022;
        }

        v14 = v10;
        [v7 replaceAttributes:&v14 count:1];
        goto LABEL_12;
      }
    }

    v5StyleAttributes = [[GEOFeatureStyleAttributes alloc] initWithAttributes:{4, 226, 5, 3, 6, 348, 10, 2, 0}];
    goto LABEL_5;
  }

LABEL_13:
  v12 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:styleAttributes];

  return v12;
}

- (PersonalizedItemPrioritizedStringAdornment)prefix
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    [(PersonalizedItem *)personalizedItem prefix];
  }

  else
  {
    +[PersonalizedItemPrioritizedStringAdornment defaultAdornment];
  }
  v3 = ;

  return v3;
}

- (PersonalizedItemPrioritizedStringAdornment)subtitle
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    [(PersonalizedItem *)personalizedItem subtitle];
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
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    title = [(PersonalizedItem *)personalizedItem title];
  }

  else
  {
    name = [(GEOMapItem *)self->_geoMapItem name];
    v6 = name;
    v7 = &stru_1016631F0;
    if (name)
    {
      v7 = name;
    }

    v8 = v7;

    title = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:v8 priority:100];
  }

  return title;
}

- (unint64_t)priority
{
  result = self->_personalizedItem;
  if (result)
  {
    return [result priority];
  }

  return result;
}

- (MKMapItem)mapItem
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    mapItem = [(PersonalizedItem *)personalizedItem mapItem];
  }

  else
  {
    mapItem = self->_mapItem;
  }

  return mapItem;
}

- (NSSet)keys
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    keys = [(PersonalizedItem *)personalizedItem keys];
  }

  else
  {
    if (self->_key)
    {
      [NSSet setWithObject:?];
    }

    else
    {
      +[NSSet set];
    }
    keys = ;
  }

  return keys;
}

- (GEOLabelGeometry)labelGeometry
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    labelGeometry = [(PersonalizedItem *)personalizedItem labelGeometry];
  }

  else
  {
    mapItem = [(PlaceCardLinkedPlacesItem *)self mapItem];
    labelGeometry = [mapItem _labelGeometry];
  }

  return labelGeometry;
}

- (GEOEnhancedPlacement)enhancedPlacement
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    enhancedPlacement = [(PersonalizedItem *)personalizedItem enhancedPlacement];
  }

  else
  {
    mapItem = [(PlaceCardLinkedPlacesItem *)self mapItem];
    enhancedPlacement = [mapItem _enhancedPlacement];
  }

  return enhancedPlacement;
}

- (CLLocationCoordinate2D)coordinate
{
  personalizedItem = self->_personalizedItem;
  if (personalizedItem)
  {
    [(PersonalizedItem *)personalizedItem coordinate];
  }

  else
  {
    latitude = self->_coordinate.latitude;
    longitude = self->_coordinate.longitude;
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PlaceCardLinkedPlacesItem)initWithGEOMapItem:(id)item
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = PlaceCardLinkedPlacesItem;
  v6 = [(PlaceCardLinkedPlacesItem *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geoMapItem, item);
    [itemCopy coordinate];
    v7->_coordinate = CLLocationCoordinate2DMake(v8, v9);
    v10 = [[PersonalizedMapItemKey alloc] initWithGeoMapItem:itemCopy];
    key = v7->_key;
    v7->_key = v10;

    v12 = [[MKMapItem alloc] initWithGeoMapItem:itemCopy isPlaceHolderPlace:{objc_msgSend(itemCopy, "_hasResolvablePartialInformation")}];
    mapItem = v7->_mapItem;
    v7->_mapItem = v12;
  }

  return v7;
}

- (PlaceCardLinkedPlacesItem)initWithPersonalizedItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PlaceCardLinkedPlacesItem;
  v6 = [(PlaceCardLinkedPlacesItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personalizedItem, item);
  }

  return v7;
}

- (PlaceCardLinkedPlacesItem)init
{
  [NSException raise:NSInternalInconsistencyException format:@"init method not supported"];

  return 0;
}

@end