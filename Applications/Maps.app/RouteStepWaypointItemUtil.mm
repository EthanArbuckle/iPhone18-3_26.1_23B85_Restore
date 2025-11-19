@interface RouteStepWaypointItemUtil
+ (id)attributedSubtitleForLeg:(id)a3 waypoint:(id)a4 isOrigin:(BOOL)a5 attributes:(id)a6;
@end

@implementation RouteStepWaypointItemUtil

+ (id)attributedSubtitleForLeg:(id)a3 waypoint:(id)a4 isOrigin:(BOOL)a5 attributes:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (a5)
  {
    [v9 originListSecondaryInstructions];
  }

  else
  {
    [v9 destinationListSecondaryInstructions];
  }
  v12 = ;
  if ([v12 count])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1009CEA44;
    v21[3] = &unk_1016312D0;
    v22 = v9;
    v23 = v10;
    v24 = v11;
    v13 = [v12 _geo_compactMap:v21];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1009CEADC;
    v18[3] = &unk_1016312F8;
    v19 = [[NSMutableAttributedString alloc] initWithString:&stru_1016631F0];
    v20 = v13;
    v14 = v13;
    v15 = v19;
    [v14 enumerateObjectsUsingBlock:v18];
    v16 = [v15 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end