@interface NSSymbolDisappearEffect
+ (NSSymbolDisappearEffect)disappearDownEffect;
+ (NSSymbolDisappearEffect)disappearUpEffect;
+ (NSSymbolDisappearEffect)effect;
- (NSSymbolDisappearEffect)effectWithByLayer;
- (NSSymbolDisappearEffect)effectWithWholeSymbol;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSSymbolDisappearEffect

+ (NSSymbolDisappearEffect)effect
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSSymbolDisappearEffect;
  v2 = objc_msgSendSuper2(&v4, sel__effectWithType_, 6);
  v2[2] = 0;
  v2[3] = 0;

  return v2;
}

+ (NSSymbolDisappearEffect)disappearUpEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withStyle:1];

  return v3;
}

+ (NSSymbolDisappearEffect)disappearDownEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withStyle:2];

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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [objc_opt_class() _addLayerBehavior:self->_layerBehavior ToOptions:v3];
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
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C7200]];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = NSSymbolDisappearEffect;
  result = [(NSSymbolEffect *)&v5 copyWithZone:a3];
  *(result + 2) = self->_layerBehavior;
  *(result + 3) = self->_style;
  return result;
}

@end