@interface GEOFeatureStyleAttributes
+ (id)addStopStyleAttributes;
+ (id)currentLocationStyleAttributes;
+ (id)multipleWaypointsStyleAttributes;
+ (id)shareETAAdvisoryStyleAttributes;
+ (id)styleAttributesForSearchResult:(id)result;
@end

@implementation GEOFeatureStyleAttributes

+ (id)multipleWaypointsStyleAttributes
{
  v2 = [[self alloc] initWithAttributes:{65654, 2, 0}];

  return v2;
}

+ (id)addStopStyleAttributes
{
  v2 = [[self alloc] initWithAttributes:{65654, 1, 0}];

  return v2;
}

+ (id)currentLocationStyleAttributes
{
  v2 = [[self alloc] initWithAttributes:{65654, 0, 0}];

  return v2;
}

+ (id)shareETAAdvisoryStyleAttributes
{
  v2 = [[self alloc] initWithAttributes:{65618, 41, 0}];

  return v2;
}

+ (id)styleAttributesForSearchResult:(id)result
{
  resultCopy = result;
  customizedLocationType = [resultCopy customizedLocationType];
  if (customizedLocationType <= 2)
  {
    if (customizedLocationType == 1)
    {
      v5 = +[GEOFeatureStyleAttributes homeStyleAttributes];
      goto LABEL_12;
    }

    if (customizedLocationType == 2)
    {
      v5 = +[GEOFeatureStyleAttributes workStyleAttributes];
      goto LABEL_12;
    }
  }

  else
  {
    switch(customizedLocationType)
    {
      case 3:
        v5 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
        goto LABEL_12;
      case 4:
        v5 = +[GEOFeatureStyleAttributes sharedLocationStyleAttributes];
        goto LABEL_12;
      case 5:
        v5 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
LABEL_12:
        v6 = v5;
        goto LABEL_13;
    }
  }

  mapItem = [resultCopy mapItem];
  _styleAttributes = [mapItem _styleAttributes];
  v10 = [_styleAttributes copy];

  locationOfInterest = [resultCopy locationOfInterest];
  if (locationOfInterest && (v12 = [v10 hasAttributes], locationOfInterest, (v12 & 1) == 0))
  {
    v19 = +[GEOFeatureStyleAttributes frequentLocationStyleAttributes];
  }

  else
  {
    mapItem2 = [resultCopy mapItem];
    place = [mapItem2 place];

    if (place)
    {
      v6 = v10;
      if (([v6 hasAttributes] & 1) == 0)
      {
        place2 = [resultCopy place];
        v16 = [GEOFeatureStyleAttributes styleAttributesForPlace:place2];

        v6 = v16;
      }

      poiType = [v6 poiType];
      if ([resultCopy isFrequentLocation] && (poiType == 348 || poiType == -1))
      {
        v18 = +[GEOFeatureStyleAttributes frequentLocationStyleAttributes];
      }

      else
      {
        if (![v6 isLabelPOI] || !objc_msgSend(resultCopy, "isPartOfMultipleResultsSet"))
        {
LABEL_30:
          mapItem3 = [resultCopy mapItem];
          _geoMapItem = [mapItem3 _geoMapItem];
          isDisputed = [_geoMapItem isDisputed];

          if (isDisputed)
          {
            v24 = 0x100000016;
            [v6 replaceAttributes:&v24 count:1];
          }

          goto LABEL_34;
        }

        v18 = +[GEOFeatureStyleAttributes markerStyleAttributes];
      }

      v20 = v18;

      v6 = v20;
      goto LABEL_30;
    }

    v19 = +[GEOFeatureStyleAttributes markerStyleAttributes];
  }

  v6 = v19;
LABEL_34:

LABEL_13:

  return v6;
}

@end