@interface CarClusterUpdateRouteGuidance
+ (id)_enumProperties;
+ (id)_integersKeyed;
- (CarClusterUpdateRouteGuidance)init;
- (unint64_t)_accNavManeuverRoadClass;
- (unint64_t)_accNavUnitType;
- (unint64_t)firstIndex_RouteGuidanceManeuverCurrentList;
- (void)_updateManeuverState;
- (void)setCurrentRoadName:(id)name;
- (void)setDestinationName:(id)name;
- (void)setDistanceRemaining:(id)remaining;
- (void)setDistanceRemainingToNextManeuver:(id)maneuver;
- (void)setLaneGuidanceCurrentIndex:(id)index;
- (void)setLaneGuidanceTotalCount:(id)count;
- (void)setManeuverRoadClass:(int)class;
- (void)setRouteGuidanceState:(unsigned __int16)state;
- (void)updateNavAnnouncementStage:(unint64_t)stage;
- (void)updateRemainingDistance:(double)distance;
- (void)updateRemainingTime:(double)time estimatedTimeOfArrival:(double)arrival;
@end

@implementation CarClusterUpdateRouteGuidance

- (void)setLaneGuidanceTotalCount:(id)count
{
  if (count)
  {
    v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [count unsignedIntegerValue]);
    self->_laneGuidanceTotalCount = v4;
  }

  else
  {
    self->_laneGuidanceTotalCount = 0;
  }
}

- (void)setLaneGuidanceCurrentIndex:(id)index
{
  if (index)
  {
    v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [index unsignedIntegerValue]);
    self->_laneGuidanceCurrentIndex = v4;
  }

  else
  {
    self->_laneGuidanceCurrentIndex = 0;
  }
}

- (void)setDistanceRemainingToNextManeuver:(id)maneuver
{
  if (maneuver)
  {
    v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [maneuver integerValue]);
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
    distanceRemainingToNextManeuver = [(CarClusterUpdateRouteGuidance *)self distanceRemainingToNextManeuver];

    if (distanceRemainingToNextManeuver)
    {
      if (qword_10195DEC8 != -1)
      {
        dispatch_once(&qword_10195DEC8, &stru_101630350);
      }

      _accNavManeuverRoadClass = [(CarClusterUpdateRouteGuidance *)self _accNavManeuverRoadClass];
      _accNavUnitType = [(CarClusterUpdateRouteGuidance *)self _accNavUnitType];
      v6 = qword_10195DEC0;
      v7 = [NSNumber numberWithUnsignedInteger:_accNavManeuverRoadClass];
      v8 = [v6 objectForKeyedSubscript:v7];
      v9 = [NSNumber numberWithUnsignedInteger:_accNavUnitType];
      v10 = [v8 objectForKeyedSubscript:v9];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      allKeys = [v10 allKeys];
      v12 = [allKeys sortedArrayUsingSelector:"compare:"];

      obj = v12;
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v13)
      {
        v22 = _accNavUnitType;
        v23 = _accNavManeuverRoadClass;
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
            distanceRemainingToNextManeuver2 = [(CarClusterUpdateRouteGuidance *)self distanceRemainingToNextManeuver];
            integerValue = [distanceRemainingToNextManeuver2 integerValue];
            integerValue2 = [v17 integerValue];

            if (integerValue >= integerValue2)
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
        _accNavUnitType = v22;
        _accNavManeuverRoadClass = v23;
      }

      v21 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v30 = _accNavManeuverRoadClass;
        v31 = 2048;
        v32 = _accNavUnitType;
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

- (void)setDistanceRemaining:(id)remaining
{
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [remaining integerValue]);
  distanceRemaining = self->_distanceRemaining;
  self->_distanceRemaining = v4;
}

- (void)setDestinationName:(id)name
{
  v4 = [name stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  destinationName = self->_destinationName;
  self->_destinationName = v4;
}

- (void)setCurrentRoadName:(id)name
{
  v4 = [name stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  currentRoadName = self->_currentRoadName;
  self->_currentRoadName = v4;
}

- (void)setRouteGuidanceState:(unsigned __int16)state
{
  if (self->_routeGuidanceState != state)
  {
    if (state)
    {
      v5 = +[NSBundle mainBundle];
      v6 = [v5 localizedStringForKey:@"Apple Maps [iAP Metadata]" value:@"localized string not found" table:0];
      [(CarClusterUpdateRouteGuidance *)self setSourceName:v6];
    }

    else
    {
      [(CarClusterUpdate *)self resetProperties];
    }

    self->_routeGuidanceState = state;
  }
}

- (void)setManeuverRoadClass:(int)class
{
  if (self->_maneuverRoadClass != class)
  {
    self->_maneuverRoadClass = class;
  }
}

- (unint64_t)firstIndex_RouteGuidanceManeuverCurrentList
{
  routeGuidanceManeuverCurrentList = [(CarClusterUpdateRouteGuidance *)self routeGuidanceManeuverCurrentList];
  firstObject = [routeGuidanceManeuverCurrentList firstObject];

  if (firstObject)
  {
    unsignedIntegerValue = [firstObject unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  return unsignedIntegerValue;
}

- (void)updateNavAnnouncementStage:(unint64_t)stage
{
  v4 = [CarClusterUpdate _accNavManeuverStateForGEONavigationAnnouncementStage:stage];

  [(CarClusterUpdateRouteGuidance *)self setManeuverState:v4];
}

- (void)updateRemainingDistance:(double)distance
{
  v5 = [NSNumber numberWithDouble:?];
  [(CarClusterUpdateRouteGuidance *)self setDistanceRemaining:v5];

  v8 = 0;
  v7 = 0;
  [CarClusterUpdateRouteGuidance getStringValue:&v7 displayUnits:&v8 forRemainingDistance:distance];
  v6 = v7;
  [(CarClusterUpdateRouteGuidance *)self setDistanceRemainingDisplayString:v6];
  [(CarClusterUpdateRouteGuidance *)self setDistanceRemainingDisplayUnits:v8];
}

- (void)updateRemainingTime:(double)time estimatedTimeOfArrival:(double)arrival
{
  v6 = [NSNumber numberWithDouble:time];
  [(CarClusterUpdateRouteGuidance *)self setTimeRemainingToDestination:v6];

  v7 = [NSNumber numberWithDouble:arrival];
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