@interface INStopShareETAIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INStopShareETAIntentResponse)initWithBackingStore:(id)a3;
- (INStopShareETAIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INStopShareETAIntentResponse)initWithCoder:(id)a3;
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

@implementation INStopShareETAIntentResponse

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"code";
  v3 = [(INStopShareETAIntentResponse *)self code];
  v4 = v3;
  if (v3 < 0x11)
  {
    v5 = *(&off_1E72879B0 + v3);
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v15[0] = v5;
  v14[1] = @"recipients";
  v7 = [(INStopShareETAIntentResponse *)self recipients];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"mediums";
  v9 = INShareETAMediumOptionsGetNames([(INStopShareETAIntentResponse *)self mediums]);
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

  if (v4 >= 0x11)
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
  v8[2] = __43__INStopShareETAIntentResponse_setMediums___block_invoke;
  v8[3] = &unk_1E7288628;
  v8[4] = self;
  INShareETAMediumOptionsEnumerateBackingTypes(a3, v8);
  v6 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v6 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

void __43__INStopShareETAIntentResponse_setMediums___block_invoke(uint64_t a1, uint64_t a2)
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
  [v3 isEqualToString:@"INStopShareETAIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INStopShareETAIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailureUnknownError"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailureUnsupportedOs"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailureUnsupportedOsVersion"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailureShareEtaDisabled"])
  {
    v4 = 9;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailureShareEtaDisabledRemotely"])
  {
    v4 = 10;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailureNotNavigating"])
  {
    v4 = 11;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailureUnsupportedTransportationMode"])
  {
    v4 = 12;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailureIcloudSignedOff"])
  {
    v4 = 13;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailureiMessageDisabled"])
  {
    v4 = 14;
  }

  if ([v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailureNotSharing"])
  {
    v5 = 15;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INStopShareETAIntentResponseCodeFailureNotSharingWithContacts"];

  if (v6)
  {
    return 16;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INStopShareETAIntentResponse *)self code];
  if ((v2 - 1) > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F890[v2 - 1];
  }
}

- (INStopShareETAIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INStopShareETAIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INStopShareETAIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INStopShareETAIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INStopShareETAIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INStopShareETAIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INStopShareETAIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INStopShareETAIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 0x10)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E72879B0 + a3);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INStopShareETAIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INStopShareETAIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 6) >= 0xB)
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
  if ((a3 - 1) > 0xF)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F850[a3 - 1];
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

  if (a4 >= 0xB)
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