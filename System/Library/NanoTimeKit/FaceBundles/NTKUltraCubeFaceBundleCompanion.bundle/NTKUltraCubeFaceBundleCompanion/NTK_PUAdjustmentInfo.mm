@interface NTK_PUAdjustmentInfo
- (double)normalizedCurrentLevel;
- (double)normalizedDefaultLevel;
- (id)copy;
- (id)description;
- (void)setCurrentLevel:(double)a3;
- (void)setLastAdjustedLevel:(double)a3;
@end

@implementation NTK_PUAdjustmentInfo

- (id)copy
{
  result = [(NTK_PUAdjustmentInfo *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (double)normalizedCurrentLevel
{
  [(NTK_PUAdjustmentInfo *)self maximumLevel];
  v4 = v3;
  [(NTK_PUAdjustmentInfo *)self minimumLevel];
  if (v4 <= v5)
  {
    return 2.22507386e-308;
  }

  [(NTK_PUAdjustmentInfo *)self currentLevel];
  v7 = v6;
  [(NTK_PUAdjustmentInfo *)self minimumLevel];
  v9 = v7 - v8;
  [(NTK_PUAdjustmentInfo *)self maximumLevel];
  v11 = v10;
  [(NTK_PUAdjustmentInfo *)self minimumLevel];
  return v9 / (v11 - v12);
}

- (double)normalizedDefaultLevel
{
  [(NTK_PUAdjustmentInfo *)self maximumLevel];
  v4 = v3;
  [(NTK_PUAdjustmentInfo *)self minimumLevel];
  if (v4 <= v5)
  {
    return 2.22507386e-308;
  }

  [(NTK_PUAdjustmentInfo *)self defaultLevel];
  v7 = v6;
  [(NTK_PUAdjustmentInfo *)self minimumLevel];
  v9 = v7 - v8;
  [(NTK_PUAdjustmentInfo *)self maximumLevel];
  v11 = v10;
  [(NTK_PUAdjustmentInfo *)self minimumLevel];
  return v9 / (v11 - v12);
}

- (void)setCurrentLevel:(double)a3
{
  if (self->_currentLevel != a3)
  {
    [(NTK_PUAdjustmentInfo *)self setLastAdjustedLevel:?];
    self->_currentLevel = a3;
  }
}

- (void)setLastAdjustedLevel:(double)a3
{
  if (self->_lastAdjustedLevel != a3)
  {
    self->_lastAdjustedLevel = a3;
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(NTK_PUAdjustmentInfo *)self localizedName];
  v6 = [(NTK_PUAdjustmentInfo *)self enabled];
  v7 = [(NTK_PUAdjustmentInfo *)self localizedSectionName];
  v8 = [(NTK_PUAdjustmentInfo *)self adjustmentKey];
  v9 = [(NTK_PUAdjustmentInfo *)self settingKey];
  v10 = [(NTK_PUAdjustmentInfo *)self attributeKey];
  [(NTK_PUAdjustmentInfo *)self minimumLevel];
  v12 = v11;
  [(NTK_PUAdjustmentInfo *)self maximumLevel];
  v14 = v13;
  [(NTK_PUAdjustmentInfo *)self defaultLevel];
  v16 = v15;
  [(NTK_PUAdjustmentInfo *)self identityLevel];
  v18 = v17;
  [(NTK_PUAdjustmentInfo *)self lastAdjustedLevel];
  v20 = v19;
  [(NTK_PUAdjustmentInfo *)self currentLevel];
  v22 = [NSString stringWithFormat:@"<%@: %p, name=%@, enabled:%d, sectionName:%@, adjustmentKey=%@, settingsKey:%@, attributeKey:%@, min=%f, max=%f, default=%f, identity=%f, lastAdjusted=%f, current=%f", v4, self, v5, v6, v7, v8, v9, v10, v12, v14, v16, v18, v20, v21];

  return v22;
}

@end