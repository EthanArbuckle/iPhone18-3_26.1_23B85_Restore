@interface NSSymbolPulseEffect
+ (NSSymbolPulseEffect)effect;
- (NSSymbolPulseEffect)effectWithByLayer;
- (NSSymbolPulseEffect)effectWithWholeSymbol;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSSymbolPulseEffect

+ (NSSymbolPulseEffect)effect
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSSymbolPulseEffect;
  v2 = objc_msgSendSuper2(&v4, sel__effectWithType_, 2);
  v2[2] = 0;

  return v2;
}

- (NSSymbolPulseEffect)effectWithByLayer
{
  v2 = [(NSSymbolPulseEffect *)self copyWithZone:0];
  v2[2] = 1;

  return v2;
}

- (NSSymbolPulseEffect)effectWithWholeSymbol
{
  v2 = [(NSSymbolPulseEffect *)self copyWithZone:0];
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
  v5.super_class = NSSymbolPulseEffect;
  result = [(NSSymbolEffect *)&v5 copyWithZone:zone];
  *(result + 2) = self->_layerBehavior;
  return result;
}

@end