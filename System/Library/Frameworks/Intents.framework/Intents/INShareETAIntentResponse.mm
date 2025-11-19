@interface INShareETAIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INShareETAIntentResponse)initWithBackingStore:(id)a3;
- (INShareETAIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INShareETAIntentResponse)initWithCoder:(id)a3;
- (NSArray)recipients;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (unint64_t)mediums;
- (void)encodeWithCoder:(id)a3;
- (void)setMediums:(unint64_t)a3;
- (void)setRecipients:(id)a3;
@end

@implementation INShareETAIntentResponse

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"code";
  v3 = [(INShareETAIntentResponse *)self code];
  v4 = v3;
  if (v3 < 0x10)
  {
    v5 = *(&off_1E7287910 + v3);
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v15[0] = v5;
  v14[1] = @"recipients";
  v7 = [(INShareETAIntentResponse *)self recipients];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"mediums";
  v9 = INShareETAMediumOptionsGetNames([(INShareETAIntentResponse *)self mediums]);
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (v4 >= 0x10)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setMediums:(unint64_t)a3
{
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 clearMediums];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__INShareETAIntentResponse_setMediums___block_invoke;
  v8[3] = &unk_1E7288628;
  v8[4] = self;
  INShareETAMediumOptionsEnumerateBackingTypes(a3, v8);
  v6 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v6 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

void __39__INShareETAIntentResponse_setMediums___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _responseMessagePBRepresentation];
  [v3 addMedium:a2];
}

- (void)setRecipients:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToContacts(v4);

  [v5 setRecipients:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (unint64_t)mediums
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 mediumsCount];

  v5 = 0;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
      v8 = [v7 mediumAtIndex:i];
      v9 = v5 | 4;
      v10 = v5 | 8;
      if (v8 != 3)
      {
        v10 = v5;
      }

      if (v8 != 2)
      {
        v9 = v10;
      }

      v11 = v5 | 1;
      v12 = v5 | 2;
      if (v8 != 1)
      {
        v12 = v5;
      }

      if (v8)
      {
        v11 = v12;
      }

      if (v8 <= 1)
      {
        v5 = v11;
      }

      else
      {
        v5 = v9;
      }
    }
  }

  return v5;
}

- (NSArray)recipients
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 recipients];
  v4 = INIntentSlotValueTransformFromContacts(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INShareETAIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INShareETAIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeFailureUnknownError"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeFailureUnsupportedOs"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeFailureUnsupportedOsVersion"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeFailureShareEtaDisabled"])
  {
    v4 = 9;
  }

  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeFailureShareEtaDisabledRemotely"])
  {
    v4 = 10;
  }

  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeFailureNotNavigating"])
  {
    v4 = 11;
  }

  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeFailureUnsupportedTransportationMode"])
  {
    v4 = 12;
  }

  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeFailureIcloudSignedOff"])
  {
    v4 = 13;
  }

  if ([v3 isEqualToString:@"INShareETAIntentResponseCodeFailureiMessageDisabled"])
  {
    v5 = 14;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INShareETAIntentResponseCodeFailureAlreadySharing"];

  if (v6)
  {
    return 15;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INShareETAIntentResponse *)self code];
  if ((v2 - 1) > 0xE)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F7D8[v2 - 1];
  }
}

- (INShareETAIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INShareETAIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INShareETAIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INShareETAIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INShareETAIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INShareETAIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INShareETAIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INShareETAIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 0xF)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E7287910 + a3);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INShareETAIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INShareETAIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 6) >= 0xA)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return a3 - 6;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 0xE)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F798[a3 - 1];
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
  v7 = (a4 + 6);
  v8 = 4;
  if (a5)
  {
    v8 = 5;
  }

  if (a4 >= 0xA)
  {
    v7 = v8;
  }

  if (a3 != 1)
  {
    v7 = 0;
  }

  if (a3)
  {
    v6 = v7;
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