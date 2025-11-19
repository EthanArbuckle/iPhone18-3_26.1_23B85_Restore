@interface MechanismPasscode
- (BOOL)_allowsPasscodeFallback:(id *)a3;
- (BOOL)_handleIntentConfirmationWithResult:(id)a3 error:(id)a4 finishingSecureIntent:(BOOL)a5 otherIsSecureInput:(BOOL)a6 reply:(id)a7;
- (BOOL)isAvailableForPurpose:(int64_t)a3 error:(id *)a4;
- (BOOL)precedesUI;
- (MechanismPasscode)initWithAcmContextRecord:(id)a3 userId:(id)a4 request:(id)a5;
- (MechanismPasscode)initWithParams:(id)a3 request:(id)a4;
- (id)_checkSoftLimitWithFailedAttempt;
- (id)backgroundMechanismForEventProcessing:(id)a3;
- (int64_t)_verifyPasscode:(id)a3;
- (void)_startPasscodeMechanismWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5;
- (void)companionStateChanged:(id)a3 newState:(BOOL)a4;
- (void)enterPassphrase:(id)a3 reply:(id)a4;
- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5;
- (void)setCredential:(id)a3 credentialType:(int64_t)a4 reply:(id)a5;
@end

@implementation MechanismPasscode

- (MechanismPasscode)initWithParams:(id)a3 request:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"AcmContextRecord"];
  v9 = [v7 objectForKeyedSubscript:@"UserId"];

  v10 = [(MechanismPasscode *)self initWithAcmContextRecord:v8 userId:v9 request:v6];
  return v10;
}

- (MechanismPasscode)initWithAcmContextRecord:(id)a3 userId:(id)a4 request:(id)a5
{
  v9 = a4;
  v16.receiver = self;
  v16.super_class = MechanismPasscode;
  v10 = [(MechanismPasscode *)&v16 initWithEventIdentifier:2 remoteViewController:2 acmContextRecord:a3 request:a5];
  if (v10)
  {
    v11 = +[BackoffCounter sharedInstance];
    v12 = *(v10 + 60);
    *(v10 + 60) = v11;

    v13 = +[BackoffCounter sharedInstance];
    v14 = +[MechanismContext sharedInstance];
    [v14 setBackoffCounter:v13];

    objc_storeStrong((v10 + 52), a4);
  }

  return v10;
}

- (BOOL)isAvailableForPurpose:(int64_t)a3 error:(id *)a4
{
  v7 = +[LAPasscodeHelper sharedInstance];
  v8 = [v7 isPasscodeSetForUser:objc_msgSend(*(&self->_credentialPresent + 4) error:{"unsignedIntValue"), a4}];

  if ((v8 & 1) == 0)
  {
    v9 = [(MechanismPasscode *)self request];
    v10 = +[LACPolicyUtilities isPolicyAcceptingEmptyPassword:](LACPolicyUtilities, "isPolicyAcceptingEmptyPassword:", [v9 policy]);

    if (!v10)
    {
      return 0;
    }

    v11 = sub_3208();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MechanismPasscode *)self request];
      *buf = 67109378;
      v41 = [v12 policy];
      v42 = 2082;
      v43 = "passcode not set";
      _os_log_impl(&def_13158, v11, OS_LOG_TYPE_DEFAULT, "Policy %d will accept %{public}s.", buf, 0x12u);
    }
  }

  v13 = [(MechanismPasscode *)self request];
  v14 = [v13 options];
  v15 = [v14 objectForKeyedSubscript:&off_1C8E8];
  v16 = [v15 BOOLValue];

  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = [(MechanismPasscode *)self request];
  v18 = [v17 dtoEnvironment];
  v19 = [v18 featureState];
  if (![v19 isAvailable])
  {
    goto LABEL_16;
  }

  v20 = [(MechanismPasscode *)self request];
  v21 = [v20 dtoEnvironment];
  v22 = [v21 featureState];
  if (![v22 isEnabled])
  {

LABEL_16:
LABEL_17:
    v39.receiver = self;
    v39.super_class = MechanismPasscode;
    return [(MechanismPasscode *)&v39 isAvailableForPurpose:a3 error:a4];
  }

  v38 = v22;
  v23 = [(MechanismPasscode *)self request];
  v24 = [v23 isPurposeApplePay];
  v25 = v24;
  if (v24)
  {
    v36 = v24;
    v26 = +[BiometryHelper sharedInstance];
    v33 = [(MechanismPasscode *)self internalOptions];
    [v33 objectForKeyedSubscript:@"UserId"];
    v32 = v34 = v26;
    if (![v26 isBiometryOnForApplePay:?])
    {
      v37 = 0;
      goto LABEL_19;
    }

    v25 = v36;
  }

  [(MechanismPasscode *)self request];
  v35 = v21;
  v27 = v20;
  v29 = v28 = v23;
  v30 = [v29 acl];
  v37 = v30 == 0;

  v23 = v28;
  v20 = v27;
  v21 = v35;
  if (v25)
  {
LABEL_19:
  }

  if (!v37)
  {
    goto LABEL_17;
  }

  return [(MechanismPasscode *)self _allowsPasscodeFallback:a4];
}

- (BOOL)_allowsPasscodeFallback:(id *)a3
{
  v5 = [(MechanismPasscode *)self request];
  v6 = [v5 dtoEnvironment];

  if (v6)
  {
    v7 = [(MechanismPasscode *)self request];
    v8 = [v7 dtoEnvironment];
    v9 = [v8 allowsAuthenticationFallbacks];

    if (v9)
    {
      v10 = 0;
      if (!a3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = [LAErrorHelper errorWithCode:-1 message:@"Passcode can't be used"];
      if (!a3)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v10 = [LAErrorHelper internalErrorWithMessage:@"Missing DTO environment"];
  if (a3)
  {
LABEL_6:
    v10 = v10;
    *a3 = v10;
  }

LABEL_7:
  v11 = v10 == 0;

  return v11;
}

- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_3670;
  v29[3] = &unk_1C4A8;
  objc_copyWeak(&v33, location);
  v11 = v8;
  v30 = v11;
  v12 = v9;
  v31 = v12;
  v13 = v10;
  v32 = v13;
  v14 = objc_retainBlock(v29);
  v15 = *(&self->_beingCanceledByOtherConfirmation + 4);
  *(&self->_beingCanceledByOtherConfirmation + 4) = v14;

  v16 = [(MechanismPasscode *)self preCompanion];

  if (v16)
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
      v20 = [v19 BOOLValue];

      if (v20)
      {
        v21 = [LAErrorHelper errorWithCode:-1023 message:@"Running push button concurrently"];
        [(MechanismPasscode *)self _handleIntentConfirmationWithResult:0 error:v21 finishingSecureIntent:0 otherIsSecureInput:0 reply:v17];
      }

      v22 = [(MechanismPasscode *)self preCompanion];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_3748;
      v23[3] = &unk_1C4D0;
      objc_copyWeak(&v25, location);
      v24 = v17;
      [v22 runWithHints:v11 eventsDelegate:v12 reply:v23];

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

- (void)_startPasscodeMechanismWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5
{
  v10.receiver = self;
  v10.super_class = MechanismPasscode;
  [(MechanismPasscode *)&v10 runWithHints:a3 eventsDelegate:a4 reply:a5];
  v6 = [(MechanismPasscode *)self policyOptions];
  v7 = [v6 objectForKey:&off_1C918];
  v8 = *(&self->_failures + 4);
  *(&self->_failures + 4) = v7;

  *(&self->super + 1) = 0;
  v9 = *(&self->_beingCanceledByOtherConfirmation + 4);
  *(&self->_beingCanceledByOtherConfirmation + 4) = 0;
}

- (BOOL)_handleIntentConfirmationWithResult:(id)a3 error:(id)a4 finishingSecureIntent:(BOOL)a5 otherIsSecureInput:(BOOL)a6 reply:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (a6)
  {
    v15 = 0;
  }

  else
  {
    v15 = [(MechanismPasscode *)self preCompanion];
  }

  if (v9)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  if (v9)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = v16;
  v19 = v17;
  v20 = [(MechanismPasscode *)self request];
  v21 = [v20 log];

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v36 = @"success";
    *buf = 138544130;
    if (!v12)
    {
      v36 = v13;
    }

    v39 = self;
    v40 = 2114;
    v41 = v36;
    v42 = 2114;
    v43 = v18;
    v44 = 2114;
    v45 = v19;
    _os_log_debug_impl(&def_13158, v21, OS_LOG_TYPE_DEBUG, "%{public}@ is handling intent confirmation result: %{public}@, finishing: %{public}@, other: %{public}@", buf, 0x2Au);
  }

  v22 = [LAErrorHelper error:v13 hasCode:-1023];
  v23 = (v12 != 0) | v22;
  if ((v12 != 0) | v22 & 1)
  {
    v24 = v22;
    v37 = v14;
    v25 = [(MechanismPasscode *)self request];
    v26 = [v25 log];

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
      v39 = self;
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
      v31 = [v12 objectForKeyedSubscript:@"Result"];
      [(MechanismPasscode *)self yieldPartialResult:v31];
    }

    v32 = *(&self->_beingCanceledByOtherConfirmation + 4);
    v14 = v37;
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
    v14[2](v14, 0, v13);
  }

  return v23 & 1;
}

- (void)enterPassphrase:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_3208();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[MechanismPasscode enterPassphrase:reply:]";
    v35 = 2112;
    v36 = self;
    _os_log_impl(&def_13158, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v9 = [*(&self->_userId + 4) errorAuthenticationFailedWithBackoff];
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 3;
    goto LABEL_17;
  }

  v13 = [(MechanismPasscode *)self _verifyPasscode:v6];
  [v6 reset];
  v12 = 3;
  if (v13 > 1)
  {
    switch(v13)
    {
      case 2:
        goto LABEL_9;
      case 3:
        v9 = [LAErrorHelper internalErrorWithMessage:@"Unexpected failure during passcode verification."];
        v12 = 3;
        break;
      case 4:
LABEL_9:
        v9 = [*(&self->_userId + 4) actionFailureWithBackoffResult];
        v12 = 2;
        break;
    }

LABEL_16:
    v10 = [(MechanismPasscode *)self _checkSoftLimitWithFailedAttempt];
    v11 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      v14 = [*(&self->_userId + 4) actionFailure];
      if (!v14)
      {
        v14 = [LAErrorHelper errorWithCode:-1 message:@"Passcode rejected."];
      }

      v9 = v14;
      v12 = 1;
    }

    goto LABEL_16;
  }

  [*(&self->_userId + 4) actionSuccess];
  v25 = [(MechanismPasscode *)self preCompanion];
  if ([v25 eventIdentifier] != &dword_4 + 1)
  {

LABEL_31:
    v10 = 0;
    goto LABEL_32;
  }

  v26 = [(MechanismPasscode *)self policyOptions];
  v27 = [v26 objectForKeyedSubscript:&off_1C900];
  v28 = [v27 BOOLValue];

  if (!v28)
  {
    goto LABEL_31;
  }

  v29 = [(MechanismPasscode *)self preCompanion];
  v30 = [v29 checkCredentialValid];

  if (v30)
  {
    goto LABEL_31;
  }

  v10 = [LAErrorHelper errorWithCode:-1023 message:@"Double press is required."];
LABEL_32:
  [(MechanismPasscode *)self yieldPartialResult:3 value:&__kCFBooleanTrue];
  v9 = 0;
  v12 = 0;
  v11 = 1;
LABEL_17:
  v15 = [(MechanismPasscode *)self request];
  v16 = [v15 analytics];
  [v16 authenticationAttempt:v12 event:{-[MechanismPasscode eventIdentifier](self, "eventIdentifier")}];

  if (v12)
  {
    v17 = [(MechanismPasscode *)self request];
    v18 = [v17 analyticsData];
    [v18 authenticationAttemptFailedForEvent:LACEventPasscode];
  }

  v19 = [NSNumber numberWithBool:v11, &off_1C930];
  v32 = v19;
  v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [(MechanismPasscode *)self noResponseEventWithParams:v20];

  v7[2](v7, v11, v9);
  if (v10)
  {
    [(MechanismPasscode *)self failAuthenticationWithError:v10];
  }

  else if (v11)
  {
    v21 = [(MechanismPasscode *)self postCompanion];

    if (v21)
    {
      v22 = [(MechanismPasscode *)self postCompanion];
      v23 = [(MechanismPasscode *)self internalOptions];
      v24 = [(MechanismPasscode *)self eventsDelegate];
      [v22 runWithHints:v23 eventsDelegate:v24 reply:&stru_1C510];
    }

    else
    {
      [(MechanismPasscode *)self succeedAuthenticationWithResult:&__NSDictionary0__struct];
    }
  }
}

- (int64_t)_verifyPasscode:(id)a3
{
  v4 = a3;
  v5 = +[LACPasscodeHelper sharedInstance];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_4184;
  v13 = &unk_1C538;
  v14 = self;
  v15 = v4;
  v6 = v4;
  v7 = sub_4184(&v10);
  v8 = [v5 verifyPasscode:{v7, v10, v11, v12, v13, v14}];

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

- (void)setCredential:(id)a3 credentialType:(int64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = v8;
  v10 = a5;
  v11 = +[LACSecureData secureDataWithBytes:length:](LACSecureData, "secureDataWithBytes:length:", [v8 bytes], objc_msgSend(v8, "length"));
  if (LACCredentialPasscode == a4)
  {
    [(MechanismPasscode *)self enterPassphrase:v11 reply:v10];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MechanismPasscode;
    [(MechanismPassphrase *)&v12 setCredential:v8 credentialType:a4 reply:v10];
  }
}

- (id)backgroundMechanismForEventProcessing:(id)a3
{
  v5.receiver = self;
  v5.super_class = MechanismPasscode;
  v3 = [(MechanismPasscode *)&v5 backgroundMechanismForEventProcessing:a3];

  return v3;
}

- (BOOL)precedesUI
{
  v2 = [(MechanismPasscode *)self preCompanion];
  v3 = [v2 isRunning];

  return v3;
}

- (void)companionStateChanged:(id)a3 newState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MechanismPasscode *)self request];
  v8 = [v7 log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "not present";
    *v18 = 138543874;
    *&v18[4] = self;
    if (v4)
    {
      v9 = "present";
    }

    *&v18[12] = 2114;
    *&v18[14] = v6;
    v19 = 2080;
    v20 = v9;
    _os_log_impl(&def_13158, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has been notified by %{public}@ that the credential is %s", v18, 0x20u);
  }

  v10 = [(MechanismPasscode *)self preCompanion];

  if (v10 != v6)
  {
    v12 = [(MechanismPasscode *)self postCompanion];

    if (v12 == v6)
    {
      if (v4)
      {
        [(MechanismPasscode *)self yieldPartialResult:18 value:&__kCFBooleanTrue];
        [(MechanismPasscode *)self succeedAuthenticationWithResult:&__NSDictionary0__struct];
        goto LABEL_19;
      }
    }

    else
    {
      v13 = [(MechanismPasscode *)self request];
      v14 = [v13 log];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_BC9C(v6, self, v14);
      }

      if (v4)
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

  BYTE4(self->_runBlock) = v4;
  if (!v4)
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