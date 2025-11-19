@interface CFXEffect
- (BOOL)isAnimoji;
@end

@implementation CFXEffect

- (BOOL)isAnimoji
{
  v3 = [CFXEffectType effectTypeWithIdentifier:CFXEffectTypeIdentifierAnimoji];
  v4 = [CFXEffect effectIdentifiersForEffectType:v3];

  v5 = [(CFXEffect *)self identifier];
  LOBYTE(v3) = [v4 containsObject:v5];

  return v3;
}

@end