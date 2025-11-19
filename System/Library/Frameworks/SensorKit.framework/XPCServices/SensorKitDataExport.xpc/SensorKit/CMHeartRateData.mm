@interface CMHeartRateData
- (id)sr_dictionaryRepresentation;
@end

@implementation CMHeartRateData

- (id)sr_dictionaryRepresentation
{
  v4[0] = @"heartRate";
  [(CMHeartRateData *)self heartRate];
  v5[0] = [NSNumber numberWithDouble:?];
  v4[1] = @"confidence";
  [(CMHeartRateData *)self confidence];
  v5[1] = [NSNumber numberWithDouble:?];
  v4[2] = @"startTime";
  [-[CMHeartRateData startDate](self "startDate")];
  v5[2] = [NSNumber numberWithDouble:?];
  v4[3] = @"error";
  v5[3] = [NSNumber numberWithBool:[(CMHeartRateData *)self error]];
  v4[4] = @"dataSource";
  v5[4] = [NSNumber numberWithInteger:[(CMHeartRateData *)self dataSource]];
  v4[5] = @"mode";
  v5[5] = [NSNumber numberWithInteger:[(CMHeartRateData *)self mode]];
  v4[6] = @"frequency";
  [(CMHeartRateData *)self frequency];
  v5[6] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];
}

@end