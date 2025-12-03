@interface INStartCallIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INConnectedCall)startedCall;
- (INStartCallIntentResponse)initWithBackingStore:(id)store;
- (INStartCallIntentResponse)initWithCode:(INStartCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INStartCallIntentResponse)initWithCoder:(id)coder;
- (INStartCallIntentResponseCode)code;
- (NSArray)restrictedContacts;
- (NSNumber)shouldDoEmergencyCountdown;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)confirmationReason;
- (void)encodeWithCoder:(id)coder;
- (void)setConfirmationReason:(int64_t)reason;
- (void)setRestrictedContacts:(id)contacts;
- (void)setShouldDoEmergencyCountdown:(id)countdown;
- (void)setStartedCall:(id)call;
@end

@implementation INStartCallIntentResponse

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"code";
  v2 = INStartCallIntentResponseCodeGetName([(INStartCallIntentResponse *)self code]);
  null = v2;
  if (!v2)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setRestrictedContacts:(id)contacts
{
  contactsCopy = contacts;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToContactValues(contactsCopy);

  [_responseMessagePBRepresentation setRestrictedContacts:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setStartedCall:(id)call
{
  callCopy = call;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToConnectedCall(callCopy);

  [_responseMessagePBRepresentation setStartedCall:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setConfirmationReason:(int64_t)reason
{
  if (reason > 2)
  {
    if (reason == 3)
    {
      v4 = 3;
      goto LABEL_11;
    }

    if (reason == 1000)
    {
      v4 = 4;
      goto LABEL_11;
    }

LABEL_8:
    _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
    [_responseMessagePBRepresentation setHasConfirmationReason:0];
    goto LABEL_12;
  }

  if (reason == 1)
  {
    v4 = 1;
    goto LABEL_11;
  }

  if (reason != 2)
  {
    goto LABEL_8;
  }

  v4 = 2;
LABEL_11:
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation setConfirmationReason:v4];
LABEL_12:

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setShouldDoEmergencyCountdown:(id)countdown
{
  countdownCopy = countdown;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (countdownCopy)
  {
    [_responseMessagePBRepresentation setShouldDoEmergencyCountdown:{objc_msgSend(countdownCopy, "BOOLValue")}];
  }

  else
  {
    [_responseMessagePBRepresentation setHasShouldDoEmergencyCountdown:0];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSArray)restrictedContacts
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  restrictedContacts = [_responseMessagePBRepresentation restrictedContacts];
  v4 = INIntentSlotValueTransformFromContactValues(restrictedContacts);

  return v4;
}

- (INConnectedCall)startedCall
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  startedCall = [_responseMessagePBRepresentation startedCall];
  v4 = INIntentSlotValueTransformFromConnectedCall(startedCall);

  return v4;
}

- (int64_t)confirmationReason
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  hasConfirmationReason = [_responseMessagePBRepresentation hasConfirmationReason];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  confirmationReason = [_responseMessagePBRepresentation2 confirmationReason];
  if (hasConfirmationReason && (confirmationReason - 1) <= 3)
  {
    v7 = qword_18EE5F700[confirmationReason - 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSNumber)shouldDoEmergencyCountdown
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([_responseMessagePBRepresentation hasShouldDoEmergencyCountdown])
  {
    v4 = MEMORY[0x1E696AD98];
    _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(_responseMessagePBRepresentation2, "shouldDoEmergencyCountdown")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INStartCallIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INStartCallIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeUserConfirmationRequired"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeFailureCallingServiceNotAvailable"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeFailureContactNotSupportedByApp"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeFailureAirplaneModeEnabled"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeFailureUnableToHandOff"])
  {
    v4 = 9;
  }

  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeFailureAppConfigurationRequired"])
  {
    v4 = 10;
  }

  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeFailureCallInProgress"])
  {
    v4 = 11;
  }

  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeFailureCallRinging"])
  {
    v4 = 12;
  }

  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeFailureScreenTimeRestrictionEnabled"])
  {
    v4 = 1000;
  }

  if ([nameCopy isEqualToString:@"INStartCallIntentResponseCodeFailureDownTimeRestrictionEnabled"])
  {
    v5 = 1001;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INStartCallIntentResponseCodeFailureRequiringInAppAuthentication"];

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

- (INStartCallIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INStartCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INStartCallIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INStartCallIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INStartCallIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INStartCallIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INStartCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INStartCallIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
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

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 1001)
  {
    v3 = 9;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (code == 1000)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3;
  }

  if (code == 13)
  {
    v5 = 10;
  }

  else
  {
    v5 = v4;
  }

  if (code == 12)
  {
    v6 = 7;
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

  if (code == 11)
  {
    v7 = 6;
  }

  else
  {
    v7 = v6;
  }

  if (code <= 12)
  {
    v5 = v7;
  }

  if (code == 10)
  {
    v8 = 5;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  if (code == 9)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  if (code == 8)
  {
    v10 = 3;
  }

  else
  {
    v10 = v9;
  }

  if (code == 7)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0x7FFFFFFF;
  }

  if (code == 6)
  {
    v11 = 1;
  }

  if (code > 7)
  {
    v11 = v10;
  }

  if (code <= 10)
  {
    return v11;
  }

  else
  {
    return v5;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  result = 3;
  if (code <= 3)
  {
    if (code == 3)
    {
      v4 = 7;
    }

    else
    {
      v4 = 3;
    }

    if (code == 2)
    {
      v5 = 4;
    }

    else
    {
      v5 = v4;
    }

    if (code == 1)
    {
      return 5;
    }

    else
    {
      return v5;
    }
  }

  else if ((code - 4) < 0xA || (code - 1000) < 2)
  {
    return 1;
  }

  return result;
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  if (type > 4)
  {
    if (type == 7)
    {
      return 3;
    }

    else
    {
      return type == 5;
    }
  }

  else if (type == 1)
  {
    if ((code - 1) >= 0xA)
    {
      if (requested)
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
      return qword_18EE5F5C0[code - 1];
    }
  }

  else if (type == 4)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

@end