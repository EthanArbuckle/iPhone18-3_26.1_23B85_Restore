@interface INRunVoiceCommandIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INArchivedObject)underlyingIntent;
- (INArchivedObject)underlyingIntentResponse;
- (INRunVoiceCommandIntentResponse)initWithBackingStore:(id)a3;
- (INRunVoiceCommandIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INRunVoiceCommandIntentResponse)initWithCoder:(id)a3;
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
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (int64_t)intentCategory;
- (int64_t)toggleState;
- (void)encodeWithCoder:(id)a3;
- (void)setAppBundleId:(id)a3;
- (void)setContinueRunning:(id)a3;
- (void)setCustomResponsesDisabled:(id)a3;
- (void)setIntentCategory:(int64_t)a3;
- (void)setInterstitialDisabled:(id)a3;
- (void)setLocalizedAppName:(id)a3;
- (void)setParameters:(id)a3;
- (void)setPrefersExecutionOnCompanion:(id)a3;
- (void)setResponseTemplate:(id)a3;
- (void)setSteps:(id)a3;
- (void)setToggleState:(int64_t)a3;
- (void)setUnderlyingIntent:(id)a3;
- (void)setUnderlyingIntentResponse:(id)a3;
- (void)setUnderlyingIntentTitle:(id)a3;
- (void)setVerb:(id)a3;
@end

@implementation INRunVoiceCommandIntentResponse

- (id)_dictionaryRepresentation
{
  v61[16] = *MEMORY[0x1E69E9840];
  v60[0] = @"code";
  v3 = [(INRunVoiceCommandIntentResponse *)self code];
  v59 = v3;
  if (v3 < 0x16)
  {
    v4 = off_1E727E168[v3];
    v58 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v58 = 0;
  }

  v48 = v4;
  v61[0] = v4;
  v60[1] = @"appBundleId";
  v5 = [(INRunVoiceCommandIntentResponse *)self appBundleId];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v5;
  v61[1] = v5;
  v60[2] = @"intentCategory";
  v7 = [(INRunVoiceCommandIntentResponse *)self intentCategory];
  if ((v7 - 1) > 0x13)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7286400[v7 - 1];
  }

  v56 = v8;
  v61[2] = v56;
  v60[3] = @"customResponsesDisabled";
  v9 = [(INRunVoiceCommandIntentResponse *)self customResponsesDisabled];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v9;
  v61[3] = v9;
  v60[4] = @"responseTemplate";
  v11 = [(INRunVoiceCommandIntentResponse *)self responseTemplate];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v11;
  v61[4] = v11;
  v60[5] = @"parameters";
  v13 = [(INRunVoiceCommandIntentResponse *)self parameters];
  v14 = v13;
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v13;
  v61[5] = v13;
  v60[6] = @"verb";
  v15 = [(INRunVoiceCommandIntentResponse *)self verb];
  v16 = v15;
  if (!v15)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v15;
  v61[6] = v15;
  v60[7] = @"underlyingIntent";
  v17 = [(INRunVoiceCommandIntentResponse *)self underlyingIntent];
  v18 = v17;
  if (!v17)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v17;
  v61[7] = v17;
  v60[8] = @"localizedAppName";
  v19 = [(INRunVoiceCommandIntentResponse *)self localizedAppName];
  v20 = v19;
  if (!v19)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v18;
  v41 = v19;
  v61[8] = v19;
  v60[9] = @"underlyingIntentResponse";
  v21 = [(INRunVoiceCommandIntentResponse *)self underlyingIntentResponse];
  v22 = v21;
  if (!v21)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v21;
  v61[9] = v21;
  v60[10] = @"toggleState";
  v23 = [(INRunVoiceCommandIntentResponse *)self toggleState];
  v24 = @"unknown";
  if (v23 == 2)
  {
    v24 = @"off";
  }

  if (v23 == 1)
  {
    v24 = @"on";
  }

  v50 = v24;
  v61[10] = v50;
  v60[11] = @"continueRunning";
  v25 = [(INRunVoiceCommandIntentResponse *)self continueRunning];
  v26 = v25;
  if (!v25)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v20;
  v57 = v6;
  v39 = v25;
  v61[11] = v25;
  v60[12] = @"interstitialDisabled";
  v27 = [(INRunVoiceCommandIntentResponse *)self interstitialDisabled];
  v28 = v27;
  if (!v27)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = v16;
  v54 = v14;
  v55 = v12;
  v61[12] = v27;
  v60[13] = @"underlyingIntentTitle";
  v29 = [(INRunVoiceCommandIntentResponse *)self underlyingIntentTitle];
  v30 = v29;
  if (!v29)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v10;
  v61[13] = v30;
  v60[14] = @"steps";
  v32 = [(INRunVoiceCommandIntentResponse *)self steps];
  v33 = v32;
  if (!v32)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v61[14] = v33;
  v60[15] = @"prefersExecutionOnCompanion";
  v34 = [(INRunVoiceCommandIntentResponse *)self prefersExecutionOnCompanion];
  v35 = v34;
  if (!v34)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v61[15] = v35;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:16];
  if (!v34)
  {
  }

  if (!v32)
  {
  }

  if (!v29)
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

- (void)setPrefersExecutionOnCompanion:(id)a3
{
  v7 = a3;
  v4 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (v7)
  {
    [v4 setPrefersExecutionOnCompanion:{objc_msgSend(v7, "BOOLValue")}];
  }

  else
  {
    [v4 setHasPrefersExecutionOnCompanion:0];
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

- (void)setUnderlyingIntentTitle:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setUnderlyingIntentTitle:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setInterstitialDisabled:(id)a3
{
  v7 = a3;
  v4 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (v7)
  {
    [v4 setInterstitialDisabled:{objc_msgSend(v7, "BOOLValue")}];
  }

  else
  {
    [v4 setHasInterstitialDisabled:0];
  }

  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
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

- (void)setToggleState:(int64_t)a3
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
    [v6 setHasToggleState:0];
  }

  else
  {
    [v6 setToggleState:v5];
  }

  v9 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v8 = [v9 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v8];
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

- (void)setLocalizedAppName:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setLocalizedAppName:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
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

- (void)setVerb:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setVerb:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setParameters:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDictionary(v4);

  [v5 setParameters:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setResponseTemplate:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setResponseTemplate:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setCustomResponsesDisabled:(id)a3
{
  v7 = a3;
  v4 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (v7)
  {
    [v4 setCustomResponsesDisabled:{objc_msgSend(v7, "BOOLValue")}];
  }

  else
  {
    [v4 setHasCustomResponsesDisabled:0];
  }

  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setIntentCategory:(int64_t)a3
{
  v4 = 0x7FFFFFFFLL;
  if ((a3 - 1) <= 0x13)
  {
    v4 = dword_18EE5F3A0[a3 - 1];
  }

  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = v5;
  if (v4 == 0x7FFFFFFF)
  {
    [v5 setHasIntentCategory:0];
  }

  else
  {
    [v5 setIntentCategory:v4];
  }

  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setAppBundleId:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setAppBundleId:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (NSNumber)prefersExecutionOnCompanion
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([v3 hasPrefersExecutionOnCompanion])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "prefersExecutionOnCompanion")}];
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

- (NSString)underlyingIntentTitle
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 underlyingIntentTitle];
  v4 = [v3 copy];

  return v4;
}

- (NSNumber)interstitialDisabled
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([v3 hasInterstitialDisabled])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "interstitialDisabled")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

- (int64_t)toggleState
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 hasToggleState];
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 toggleState];
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

- (INArchivedObject)underlyingIntentResponse
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 underlyingIntentResponse];
  v4 = INIntentSlotValueTransformFromArchivedObject(v3);

  return v4;
}

- (NSString)localizedAppName
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 localizedAppName];
  v4 = [v3 copy];

  return v4;
}

- (INArchivedObject)underlyingIntent
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 underlyingIntent];
  v4 = INIntentSlotValueTransformFromArchivedObject(v3);

  return v4;
}

- (NSString)verb
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 verb];
  v4 = [v3 copy];

  return v4;
}

- (NSDictionary)parameters
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 parameters];
  v4 = INIntentSlotValueTransformFromDictionary(v3);

  return v4;
}

- (NSString)responseTemplate
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 responseTemplate];
  v4 = [v3 copy];

  return v4;
}

- (NSNumber)customResponsesDisabled
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([v3 hasCustomResponsesDisabled])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "customResponsesDisabled")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)intentCategory
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 hasIntentCategory];
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 intentCategory];
  if (v4 && (v6 - 1) <= 0x14)
  {
    v7 = qword_18EE5F3F0[v6 - 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)appBundleId
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 appBundleId];
  v4 = [v3 copy];

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeInProgress"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeSuccess"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeUserConfirmationRequired"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailure"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureAppConfigurationRequired"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureUnsupportedOnDevice"])
  {
    v4 = 9;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureIntentBlacklisted"])
  {
    v4 = 10;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureCustomError"])
  {
    v4 = 11;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureAppNotInstalledOnDevice"])
  {
    v4 = 12;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureIntentUnsupportedByApp"])
  {
    v4 = 13;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureAuthenticationUnsupportedOnDevice"])
  {
    v4 = 14;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailurePhraseBlacklisted"])
  {
    v4 = 15;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureAppBlacklisted"])
  {
    v4 = 16;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureCompanionProtectedDataUnavailable"])
  {
    v4 = 17;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureCompanionUnavailable"])
  {
    v4 = 18;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureIntentBlocked"])
  {
    v4 = 19;
  }

  if ([v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailurePhraseBlocked"])
  {
    v5 = 20;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INRunVoiceCommandIntentResponseCodeFailureAppBlocked"];

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
  v2 = [(INRunVoiceCommandIntentResponse *)self code];
  if ((v2 - 1) > 0x14)
  {
    return 0;
  }

  else
  {
    return qword_18EE5E448[v2 - 1];
  }
}

- (INRunVoiceCommandIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INRunVoiceCommandIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INRunVoiceCommandIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INRunVoiceCommandIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INRunVoiceCommandIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INRunVoiceCommandIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INRunVoiceCommandIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INRunVoiceCommandIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 0x15)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727E168[a3];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INRunVoiceCommandIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INRunVoiceCommandIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 8) < 0xE)
  {
    return a3 - 7;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 0x14)
  {
    return 3;
  }

  else
  {
    return dword_18EE5E3F0[a3 - 1];
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

  v7 = 4;
  v8 = 6;
  if (a5)
  {
    v8 = 7;
  }

  if ((a4 - 1) >= 0xE)
  {
    v9 = v8;
  }

  else
  {
    v9 = (a4 + 7);
  }

  v10 = 3;
  if (a3 != 2)
  {
    v10 = 0;
  }

  if (a3 != 1)
  {
    v9 = v10;
  }

  if (a3)
  {
    v7 = v9;
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