@interface CLRacingRouteVariables
- (CLRacingRouteVariables)initWithCoder:(id)coder;
- (CLRacingRouteVariables)initWithRaceStartPointDetected:(BOOL)detected raceEndPointDetected:(BOOL)pointDetected userIsOffRoute:(BOOL)route projectedOnNearestPoint:(BOOL)point raceSessionExpired:(BOOL)expired rollingBufferReachedEndOfReferenceRoute:(BOOL)referenceRoute routeConfigurationSuccessful:(BOOL)successful racingRouteAnalyticsSent:(BOOL)self0 prematureRaceEndDetected:(BOOL)self1 referenceRouteTotalLengthDetermined:(BOOL)self2 locationPointIsOutsideOfAcceptedRange:(BOOL)self3 locationPointNotMatched:(BOOL)self4 routePointsBufferSize:(int)self5 numberOfRoutePointsToAdd:(int)self6 offRouteGraceDuration:(int)self7 matchedPointCounter:(int)self8 referenceRouteDataPointCounter:(int)self9 currentRouteDataPointCounter:(int)dataPointCounter offRouteDataPointCounter:(int)routeDataPointCounter inutileDataPointCounter:(int)inutileDataPointCounter rollingBufferUpdateCounter:(int)updateCounter lastMatchedPointIndex:(int)index lastMatchedPointIndexOnReferenceRoute:(int)onReferenceRoute rollingBufferStartIndexOnReferenceRoute:(int)indexOnReferenceRoute matrixCellIndexForLastMatchedPoint:(int)matchedPoint referenceRouteTotalLength:(double)length timestampOfLastMatchedPointOnReferenceRoute:(double)pointOnReferenceRoute registeredTimeAtThresholdDistance:(double)detected0 endOfRaceTimeThreshold:(double)detected1 nearestNeighborMaximumAcceptedDistance:(double)detected2;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLRacingRouteVariables

- (CLRacingRouteVariables)initWithRaceStartPointDetected:(BOOL)detected raceEndPointDetected:(BOOL)pointDetected userIsOffRoute:(BOOL)route projectedOnNearestPoint:(BOOL)point raceSessionExpired:(BOOL)expired rollingBufferReachedEndOfReferenceRoute:(BOOL)referenceRoute routeConfigurationSuccessful:(BOOL)successful racingRouteAnalyticsSent:(BOOL)self0 prematureRaceEndDetected:(BOOL)self1 referenceRouteTotalLengthDetermined:(BOOL)self2 locationPointIsOutsideOfAcceptedRange:(BOOL)self3 locationPointNotMatched:(BOOL)self4 routePointsBufferSize:(int)self5 numberOfRoutePointsToAdd:(int)self6 offRouteGraceDuration:(int)self7 matchedPointCounter:(int)self8 referenceRouteDataPointCounter:(int)self9 currentRouteDataPointCounter:(int)dataPointCounter offRouteDataPointCounter:(int)routeDataPointCounter inutileDataPointCounter:(int)inutileDataPointCounter rollingBufferUpdateCounter:(int)updateCounter lastMatchedPointIndex:(int)index lastMatchedPointIndexOnReferenceRoute:(int)onReferenceRoute rollingBufferStartIndexOnReferenceRoute:(int)indexOnReferenceRoute matrixCellIndexForLastMatchedPoint:(int)matchedPoint referenceRouteTotalLength:(double)length timestampOfLastMatchedPointOnReferenceRoute:(double)pointOnReferenceRoute registeredTimeAtThresholdDistance:(double)detected0 endOfRaceTimeThreshold:(double)detected1 nearestNeighborMaximumAcceptedDistance:(double)detected2
{
  v44.receiver = self;
  v44.super_class = CLRacingRouteVariables;
  result = [(CLRacingRouteVariables *)&v44 init];
  if (result)
  {
    result->_raceStartPointDetected = detected;
    result->_raceEndPointDetected = pointDetected;
    result->_userIsOffRoute = route;
    result->_projectedOnNearestPoint = point;
    result->_raceSessionExpired = expired;
    result->_rollingBufferReachedEndOfReferenceRoute = referenceRoute;
    result->_routeConfigurationSuccessful = successful;
    result->_racingRouteAnalyticsSent = sent;
    result->_prematureRaceEndDetected = endDetected;
    result->_referenceRouteTotalLengthDetermined = determined;
    result->_locationPointIsOutsideOfAcceptedRange = range;
    result->_locationPointNotMatched = matched;
    result->_routePointsBufferSize = size;
    result->_numberOfRoutePointsToAdd = add;
    result->_offRouteGraceDuration = duration;
    result->_matchedPointCounter = counter;
    result->_referenceRouteDataPointCounter = pointCounter;
    result->_currentRouteDataPointCounter = dataPointCounter;
    result->_offRouteDataPointCounter = routeDataPointCounter;
    result->_inutileDataPointCounter = inutileDataPointCounter;
    result->_rollingBufferUpdateCounter = updateCounter;
    result->_lastMatchedPointIndex = index;
    result->_lastMatchedPointIndexOnReferenceRoute = onReferenceRoute;
    result->_rollingBufferStartIndexOnReferenceRoute = indexOnReferenceRoute;
    result->_matrixCellIndexForLastMatchedPoint = matchedPoint;
    result->_referenceRouteTotalLength = length;
    result->_timestampOfLastMatchedPointOnReferenceRoute = pointOnReferenceRoute;
    result->_registeredTimeAtThresholdDistance = distance;
    result->_endOfRaceTimeThreshold = threshold;
    result->_nearestNeighborMaximumAcceptedDistance = acceptedDistance;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CLRacingRouteVariables alloc];
  LODWORD(v7) = self->_matrixCellIndexForLastMatchedPoint;
  WORD2(v6) = *&self->_locationPointIsOutsideOfAcceptedRange;
  LODWORD(v6) = *&self->_routeConfigurationSuccessful;
  return [CLRacingRouteVariables initWithRaceStartPointDetected:v4 raceEndPointDetected:"initWithRaceStartPointDetected:raceEndPointDetected:userIsOffRoute:projectedOnNearestPoint:raceSessionExpired:rollingBufferReachedEndOfReferenceRoute:routeConfigurationSuccessful:racingRouteAnalyticsSent:prematureRaceEndDetected:referenceRouteTotalLengthDetermined:locationPointIsOutsideOfAcceptedRange:locationPointNotMatched:routePointsBufferSize:numberOfRoutePointsToAdd:offRouteGraceDuration:matchedPointCounter:referenceRouteDataPointCounter:currentRouteDataPointCounter:offRouteDataPointCounter:inutileDataPointCounter:rollingBufferUpdateCounter:lastMatchedPointIndex:lastMatchedPointIndexOnReferenceRoute:rollingBufferStartIndexOnReferenceRoute:matrixCellIndexForLastMatchedPoint:referenceRouteTotalLength:timestampOfLastMatchedPointOnReferenceRoute:registeredTimeAtThresholdDistance:endOfRaceTimeThreshold:nearestNeighborMaximumAcceptedDistance:" userIsOffRoute:self->_raceStartPointDetected projectedOnNearestPoint:self->_raceEndPointDetected raceSessionExpired:self->_userIsOffRoute rollingBufferReachedEndOfReferenceRoute:self->_projectedOnNearestPoint routeConfigurationSuccessful:self->_raceSessionExpired racingRouteAnalyticsSent:self->_rollingBufferReachedEndOfReferenceRoute prematureRaceEndDetected:self->_referenceRouteTotalLength referenceRouteTotalLengthDetermined:self->_timestampOfLastMatchedPointOnReferenceRoute locationPointIsOutsideOfAcceptedRange:self->_registeredTimeAtThresholdDistance locationPointNotMatched:self->_endOfRaceTimeThreshold routePointsBufferSize:self->_nearestNeighborMaximumAcceptedDistance numberOfRoutePointsToAdd:v6 offRouteGraceDuration:*&self->_routePointsBufferSize matchedPointCounter:*&self->_offRouteGraceDuration referenceRouteDataPointCounter:*&self->_referenceRouteDataPointCounter currentRouteDataPointCounter:*&self->_offRouteDataPointCounter offRouteDataPointCounter:*&self->_rollingBufferUpdateCounter inutileDataPointCounter:*&self->_lastMatchedPointIndexOnReferenceRoute rollingBufferUpdateCounter:v7 lastMatchedPointIndex:? lastMatchedPointIndexOnReferenceRoute:? rollingBufferStartIndexOnReferenceRoute:? matrixCellIndexForLastMatchedPoint:? referenceRouteTotalLength:? timestampOfLastMatchedPointOnReferenceRoute:? registeredTimeAtThresholdDistance:? endOfRaceTimeThreshold:? nearestNeighborMaximumAcceptedDistance:?];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeBool:-[CLRacingRouteVariables raceStartPointDetected](self forKey:{"raceStartPointDetected"), @"raceStartPointDetected"}];
  [coder encodeBool:-[CLRacingRouteVariables raceEndPointDetected](self forKey:{"raceEndPointDetected"), @"raceEndPointDetected"}];
  [coder encodeBool:-[CLRacingRouteVariables userIsOffRoute](self forKey:{"userIsOffRoute"), @"userIsOffRoute"}];
  [coder encodeBool:-[CLRacingRouteVariables projectedOnNearestPoint](self forKey:{"projectedOnNearestPoint"), @"projectedOnNearestPoint"}];
  [coder encodeBool:-[CLRacingRouteVariables raceSessionExpired](self forKey:{"raceSessionExpired"), @"raceSessionExpired"}];
  [coder encodeBool:-[CLRacingRouteVariables rollingBufferReachedEndOfReferenceRoute](self forKey:{"rollingBufferReachedEndOfReferenceRoute"), @"rollingBufferReachedEndOfReferenceRoute"}];
  [coder encodeBool:-[CLRacingRouteVariables routeConfigurationSuccessful](self forKey:{"routeConfigurationSuccessful"), @"routeConfigurationSuccessful"}];
  [coder encodeBool:-[CLRacingRouteVariables racingRouteAnalyticsSent](self forKey:{"racingRouteAnalyticsSent"), @"racingRouteAnalyticsSent"}];
  [coder encodeBool:-[CLRacingRouteVariables prematureRaceEndDetected](self forKey:{"prematureRaceEndDetected"), @"prematureRaceEndDetected"}];
  [coder encodeBool:-[CLRacingRouteVariables referenceRouteTotalLengthDetermined](self forKey:{"referenceRouteTotalLengthDetermined"), @"referenceRouteTotalLengthDetermined"}];
  [coder encodeBool:-[CLRacingRouteVariables locationPointIsOutsideOfAcceptedRange](self forKey:{"locationPointIsOutsideOfAcceptedRange"), @"locationPointIsOutsideOfAcceptedRange"}];
  [coder encodeBool:-[CLRacingRouteVariables locationPointNotMatched](self forKey:{"locationPointNotMatched"), @"locationPointNotMatched"}];
  [coder encodeInt:-[CLRacingRouteVariables routePointsBufferSize](self forKey:{"routePointsBufferSize"), @"routePointsBufferSize"}];
  [coder encodeInt:-[CLRacingRouteVariables numberOfRoutePointsToAdd](self forKey:{"numberOfRoutePointsToAdd"), @"numberOfRoutePointsToAdd"}];
  [coder encodeInt:-[CLRacingRouteVariables offRouteGraceDuration](self forKey:{"offRouteGraceDuration"), @"offRouteGraceDuration"}];
  [coder encodeInt:-[CLRacingRouteVariables matchedPointCounter](self forKey:{"matchedPointCounter"), @"matchedPointCounter"}];
  [coder encodeInt:-[CLRacingRouteVariables referenceRouteDataPointCounter](self forKey:{"referenceRouteDataPointCounter"), @"referenceRouteDataPointCounter"}];
  [coder encodeInt:-[CLRacingRouteVariables currentRouteDataPointCounter](self forKey:{"currentRouteDataPointCounter"), @"currentRouteDataPointCounter"}];
  [coder encodeInt:-[CLRacingRouteVariables offRouteDataPointCounter](self forKey:{"offRouteDataPointCounter"), @"offRouteDataPointCounter"}];
  [coder encodeInt:-[CLRacingRouteVariables inutileDataPointCounter](self forKey:{"inutileDataPointCounter"), @"inutileDataPointCounter"}];
  [coder encodeInt:-[CLRacingRouteVariables rollingBufferUpdateCounter](self forKey:{"rollingBufferUpdateCounter"), @"rollingBufferUpdateCounter"}];
  [coder encodeInt:-[CLRacingRouteVariables lastMatchedPointIndex](self forKey:{"lastMatchedPointIndex"), @"lastMatchedPointIndex"}];
  [coder encodeInt:-[CLRacingRouteVariables lastMatchedPointIndexOnReferenceRoute](self forKey:{"lastMatchedPointIndexOnReferenceRoute"), @"lastMatchedPointIndexOnReferenceRoute"}];
  [coder encodeInt:-[CLRacingRouteVariables rollingBufferStartIndexOnReferenceRoute](self forKey:{"rollingBufferStartIndexOnReferenceRoute"), @"rollingBufferStartIndexOnReferenceRoute"}];
  [coder encodeInt:-[CLRacingRouteVariables matrixCellIndexForLastMatchedPoint](self forKey:{"matrixCellIndexForLastMatchedPoint"), @"matrixCellIndexForLastMatchedPoint"}];
  [(CLRacingRouteVariables *)self referenceRouteTotalLength];
  [coder encodeDouble:@"referenceRouteTotalLength" forKey:?];
  [(CLRacingRouteVariables *)self timestampOfLastMatchedPointOnReferenceRoute];
  [coder encodeDouble:@"timestampOfLastMatchedPointOnReferenceRoute" forKey:?];
  [(CLRacingRouteVariables *)self registeredTimeAtThresholdDistance];
  [coder encodeDouble:@"registeredTimeAtThresholdDistance" forKey:?];
  [(CLRacingRouteVariables *)self endOfRaceTimeThreshold];
  [coder encodeDouble:@"endOfRaceTimeThreshold" forKey:?];
  [(CLRacingRouteVariables *)self nearestNeighborMaximumAcceptedDistance];

  [coder encodeDouble:@"nearestNeighborMaximumAcceptedDistance" forKey:?];
}

- (CLRacingRouteVariables)initWithCoder:(id)coder
{
  v41 = [CLRacingRouteVariables alloc];
  v39 = [coder decodeBoolForKey:@"raceStartPointDetected"];
  v40 = [coder decodeBoolForKey:@"raceEndPointDetected"];
  v38 = [coder decodeBoolForKey:@"userIsOffRoute"];
  v37 = [coder decodeBoolForKey:@"projectedOnNearestPoint"];
  v36 = [coder decodeBoolForKey:@"raceSessionExpired"];
  v35 = [coder decodeBoolForKey:@"rollingBufferReachedEndOfReferenceRoute"];
  v34 = [coder decodeBoolForKey:@"routeConfigurationSuccessful"];
  v33 = [coder decodeBoolForKey:@"racingRouteAnalyticsSent"];
  v32 = [coder decodeBoolForKey:@"prematureRaceEndDetected"];
  v31 = [coder decodeBoolForKey:@"referenceRouteTotalLengthDetermined"];
  v30 = [coder decodeBoolForKey:@"locationPointIsOutsideOfAcceptedRange"];
  v29 = [coder decodeBoolForKey:@"locationPointNotMatched"];
  v28 = [coder decodeIntForKey:@"routePointsBufferSize"];
  v27 = [coder decodeIntForKey:@"numberOfRoutePointsToAdd"];
  v26 = [coder decodeIntForKey:@"offRouteGraceDuration"];
  v25 = [coder decodeIntForKey:@"matchedPointCounter"];
  v4 = [coder decodeIntForKey:@"referenceRouteDataPointCounter"];
  v5 = [coder decodeIntForKey:@"currentRouteDataPointCounter"];
  v6 = [coder decodeIntForKey:@"offRouteDataPointCounter"];
  v7 = [coder decodeIntForKey:@"inutileDataPointCounter"];
  v8 = [coder decodeIntForKey:@"rollingBufferUpdateCounter"];
  v9 = [coder decodeIntForKey:@"lastMatchedPointIndex"];
  v10 = [coder decodeIntForKey:@"lastMatchedPointIndexOnReferenceRoute"];
  v11 = [coder decodeIntForKey:@"rollingBufferStartIndexOnReferenceRoute"];
  v12 = [coder decodeIntForKey:@"matrixCellIndexForLastMatchedPoint"];
  [coder decodeDoubleForKey:@"referenceRouteTotalLength"];
  v14 = v13;
  [coder decodeDoubleForKey:@"timestampOfLastMatchedPointOnReferenceRoute"];
  v16 = v15;
  [coder decodeDoubleForKey:@"registeredTimeAtThresholdDistance"];
  v18 = v17;
  [coder decodeDoubleForKey:@"endOfRaceTimeThreshold"];
  v20 = v19;
  [coder decodeDoubleForKey:@"nearestNeighborMaximumAcceptedDistance"];
  LODWORD(v24) = v12;
  BYTE5(v23) = v29;
  BYTE4(v23) = v30;
  BYTE3(v23) = v31;
  BYTE2(v23) = v32;
  BYTE1(v23) = v33;
  LOBYTE(v23) = v34;
  return [CLRacingRouteVariables initWithRaceStartPointDetected:v41 raceEndPointDetected:"initWithRaceStartPointDetected:raceEndPointDetected:userIsOffRoute:projectedOnNearestPoint:raceSessionExpired:rollingBufferReachedEndOfReferenceRoute:routeConfigurationSuccessful:racingRouteAnalyticsSent:prematureRaceEndDetected:referenceRouteTotalLengthDetermined:locationPointIsOutsideOfAcceptedRange:locationPointNotMatched:routePointsBufferSize:numberOfRoutePointsToAdd:offRouteGraceDuration:matchedPointCounter:referenceRouteDataPointCounter:currentRouteDataPointCounter:offRouteDataPointCounter:inutileDataPointCounter:rollingBufferUpdateCounter:lastMatchedPointIndex:lastMatchedPointIndexOnReferenceRoute:rollingBufferStartIndexOnReferenceRoute:matrixCellIndexForLastMatchedPoint:referenceRouteTotalLength:timestampOfLastMatchedPointOnReferenceRoute:registeredTimeAtThresholdDistance:endOfRaceTimeThreshold:nearestNeighborMaximumAcceptedDistance:" userIsOffRoute:v39 projectedOnNearestPoint:v40 raceSessionExpired:v38 rollingBufferReachedEndOfReferenceRoute:v37 routeConfigurationSuccessful:v36 racingRouteAnalyticsSent:v35 prematureRaceEndDetected:v14 referenceRouteTotalLengthDetermined:v16 locationPointIsOutsideOfAcceptedRange:v18 locationPointNotMatched:v20 routePointsBufferSize:v21 numberOfRoutePointsToAdd:v23 offRouteGraceDuration:__PAIR64__(v27 matchedPointCounter:v28) referenceRouteDataPointCounter:__PAIR64__(v25 currentRouteDataPointCounter:v26) offRouteDataPointCounter:__PAIR64__(v5 inutileDataPointCounter:v4) rollingBufferUpdateCounter:__PAIR64__(v7 lastMatchedPointIndex:v6) lastMatchedPointIndexOnReferenceRoute:__PAIR64__(v9 rollingBufferStartIndexOnReferenceRoute:v8) matrixCellIndexForLastMatchedPoint:__PAIR64__(v11 referenceRouteTotalLength:v10) timestampOfLastMatchedPointOnReferenceRoute:v24 registeredTimeAtThresholdDistance:? endOfRaceTimeThreshold:? nearestNeighborMaximumAcceptedDistance:?];
}

@end