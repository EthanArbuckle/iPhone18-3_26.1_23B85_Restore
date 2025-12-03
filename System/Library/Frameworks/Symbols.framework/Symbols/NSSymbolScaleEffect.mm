@interface NSSymbolScaleEffect
+ (NSSymbolScaleEffect)effect;
+ (NSSymbolScaleEffect)scaleDownEffect;
+ (NSSymbolScaleEffect)scaleUpEffect;
- (NSSymbolScaleEffect)effectWithByLayer;
- (NSSymbolScaleEffect)effectWithWholeSymbol;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSSymbolScaleEffect

+ (NSSymbolScaleEffect)effect
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSSymbolScaleEffect;
  v2 = objc_msgSendSuper2(&v4, sel__effectWithType_, 4);
  v2[2] = 0;
  v2[3] = 0;

  return v2;
}

+ (NSSymbolScaleEffect)scaleUpEffect
{
  effect = [self effect];
  v3 = [effect _withScaleLevel:1];

  return v3;
}

+ (NSSymbolScaleEffect)scaleDownEffect
{
  effect = [self effect];
  v3 = [effect _withScaleLevel:2];

  return v3;
}

- (NSSymbolScaleEffect)effectWithByLayer
{
  v2 = [(NSSymbolScaleEffect *)self copyWithZone:0];
  v2[2] = 1;

  return v2;
}

- (NSSymbolScaleEffect)effectWithWholeSymbol
{
  v2 = [(NSSymbolScaleEffect *)self copyWithZone:0];
  v2[2] = 2;

  return v2;
}

- (id)_rbOptionsMutable
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [objc_opt_class() _addLayerBehavior:self->_layerBehavior ToOptions:dictionary];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = NSSymbolScaleEffect;
  result = [(NSSymbolEffect *)&v5 copyWithZone:zone];
  *(result + 2) = self->_layerBehavior;
  *(result + 3) = self->_level;
  return result;
}

@end