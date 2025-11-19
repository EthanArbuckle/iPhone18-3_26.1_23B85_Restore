@interface INScanVisualCodeIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INScanVisualCodeIntentResponse)initWithBackingStore:(id)a3;
- (INScanVisualCodeIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INScanVisualCodeIntentResponse)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INScanVisualCodeIntentResponse

- (id)_dictionaryRepresentation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"code";
  v2 = [(INScanVisualCodeIntentResponse *)self code];
  v3 = v2;
  if (v2 < 6)
  {
    v4 = off_1E7282AE0[v2];
    v5 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = 0;
  }

  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  if (v3 >= 6)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INScanVisualCodeIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INScanVisualCodeIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INScanVisualCodeIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INScanVisualCodeIntentResponseCodeFailure"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INScanVisualCodeIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INScanVisualCodeIntentResponseCodeFailureAppConfigurationRequired"];

  if (v6)
  {
    return 5;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INScanVisualCodeIntentResponse *)self code];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F000[v2 - 1];
  }
}

- (INScanVisualCodeIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INScanVisualCodeIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INScanVisualCodeIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INScanVisualCodeIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INScanVisualCodeIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INScanVisualCodeIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INScanVisualCodeIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INScanVisualCodeIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7282AE0[a3];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INScanVisualCodeIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INScanVisualCodeIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 5)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 3;
  }

  else
  {
    return dword_18EE5EFE8[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 3;
  if (a5)
  {
    v5 = 4;
  }

  if (a4 == 1)
  {
    v5 = 5;
  }

  v6 = 2;
  if (a3 != 4)
  {
    v6 = a3 == 5;
  }

  if (a3 == 1)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

@end