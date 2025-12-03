@interface NSSymbolVariableColorEffect
+ (NSSymbolVariableColorEffect)effect;
- (NSSymbolVariableColorEffect)effectWithCumulative;
- (NSSymbolVariableColorEffect)effectWithDimInactiveLayers;
- (NSSymbolVariableColorEffect)effectWithHideInactiveLayers;
- (NSSymbolVariableColorEffect)effectWithIterative;
- (NSSymbolVariableColorEffect)effectWithNonReversing;
- (NSSymbolVariableColorEffect)effectWithReversing;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSSymbolVariableColorEffect

+ (NSSymbolVariableColorEffect)effect
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSSymbolVariableColorEffect;
  v2 = objc_msgSendSuper2(&v4, sel__effectWithType_, 1);
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;

  return v2;
}

- (NSSymbolVariableColorEffect)effectWithIterative
{
  v2 = [(NSSymbolVariableColorEffect *)self copyWithZone:0];
  v2[4] = 1;

  return v2;
}

- (NSSymbolVariableColorEffect)effectWithCumulative
{
  v2 = [(NSSymbolVariableColorEffect *)self copyWithZone:0];
  v2[4] = 2;

  return v2;
}

- (NSSymbolVariableColorEffect)effectWithReversing
{
  v2 = [(NSSymbolVariableColorEffect *)self copyWithZone:0];
  v2[3] = 1;

  return v2;
}

- (NSSymbolVariableColorEffect)effectWithNonReversing
{
  v2 = [(NSSymbolVariableColorEffect *)self copyWithZone:0];
  v2[3] = 2;

  return v2;
}

- (NSSymbolVariableColorEffect)effectWithHideInactiveLayers
{
  v2 = [(NSSymbolVariableColorEffect *)self copyWithZone:0];
  v2[2] = 1;

  return v2;
}

- (NSSymbolVariableColorEffect)effectWithDimInactiveLayers
{
  v2 = [(NSSymbolVariableColorEffect *)self copyWithZone:0];
  v2[2] = 2;

  return v2;
}

- (id)_rbOptionsMutable
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = self->_fillStyle == 1;
  if (self->_fillStyle == 1)
  {
    v5 = 9;
  }

  else
  {
    v5 = 8;
  }

  if (self->_playbackStyle == 1)
  {
    v4 = v5;
  }

  if (self->_inactiveStyle == 1)
  {
    v6 = v4 | 2u;
  }

  else
  {
    v6 = v4;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E69C7270]];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = NSSymbolVariableColorEffect;
  result = [(NSSymbolEffect *)&v5 copyWithZone:zone];
  *(result + 2) = self->_inactiveStyle;
  *(result + 3) = self->_playbackStyle;
  *(result + 4) = self->_fillStyle;
  return result;
}

@end