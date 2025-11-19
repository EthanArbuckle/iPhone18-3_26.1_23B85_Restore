@interface INSetNumericSettingIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INNumericSettingValue)maxValue;
- (INNumericSettingValue)minValue;
- (INNumericSettingValue)oldValue;
- (INNumericSettingValue)updatedValue;
- (INSetNumericSettingIntentResponse)initWithBackingStore:(id)a3;
- (INSetNumericSettingIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INSetNumericSettingIntentResponse)initWithCoder:(id)a3;
- (NSString)errorDetail;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)a3;
- (void)setErrorDetail:(id)a3;
- (void)setMaxValue:(id)a3;
- (void)setMinValue:(id)a3;
- (void)setOldValue:(id)a3;
- (void)setUpdatedValue:(id)a3;
@end

@implementation INSetNumericSettingIntentResponse

- (id)_dictionaryRepresentation
{
  v23[6] = *MEMORY[0x1E69E9840];
  v22[0] = @"code";
  v3 = [(INSetNumericSettingIntentResponse *)self code];
  v21 = v3;
  if (v3 < 0xA)
  {
    v4 = *(&off_1E7287B08 + v3);
    v20 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v20 = 0;
  }

  v19 = v4;
  v23[0] = v4;
  v22[1] = @"oldValue";
  v5 = [(INSetNumericSettingIntentResponse *)self oldValue];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v5;
  v23[1] = v5;
  v22[2] = @"updatedValue";
  v7 = [(INSetNumericSettingIntentResponse *)self updatedValue];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v8;
  v22[3] = @"minValue";
  v9 = [(INSetNumericSettingIntentResponse *)self minValue];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v10;
  v22[4] = @"maxValue";
  v11 = [(INSetNumericSettingIntentResponse *)self maxValue];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v22[5] = @"errorDetail";
  v13 = [(INSetNumericSettingIntentResponse *)self errorDetail];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];
  if (!v13)
  {
  }

  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v6)
  {
  }

  if (v21 >= 0xA)
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

- (void)setMaxValue:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToNumericSettingValue(v4);

  [v5 setMaxValue:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setMinValue:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToNumericSettingValue(v4);

  [v5 setMinValue:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setUpdatedValue:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToNumericSettingValue(v4);

  [v5 setUpdatedValue:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setOldValue:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToNumericSettingValue(v4);

  [v5 setOldValue:v6];
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

- (INNumericSettingValue)maxValue
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 maxValue];
  v4 = INIntentSlotValueTransformFromNumericSettingValue(v3);

  return v4;
}

- (INNumericSettingValue)minValue
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 minValue];
  v4 = INIntentSlotValueTransformFromNumericSettingValue(v3);

  return v4;
}

- (INNumericSettingValue)updatedValue
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 updatedValue];
  v4 = INIntentSlotValueTransformFromNumericSettingValue(v3);

  return v4;
}

- (INNumericSettingValue)oldValue
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 oldValue];
  v4 = INIntentSlotValueTransformFromNumericSettingValue(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INSetNumericSettingIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INSetNumericSettingIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INSetNumericSettingIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INSetNumericSettingIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INSetNumericSettingIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INSetNumericSettingIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INSetNumericSettingIntentResponseCodeFailureInvalidValue"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INSetNumericSettingIntentResponseCodeFailureInvalidTrigger"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INSetNumericSettingIntentResponseCodeFailureUnsupported"])
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INSetNumericSettingIntentResponseCodeFailureOtherWithReason"];

  if (v6)
  {
    return 9;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INSetNumericSettingIntentResponse *)self code];
  if ((v2 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F9E0[v2 - 1];
  }
}

- (INSetNumericSettingIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSetNumericSettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSetNumericSettingIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INSetNumericSettingIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSetNumericSettingIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSetNumericSettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSetNumericSettingIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INSetNumericSettingIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 9)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E7287B08 + a3);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSetNumericSettingIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSetNumericSettingIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 6) < 4)
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
  if ((a3 - 1) > 8)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F9B8[a3 - 1];
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

  if ((a4 - 1) >= 4)
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