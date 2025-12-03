@interface INCreateEventIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INCalendarEvent)createdEvent;
- (INCreateEventIntentResponse)initWithBackingStore:(id)store;
- (INCreateEventIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INCreateEventIntentResponse)initWithCoder:(id)coder;
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
- (void)setCreatedEvent:(id)event;
@end

@implementation INCreateEventIntentResponse

- (id)_dictionaryRepresentation
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = @"code";
  code = [(INCreateEventIntentResponse *)self code];
  v4 = code;
  if (code < 6)
  {
    null = off_1E727FF68[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v18[0] = null;
  v17[1] = @"createdEvent";
  createdEvent = [(INCreateEventIntentResponse *)self createdEvent];
  null2 = createdEvent;
  if (!createdEvent)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v17[2] = @"conflictingEventIdentifiers";
  conflictingEventIdentifiers = [(INCreateEventIntentResponse *)self conflictingEventIdentifiers];
  null3 = conflictingEventIdentifiers;
  if (!conflictingEventIdentifiers)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null3;
  v17[3] = @"confirmationReason";
  confirmationReason = [(INCreateEventIntentResponse *)self confirmationReason];
  if ((confirmationReason - 1) > 2)
  {
    v12 = @"unknown";
  }

  else
  {
    v12 = *(&off_1E72832F0 + confirmationReason - 1);
  }

  v13 = v12;
  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  if (!conflictingEventIdentifiers)
  {
  }

  if (!createdEvent)
  {
  }

  if (v4 >= 6)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setConfirmationReason:(int64_t)reason
{
  v4 = reason - 1;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = _responseMessagePBRepresentation;
  if (v4 > 2)
  {
    [_responseMessagePBRepresentation setHasConfirmationReason:0];
  }

  else
  {
    [_responseMessagePBRepresentation setConfirmationReason:?];
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

- (void)setCreatedEvent:(id)event
{
  eventCopy = event;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToCalendarEvent(eventCopy);

  [_responseMessagePBRepresentation setCreatedEvent:v6];
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
  if (((confirmationReason - 1 < 3) & hasConfirmationReason) != 0)
  {
    v7 = confirmationReason;
  }

  else
  {
    v7 = 0;
  }

  return v7;
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

- (INCalendarEvent)createdEvent
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  createdEvent = [_responseMessagePBRepresentation createdEvent];
  v4 = INIntentSlotValueTransformFromCalendarEvent(createdEvent);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INCreateEventIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INCreateEventIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INCreateEventIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INCreateEventIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INCreateEventIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INCreateEventIntentResponseCodeFailureRequiringAppLaunch"];

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
  code = [(INCreateEventIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INCreateEventIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INCreateEventIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INCreateEventIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INCreateEventIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INCreateEventIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INCreateEventIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INCreateEventIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INCreateEventIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
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
      v9 = off_1E727FF68[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INCreateEventIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INCreateEventIntentResponse;
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