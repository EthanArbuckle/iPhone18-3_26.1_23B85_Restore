@interface NSSymbolRotateEffect
+ (id)effect;
+ (id)rotateClockwiseEffect;
+ (id)rotateCounterClockwiseEffect;
- (NSSymbolRotateEffect)effectWithByLayer;
- (NSSymbolRotateEffect)effectWithWholeSymbol;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSSymbolRotateEffect

+ (id)effect
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSSymbolRotateEffect;
  v2 = objc_msgSendSuper2(&v4, sel__effectWithType_, 10);
  v2[2] = 0;
  v2[3] = 0;

  return v2;
}

+ (id)rotateClockwiseEffect
{
  effect = [self effect];
  v3 = [effect _withClockwise:1];

  return v3;
}

+ (id)rotateCounterClockwiseEffect
{
  effect = [self effect];
  v3 = [effect _withClockwise:2];

  return v3;
}

- (NSSymbolRotateEffect)effectWithByLayer
{
  v2 = [(NSSymbolRotateEffect *)self copyWithZone:0];
  v2[2] = 1;

  return v2;
}

- (NSSymbolRotateEffect)effectWithWholeSymbol
{
  v2 = [(NSSymbolRotateEffect *)self copyWithZone:0];
  v2[2] = 2;

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = NSSymbolRotateEffect;
  result = [(NSSymbolEffect *)&v5 copyWithZone:zone];
  *(result + 2) = self->_layerBehavior;
  *(result + 3) = self->_isClockwise;
  return result;
}

- (id)_rbOptionsMutable
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [objc_opt_class() _addLayerBehavior:self->_layerBehavior ToOptions:dictionary];
  isClockwise = self->_isClockwise;
  if (isClockwise == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (isClockwise == 2);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  [dictionary setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C7258]];

  return dictionary;
}

@end