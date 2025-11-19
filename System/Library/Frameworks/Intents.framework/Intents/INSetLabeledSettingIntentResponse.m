@interface INSetLabeledSettingIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INSetLabeledSettingIntentResponse)initWithBackingStore:(id)a3;
- (INSetLabeledSettingIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INSetLabeledSettingIntentResponse)initWithCoder:(id)a3;
- (NSString)errorDetail;
- (NSString)oldValue;
- (NSString)updatedValue;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)a3;
- (void)setErrorDetail:(id)a3;
- (void)setOldValue:(id)a3;
- (void)setUpdatedValue:(id)a3;
@end

@implementation INSetLabeledSettingIntentResponse

- (id)_dictionaryRepresentation
{
  v17[4] = *MEMORY[0x1E69E9840];
  v16[0] = @"code";
  v3 = [(INSetLabeledSettingIntentResponse *)self code];
  v4 = v3;
  if (v3 < 9)
  {
    v5 = *(&off_1E7287BF8 + v3);
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v17[0] = v5;
  v16[1] = @"oldValue";
  v7 = [(INSetLabeledSettingIntentResponse *)self oldValue];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = v8;
  v16[2] = @"updatedValue";
  v9 = [(INSetLabeledSettingIntentResponse *)self updatedValue];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v10;
  v16[3] = @"errorDetail";
  v11 = [(INSetLabeledSettingIntentResponse *)self errorDetail];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (v4 >= 9)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setErrorDetail:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setErrorDetail:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setUpdatedValue:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setUpdatedValue:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setOldValue:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setOldValue:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (NSString)errorDetail
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 errorDetail];
  v4 = [v3 copy];

  return v4;
}

- (NSString)updatedValue
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 updatedValue];
  v4 = [v3 copy];

  return v4;
}

- (NSString)oldValue
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 oldValue];
  v4 = [v3 copy];

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INSetLabeledSettingIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INSetLabeledSettingIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INSetLabeledSettingIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INSetLabeledSettingIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INSetLabeledSettingIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INSetLabeledSettingIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INSetLabeledSettingIntentResponseCodeFailureInvalidValue"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INSetLabeledSettingIntentResponseCodeFailureUnsupported"])
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INSetLabeledSettingIntentResponseCodeFailureOtherWithReason"];

  if (v6)
  {
    return 8;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INSetLabeledSettingIntentResponse *)self code];
  if ((v2 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FAA0[v2 - 1];
  }
}

- (INSetLabeledSettingIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSetLabeledSettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSetLabeledSettingIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INSetLabeledSettingIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSetLabeledSettingIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSetLabeledSettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSetLabeledSettingIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INSetLabeledSettingIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 8)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E7287BF8 + a3);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSetLabeledSettingIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSetLabeledSettingIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 6) < 3)
  {
    return a3 - 5;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FA80[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 2;
  if (a3 != 2)
  {
    v5 = a3 == 5;
  }

  v6 = 3;
  v7 = 4;
  if (a5)
  {
    v7 = 5;
  }

  if ((a4 - 1) >= 3)
  {
    v8 = v7;
  }

  else
  {
    v8 = (a4 + 5);
  }

  if (a3 != 1)
  {
    v8 = 0;
  }

  if (a3)
  {
    v6 = v8;
  }

  if (a3 <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end