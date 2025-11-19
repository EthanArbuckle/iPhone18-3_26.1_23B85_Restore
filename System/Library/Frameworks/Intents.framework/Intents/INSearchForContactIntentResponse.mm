@interface INSearchForContactIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INSearchForContactIntentResponse)initWithBackingStore:(id)a3;
- (INSearchForContactIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INSearchForContactIntentResponse)initWithCoder:(id)a3;
- (NSArray)matchedContacts;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)a3;
- (void)setMatchedContacts:(id)a3;
@end

@implementation INSearchForContactIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  v3 = [(INSearchForContactIntentResponse *)self code];
  v4 = v3;
  if (v3 < 0xE)
  {
    v5 = *(&off_1E72877A0 + v3);
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"matchedContacts";
  v13[0] = v5;
  v7 = [(INSearchForContactIntentResponse *)self matchedContacts];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!v7)
  {
  }

  if (v4 >= 0xE)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setMatchedContacts:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToContactCards(v4);

  [v5 setMatchedContacts:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (NSArray)matchedContacts
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 matchedContacts];
  v4 = INIntentSlotValueTransformFromContactCards(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INSearchForContactIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INSearchForContactIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INSearchForContactIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INSearchForContactIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INSearchForContactIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INSearchForContactIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INSearchForContactIntentResponseCodeFailureMeCardNotSet"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INSearchForContactIntentResponseCodeFailureContactNameNotFound"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INSearchForContactIntentResponseCodeFailureRelationshipNotFound"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"INSearchForContactIntentResponseCodeFailureContactCompanyNotFound"])
  {
    v4 = 9;
  }

  if ([v3 isEqualToString:@"INSearchForContactIntentResponseCodeFailurePhoneNumberNotFound"])
  {
    v4 = 10;
  }

  if ([v3 isEqualToString:@"INSearchForContactIntentResponseCodeFailureSearchForContactRelationshipsUnsupported"])
  {
    v4 = 11;
  }

  if ([v3 isEqualToString:@"INSearchForContactIntentResponseCodeFailureContactServiceNotAvailable"])
  {
    v5 = 12;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INSearchForContactIntentResponseCodeFailureUserAuthorizationRequired"];

  if (v6)
  {
    return 13;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INSearchForContactIntentResponse *)self code];
  if ((v2 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FE28[v2 - 1];
  }
}

- (INSearchForContactIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSearchForContactIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSearchForContactIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INSearchForContactIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSearchForContactIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSearchForContactIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSearchForContactIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INSearchForContactIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 0xD)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E72877A0 + a3);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSearchForContactIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSearchForContactIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 6) < 8)
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
  if ((a3 - 1) > 0xC)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FDF0[a3 - 1];
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

  if ((a4 - 1) >= 8)
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