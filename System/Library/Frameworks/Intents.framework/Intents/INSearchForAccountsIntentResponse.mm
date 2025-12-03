@interface INSearchForAccountsIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INSearchForAccountsIntentResponse)initWithBackingStore:(id)store;
- (INSearchForAccountsIntentResponse)initWithCode:(INSearchForAccountsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSearchForAccountsIntentResponse)initWithCoder:(id)coder;
- (INSearchForAccountsIntentResponseCode)code;
- (NSArray)accounts;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setAccounts:(NSArray *)accounts;
@end

@implementation INSearchForAccountsIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INSearchForAccountsIntentResponse *)self code];
  v4 = code;
  if (code < (INSearchForAccountsIntentResponseCodeFailureTermsAndConditionsAcceptanceRequired|INSearchForAccountsIntentResponseCodeInProgress))
  {
    null = off_1E72852A0[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"accounts";
  v13[0] = null;
  accounts = [(INSearchForAccountsIntentResponse *)self accounts];
  null2 = accounts;
  if (!accounts)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!accounts)
  {
  }

  if (v4 >= 0xA)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setAccounts:(NSArray *)accounts
{
  v4 = accounts;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToFinancialAccountValues(v4);

  [_responseMessagePBRepresentation setAccounts:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSArray)accounts
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  accounts = [_responseMessagePBRepresentation accounts];
  v4 = INIntentSlotValueTransformFromFinancialAccountValues(accounts);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSearchForAccountsIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSearchForAccountsIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSearchForAccountsIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSearchForAccountsIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSearchForAccountsIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INSearchForAccountsIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INSearchForAccountsIntentResponseCodeFailureCredentialsUnverified"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INSearchForAccountsIntentResponseCodeFailureAccountNotFound"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INSearchForAccountsIntentResponseCodeFailureTermsAndConditionsAcceptanceRequired"])
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSearchForAccountsIntentResponseCodeFailureNotEligible"];

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
  code = [(INSearchForAccountsIntentResponse *)self code];
  if ((code - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F9E0[code - 1];
  }
}

- (INSearchForAccountsIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSearchForAccountsIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSearchForAccountsIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INSearchForAccountsIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSearchForAccountsIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSearchForAccountsIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSearchForAccountsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSearchForAccountsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INSearchForAccountsIntentResponse)initWithCode:(INSearchForAccountsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INSearchForAccountsIntentResponseCodeFailureNotEligible)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E72852A0[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSearchForAccountsIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSearchForAccountsIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) < 4)
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
  if ((code - 1) > 8)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F9B8[code - 1];
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

  if ((code - 1) >= 4)
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