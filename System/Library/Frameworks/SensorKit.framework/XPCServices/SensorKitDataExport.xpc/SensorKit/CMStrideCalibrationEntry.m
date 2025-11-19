@interface CMStrideCalibrationEntry
- (id)sr_dictionaryRepresentation;
@end

@implementation CMStrideCalibrationEntry

- (id)sr_dictionaryRepresentation
{
  v4[0] = @"startTime";
  [(CMStrideCalibrationEntry *)self startTime];
  v5[0] = [NSNumber numberWithDouble:?];
  v4[1] = @"endTime";
  [(CMStrideCalibrationEntry *)self endTime];
  v5[1] = [NSNumber numberWithDouble:?];
  v4[2] = @"distance";
  [(CMStrideCalibrationEntry *)self distance];
  v5[2] = [NSNumber numberWithDouble:?];
  v4[3] = @"numberOfSteps";
  v5[3] = [NSNumber numberWithInt:[(CMStrideCalibrationEntry *)self steps]];
  v4[4] = @"speed";
  [(CMStrideCalibrationEntry *)self speed];
  v5[4] = [NSNumber numberWithDouble:?];
  v4[5] = @"percentGrade";
  [(CMStrideCalibrationEntry *)self percentGrade];
  v5[5] = [NSNumber numberWithDouble:?];
  v4[6] = @"gpsSource";
  v5[6] = [NSNumber numberWithInteger:[(CMStrideCalibrationEntry *)self gpsSource]];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];
}

@end