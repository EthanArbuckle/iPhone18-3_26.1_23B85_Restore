@interface NSDictionary
- (BOOL)nn_active;
@end

@implementation NSDictionary

- (BOOL)nn_active
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"nn_active"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end