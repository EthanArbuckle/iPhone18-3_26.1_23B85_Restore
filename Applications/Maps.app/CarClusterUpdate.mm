@interface CarClusterUpdate
+ (unsigned)_accNavManeuverStateForGEONavigationAnnouncementStage:(unint64_t)stage;
+ (unsigned)_accNavManeuverTypeForGEOManeuverType:(int)type;
+ (unsigned)_accNavRouteGuidanceStateForGEONavigationState:(int)state;
+ (void)getStringValue:(id *)value displayUnits:(unsigned __int16 *)units forRemainingDistance:(double)distance;
- (BOOL)_propertyIsEnum:(id)enum;
- (NSDictionary)accNavFormat;
- (NSNumber)navigationRouteGuidanceDisplayComponentID;
- (NSString)logFormat;
- (id)_debugDescriptionForProperty:(id)property withValue:(id)value;
- (id)debugDescription;
- (void)resetProperties;
- (void)setAccNavFormat:(id)format;
@end

@implementation CarClusterUpdate

- (id)debugDescription
{
  v3 = objc_opt_class();
  debugProperties = [(CarClusterUpdate *)self debugProperties];
  logFormat = [(CarClusterUpdate *)self logFormat];
  v6 = [NSString stringWithFormat:@"<%@ %p>: (%@) %@", v3, self, debugProperties, logFormat];

  return v6;
}

- (id)_debugDescriptionForProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([(CarClusterUpdate *)self _propertyIsEnum:propertyCopy])
  {
    _enumProperties = [objc_opt_class() _enumProperties];
    v9 = [_enumProperties objectForKeyedSubscript:propertyCopy];
    v10 = [v9 objectForKeyedSubscript:valueCopy];
  }

  else
  {
    v10 = valueCopy;
  }

  return v10;
}

- (BOOL)_propertyIsEnum:(id)enum
{
  enumCopy = enum;
  _enumProperties = [objc_opt_class() _enumProperties];
  allKeys = [_enumProperties allKeys];
  v6 = [allKeys containsObject:enumCopy];

  return v6;
}

- (NSNumber)navigationRouteGuidanceDisplayComponentID
{
  component = [(CarClusterUpdate *)self component];

  if (component)
  {
    component2 = [(CarClusterUpdate *)self component];
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [component2 identifier]);
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
  _integersKeyed = [objc_opt_class() _integersKeyed];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100C9C8E8;
  v12 = &unk_10164FF10;
  selfCopy = self;
  v5 = v3;
  v14 = v5;
  [_integersKeyed enumerateKeysAndObjectsUsingBlock:&v9];

  [v5 appendFormat:@"\n}", v9, v10, v11, v12, selfCopy];
  v6 = v14;
  v7 = v5;

  return v5;
}

- (void)setAccNavFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100C9CCD4;
  v3[3] = &unk_1016555A0;
  v3[4] = self;
  [format enumerateKeysAndObjectsUsingBlock:v3];
}

- (NSDictionary)accNavFormat
{
  v3 = objc_opt_new();
  _integersKeyed = [objc_opt_class() _integersKeyed];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C9CE3C;
  v9[3] = &unk_10164FF10;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [_integersKeyed enumerateKeysAndObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)resetProperties
{
  _integersKeyed = [objc_opt_class() _integersKeyed];
  v4 = [_integersKeyed mutableCopy];

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

+ (unsigned)_accNavManeuverStateForGEONavigationAnnouncementStage:(unint64_t)stage
{
  v3 = stage - 2;
  if (((stage - 2) & 0xFFFC) != 0)
  {
    return -1;
  }

  return v3;
}

+ (unsigned)_accNavManeuverTypeForGEOManeuverType:(int)type
{
  if ((type - 1) > 0x57)
  {
    return 0;
  }

  else
  {
    return word_1012157A4[type - 1];
  }
}

+ (unsigned)_accNavRouteGuidanceStateForGEONavigationState:(int)state
{
  if ((state - 1) > 7)
  {
    return 0;
  }

  else
  {
    return word_101212C80[state - 1];
  }
}

+ (void)getStringValue:(id *)value displayUnits:(unsigned __int16 *)units forRemainingDistance:(double)distance
{
  v7 = +[NSLocale currentLocale];
  [v7 _navigation_distanceUsesMetricSystem];
  v8 = +[NSLocale currentLocale];
  [v8 _navigation_useYardsForShortDistances];
  v9 = MNInstructionsCalculateDistanceUnits();
  v11 = v10;

  if (value)
  {
    if ((v11 & &_mh_execute_header) != 0)
    {
      v12 = @"%.1f";
    }

    else
    {
      v12 = @"%.0f";
    }

    *value = [NSString localizedStringWithFormat:v12, *&v11];
  }

  if (units)
  {
    if (v9 <= 5)
    {
      *units = word_101215798[v9];
    }
  }
}

@end