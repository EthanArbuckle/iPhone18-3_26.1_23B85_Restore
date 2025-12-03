@interface NSDictionary
- (BOOL)nn_active;
@end

@implementation NSDictionary

- (BOOL)nn_active
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"nn_active"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end