@interface NSSymbolBounceEffect
+ (NSSymbolBounceEffect)bounceDownEffect;
+ (NSSymbolBounceEffect)bounceUpEffect;
+ (NSSymbolBounceEffect)effect;
- (NSSymbolBounceEffect)effectWithByLayer;
- (NSSymbolBounceEffect)effectWithWholeSymbol;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSSymbolBounceEffect

+ (NSSymbolBounceEffect)effect
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSSymbolBounceEffect;
  v2 = objc_msgSendSuper2(&v4, sel__effectWithType_, 3);
  v2[2] = 0;
  v2[3] = 0;

  return v2;
}

+ (NSSymbolBounceEffect)bounceUpEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withDirection:1];

  return v3;
}

+ (NSSymbolBounceEffect)bounceDownEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withDirection:2];

  return v3;
}

- (NSSymbolBounceEffect)effectWithByLayer
{
  v2 = [(NSSymbolBounceEffect *)self copyWithZone:0];
  v2[2] = 1;

  return v2;
}

- (NSSymbolBounceEffect)effectWithWholeSymbol
{
  v2 = [(NSSymbolBounceEffect *)self copyWithZone:0];
  v2[2] = 2;

  return v2;
}

- (id)_rbOptionsMutable
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [objc_opt_class() _addLayerBehavior:self->_layerBehavior ToOptions:v3];
  direction = self->_direction;
  if (direction == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (direction == 2);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C7208]];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = NSSymbolBounceEffect;
  result = [(NSSymbolEffect *)&v5 copyWithZone:a3];
  *(result + 2) = self->_layerBehavior;
  *(result + 3) = self->_direction;
  return result;
}

@end