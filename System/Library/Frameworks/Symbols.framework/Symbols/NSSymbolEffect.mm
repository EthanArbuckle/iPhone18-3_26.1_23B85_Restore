@interface NSSymbolEffect
+ (id)_effectWithType:(int64_t)type;
+ (void)_addLayerBehavior:(int64_t)behavior ToOptions:(id)options;
+ (void)_mergeEffectOptions:(id)options intoRBOptions:(id)bOptions forEffect:(int64_t)effect;
- (NSSymbolEffect)initWithCoder:(id)coder;
- (id)_rbAnimation;
- (id)_rbOptionsWithEffectOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSymbolEffect

+ (id)_effectWithType:(int64_t)type
{
  v4 = objc_opt_new();
  v4[1] = type;

  return v4;
}

- (id)_rbAnimation
{
  v2 = [(NSSymbolEffect *)self _effectType]- 1;
  if (v2 <= 0xD && ((0x3B3Fu >> v2) & 1) != 0)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1C2C66D68[v2]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)_mergeEffectOptions:(id)options intoRBOptions:(id)bOptions forEffect:(int64_t)effect
{
  optionsCopy = options;
  bOptionsCopy = bOptions;
  v8 = MEMORY[0x1E696AD98];
  [optionsCopy _speed];
  v9 = [v8 numberWithDouble:?];
  [bOptionsCopy setObject:v9 forKeyedSubscript:*MEMORY[0x1E69C7260]];

  _repeatBehavior = [optionsCopy _repeatBehavior];
  if (_repeatBehavior == 2)
  {
    v11 = MEMORY[0x1E696AD98];
    *&v12 = [optionsCopy _repeatCount];
    v13 = [v11 numberWithFloat:v12];
    [bOptionsCopy setObject:v13 forKeyedSubscript:*MEMORY[0x1E69C7240]];
  }

  else if (_repeatBehavior == 1)
  {
    [bOptionsCopy setObject:&unk_1F4291CE0 forKeyedSubscript:*MEMORY[0x1E69C7240]];
  }

  _repeatDelay = [optionsCopy _repeatDelay];

  if (_repeatDelay)
  {
    _repeatDelay2 = [optionsCopy _repeatDelay];
    [_repeatDelay2 doubleValue];
    v17 = v16;

    *&v18 = v17;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    [bOptionsCopy setObject:v19 forKeyedSubscript:*MEMORY[0x1E69C7248]];
  }

  if ([optionsCopy _prefersContinuous])
  {
    switch(effect)
    {
      case 3:
        v20 = MEMORY[0x1E69C7208];
        break;
      case 10:
        v20 = MEMORY[0x1E69C7258];
        break;
      case 9:
        v20 = MEMORY[0x1E69C7280];
        v21 = [bOptionsCopy objectForKeyedSubscript:*MEMORY[0x1E69C7280]];
        v22 = 256;
        if (!v21)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      default:
        goto LABEL_18;
    }

    v21 = [bOptionsCopy objectForKeyedSubscript:*v20];
    v22 = 16;
    if (!v21)
    {
LABEL_17:
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v22];
      [bOptionsCopy setObject:v23 forKeyedSubscript:*v20];

      goto LABEL_18;
    }

LABEL_16:
    v22 = [v21 unsignedIntValue] | v22;
    goto LABEL_17;
  }

LABEL_18:
}

- (id)_rbOptionsWithEffectOptions:(id)options
{
  optionsCopy = options;
  _rbOptionsMutable = [(NSSymbolEffect *)self _rbOptionsMutable];
  [objc_opt_class() _mergeEffectOptions:optionsCopy intoRBOptions:_rbOptionsMutable forEffect:{-[NSSymbolEffect _effectType](self, "_effectType")}];

  return _rbOptionsMutable;
}

+ (void)_addLayerBehavior:(int64_t)behavior ToOptions:(id)options
{
  optionsCopy = options;
  if (behavior == 1)
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    if (behavior != 2)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x1E695E110];
  }

  v7 = optionsCopy;
  [optionsCopy setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C7218]];
  optionsCopy = v7;
LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v4[1] = [(NSSymbolEffect *)self _effectType];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[NSSymbolEffect _effectType](self forKey:{"_effectType"), @"_effectType"}];
}

- (NSSymbolEffect)initWithCoder:(id)coder
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