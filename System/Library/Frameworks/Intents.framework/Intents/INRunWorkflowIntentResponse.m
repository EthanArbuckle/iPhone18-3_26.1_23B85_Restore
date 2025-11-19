@interface INRunWorkflowIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INArchivedObject)underlyingIntent;
- (INArchivedObject)underlyingIntentResponse;
- (INRunWorkflowIntentResponse)initWithBackingStore:(id)a3;
- (INRunWorkflowIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INRunWorkflowIntentResponse)initWithCoder:(id)a3;
- (NSArray)steps;
- (NSNumber)continueRunning;
- (NSNumber)requestsIntentExecution;
- (NSNumber)waitingForResume;
- (NSString)utterance;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)a3;
- (void)setContinueRunning:(id)a3;
- (void)setRequestsIntentExecution:(id)a3;
- (void)setSteps:(id)a3;
- (void)setUnderlyingIntent:(id)a3;
- (void)setUnderlyingIntentResponse:(id)a3;
- (void)setUtterance:(id)a3;
- (void)setWaitingForResume:(id)a3;
@end

@implementation INRunWorkflowIntentResponse

- (id)_dictionaryRepresentation
{
  v30[8] = *MEMORY[0x1E69E9840];
  v29[0] = @"code";
  v3 = [(INRunWorkflowIntentResponse *)self code];
  v28 = v3;
  if (v3 < 0xA)
  {
    v4 = off_1E7286620[v3];
    v27 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v27 = 0;
  }

  v25 = v4;
  v30[0] = v4;
  v29[1] = @"underlyingIntent";
  v5 = [(INRunWorkflowIntentResponse *)self underlyingIntent];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v5;
  v30[1] = v5;
  v29[2] = @"underlyingIntentResponse";
  v7 = [(INRunWorkflowIntentResponse *)self underlyingIntentResponse];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v7;
  v30[2] = v7;
  v29[3] = @"utterance";
  v9 = [(INRunWorkflowIntentResponse *)self utterance];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v9;
  v30[3] = v9;
  v29[4] = @"waitingForResume";
  v11 = [(INRunWorkflowIntentResponse *)self waitingForResume];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v30[4] = v11;
  v29[5] = @"continueRunning";
  v13 = [(INRunWorkflowIntentResponse *)self continueRunning];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v30[5] = v14;
  v29[6] = @"steps";
  v15 = [(INRunWorkflowIntentResponse *)self steps];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = v16;
  v29[7] = @"requestsIntentExecution";
  v17 = [(INRunWorkflowIntentResponse *)self requestsIntentExecution];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v30[7] = v18;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:8];
  if (!v17)
  {
  }

  if (!v15)
  {
  }

  if (!v13)
  {
  }

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (v28 >= 0xA)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v26;
}

- (void)setRequestsIntentExecution:(id)a3
{
  v7 = a3;
  v4 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (v7)
  {
    [v4 setRequestsIntentExecution:{objc_msgSend(v7, "BOOLValue")}];
  }

  else
  {
    [v4 setHasRequestsIntentExecution:0];
  }

  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setSteps:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToVoiceCommandStepInfos(v4);

  [v5 setSteps:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setContinueRunning:(id)a3
{
  v7 = a3;
  v4 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (v7)
  {
    [v4 setContinueRunning:{objc_msgSend(v7, "BOOLValue")}];
  }

  else
  {
    [v4 setHasContinueRunning:0];
  }

  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setWaitingForResume:(id)a3
{
  v7 = a3;
  v4 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (v7)
  {
    [v4 setWaitingForResume:{objc_msgSend(v7, "BOOLValue")}];
  }

  else
  {
    [v4 setHasWaitingForResume:0];
  }

  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setUtterance:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setUtterance:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setUnderlyingIntentResponse:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToArchivedObject(v4);

  [v5 setUnderlyingIntentResponse:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setUnderlyingIntent:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToArchivedObject(v4);

  [v5 setUnderlyingIntent:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (NSNumber)requestsIntentExecution
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([v3 hasRequestsIntentExecution])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "requestsIntentExecution")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)steps
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 steps];
  v4 = INIntentSlotValueTransformFromVoiceCommandStepInfos(v3);

  return v4;
}

- (NSNumber)continueRunning
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([v3 hasContinueRunning])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "continueRunning")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSNumber)waitingForResume
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([v3 hasWaitingForResume])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "waitingForResume")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)utterance
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 utterance];
  v4 = [v3 copy];

  return v4;
}

- (INArchivedObject)underlyingIntentResponse
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 underlyingIntentResponse];
  v4 = INIntentSlotValueTransformFromArchivedObject(v3);

  return v4;
}

- (INArchivedObject)underlyingIntent
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 underlyingIntent];
  v4 = INIntentSlotValueTransformFromArchivedObject(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INRunWorkflowIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INRunWorkflowIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INRunWorkflowIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INRunWorkflowIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INRunWorkflowIntentResponseCodeHandleInApp"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INRunWorkflowIntentResponseCodeUserConfirmationRequired"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INRunWorkflowIntentResponseCodeFailure"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INRunWorkflowIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INRunWorkflowIntentResponseCodeFailureNotFound"])
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INRunWorkflowIntentResponseCodeFailureAnotherWorkflowRunning"];

  if (v6)
  {
    return 9;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INRunWorkflowIntentResponse *)self code];
  if ((v2 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F4C0[v2 - 1];
  }
}

- (INRunWorkflowIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INRunWorkflowIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INRunWorkflowIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INRunWorkflowIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INRunWorkflowIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INRunWorkflowIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INRunWorkflowIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INRunWorkflowIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 9)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7286620[a3];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INRunWorkflowIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INRunWorkflowIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 9)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 8)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F498[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 2;
  v6 = 5;
  if (a3 != 7)
  {
    v6 = a3 == 5;
  }

  if (a3 != 4)
  {
    v5 = v6;
  }

  v7 = 3;
  v8 = 8;
  v9 = 6;
  if (a5)
  {
    v9 = 7;
  }

  if (a4 == 1)
  {
    v9 = 9;
  }

  if (a4)
  {
    v8 = v9;
  }

  if (a3 != 1)
  {
    v8 = 0;
  }

  if (a3)
  {
    v7 = v8;
  }

  if (a3 <= 3)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

@end