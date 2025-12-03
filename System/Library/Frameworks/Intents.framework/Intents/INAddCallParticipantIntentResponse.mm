@interface INAddCallParticipantIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INAddCallParticipantIntentResponse)initWithBackingStore:(id)store;
- (INAddCallParticipantIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INAddCallParticipantIntentResponse)initWithCoder:(id)coder;
- (NSArray)invites;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
- (void)setInvites:(id)invites;
@end

@implementation INAddCallParticipantIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INAddCallParticipantIntentResponse *)self code];
  v4 = code;
  if (code < 0xE)
  {
    null = off_1E7288940[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"invites";
  v13[0] = null;
  invites = [(INAddCallParticipantIntentResponse *)self invites];
  null2 = invites;
  if (!invites)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!invites)
  {
  }

  if (v4 >= 0xE)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setInvites:(id)invites
{
  invitesCopy = invites;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToCallInvites(invitesCopy);

  [_responseMessagePBRepresentation setInvites:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSArray)invites
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  invites = [_responseMessagePBRepresentation invites];
  v4 = INIntentSlotValueTransformFromCallInvites(invites);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeFailureRestrictedForParticipantInDowntime"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeFailureUnsupportedActiveCall"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeFailureSelfAdd"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeFailureParticipantAlreadyActive"])
  {
    v4 = 9;
  }

  if ([nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeFailureMaxParticipantsReached"])
  {
    v4 = 10;
  }

  if ([nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeFailureRestrictedDevice"])
  {
    v4 = 11;
  }

  if ([nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeFailureRestrictedDeviceByRegion"])
  {
    v5 = 12;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INAddCallParticipantIntentResponseCodeFailureRestrictedForParticipant"];

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
  code = [(INAddCallParticipantIntentResponse *)self code];
  if ((code - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FE28[code - 1];
  }
}

- (INAddCallParticipantIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INAddCallParticipantIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INAddCallParticipantIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INAddCallParticipantIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INAddCallParticipantIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INAddCallParticipantIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INAddCallParticipantIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INAddCallParticipantIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 0xD)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7288940[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INAddCallParticipantIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INAddCallParticipantIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) < 8)
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
  if ((code - 1) > 0xC)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FDF0[code - 1];
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

  if ((code - 1) >= 8)
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