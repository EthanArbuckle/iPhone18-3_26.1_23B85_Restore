@interface NSObject(UIAccessibilitySafeCategory_Private)
- (id)_safeValidatedValueForKey:()UIAccessibilitySafeCategory_Private expectedClass:possibleExpectedTypeEncodings:;
@end

@implementation NSObject(UIAccessibilitySafeCategory_Private)

- (id)_safeValidatedValueForKey:()UIAccessibilitySafeCategory_Private expectedClass:possibleExpectedTypeEncodings:
{
  v13 = a3;
  v14 = [a1 safeValueForKey:v13];
  if (v14)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (AXShouldReportValidationErrors())
      {
        v18 = +[AXValidationManager sharedInstance];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        [v18 sendExceptionForSafeValueKey:v13 onTarget:v20 overrideProcessName:0];
      }

      v21 = v14;
      objc_opt_class();
      v22 = v21;
      if (objc_opt_isKindOfClass())
      {
        v23 = MEMORY[0x1E696AEC0];
        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "length")}];
        v22 = [v23 stringWithFormat:@"<redacted string. len=%@", v24];
      }

      if (!AXPerformValidationChecks())
      {
        goto LABEL_17;
      }

      v25 = AXShouldCrashOnValidationErrors();
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromClass(a4);
      v29 = objc_opt_class();
      v56 = NSStringFromClass(v29);
      v35 = __UIAccessibilityHandleValidationErrorWithDescription(v25, 0, @"Value for key %@ on object <%@: %p> is not an %@; class: %@; value: %@", v30, v31, v32, v33, v34, v13);

      if (!v35)
      {
LABEL_17:

LABEL_18:
        v14 = 0;
        goto LABEL_19;
      }

      goto LABEL_36;
    }

    if (a5)
    {
      v15 = [v14 objCType];
      if (strcmp(v15, a5))
      {
        v16 = 0;
        v57 = &a9;
        while (1)
        {
          v17 = v57++;
          if (!*v17)
          {
            break;
          }

          if ((v16 & 1) == 0)
          {
            v16 = 1;
          }

          if (!strcmp(v15, *v17))
          {
            goto LABEL_19;
          }
        }

        if (AXShouldReportValidationErrors())
        {
          v37 = +[AXValidationManager sharedInstance];
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          [v37 sendExceptionForSafeValueKey:v13 onTarget:v39 overrideProcessName:0];
        }

        if (!AXPerformValidationChecks())
        {
          goto LABEL_35;
        }

        if (v16)
        {
          v40 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%s", a5];
          v58 = &a10;
          for (i = a9; i; i = *v42)
          {
            [v40 appendFormat:@", %s", i];
            v42 = v58++;
          }

          [v40 UTF8String];
        }

        else
        {
          v40 = 0;
        }

        v43 = v14;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = MEMORY[0x1E696AEC0];
          v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v43, "length")}];
          v46 = [v44 stringWithFormat:@"<redacted string. len=%@", v45];

          v43 = v46;
        }
        if (!AXPerformValidationChecks() || (v47 = AXShouldCrashOnValidationErrors(), v48 = objc_opt_class(), NSStringFromClass(v48), v55 = ;
        {

LABEL_35:
          goto LABEL_18;
        }

LABEL_36:
        abort();
      }
    }
  }

LABEL_19:

  return v14;
}

@end