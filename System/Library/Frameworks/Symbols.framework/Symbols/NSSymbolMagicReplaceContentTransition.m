@interface NSSymbolMagicReplaceContentTransition
+ (id)transition;
+ (id)transitionWithFallback:(id)a3;
- (id)_rbOptionsMutable;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSSymbolMagicReplaceContentTransition

+ (id)transition
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSSymbolMagicReplaceContentTransition;
  v2 = objc_msgSendSuper2(&v4, sel__transitionWithType_, 11);

  return v2;
}

+ (id)transitionWithFallback:(id)a3
{
  v4 = a3;
  v5 = [a1 transition];
  v6 = v5[2];
  v5[2] = v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = NSSymbolMagicReplaceContentTransition;
  v5 = [(NSSymbolContentTransition *)&v10 copyWithZone:?];
  v6 = [(NSSymbolMagicReplaceContentTransition *)self _fallback];
  v7 = [v6 copyWithZone:a3];
  v8 = v5[2];
  v5[2] = v7;

  return v5;
}

- (id)_rbOptionsMutable
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [NSSymbolEffect _addLayerBehavior:[(NSSymbolReplaceContentTransition *)self->_fallback _layerBehavior] ToOptions:v3];
  v4 = [(NSSymbolReplaceContentTransition *)self->_fallback _style];
  if ((v4 - 1) >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (v4 + 1);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C7250]];

  return v3;
}

@end