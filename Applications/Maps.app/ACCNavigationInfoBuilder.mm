@interface ACCNavigationInfoBuilder
+ (id)accNavigationLaneGuidanceInfoFrom:(id)a3;
+ (id)accNavigationLaneGuidanceLaneInfoFrom:(id)a3;
+ (id)accNavigationManeuverUpdateInfoFrom:(id)a3;
+ (id)accNavigationRouteGuidanceUpdateInfoFrom:(id)a3;
@end

@implementation ACCNavigationInfoBuilder

+ (id)accNavigationRouteGuidanceUpdateInfoFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 accNavFormat];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C3C6FC;
  v8[3] = &unk_1016555A0;
  v6 = v4;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

+ (id)accNavigationManeuverUpdateInfoFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 accNavFormat];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C3C838;
  v8[3] = &unk_1016555A0;
  v6 = v4;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

+ (id)accNavigationLaneGuidanceLaneInfoFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 accNavFormat];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C3C974;
  v8[3] = &unk_1016555A0;
  v6 = v4;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

+ (id)accNavigationLaneGuidanceInfoFrom:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 accNavFormat];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100C3CAC4;
  v12[3] = &unk_10164E4C8;
  v13 = v4;
  v15 = a1;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

@end