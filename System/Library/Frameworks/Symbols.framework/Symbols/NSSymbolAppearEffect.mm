@interface NSSymbolAppearEffect
+ (NSSymbolAppearEffect)appearDownEffect;
+ (NSSymbolAppearEffect)appearUpEffect;
+ (NSSymbolAppearEffect)effect;
- (NSSymbolAppearEffect)effectWithByLayer;
- (NSSymbolAppearEffect)effectWithWholeSymbol;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSSymbolAppearEffect

+ (NSSymbolAppearEffect)effect
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSSymbolAppearEffect;
  v2 = objc_msgSendSuper2(&v4, sel__effectWithType_, 5);
  v2[2] = 0;
  v2[3] = 0;

  return v2;
}

+ (NSSymbolAppearEffect)appearUpEffect
{
  effect = [self effect];
  v3 = [effect _withStyle:1];

  return v3;
}

+ (NSSymbolAppearEffect)appearDownEffect
{
  effect = [self effect];
  v3 = [effect _withStyle:2];

  return v3;
}

- (NSSymbolAppearEffect)effectWithByLayer
{
  v2 = [(NSSymbolAppearEffect *)self copyWithZone:0];
  v2[2] = 1;

  return v2;
}

- (NSSymbolAppearEffect)effectWithWholeSymbol
{
  v2 = [(NSSymbolAppearEffect *)self copyWithZone:0];
  v2[2] = 2;

  return v2;
}

- (id)_rbOptionsMutable
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [objc_opt_class() _addLayerBehavior:self->_layerBehavior ToOptions:dictionary];
  style = self->_style;
  if (style == 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  if (style == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E69C7200]];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = NSSymbolAppearEffect;
  result = [(NSSymbolEffect *)&v5 copyWithZone:zone];
  *(result + 2) = self->_layerBehavior;
  *(result + 3) = self->_style;
  return result;
}

@end