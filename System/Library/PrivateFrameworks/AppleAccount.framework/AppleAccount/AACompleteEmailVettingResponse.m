@interface AACompleteEmailVettingResponse
- (int)vettingStatus;
@end

@implementation AACompleteEmailVettingResponse

- (int)vettingStatus
{
  v2 = [(NSDictionary *)self->super._responseDictionary objectForKey:@"status"];
  v3 = [v2 intValue];

  return v3;
}

@end