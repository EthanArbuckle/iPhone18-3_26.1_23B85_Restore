@interface INListShortcutsIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INListShortcutsIntentResponse)initWithBackingStore:(id)store;
- (INListShortcutsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INListShortcutsIntentResponse)initWithCoder:(id)coder;
- (NSArray)shortcuts;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
- (void)setShortcuts:(id)shortcuts;
@end

@implementation INListShortcutsIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INListShortcutsIntentResponse *)self code];
  v4 = code;
  if (code < 6)
  {
    null = *(&off_1E7287578 + code);
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"shortcuts";
  v13[0] = null;
  shortcuts = [(INListShortcutsIntentResponse *)self shortcuts];
  null2 = shortcuts;
  if (!shortcuts)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!shortcuts)
  {
  }

  if (v4 >= 6)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToShortcutOverviews(shortcutsCopy);

  [_responseMessagePBRepresentation setShortcuts:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSArray)shortcuts
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  shortcuts = [_responseMessagePBRepresentation shortcuts];
  v4 = INIntentSlotValueTransformFromShortcutOverviews(shortcuts);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INListShortcutsIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INListShortcutsIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INListShortcutsIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INListShortcutsIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INListShortcutsIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INListShortcutsIntentResponseCodeFailureRequiringAppLaunch"];

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
  code = [(INListShortcutsIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INListShortcutsIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INListShortcutsIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INListShortcutsIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INListShortcutsIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INListShortcutsIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INListShortcutsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INListShortcutsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INListShortcutsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E7287578 + code);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INListShortcutsIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INListShortcutsIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

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