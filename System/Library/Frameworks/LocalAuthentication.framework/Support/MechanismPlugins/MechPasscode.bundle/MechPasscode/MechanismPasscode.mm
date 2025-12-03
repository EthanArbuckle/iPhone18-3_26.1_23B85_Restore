@interface MechanismPasscode
- (BOOL)_allowsPasscodeFallback:(id *)fallback;
- (BOOL)_handleIntentConfirmationWithResult:(id)result error:(id)error finishingSecureIntent:(BOOL)intent otherIsSecureInput:(BOOL)input reply:(id)reply;
- (BOOL)isAvailableForPurpose:(int64_t)purpose error:(id *)error;
- (BOOL)precedesUI;
- (MechanismPasscode)initWithAcmContextRecord:(id)record userId:(id)id request:(id)request;
- (MechanismPasscode)initWithParams:(id)params request:(id)request;
- (id)_checkSoftLimitWithFailedAttempt;
- (id)backgroundMechanismForEventProcessing:(id)processing;
- (int64_t)_verifyPasscode:(id)passcode;
- (void)_startPasscodeMechanismWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply;
- (void)companionStateChanged:(id)changed newState:(BOOL)state;
- (void)enterPassphrase:(id)passphrase reply:(id)reply;
- (void)runWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply;
- (void)setCredential:(id)credential credentialType:(int64_t)type reply:(id)reply;
@end

@implementation MechanismPasscode

- (MechanismPasscode)initWithParams:(id)params request:(id)request
{
  requestCopy = request;
  paramsCopy = params;
  v8 = [paramsCopy objectForKeyedSubscript:@"AcmContextRecord"];
  v9 = [paramsCopy objectForKeyedSubscript:@"UserId"];

  v10 = [(MechanismPasscode *)self initWithAcmContextRecord:v8 userId:v9 request:requestCopy];
  return v10;
}

- (MechanismPasscode)initWithAcmContextRecord:(id)record userId:(id)id request:(id)request
{
  idCopy = id;
  v16.receiver = self;
  v16.super_class = MechanismPasscode;
  v10 = [(MechanismPasscode *)&v16 initWithEventIdentifier:2 remoteViewController:2 acmContextRecord:record request:request];
  if (v10)
  {
    v11 = +[BackoffCounter sharedInstance];
    v12 = *(v10 + 60);
    *(v10 + 60) = v11;

    v13 = +[BackoffCounter sharedInstance];
    v14 = +[MechanismContext sharedInstance];
    [v14 setBackoffCounter:v13];

    objc_storeStrong((v10 + 52), id);
  }

  return v10;
}

- (BOOL)isAvailableForPurpose:(int64_t)purpose error:(id *)error
{
  v7 = +[LAPasscodeHelper sharedInstance];
  v8 = [v7 isPasscodeSetForUser:objc_msgSend(*(&self->_credentialPresent + 4) error:{"unsignedIntValue"), error}];

  if ((v8 & 1) == 0)
  {
    request = [(MechanismPasscode *)self request];
    v10 = +[LACPolicyUtilities isPolicyAcceptingEmptyPassword:](LACPolicyUtilities, "isPolicyAcceptingEmptyPassword:", [request policy]);

    if (!v10)
    {
      return 0;
    }

    v11 = sub_3208();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      request2 = [(MechanismPasscode *)self request];
      *buf = 67109378;
      policy = [request2 policy];
      v42 = 2082;
      v43 = "passcode not set";
      _os_log_impl(&def_13158, v11, OS_LOG_TYPE_DEFAULT, "Policy %d will accept %{public}s.", buf, 0x12u);
    }
  }

  request3 = [(MechanismPasscode *)self request];
  options = [request3 options];
  v15 = [options objectForKeyedSubscript:&off_1C8E8];
  bOOLValue = [v15 BOOLValue];

  if (!bOOLValue)
  {
    goto LABEL_17;
  }

  request4 = [(MechanismPasscode *)self request];
  dtoEnvironment = [request4 dtoEnvironment];
  featureState = [dtoEnvironment featureState];
  if (![featureState isAvailable])
  {
    goto LABEL_16;
  }

  request5 = [(MechanismPasscode *)self request];
  dtoEnvironment2 = [request5 dtoEnvironment];
  featureState2 = [dtoEnvironment2 featureState];
  if (![featureState2 isEnabled])
  {

LABEL_16:
LABEL_17:
    v39.receiver = self;
    v39.super_class = MechanismPasscode;
    return [(MechanismPasscode *)&v39 isAvailableForPurpose:purpose error:error];
  }

  v38 = featureState2;
  request6 = [(MechanismPasscode *)self request];
  isPurposeApplePay = [request6 isPurposeApplePay];
  v25 = isPurposeApplePay;
  if (isPurposeApplePay)
  {
    v36 = isPurposeApplePay;
    v26 = +[BiometryHelper sharedInstance];
    internalOptions = [(MechanismPasscode *)self internalOptions];
    [internalOptions objectForKeyedSubscript:@"UserId"];
    v32 = v34 = v26;
    if (![v26 isBiometryOnForApplePay:?])
    {
      v37 = 0;
      goto LABEL_19;
    }

    v25 = v36;
  }

  [(MechanismPasscode *)self request];
  v35 = dtoEnvironment2;
  v27 = request5;
  v29 = v28 = request6;
  v30 = [v29 acl];
  v37 = v30 == 0;

  request6 = v28;
  request5 = v27;
  dtoEnvironment2 = v35;
  if (v25)
  {
LABEL_19:
  }

  if (!v37)
  {
    goto LABEL_17;
  }

  return [(MechanismPasscode *)self _allowsPasscodeFallback:error];
}

- (BOOL)_allowsPasscodeFallback:(id *)fallback
{
  request = [(MechanismPasscode *)self request];
  dtoEnvironment = [request dtoEnvironment];

  if (dtoEnvironment)
  {
    request2 = [(MechanismPasscode *)self request];
    dtoEnvironment2 = [request2 dtoEnvironment];
    allowsAuthenticationFallbacks = [dtoEnvironment2 allowsAuthenticationFallbacks];

    if (allowsAuthenticationFallbacks)
    {
      v10 = 0;
      if (!fallback)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = [LAErrorHelper errorWithCode:-1 message:@"Passcode can't be used"];
      if (!fallback)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v10 = [LAErrorHelper internalErrorWithMessage:@"Missing DTO environment"];
  if (fallback)
  {
LABEL_6:
    v10 = v10;
    *fallback = v10;
  }

LABEL_7:
  v11 = v10 == 0;

  return v11;
}

- (void)runWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply
{
  hintsCopy = hints;
  delegateCopy = delegate;
  replyCopy = reply;
  objc_initWeak(location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_3670;
  v29[3] = &unk_1C4A8;
  objc_copyWeak(&v33, location);
  v11 = hintsCopy;
  v30 = v11;
  v12 = delegateCopy;
  v31 = v12;
  v13 = replyCopy;
  v32 = v13;
  v14 = objc_retainBlock(v29);
  v15 = *(&self->_beingCanceledByOtherConfirmation + 4);
  *(&self->_beingCanceledByOtherConfirmation + 4) = v14;

  preCompanion = [(MechanismPasscode *)self preCompanion];

  if (preCompanion)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_36C4;
    v26[3] = &unk_1C4D0;
    objc_copyWeak(&v28, location);
    v17 = v13;
    v27 = v17;
    if (![(MechanismPasscode *)self _startSecureIntentWithOptions:v11 eventsDelegate:v12 reply:v26]|| +[DaemonUtils deviceHasTouchID])
    {
      v18 = [v11 objectForKeyedSubscript:@"Options"];
      v19 = [v18 objectForKeyedSubscript:&off_1C900];
      bOOLValue = [v19 BOOLValue];

      if (bOOLValue)
      {
        v21 = [LAErrorHelper errorWithCode:-1023 message:@"Running push button concurrently"];
        [(MechanismPasscode *)self _handleIntentConfirmationWithResult:0 error:v21 finishingSecureIntent:0 otherIsSecureInput:0 reply:v17];
      }

      preCompanion2 = [(MechanismPasscode *)self preCompanion];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_3748;
      v23[3] = &unk_1C4D0;
      objc_copyWeak(&v25, location);
      v24 = v17;
      [preCompanion2 runWithHints:v11 eventsDelegate:v12 reply:v23];

      objc_destroyWeak(&v25);
    }

    objc_destroyWeak(&v28);
  }

  else
  {
    (*(*(&self->_beingCanceledByOtherConfirmation + 4) + 16))();
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
}

- (void)_startPasscodeMechanismWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply
{
  v10.receiver = self;
  v10.super_class = MechanismPasscode;
  [(MechanismPasscode *)&v10 runWithHints:hints eventsDelegate:delegate reply:reply];
  policyOptions = [(MechanismPasscode *)self policyOptions];
  v7 = [policyOptions objectForKey:&off_1C918];
  v8 = *(&self->_failures + 4);
  *(&self->_failures + 4) = v7;

  *(&self->super + 1) = 0;
  v9 = *(&self->_beingCanceledByOtherConfirmation + 4);
  *(&self->_beingCanceledByOtherConfirmation + 4) = 0;
}

- (BOOL)_handleIntentConfirmationWithResult:(id)result error:(id)error finishingSecureIntent:(BOOL)intent otherIsSecureInput:(BOOL)input reply:(id)reply
{
  intentCopy = intent;
  resultCopy = result;
  errorCopy = error;
  replyCopy = reply;
  if (input)
  {
    preCompanion = 0;
  }

  else
  {
    preCompanion = [(MechanismPasscode *)self preCompanion];
  }

  if (intentCopy)
  {
    v16 = 0;
  }

  else
  {
    v16 = preCompanion;
  }

  if (intentCopy)
  {
    v17 = preCompanion;
  }

  else
  {
    v17 = 0;
  }

  v18 = v16;
  v19 = v17;
  request = [(MechanismPasscode *)self request];
  v21 = [request log];

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v36 = @"success";
    *buf = 138544130;
    if (!resultCopy)
    {
      v36 = errorCopy;
    }

    selfCopy2 = self;
    v40 = 2114;
    v41 = v36;
    v42 = 2114;
    v43 = v18;
    v44 = 2114;
    v45 = v19;
    _os_log_debug_impl(&def_13158, v21, OS_LOG_TYPE_DEBUG, "%{public}@ is handling intent confirmation result: %{public}@, finishing: %{public}@, other: %{public}@", buf, 0x2Au);
  }

  v22 = [LAErrorHelper error:errorCopy hasCode:-1023];
  v23 = (resultCopy != 0) | v22;
  if ((resultCopy != 0) | v22 & 1)
  {
    v24 = v22;
    v37 = replyCopy;
    request2 = [(MechanismPasscode *)self request];
    v26 = [request2 log];

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = (v24 & 1) != 0 ? "been skipped by option" : "confirmed intent";
      if (v19)
      {
        v28 = v27;
        v29 = [NSString stringWithFormat:@", %@ will be canceled", v19];
        v27 = v28;
        v30 = v29;
      }

      else
      {
        v30 = &stru_1C758;
      }

      *buf = 138544130;
      selfCopy2 = self;
      v40 = 2114;
      v41 = v18;
      v42 = 2082;
      v43 = v27;
      v44 = 2114;
      v45 = v30;
      _os_log_impl(&def_13158, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ will start after %{public}@ has %{public}s%{public}@", buf, 0x2Au);
      if (v19)
      {
      }
    }

    if ((v24 & 1) == 0)
    {
      v31 = [resultCopy objectForKeyedSubscript:@"Result"];
      [(MechanismPasscode *)self yieldPartialResult:v31];
    }

    v32 = *(&self->_beingCanceledByOtherConfirmation + 4);
    replyCopy = v37;
    if (v32)
    {
      (*(v32 + 16))();
    }

    if ([(__CFString *)v19 isRunning])
    {
      v33 = [NSString stringWithFormat:@"Canceled by %@", v18];
      BYTE4(self->_failureLimit) = 1;
      v34 = [LAErrorHelper errorWithCode:-2 message:v33];
      [(__CFString *)v19 failAuthenticationWithError:v34];
    }
  }

  else if (([(MechanismPasscode *)self isRunning]& 1) == 0 && ([(__CFString *)v19 isRunning]& 1) == 0 && (BYTE4(self->_failureLimit) & 1) == 0)
  {
    replyCopy[2](replyCopy, 0, errorCopy);
  }

  return v23 & 1;
}

- (void)enterPassphrase:(id)passphrase reply:(id)reply
{
  passphraseCopy = passphrase;
  replyCopy = reply;
  v8 = sub_3208();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[MechanismPasscode enterPassphrase:reply:]";
    v35 = 2112;
    selfCopy = self;
    _os_log_impl(&def_13158, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  errorAuthenticationFailedWithBackoff = [*(&self->_userId + 4) errorAuthenticationFailedWithBackoff];
  if (errorAuthenticationFailedWithBackoff)
  {
    _checkSoftLimitWithFailedAttempt = 0;
    v11 = 0;
    v12 = 3;
    goto LABEL_17;
  }

  v13 = [(MechanismPasscode *)self _verifyPasscode:passphraseCopy];
  [passphraseCopy reset];
  v12 = 3;
  if (v13 > 1)
  {
    switch(v13)
    {
      case 2:
        goto LABEL_9;
      case 3:
        errorAuthenticationFailedWithBackoff = [LAErrorHelper internalErrorWithMessage:@"Unexpected failure during passcode verification."];
        v12 = 3;
        break;
      case 4:
LABEL_9:
        errorAuthenticationFailedWithBackoff = [*(&self->_userId + 4) actionFailureWithBackoffResult];
        v12 = 2;
        break;
    }

LABEL_16:
    _checkSoftLimitWithFailedAttempt = [(MechanismPasscode *)self _checkSoftLimitWithFailedAttempt];
    v11 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      actionFailure = [*(&self->_userId + 4) actionFailure];
      if (!actionFailure)
      {
        actionFailure = [LAErrorHelper errorWithCode:-1 message:@"Passcode rejected."];
      }

      errorAuthenticationFailedWithBackoff = actionFailure;
      v12 = 1;
    }

    goto LABEL_16;
  }

  [*(&self->_userId + 4) actionSuccess];
  preCompanion = [(MechanismPasscode *)self preCompanion];
  if ([preCompanion eventIdentifier] != &dword_4 + 1)
  {

LABEL_31:
    _checkSoftLimitWithFailedAttempt = 0;
    goto LABEL_32;
  }

  policyOptions = [(MechanismPasscode *)self policyOptions];
  v27 = [policyOptions objectForKeyedSubscript:&off_1C900];
  bOOLValue = [v27 BOOLValue];

  if (!bOOLValue)
  {
    goto LABEL_31;
  }

  preCompanion2 = [(MechanismPasscode *)self preCompanion];
  checkCredentialValid = [preCompanion2 checkCredentialValid];

  if (checkCredentialValid)
  {
    goto LABEL_31;
  }

  _checkSoftLimitWithFailedAttempt = [LAErrorHelper errorWithCode:-1023 message:@"Double press is required."];
LABEL_32:
  [(MechanismPasscode *)self yieldPartialResult:3 value:&__kCFBooleanTrue];
  errorAuthenticationFailedWithBackoff = 0;
  v12 = 0;
  v11 = 1;
LABEL_17:
  request = [(MechanismPasscode *)self request];
  analytics = [request analytics];
  [analytics authenticationAttempt:v12 event:{-[MechanismPasscode eventIdentifier](self, "eventIdentifier")}];

  if (v12)
  {
    request2 = [(MechanismPasscode *)self request];
    analyticsData = [request2 analyticsData];
    [analyticsData authenticationAttemptFailedForEvent:LACEventPasscode];
  }

  v19 = [NSNumber numberWithBool:v11, &off_1C930];
  v32 = v19;
  v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [(MechanismPasscode *)self noResponseEventWithParams:v20];

  replyCopy[2](replyCopy, v11, errorAuthenticationFailedWithBackoff);
  if (_checkSoftLimitWithFailedAttempt)
  {
    [(MechanismPasscode *)self failAuthenticationWithError:_checkSoftLimitWithFailedAttempt];
  }

  else if (v11)
  {
    postCompanion = [(MechanismPasscode *)self postCompanion];

    if (postCompanion)
    {
      postCompanion2 = [(MechanismPasscode *)self postCompanion];
      internalOptions = [(MechanismPasscode *)self internalOptions];
      eventsDelegate = [(MechanismPasscode *)self eventsDelegate];
      [postCompanion2 runWithHints:internalOptions eventsDelegate:eventsDelegate reply:&stru_1C510];
    }

    else
    {
      [(MechanismPasscode *)self succeedAuthenticationWithResult:&__NSDictionary0__struct];
    }
  }
}

- (int64_t)_verifyPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = +[LACPasscodeHelper sharedInstance];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_4184;
  v13 = &unk_1C538;
  selfCopy = self;
  v15 = passcodeCopy;
  v6 = passcodeCopy;
  v7 = sub_4184(&v10);
  v8 = [v5 verifyPasscode:{v7, v10, v11, v12, v13, selfCopy}];

  return v8;
}

- (id)_checkSoftLimitWithFailedAttempt
{
  if (*(&self->_failures + 4))
  {
    v3 = *(&self->super + 1) + 1;
    *(&self->super + 1) = v3;
    if (v3 <= [*(&self->_failures + 4) unsignedIntegerValue])
    {
      v4 = 0;
    }

    else
    {
      v4 = [LAErrorHelper errorWithCode:-1 message:@"Application retry limit exceeded."];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCredential:(id)credential credentialType:(int64_t)type reply:(id)reply
{
  credentialCopy = credential;
  v9 = credentialCopy;
  replyCopy = reply;
  v11 = +[LACSecureData secureDataWithBytes:length:](LACSecureData, "secureDataWithBytes:length:", [credentialCopy bytes], objc_msgSend(credentialCopy, "length"));
  if (LACCredentialPasscode == type)
  {
    [(MechanismPasscode *)self enterPassphrase:v11 reply:replyCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MechanismPasscode;
    [(MechanismPassphrase *)&v12 setCredential:credentialCopy credentialType:type reply:replyCopy];
  }
}

- (id)backgroundMechanismForEventProcessing:(id)processing
{
  v5.receiver = self;
  v5.super_class = MechanismPasscode;
  v3 = [(MechanismPasscode *)&v5 backgroundMechanismForEventProcessing:processing];

  return v3;
}

- (BOOL)precedesUI
{
  preCompanion = [(MechanismPasscode *)self preCompanion];
  isRunning = [preCompanion isRunning];

  return isRunning;
}

- (void)companionStateChanged:(id)changed newState:(BOOL)state
{
  stateCopy = state;
  changedCopy = changed;
  request = [(MechanismPasscode *)self request];
  v8 = [request log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "not present";
    *v18 = 138543874;
    *&v18[4] = self;
    if (stateCopy)
    {
      v9 = "present";
    }

    *&v18[12] = 2114;
    *&v18[14] = changedCopy;
    v19 = 2080;
    v20 = v9;
    _os_log_impl(&def_13158, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has been notified by %{public}@ that the credential is %s", v18, 0x20u);
  }

  preCompanion = [(MechanismPasscode *)self preCompanion];

  if (preCompanion != changedCopy)
  {
    postCompanion = [(MechanismPasscode *)self postCompanion];

    if (postCompanion == changedCopy)
    {
      if (stateCopy)
      {
        [(MechanismPasscode *)self yieldPartialResult:18 value:&__kCFBooleanTrue];
        [(MechanismPasscode *)self succeedAuthenticationWithResult:&__NSDictionary0__struct];
        goto LABEL_19;
      }
    }

    else
    {
      request2 = [(MechanismPasscode *)self request];
      v14 = [request2 log];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_BC9C(changedCopy, self, v14);
      }

      if (stateCopy)
      {
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!*(&self->_beingCanceledByOtherConfirmation + 4))
    {
      v17 = [LAErrorHelper errorWithCode:-4 subcode:9 message:@"Double click credential expired"];
      [(MechanismPasscode *)self finishRunWithResult:0 error:v17];
    }

    goto LABEL_19;
  }

  BYTE4(self->_runBlock) = stateCopy;
  if (!stateCopy)
  {
    goto LABEL_17;
  }

  v15 = *(&self->_beingCanceledByOtherConfirmation + 4);
  if (v15)
  {
    (*(v15 + 16))(v15, v11);
    v16 = *(&self->_beingCanceledByOtherConfirmation + 4);
    *(&self->_beingCanceledByOtherConfirmation + 4) = 0;
  }

  [(MechanismPasscode *)self yieldPartialResult:9 value:&__kCFBooleanTrue, *v18];
LABEL_19:
}

@end