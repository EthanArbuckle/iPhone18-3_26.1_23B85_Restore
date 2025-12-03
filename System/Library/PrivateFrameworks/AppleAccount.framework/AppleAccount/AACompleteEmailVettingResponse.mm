@interface AACompleteEmailVettingResponse
- (int)vettingStatus;
@end

@implementation AACompleteEmailVettingResponse

- (int)vettingStatus
{
  v2 = [(NSDictionary *)self->super._responseDictionary objectForKey:@"status"];
  intValue = [v2 intValue];

  return intValue;
}

@end