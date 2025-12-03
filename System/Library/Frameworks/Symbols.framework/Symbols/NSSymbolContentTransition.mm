@interface NSSymbolContentTransition
+ (id)_transitionWithType:(int64_t)type;
- (NSSymbolContentTransition)initWithCoder:(id)coder;
- (id)_rbAnimation;
- (id)_rbOptionsWithEffectOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSymbolContentTransition

+ (id)_transitionWithType:(int64_t)type
{
  v4 = objc_opt_new();
  v4[1] = type;

  return v4;
}

- (id)_rbAnimation
{
  _effectType = [(NSSymbolContentTransition *)self _effectType];
  if (_effectType == 11 || _effectType == 7)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_rbOptionsWithEffectOptions:(id)options
{
  optionsCopy = options;
  _rbOptionsMutable = [(NSSymbolContentTransition *)self _rbOptionsMutable];
  [NSSymbolEffect _mergeEffectOptions:optionsCopy intoRBOptions:_rbOptionsMutable forEffect:[(NSSymbolContentTransition *)self _effectType]];

  return _rbOptionsMutable;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v4[1] = [(NSSymbolContentTransition *)self _effectType];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[NSSymbolContentTransition _effectType](self forKey:{"_effectType"), @"_effectType"}];
}

- (NSSymbolContentTransition)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = objc_opt_new();

  if (v5)
  {
    v5->_effectType = [coderCopy decodeIntegerForKey:@"_effectType"];
  }

  return v5;
}

@end