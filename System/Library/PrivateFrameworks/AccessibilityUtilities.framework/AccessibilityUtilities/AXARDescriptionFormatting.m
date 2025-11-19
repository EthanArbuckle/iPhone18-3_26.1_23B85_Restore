@interface AXARDescriptionFormatting
+ (double)_valueForPercentageFromRawValue:(double)a3;
+ (id)_descriptionForDistance:(float)a3;
+ (id)_visibilityDescriptionForObjectFrame:(CGRect)a3 viewBounds:(CGRect)a4;
+ (id)descriptionForDistance:(float)a3 objectFrame:(CGRect)a4 viewBounds:(CGRect)a5;
@end

@implementation AXARDescriptionFormatting

+ (id)descriptionForDistance:(float)a3 objectFrame:(CGRect)a4 viewBounds:(CGRect)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [a1 _descriptionForDistance:?];
  v13 = [a1 _visibilityDescriptionForObjectFrame:x viewBounds:{y, width, height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];
  v11 = __AXStringForVariables();

  return v11;
}

+ (id)_descriptionForDistance:(float)a3
{
  if (a3 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v4 = a3;
    if (_descriptionForDistance__onceToken != -1)
    {
      +[AXARDescriptionFormatting _descriptionForDistance:];
    }

    v5 = objc_alloc(MEMORY[0x1E696AD28]);
    v6 = [MEMORY[0x1E696B058] meters];
    v7 = [v5 initWithDoubleValue:v6 unit:v4];

    v8 = [_descriptionForDistance__formatter stringFromMeasurement:v7];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"DISTANCE_DESCRIPTION" value:&stru_1EFE6D570 table:@"ARDescriptionFormatting"];
    v3 = [v9 localizedStringWithFormat:v11, v8];
  }

  return v3;
}

void __53__AXARDescriptionFormatting__descriptionForDistance___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _descriptionForDistance__formatter;
  _descriptionForDistance__formatter = v0;

  [_descriptionForDistance__formatter setUnitStyle:3];
  [_descriptionForDistance__formatter setUnitOptions:2];
  v2 = [_descriptionForDistance__formatter numberFormatter];
  [v2 setMaximumFractionDigits:0];
}

+ (double)_valueForPercentageFromRawValue:(double)a3
{
  v4 = round(a3 * 10.0) / 10.0;
  if (fabs(v4 + -1.0) < 2.22044605e-16 && fabs(a3 + -1.0) > 2.22044605e-16)
  {
    return 0.9;
  }

  if (fabs(v4) < 2.22044605e-16)
  {
    v4 = 0.1;
    if (fabs(a3) <= 2.22044605e-16)
    {
      v5 = AXLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(AXARDescriptionFormatting *)v5 _valueForPercentageFromRawValue:a3];
      }
    }
  }

  return v4;
}

+ (id)_visibilityDescriptionForObjectFrame:(CGRect)a3 viewBounds:(CGRect)a4
{
  x = a4.origin.x;
  height = a4.size.height;
  v37 = a3.origin.x;
  y = a3.origin.y;
  width = a3.size.width;
  v34 = a3.size.height;
  v35 = a4.size.width;
  v8 = a4.origin.y;
  v39 = CGRectIntersection(a3, a4);
  v9 = v39.origin.x;
  v10 = v39.origin.y;
  v11 = v39.size.width;
  v12 = v39.size.height;
  if (!CGRectIsNull(v39))
  {
    v40.origin.x = v9;
    v40.origin.y = v10;
    v40.size.width = v11;
    v40.size.height = v12;
    v32 = CGRectGetWidth(v40);
    v41.origin.x = v9;
    v41.origin.y = v10;
    v41.size.width = v11;
    v41.size.height = v12;
    v31 = CGRectGetHeight(v41);
    v42.origin.x = x;
    v42.origin.y = v8;
    v42.size.width = v35;
    v42.size.height = height;
    v13 = CGRectGetWidth(v42);
    v43.origin.x = x;
    v43.origin.y = v8;
    v43.size.width = v35;
    v43.size.height = height;
    v14 = v13 * CGRectGetHeight(v43);
    v44.origin.x = v37;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = v34;
    v33 = CGRectGetWidth(v44);
    v45.origin.x = v37;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = v34;
    v15 = CGRectGetHeight(v45);
    if (v14 > 0.0)
    {
      v16 = v33 * v15;
      if (v16 > 0.0)
      {
        v17 = v32 * v31 / v16;
        v18 = MEMORY[0x1E696AEC0];
        v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"VISIBILITY_PERCENTAGE" value:&stru_1EFE6D570 table:@"ARDescriptionFormatting"];
        [a1 _valueForPercentageFromRawValue:v17];
        v21 = AXFormatFloatWithPercentage();
        v22 = [v18 localizedStringWithFormat:v20, v21];
        v23 = MEMORY[0x1E696AEC0];
        v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v25 = [v24 localizedStringForKey:@"COVERAGE_PERCENTAGE" value:&stru_1EFE6D570 table:@"ARDescriptionFormatting"];
        [a1 _valueForPercentageFromRawValue:v32 * v31 / v14];
        v26 = AXFormatFloatWithPercentage();
        v30 = [v23 localizedStringWithFormat:v25, v26];
        v27 = __AXStringForVariables();

        goto LABEL_9;
      }
    }

    v28 = AXLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      [(AXARDescriptionFormatting *)v28 _visibilityDescriptionForObjectFrame:v8 viewBounds:v35, height, v37, y, width, v34];
    }
  }

  v27 = 0;
LABEL_9:

  return v27;
}

+ (void)_valueForPercentageFromRawValue:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a2;
  _os_log_fault_impl(&dword_18B15E000, log, OS_LOG_TYPE_FAULT, "Had raw value %f, but should not have gotten here if the asset was not on screen at all", &v2, 0xCu);
}

+ (void)_visibilityDescriptionForObjectFrame:(double)a3 viewBounds:(double)a4 .cold.1(NSObject *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = NSStringFromRect(*&a2);
  v21.origin.x = a6;
  v21.origin.y = a7;
  v21.size.width = a8;
  v21.size.height = a9;
  v15 = NSStringFromRect(v21);
  v16 = 138412546;
  v17 = v14;
  v18 = 2112;
  v19 = v15;
  _os_log_fault_impl(&dword_18B15E000, a1, OS_LOG_TYPE_FAULT, "Unable to get view bounds: %@ or object frame: %@", &v16, 0x16u);
}

@end