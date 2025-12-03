@interface NSSymbolMagicReplaceContentTransition
+ (id)transition;
+ (id)transitionWithFallback:(id)fallback;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSSymbolMagicReplaceContentTransition

+ (id)transition
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSSymbolMagicReplaceContentTransition;
  v2 = objc_msgSendSuper2(&v4, sel__transitionWithType_, 11);

  return v2;
}

+ (id)transitionWithFallback:(id)fallback
{
  fallbackCopy = fallback;
  transition = [self transition];
  v6 = transition[2];
  transition[2] = fallbackCopy;

  return transition;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NSSymbolMagicReplaceContentTransition;
  v5 = [(NSSymbolContentTransition *)&v10 copyWithZone:?];
  _fallback = [(NSSymbolMagicReplaceContentTransition *)self _fallback];
  v7 = [_fallback copyWithZone:zone];
  v8 = v5[2];
  v5[2] = v7;

  return v5;
}

- (id)_rbOptionsMutable
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [NSSymbolEffect _addLayerBehavior:[(NSSymbolReplaceContentTransition *)self->_fallback _layerBehavior] ToOptions:dictionary];
  _style = [(NSSymbolReplaceContentTransition *)self->_fallback _style];
  if ((_style - 1) >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (_style + 1);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  [dictionary setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C7250]];

  return dictionary;
}

@end