@interface INRunWorkflowIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INArchivedObject)underlyingIntent;
- (INArchivedObject)underlyingIntentResponse;
- (INRunWorkflowIntentResponse)initWithBackingStore:(id)store;
- (INRunWorkflowIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INRunWorkflowIntentResponse)initWithCoder:(id)coder;
- (NSArray)steps;
- (NSNumber)continueRunning;
- (NSNumber)requestsIntentExecution;
- (NSNumber)waitingForResume;
- (NSString)utterance;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
- (void)setContinueRunning:(id)running;
- (void)setRequestsIntentExecution:(id)execution;
- (void)setSteps:(id)steps;
- (void)setUnderlyingIntent:(id)intent;
- (void)setUnderlyingIntentResponse:(id)response;
- (void)setUtterance:(id)utterance;
- (void)setWaitingForResume:(id)resume;
@end

@implementation INRunWorkflowIntentResponse

- (id)_dictionaryRepresentation
{
  v30[8] = *MEMORY[0x1E69E9840];
  v29[0] = @"code";
  code = [(INRunWorkflowIntentResponse *)self code];
  v28 = code;
  if (code < 0xA)
  {
    null = off_1E7286620[code];
    v27 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v27 = 0;
  }

  v25 = null;
  v30[0] = null;
  v29[1] = @"underlyingIntent";
  underlyingIntent = [(INRunWorkflowIntentResponse *)self underlyingIntent];
  v6 = underlyingIntent;
  if (!underlyingIntent)
  {
    underlyingIntent = [MEMORY[0x1E695DFB0] null];
  }

  v24 = underlyingIntent;
  v30[1] = underlyingIntent;
  v29[2] = @"underlyingIntentResponse";
  underlyingIntentResponse = [(INRunWorkflowIntentResponse *)self underlyingIntentResponse];
  v8 = underlyingIntentResponse;
  if (!underlyingIntentResponse)
  {
    underlyingIntentResponse = [MEMORY[0x1E695DFB0] null];
  }

  v23 = underlyingIntentResponse;
  v30[2] = underlyingIntentResponse;
  v29[3] = @"utterance";
  utterance = [(INRunWorkflowIntentResponse *)self utterance];
  v10 = utterance;
  if (!utterance)
  {
    utterance = [MEMORY[0x1E695DFB0] null];
  }

  v22 = utterance;
  v30[3] = utterance;
  v29[4] = @"waitingForResume";
  waitingForResume = [(INRunWorkflowIntentResponse *)self waitingForResume];
  v12 = waitingForResume;
  if (!waitingForResume)
  {
    waitingForResume = [MEMORY[0x1E695DFB0] null];
  }

  v30[4] = waitingForResume;
  v29[5] = @"continueRunning";
  continueRunning = [(INRunWorkflowIntentResponse *)self continueRunning];
  null2 = continueRunning;
  if (!continueRunning)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v30[5] = null2;
  v29[6] = @"steps";
  steps = [(INRunWorkflowIntentResponse *)self steps];
  null3 = steps;
  if (!steps)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = null3;
  v29[7] = @"requestsIntentExecution";
  requestsIntentExecution = [(INRunWorkflowIntentResponse *)self requestsIntentExecution];
  null4 = requestsIntentExecution;
  if (!requestsIntentExecution)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v30[7] = null4;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:8];
  if (!requestsIntentExecution)
  {
  }

  if (!steps)
  {
  }

  if (!continueRunning)
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

- (void)setRequestsIntentExecution:(id)execution
{
  executionCopy = execution;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (executionCopy)
  {
    [_responseMessagePBRepresentation setRequestsIntentExecution:{objc_msgSend(executionCopy, "BOOLValue")}];
  }

  else
  {
    [_responseMessagePBRepresentation setHasRequestsIntentExecution:0];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setSteps:(id)steps
{
  stepsCopy = steps;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToVoiceCommandStepInfos(stepsCopy);

  [_responseMessagePBRepresentation setSteps:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setContinueRunning:(id)running
{
  runningCopy = running;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (runningCopy)
  {
    [_responseMessagePBRepresentation setContinueRunning:{objc_msgSend(runningCopy, "BOOLValue")}];
  }

  else
  {
    [_responseMessagePBRepresentation setHasContinueRunning:0];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setWaitingForResume:(id)resume
{
  resumeCopy = resume;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (resumeCopy)
  {
    [_responseMessagePBRepresentation setWaitingForResume:{objc_msgSend(resumeCopy, "BOOLValue")}];
  }

  else
  {
    [_responseMessagePBRepresentation setHasWaitingForResume:0];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setUtterance:(id)utterance
{
  utteranceCopy = utterance;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation setUtterance:utteranceCopy];

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setUnderlyingIntentResponse:(id)response
{
  responseCopy = response;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToArchivedObject(responseCopy);

  [_responseMessagePBRepresentation setUnderlyingIntentResponse:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setUnderlyingIntent:(id)intent
{
  intentCopy = intent;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToArchivedObject(intentCopy);

  [_responseMessagePBRepresentation setUnderlyingIntent:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSNumber)requestsIntentExecution
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([_responseMessagePBRepresentation hasRequestsIntentExecution])
  {
    v4 = MEMORY[0x1E696AD98];
    _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(_responseMessagePBRepresentation2, "requestsIntentExecution")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)steps
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  steps = [_responseMessagePBRepresentation steps];
  v4 = INIntentSlotValueTransformFromVoiceCommandStepInfos(steps);

  return v4;
}

- (NSNumber)continueRunning
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([_responseMessagePBRepresentation hasContinueRunning])
  {
    v4 = MEMORY[0x1E696AD98];
    _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(_responseMessagePBRepresentation2, "continueRunning")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSNumber)waitingForResume
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([_responseMessagePBRepresentation hasWaitingForResume])
  {
    v4 = MEMORY[0x1E696AD98];
    _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(_responseMessagePBRepresentation2, "waitingForResume")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)utterance
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  utterance = [_responseMessagePBRepresentation utterance];
  v4 = [utterance copy];

  return v4;
}

- (INArchivedObject)underlyingIntentResponse
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  underlyingIntentResponse = [_responseMessagePBRepresentation underlyingIntentResponse];
  v4 = INIntentSlotValueTransformFromArchivedObject(underlyingIntentResponse);

  return v4;
}

- (INArchivedObject)underlyingIntent
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  underlyingIntent = [_responseMessagePBRepresentation underlyingIntent];
  v4 = INIntentSlotValueTransformFromArchivedObject(underlyingIntent);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INRunWorkflowIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INRunWorkflowIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INRunWorkflowIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INRunWorkflowIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INRunWorkflowIntentResponseCodeHandleInApp"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INRunWorkflowIntentResponseCodeUserConfirmationRequired"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INRunWorkflowIntentResponseCodeFailure"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INRunWorkflowIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INRunWorkflowIntentResponseCodeFailureNotFound"])
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INRunWorkflowIntentResponseCodeFailureAnotherWorkflowRunning"];

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
  code = [(INRunWorkflowIntentResponse *)self code];
  if ((code - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F4C0[code - 1];
  }
}

- (INRunWorkflowIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INRunWorkflowIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INRunWorkflowIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INRunWorkflowIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INRunWorkflowIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INRunWorkflowIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INRunWorkflowIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INRunWorkflowIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 9)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7286620[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INRunWorkflowIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INRunWorkflowIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 9)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (code == 8)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 8)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F498[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 2;
  v6 = 5;
  if (type != 7)
  {
    v6 = type == 5;
  }

  if (type != 4)
  {
    v5 = v6;
  }

  v7 = 3;
  v8 = 8;
  v9 = 6;
  if (requested)
  {
    v9 = 7;
  }

  if (code == 1)
  {
    v9 = 9;
  }

  if (code)
  {
    v8 = v9;
  }

  if (type != 1)
  {
    v8 = 0;
  }

  if (type)
  {
    v7 = v8;
  }

  if (type <= 3)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

@end