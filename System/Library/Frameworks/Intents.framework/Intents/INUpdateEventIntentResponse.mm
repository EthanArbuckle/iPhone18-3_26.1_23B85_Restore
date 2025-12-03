@interface INUpdateEventIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INCalendarEvent)updatedEvent;
- (INUpdateEventIntentResponse)initWithBackingStore:(id)store;
- (INUpdateEventIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INUpdateEventIntentResponse)initWithCoder:(id)coder;
- (NSArray)conflictingEventIdentifiers;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (int64_t)confirmationReason;
- (void)encodeWithCoder:(id)coder;
- (void)setConfirmationReason:(int64_t)reason;
- (void)setConflictingEventIdentifiers:(id)identifiers;
- (void)setUpdatedEvent:(id)event;
@end

@implementation INUpdateEventIntentResponse

- (id)_dictionaryRepresentation
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = @"code";
  code = [(INUpdateEventIntentResponse *)self code];
  v4 = code;
  if (code < 8)
  {
    null = off_1E7281DC8[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v18[0] = null;
  v17[1] = @"updatedEvent";
  updatedEvent = [(INUpdateEventIntentResponse *)self updatedEvent];
  null2 = updatedEvent;
  if (!updatedEvent)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v17[2] = @"conflictingEventIdentifiers";
  conflictingEventIdentifiers = [(INUpdateEventIntentResponse *)self conflictingEventIdentifiers];
  null3 = conflictingEventIdentifiers;
  if (!conflictingEventIdentifiers)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null3;
  v17[3] = @"confirmationReason";
  confirmationReason = [(INUpdateEventIntentResponse *)self confirmationReason];
  v12 = @"unknown";
  if (confirmationReason == 2)
  {
    v12 = @"updateAllRecurrences";
  }

  if (confirmationReason == 1)
  {
    v12 = @"scheduleConflict";
  }

  v13 = v12;
  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  if (!conflictingEventIdentifiers)
  {
  }

  if (!updatedEvent)
  {
  }

  if (v4 >= 8)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setConfirmationReason:(int64_t)reason
{
  if (reason == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  if (reason == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = _responseMessagePBRepresentation;
  if (v5 == 0x7FFFFFFF)
  {
    [_responseMessagePBRepresentation setHasConfirmationReason:0];
  }

  else
  {
    [_responseMessagePBRepresentation setConfirmationReason:v5];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setConflictingEventIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation clearConflictingEventIdentifiers];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
        [_responseMessagePBRepresentation2 addConflictingEventIdentifiers:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  _responseMessagePBRepresentation3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation3 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setUpdatedEvent:(id)event
{
  eventCopy = event;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToCalendarEvent(eventCopy);

  [_responseMessagePBRepresentation setUpdatedEvent:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (int64_t)confirmationReason
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  hasConfirmationReason = [_responseMessagePBRepresentation hasConfirmationReason];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  confirmationReason = [_responseMessagePBRepresentation2 confirmationReason];
  v7 = 2 * (confirmationReason == 2);
  if (confirmationReason == 1)
  {
    v7 = 1;
  }

  if (hasConfirmationReason)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)conflictingEventIdentifiers
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  conflictingEventIdentifiers = [_responseMessagePBRepresentation conflictingEventIdentifiers];

  if (conflictingEventIdentifiers)
  {
    v4 = [conflictingEventIdentifiers copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (INCalendarEvent)updatedEvent
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  updatedEvent = [_responseMessagePBRepresentation updatedEvent];
  v4 = INIntentSlotValueTransformFromCalendarEvent(updatedEvent);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INUpdateEventIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INUpdateEventIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INUpdateEventIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INUpdateEventIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INUpdateEventIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INUpdateEventIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INUpdateEventIntentResponseCodeFailureParticipantNotRemovable"])
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INUpdateEventIntentResponseCodeFailureParticipantAlreadyAdded"];

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
  code = [(INUpdateEventIntentResponse *)self code];
  if ((code - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FA48[code - 1];
  }
}

- (INUpdateEventIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INUpdateEventIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INUpdateEventIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INUpdateEventIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INUpdateEventIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INUpdateEventIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INUpdateEventIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INUpdateEventIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 7)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7281DC8[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INUpdateEventIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INUpdateEventIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 7)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (code == 6)
  {
    return 1;
  }

  else
  {
    return v3;
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
    return dword_18EE5FA28[code - 1];
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
  v7 = 6;
  v8 = 4;
  if (requested)
  {
    v8 = 5;
  }

  if (code == 2)
  {
    v8 = 7;
  }

  if (code != 1)
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