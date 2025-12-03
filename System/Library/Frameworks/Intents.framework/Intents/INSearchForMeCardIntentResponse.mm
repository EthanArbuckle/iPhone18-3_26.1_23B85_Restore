@interface INSearchForMeCardIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INContactCard)meCard;
- (INSearchForMeCardIntentResponse)initWithBackingStore:(id)store;
- (INSearchForMeCardIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INSearchForMeCardIntentResponse)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
- (void)setMeCard:(id)card;
@end

@implementation INSearchForMeCardIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INSearchForMeCardIntentResponse *)self code];
  v4 = code;
  if (code < 9)
  {
    null = *(&off_1E7287758 + code);
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"meCard";
  v13[0] = null;
  meCard = [(INSearchForMeCardIntentResponse *)self meCard];
  null2 = meCard;
  if (!meCard)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!meCard)
  {
  }

  if (v4 >= 9)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setMeCard:(id)card
{
  cardCopy = card;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToContactCard(cardCopy);

  [_responseMessagePBRepresentation setMeCard:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (INContactCard)meCard
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  meCard = [_responseMessagePBRepresentation meCard];
  v4 = INIntentSlotValueTransformFromContactCard(meCard);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSearchForMeCardIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSearchForMeCardIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSearchForMeCardIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSearchForMeCardIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSearchForMeCardIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INSearchForMeCardIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INSearchForMeCardIntentResponseCodeFailureMeCardNotSet"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INSearchForMeCardIntentResponseCodeFailureContactServiceNotAvailable"])
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSearchForMeCardIntentResponseCodeFailureUserAuthorizationRequired"];

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
  code = [(INSearchForMeCardIntentResponse *)self code];
  if ((code - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FAA0[code - 1];
  }
}

- (INSearchForMeCardIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSearchForMeCardIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSearchForMeCardIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INSearchForMeCardIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSearchForMeCardIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSearchForMeCardIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSearchForMeCardIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INSearchForMeCardIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 8)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E7287758 + code);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSearchForMeCardIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSearchForMeCardIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) < 3)
  {
    return code - 5;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 7)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FA80[code - 1];
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
  v7 = 4;
  if (requested)
  {
    v7 = 5;
  }

  if ((code - 1) >= 3)
  {
    v8 = v7;
  }

  else
  {
    v8 = (code + 5);
  }

  if (type != 1)
  {
    v8 = 0;
  }

  if (type)
  {
    v6 = v8;
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