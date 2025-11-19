@interface INSearchForMediaIntentResponse
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INSearchForMediaIntentResponse)initWithBackingStore:(id)a3;
- (INSearchForMediaIntentResponse)initWithCode:(INSearchForMediaIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSearchForMediaIntentResponse)initWithCoder:(id)a3;
- (INSearchForMediaIntentResponseCode)code;
- (NSArray)mediaItems;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
- (void)setMediaItems:(NSArray *)mediaItems;
@end

@implementation INSearchForMediaIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  v3 = [(INSearchForMediaIntentResponse *)self code];
  v4 = v3;
  if (v3 < (INSearchForMediaIntentResponseCodeFailureRequiringAppLaunch|INSearchForMediaIntentResponseCodeReady))
  {
    v5 = off_1E7286800[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"mediaItems";
  v13[0] = v5;
  v7 = [(INSearchForMediaIntentResponse *)self mediaItems];
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

  if (v4 >= 7)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setMediaItems:(NSArray *)mediaItems
{
  v4 = mediaItems;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToMediaItemValues(v4);

  [v5 setMediaItems:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (NSArray)mediaItems
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 mediaItems];
  v4 = INIntentSlotValueTransformFromMediaItemValues(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INSearchForMediaIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INSearchForMediaIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INSearchForMediaIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INSearchForMediaIntentResponseCodeInProgress"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INSearchForMediaIntentResponseCodeSuccess"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INSearchForMediaIntentResponseCodeFailure"])
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INSearchForMediaIntentResponseCodeFailureRequiringAppLaunch"];

  if (v6)
  {
    return 6;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  result = [(INSearchForMediaIntentResponse *)self code];
  if ((result - 1) >= 6)
  {
    return 0;
  }

  return result;
}

- (INSearchForMediaIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSearchForMediaIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSearchForMediaIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INSearchForMediaIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSearchForMediaIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSearchForMediaIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSearchForMediaIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSearchForMediaIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INSearchForMediaIntentResponse)initWithCode:(INSearchForMediaIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INSearchForMediaIntentResponseCodeFailureRequiringAppLaunch)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7286800[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSearchForMediaIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSearchForMediaIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FD98[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 3;
  v6 = 2;
  if (a3 != 4)
  {
    v6 = a3 == 5;
  }

  if (a3 != 2)
  {
    v5 = v6;
  }

  v7 = 4;
  v8 = 5;
  if (a5)
  {
    v8 = 6;
  }

  if (a3 != 1)
  {
    v8 = 0;
  }

  if (a3)
  {
    v7 = v8;
  }

  if (a3 <= 1)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

@end