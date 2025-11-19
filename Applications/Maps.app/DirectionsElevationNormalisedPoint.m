@interface DirectionsElevationNormalisedPoint
- (id)chartViewDataRowID;
- (id)chartViewDataValueForColumn:(id)a3;
@end

@implementation DirectionsElevationNormalisedPoint

- (id)chartViewDataRowID
{
  v2 = [(DirectionsElevationNormalisedPoint *)self offsetMeasurement];
  [v2 doubleValue];
  v3 = [NSNumber numberWithDouble:?];

  return v3;
}

- (id)chartViewDataValueForColumn:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"elevation"])
  {
    v5 = [(DirectionsElevationNormalisedPoint *)self elevationMeasurement];
LABEL_5:
    v6 = v5;
    [v5 doubleValue];
    v7 = [NSNumber numberWithDouble:?];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"offset"])
  {
    v5 = [(DirectionsElevationNormalisedPoint *)self offsetMeasurement];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end