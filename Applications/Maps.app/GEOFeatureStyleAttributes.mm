@interface GEOFeatureStyleAttributes
+ (id)addStopStyleAttributes;
+ (id)currentLocationStyleAttributes;
+ (id)multipleWaypointsStyleAttributes;
+ (id)shareETAAdvisoryStyleAttributes;
+ (id)styleAttributesForSearchResult:(id)a3;
@end

@implementation GEOFeatureStyleAttributes

+ (id)multipleWaypointsStyleAttributes
{
  v2 = [[a1 alloc] initWithAttributes:{65654, 2, 0}];

  return v2;
}

+ (id)addStopStyleAttributes
{
  v2 = [[a1 alloc] initWithAttributes:{65654, 1, 0}];

  return v2;
}

+ (id)currentLocationStyleAttributes
{
  v2 = [[a1 alloc] initWithAttributes:{65654, 0, 0}];

  return v2;
}

+ (id)shareETAAdvisoryStyleAttributes
{
  v2 = [[a1 alloc] initWithAttributes:{65618, 41, 0}];

  return v2;
}

+ (id)styleAttributesForSearchResult:(id)a3
{
  v3 = a3;
  v4 = [v3 customizedLocationType];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v5 = +[GEOFeatureStyleAttributes homeStyleAttributes];
      goto LABEL_12;
    }

    if (v4 == 2)
    {
      v5 = +[GEOFeatureStyleAttributes workStyleAttributes];
      goto LABEL_12;
    }
  }

  else
  {
    switch(v4)
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

  v8 = [v3 mapItem];
  v9 = [v8 _styleAttributes];
  v10 = [v9 copy];

  v11 = [v3 locationOfInterest];
  if (v11 && (v12 = [v10 hasAttributes], v11, (v12 & 1) == 0))
  {
    v19 = +[GEOFeatureStyleAttributes frequentLocationStyleAttributes];
  }

  else
  {
    v13 = [v3 mapItem];
    v14 = [v13 place];

    if (v14)
    {
      v6 = v10;
      if (([v6 hasAttributes] & 1) == 0)
      {
        v15 = [v3 place];
        v16 = [GEOFeatureStyleAttributes styleAttributesForPlace:v15];

        v6 = v16;
      }

      v17 = [v6 poiType];
      if ([v3 isFrequentLocation] && (v17 == 348 || v17 == -1))
      {
        v18 = +[GEOFeatureStyleAttributes frequentLocationStyleAttributes];
      }

      else
      {
        if (![v6 isLabelPOI] || !objc_msgSend(v3, "isPartOfMultipleResultsSet"))
        {
LABEL_30:
          v21 = [v3 mapItem];
          v22 = [v21 _geoMapItem];
          v23 = [v22 isDisputed];

          if (v23)
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