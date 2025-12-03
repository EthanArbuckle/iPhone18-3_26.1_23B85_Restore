@interface BSUIVibrancyConfiguration
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BSUIVibrancyConfiguration)init;
- (BSUIVibrancyConfiguration)initWithEffectType:(int64_t)type backgroundType:(int64_t)backgroundType color:(id)color groupName:(id)name blendConfiguration:(id)configuration blendAmount:(double)amount alternativeVibrancyEffectLUT:(id)t;
- (BSUIVibrancyEffectValues)effectValues;
- (BSUIVibrancyShadowValues)shadowValues;
- (id)copyWithAlternativeVibrancyEffectLUT:(id)t;
- (id)copyWithBlendAmount:(double)amount blendConfiguration:(id)configuration;
- (id)copyWithBlendAmount:(double)amount blendConfiguration:(id)configuration alternativeVibrancyEffectLUT:(id)t;
- (id)copyWithEffectType:(int64_t)type color:(id)color;
- (id)copyWithGroupName:(id)name;
- (id)copyWithWithBackgroundType:(int64_t)type;
- (id)membersForCoder;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BSUIVibrancyConfiguration

- (BSUIVibrancyConfiguration)init
{
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5];
  v4 = [(BSUIVibrancyConfiguration *)self initWithEffectType:0 backgroundType:0 color:v3];

  return v4;
}

- (BSUIVibrancyConfiguration)initWithEffectType:(int64_t)type backgroundType:(int64_t)backgroundType color:(id)color groupName:(id)name blendConfiguration:(id)configuration blendAmount:(double)amount alternativeVibrancyEffectLUT:(id)t
{
  colorCopy = color;
  nameCopy = name;
  configurationCopy = configuration;
  tCopy = t;
  v31.receiver = self;
  v31.super_class = BSUIVibrancyConfiguration;
  v20 = [(BSUIVibrancyConfiguration *)&v31 init];
  v21 = v20;
  if (v20)
  {
    v20->_effectType = type;
    v20->_backgroundType = backgroundType;
    v22 = [colorCopy copy];
    color = v21->_color;
    v21->_color = v22;

    v24 = [nameCopy copy];
    groupName = v21->_groupName;
    v21->_groupName = v24;

    v26 = [configurationCopy copy];
    blendConfiguration = v21->_blendConfiguration;
    v21->_blendConfiguration = v26;

    v21->_blendAmount = amount;
    v28 = [tCopy copy];
    alternativeVibrancyEffectLUT = v21->_alternativeVibrancyEffectLUT;
    v21->_alternativeVibrancyEffectLUT = v28;
  }

  return v21;
}

- (id)copyWithGroupName:(id)name
{
  nameCopy = name;
  v5 = [BSUIVibrancyConfiguration alloc];
  effectType = [(BSUIVibrancyConfiguration *)self effectType];
  backgroundType = [(BSUIVibrancyConfiguration *)self backgroundType];
  color = [(BSUIVibrancyConfiguration *)self color];
  blendConfiguration = [(BSUIVibrancyConfiguration *)self blendConfiguration];
  [(BSUIVibrancyConfiguration *)self blendAmount];
  v11 = v10;
  alternativeVibrancyEffectLUT = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
  v13 = [(BSUIVibrancyConfiguration *)v5 initWithEffectType:effectType backgroundType:backgroundType color:color groupName:nameCopy blendConfiguration:blendConfiguration blendAmount:alternativeVibrancyEffectLUT alternativeVibrancyEffectLUT:v11];

  return v13;
}

- (id)copyWithBlendAmount:(double)amount blendConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7 = [BSUIVibrancyConfiguration alloc];
  effectType = [(BSUIVibrancyConfiguration *)self effectType];
  backgroundType = [(BSUIVibrancyConfiguration *)self backgroundType];
  color = [(BSUIVibrancyConfiguration *)self color];
  groupName = [(BSUIVibrancyConfiguration *)self groupName];
  alternativeVibrancyEffectLUT = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
  v13 = [(BSUIVibrancyConfiguration *)v7 initWithEffectType:effectType backgroundType:backgroundType color:color groupName:groupName blendConfiguration:configurationCopy blendAmount:alternativeVibrancyEffectLUT alternativeVibrancyEffectLUT:amount];

  return v13;
}

- (id)copyWithBlendAmount:(double)amount blendConfiguration:(id)configuration alternativeVibrancyEffectLUT:(id)t
{
  configurationCopy = configuration;
  tCopy = t;
  v10 = [BSUIVibrancyConfiguration alloc];
  effectType = [(BSUIVibrancyConfiguration *)self effectType];
  backgroundType = [(BSUIVibrancyConfiguration *)self backgroundType];
  color = [(BSUIVibrancyConfiguration *)self color];
  groupName = [(BSUIVibrancyConfiguration *)self groupName];
  v15 = [(BSUIVibrancyConfiguration *)v10 initWithEffectType:effectType backgroundType:backgroundType color:color groupName:groupName blendConfiguration:configurationCopy blendAmount:tCopy alternativeVibrancyEffectLUT:amount];

  return v15;
}

- (id)copyWithEffectType:(int64_t)type color:(id)color
{
  colorCopy = color;
  blendConfiguration = [(BSUIVibrancyConfiguration *)self blendConfiguration];

  if (blendConfiguration)
  {
    blendConfiguration2 = [(BSUIVibrancyConfiguration *)self blendConfiguration];
    v9 = [blendConfiguration2 copyWithEffectType:type color:colorCopy];
  }

  else
  {
    v9 = 0;
  }

  v10 = [BSUIVibrancyConfiguration alloc];
  backgroundType = [(BSUIVibrancyConfiguration *)self backgroundType];
  groupName = [(BSUIVibrancyConfiguration *)self groupName];
  [(BSUIVibrancyConfiguration *)self blendAmount];
  v14 = v13;
  alternativeVibrancyEffectLUT = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
  v16 = [(BSUIVibrancyConfiguration *)v10 initWithEffectType:type backgroundType:backgroundType color:colorCopy groupName:groupName blendConfiguration:v9 blendAmount:alternativeVibrancyEffectLUT alternativeVibrancyEffectLUT:v14];

  return v16;
}

- (id)copyWithWithBackgroundType:(int64_t)type
{
  blendConfiguration = [(BSUIVibrancyConfiguration *)self blendConfiguration];

  if (blendConfiguration)
  {
    blendConfiguration2 = [(BSUIVibrancyConfiguration *)self blendConfiguration];
    v7 = [blendConfiguration2 copyWithWithBackgroundType:type];
  }

  else
  {
    v7 = 0;
  }

  v8 = [BSUIVibrancyConfiguration alloc];
  effectType = [(BSUIVibrancyConfiguration *)self effectType];
  color = [(BSUIVibrancyConfiguration *)self color];
  groupName = [(BSUIVibrancyConfiguration *)self groupName];
  [(BSUIVibrancyConfiguration *)self blendAmount];
  v13 = v12;
  alternativeVibrancyEffectLUT = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
  v15 = [(BSUIVibrancyConfiguration *)v8 initWithEffectType:effectType backgroundType:type color:color groupName:groupName blendConfiguration:v7 blendAmount:alternativeVibrancyEffectLUT alternativeVibrancyEffectLUT:v13];

  return v15;
}

- (id)copyWithAlternativeVibrancyEffectLUT:(id)t
{
  tCopy = t;
  v5 = [BSUIVibrancyConfiguration alloc];
  effectType = [(BSUIVibrancyConfiguration *)self effectType];
  backgroundType = [(BSUIVibrancyConfiguration *)self backgroundType];
  color = [(BSUIVibrancyConfiguration *)self color];
  groupName = [(BSUIVibrancyConfiguration *)self groupName];
  blendConfiguration = [(BSUIVibrancyConfiguration *)self blendConfiguration];
  [(BSUIVibrancyConfiguration *)self blendAmount];
  v11 = [(BSUIVibrancyConfiguration *)v5 initWithEffectType:effectType backgroundType:backgroundType color:color groupName:groupName blendConfiguration:blendConfiguration blendAmount:tCopy alternativeVibrancyEffectLUT:?];

  return v11;
}

- (BSUIVibrancyEffectValues)effectValues
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  effectValues = selfCopy->_effectValues;
  if (!effectValues)
  {
    v4 = [(BSUIVibrancyValues *)[BSUIVibrancyEffectValues alloc] initWithConfiguration:selfCopy];
    v5 = selfCopy->_effectValues;
    selfCopy->_effectValues = v4;

    effectValues = selfCopy->_effectValues;
  }

  v6 = effectValues;
  objc_sync_exit(selfCopy);

  return v6;
}

- (BSUIVibrancyShadowValues)shadowValues
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shadowValues = selfCopy->_shadowValues;
  if (!shadowValues)
  {
    v4 = [(BSUIVibrancyValues *)[BSUIVibrancyShadowValues alloc] initWithConfiguration:selfCopy];
    v5 = selfCopy->_shadowValues;
    selfCopy->_shadowValues = v4;

    shadowValues = selfCopy->_shadowValues;
  }

  v6 = shadowValues;
  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v25 = 1;
  }

  else
  {
    v6 = equalCopy;
    v7 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && ([(BSUIVibrancyConfiguration *)self color], v9 = objc_claimAutoreleasedReturnValue(), [(BSUIVibrancyConfiguration *)v6 color], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11) && ([(BSUIVibrancyConfiguration *)self groupName], v12 = objc_claimAutoreleasedReturnValue(), [(BSUIVibrancyConfiguration *)v6 groupName], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14) && (v15 = [(BSUIVibrancyConfiguration *)self effectType], v15 == [(BSUIVibrancyConfiguration *)v6 effectType]) && (v16 = [(BSUIVibrancyConfiguration *)self backgroundType], v16 == [(BSUIVibrancyConfiguration *)v6 backgroundType]) && ([(BSUIVibrancyConfiguration *)self blendConfiguration], v17 = objc_claimAutoreleasedReturnValue(), [(BSUIVibrancyConfiguration *)v6 blendConfiguration], v18 = objc_claimAutoreleasedReturnValue(), v19 = BSEqualObjects(), v18, v17, v19) && ([(BSUIVibrancyConfiguration *)self blendAmount], v21 = v20, [(BSUIVibrancyConfiguration *)v6 blendAmount], v21 == v22))
    {
      alternativeVibrancyEffectLUT = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
      alternativeVibrancyEffectLUT2 = [(BSUIVibrancyConfiguration *)v6 alternativeVibrancyEffectLUT];
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
  color = [(BSUIVibrancyConfiguration *)self color];
  v4 = [color hash];

  groupName = [(BSUIVibrancyConfiguration *)self groupName];
  v6 = [groupName hash];

  effectType = [(BSUIVibrancyConfiguration *)self effectType];
  backgroundType = [(BSUIVibrancyConfiguration *)self backgroundType];
  blendConfiguration = [(BSUIVibrancyConfiguration *)self blendConfiguration];
  v10 = [blendConfiguration hash];

  [(BSUIVibrancyConfiguration *)self blendAmount];
  v12 = v11;
  alternativeVibrancyEffectLUT = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
  v14 = [alternativeVibrancyEffectLUT hash];
  v15 = effectType - (v6 - v4 + 32 * v4) + 32 * (v6 - v4 + 32 * v4);
  v16 = ((31 * (v10 - (backgroundType - v15 + 32 * v15) + 32 * (backgroundType - v15 + 32 * v15)) + 887503681) + v12 * 100.0);
  v17 = v14 - v16 + 32 * v16;

  return v17;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x1EEDF0408](self, 0);
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

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendInt64:-[BSUIVibrancyConfiguration effectType](self withName:{"effectType"), @"effectType"}];
  v5 = [formatterCopy appendInt64:-[BSUIVibrancyConfiguration backgroundType](self withName:{"backgroundType"), @"backgroundType"}];
  color = [(BSUIVibrancyConfiguration *)self color];
  v7 = [formatterCopy appendObject:color withName:@"color"];

  groupName = [(BSUIVibrancyConfiguration *)self groupName];
  v9 = [formatterCopy appendObject:groupName withName:@"groupName"];

  blendConfiguration = [(BSUIVibrancyConfiguration *)self blendConfiguration];
  v11 = [formatterCopy appendObject:blendConfiguration withName:@"blendConfiguration"];

  [(BSUIVibrancyConfiguration *)self blendAmount];
  v12 = [formatterCopy appendFloat:@"blendAmount" withName:?];
  alternativeVibrancyEffectLUT = [(BSUIVibrancyConfiguration *)self alternativeVibrancyEffectLUT];
  v14 = [formatterCopy appendObject:alternativeVibrancyEffectLUT withName:@"alternativeVibrancyEffectLUT"];
}

@end