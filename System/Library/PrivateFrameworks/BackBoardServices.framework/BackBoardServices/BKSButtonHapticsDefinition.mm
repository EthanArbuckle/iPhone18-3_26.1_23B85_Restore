@interface BKSButtonHapticsDefinition
+ (id)definitionForHomeButton;
- (BKSButtonHapticsDefinition)init;
- (BKSButtonHapticsDefinition)initWithCoder:(id)coder;
- (double)maximumLongPressTimeInterval;
- (double)maximumMultiplePressTimeInterval;
- (double)minimumLongPressTimeInterval;
- (double)minimumMultiplePressTimeInterval;
- (id)_initWithBSSettings:(id)settings;
- (id)description;
- (int64_t)clickHapticAssetType;
- (int64_t)isLongPressEnabled;
- (int64_t)maximumPressCount;
- (int64_t)maximumTapCount;
- (void)encodeWithCoder:(id)coder;
- (void)setClickHapticAssetType:(int64_t)type;
- (void)setMaximumLongPressTimeInterval:(double)interval;
- (void)setMaximumMultiplePressTimeInterval:(double)interval;
- (void)setMaximumPressCount:(int64_t)count;
- (void)setMaximumTapCount:(int64_t)count;
- (void)setMinimumLongPressTimeInterval:(double)interval;
- (void)setMinimumMultiplePressTimeInterval:(double)interval;
- (void)updateFromDefinition:(id)definition withChangeInspectorBlock:(id)block;
@end

@implementation BKSButtonHapticsDefinition

- (int64_t)maximumPressCount
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:10];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (double)maximumMultiplePressTimeInterval
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:13];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(BKSButtonHapticsDefinition *)self minimumMultiplePressTimeInterval];
  [coderCopy encodeDouble:@"minimumMultiplePressTimeInterval" forKey:?];
  [(BKSButtonHapticsDefinition *)self maximumMultiplePressTimeInterval];
  [coderCopy encodeDouble:@"maximumMultiplePressTimeInterval" forKey:?];
  [(BKSButtonHapticsDefinition *)self minimumLongPressTimeInterval];
  [coderCopy encodeDouble:@"minimumLongPressTimeInterval" forKey:?];
  [(BKSButtonHapticsDefinition *)self maximumLongPressTimeInterval];
  [coderCopy encodeDouble:@"maximumLongPressTimeInterval" forKey:?];
  [coderCopy encodeInteger:-[BKSButtonHapticsDefinition maximumTapCount](self forKey:{"maximumTapCount"), @"maximumTapCount"}];
  [coderCopy encodeInteger:-[BKSButtonHapticsDefinition maximumPressCount](self forKey:{"maximumPressCount"), @"maximumPressCount"}];
  [coderCopy encodeInteger:-[BKSButtonHapticsDefinition clickHapticAssetType](self forKey:{"clickHapticAssetType"), @"clickHapticAssetType"}];
  [coderCopy encodeBool:self->_representsHomeButton forKey:@"representsHomeButton"];
}

- (BKSButtonHapticsDefinition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BKSButtonHapticsDefinition *)self init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"minimumMultiplePressTimeInterval"];
    [(BKSButtonHapticsDefinition *)v5 setMinimumMultiplePressTimeInterval:?];
    [coderCopy decodeDoubleForKey:@"maximumMultiplePressTimeInterval"];
    [(BKSButtonHapticsDefinition *)v5 setMaximumMultiplePressTimeInterval:?];
    [coderCopy decodeDoubleForKey:@"minimumLongPressTimeInterval"];
    [(BKSButtonHapticsDefinition *)v5 setMinimumLongPressTimeInterval:?];
    [coderCopy decodeDoubleForKey:@"maximumLongPressTimeInterval"];
    [(BKSButtonHapticsDefinition *)v5 setMaximumLongPressTimeInterval:?];
    -[BKSButtonHapticsDefinition setMaximumTapCount:](v5, "setMaximumTapCount:", [coderCopy decodeIntegerForKey:@"maximumTapCount"]);
    -[BKSButtonHapticsDefinition setMaximumPressCount:](v5, "setMaximumPressCount:", [coderCopy decodeIntegerForKey:@"maximumPressCount"]);
    -[BKSButtonHapticsDefinition setClickHapticAssetType:](v5, "setClickHapticAssetType:", [coderCopy decodeIntegerForKey:@"clickHapticAssetType"]);
    v5->_representsHomeButton = [coderCopy decodeBoolForKey:@"representsHomeButton"];
  }

  return v5;
}

- (void)updateFromDefinition:(id)definition withChangeInspectorBlock:(id)block
{
  blockCopy = block;
  v7 = self->_settings;
  _BSSettings = [definition _BSSettings];
  v9 = [MEMORY[0x1E698E770] diffFromSettings:v7 toSettings:_BSSettings];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__BKSButtonHapticsDefinition_updateFromDefinition_withChangeInspectorBlock___block_invoke;
  v13[3] = &unk_1E6F47418;
  v15 = v7;
  v16 = blockCopy;
  v14 = _BSSettings;
  v10 = v7;
  v11 = blockCopy;
  v12 = _BSSettings;
  [v9 inspectChangesWithBlock:v13];
}

uint64_t __76__BKSButtonHapticsDefinition_updateFromDefinition_withChangeInspectorBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForSetting:a2];
  if (v4)
  {
    v6 = v4;
    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) setObject:v6 forSetting:a2];
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)setClickHapticAssetType:(int64_t)type
{
  if (type < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"assetType >= BKSButtonHapticAssetTypeUndefined"}];

    goto LABEL_3;
  }

  if (type)
  {
LABEL_3:
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_5:
  v8 = v5;
  [(BSMutableSettings *)self->_settings setObject:v5 forSetting:16];
}

- (int64_t)clickHapticAssetType
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:16];
  v3 = v2;
  if (v2 && [v2 integerValue])
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)isLongPressEnabled
{
  [(BKSButtonHapticsDefinition *)self minimumLongPressTimeInterval];
  v4 = v3;
  [(BKSButtonHapticsDefinition *)self maximumLongPressTimeInterval];
  v6 = fmax(v4, v5);
  if (v5 < 0.0 && v4 < 0.0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v6 > 0.0;
  }
}

- (void)setMaximumLongPressTimeInterval:(double)interval
{
  if (interval > 30.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"longPressTimeInterval <= BK_MAX_TIMEOUT_SECONDS"}];
  }

  if (interval < -1.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"longPressTimeInterval >= BKSButtonDefinitionUnspecifiedValue"}];
  }

  if (interval == -1.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
  }

  v9 = v6;
  [(BSMutableSettings *)self->_settings setObject:v6 forSetting:15];
}

- (double)maximumLongPressTimeInterval
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:15];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (void)setMinimumLongPressTimeInterval:(double)interval
{
  if (interval > 30.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"longPressTimeInterval <= BK_MAX_TIMEOUT_SECONDS"}];
  }

  if (interval < -1.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"longPressTimeInterval >= BKSButtonDefinitionUnspecifiedValue"}];
  }

  if (interval == -1.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
  }

  v9 = v6;
  [(BSMutableSettings *)self->_settings setObject:v6 forSetting:14];
}

- (double)minimumLongPressTimeInterval
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:14];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (void)setMaximumMultiplePressTimeInterval:(double)interval
{
  if (interval > 30.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"multiplePressTimeInterval <= BK_MAX_TIMEOUT_SECONDS"}];
  }

  if (interval < -1.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"multiplePressTimeInterval >= BKSButtonDefinitionUnspecifiedValue"}];
  }

  if (interval == -1.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
  }

  v9 = v6;
  [(BSMutableSettings *)self->_settings setObject:v6 forSetting:13];
}

- (void)setMinimumMultiplePressTimeInterval:(double)interval
{
  if (interval > 30.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"multiplePressTimeInterval <= BK_MAX_TIMEOUT_SECONDS"}];
  }

  if (interval < -1.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"multiplePressTimeInterval >= BKSButtonDefinitionUnspecifiedValue"}];
  }

  if (interval == -1.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
  }

  v9 = v6;
  [(BSMutableSettings *)self->_settings setObject:v6 forSetting:12];
}

- (double)minimumMultiplePressTimeInterval
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:12];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (void)setMaximumPressCount:(int64_t)count
{
  if ((count - 1) >= 3)
  {
    if (count == -1)
    {
      v5 = 0;
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"maximumPressCount == BKSButtonDefinitionUnspecifiedValue || (maximumPressCount >= 1 && maximumPressCount <= BKSButtonDefinitionMaximumSupportedPressCount)"}];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:count];
LABEL_6:
  v8 = v5;
  [(BSMutableSettings *)self->_settings setObject:v5 forSetting:10];
}

- (void)setMaximumTapCount:(int64_t)count
{
  if ((count - 4) <= 0xFFFFFFFFFFFFFFFALL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"maximumTapCount == BKSButtonDefinitionUnspecifiedValue || (maximumTapCount >= 0 && maximumTapCount <= BKSButtonDefinitionMaximumSupportedPressCount)"}];

    goto LABEL_3;
  }

  if (count != -1)
  {
LABEL_3:
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_5:
  v8 = v5;
  [(BSMutableSettings *)self->_settings setObject:v5 forSetting:11];
}

- (int64_t)maximumTapCount
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:11];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_representsHomeButton withName:@"representsHomeButton"];
  v5 = [v3 appendInteger:-[BKSButtonHapticsDefinition maximumTapCount](self withName:{"maximumTapCount"), @"maximumTapCount"}];
  v6 = [v3 appendInteger:-[BKSButtonHapticsDefinition maximumPressCount](self withName:{"maximumPressCount"), @"maximumPressCount"}];
  [(BKSButtonHapticsDefinition *)self minimumMultiplePressTimeInterval];
  v7 = [v3 appendDouble:@"minimumMultiplePressTimeInterval" withName:2 decimalPrecision:?];
  [(BKSButtonHapticsDefinition *)self maximumMultiplePressTimeInterval];
  v8 = [v3 appendDouble:@"maximumMultiplePressTimeInterval" withName:2 decimalPrecision:?];
  [(BKSButtonHapticsDefinition *)self minimumLongPressTimeInterval];
  v9 = [v3 appendDouble:@"minimumLongPressTimeInterval" withName:2 decimalPrecision:?];
  [(BKSButtonHapticsDefinition *)self maximumLongPressTimeInterval];
  v10 = [v3 appendDouble:@"maximumLongPressTimeInterval" withName:2 decimalPrecision:?];
  v11 = [v3 appendInteger:-[BKSButtonHapticsDefinition clickHapticAssetType](self withName:{"clickHapticAssetType"), @"clickHapticAssetType"}];
  build = [v3 build];

  return build;
}

- (BKSButtonHapticsDefinition)init
{
  v6.receiver = self;
  v6.super_class = BKSButtonHapticsDefinition;
  v2 = [(BKSButtonHapticsDefinition *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698E700]);
    settings = v2->_settings;
    v2->_settings = v3;
  }

  return v2;
}

- (id)_initWithBSSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = BKSButtonHapticsDefinition;
  v5 = [(BKSButtonHapticsDefinition *)&v9 init];
  if (v5)
  {
    v6 = [settingsCopy mutableCopy];
    settings = v5->_settings;
    v5->_settings = v6;
  }

  return v5;
}

+ (id)definitionForHomeButton
{
  v2 = objc_alloc_init(BKSButtonHapticsDefinition);
  [(BKSButtonHapticsDefinition *)v2 setRepresentsHomeButton:1];

  return v2;
}

@end