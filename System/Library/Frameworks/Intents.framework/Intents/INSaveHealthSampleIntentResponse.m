@interface INSaveHealthSampleIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INDateComponentsRange)recordDate;
- (INSaveHealthSampleIntentResponse)initWithBackingStore:(id)a3;
- (INSaveHealthSampleIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INSaveHealthSampleIntentResponse)initWithCoder:(id)a3;
- (NSArray)sampleUuids;
- (NSArray)valuesDefaultUnits;
- (NSArray)valuesUserProvidedUnits;
- (NSString)defaultUnit;
- (NSString)punchoutUrl;
- (NSString)userProvidedUnit;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)a3;
- (void)setDefaultUnit:(id)a3;
- (void)setPunchoutUrl:(id)a3;
- (void)setRecordDate:(id)a3;
- (void)setSampleUuids:(id)a3;
- (void)setUserProvidedUnit:(id)a3;
- (void)setValuesDefaultUnits:(id)a3;
- (void)setValuesUserProvidedUnits:(id)a3;
@end

@implementation INSaveHealthSampleIntentResponse

- (id)_dictionaryRepresentation
{
  v30[8] = *MEMORY[0x1E69E9840];
  v29[0] = @"code";
  v3 = [(INSaveHealthSampleIntentResponse *)self code];
  v28 = v3;
  if (v3 < 9)
  {
    v4 = *(&off_1E727E6E8 + v3);
    v27 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v27 = 0;
  }

  v25 = v4;
  v30[0] = v4;
  v29[1] = @"sampleUuids";
  v5 = [(INSaveHealthSampleIntentResponse *)self sampleUuids];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v5;
  v30[1] = v5;
  v29[2] = @"recordDate";
  v7 = [(INSaveHealthSampleIntentResponse *)self recordDate];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v7;
  v30[2] = v7;
  v29[3] = @"defaultUnit";
  v9 = [(INSaveHealthSampleIntentResponse *)self defaultUnit];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v9;
  v30[3] = v9;
  v29[4] = @"valuesDefaultUnits";
  v11 = [(INSaveHealthSampleIntentResponse *)self valuesDefaultUnits];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v30[4] = v11;
  v29[5] = @"userProvidedUnit";
  v13 = [(INSaveHealthSampleIntentResponse *)self userProvidedUnit];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v30[5] = v14;
  v29[6] = @"valuesUserProvidedUnits";
  v15 = [(INSaveHealthSampleIntentResponse *)self valuesUserProvidedUnits];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = v16;
  v29[7] = @"punchoutUrl";
  v17 = [(INSaveHealthSampleIntentResponse *)self punchoutUrl];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v30[7] = v18;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:8];
  if (!v17)
  {
  }

  if (!v15)
  {
  }

  if (!v13)
  {
  }

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (v28 >= 9)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v26;
}

- (void)setPunchoutUrl:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToString(v4);

  [v5 setPunchoutUrl:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setValuesUserProvidedUnits:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToWellnessValues(v4);

  [v5 setValuesUserProvidedUnits:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setUserProvidedUnit:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToString(v4);

  [v5 setUserProvidedUnit:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setValuesDefaultUnits:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToWellnessValues(v4);

  [v5 setValuesDefaultUnits:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setDefaultUnit:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToString(v4);

  [v5 setDefaultUnit:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setRecordDate:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v5 setRecordDate:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setSampleUuids:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToStrings(v4);

  [v5 setSampleUuids:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (NSString)punchoutUrl
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 punchoutUrl];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (NSArray)valuesUserProvidedUnits
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 valuesUserProvidedUnits];
  v4 = INIntentSlotValueTransformFromWellnessValues(v3);

  return v4;
}

- (NSString)userProvidedUnit
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 userProvidedUnit];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (NSArray)valuesDefaultUnits
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 valuesDefaultUnits];
  v4 = INIntentSlotValueTransformFromWellnessValues(v3);

  return v4;
}

- (NSString)defaultUnit
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 defaultUnit];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (INDateComponentsRange)recordDate
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 recordDate];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (NSArray)sampleUuids
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 sampleUuids];
  v4 = INIntentSlotValueTransformFromStrings(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INSaveHealthSampleIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INSaveHealthSampleIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INSaveHealthSampleIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INSaveHealthSampleIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INSaveHealthSampleIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INSaveHealthSampleIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INSaveHealthSampleIntentResponseCodeFailureUnsupportedSampleType"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INSaveHealthSampleIntentResponseCodeFailureUnsupportedUnitType"])
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INSaveHealthSampleIntentResponseCodeFailureValueOutOfRange"];

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
  v2 = [(INSaveHealthSampleIntentResponse *)self code];
  if ((v2 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FAA0[v2 - 1];
  }
}

- (INSaveHealthSampleIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSaveHealthSampleIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSaveHealthSampleIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INSaveHealthSampleIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSaveHealthSampleIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSaveHealthSampleIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSaveHealthSampleIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INSaveHealthSampleIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
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
      v9 = *(&off_1E727E6E8 + a3);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSaveHealthSampleIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSaveHealthSampleIntentResponse;
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