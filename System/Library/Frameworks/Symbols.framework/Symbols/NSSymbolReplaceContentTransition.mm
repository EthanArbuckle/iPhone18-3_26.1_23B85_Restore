@interface NSSymbolReplaceContentTransition
+ (NSSymbolReplaceContentTransition)replaceDownUpTransition;
+ (NSSymbolReplaceContentTransition)replaceOffUpTransition;
+ (NSSymbolReplaceContentTransition)replaceUpUpTransition;
+ (NSSymbolReplaceContentTransition)transition;
- (NSSymbolReplaceContentTransition)transitionWithByLayer;
- (NSSymbolReplaceContentTransition)transitionWithWholeSymbol;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSSymbolReplaceContentTransition

+ (NSSymbolReplaceContentTransition)transition
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSSymbolReplaceContentTransition;
  v2 = objc_msgSendSuper2(&v4, sel__transitionWithType_, 7);
  v2[2] = 0;
  v2[3] = 0;

  return v2;
}

+ (NSSymbolReplaceContentTransition)replaceDownUpTransition
{
  transition = [self transition];
  v3 = [transition _withStyle:1];

  return v3;
}

+ (NSSymbolReplaceContentTransition)replaceUpUpTransition
{
  transition = [self transition];
  v3 = [transition _withStyle:2];

  return v3;
}

+ (NSSymbolReplaceContentTransition)replaceOffUpTransition
{
  transition = [self transition];
  v3 = [transition _withStyle:3];

  return v3;
}

- (NSSymbolReplaceContentTransition)transitionWithByLayer
{
  v2 = [(NSSymbolReplaceContentTransition *)self copyWithZone:0];
  v2[2] = 1;

  return v2;
}

- (NSSymbolReplaceContentTransition)transitionWithWholeSymbol
{
  v2 = [(NSSymbolReplaceContentTransition *)self copyWithZone:0];
  v2[2] = 2;

  return v2;
}

- (id)_rbOptionsMutable
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [NSSymbolEffect _addLayerBehavior:self->_layerBehavior ToOptions:dictionary];
  if ((self->_style - 1) >= 3)
  {
    if (dyld_program_sdk_at_least())
    {
      v4 = 0;
    }

    else
    {
      v4 = 224;
    }
  }

  else
  {
    v4 = (LODWORD(self->_style) + 225);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x1E69C7250]];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = NSSymbolReplaceContentTransition;
  result = [(NSSymbolContentTransition *)&v5 copyWithZone:zone];
  *(result + 3) = self->_style;
  *(result + 2) = self->_layerBehavior;
  return result;
}

@end