@interface Device
- (id)copyThinningHeadersForPlatform:(int64_t)platform;
@end

@implementation Device

- (id)copyThinningHeadersForPlatform:(int64_t)platform
{
  v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
  productVariants = [(Device *)self productVariants];
  v6 = [productVariants componentsJoinedByString:@" "];
  [v4 setObject:v6 forKeyedSubscript:@"X-Apple-TA-Device"];

  return v4;
}

@end