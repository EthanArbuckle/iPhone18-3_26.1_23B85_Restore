@interface NSSymbolEffect
+ (id)_effectWithType:(int64_t)a3;
+ (void)_addLayerBehavior:(int64_t)a3 ToOptions:(id)a4;
+ (void)_mergeEffectOptions:(id)a3 intoRBOptions:(id)a4 forEffect:(int64_t)a5;
- (NSSymbolEffect)initWithCoder:(id)a3;
- (id)_rbAnimation;
- (id)_rbOptionsWithEffectOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSymbolEffect

+ (id)_effectWithType:(int64_t)a3
{
  v4 = objc_opt_new();
  v4[1] = a3;

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

+ (void)_mergeEffectOptions:(id)a3 intoRBOptions:(id)a4 forEffect:(int64_t)a5
{
  v24 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696AD98];
  [v24 _speed];
  v9 = [v8 numberWithDouble:?];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69C7260]];

  v10 = [v24 _repeatBehavior];
  if (v10 == 2)
  {
    v11 = MEMORY[0x1E696AD98];
    *&v12 = [v24 _repeatCount];
    v13 = [v11 numberWithFloat:v12];
    [v7 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69C7240]];
  }

  else if (v10 == 1)
  {
    [v7 setObject:&unk_1F4291CE0 forKeyedSubscript:*MEMORY[0x1E69C7240]];
  }

  v14 = [v24 _repeatDelay];

  if (v14)
  {
    v15 = [v24 _repeatDelay];
    [v15 doubleValue];
    v17 = v16;

    *&v18 = v17;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    [v7 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69C7248]];
  }

  if ([v24 _prefersContinuous])
  {
    switch(a5)
    {
      case 3:
        v20 = MEMORY[0x1E69C7208];
        break;
      case 10:
        v20 = MEMORY[0x1E69C7258];
        break;
      case 9:
        v20 = MEMORY[0x1E69C7280];
        v21 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69C7280]];
        v22 = 256;
        if (!v21)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      default:
        goto LABEL_18;
    }

    v21 = [v7 objectForKeyedSubscript:*v20];
    v22 = 16;
    if (!v21)
    {
LABEL_17:
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v22];
      [v7 setObject:v23 forKeyedSubscript:*v20];

      goto LABEL_18;
    }

LABEL_16:
    v22 = [v21 unsignedIntValue] | v22;
    goto LABEL_17;
  }

LABEL_18:
}

- (id)_rbOptionsWithEffectOptions:(id)a3
{
  v4 = a3;
  v5 = [(NSSymbolEffect *)self _rbOptionsMutable];
  [objc_opt_class() _mergeEffectOptions:v4 intoRBOptions:v5 forEffect:{-[NSSymbolEffect _effectType](self, "_effectType")}];

  return v5;
}

+ (void)_addLayerBehavior:(int64_t)a3 ToOptions:(id)a4
{
  v5 = a4;
  if (a3 == 1)
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x1E695E110];
  }

  v7 = v5;
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C7218]];
  v5 = v7;
LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v4[1] = [(NSSymbolEffect *)self _effectType];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[NSSymbolEffect _effectType](self forKey:{"_effectType"), @"_effectType"}];
}

- (NSSymbolEffect)initWithCoder:(id)a3
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