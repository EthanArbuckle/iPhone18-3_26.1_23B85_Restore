@interface ACCNavigationInfoBuilder
+ (id)accNavigationLaneGuidanceInfoFrom:(id)from;
+ (id)accNavigationLaneGuidanceLaneInfoFrom:(id)from;
+ (id)accNavigationManeuverUpdateInfoFrom:(id)from;
+ (id)accNavigationRouteGuidanceUpdateInfoFrom:(id)from;
@end

@implementation ACCNavigationInfoBuilder

+ (id)accNavigationRouteGuidanceUpdateInfoFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_new();
  accNavFormat = [fromCopy accNavFormat];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C3C6FC;
  v8[3] = &unk_1016555A0;
  v6 = v4;
  v9 = v6;
  [accNavFormat enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

+ (id)accNavigationManeuverUpdateInfoFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_new();
  accNavFormat = [fromCopy accNavFormat];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C3C838;
  v8[3] = &unk_1016555A0;
  v6 = v4;
  v9 = v6;
  [accNavFormat enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

+ (id)accNavigationLaneGuidanceLaneInfoFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_new();
  accNavFormat = [fromCopy accNavFormat];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C3C974;
  v8[3] = &unk_1016555A0;
  v6 = v4;
  v9 = v6;
  [accNavFormat enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

+ (id)accNavigationLaneGuidanceInfoFrom:(id)from
{
  fromCopy = from;
  v5 = objc_opt_new();
  accNavFormat = [fromCopy accNavFormat];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100C3CAC4;
  v12[3] = &unk_10164E4C8;
  v13 = fromCopy;
  selfCopy = self;
  v7 = v5;
  v14 = v7;
  v8 = fromCopy;
  [accNavFormat enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

@end