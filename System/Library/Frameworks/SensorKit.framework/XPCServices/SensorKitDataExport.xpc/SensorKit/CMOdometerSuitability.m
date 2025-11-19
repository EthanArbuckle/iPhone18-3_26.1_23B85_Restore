@interface CMOdometerSuitability
- (id)sr_dictionaryRepresentation;
@end

@implementation CMOdometerSuitability

- (id)sr_dictionaryRepresentation
{
  v4[0] = @"startTime";
  [-[CMOdometerSuitability startDate](self "startDate")];
  v5[0] = [NSNumber numberWithDouble:?];
  v4[1] = @"suitableForRunning";
  v5[1] = [NSNumber numberWithBool:[(CMOdometerSuitability *)self suitableForRunning]];
  v4[2] = @"suitableForWalking";
  v5[2] = [NSNumber numberWithBool:[(CMOdometerSuitability *)self suitableForWalking]];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];
}

@end