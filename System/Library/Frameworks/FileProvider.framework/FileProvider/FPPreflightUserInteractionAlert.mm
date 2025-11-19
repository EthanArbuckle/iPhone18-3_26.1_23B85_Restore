@interface FPPreflightUserInteractionAlert
+ (id)alertFromDictionary:(id)a3 localizationLookup:(id)a4;
@end

@implementation FPPreflightUserInteractionAlert

+ (id)alertFromDictionary:(id)a3 localizationLookup:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = objc_opt_new();
    v8 = [v5 objectForKeyedSubscript:@"LocalizedTitle"];
    v9 = [FPStringFormat formatForPlistObject:v8 localizationLookup:v6];
    [v7 setTitleFormat:v9];

    v10 = [v5 objectForKeyedSubscript:@"LocalizedSubTitle"];
    v11 = [FPStringFormat formatForPlistObject:v10 localizationLookup:v6];
    [v7 setSubtitleFormat:v11];

    v12 = [v7 titleFormat];
    v13 = [v12 length];

    if (v13)
    {
      v14 = [v5 objectForKeyedSubscript:@"LocalizedRecoveryOptions"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v14 = 0;
      }

      v15 = [v14 objectForKeyedSubscript:@"Continue"];
      v16 = [FPStringFormat formatForPlistObject:v15 localizationLookup:v6];
      [v7 setContinueCaptionFormat:v16];

      v17 = [v14 objectForKeyedSubscript:@"Cancel"];
      v18 = [FPStringFormat formatForPlistObject:v17 localizationLookup:v6];
      [v7 setCancelCaptionFormat:v18];

      [v7 setEnableContinue:1];
      [v7 setContinueIsDestructive:0];
      v19 = [v5 objectForKeyedSubscript:@"RecoveryOptions"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v19 objectForKeyedSubscript:@"Continue"];
        v21 = [v19 objectForKeyedSubscript:@"Destructive"];
        if (v20)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 setEnableContinue:{objc_msgSend(v20, "BOOLValue")}];
          }
        }

        if (v21)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 setContinueIsDestructive:{objc_msgSend(v21, "BOOLValue")}];
          }
        }
      }

      v22 = v7;
    }

    else
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        +[FPPreflightUserInteractionAlert alertFromDictionary:localizationLookup:];
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (void)alertFromDictionary:localizationLookup:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end