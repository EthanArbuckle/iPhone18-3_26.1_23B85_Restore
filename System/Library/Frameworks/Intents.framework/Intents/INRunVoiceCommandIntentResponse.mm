@interface INRunVoiceCommandIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INArchivedObject)underlyingIntent;
- (INArchivedObject)underlyingIntentResponse;
- (INRunVoiceCommandIntentResponse)initWithBackingStore:(id)store;
- (INRunVoiceCommandIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INRunVoiceCommandIntentResponse)initWithCoder:(id)coder;
- (NSArray)steps;
- (NSDictionary)parameters;
- (NSNumber)continueRunning;
- (NSNumber)customResponsesDisabled;
- (NSNumber)interstitialDisabled;
- (NSNumber)prefersExecutionOnCompanion;
- (NSString)appBundleId;
- (NSString)localizedAppName;
- (NSString)responseTemplate;
- (NSString)underlyingIntentTitle;
- (NSString)verb;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (int64_t)intentCategory;
- (int64_t)toggleState;
- (void)encodeWithCoder:(id)coder;
- (void)setAppBundleId:(id)id;
- (void)setContinueRunning:(id)running;
- (void)setCustomResponsesDisabled:(id)disabled;
- (void)setIntentCategory:(int64_t)category;
- (void)setInterstitialDisabled:(id)disabled;
- (void)setLocalizedAppName:(id)name;
- (void)setParameters:(id)parameters;
- (void)setPrefersExecutionOnCompanion:(id)companion;
- (void)setResponseTemplate:(id)template;
- (void)setSteps:(id)steps;
- (void)setToggleState:(int64_t)state;
- (void)setUnderlyingIntent:(id)intent;
- (void)setUnderlyingIntentResponse:(id)response;
- (void)setUnderlyingIntentTitle:(id)title;
- (void)setVerb:(id)verb;
@end

@implementation INRunVoiceCommandIntentResponse

- (id)_dictionaryRepresentation
{
  v61[16] = *MEMORY[0x1E69E9840];
  v60[0] = @"code";
  code = [(INRunVoiceCommandIntentResponse *)self code];
  v59 = code;
  if (code < 0x16)
  {
    null = off_1E727E168[code];
    v58 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v58 = 0;
  }

  v48 = null;
  v61[0] = null;
  v60[1] = @"appBundleId";
  appBundleId = [(INRunVoiceCommandIntentResponse *)self appBundleId];
  v6 = appBundleId;
  if (!appBundleId)
  {
    appBundleId = [MEMORY[0x1E695DFB0] null];
  }

  v47 = appBundleId;
  v61[1] = appBundleId;
  v60[2] = @"intentCategory";
  intentCategory = [(INRunVoiceCommandIntentResponse *)self intentCategory];
  if ((intentCategory - 1) > 0x13)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7286400[intentCategory - 1];
  }

  v56 = v8;
  v61[2] = v56;
  v60[3] = @"customResponsesDisabled";
  customResponsesDisabled = [(INRunVoiceCommandIntentResponse *)self customResponsesDisabled];
  v10 = customResponsesDisabled;
  if (!customResponsesDisabled)
  {
    customResponsesDisabled = [MEMORY[0x1E695DFB0] null];
  }

  v46 = customResponsesDisabled;
  v61[3] = customResponsesDisabled;
  v60[4] = @"responseTemplate";
  responseTemplate = [(INRunVoiceCommandIntentResponse *)self responseTemplate];
  v12 = responseTemplate;
  if (!responseTemplate)
  {
    responseTemplate = [MEMORY[0x1E695DFB0] null];
  }

  v45 = responseTemplate;
  v61[4] = responseTemplate;
  v60[5] = @"parameters";
  parameters = [(INRunVoiceCommandIntentResponse *)self parameters];
  v14 = parameters;
  if (!parameters)
  {
    parameters = [MEMORY[0x1E695DFB0] null];
  }

  v44 = parameters;
  v61[5] = parameters;
  v60[6] = @"verb";
  verb = [(INRunVoiceCommandIntentResponse *)self verb];
  v16 = verb;
  if (!verb)
  {
    verb = [MEMORY[0x1E695DFB0] null];
  }

  v43 = verb;
  v61[6] = verb;
  v60[7] = @"underlyingIntent";
  underlyingIntent = [(INRunVoiceCommandIntentResponse *)self underlyingIntent];
  v18 = underlyingIntent;
  if (!underlyingIntent)
  {
    underlyingIntent = [MEMORY[0x1E695DFB0] null];
  }

  v42 = underlyingIntent;
  v61[7] = underlyingIntent;
  v60[8] = @"localizedAppName";
  localizedAppName = [(INRunVoiceCommandIntentResponse *)self localizedAppName];
  v20 = localizedAppName;
  if (!localizedAppName)
  {
    localizedAppName = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v18;
  v41 = localizedAppName;
  v61[8] = localizedAppName;
  v60[9] = @"underlyingIntentResponse";
  underlyingIntentResponse = [(INRunVoiceCommandIntentResponse *)self underlyingIntentResponse];
  v22 = underlyingIntentResponse;
  if (!underlyingIntentResponse)
  {
    underlyingIntentResponse = [MEMORY[0x1E695DFB0] null];
  }

  v40 = underlyingIntentResponse;
  v61[9] = underlyingIntentResponse;
  v60[10] = @"toggleState";
  toggleState = [(INRunVoiceCommandIntentResponse *)self toggleState];
  v24 = @"unknown";
  if (toggleState == 2)
  {
    v24 = @"off";
  }

  if (toggleState == 1)
  {
    v24 = @"on";
  }

  v50 = v24;
  v61[10] = v50;
  v60[11] = @"continueRunning";
  continueRunning = [(INRunVoiceCommandIntentResponse *)self continueRunning];
  v26 = continueRunning;
  if (!continueRunning)
  {
    continueRunning = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v20;
  v57 = v6;
  v39 = continueRunning;
  v61[11] = continueRunning;
  v60[12] = @"interstitialDisabled";
  interstitialDisabled = [(INRunVoiceCommandIntentResponse *)self interstitialDisabled];
  v28 = interstitialDisabled;
  if (!interstitialDisabled)
  {
    interstitialDisabled = [MEMORY[0x1E695DFB0] null];
  }

  v53 = v16;
  v54 = v14;
  v55 = v12;
  v61[12] = interstitialDisabled;
  v60[13] = @"underlyingIntentTitle";
  underlyingIntentTitle = [(INRunVoiceCommandIntentResponse *)self underlyingIntentTitle];
  null2 = underlyingIntentTitle;
  if (!underlyingIntentTitle)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v10;
  v61[13] = null2;
  v60[14] = @"steps";
  steps = [(INRunVoiceCommandIntentResponse *)self steps];
  null3 = steps;
  if (!steps)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v61[14] = null3;
  v60[15] = @"prefersExecutionOnCompanion";
  prefersExecutionOnCompanion = [(INRunVoiceCommandIntentResponse *)self prefersExecutionOnCompanion];
  null4 = prefersExecutionOnCompanion;
  if (!prefersExecutionOnCompanion)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v61[15] = null4;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:16];
  if (!prefersExecutionOnCompanion)
  {
  }

  if (!steps)
  {
  }

  if (!underlyingIntentTitle)
  {
  }

  if (!v28)
  {
  }

  if (!v26)
  {
  }

  if (!v22)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (!v53)
  {
  }

  if (!v54)
  {
  }

  if (!v55)
  {
  }

  if (!v31)
  {
  }

  if (!v57)
  {
  }

  if (v59 >= 0x16)
  {
  }

  v36 = *MEMORY[0x1E69E9840];

  return v49;
}

- (void)setPrefersExecutionOnCompanion:(id)companion
{
  companionCopy = companion;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (companionCopy)
  {
    [_responseMessagePBRepresentation setPrefersExecutionOnCompanion:{objc_msgSend(companionCopy, "BOOLValue")}];
  }

  else
  {
    [_responseMessagePBRepresentation setHasPrefersExecutionOnCompanion:0];
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

- (void)setUnderlyingIntentTitle:(id)title
{
  titleCopy = title;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation setUnderlyingIntentTitle:titleCopy];

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setInterstitialDisabled:(id)disabled
{
  disabledCopy = disabled;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (disabledCopy)
  {
    [_responseMessagePBRepresentation setInterstitialDisabled:{objc_msgSend(disabledCopy, "BOOLValue")}];
  }

  else
  {
    [_responseMessagePBRepresentation setHasInterstitialDisabled:0];
  }

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

- (void)setToggleState:(int64_t)state
{
  if (state == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  if (state == 2)
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
    [_responseMessagePBRepresentation setHasToggleState:0];
  }

  else
  {
    [_responseMessagePBRepresentation setToggleState:v5];
  }

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

- (void)setLocalizedAppName:(id)name
{
  nameCopy = name;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation setLocalizedAppName:nameCopy];

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

- (void)setVerb:(id)verb
{
  verbCopy = verb;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation setVerb:verbCopy];

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setParameters:(id)parameters
{
  parametersCopy = parameters;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDictionary(parametersCopy);

  [_responseMessagePBRepresentation setParameters:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setResponseTemplate:(id)template
{
  templateCopy = template;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation setResponseTemplate:templateCopy];

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setCustomResponsesDisabled:(id)disabled
{
  disabledCopy = disabled;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (disabledCopy)
  {
    [_responseMessagePBRepresentation setCustomResponsesDisabled:{objc_msgSend(disabledCopy, "BOOLValue")}];
  }

  else
  {
    [_responseMessagePBRepresentation setHasCustomResponsesDisabled:0];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setIntentCategory:(int64_t)category
{
  v4 = 0x7FFFFFFFLL;
  if ((category - 1) <= 0x13)
  {
    v4 = dword_18EE5F3A0[category - 1];
  }

  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = _responseMessagePBRepresentation;
  if (v4 == 0x7FFFFFFF)
  {
    [_responseMessagePBRepresentation setHasIntentCategory:0];
  }

  else
  {
    [_responseMessagePBRepresentation setIntentCategory:v4];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setAppBundleId:(id)id
{
  idCopy = id;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation setAppBundleId:idCopy];

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSNumber)prefersExecutionOnCompanion
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([_responseMessagePBRepresentation hasPrefersExecutionOnCompanion])
  {
    v4 = MEMORY[0x1E696AD98];
    _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(_responseMessagePBRepresentation2, "prefersExecutionOnCompanion")}];
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

- (NSString)underlyingIntentTitle
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  underlyingIntentTitle = [_responseMessagePBRepresentation underlyingIntentTitle];
  v4 = [underlyingIntentTitle copy];

  return v4;
}

- (NSNumber)interstitialDisabled
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([_responseMessagePBRepresentation hasInterstitialDisabled])
  {
    v4 = MEMORY[0x1E696AD98];
    _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(_responseMessagePBRepresentation2, "interstitialDisabled")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

- (int64_t)toggleState
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  hasToggleState = [_responseMessagePBRepresentation hasToggleState];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  toggleState = [_responseMessagePBRepresentation2 toggleState];
  v7 = 2 * (toggleState == 2);
  if (toggleState == 1)
  {
    v7 = 1;
  }

  if (hasToggleState)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (INArchivedObject)underlyingIntentResponse
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  underlyingIntentResponse = [_responseMessagePBRepresentation underlyingIntentResponse];
  v4 = INIntentSlotValueTransformFromArchivedObject(underlyingIntentResponse);

  return v4;
}

- (NSString)localizedAppName
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  localizedAppName = [_responseMessagePBRepresentation localizedAppName];
  v4 = [localizedAppName copy];

  return v4;
}

- (INArchivedObject)underlyingIntent
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  underlyingIntent = [_responseMessagePBRepresentation underlyingIntent];
  v4 = INIntentSlotValueTransformFromArchivedObject(underlyingIntent);

  return v4;
}

- (NSString)verb
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  verb = [_responseMessagePBRepresentation verb];
  v4 = [verb copy];

  return v4;
}

- (NSDictionary)parameters
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  parameters = [_responseMessagePBRepresentation parameters];
  v4 = INIntentSlotValueTransformFromDictionary(parameters);

  return v4;
}

- (NSString)responseTemplate
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  responseTemplate = [_responseMessagePBRepresentation responseTemplate];
  v4 = [responseTemplate copy];

  return v4;
}

- (NSNumber)customResponsesDisabled
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([_responseMessagePBRepresentation hasCustomResponsesDisabled])
  {
    v4 = MEMORY[0x1E696AD98];
    _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(_responseMessagePBRepresentation2, "customResponsesDisabled")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)intentCategory
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  hasIntentCategory = [_responseMessagePBRepresentation hasIntentCategory];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  intentCategory = [_responseMessagePBRepresentation2 intentCategory];
  if (hasIntentCategory && (intentCategory - 1) <= 0x14)
  {
    v7 = qword_18EE5F3F0[intentCategory - 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)appBundleId
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  appBundleId = [_responseMessagePBRepresentation appBundleId];
  v4 = [appBundleId copy];

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeInProgress"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeSuccess"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeUserConfirmationRequired"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailure"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureAppConfigurationRequired"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureUnsupportedOnDevice"])
  {
    v4 = 9;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureIntentBlacklisted"])
  {
    v4 = 10;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureCustomError"])
  {
    v4 = 11;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureAppNotInstalledOnDevice"])
  {
    v4 = 12;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureIntentUnsupportedByApp"])
  {
    v4 = 13;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureAuthenticationUnsupportedOnDevice"])
  {
    v4 = 14;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailurePhraseBlacklisted"])
  {
    v4 = 15;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureAppBlacklisted"])
  {
    v4 = 16;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureCompanionProtectedDataUnavailable"])
  {
    v4 = 17;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureCompanionUnavailable"])
  {
    v4 = 18;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureIntentBlocked"])
  {
    v4 = 19;
  }

  if ([nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailurePhraseBlocked"])
  {
    v5 = 20;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureAppBlocked"];

  if (v6)
  {
    return 21;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INRunVoiceCommandIntentResponse *)self code];
  if ((code - 1) > 0x14)
  {
    return 0;
  }

  else
  {
    return qword_18EE5E448[code - 1];
  }
}

- (INRunVoiceCommandIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INRunVoiceCommandIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INRunVoiceCommandIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INRunVoiceCommandIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INRunVoiceCommandIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INRunVoiceCommandIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INRunVoiceCommandIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INRunVoiceCommandIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 0x15)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727E168[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INRunVoiceCommandIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INRunVoiceCommandIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 8) < 0xE)
  {
    return code - 7;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 0x14)
  {
    return 3;
  }

  else
  {
    return dword_18EE5E3F0[code - 1];
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

  v7 = 4;
  v8 = 6;
  if (requested)
  {
    v8 = 7;
  }

  if ((code - 1) >= 0xE)
  {
    v9 = v8;
  }

  else
  {
    v9 = (code + 7);
  }

  v10 = 3;
  if (type != 2)
  {
    v10 = 0;
  }

  if (type != 1)
  {
    v9 = v10;
  }

  if (type)
  {
    v7 = v9;
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