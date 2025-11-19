@interface NSSymbolContentTransition
+ (id)_transitionWithType:(int64_t)a3;
- (NSSymbolContentTransition)initWithCoder:(id)a3;
- (id)_rbAnimation;
- (id)_rbOptionsWithEffectOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSymbolContentTransition

+ (id)_transitionWithType:(int64_t)a3
{
  v4 = objc_opt_new();
  v4[1] = a3;

  return v4;
}

- (id)_rbAnimation
{
  v2 = [(NSSymbolContentTransition *)self _effectType];
  if (v2 == 11 || v2 == 7)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_rbOptionsWithEffectOptions:(id)a3
{
  v4 = a3;
  v5 = [(NSSymbolContentTransition *)self _rbOptionsMutable];
  [NSSymbolEffect _mergeEffectOptions:v4 intoRBOptions:v5 forEffect:[(NSSymbolContentTransition *)self _effectType]];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v4[1] = [(NSSymbolContentTransition *)self _effectType];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[NSSymbolContentTransition _effectType](self forKey:{"_effectType"), @"_effectType"}];
}

- (NSSymbolContentTransition)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = objc_opt_new();

  if (v5)
  {
    v5->_effectType = [v4 decodeIntegerForKey:@"_effectType"];
  }

  return v5;
}

@end