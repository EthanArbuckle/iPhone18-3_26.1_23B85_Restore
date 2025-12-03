@interface CFXEffect
- (BOOL)isAnimoji;
@end

@implementation CFXEffect

- (BOOL)isAnimoji
{
  v3 = [CFXEffectType effectTypeWithIdentifier:CFXEffectTypeIdentifierAnimoji];
  v4 = [CFXEffect effectIdentifiersForEffectType:v3];

  identifier = [(CFXEffect *)self identifier];
  LOBYTE(v3) = [v4 containsObject:identifier];

  return v3;
}

@end