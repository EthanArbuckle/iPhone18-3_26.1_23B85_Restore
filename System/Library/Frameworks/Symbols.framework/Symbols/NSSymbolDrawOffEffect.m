@interface NSSymbolDrawOffEffect
+ (id)effect;
- (NSSymbolDrawOffEffect)effectWithByLayer;
- (NSSymbolDrawOffEffect)effectWithIndividually;
- (NSSymbolDrawOffEffect)effectWithNonReversed;
- (NSSymbolDrawOffEffect)effectWithReversed;
- (NSSymbolDrawOffEffect)effectWithWholeSymbol;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSSymbolDrawOffEffect

+ (id)effect
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSSymbolDrawOffEffect;
  v2 = objc_msgSendSuper2(&v4, sel__effectWithType_, 14);
  v2[2] = 0;
  v2[3] = 0;

  return v2;
}

- (NSSymbolDrawOffEffect)effectWithByLayer
{
  v2 = [(NSSymbolDrawOffEffect *)self copyWithZone:0];
  v2[2] = 1;

  return v2;
}

- (NSSymbolDrawOffEffect)effectWithWholeSymbol
{
  v2 = [(NSSymbolDrawOffEffect *)self copyWithZone:0];
  v2[2] = 2;

  return v2;
}

- (NSSymbolDrawOffEffect)effectWithIndividually
{
  v2 = [(NSSymbolDrawOffEffect *)self copyWithZone:0];
  v2[2] = 3;

  return v2;
}

- (NSSymbolDrawOffEffect)effectWithReversed
{
  v2 = [(NSSymbolDrawOffEffect *)self copyWithZone:0];
  v2[3] = 1;

  return v2;
}

- (NSSymbolDrawOffEffect)effectWithNonReversed
{
  v2 = [(NSSymbolDrawOffEffect *)self copyWithZone:0];
  v2[3] = 2;

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = NSSymbolDrawOffEffect;
  result = [(NSSymbolEffect *)&v5 copyWithZone:a3];
  *(result + 2) = self->_layerBehavior;
  *(result + 3) = self->_isReversed;
  return result;
}

- (id)_rbOptionsMutable
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  v5 = self->_layerBehavior - 1;
  if (v5 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1C2C66DA0[v5];
    [v3 setObject:qword_1E819A420[v5] forKeyedSubscript:*MEMORY[0x1E69C7218]];
  }

  if (self->_isReversed == 1)
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  [v4 setObject:v8 forKeyedSubscript:@"drawOnOffOptions"];

  return v4;
}

@end