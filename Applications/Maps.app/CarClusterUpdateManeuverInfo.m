@interface CarClusterUpdateManeuverInfo
+ (id)_enumProperties;
+ (id)_integersKeyed;
+ (id)_maneuverDescriptionForGuidanceEvent:(id)a3 routeStep:(id)a4;
+ (id)maneuverUpdateWithGuidanceEvent:(id)a3 routeStep:(id)a4 component:(id)a5;
+ (id)maneuverUpdateWithStep:(id)a3 component:(id)a4;
- (CarClusterUpdateManeuverInfo)init;
- (NSUUID)uniqueID;
- (id)debugProperties;
- (void)setAfterManeuverRoadName:(id)a3;
- (void)setManeuverDescription:(id)a3;
@end

@implementation CarClusterUpdateManeuverInfo

- (id)debugProperties
{
  v2 = [(CarClusterUpdateManeuverInfo *)self hasBeenSent];
  v3 = @"NO";
  if (v2)
  {
    v3 = @"YES";
  }

  return [NSString stringWithFormat:@"hasBeenSent=%@", v3];
}

- (void)setAfterManeuverRoadName:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  afterManeuverRoadName = self->_afterManeuverRoadName;
  self->_afterManeuverRoadName = v4;
}

- (void)setManeuverDescription:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  maneuverDescription = self->_maneuverDescription;
  self->_maneuverDescription = v4;
}

- (NSUUID)uniqueID
{
  v2 = [(CarClusterUpdateManeuverInfo *)self guidanceEvent];
  v3 = [v2 uniqueID];

  return v3;
}

- (CarClusterUpdateManeuverInfo)init
{
  v3.receiver = self;
  v3.super_class = CarClusterUpdateManeuverInfo;
  result = [(CarClusterUpdateManeuverInfo *)&v3 init];
  if (result)
  {
    result->_maneuverType = -1;
    result->_distanceBetweenManeuverDisplayUnits = -1;
    result->_drivingSide = -1;
    result->_junctionType = -1;
  }

  return result;
}

+ (id)_integersKeyed
{
  if (qword_10195F7A0 != -1)
  {
    dispatch_once(&qword_10195F7A0, &stru_10165DF80);
  }

  v3 = qword_10195F7A8;

  return v3;
}

+ (id)_enumProperties
{
  if (qword_10195F790 != -1)
  {
    dispatch_once(&qword_10195F790, &stru_10165DF60);
  }

  v3 = qword_10195F798;

  return v3;
}

+ (id)_maneuverDescriptionForGuidanceEvent:(id)a3 routeStep:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 maneuverType];
  if (v7 <= 0x27 && ((1 << v7) & 0x8600050000) != 0)
  {
    v8 = +[MNNavigationService sharedService];
    v9 = [v8 route];

    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = [v9 legIndexForStepIndex:{objc_msgSend(v6, "stepIndex")}];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [v9 destination];
    }

    else
    {
      v13 = v11;
      v14 = [v9 legs];
      if (v13 >= [v14 count])
      {
        v12 = [v9 destination];
      }

      else
      {
        v15 = [v9 legs];
        v16 = [v15 objectAtIndexedSubscript:v13];
        v12 = [v16 destination];
      }
    }

    v17 = [v12 navDisplayAddress];
    [v10 setObject:v17 forKeyedSubscript:@"{Address}"];

    v18 = [v12 navDisplayName];
    [v10 setObject:v18 forKeyedSubscript:@"{Name}"];

    v19 = [v6 maneuverRoadOrExitName];
    [v10 setObject:v19 forKeyedSubscript:@"{Road}"];

    v20 = [v5 signDetails];
    v21 = [v20 firstObject];
    memset(v26, 0, sizeof(v26));
    LOBYTE(v26[0]) = 1;
    *(v26 + 15) = 0;
    v22 = [NSString _navigation_stringForServerFormattedString:v21 options:v26 overrideVariables:v10];
  }

  else
  {
    v24 = [v5 signDetails];
    v25 = [v24 firstObject];
    v22 = [NSString _navigation_stringForServerFormattedString:v25];
  }

  return v22;
}

+ (id)maneuverUpdateWithStep:(id)a3 component:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setComponent:v6];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 stepIndex]);
  [v7 setIndex:v8];

  v9 = [v5 contentsForContext:1];
  v10 = [v9 instructionWithShorterAlternatives];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v54 + 1) + 8 * i);
        v17 = [v16 length];
        if (v17 <= [v6 maxLength_ManeuverDescription])
        {
          v18 = v16;
          goto LABEL_12;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v18 = &stru_1016631F0;
  }

  else
  {
    v18 = &stru_1016631F0;
  }

LABEL_12:
  v51 = v11;

  v50 = v18;
  [v7 setManeuverDescription:v18];
  [v7 setManeuverType:{+[CarClusterUpdate _accNavManeuverTypeForGEOManeuverType:](CarClusterUpdate, "_accNavManeuverTypeForGEOManeuverType:", objc_msgSend(v5, "maneuverType"))}];
  v19 = [v5 maneuverRoadName];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_1016631F0;
  }

  [v7 setAfterManeuverRoadName:v21];

  [v5 distance];
  v22 = [NSNumber numberWithDouble:?];
  [v7 setDistanceBetweenManeuver:v22];

  v53 = 0;
  v52 = 0;
  [v5 distance];
  v23 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  [CarClusterUpdate getStringValue:&v52 displayUnits:&v53 forRemainingDistance:?];
  v49 = v52;
  [v7 setDistanceBetweenManeuverDisplayString:?];
  [v7 setDistanceBetweenManeuverDisplayUnits:v53];
  [v7 setDrivingSide:{objc_msgSend(v5, "drivingSide")}];
  v24 = [v5 geoStep];
  [v7 setJunctionType:{objc_msgSend(v24, "junctionType")}];

  v25 = objc_opt_new();
  v26 = [v5 geoStep];
  v27 = [v26 junctionElementsCount];

  if (v27)
  {
    v28 = 0;
    do
    {
      v29 = [v5 geoStep];
      [v29 junctionElementAtIndex:v28];
      v31 = v30;

      v32 = v23[445];
      v33 = [v5 geoStep];
      v34 = [v32 numberWithInt:{objc_msgSend(v33, "junctionElementAtIndex:", v28)}];

      if (v31 != 1)
      {
        if (v31 == 2)
        {
          v35 = [v5 geoStep];
          v36 = [v35 maneuverType];

          if (v36 == 4)
          {
            if (![v5 drivingSide] && (objc_msgSend(v34, "doubleValue"), v37 > 0.0) || objc_msgSend(v5, "drivingSide") == 1 && (objc_msgSend(v34, "doubleValue"), v38 < 0.0))
            {
              v39 = v23[445];
              [v34 doubleValue];
              v41 = [v39 numberWithDouble:-v40];

              v34 = v41;
            }
          }

          [v7 setJunctionElementExitAngle:v34];
          v42 = [v5 geoStep];
          v43 = [v42 exitNumber];
          v44 = [v43 shield];
          v45 = [v44 copy];
          [v7 setExitInfo:v45];

          v23 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
        }

        else
        {
          [v25 addObject:v34];
        }
      }

      ++v28;
      v46 = [v5 geoStep];
      v47 = [v46 junctionElementsCount];
    }

    while (v28 < v47);
  }

  [v7 setJunctionElementAngle:v25];

  return v7;
}

+ (id)maneuverUpdateWithGuidanceEvent:(id)a3 routeStep:(id)a4 component:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 hasSignGuidance])
  {
    v10 = objc_opt_new();
    [v10 setGuidanceEvent:v7];
    v32 = v9;
    [v10 setComponent:v9];
    v11 = [CarClusterUpdateManeuverInfo _maneuverDescriptionForGuidanceEvent:v7 routeStep:v8];
    [v10 setManeuverDescription:v11];

    [v10 setManeuverType:{+[CarClusterUpdate _accNavManeuverTypeForGEOManeuverType:](CarClusterUpdate, "_accNavManeuverTypeForGEOManeuverType:", objc_msgSend(v7, "maneuverType"))}];
    v12 = [v7 roadName];
    [v10 setAfterManeuverRoadName:v12];

    [v7 distance];
    v14 = [NSNumber numberWithUnsignedInt:v13];
    [v10 setDistanceBetweenManeuver:v14];

    v34 = 0;
    v33 = 0;
    [v7 distance];
    [CarClusterUpdate getStringValue:&v33 displayUnits:&v34 forRemainingDistance:?];
    v31 = v33;
    [v10 setDistanceBetweenManeuverDisplayString:?];
    [v10 setDistanceBetweenManeuverDisplayUnits:v34];
    [v10 setDrivingSide:{objc_msgSend(v7, "drivingSide")}];
    v15 = [v7 maneuverJunction];
    [v10 setJunctionType:{objc_msgSend(v15, "junctionType")}];
    v16 = objc_opt_new();
    if ([v15 numElements])
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = [v15 elements];
        v20 = *&v19[v17 + 8];
        v21 = [NSNumber numberWithInt:*&v19[v17]];
        if (v20 != 1)
        {
          if (v20 == 2)
          {
            if ([v15 maneuverType] == 4)
            {
              if (![v10 drivingSide] && (objc_msgSend(v21, "doubleValue"), v22 > 0.0) || objc_msgSend(v10, "drivingSide") == 1 && (objc_msgSend(v21, "doubleValue"), v23 < 0.0))
              {
                [v21 doubleValue];
                v25 = [NSNumber numberWithDouble:-v24];

                v21 = v25;
              }
            }

            [v10 setJunctionElementExitAngle:v21];
          }

          else
          {
            [v16 addObject:v21];
          }
        }

        ++v18;
        v17 += 16;
      }

      while (v18 < [v15 numElements]);
    }

    [v10 setJunctionElementAngle:v16];
    v26 = [v8 geoStep];
    v27 = [v26 exitNumber];
    v28 = [v27 name];
    v29 = [v28 copy];
    [v10 setExitInfo:v29];

    v9 = v32;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end