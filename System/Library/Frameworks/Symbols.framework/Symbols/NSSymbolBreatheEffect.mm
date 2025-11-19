@interface NSSymbolBreatheEffect
+ (id)breatheByDimmingEffect;
+ (id)breatheByScalingEffect;
+ (id)effect;
- (NSSymbolBreatheEffect)effectWithByLayer;
- (NSSymbolBreatheEffect)effectWithWholeSymbol;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSSymbolBreatheEffect

+ (id)effect
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSSymbolBreatheEffect;
  v2 = objc_msgSendSuper2(&v4, sel__effectWithType_, 12);
  v2[2] = 0;
  v2[3] = 0;

  return v2;
}

+ (id)breatheByDimmingEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withStyle:1];

  return v3;
}

+ (id)breatheByScalingEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withStyle:2];

  return v3;
}

- (NSSymbolBreatheEffect)effectWithByLayer
{
  v2 = [(NSSymbolBreatheEffect *)self copyWithZone:0];
  v2[2] = 1;

  return v2;
}

- (NSSymbolBreatheEffect)effectWithWholeSymbol
{
  v2 = [(NSSymbolBreatheEffect *)self copyWithZone:0];
  v2[2] = 2;

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = NSSymbolBreatheEffect;
  result = [(NSSymbolEffect *)&v5 copyWithZone:a3];
  *(result + 2) = self->_layerBehavior;
  *(result + 3) = self->_style;
  return result;
}

- (id)_rbOptionsMutable
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [objc_opt_class() _addLayerBehavior:self->_layerBehavior ToOptions:v3];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_style == 2];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69C7210]];

  return v3;
}

@end