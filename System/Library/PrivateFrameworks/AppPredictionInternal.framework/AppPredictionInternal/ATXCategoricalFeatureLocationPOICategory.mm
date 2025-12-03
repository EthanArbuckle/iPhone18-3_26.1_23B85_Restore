@interface ATXCategoricalFeatureLocationPOICategory
+ (BOOL)ignorePoiCategoryForUsersCurrentLOI:(id)i;
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureLocationPOICategory

+ (BOOL)ignorePoiCategoryForUsersCurrentLOI:(id)i
{
  iCopy = i;
  v4 = iCopy;
  if (iCopy)
  {
    if ([iCopy type])
    {
      v5 = [v4 type] == 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  poiCategory = [contextCopy poiCategory];
  locationMotionContext = [contextCopy locationMotionContext];

  currentLOI = [locationMotionContext currentLOI];

  if ([objc_opt_class() ignorePoiCategoryForUsersCurrentLOI:currentLOI])
  {
    v8 = @"POI Category Ignored";
  }

  else if (poiCategory)
  {
    v8 = poiCategory;
  }

  else
  {
    v8 = @"POI Category NA";
  }

  return v8;
}

@end