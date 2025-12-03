@interface INResolveObjectReferenceIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INResolveObjectReferenceIntentResponse)initWithBackingStore:(id)store;
- (INResolveObjectReferenceIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INResolveObjectReferenceIntentResponse)initWithCoder:(id)coder;
- (NSData)resolvedReferences;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
- (void)setResolvedReferences:(id)references;
@end

@implementation INResolveObjectReferenceIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INResolveObjectReferenceIntentResponse *)self code];
  v4 = code;
  if (code < 0xD)
  {
    null = off_1E7288760[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"resolvedReferences";
  v13[0] = null;
  resolvedReferences = [(INResolveObjectReferenceIntentResponse *)self resolvedReferences];
  null2 = resolvedReferences;
  if (!resolvedReferences)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!resolvedReferences)
  {
  }

  if (v4 >= 0xD)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setResolvedReferences:(id)references
{
  referencesCopy = references;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation setResolvedReferences:referencesCopy];

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSData)resolvedReferences
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  resolvedReferences = [_responseMessagePBRepresentation resolvedReferences];
  v4 = [resolvedReferences copy];

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeFailureNoReference"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeFailureUnableToDecode"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeFailureUnableToEncode"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeFailureUnsupportedQuery"])
  {
    v4 = 9;
  }

  if ([nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeFailureTypeNotFound"])
  {
    v4 = 10;
  }

  if ([nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeFailureTypeMismatch"])
  {
    v5 = 11;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INResolveObjectReferenceIntentResponseCodeFailureNoDataSource"];

  if (v6)
  {
    return 12;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INResolveObjectReferenceIntentResponse *)self code];
  if ((code - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FBD8[code - 1];
  }
}

- (INResolveObjectReferenceIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INResolveObjectReferenceIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INResolveObjectReferenceIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INResolveObjectReferenceIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INResolveObjectReferenceIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INResolveObjectReferenceIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INResolveObjectReferenceIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INResolveObjectReferenceIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 0xC)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7288760[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INResolveObjectReferenceIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INResolveObjectReferenceIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) >= 7)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return code - 6;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 0xB)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FBA8[code - 1];
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
  v7 = (code + 6);
  v8 = 4;
  if (requested)
  {
    v8 = 5;
  }

  if (code >= 7)
  {
    v7 = v8;
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