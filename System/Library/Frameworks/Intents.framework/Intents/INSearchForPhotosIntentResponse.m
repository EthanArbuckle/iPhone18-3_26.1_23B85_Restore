@interface INSearchForPhotosIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INSearchForPhotosIntentResponse)initWithBackingStore:(id)a3;
- (INSearchForPhotosIntentResponse)initWithCode:(INSearchForPhotosIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSearchForPhotosIntentResponse)initWithCoder:(id)a3;
- (INSearchForPhotosIntentResponseCode)code;
- (NSNumber)searchResultsCount;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
- (void)setSearchResultsCount:(NSNumber *)searchResultsCount;
@end

@implementation INSearchForPhotosIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  v3 = [(INSearchForPhotosIntentResponse *)self code];
  v4 = v3;
  if (v3 < (INSearchForPhotosIntentResponseCodeFailureRequiringAppLaunch|INSearchForPhotosIntentResponseCodeContinueInApp))
  {
    v5 = off_1E72801A0[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"searchResultsCount";
  v13[0] = v5;
  v7 = [(INSearchForPhotosIntentResponse *)self searchResultsCount];
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

  if (v4 >= 6)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setSearchResultsCount:(NSNumber *)searchResultsCount
{
  v7 = searchResultsCount;
  v4 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (v7)
  {
    [v4 setSearchResultsCount:{-[NSNumber intValue](v7, "intValue")}];
  }

  else
  {
    [v4 setHasSearchResultsCount:0];
  }

  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (NSNumber)searchResultsCount
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([v3 hasSearchResultsCount])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithInt:{objc_msgSend(v5, "searchResultsCount")}];
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
  [v3 isEqualToString:@"INSearchForPhotosIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INSearchForPhotosIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INSearchForPhotosIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INSearchForPhotosIntentResponseCodeFailure"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INSearchForPhotosIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INSearchForPhotosIntentResponseCodeFailureAppConfigurationRequired"];

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
  v2 = [(INSearchForPhotosIntentResponse *)self code];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F000[v2 - 1];
  }
}

- (INSearchForPhotosIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSearchForPhotosIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSearchForPhotosIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INSearchForPhotosIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSearchForPhotosIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSearchForPhotosIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSearchForPhotosIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSearchForPhotosIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INSearchForPhotosIntentResponse)initWithCode:(INSearchForPhotosIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INSearchForPhotosIntentResponseCodeFailureAppConfigurationRequired)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E72801A0[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSearchForPhotosIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSearchForPhotosIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 5)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 3;
  }

  else
  {
    return dword_18EE5EFE8[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 3;
  if (a5)
  {
    v5 = 4;
  }

  if (a4 == 1)
  {
    v5 = 5;
  }

  v6 = 2;
  if (a3 != 4)
  {
    v6 = a3 == 5;
  }

  if (a3 == 1)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

@end