@interface INSearchForMediaIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INSearchForMediaIntentResponse)initWithBackingStore:(id)store;
- (INSearchForMediaIntentResponse)initWithCode:(INSearchForMediaIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSearchForMediaIntentResponse)initWithCoder:(id)coder;
- (INSearchForMediaIntentResponseCode)code;
- (NSArray)mediaItems;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setMediaItems:(NSArray *)mediaItems;
@end

@implementation INSearchForMediaIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INSearchForMediaIntentResponse *)self code];
  v4 = code;
  if (code < (INSearchForMediaIntentResponseCodeFailureRequiringAppLaunch|INSearchForMediaIntentResponseCodeReady))
  {
    null = off_1E7286800[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"mediaItems";
  v13[0] = null;
  mediaItems = [(INSearchForMediaIntentResponse *)self mediaItems];
  null2 = mediaItems;
  if (!mediaItems)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!mediaItems)
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
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToMediaItemValues(v4);

  [_responseMessagePBRepresentation setMediaItems:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSArray)mediaItems
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  mediaItems = [_responseMessagePBRepresentation mediaItems];
  v4 = INIntentSlotValueTransformFromMediaItemValues(mediaItems);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSearchForMediaIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSearchForMediaIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSearchForMediaIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSearchForMediaIntentResponseCodeInProgress"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSearchForMediaIntentResponseCodeSuccess"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INSearchForMediaIntentResponseCodeFailure"])
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSearchForMediaIntentResponseCodeFailureRequiringAppLaunch"];

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

- (INSearchForMediaIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSearchForMediaIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSearchForMediaIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INSearchForMediaIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSearchForMediaIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSearchForMediaIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSearchForMediaIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSearchForMediaIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
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

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 5)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FD98[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 3;
  v6 = 2;
  if (type != 4)
  {
    v6 = type == 5;
  }

  if (type != 2)
  {
    v5 = v6;
  }

  v7 = 4;
  v8 = 5;
  if (requested)
  {
    v8 = 6;
  }

  if (type != 1)
  {
    v8 = 0;
  }

  if (type)
  {
    v7 = v8;
  }

  if (type <= 1)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

@end