@interface INActivateCarSignalIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INActivateCarSignalIntentResponse)initWithBackingStore:(id)store;
- (INActivateCarSignalIntentResponse)initWithCode:(INActivateCarSignalIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INActivateCarSignalIntentResponse)initWithCoder:(id)coder;
- (INActivateCarSignalIntentResponseCode)code;
- (INCarSignalOptions)signals;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setSignals:(INCarSignalOptions)signals;
@end

@implementation INActivateCarSignalIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INActivateCarSignalIntentResponse *)self code];
  v4 = code;
  if (code < (INActivateCarSignalIntentResponseCodeFailure|INActivateCarSignalIntentResponseCodeInProgress))
  {
    null = off_1E727D9A8[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"signals";
  v13[0] = null;
  v7 = INCarSignalOptionsGetNames([(INActivateCarSignalIntentResponse *)self signals]);
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!v7)
  {
  }

  if (v4 >= 6)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setSignals:(INCarSignalOptions)signals
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation clearSignals];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__INActivateCarSignalIntentResponse_setSignals___block_invoke;
  v8[3] = &unk_1E7288628;
  v8[4] = self;
  INCarSignalOptionsEnumerateBackingTypes(signals, v8);
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

void __48__INActivateCarSignalIntentResponse_setSignals___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _responseMessagePBRepresentation];
  [v3 addSignals:a2];
}

- (INCarSignalOptions)signals
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  signalsCount = [_responseMessagePBRepresentation signalsCount];

  v5 = 0;
  if (signalsCount)
  {
    for (i = 0; i != signalsCount; ++i)
    {
      _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
      v8 = [_responseMessagePBRepresentation2 signalsAtIndex:i];
      v9 = v5 | 1;
      if (v8 != 1)
      {
        v9 = v5;
      }

      if (v8 == 2)
      {
        v5 |= 2uLL;
      }

      else
      {
        v5 = v9;
      }
    }
  }

  return v5;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INActivateCarSignalIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INActivateCarSignalIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INActivateCarSignalIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INActivateCarSignalIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INActivateCarSignalIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INActivateCarSignalIntentResponseCodeFailureRequiringAppLaunch"];

  if (v6)
  {
    return 5;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INActivateCarSignalIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INActivateCarSignalIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INActivateCarSignalIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INActivateCarSignalIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INActivateCarSignalIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INActivateCarSignalIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INActivateCarSignalIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INActivateCarSignalIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INActivateCarSignalIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INActivateCarSignalIntentResponse)initWithCode:(INActivateCarSignalIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INActivateCarSignalIntentResponseCodeFailureRequiringAppLaunch)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727D9A8[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INActivateCarSignalIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INActivateCarSignalIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 4)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FDB0[code - 1];
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