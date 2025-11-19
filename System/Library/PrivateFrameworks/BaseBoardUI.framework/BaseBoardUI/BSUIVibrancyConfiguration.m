@interface BSUIVibrancyConfiguration
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BSUIVibrancyConfiguration)init;
- (BSUIVibrancyConfiguration)initWithEffectType:(int64_t)a3 backgroundType:(int64_t)a4 color:(id)a5 groupName:(id)a6 blendConfiguration:(id)a7 blendAmount:(double)a8 alternativeVibrancyEffectLUT:(id)a9;
- (BSUIVibrancyEffectValues)effectValues;
- (BSUIVibrancyShadowValues)shadowValues;
- (id)copyWithAlternativeVibrancyEffectLUT:(id)a3;
- (id)copyWithBlendAmount:(double)a3 blendConfiguration:(id)a4;
- (id)copyWithBlendAmount:(double)a3 blendConfiguration:(id)a4 alternativeVibrancyEffectLUT:(id)a5;
- (id)copyWithEffectType:(int64_t)a3 color:(id)a4;
- (id)copyWithGroupName:(id)a3;
- (id)copyWithWithBackgroundType:(int64_t)a3;
- (id)membersForCoder;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation BSUIVibrancyConfiguration

- (BSUIVibrancyConfiguration)init
{
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5];
  v4 = [(BSUIVibrancyConfiguration *)self initWithEffectType:0 backgroundType:0 color:v3];

  return v4;
}

- (BSUIVibrancyConfiguration)initWithEffectType:(int64_t)a3 backgroundType:(int64_t)a4 color:(id)a5 groupName:(id)a6 blendConfiguration:(id)a7 blendAmount:(double)a8 alternativeVibrancyEffectLUT:(id)a9
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v31.receiver = self;
  v31.super_class = BSUIVibrancyConfiguration;
  v20 = [(BSUIVibrancyConfiguration *)&v31 init];
  v21 = v20;
  if (v20)
  {
    v20->_effectType = a3;
    v20->_backgroundType = a4;
    v22 = [v16 copy];
    color = v21->_color;
    v21->_color = v22;

    v24 = [v17 copy];
    groupName = v21->_groupName;
    v21->_groupName = v24;

    v26 = [v18 copy];
    blendConfiguration = v21->_blendConfiguration;
    v21->_blendConfiguration = v26;

    v21->_blendAmount = a8;
    v28 = [v19 copy];
    alternativeVibrancyEffectLUT = v21->_alternativeVibrancyEffectLUT;
    v21->_alternativeVibrancyEffectLUT = v28;
  }

  return v21;
}

- (id)copyWithGroupName:(id)a3
{
  v4 = a3;
  v5 = [BSUIVibrancyConfiguration alloc];
  v6 = [(BSUIVibrancyConfiguration *)self effectType];
  v7 = [(BSUIVibrancyConfiguration *)self backgroundType];
  v8 = [(BSUIVibrancyConfiguration *)self color];
  v9 = [(BSUIVibrancyConfiguration *)self blendConfiguration];
  [(BSUIVibrancyConfiguration *)self blendAmount];
  v11 = v10;
  v12 = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
  v13 = [(BSUIVibrancyConfiguration *)v5 initWithEffectType:v6 backgroundType:v7 color:v8 groupName:v4 blendConfiguration:v9 blendAmount:v12 alternativeVibrancyEffectLUT:v11];

  return v13;
}

- (id)copyWithBlendAmount:(double)a3 blendConfiguration:(id)a4
{
  v6 = a4;
  v7 = [BSUIVibrancyConfiguration alloc];
  v8 = [(BSUIVibrancyConfiguration *)self effectType];
  v9 = [(BSUIVibrancyConfiguration *)self backgroundType];
  v10 = [(BSUIVibrancyConfiguration *)self color];
  v11 = [(BSUIVibrancyConfiguration *)self groupName];
  v12 = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
  v13 = [(BSUIVibrancyConfiguration *)v7 initWithEffectType:v8 backgroundType:v9 color:v10 groupName:v11 blendConfiguration:v6 blendAmount:v12 alternativeVibrancyEffectLUT:a3];

  return v13;
}

- (id)copyWithBlendAmount:(double)a3 blendConfiguration:(id)a4 alternativeVibrancyEffectLUT:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [BSUIVibrancyConfiguration alloc];
  v11 = [(BSUIVibrancyConfiguration *)self effectType];
  v12 = [(BSUIVibrancyConfiguration *)self backgroundType];
  v13 = [(BSUIVibrancyConfiguration *)self color];
  v14 = [(BSUIVibrancyConfiguration *)self groupName];
  v15 = [(BSUIVibrancyConfiguration *)v10 initWithEffectType:v11 backgroundType:v12 color:v13 groupName:v14 blendConfiguration:v8 blendAmount:v9 alternativeVibrancyEffectLUT:a3];

  return v15;
}

- (id)copyWithEffectType:(int64_t)a3 color:(id)a4
{
  v6 = a4;
  v7 = [(BSUIVibrancyConfiguration *)self blendConfiguration];

  if (v7)
  {
    v8 = [(BSUIVibrancyConfiguration *)self blendConfiguration];
    v9 = [v8 copyWithEffectType:a3 color:v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = [BSUIVibrancyConfiguration alloc];
  v11 = [(BSUIVibrancyConfiguration *)self backgroundType];
  v12 = [(BSUIVibrancyConfiguration *)self groupName];
  [(BSUIVibrancyConfiguration *)self blendAmount];
  v14 = v13;
  v15 = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
  v16 = [(BSUIVibrancyConfiguration *)v10 initWithEffectType:a3 backgroundType:v11 color:v6 groupName:v12 blendConfiguration:v9 blendAmount:v15 alternativeVibrancyEffectLUT:v14];

  return v16;
}

- (id)copyWithWithBackgroundType:(int64_t)a3
{
  v5 = [(BSUIVibrancyConfiguration *)self blendConfiguration];

  if (v5)
  {
    v6 = [(BSUIVibrancyConfiguration *)self blendConfiguration];
    v7 = [v6 copyWithWithBackgroundType:a3];
  }

  else
  {
    v7 = 0;
  }

  v8 = [BSUIVibrancyConfiguration alloc];
  v9 = [(BSUIVibrancyConfiguration *)self effectType];
  v10 = [(BSUIVibrancyConfiguration *)self color];
  v11 = [(BSUIVibrancyConfiguration *)self groupName];
  [(BSUIVibrancyConfiguration *)self blendAmount];
  v13 = v12;
  v14 = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
  v15 = [(BSUIVibrancyConfiguration *)v8 initWithEffectType:v9 backgroundType:a3 color:v10 groupName:v11 blendConfiguration:v7 blendAmount:v14 alternativeVibrancyEffectLUT:v13];

  return v15;
}

- (id)copyWithAlternativeVibrancyEffectLUT:(id)a3
{
  v4 = a3;
  v5 = [BSUIVibrancyConfiguration alloc];
  v6 = [(BSUIVibrancyConfiguration *)self effectType];
  v7 = [(BSUIVibrancyConfiguration *)self backgroundType];
  v8 = [(BSUIVibrancyConfiguration *)self color];
  v9 = [(BSUIVibrancyConfiguration *)self groupName];
  v10 = [(BSUIVibrancyConfiguration *)self blendConfiguration];
  [(BSUIVibrancyConfiguration *)self blendAmount];
  v11 = [(BSUIVibrancyConfiguration *)v5 initWithEffectType:v6 backgroundType:v7 color:v8 groupName:v9 blendConfiguration:v10 blendAmount:v4 alternativeVibrancyEffectLUT:?];

  return v11;
}

- (BSUIVibrancyEffectValues)effectValues
{
  v2 = self;
  objc_sync_enter(v2);
  effectValues = v2->_effectValues;
  if (!effectValues)
  {
    v4 = [(BSUIVibrancyValues *)[BSUIVibrancyEffectValues alloc] initWithConfiguration:v2];
    v5 = v2->_effectValues;
    v2->_effectValues = v4;

    effectValues = v2->_effectValues;
  }

  v6 = effectValues;
  objc_sync_exit(v2);

  return v6;
}

- (BSUIVibrancyShadowValues)shadowValues
{
  v2 = self;
  objc_sync_enter(v2);
  shadowValues = v2->_shadowValues;
  if (!shadowValues)
  {
    v4 = [(BSUIVibrancyValues *)[BSUIVibrancyShadowValues alloc] initWithConfiguration:v2];
    v5 = v2->_shadowValues;
    v2->_shadowValues = v4;

    shadowValues = v2->_shadowValues;
  }

  v6 = shadowValues;
  objc_sync_exit(v2);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v25 = 1;
  }

  else
  {
    v6 = v4;
    v7 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && ([(BSUIVibrancyConfiguration *)self color], v9 = objc_claimAutoreleasedReturnValue(), [(BSUIVibrancyConfiguration *)v6 color], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11) && ([(BSUIVibrancyConfiguration *)self groupName], v12 = objc_claimAutoreleasedReturnValue(), [(BSUIVibrancyConfiguration *)v6 groupName], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14) && (v15 = [(BSUIVibrancyConfiguration *)self effectType], v15 == [(BSUIVibrancyConfiguration *)v6 effectType]) && (v16 = [(BSUIVibrancyConfiguration *)self backgroundType], v16 == [(BSUIVibrancyConfiguration *)v6 backgroundType]) && ([(BSUIVibrancyConfiguration *)self blendConfiguration], v17 = objc_claimAutoreleasedReturnValue(), [(BSUIVibrancyConfiguration *)v6 blendConfiguration], v18 = objc_claimAutoreleasedReturnValue(), v19 = BSEqualObjects(), v18, v17, v19) && ([(BSUIVibrancyConfiguration *)self blendAmount], v21 = v20, [(BSUIVibrancyConfiguration *)v6 blendAmount], v21 == v22))
    {
      v23 = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
      v24 = [(BSUIVibrancyConfiguration *)v6 alternativeVibrancyEffectLUT];
      v25 = BSEqualObjects();
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (unint64_t)hash
{
  v3 = [(BSUIVibrancyConfiguration *)self color];
  v4 = [v3 hash];

  v5 = [(BSUIVibrancyConfiguration *)self groupName];
  v6 = [v5 hash];

  v7 = [(BSUIVibrancyConfiguration *)self effectType];
  v8 = [(BSUIVibrancyConfiguration *)self backgroundType];
  v9 = [(BSUIVibrancyConfiguration *)self blendConfiguration];
  v10 = [v9 hash];

  [(BSUIVibrancyConfiguration *)self blendAmount];
  v12 = v11;
  v13 = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
  v14 = [v13 hash];
  v15 = v7 - (v6 - v4 + 32 * v4) + 32 * (v6 - v4 + 32 * v4);
  v16 = ((31 * (v10 - (v8 - v15 + 32 * v15) + 32 * (v8 - v15 + 32 * v15)) + 887503681) + v12 * 100.0);
  v17 = v14 - v16 + 32 * v16;

  return v17;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    MEMORY[0x1EEDF0408](a1, 0);
  }
}

- (id)membersForCoder
{
  v25[7] = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = @"_effectType";
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v23 = v2;
  v24 = _BSAutoMember();
  v25[0] = v24;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = @"_backgroundType";
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v21 = v3;
  v22 = _BSAutoMember();
  v25[1] = v22;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = @"_color";
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v20 = v4;
  v5 = _BSAutoMember();
  v25[2] = v5;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = @"_groupName";
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = _BSAutoMember();
  v25[3] = v8;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = @"_blendConfiguration";
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = _BSAutoMember();
  v25[4] = v11;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = @"_blendAmount";
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = _BSAutoMember();
  v25[5] = v14;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = @"_alternativeVibrancyEffectLUT";
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = _BSAutoMember();
  v25[6] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:{7, 0}];

  return v18;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v15 = a3;
  v4 = [v15 appendInt64:-[BSUIVibrancyConfiguration effectType](self withName:{"effectType"), @"effectType"}];
  v5 = [v15 appendInt64:-[BSUIVibrancyConfiguration backgroundType](self withName:{"backgroundType"), @"backgroundType"}];
  v6 = [(BSUIVibrancyConfiguration *)self color];
  v7 = [v15 appendObject:v6 withName:@"color"];

  v8 = [(BSUIVibrancyConfiguration *)self groupName];
  v9 = [v15 appendObject:v8 withName:@"groupName"];

  v10 = [(BSUIVibrancyConfiguration *)self blendConfiguration];
  v11 = [v15 appendObject:v10 withName:@"blendConfiguration"];

  [(BSUIVibrancyConfiguration *)self blendAmount];
  v12 = [v15 appendFloat:@"blendAmount" withName:?];
  v13 = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
  v14 = [v15 appendObject:v13 withName:@"alternativeVibrancyEffectLUT"];
}

@end