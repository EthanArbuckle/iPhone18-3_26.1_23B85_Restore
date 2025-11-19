@interface SKANTokenEntity
+ (id)defaultProperties;
@end

@implementation SKANTokenEntity

+ (id)defaultProperties
{
  v4[0] = @"app_adam_id";
  v4[1] = @"blinded_element";
  v4[2] = @"private_input";
  v4[3] = @"finalized_token";
  v4[4] = @"certificate";
  v4[5] = @"is_redownload";
  v4[6] = @"timestamp";
  v2 = [NSArray arrayWithObjects:v4 count:7];

  return v2;
}

@end