@interface INStopShareETAIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INStopShareETAIntentResponse)initWithBackingStore:(id)store;
- (INStopShareETAIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INStopShareETAIntentResponse)initWithCoder:(id)coder;
- (NSArray)recipients;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (unint64_t)mediums;
- (void)encodeWithCoder:(id)coder;
- (void)setMediums:(unint64_t)mediums;
- (void)setRecipients:(id)recipients;
@end

@implementation INStopShareETAIntentResponse

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"code";
  code = [(INStopShareETAIntentResponse *)self code];
  v4 = code;
  if (code < 0x11)
  {
    null = *(&off_1E72879B0 + code);
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v15[0] = null;
  v14[1] = @"recipients";
  recipients = [(INStopShareETAIntentResponse *)self recipients];
  null2 = recipients;
  if (!recipients)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"mediums";
  v9 = INShareETAMediumOptionsGetNames([(INStopShareETAIntentResponse *)self mediums]);
  null3 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (!v9)
  {
  }

  if (!recipients)
  {
  }

  if (v4 >= 0x11)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setMediums:(unint64_t)mediums
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation clearMediums];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__INStopShareETAIntentResponse_setMediums___block_invoke;
  v8[3] = &unk_1E7288628;
  v8[4] = self;
  INShareETAMediumOptionsEnumerateBackingTypes(mediums, v8);
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

void __43__INStopShareETAIntentResponse_setMediums___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _responseMessagePBRepresentation];
  [v3 addMedium:a2];
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToContacts(recipientsCopy);

  [_responseMessagePBRepresentation setRecipients:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (unint64_t)mediums
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  mediumsCount = [_responseMessagePBRepresentation mediumsCount];

  v5 = 0;
  if (mediumsCount)
  {
    for (i = 0; i != mediumsCount; ++i)
    {
      _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
      v8 = [_responseMessagePBRepresentation2 mediumAtIndex:i];
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
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  recipients = [_responseMessagePBRepresentation recipients];
  v4 = INIntentSlotValueTransformFromContacts(recipients);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailureUnknownError"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailureUnsupportedOs"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailureUnsupportedOsVersion"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailureShareEtaDisabled"])
  {
    v4 = 9;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailureShareEtaDisabledRemotely"])
  {
    v4 = 10;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailureNotNavigating"])
  {
    v4 = 11;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailureUnsupportedTransportationMode"])
  {
    v4 = 12;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailureIcloudSignedOff"])
  {
    v4 = 13;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailureiMessageDisabled"])
  {
    v4 = 14;
  }

  if ([nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailureNotSharing"])
  {
    v5 = 15;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INStopShareETAIntentResponseCodeFailureNotSharingWithContacts"];

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
  code = [(INStopShareETAIntentResponse *)self code];
  if ((code - 1) > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F890[code - 1];
  }
}

- (INStopShareETAIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INStopShareETAIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INStopShareETAIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INStopShareETAIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INStopShareETAIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INStopShareETAIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INStopShareETAIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INStopShareETAIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 0x10)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E72879B0 + code);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INStopShareETAIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INStopShareETAIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) >= 0xB)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return code - 6;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 0xF)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F850[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 2;
  if (type != 2)
  {
    v5 = type == 5;
  }

  v6 = 3;
  v7 = (code + 6);
  v8 = 4;
  if (requested)
  {
    v8 = 5;
  }

  if (code >= 0xB)
  {
    v7 = v8;
  }

  if (type != 1)
  {
    v7 = 0;
  }

  if (type)
  {
    v6 = v7;
  }

  if (type <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end