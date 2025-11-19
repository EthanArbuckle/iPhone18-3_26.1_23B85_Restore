@interface NSObject(UIAccessibilitySafeCategory)
- (double)safeCGPointForKey:()UIAccessibilitySafeCategory;
- (double)safeCGRectForKey:()UIAccessibilitySafeCategory;
- (double)safeCGSizeForKey:()UIAccessibilitySafeCategory;
- (double)safeDoubleForKey:()UIAccessibilitySafeCategory;
- (float)safeFloatForKey:()UIAccessibilitySafeCategory;
- (id)safeArrayForKey:()UIAccessibilitySafeCategory;
- (id)safeDictionaryForKey:()UIAccessibilitySafeCategory;
- (id)safeSetForKey:()UIAccessibilitySafeCategory;
- (id)safeStringForKey:()UIAccessibilitySafeCategory;
- (id)safeUIViewForKey:()UIAccessibilitySafeCategory;
- (id)safeValueForKey:()UIAccessibilitySafeCategory;
- (id)safeValueForKeyPath:()UIAccessibilitySafeCategory;
- (ptrdiff_t)safeIvarForKey:()UIAccessibilitySafeCategory;
- (uint64_t)safeBoolForKey:()UIAccessibilitySafeCategory;
- (uint64_t)safeIntForKey:()UIAccessibilitySafeCategory;
- (uint64_t)safeIntegerForIvarKey:()UIAccessibilitySafeCategory onClass:;
- (uint64_t)safeIntegerForKey:()UIAccessibilitySafeCategory;
- (uint64_t)safeRangeForKey:()UIAccessibilitySafeCategory;
- (uint64_t)safeUnsignedIntForKey:()UIAccessibilitySafeCategory;
- (uint64_t)safeUnsignedIntegerForKey:()UIAccessibilitySafeCategory;
- (void)_accessibilityPerformSafeValueKeyBlock:()UIAccessibilitySafeCategory withKey:onClass:;
@end

@implementation NSObject(UIAccessibilitySafeCategory)

- (ptrdiff_t)safeIvarForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v5, [v4 UTF8String]);
  if (InstanceVariable)
  {
    v7 = ivar_getOffset(InstanceVariable) + a1;
  }

  else
  {
    if (AXShouldReportValidationErrors())
    {
      v8 = +[AXValidationManager sharedInstance];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [v8 sendExceptionForSafeIVarKey:v4 onTarget:v10 overrideProcessName:0];
    }

    if (AXShouldLogValidationErrors())
    {
      v11 = AXLogValidations();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(NSObject(UIAccessibilitySafeCategory) *)v4 safeIvarForKey:a1, v11];
      }
    }

    if (AXShouldCrashOnValidationErrors())
    {
      v12 = AXLogValidations();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(NSObject(UIAccessibilitySafeCategory) *)v4 safeIvarForKey:a1, v12];
      }
    }

    v7 = 0;
  }

  return v7;
}

- (uint64_t)safeBoolForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:{"i", "c", "B", "B", 0}];

  v6 = [v5 BOOLValue];
  return v6;
}

- (uint64_t)safeIntForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:{"i", "I", "I", "q", "Q", "q", "Q", 0}];

  v6 = [v5 intValue];
  return v6;
}

- (uint64_t)safeUnsignedIntForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:{"i", "I", "I", "q", "Q", "q", "Q", 0}];

  v6 = [v5 unsignedIntValue];
  return v6;
}

- (uint64_t)safeIntegerForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:{"q", "Q", "c", "s", "i", "q", 0}];

  v6 = [v5 integerValue];
  return v6;
}

- (uint64_t)safeUnsignedIntegerForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:{"Q", "q", "Q", "C", "S", "I", "Q", 0}];

  v6 = [v5 unsignedIntegerValue];
  return v6;
}

- (float)safeFloatForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:{"f", "d", 0}];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (double)safeDoubleForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:{"d", "f", 0}];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (uint64_t)safeRangeForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:"{_NSRange=QQ}"];

  v6 = [v5 rangeValue];
  return v6;
}

- (double)safeCGPointForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:"{CGPoint=dd}"];

  [v5 pointValue];
  v7 = v6;

  return v7;
}

- (double)safeCGSizeForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:"{CGSize=dd}"];

  [v5 sizeValue];
  v7 = v6;

  return v7;
}

- (double)safeCGRectForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  [v5 rectValue];
  v7 = v6;

  return v7;
}

- (id)safeStringForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:0];

  return v5;
}

- (id)safeArrayForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:0];

  return v5;
}

- (id)safeSetForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:0];

  return v5;
}

- (id)safeDictionaryForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:0];

  return v5;
}

- (id)safeUIViewForKey:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v5 = [a1 _safeValidatedValueForKey:v4 expectedClass:NSClassFromString(&cfstr_Uiview.isa) expectedTypeEncoding:0];

  return v5;
}

- (id)safeValueForKey:()UIAccessibilitySafeCategory
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__NSObject_UIAccessibilitySafeCategory__safeValueForKey___block_invoke;
  v9[3] = &unk_1E735B780;
  v11 = &v12;
  v9[4] = a1;
  v5 = v4;
  v10 = v5;
  [a1 _accessibilityPerformSafeValueKeyBlock:v9 withKey:v5 onClass:objc_opt_class()];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)safeValueForKeyPath:()UIAccessibilitySafeCategory
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NSObject_UIAccessibilitySafeCategory__safeValueForKeyPath___block_invoke;
  v8[3] = &unk_1E735B780;
  v10 = &v11;
  v8[4] = a1;
  v5 = v4;
  v9 = v5;
  [a1 _accessibilityPerformSafeValueKeyBlock:v8 withKey:v5 onClass:objc_opt_class()];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (uint64_t)safeIntegerForIvarKey:()UIAccessibilitySafeCategory onClass:
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__NSObject_UIAccessibilitySafeCategory__safeIntegerForIvarKey_onClass___block_invoke;
  v10[3] = &unk_1E735BD10;
  v14 = a4;
  v7 = v6;
  v12 = a1;
  v13 = &v15;
  v11 = v7;
  [a1 _accessibilityPerformSafeValueKeyBlock:v10 withKey:v7 onClass:a4];
  v8 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v8;
}

- (void)_accessibilityPerformSafeValueKeyBlock:()UIAccessibilitySafeCategory withKey:onClass:
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v5[2](v5);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)safeIvarForKey:()UIAccessibilitySafeCategory .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_19159B000, a3, OS_LOG_TYPE_ERROR, "UIAccessibility Error. Could not safe access iVar: %{public}@ on class: %{public}@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)safeIvarForKey:()UIAccessibilitySafeCategory .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(&dword_19159B000, a3, OS_LOG_TYPE_FAULT, "UIAccessibility Error. Could not safe access iVar: %{public}@ on class: %{public}@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end