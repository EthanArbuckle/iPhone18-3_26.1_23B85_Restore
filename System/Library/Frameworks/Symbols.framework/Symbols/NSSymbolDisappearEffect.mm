@interface NSSymbolDisappearEffect
+ (NSSymbolDisappearEffect)disappearDownEffect;
+ (NSSymbolDisappearEffect)disappearUpEffect;
+ (NSSymbolDisappearEffect)effect;
- (NSSymbolDisappearEffect)effectWithByLayer;
- (NSSymbolDisappearEffect)effectWithWholeSymbol;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSSymbolDisappearEffect

+ (NSSymbolDisappearEffect)effect
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSSymbolDisappearEffect;
  v2 = objc_msgSendSuper2(&v4, sel__effectWithType_, 6);
  v2[2] = 0;
  v2[3] = 0;

  return v2;
}

+ (NSSymbolDisappearEffect)disappearUpEffect
{
  effect = [self effect];
  v3 = [effect _withStyle:1];

  return v3;
}

+ (NSSymbolDisappearEffect)disappearDownEffect
{
  effect = [self effect];
  v3 = [effect _withStyle:2];

  return v3;
}

- (NSSymbolDisappearEffect)effectWithByLayer
{
  v2 = [(NSSymbolDisappearEffect *)self copyWithZone:0];
  v2[2] = 1;

  return v2;
}

- (NSSymbolDisappearEffect)effectWithWholeSymbol
{
  v2 = [(NSSymbolDisappearEffect *)self copyWithZone:0];
  v2[2] = 2;

  return v2;
}

- (id)_rbOptionsMutable
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [objc_opt_class() _addLayerBehavior:self->_layerBehavior ToOptions:dictionary];
  style = self->_style;
  if (style == 1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2 * (style == 2);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  [dictionary setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C7200]];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = NSSymbolDisappearEffect;
  result = [(NSSymbolEffect *)&v5 copyWithZone:zone];
  *(result + 2) = self->_layerBehavior;
  *(result + 3) = self->_style;
  return result;
}

@end