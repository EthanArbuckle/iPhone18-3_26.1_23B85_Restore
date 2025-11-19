@interface SRSleepSession
- (id)sr_dictionaryRepresentation;
@end

@implementation SRSleepSession

- (id)sr_dictionaryRepresentation
{
  v4[0] = @"startDate";
  [-[SRSleepSession startDate](self "startDate")];
  v5[0] = [NSNumber numberWithDouble:?];
  v4[1] = @"identifier";
  v5[1] = [(SRSleepSession *)self identifier];
  v4[2] = @"duration";
  [(SRSleepSession *)self duration];
  v5[2] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];
}

@end