@interface INSetBinarySettingIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INSetBinarySettingIntentResponse)initWithBackingStore:(id)a3;
- (INSetBinarySettingIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INSetBinarySettingIntentResponse)initWithCoder:(id)a3;
- (NSString)errorDetail;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (int64_t)oldValue;
- (int64_t)updatedValue;
- (void)encodeWithCoder:(id)a3;
- (void)setErrorDetail:(id)a3;
- (void)setOldValue:(int64_t)a3;
- (void)setUpdatedValue:(int64_t)a3;
@end

@implementation INSetBinarySettingIntentResponse

- (id)_dictionaryRepresentation
{
  v19[4] = *MEMORY[0x1E69E9840];
  v18[0] = @"code";
  v3 = [(INSetBinarySettingIntentResponse *)self code];
  v4 = v3;
  if (v3 < 9)
  {
    v5 = *(&off_1E7287D10 + v3);
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v19[0] = v5;
  v18[1] = @"oldValue";
  v7 = [(INSetBinarySettingIntentResponse *)self oldValue];
  if ((v7 - 1) > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = *(&off_1E7287C40 + v7 - 1);
  }

  v9 = v8;
  v19[1] = v9;
  v18[2] = @"updatedValue";
  v10 = [(INSetBinarySettingIntentResponse *)self updatedValue];
  if ((v10 - 1) > 2)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = *(&off_1E7287C40 + v10 - 1);
  }

  v12 = v11;
  v19[2] = v12;
  v18[3] = @"errorDetail";
  v13 = [(INSetBinarySettingIntentResponse *)self errorDetail];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  if (!v13)
  {
  }

  if (v4 >= 9)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
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

- (void)setUpdatedValue:(int64_t)a3
{
  v4 = a3 - 1;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = v5;
  if (v4 > 2)
  {
    [v5 setHasUpdatedValue:0];
  }

  else
  {
    [v5 setUpdatedValue:?];
  }

  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setOldValue:(int64_t)a3
{
  v4 = a3 - 1;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = v5;
  if (v4 > 2)
  {
    [v5 setHasOldValue:0];
  }

  else
  {
    [v5 setOldValue:?];
  }

  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (NSString)errorDetail
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 errorDetail];
  v4 = [v3 copy];

  return v4;
}

- (int64_t)updatedValue
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 hasUpdatedValue];
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 updatedValue];
  if (((v6 - 1 < 3) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)oldValue
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 hasOldValue];
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 oldValue];
  if (((v6 - 1 < 3) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INSetBinarySettingIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INSetBinarySettingIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INSetBinarySettingIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INSetBinarySettingIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INSetBinarySettingIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INSetBinarySettingIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INSetBinarySettingIntentResponseCodeFailureInvalidTrigger"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INSetBinarySettingIntentResponseCodeFailureUnsupported"])
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INSetBinarySettingIntentResponseCodeFailureOtherWithReason"];

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
  v2 = [(INSetBinarySettingIntentResponse *)self code];
  if ((v2 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FAA0[v2 - 1];
  }
}

- (INSetBinarySettingIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSetBinarySettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSetBinarySettingIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INSetBinarySettingIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSetBinarySettingIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSetBinarySettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSetBinarySettingIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INSetBinarySettingIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
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
      v9 = *(&off_1E7287D10 + a3);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSetBinarySettingIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSetBinarySettingIntentResponse;
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