@interface NSSymbolDrawOnEffect
+ (id)effect;
- (NSSymbolDrawOnEffect)effectWithByLayer;
- (NSSymbolDrawOnEffect)effectWithIndividually;
- (NSSymbolDrawOnEffect)effectWithWholeSymbol;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSSymbolDrawOnEffect

+ (id)effect
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSSymbolDrawOnEffect;
  v2 = objc_msgSendSuper2(&v4, sel__effectWithType_, 13);
  v2[2] = 0;

  return v2;
}

- (NSSymbolDrawOnEffect)effectWithByLayer
{
  v2 = [(NSSymbolDrawOnEffect *)self copyWithZone:0];
  v2[2] = 1;

  return v2;
}

- (NSSymbolDrawOnEffect)effectWithWholeSymbol
{
  v2 = [(NSSymbolDrawOnEffect *)self copyWithZone:0];
  v2[2] = 2;

  return v2;
}

- (NSSymbolDrawOnEffect)effectWithIndividually
{
  v2 = [(NSSymbolDrawOnEffect *)self copyWithZone:0];
  v2[2] = 3;

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = NSSymbolDrawOnEffect;
  result = [(NSSymbolEffect *)&v5 copyWithZone:a3];
  *(result + 2) = self->_layerBehavior;
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

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  [v4 setObject:v7 forKeyedSubscript:@"drawOnOffOptions"];

  return v4;
}

@end