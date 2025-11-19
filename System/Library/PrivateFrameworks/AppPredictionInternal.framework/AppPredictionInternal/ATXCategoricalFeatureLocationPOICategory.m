@interface ATXCategoricalFeatureLocationPOICategory
+ (BOOL)ignorePoiCategoryForUsersCurrentLOI:(id)a3;
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXCategoricalFeatureLocationPOICategory

+ (BOOL)ignorePoiCategoryForUsersCurrentLOI:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 type])
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

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = a3;
  v5 = [v4 poiCategory];
  v6 = [v4 locationMotionContext];

  v7 = [v6 currentLOI];

  if ([objc_opt_class() ignorePoiCategoryForUsersCurrentLOI:v7])
  {
    v8 = @"POI Category Ignored";
  }

  else if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = @"POI Category NA";
  }

  return v8;
}

@end