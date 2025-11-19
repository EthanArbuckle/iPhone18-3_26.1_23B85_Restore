@interface INUpdateEventIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INCalendarEvent)updatedEvent;
- (INUpdateEventIntentResponse)initWithBackingStore:(id)a3;
- (INUpdateEventIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INUpdateEventIntentResponse)initWithCoder:(id)a3;
- (NSArray)conflictingEventIdentifiers;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (int64_t)confirmationReason;
- (void)encodeWithCoder:(id)a3;
- (void)setConfirmationReason:(int64_t)a3;
- (void)setConflictingEventIdentifiers:(id)a3;
- (void)setUpdatedEvent:(id)a3;
@end

@implementation INUpdateEventIntentResponse

- (id)_dictionaryRepresentation
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = @"code";
  v3 = [(INUpdateEventIntentResponse *)self code];
  v4 = v3;
  if (v3 < 8)
  {
    v5 = off_1E7281DC8[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v18[0] = v5;
  v17[1] = @"updatedEvent";
  v7 = [(INUpdateEventIntentResponse *)self updatedEvent];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v8;
  v17[2] = @"conflictingEventIdentifiers";
  v9 = [(INUpdateEventIntentResponse *)self conflictingEventIdentifiers];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v10;
  v17[3] = @"confirmationReason";
  v11 = [(INUpdateEventIntentResponse *)self confirmationReason];
  v12 = @"unknown";
  if (v11 == 2)
  {
    v12 = @"updateAllRecurrences";
  }

  if (v11 == 1)
  {
    v12 = @"scheduleConflict";
  }

  v13 = v12;
  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (v4 >= 8)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setConfirmationReason:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  if (a3 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = v6;
  if (v5 == 0x7FFFFFFF)
  {
    [v6 setHasConfirmationReason:0];
  }

  else
  {
    [v6 setConfirmationReason:v5];
  }

  v9 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v8 = [v9 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v8];
}

- (void)setConflictingEventIdentifiers:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 clearConflictingEventIdentifiers];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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
        v12 = [(INIntentResponse *)self _responseMessagePBRepresentation];
        [v12 addConflictingEventIdentifiers:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v14 = [v13 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setUpdatedEvent:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToCalendarEvent(v4);

  [v5 setUpdatedEvent:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (int64_t)confirmationReason
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 hasConfirmationReason];
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 confirmationReason];
  v7 = 2 * (v6 == 2);
  if (v6 == 1)
  {
    v7 = 1;
  }

  if (v4)
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
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 conflictingEventIdentifiers];

  if (v3)
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (INCalendarEvent)updatedEvent
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 updatedEvent];
  v4 = INIntentSlotValueTransformFromCalendarEvent(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INUpdateEventIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INUpdateEventIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INUpdateEventIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INUpdateEventIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INUpdateEventIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INUpdateEventIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INUpdateEventIntentResponseCodeFailureParticipantNotRemovable"])
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INUpdateEventIntentResponseCodeFailureParticipantAlreadyAdded"];

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
  v2 = [(INUpdateEventIntentResponse *)self code];
  if ((v2 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FA48[v2 - 1];
  }
}

- (INUpdateEventIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INUpdateEventIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INUpdateEventIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INUpdateEventIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INUpdateEventIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INUpdateEventIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INUpdateEventIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INUpdateEventIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 7)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7281DC8[a3];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INUpdateEventIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INUpdateEventIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 7)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 6)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FA28[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 2;
  if (a3 != 2)
  {
    v5 = a3 == 5;
  }

  v6 = 3;
  v7 = 6;
  v8 = 4;
  if (a5)
  {
    v8 = 5;
  }

  if (a4 == 2)
  {
    v8 = 7;
  }

  if (a4 != 1)
  {
    v7 = v8;
  }

  if (a3 != 1)
  {
    v7 = 0;
  }

  if (a3)
  {
    v6 = v7;
  }

  if (a3 <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end