@interface BKSButtonHapticsDefinition
+ (id)definitionForHomeButton;
- (BKSButtonHapticsDefinition)init;
- (BKSButtonHapticsDefinition)initWithCoder:(id)a3;
- (double)maximumLongPressTimeInterval;
- (double)maximumMultiplePressTimeInterval;
- (double)minimumLongPressTimeInterval;
- (double)minimumMultiplePressTimeInterval;
- (id)_initWithBSSettings:(id)a3;
- (id)description;
- (int64_t)clickHapticAssetType;
- (int64_t)isLongPressEnabled;
- (int64_t)maximumPressCount;
- (int64_t)maximumTapCount;
- (void)encodeWithCoder:(id)a3;
- (void)setClickHapticAssetType:(int64_t)a3;
- (void)setMaximumLongPressTimeInterval:(double)a3;
- (void)setMaximumMultiplePressTimeInterval:(double)a3;
- (void)setMaximumPressCount:(int64_t)a3;
- (void)setMaximumTapCount:(int64_t)a3;
- (void)setMinimumLongPressTimeInterval:(double)a3;
- (void)setMinimumMultiplePressTimeInterval:(double)a3;
- (void)updateFromDefinition:(id)a3 withChangeInspectorBlock:(id)a4;
@end

@implementation BKSButtonHapticsDefinition

- (int64_t)maximumPressCount
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:10];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(BKSButtonHapticsDefinition *)self minimumMultiplePressTimeInterval];
  [v4 encodeDouble:@"minimumMultiplePressTimeInterval" forKey:?];
  [(BKSButtonHapticsDefinition *)self maximumMultiplePressTimeInterval];
  [v4 encodeDouble:@"maximumMultiplePressTimeInterval" forKey:?];
  [(BKSButtonHapticsDefinition *)self minimumLongPressTimeInterval];
  [v4 encodeDouble:@"minimumLongPressTimeInterval" forKey:?];
  [(BKSButtonHapticsDefinition *)self maximumLongPressTimeInterval];
  [v4 encodeDouble:@"maximumLongPressTimeInterval" forKey:?];
  [v4 encodeInteger:-[BKSButtonHapticsDefinition maximumTapCount](self forKey:{"maximumTapCount"), @"maximumTapCount"}];
  [v4 encodeInteger:-[BKSButtonHapticsDefinition maximumPressCount](self forKey:{"maximumPressCount"), @"maximumPressCount"}];
  [v4 encodeInteger:-[BKSButtonHapticsDefinition clickHapticAssetType](self forKey:{"clickHapticAssetType"), @"clickHapticAssetType"}];
  [v4 encodeBool:self->_representsHomeButton forKey:@"representsHomeButton"];
}

- (BKSButtonHapticsDefinition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BKSButtonHapticsDefinition *)self init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"minimumMultiplePressTimeInterval"];
    [(BKSButtonHapticsDefinition *)v5 setMinimumMultiplePressTimeInterval:?];
    [v4 decodeDoubleForKey:@"maximumMultiplePressTimeInterval"];
    [(BKSButtonHapticsDefinition *)v5 setMaximumMultiplePressTimeInterval:?];
    [v4 decodeDoubleForKey:@"minimumLongPressTimeInterval"];
    [(BKSButtonHapticsDefinition *)v5 setMinimumLongPressTimeInterval:?];
    [v4 decodeDoubleForKey:@"maximumLongPressTimeInterval"];
    [(BKSButtonHapticsDefinition *)v5 setMaximumLongPressTimeInterval:?];
    -[BKSButtonHapticsDefinition setMaximumTapCount:](v5, "setMaximumTapCount:", [v4 decodeIntegerForKey:@"maximumTapCount"]);
    -[BKSButtonHapticsDefinition setMaximumPressCount:](v5, "setMaximumPressCount:", [v4 decodeIntegerForKey:@"maximumPressCount"]);
    -[BKSButtonHapticsDefinition setClickHapticAssetType:](v5, "setClickHapticAssetType:", [v4 decodeIntegerForKey:@"clickHapticAssetType"]);
    v5->_representsHomeButton = [v4 decodeBoolForKey:@"representsHomeButton"];
  }

  return v5;
}

- (void)updateFromDefinition:(id)a3 withChangeInspectorBlock:(id)a4
{
  v6 = a4;
  v7 = self->_settings;
  v8 = [a3 _BSSettings];
  v9 = [MEMORY[0x1E698E770] diffFromSettings:v7 toSettings:v8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__BKSButtonHapticsDefinition_updateFromDefinition_withChangeInspectorBlock___block_invoke;
  v13[3] = &unk_1E6F47418;
  v15 = v7;
  v16 = v6;
  v14 = v8;
  v10 = v7;
  v11 = v6;
  v12 = v8;
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

- (void)setClickHapticAssetType:(int64_t)a3
{
  if (a3 < 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"assetType >= BKSButtonHapticAssetTypeUndefined"}];

    goto LABEL_3;
  }

  if (a3)
  {
LABEL_3:
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (void)setMaximumLongPressTimeInterval:(double)a3
{
  if (a3 > 30.0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"longPressTimeInterval <= BK_MAX_TIMEOUT_SECONDS"}];
  }

  if (a3 < -1.0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"longPressTimeInterval >= BKSButtonDefinitionUnspecifiedValue"}];
  }

  if (a3 == -1.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
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

- (void)setMinimumLongPressTimeInterval:(double)a3
{
  if (a3 > 30.0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"longPressTimeInterval <= BK_MAX_TIMEOUT_SECONDS"}];
  }

  if (a3 < -1.0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"longPressTimeInterval >= BKSButtonDefinitionUnspecifiedValue"}];
  }

  if (a3 == -1.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
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

- (void)setMaximumMultiplePressTimeInterval:(double)a3
{
  if (a3 > 30.0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"multiplePressTimeInterval <= BK_MAX_TIMEOUT_SECONDS"}];
  }

  if (a3 < -1.0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"multiplePressTimeInterval >= BKSButtonDefinitionUnspecifiedValue"}];
  }

  if (a3 == -1.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  }

  v9 = v6;
  [(BSMutableSettings *)self->_settings setObject:v6 forSetting:13];
}

- (void)setMinimumMultiplePressTimeInterval:(double)a3
{
  if (a3 > 30.0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"multiplePressTimeInterval <= BK_MAX_TIMEOUT_SECONDS"}];
  }

  if (a3 < -1.0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"multiplePressTimeInterval >= BKSButtonDefinitionUnspecifiedValue"}];
  }

  if (a3 == -1.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
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

- (void)setMaximumPressCount:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    if (a3 == -1)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"maximumPressCount == BKSButtonDefinitionUnspecifiedValue || (maximumPressCount >= 1 && maximumPressCount <= BKSButtonDefinitionMaximumSupportedPressCount)"}];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
LABEL_6:
  v8 = v5;
  [(BSMutableSettings *)self->_settings setObject:v5 forSetting:10];
}

- (void)setMaximumTapCount:(int64_t)a3
{
  if ((a3 - 4) <= 0xFFFFFFFFFFFFFFFALL)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"BKSButtonHapticsDefinition.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"maximumTapCount == BKSButtonDefinitionUnspecifiedValue || (maximumTapCount >= 0 && maximumTapCount <= BKSButtonDefinitionMaximumSupportedPressCount)"}];

    goto LABEL_3;
  }

  if (a3 != -1)
  {
LABEL_3:
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
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
  v12 = [v3 build];

  return v12;
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

- (id)_initWithBSSettings:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BKSButtonHapticsDefinition;
  v5 = [(BKSButtonHapticsDefinition *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
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