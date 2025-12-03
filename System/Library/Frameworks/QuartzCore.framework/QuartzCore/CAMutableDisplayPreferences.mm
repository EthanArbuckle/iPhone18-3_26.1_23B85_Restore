@interface CAMutableDisplayPreferences
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CAMutableDisplayPreferences

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CADisplayPreferences allocWithZone:zone];

  return [(CADisplayPreferences *)v4 initWithPreferences:self];
}

@end