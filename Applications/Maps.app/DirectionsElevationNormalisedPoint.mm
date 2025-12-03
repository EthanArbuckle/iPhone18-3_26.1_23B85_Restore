@interface DirectionsElevationNormalisedPoint
- (id)chartViewDataRowID;
- (id)chartViewDataValueForColumn:(id)column;
@end

@implementation DirectionsElevationNormalisedPoint

- (id)chartViewDataRowID
{
  offsetMeasurement = [(DirectionsElevationNormalisedPoint *)self offsetMeasurement];
  [offsetMeasurement doubleValue];
  v3 = [NSNumber numberWithDouble:?];

  return v3;
}

- (id)chartViewDataValueForColumn:(id)column
{
  columnCopy = column;
  if ([columnCopy isEqualToString:@"elevation"])
  {
    elevationMeasurement = [(DirectionsElevationNormalisedPoint *)self elevationMeasurement];
LABEL_5:
    v6 = elevationMeasurement;
    [elevationMeasurement doubleValue];
    v7 = [NSNumber numberWithDouble:?];

    goto LABEL_7;
  }

  if ([columnCopy isEqualToString:@"offset"])
  {
    elevationMeasurement = [(DirectionsElevationNormalisedPoint *)self offsetMeasurement];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end