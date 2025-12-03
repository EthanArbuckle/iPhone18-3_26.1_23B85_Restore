@interface CarClusterUpdateManeuverInfo
+ (id)_enumProperties;
+ (id)_integersKeyed;
+ (id)_maneuverDescriptionForGuidanceEvent:(id)event routeStep:(id)step;
+ (id)maneuverUpdateWithGuidanceEvent:(id)event routeStep:(id)step component:(id)component;
+ (id)maneuverUpdateWithStep:(id)step component:(id)component;
- (CarClusterUpdateManeuverInfo)init;
- (NSUUID)uniqueID;
- (id)debugProperties;
- (void)setAfterManeuverRoadName:(id)name;
- (void)setManeuverDescription:(id)description;
@end

@implementation CarClusterUpdateManeuverInfo

- (id)debugProperties
{
  hasBeenSent = [(CarClusterUpdateManeuverInfo *)self hasBeenSent];
  v3 = @"NO";
  if (hasBeenSent)
  {
    v3 = @"YES";
  }

  return [NSString stringWithFormat:@"hasBeenSent=%@", v3];
}

- (void)setAfterManeuverRoadName:(id)name
{
  v4 = [name stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  afterManeuverRoadName = self->_afterManeuverRoadName;
  self->_afterManeuverRoadName = v4;
}

- (void)setManeuverDescription:(id)description
{
  v4 = [description stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  maneuverDescription = self->_maneuverDescription;
  self->_maneuverDescription = v4;
}

- (NSUUID)uniqueID
{
  guidanceEvent = [(CarClusterUpdateManeuverInfo *)self guidanceEvent];
  uniqueID = [guidanceEvent uniqueID];

  return uniqueID;
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

+ (id)_maneuverDescriptionForGuidanceEvent:(id)event routeStep:(id)step
{
  eventCopy = event;
  stepCopy = step;
  maneuverType = [eventCopy maneuverType];
  if (maneuverType <= 0x27 && ((1 << maneuverType) & 0x8600050000) != 0)
  {
    v8 = +[MNNavigationService sharedService];
    route = [v8 route];

    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = [route legIndexForStepIndex:{objc_msgSend(stepCopy, "stepIndex")}];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      destination = [route destination];
    }

    else
    {
      v13 = v11;
      legs = [route legs];
      if (v13 >= [legs count])
      {
        destination = [route destination];
      }

      else
      {
        legs2 = [route legs];
        v16 = [legs2 objectAtIndexedSubscript:v13];
        destination = [v16 destination];
      }
    }

    navDisplayAddress = [destination navDisplayAddress];
    [v10 setObject:navDisplayAddress forKeyedSubscript:@"{Address}"];

    navDisplayName = [destination navDisplayName];
    [v10 setObject:navDisplayName forKeyedSubscript:@"{Name}"];

    maneuverRoadOrExitName = [stepCopy maneuverRoadOrExitName];
    [v10 setObject:maneuverRoadOrExitName forKeyedSubscript:@"{Road}"];

    signDetails = [eventCopy signDetails];
    firstObject = [signDetails firstObject];
    memset(v26, 0, sizeof(v26));
    LOBYTE(v26[0]) = 1;
    *(v26 + 15) = 0;
    v22 = [NSString _navigation_stringForServerFormattedString:firstObject options:v26 overrideVariables:v10];
  }

  else
  {
    signDetails2 = [eventCopy signDetails];
    firstObject2 = [signDetails2 firstObject];
    v22 = [NSString _navigation_stringForServerFormattedString:firstObject2];
  }

  return v22;
}

+ (id)maneuverUpdateWithStep:(id)step component:(id)component
{
  stepCopy = step;
  componentCopy = component;
  v7 = objc_opt_new();
  [v7 setComponent:componentCopy];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [stepCopy stepIndex]);
  [v7 setIndex:v8];

  v9 = [stepCopy contentsForContext:1];
  instructionWithShorterAlternatives = [v9 instructionWithShorterAlternatives];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = instructionWithShorterAlternatives;
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
        if (v17 <= [componentCopy maxLength_ManeuverDescription])
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
  [v7 setManeuverType:{+[CarClusterUpdate _accNavManeuverTypeForGEOManeuverType:](CarClusterUpdate, "_accNavManeuverTypeForGEOManeuverType:", objc_msgSend(stepCopy, "maneuverType"))}];
  maneuverRoadName = [stepCopy maneuverRoadName];
  v20 = maneuverRoadName;
  if (maneuverRoadName)
  {
    v21 = maneuverRoadName;
  }

  else
  {
    v21 = &stru_1016631F0;
  }

  [v7 setAfterManeuverRoadName:v21];

  [stepCopy distance];
  v22 = [NSNumber numberWithDouble:?];
  [v7 setDistanceBetweenManeuver:v22];

  v53 = 0;
  v52 = 0;
  [stepCopy distance];
  v23 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  [CarClusterUpdate getStringValue:&v52 displayUnits:&v53 forRemainingDistance:?];
  v49 = v52;
  [v7 setDistanceBetweenManeuverDisplayString:?];
  [v7 setDistanceBetweenManeuverDisplayUnits:v53];
  [v7 setDrivingSide:{objc_msgSend(stepCopy, "drivingSide")}];
  geoStep = [stepCopy geoStep];
  [v7 setJunctionType:{objc_msgSend(geoStep, "junctionType")}];

  v25 = objc_opt_new();
  geoStep2 = [stepCopy geoStep];
  junctionElementsCount = [geoStep2 junctionElementsCount];

  if (junctionElementsCount)
  {
    v28 = 0;
    do
    {
      geoStep3 = [stepCopy geoStep];
      [geoStep3 junctionElementAtIndex:v28];
      v31 = v30;

      v32 = v23[445];
      geoStep4 = [stepCopy geoStep];
      v34 = [v32 numberWithInt:{objc_msgSend(geoStep4, "junctionElementAtIndex:", v28)}];

      if (v31 != 1)
      {
        if (v31 == 2)
        {
          geoStep5 = [stepCopy geoStep];
          maneuverType = [geoStep5 maneuverType];

          if (maneuverType == 4)
          {
            if (![stepCopy drivingSide] && (objc_msgSend(v34, "doubleValue"), v37 > 0.0) || objc_msgSend(stepCopy, "drivingSide") == 1 && (objc_msgSend(v34, "doubleValue"), v38 < 0.0))
            {
              v39 = v23[445];
              [v34 doubleValue];
              v41 = [v39 numberWithDouble:-v40];

              v34 = v41;
            }
          }

          [v7 setJunctionElementExitAngle:v34];
          geoStep6 = [stepCopy geoStep];
          exitNumber = [geoStep6 exitNumber];
          shield = [exitNumber shield];
          v45 = [shield copy];
          [v7 setExitInfo:v45];

          v23 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
        }

        else
        {
          [v25 addObject:v34];
        }
      }

      ++v28;
      geoStep7 = [stepCopy geoStep];
      junctionElementsCount2 = [geoStep7 junctionElementsCount];
    }

    while (v28 < junctionElementsCount2);
  }

  [v7 setJunctionElementAngle:v25];

  return v7;
}

+ (id)maneuverUpdateWithGuidanceEvent:(id)event routeStep:(id)step component:(id)component
{
  eventCopy = event;
  stepCopy = step;
  componentCopy = component;
  if ([eventCopy hasSignGuidance])
  {
    v10 = objc_opt_new();
    [v10 setGuidanceEvent:eventCopy];
    v32 = componentCopy;
    [v10 setComponent:componentCopy];
    v11 = [CarClusterUpdateManeuverInfo _maneuverDescriptionForGuidanceEvent:eventCopy routeStep:stepCopy];
    [v10 setManeuverDescription:v11];

    [v10 setManeuverType:{+[CarClusterUpdate _accNavManeuverTypeForGEOManeuverType:](CarClusterUpdate, "_accNavManeuverTypeForGEOManeuverType:", objc_msgSend(eventCopy, "maneuverType"))}];
    roadName = [eventCopy roadName];
    [v10 setAfterManeuverRoadName:roadName];

    [eventCopy distance];
    v14 = [NSNumber numberWithUnsignedInt:v13];
    [v10 setDistanceBetweenManeuver:v14];

    v34 = 0;
    v33 = 0;
    [eventCopy distance];
    [CarClusterUpdate getStringValue:&v33 displayUnits:&v34 forRemainingDistance:?];
    v31 = v33;
    [v10 setDistanceBetweenManeuverDisplayString:?];
    [v10 setDistanceBetweenManeuverDisplayUnits:v34];
    [v10 setDrivingSide:{objc_msgSend(eventCopy, "drivingSide")}];
    maneuverJunction = [eventCopy maneuverJunction];
    [v10 setJunctionType:{objc_msgSend(maneuverJunction, "junctionType")}];
    v16 = objc_opt_new();
    if ([maneuverJunction numElements])
    {
      v17 = 0;
      v18 = 0;
      do
      {
        elements = [maneuverJunction elements];
        v20 = *&elements[v17 + 8];
        v21 = [NSNumber numberWithInt:*&elements[v17]];
        if (v20 != 1)
        {
          if (v20 == 2)
          {
            if ([maneuverJunction maneuverType] == 4)
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

      while (v18 < [maneuverJunction numElements]);
    }

    [v10 setJunctionElementAngle:v16];
    geoStep = [stepCopy geoStep];
    exitNumber = [geoStep exitNumber];
    name = [exitNumber name];
    v29 = [name copy];
    [v10 setExitInfo:v29];

    componentCopy = v32;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end