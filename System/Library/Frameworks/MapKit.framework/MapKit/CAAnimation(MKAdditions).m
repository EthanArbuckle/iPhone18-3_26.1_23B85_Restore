@interface CAAnimation(MKAdditions)
- (uint64_t)_mapkit_ID;
- (void)set_mapkit_ID:()MKAdditions;
@end

@implementation CAAnimation(MKAdditions)

- (uint64_t)_mapkit_ID
{
  v1 = [a1 valueForUndefinedKey:@"_mapkit_ID"];
  v2 = [v1 integerValue];

  return v2;
}

- (void)set_mapkit_ID:()MKAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [a1 setValue:v2 forUndefinedKey:@"_mapkit_ID"];
}

@end