@interface CarClusterUpdateRouteGuidance
+ (id)_enumProperties;
+ (id)_integersKeyed;
- (CarClusterUpdateRouteGuidance)init;
- (unint64_t)_accNavManeuverRoadClass;
- (unint64_t)_accNavUnitType;
- (unint64_t)firstIndex_RouteGuidanceManeuverCurrentList;
- (void)_updateManeuverState;
- (void)setCurrentRoadName:(id)a3;
- (void)setDestinationName:(id)a3;
- (void)setDistanceRemaining:(id)a3;
- (void)setDistanceRemainingToNextManeuver:(id)a3;
- (void)setLaneGuidanceCurrentIndex:(id)a3;
- (void)setLaneGuidanceTotalCount:(id)a3;
- (void)setManeuverRoadClass:(int)a3;
- (void)setRouteGuidanceState:(unsigned __int16)a3;
- (void)updateNavAnnouncementStage:(unint64_t)a3;
- (void)updateRemainingDistance:(double)a3;
- (void)updateRemainingTime:(double)a3 estimatedTimeOfArrival:(double)a4;
@end

@implementation CarClusterUpdateRouteGuidance

- (void)setLaneGuidanceTotalCount:(id)a3
{
  if (a3)
  {
    v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a3 unsignedIntegerValue]);
    self->_laneGuidanceTotalCount = v4;
  }

  else
  {
    self->_laneGuidanceTotalCount = 0;
  }
}

- (void)setLaneGuidanceCurrentIndex:(id)a3
{
  if (a3)
  {
    v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a3 unsignedIntegerValue]);
    self->_laneGuidanceCurrentIndex = v4;
  }

  else
  {
    self->_laneGuidanceCurrentIndex = 0;
  }
}

- (void)setDistanceRemainingToNextManeuver:(id)a3
{
  if (a3)
  {
    v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 integerValue]);
  }

  else
  {
    v4 = 0;
  }

  distanceRemainingToNextManeuver = self->_distanceRemainingToNextManeuver;
  self->_distanceRemainingToNextManeuver = v4;

  [(CarClusterUpdateRouteGuidance *)self _updateManeuverState];
}

- (void)_updateManeuverState
{
  if ([(CarClusterUpdateRouteGuidance *)self smartGuidanceActive])
  {
    v3 = [(CarClusterUpdateRouteGuidance *)self distanceRemainingToNextManeuver];

    if (v3)
    {
      if (qword_10195DEC8 != -1)
      {
        dispatch_once(&qword_10195DEC8, &stru_101630350);
      }

      v4 = [(CarClusterUpdateRouteGuidance *)self _accNavManeuverRoadClass];
      v5 = [(CarClusterUpdateRouteGuidance *)self _accNavUnitType];
      v6 = qword_10195DEC0;
      v7 = [NSNumber numberWithUnsignedInteger:v4];
      v8 = [v6 objectForKeyedSubscript:v7];
      v9 = [NSNumber numberWithUnsignedInteger:v5];
      v10 = [v8 objectForKeyedSubscript:v9];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = [v10 allKeys];
      v12 = [v11 sortedArrayUsingSelector:"compare:"];

      obj = v12;
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v13)
      {
        v22 = v5;
        v23 = v4;
        v14 = *v26;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            v17 = [v10 objectForKeyedSubscript:v16];
            v18 = [(CarClusterUpdateRouteGuidance *)self distanceRemainingToNextManeuver];
            v19 = [v18 integerValue];
            v20 = [v17 integerValue];

            if (v19 >= v20)
            {
              LOWORD(v13) = [v16 integerValue];

              goto LABEL_15;
            }
          }

          v13 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

LABEL_15:
        v5 = v22;
        v4 = v23;
      }

      v21 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v30 = v4;
        v31 = 2048;
        v32 = v5;
        v33 = 2048;
        v34 = v13;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "roadClass=%lu unitType=%lu maneuverState=%lu", buf, 0x20u);
      }

      [(CarClusterUpdateRouteGuidance *)self setManeuverState:v13];
    }

    else
    {

      [(CarClusterUpdateRouteGuidance *)self setManeuverState:0xFFFFLL];
    }
  }
}

- (unint64_t)_accNavManeuverRoadClass
{
  v2 = [(CarClusterUpdateRouteGuidance *)self maneuverRoadClass]- 2;
  if (v2 > 6)
  {
    return 0;
  }

  else
  {
    return qword_101214FD8[v2];
  }
}

- (unint64_t)_accNavUnitType
{
  v2 = [(CarClusterUpdateRouteGuidance *)self distanceRemainingToNextManeuverDisplayUnits]- 1;
  if (v2 > 3u)
  {
    return 1;
  }

  else
  {
    return qword_101214FB8[v2];
  }
}

- (void)setDistanceRemaining:(id)a3
{
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 integerValue]);
  distanceRemaining = self->_distanceRemaining;
  self->_distanceRemaining = v4;
}

- (void)setDestinationName:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  destinationName = self->_destinationName;
  self->_destinationName = v4;
}

- (void)setCurrentRoadName:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  currentRoadName = self->_currentRoadName;
  self->_currentRoadName = v4;
}

- (void)setRouteGuidanceState:(unsigned __int16)a3
{
  if (self->_routeGuidanceState != a3)
  {
    if (a3)
    {
      v5 = +[NSBundle mainBundle];
      v6 = [v5 localizedStringForKey:@"Apple Maps [iAP Metadata]" value:@"localized string not found" table:0];
      [(CarClusterUpdateRouteGuidance *)self setSourceName:v6];
    }

    else
    {
      [(CarClusterUpdate *)self resetProperties];
    }

    self->_routeGuidanceState = a3;
  }
}

- (void)setManeuverRoadClass:(int)a3
{
  if (self->_maneuverRoadClass != a3)
  {
    self->_maneuverRoadClass = a3;
  }
}

- (unint64_t)firstIndex_RouteGuidanceManeuverCurrentList
{
  v2 = [(CarClusterUpdateRouteGuidance *)self routeGuidanceManeuverCurrentList];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)updateNavAnnouncementStage:(unint64_t)a3
{
  v4 = [CarClusterUpdate _accNavManeuverStateForGEONavigationAnnouncementStage:a3];

  [(CarClusterUpdateRouteGuidance *)self setManeuverState:v4];
}

- (void)updateRemainingDistance:(double)a3
{
  v5 = [NSNumber numberWithDouble:?];
  [(CarClusterUpdateRouteGuidance *)self setDistanceRemaining:v5];

  v8 = 0;
  v7 = 0;
  [CarClusterUpdateRouteGuidance getStringValue:&v7 displayUnits:&v8 forRemainingDistance:a3];
  v6 = v7;
  [(CarClusterUpdateRouteGuidance *)self setDistanceRemainingDisplayString:v6];
  [(CarClusterUpdateRouteGuidance *)self setDistanceRemainingDisplayUnits:v8];
}

- (void)updateRemainingTime:(double)a3 estimatedTimeOfArrival:(double)a4
{
  v6 = [NSNumber numberWithDouble:a3];
  [(CarClusterUpdateRouteGuidance *)self setTimeRemainingToDestination:v6];

  v7 = [NSNumber numberWithDouble:a4];
  [(CarClusterUpdateRouteGuidance *)self setEstimatedTimeOfArrival:v7];
}

- (CarClusterUpdateRouteGuidance)init
{
  v3.receiver = self;
  v3.super_class = CarClusterUpdateRouteGuidance;
  result = [(CarClusterUpdateRouteGuidance *)&v3 init];
  if (result)
  {
    result->_smartGuidanceActive = 1;
    result->_routeGuidanceState = -1;
    result->_maneuverState = -1;
    result->_distanceRemainingDisplayUnits = -1;
    result->_distanceRemainingToNextManeuverDisplayUnits = -1;
    result->_beingShownInApp = 1;
    result->_maneuverRoadClass = 9;
    result->_laneGuidanceShowing = 0;
    result->_sourceSupportsRouteGuidance = 1;
  }

  return result;
}

+ (id)_integersKeyed
{
  if (qword_10195DEE0 != -1)
  {
    dispatch_once(&qword_10195DEE0, &stru_101630390);
  }

  v3 = qword_10195DEE8;

  return v3;
}

+ (id)_enumProperties
{
  if (qword_10195DED0 != -1)
  {
    dispatch_once(&qword_10195DED0, &stru_101630370);
  }

  v3 = qword_10195DED8;

  return v3;
}

@end