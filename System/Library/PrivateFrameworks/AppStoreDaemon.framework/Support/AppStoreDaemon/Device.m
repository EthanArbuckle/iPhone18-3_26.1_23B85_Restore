@interface Device
- (id)copyThinningHeadersForPlatform:(int64_t)a3;
@end

@implementation Device

- (id)copyThinningHeadersForPlatform:(int64_t)a3
{
  v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v5 = [(Device *)self productVariants];
  v6 = [v5 componentsJoinedByString:@" "];
  [v4 setObject:v6 forKeyedSubscript:@"X-Apple-TA-Device"];

  return v4;
}

@end