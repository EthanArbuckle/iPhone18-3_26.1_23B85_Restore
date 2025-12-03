@interface CAAnimation(MKAdditions)
- (uint64_t)_mapkit_ID;
- (void)set_mapkit_ID:()MKAdditions;
@end

@implementation CAAnimation(MKAdditions)

- (uint64_t)_mapkit_ID
{
  v1 = [self valueForUndefinedKey:@"_mapkit_ID"];
  integerValue = [v1 integerValue];

  return integerValue;
}

- (void)set_mapkit_ID:()MKAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [self setValue:v2 forUndefinedKey:@"_mapkit_ID"];
}

@end