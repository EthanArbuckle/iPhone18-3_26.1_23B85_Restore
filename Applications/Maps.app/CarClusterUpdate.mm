@interface CarClusterUpdate
+ (unsigned)_accNavManeuverStateForGEONavigationAnnouncementStage:(unint64_t)a3;
+ (unsigned)_accNavManeuverTypeForGEOManeuverType:(int)a3;
+ (unsigned)_accNavRouteGuidanceStateForGEONavigationState:(int)a3;
+ (void)getStringValue:(id *)a3 displayUnits:(unsigned __int16 *)a4 forRemainingDistance:(double)a5;
- (BOOL)_propertyIsEnum:(id)a3;
- (NSDictionary)accNavFormat;
- (NSNumber)navigationRouteGuidanceDisplayComponentID;
- (NSString)logFormat;
- (id)_debugDescriptionForProperty:(id)a3 withValue:(id)a4;
- (id)debugDescription;
- (void)resetProperties;
- (void)setAccNavFormat:(id)a3;
@end

@implementation CarClusterUpdate

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(CarClusterUpdate *)self debugProperties];
  v5 = [(CarClusterUpdate *)self logFormat];
  v6 = [NSString stringWithFormat:@"<%@ %p>: (%@) %@", v3, self, v4, v5];

  return v6;
}

- (id)_debugDescriptionForProperty:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CarClusterUpdate *)self _propertyIsEnum:v6])
  {
    v8 = [objc_opt_class() _enumProperties];
    v9 = [v8 objectForKeyedSubscript:v6];
    v10 = [v9 objectForKeyedSubscript:v7];
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (BOOL)_propertyIsEnum:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _enumProperties];
  v5 = [v4 allKeys];
  v6 = [v5 containsObject:v3];

  return v6;
}

- (NSNumber)navigationRouteGuidanceDisplayComponentID
{
  v3 = [(CarClusterUpdate *)self component];

  if (v3)
  {
    v4 = [(CarClusterUpdate *)self component];
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 identifier]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)logFormat
{
  v3 = [NSMutableString stringWithString:@"{"];
  v4 = [objc_opt_class() _integersKeyed];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100C9C8E8;
  v12 = &unk_10164FF10;
  v13 = self;
  v5 = v3;
  v14 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];

  [v5 appendFormat:@"\n}", v9, v10, v11, v12, v13];
  v6 = v14;
  v7 = v5;

  return v5;
}

- (void)setAccNavFormat:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100C9CCD4;
  v3[3] = &unk_1016555A0;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

- (NSDictionary)accNavFormat
{
  v3 = objc_opt_new();
  v4 = [objc_opt_class() _integersKeyed];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C9CE3C;
  v9[3] = &unk_10164FF10;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)resetProperties
{
  v3 = [objc_opt_class() _integersKeyed];
  v4 = [v3 mutableCopy];

  [v4 removeObjectForKey:&off_1016E9530];
  [v4 removeObjectForKey:&off_1016E9530];
  [v4 removeObjectForKey:&off_1016E9530];
  [v4 removeObjectForKey:&off_1016E9548];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C9D11C;
  v5[3] = &unk_1016555A0;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

+ (unsigned)_accNavManeuverStateForGEONavigationAnnouncementStage:(unint64_t)a3
{
  v3 = a3 - 2;
  if (((a3 - 2) & 0xFFFC) != 0)
  {
    return -1;
  }

  return v3;
}

+ (unsigned)_accNavManeuverTypeForGEOManeuverType:(int)a3
{
  if ((a3 - 1) > 0x57)
  {
    return 0;
  }

  else
  {
    return word_1012157A4[a3 - 1];
  }
}

+ (unsigned)_accNavRouteGuidanceStateForGEONavigationState:(int)a3
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return word_101212C80[a3 - 1];
  }
}

+ (void)getStringValue:(id *)a3 displayUnits:(unsigned __int16 *)a4 forRemainingDistance:(double)a5
{
  v7 = +[NSLocale currentLocale];
  [v7 _navigation_distanceUsesMetricSystem];
  v8 = +[NSLocale currentLocale];
  [v8 _navigation_useYardsForShortDistances];
  v9 = MNInstructionsCalculateDistanceUnits();
  v11 = v10;

  if (a3)
  {
    if ((v11 & &_mh_execute_header) != 0)
    {
      v12 = @"%.1f";
    }

    else
    {
      v12 = @"%.0f";
    }

    *a3 = [NSString localizedStringWithFormat:v12, *&v11];
  }

  if (a4)
  {
    if (v9 <= 5)
    {
      *a4 = word_101215798[v9];
    }
  }
}

@end