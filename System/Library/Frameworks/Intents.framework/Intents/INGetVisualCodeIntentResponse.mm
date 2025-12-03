@interface INGetVisualCodeIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INGetVisualCodeIntentResponse)initWithBackingStore:(id)store;
- (INGetVisualCodeIntentResponse)initWithCode:(INGetVisualCodeIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INGetVisualCodeIntentResponse)initWithCoder:(id)coder;
- (INGetVisualCodeIntentResponseCode)code;
- (INImage)visualCodeImage;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setVisualCodeImage:(INImage *)visualCodeImage;
@end

@implementation INGetVisualCodeIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INGetVisualCodeIntentResponse *)self code];
  v4 = code;
  if (code < 8)
  {
    null = off_1E72800D0[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"visualCodeImage";
  v13[0] = null;
  visualCodeImage = [(INGetVisualCodeIntentResponse *)self visualCodeImage];
  null2 = visualCodeImage;
  if (!visualCodeImage)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!visualCodeImage)
  {
  }

  if (v4 >= 8)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setVisualCodeImage:(INImage *)visualCodeImage
{
  v4 = visualCodeImage;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToImageValue(v4);

  [_responseMessagePBRepresentation setVisualCodeImage:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (INImage)visualCodeImage
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  visualCodeImage = [_responseMessagePBRepresentation visualCodeImage];
  v4 = INIntentSlotValueTransformFromImageValue(visualCodeImage);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INGetVisualCodeIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INGetVisualCodeIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INGetVisualCodeIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INGetVisualCodeIntentResponseCodeInProgress"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INGetVisualCodeIntentResponseCodeSuccess"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INGetVisualCodeIntentResponseCodeFailure"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INGetVisualCodeIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INGetVisualCodeIntentResponseCodeFailureAppConfigurationRequired"];

  if (v6)
  {
    return 7;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INGetVisualCodeIntentResponse *)self code];
  if ((code - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5E850[code - 1];
  }
}

- (INGetVisualCodeIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INGetVisualCodeIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INGetVisualCodeIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INGetVisualCodeIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INGetVisualCodeIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INGetVisualCodeIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INGetVisualCodeIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INGetVisualCodeIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INGetVisualCodeIntentResponse)initWithCode:(INGetVisualCodeIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INGetVisualCodeIntentResponseCodeFailureAppConfigurationRequired)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E72800D0[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INGetVisualCodeIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INGetVisualCodeIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 7)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F138[code - 1];
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

  if (code == 1)
  {
    v8 = 7;
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