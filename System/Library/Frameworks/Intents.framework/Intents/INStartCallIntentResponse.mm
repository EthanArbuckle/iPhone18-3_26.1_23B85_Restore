@interface INStartCallIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INConnectedCall)startedCall;
- (INStartCallIntentResponse)initWithBackingStore:(id)a3;
- (INStartCallIntentResponse)initWithCode:(INStartCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INStartCallIntentResponse)initWithCoder:(id)a3;
- (INStartCallIntentResponseCode)code;
- (NSArray)restrictedContacts;
- (NSNumber)shouldDoEmergencyCountdown;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)confirmationReason;
- (void)encodeWithCoder:(id)a3;
- (void)setConfirmationReason:(int64_t)a3;
- (void)setRestrictedContacts:(id)a3;
- (void)setShouldDoEmergencyCountdown:(id)a3;
- (void)setStartedCall:(id)a3;
@end

@implementation INStartCallIntentResponse

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"code";
  v2 = INStartCallIntentResponseCodeGetName([(INStartCallIntentResponse *)self code]);
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setRestrictedContacts:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToContactValues(v4);

  [v5 setRestrictedContacts:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setStartedCall:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToConnectedCall(v4);

  [v5 setStartedCall:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setConfirmationReason:(int64_t)a3
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v4 = 3;
      goto LABEL_11;
    }

    if (a3 == 1000)
    {
      v4 = 4;
      goto LABEL_11;
    }

LABEL_8:
    v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    [v5 setHasConfirmationReason:0];
    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v4 = 1;
    goto LABEL_11;
  }

  if (a3 != 2)
  {
    goto LABEL_8;
  }

  v4 = 2;
LABEL_11:
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setConfirmationReason:v4];
LABEL_12:

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setShouldDoEmergencyCountdown:(id)a3
{
  v7 = a3;
  v4 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (v7)
  {
    [v4 setShouldDoEmergencyCountdown:{objc_msgSend(v7, "BOOLValue")}];
  }

  else
  {
    [v4 setHasShouldDoEmergencyCountdown:0];
  }

  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (NSArray)restrictedContacts
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 restrictedContacts];
  v4 = INIntentSlotValueTransformFromContactValues(v3);

  return v4;
}

- (INConnectedCall)startedCall
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 startedCall];
  v4 = INIntentSlotValueTransformFromConnectedCall(v3);

  return v4;
}

- (int64_t)confirmationReason
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 hasConfirmationReason];
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 confirmationReason];
  if (v4 && (v6 - 1) <= 3)
  {
    v7 = qword_18EE5F700[v6 - 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSNumber)shouldDoEmergencyCountdown
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([v3 hasShouldDoEmergencyCountdown])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "shouldDoEmergencyCountdown")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INStartCallIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INStartCallIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeUserConfirmationRequired"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeFailureCallingServiceNotAvailable"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeFailureContactNotSupportedByApp"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeFailureAirplaneModeEnabled"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeFailureUnableToHandOff"])
  {
    v4 = 9;
  }

  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeFailureAppConfigurationRequired"])
  {
    v4 = 10;
  }

  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeFailureCallInProgress"])
  {
    v4 = 11;
  }

  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeFailureCallRinging"])
  {
    v4 = 12;
  }

  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeFailureScreenTimeRestrictionEnabled"])
  {
    v4 = 1000;
  }

  if ([v3 isEqualToString:@"INStartCallIntentResponseCodeFailureDownTimeRestrictionEnabled"])
  {
    v5 = 1001;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INStartCallIntentResponseCodeFailureRequiringInAppAuthentication"];

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
  result = [(INStartCallIntentResponse *)self code];
  switch(result)
  {
    case 1:
    case 2:
      return result;
    case 3:
      result = 8;
      break;
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      result = 5;
      break;
    case 5:
      result = 6;
      break;
    default:
      v3 = 5;
      if (result != 1001)
      {
        v3 = 0;
      }

      if (result == 1000)
      {
        result = 5;
      }

      else
      {
        result = v3;
      }

      break;
  }

  return result;
}

- (INStartCallIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INStartCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INStartCallIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INStartCallIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INStartCallIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INStartCallIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INStartCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INStartCallIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INStartCallIntentResponse)initWithCode:(INStartCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = INStartCallIntentResponseCodeGetName(code);
    *buf = 136315906;
    v15 = "[INStartCallIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    v17 = code;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INStartCallIntentResponse;
  v10 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:v6];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 1001)
  {
    v3 = 9;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 1000)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3;
  }

  if (a3 == 13)
  {
    v5 = 10;
  }

  else
  {
    v5 = v4;
  }

  if (a3 == 12)
  {
    v6 = 7;
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

  if (a3 == 11)
  {
    v7 = 6;
  }

  else
  {
    v7 = v6;
  }

  if (a3 <= 12)
  {
    v5 = v7;
  }

  if (a3 == 10)
  {
    v8 = 5;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  if (a3 == 9)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  if (a3 == 8)
  {
    v10 = 3;
  }

  else
  {
    v10 = v9;
  }

  if (a3 == 7)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0x7FFFFFFF;
  }

  if (a3 == 6)
  {
    v11 = 1;
  }

  if (a3 > 7)
  {
    v11 = v10;
  }

  if (a3 <= 10)
  {
    return v11;
  }

  else
  {
    return v5;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  result = 3;
  if (a3 <= 3)
  {
    if (a3 == 3)
    {
      v4 = 7;
    }

    else
    {
      v4 = 3;
    }

    if (a3 == 2)
    {
      v5 = 4;
    }

    else
    {
      v5 = v4;
    }

    if (a3 == 1)
    {
      return 5;
    }

    else
    {
      return v5;
    }
  }

  else if ((a3 - 4) < 0xA || (a3 - 1000) < 2)
  {
    return 1;
  }

  return result;
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  if (a3 > 4)
  {
    if (a3 == 7)
    {
      return 3;
    }

    else
    {
      return a3 == 5;
    }
  }

  else if (a3 == 1)
  {
    if ((a4 - 1) >= 0xA)
    {
      if (a5)
      {
        return 5;
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return qword_18EE5F5C0[a4 - 1];
    }
  }

  else if (a3 == 4)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

@end