@interface VKTrafficIncidentFeature
- (NSString)restrictionCombinedDetails;
- (NSString)restrictionEffectiveTimeRange;
- (NSString)restrictionTitle;
@end

@implementation VKTrafficIncidentFeature

- (NSString)restrictionEffectiveTimeRange
{
  effectiveTimeRange = [(VKTrafficIncidentFeature *)self effectiveTimeRange];
  v3 = [NSString _navigation_stringForServerFormattedString:effectiveTimeRange];

  return v3;
}

- (NSString)restrictionCombinedDetails
{
  if ([(VKTrafficIncidentFeature *)self isRestrictionIncident])
  {
    v3 = objc_alloc_init(NSMutableArray);
    restrictionDetails = [(VKTrafficIncidentFeature *)self restrictionDetails];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100D716BC;
    v8[3] = &unk_101653030;
    v9 = v3;
    v5 = v3;
    [restrictionDetails enumerateObjectsUsingBlock:v8];

    v6 = [v5 componentsJoinedByString:@"\n"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)restrictionTitle
{
  formattedTitle = [(VKTrafficIncidentFeature *)self formattedTitle];
  v3 = [NSString _navigation_stringForServerFormattedString:formattedTitle];

  return v3;
}

@end