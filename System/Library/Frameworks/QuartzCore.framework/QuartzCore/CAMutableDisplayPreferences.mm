@interface CAMutableDisplayPreferences
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CAMutableDisplayPreferences

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CADisplayPreferences allocWithZone:a3];

  return [(CADisplayPreferences *)v4 initWithPreferences:self];
}

@end