@interface CLRacingRouteVariables
- (CLRacingRouteVariables)initWithCoder:(id)a3;
- (CLRacingRouteVariables)initWithRaceStartPointDetected:(BOOL)a3 raceEndPointDetected:(BOOL)a4 userIsOffRoute:(BOOL)a5 projectedOnNearestPoint:(BOOL)a6 raceSessionExpired:(BOOL)a7 rollingBufferReachedEndOfReferenceRoute:(BOOL)a8 routeConfigurationSuccessful:(BOOL)a9 racingRouteAnalyticsSent:(BOOL)a10 prematureRaceEndDetected:(BOOL)a11 referenceRouteTotalLengthDetermined:(BOOL)a12 locationPointIsOutsideOfAcceptedRange:(BOOL)a13 locationPointNotMatched:(BOOL)a14 routePointsBufferSize:(int)a15 numberOfRoutePointsToAdd:(int)a16 offRouteGraceDuration:(int)a17 matchedPointCounter:(int)a18 referenceRouteDataPointCounter:(int)a19 currentRouteDataPointCounter:(int)a20 offRouteDataPointCounter:(int)a21 inutileDataPointCounter:(int)a22 rollingBufferUpdateCounter:(int)a23 lastMatchedPointIndex:(int)a24 lastMatchedPointIndexOnReferenceRoute:(int)a25 rollingBufferStartIndexOnReferenceRoute:(int)a26 matrixCellIndexForLastMatchedPoint:(int)a27 referenceRouteTotalLength:(double)a28 timestampOfLastMatchedPointOnReferenceRoute:(double)a29 registeredTimeAtThresholdDistance:(double)a30 endOfRaceTimeThreshold:(double)a31 nearestNeighborMaximumAcceptedDistance:(double)a32;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLRacingRouteVariables

- (CLRacingRouteVariables)initWithRaceStartPointDetected:(BOOL)a3 raceEndPointDetected:(BOOL)a4 userIsOffRoute:(BOOL)a5 projectedOnNearestPoint:(BOOL)a6 raceSessionExpired:(BOOL)a7 rollingBufferReachedEndOfReferenceRoute:(BOOL)a8 routeConfigurationSuccessful:(BOOL)a9 racingRouteAnalyticsSent:(BOOL)a10 prematureRaceEndDetected:(BOOL)a11 referenceRouteTotalLengthDetermined:(BOOL)a12 locationPointIsOutsideOfAcceptedRange:(BOOL)a13 locationPointNotMatched:(BOOL)a14 routePointsBufferSize:(int)a15 numberOfRoutePointsToAdd:(int)a16 offRouteGraceDuration:(int)a17 matchedPointCounter:(int)a18 referenceRouteDataPointCounter:(int)a19 currentRouteDataPointCounter:(int)a20 offRouteDataPointCounter:(int)a21 inutileDataPointCounter:(int)a22 rollingBufferUpdateCounter:(int)a23 lastMatchedPointIndex:(int)a24 lastMatchedPointIndexOnReferenceRoute:(int)a25 rollingBufferStartIndexOnReferenceRoute:(int)a26 matrixCellIndexForLastMatchedPoint:(int)a27 referenceRouteTotalLength:(double)a28 timestampOfLastMatchedPointOnReferenceRoute:(double)a29 registeredTimeAtThresholdDistance:(double)a30 endOfRaceTimeThreshold:(double)a31 nearestNeighborMaximumAcceptedDistance:(double)a32
{
  v44.receiver = self;
  v44.super_class = CLRacingRouteVariables;
  result = [(CLRacingRouteVariables *)&v44 init];
  if (result)
  {
    result->_raceStartPointDetected = a3;
    result->_raceEndPointDetected = a4;
    result->_userIsOffRoute = a5;
    result->_projectedOnNearestPoint = a6;
    result->_raceSessionExpired = a7;
    result->_rollingBufferReachedEndOfReferenceRoute = a8;
    result->_routeConfigurationSuccessful = a9;
    result->_racingRouteAnalyticsSent = a10;
    result->_prematureRaceEndDetected = a11;
    result->_referenceRouteTotalLengthDetermined = a12;
    result->_locationPointIsOutsideOfAcceptedRange = a13;
    result->_locationPointNotMatched = a14;
    result->_routePointsBufferSize = a15;
    result->_numberOfRoutePointsToAdd = a16;
    result->_offRouteGraceDuration = a17;
    result->_matchedPointCounter = a18;
    result->_referenceRouteDataPointCounter = a19;
    result->_currentRouteDataPointCounter = a20;
    result->_offRouteDataPointCounter = a21;
    result->_inutileDataPointCounter = a22;
    result->_rollingBufferUpdateCounter = a23;
    result->_lastMatchedPointIndex = a24;
    result->_lastMatchedPointIndexOnReferenceRoute = a25;
    result->_rollingBufferStartIndexOnReferenceRoute = a26;
    result->_matrixCellIndexForLastMatchedPoint = a27;
    result->_referenceRouteTotalLength = a28;
    result->_timestampOfLastMatchedPointOnReferenceRoute = a29;
    result->_registeredTimeAtThresholdDistance = a30;
    result->_endOfRaceTimeThreshold = a31;
    result->_nearestNeighborMaximumAcceptedDistance = a32;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CLRacingRouteVariables alloc];
  LODWORD(v7) = self->_matrixCellIndexForLastMatchedPoint;
  WORD2(v6) = *&self->_locationPointIsOutsideOfAcceptedRange;
  LODWORD(v6) = *&self->_routeConfigurationSuccessful;
  return [CLRacingRouteVariables initWithRaceStartPointDetected:v4 raceEndPointDetected:"initWithRaceStartPointDetected:raceEndPointDetected:userIsOffRoute:projectedOnNearestPoint:raceSessionExpired:rollingBufferReachedEndOfReferenceRoute:routeConfigurationSuccessful:racingRouteAnalyticsSent:prematureRaceEndDetected:referenceRouteTotalLengthDetermined:locationPointIsOutsideOfAcceptedRange:locationPointNotMatched:routePointsBufferSize:numberOfRoutePointsToAdd:offRouteGraceDuration:matchedPointCounter:referenceRouteDataPointCounter:currentRouteDataPointCounter:offRouteDataPointCounter:inutileDataPointCounter:rollingBufferUpdateCounter:lastMatchedPointIndex:lastMatchedPointIndexOnReferenceRoute:rollingBufferStartIndexOnReferenceRoute:matrixCellIndexForLastMatchedPoint:referenceRouteTotalLength:timestampOfLastMatchedPointOnReferenceRoute:registeredTimeAtThresholdDistance:endOfRaceTimeThreshold:nearestNeighborMaximumAcceptedDistance:" userIsOffRoute:self->_raceStartPointDetected projectedOnNearestPoint:self->_raceEndPointDetected raceSessionExpired:self->_userIsOffRoute rollingBufferReachedEndOfReferenceRoute:self->_projectedOnNearestPoint routeConfigurationSuccessful:self->_raceSessionExpired racingRouteAnalyticsSent:self->_rollingBufferReachedEndOfReferenceRoute prematureRaceEndDetected:self->_referenceRouteTotalLength referenceRouteTotalLengthDetermined:self->_timestampOfLastMatchedPointOnReferenceRoute locationPointIsOutsideOfAcceptedRange:self->_registeredTimeAtThresholdDistance locationPointNotMatched:self->_endOfRaceTimeThreshold routePointsBufferSize:self->_nearestNeighborMaximumAcceptedDistance numberOfRoutePointsToAdd:v6 offRouteGraceDuration:*&self->_routePointsBufferSize matchedPointCounter:*&self->_offRouteGraceDuration referenceRouteDataPointCounter:*&self->_referenceRouteDataPointCounter currentRouteDataPointCounter:*&self->_offRouteDataPointCounter offRouteDataPointCounter:*&self->_rollingBufferUpdateCounter inutileDataPointCounter:*&self->_lastMatchedPointIndexOnReferenceRoute rollingBufferUpdateCounter:v7 lastMatchedPointIndex:? lastMatchedPointIndexOnReferenceRoute:? rollingBufferStartIndexOnReferenceRoute:? matrixCellIndexForLastMatchedPoint:? referenceRouteTotalLength:? timestampOfLastMatchedPointOnReferenceRoute:? registeredTimeAtThresholdDistance:? endOfRaceTimeThreshold:? nearestNeighborMaximumAcceptedDistance:?];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeBool:-[CLRacingRouteVariables raceStartPointDetected](self forKey:{"raceStartPointDetected"), @"raceStartPointDetected"}];
  [a3 encodeBool:-[CLRacingRouteVariables raceEndPointDetected](self forKey:{"raceEndPointDetected"), @"raceEndPointDetected"}];
  [a3 encodeBool:-[CLRacingRouteVariables userIsOffRoute](self forKey:{"userIsOffRoute"), @"userIsOffRoute"}];
  [a3 encodeBool:-[CLRacingRouteVariables projectedOnNearestPoint](self forKey:{"projectedOnNearestPoint"), @"projectedOnNearestPoint"}];
  [a3 encodeBool:-[CLRacingRouteVariables raceSessionExpired](self forKey:{"raceSessionExpired"), @"raceSessionExpired"}];
  [a3 encodeBool:-[CLRacingRouteVariables rollingBufferReachedEndOfReferenceRoute](self forKey:{"rollingBufferReachedEndOfReferenceRoute"), @"rollingBufferReachedEndOfReferenceRoute"}];
  [a3 encodeBool:-[CLRacingRouteVariables routeConfigurationSuccessful](self forKey:{"routeConfigurationSuccessful"), @"routeConfigurationSuccessful"}];
  [a3 encodeBool:-[CLRacingRouteVariables racingRouteAnalyticsSent](self forKey:{"racingRouteAnalyticsSent"), @"racingRouteAnalyticsSent"}];
  [a3 encodeBool:-[CLRacingRouteVariables prematureRaceEndDetected](self forKey:{"prematureRaceEndDetected"), @"prematureRaceEndDetected"}];
  [a3 encodeBool:-[CLRacingRouteVariables referenceRouteTotalLengthDetermined](self forKey:{"referenceRouteTotalLengthDetermined"), @"referenceRouteTotalLengthDetermined"}];
  [a3 encodeBool:-[CLRacingRouteVariables locationPointIsOutsideOfAcceptedRange](self forKey:{"locationPointIsOutsideOfAcceptedRange"), @"locationPointIsOutsideOfAcceptedRange"}];
  [a3 encodeBool:-[CLRacingRouteVariables locationPointNotMatched](self forKey:{"locationPointNotMatched"), @"locationPointNotMatched"}];
  [a3 encodeInt:-[CLRacingRouteVariables routePointsBufferSize](self forKey:{"routePointsBufferSize"), @"routePointsBufferSize"}];
  [a3 encodeInt:-[CLRacingRouteVariables numberOfRoutePointsToAdd](self forKey:{"numberOfRoutePointsToAdd"), @"numberOfRoutePointsToAdd"}];
  [a3 encodeInt:-[CLRacingRouteVariables offRouteGraceDuration](self forKey:{"offRouteGraceDuration"), @"offRouteGraceDuration"}];
  [a3 encodeInt:-[CLRacingRouteVariables matchedPointCounter](self forKey:{"matchedPointCounter"), @"matchedPointCounter"}];
  [a3 encodeInt:-[CLRacingRouteVariables referenceRouteDataPointCounter](self forKey:{"referenceRouteDataPointCounter"), @"referenceRouteDataPointCounter"}];
  [a3 encodeInt:-[CLRacingRouteVariables currentRouteDataPointCounter](self forKey:{"currentRouteDataPointCounter"), @"currentRouteDataPointCounter"}];
  [a3 encodeInt:-[CLRacingRouteVariables offRouteDataPointCounter](self forKey:{"offRouteDataPointCounter"), @"offRouteDataPointCounter"}];
  [a3 encodeInt:-[CLRacingRouteVariables inutileDataPointCounter](self forKey:{"inutileDataPointCounter"), @"inutileDataPointCounter"}];
  [a3 encodeInt:-[CLRacingRouteVariables rollingBufferUpdateCounter](self forKey:{"rollingBufferUpdateCounter"), @"rollingBufferUpdateCounter"}];
  [a3 encodeInt:-[CLRacingRouteVariables lastMatchedPointIndex](self forKey:{"lastMatchedPointIndex"), @"lastMatchedPointIndex"}];
  [a3 encodeInt:-[CLRacingRouteVariables lastMatchedPointIndexOnReferenceRoute](self forKey:{"lastMatchedPointIndexOnReferenceRoute"), @"lastMatchedPointIndexOnReferenceRoute"}];
  [a3 encodeInt:-[CLRacingRouteVariables rollingBufferStartIndexOnReferenceRoute](self forKey:{"rollingBufferStartIndexOnReferenceRoute"), @"rollingBufferStartIndexOnReferenceRoute"}];
  [a3 encodeInt:-[CLRacingRouteVariables matrixCellIndexForLastMatchedPoint](self forKey:{"matrixCellIndexForLastMatchedPoint"), @"matrixCellIndexForLastMatchedPoint"}];
  [(CLRacingRouteVariables *)self referenceRouteTotalLength];
  [a3 encodeDouble:@"referenceRouteTotalLength" forKey:?];
  [(CLRacingRouteVariables *)self timestampOfLastMatchedPointOnReferenceRoute];
  [a3 encodeDouble:@"timestampOfLastMatchedPointOnReferenceRoute" forKey:?];
  [(CLRacingRouteVariables *)self registeredTimeAtThresholdDistance];
  [a3 encodeDouble:@"registeredTimeAtThresholdDistance" forKey:?];
  [(CLRacingRouteVariables *)self endOfRaceTimeThreshold];
  [a3 encodeDouble:@"endOfRaceTimeThreshold" forKey:?];
  [(CLRacingRouteVariables *)self nearestNeighborMaximumAcceptedDistance];

  [a3 encodeDouble:@"nearestNeighborMaximumAcceptedDistance" forKey:?];
}

- (CLRacingRouteVariables)initWithCoder:(id)a3
{
  v41 = [CLRacingRouteVariables alloc];
  v39 = [a3 decodeBoolForKey:@"raceStartPointDetected"];
  v40 = [a3 decodeBoolForKey:@"raceEndPointDetected"];
  v38 = [a3 decodeBoolForKey:@"userIsOffRoute"];
  v37 = [a3 decodeBoolForKey:@"projectedOnNearestPoint"];
  v36 = [a3 decodeBoolForKey:@"raceSessionExpired"];
  v35 = [a3 decodeBoolForKey:@"rollingBufferReachedEndOfReferenceRoute"];
  v34 = [a3 decodeBoolForKey:@"routeConfigurationSuccessful"];
  v33 = [a3 decodeBoolForKey:@"racingRouteAnalyticsSent"];
  v32 = [a3 decodeBoolForKey:@"prematureRaceEndDetected"];
  v31 = [a3 decodeBoolForKey:@"referenceRouteTotalLengthDetermined"];
  v30 = [a3 decodeBoolForKey:@"locationPointIsOutsideOfAcceptedRange"];
  v29 = [a3 decodeBoolForKey:@"locationPointNotMatched"];
  v28 = [a3 decodeIntForKey:@"routePointsBufferSize"];
  v27 = [a3 decodeIntForKey:@"numberOfRoutePointsToAdd"];
  v26 = [a3 decodeIntForKey:@"offRouteGraceDuration"];
  v25 = [a3 decodeIntForKey:@"matchedPointCounter"];
  v4 = [a3 decodeIntForKey:@"referenceRouteDataPointCounter"];
  v5 = [a3 decodeIntForKey:@"currentRouteDataPointCounter"];
  v6 = [a3 decodeIntForKey:@"offRouteDataPointCounter"];
  v7 = [a3 decodeIntForKey:@"inutileDataPointCounter"];
  v8 = [a3 decodeIntForKey:@"rollingBufferUpdateCounter"];
  v9 = [a3 decodeIntForKey:@"lastMatchedPointIndex"];
  v10 = [a3 decodeIntForKey:@"lastMatchedPointIndexOnReferenceRoute"];
  v11 = [a3 decodeIntForKey:@"rollingBufferStartIndexOnReferenceRoute"];
  v12 = [a3 decodeIntForKey:@"matrixCellIndexForLastMatchedPoint"];
  [a3 decodeDoubleForKey:@"referenceRouteTotalLength"];
  v14 = v13;
  [a3 decodeDoubleForKey:@"timestampOfLastMatchedPointOnReferenceRoute"];
  v16 = v15;
  [a3 decodeDoubleForKey:@"registeredTimeAtThresholdDistance"];
  v18 = v17;
  [a3 decodeDoubleForKey:@"endOfRaceTimeThreshold"];
  v20 = v19;
  [a3 decodeDoubleForKey:@"nearestNeighborMaximumAcceptedDistance"];
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