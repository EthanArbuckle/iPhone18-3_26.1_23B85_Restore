@interface MechanismPearl
- (BOOL)_checkFailureCounter:(BOOL)a3 wrongAuthentication:(BOOL)a4 error:(id *)a5;
- (BOOL)_exceededFailureLimit;
- (BOOL)_shouldShowUIBeforeFailure;
- (BOOL)isAvailableForPurpose:(int64_t)a3 error:(id *)a4;
- (LACRemoteUI)remoteUiDelegate;
- (MechanismPearl)initWithParams:(id)a3 request:(id)a4;
- (id)additionalControllerInternalInfoForPolicy:(int64_t)a3;
- (void)_cancelOperation:(id)a3;
- (void)_dispatchBKOperationWithBlock:(id)a3;
- (void)_expireMatchThatStartedAt:(id)a3;
- (void)_finishFaceDetectPhase;
- (void)_generateArtificialFaceOutIfNeeded;
- (void)_matchOperation:(id)a3 matchedWithResult:(id)a4;
- (void)_operation:(id)a3 failedWithReason:(int64_t)a4;
- (void)_operation:(id)a3 finishedWithReason:(int64_t)a4;
- (void)_operation:(id)a3 presenceStateChanged:(BOOL)a4;
- (void)_operation:(id)a3 providedFeedback:(int64_t)a4;
- (void)_operation:(id)a3 stateChanged:(int64_t)a4;
- (void)_pauseFaceIdAfterSecureUIMovement;
- (void)_prepareCustomSecureUiWithCompletion:(id)a3;
- (void)_scheduleMatchExpirationWithResult:(id)a3 identityUUID:(id)a4;
- (void)_setFaceDetectTimeout;
- (void)_setupCoachingFilter;
- (void)_startBiometry;
- (void)_startFaceDetectPhase;
- (void)_startMatching;
- (void)_stopBiometry;
- (void)_succeedAuthenticationWithResult:(id)a3 identityUUID:(id)a4;
- (void)companionStateChanged:(id)a3 newState:(BOOL)a4;
- (void)handleUIEvent:(int64_t)a3 params:(id)a4;
- (void)matchOperation:(id)a3 failedWithReason:(int64_t)a4;
- (void)matchOperation:(id)a3 matchedWithResult:(id)a4;
- (void)matchOperation:(id)a3 providedFeedback:(int64_t)a4;
- (void)mechanismEvent:(int64_t)a3 value:(id)a4 reply:(id)a5;
- (void)mechanismEvent:(int64_t)a3 value:(id)a4 timeout:(double)a5 reply:(id)a6;
- (void)noResponseEventWithParams:(id)a3;
- (void)operation:(id)a3 finishedWithReason:(int64_t)a4;
- (void)operation:(id)a3 presenceStateChanged:(BOOL)a4;
- (void)operation:(id)a3 stateChanged:(int64_t)a4;
- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5;
- (void)willFinish;
@end

@implementation MechanismPearl

- (MechanismPearl)initWithParams:(id)a3 request:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"AcmContextRecord"];
  v9 = [v7 objectForKeyedSubscript:@"EvaluationMode"];
  v10 = [v9 integerValue];
  v11 = [v7 objectForKeyedSubscript:@"UserId"];

  v14.receiver = self;
  v14.super_class = MechanismPearl;
  v12 = [(MechanismPearl *)&v14 initWithEventIdentifier:7 remoteViewController:5 acmContextRecord:v8 request:v6 evaluationMode:v10 userId:v11];

  return v12;
}

- (BOOL)isAvailableForPurpose:(int64_t)a3 error:(id *)a4
{
  if (LACPurposeSecureUIRecording == a3)
  {
    v32.receiver = self;
    v32.super_class = MechanismPearl;
    return [(MechanismPearl *)&v32 isAvailableForPurpose:a3 error:a4];
  }

  v8 = [(MechanismPearl *)self evaluationMode];
  if (v8)
  {
    if (v8 == &dword_0 + 1)
    {
      v9 = +[BiometryHelper faceIdInstance];
      v10 = [v9 isAnyUserEnrolledWithError:a4];

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v11 = +[BiometryHelper faceIdInstance];
    v12 = [(MechanismPearl *)self userId];
    v13 = [v11 isEnrolled:v12 error:a4];

    if (!v13)
    {
      return 0;
    }

    v14 = +[BiometryHelper faceIdInstance];
    v15 = [(MechanismPearl *)self userId];
    v16 = [(MechanismPearl *)self request];
    v17 = [v14 isLockedOutForUser:v15 request:v16 error:a4];

    if (v17)
    {
      return 0;
    }
  }

  v18 = +[LAPasscodeHelper sharedInstance];
  v19 = [(MechanismPearl *)self userId];
  v20 = [v18 isPasscodeSetForUser:objc_msgSend(v19 error:{"unsignedIntValue"), a4}];

  if (!v20)
  {
    return 0;
  }

  v21 = [(MechanismPearl *)self request];
  v22 = [v21 serviceLocator];
  v23 = NSStringFromProtocol(&OBJC_PROTOCOL___LACCompanionAuthenticationService);
  v24 = [v22 serviceWithIdentifier:v23];

  if (![v24 isCompanionDeviceAvailable])
  {
    goto LABEL_12;
  }

  v25 = [(MechanismPearl *)self request];
  v26 = [v25 options];
  v27 = [NSNumber numberWithInteger:LACPolicyOptionConcurrentBiometryAndCompanion];
  v28 = [v26 objectForKeyedSubscript:v27];
  v29 = [v28 BOOLValue];

  if ((v29 & 1) == 0)
  {
    if (a4)
    {
      [LACError errorWithCode:LACErrorCodeBiometryNotAvailable debugDescription:@"Companion authentication is active and concurrent run with biometry is not allowed"];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
LABEL_12:
    v31.receiver = self;
    v31.super_class = MechanismPearl;
    v7 = [(MechanismPearl *)&v31 isAvailableForPurpose:a3 error:a4];
  }

  return v7;
}

- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5
{
  v7 = a3;
  v32.receiver = self;
  v32.super_class = MechanismPearl;
  v29 = a4;
  v30 = v7;
  [MechanismPearl runWithHints:"runWithHints:eventsDelegate:reply:" eventsDelegate:v7 reply:?];
  v8 = [(MechanismPearl *)self internalOptions];
  v9 = [v8 objectForKeyedSubscript:@"AuditToken"];
  v10 = [(MechanismPearl *)self internalOptions];
  v11 = [v10 objectForKeyedSubscript:@"Options"];
  v12 = [v11 objectForKey:&off_10AB0];
  v13 = [(MechanismPearl *)self policyOptions];
  v14 = [v13 objectForKeyedSubscript:&off_10AC8];
  v31 = 0;
  LOBYTE(a4) = [(MechanismPearl *)self isTCCAllowedWithAuditTokenData:v9 optionAuditTokenData:v12 forcePrompt:0 auditTokenUsage:v14 error:&v31];
  v15 = v31;

  if ((a4 & 1) == 0)
  {
    [(MechanismPearl *)self failAuthenticationWithError:v15];
LABEL_10:
    v28 = v29;
    v27 = v30;
    goto LABEL_11;
  }

  v16 = +[BiometryHelper faceIdInstance];
  v17 = [v16 device];
  pearlDevice = self->_pearlDevice;
  self->_pearlDevice = v17;

  self->_standardUifailures = 0;
  [(MechanismPearl *)self setFailures:0];
  v19 = [(MechanismPearl *)self policyOptions];
  v20 = [v19 objectForKey:&off_10AE0];
  [(MechanismPearl *)self setFailureLimit:v20];

  v21 = [(MechanismPearl *)self failureLimit];

  if (!v21)
  {
    [(MechanismPearl *)self setFailureLimit:&off_10AF8];
  }

  v22 = [(MechanismPearl *)self preCompanion];

  if (!v22)
  {
    [(MechanismPearl *)self _startBiometry];
    goto LABEL_10;
  }

  v23 = [(MechanismPearl *)self policyOptions];
  v24 = [v23 objectForKeyedSubscript:&off_10B10];
  v25 = [v24 BOOLValue];

  if (v25)
  {
    [(MechanismPearl *)self _startBiometry];
  }

  v26 = [(MechanismPearl *)self preCompanion];
  v28 = v29;
  v27 = v30;
  [v26 runWithHints:v30 eventsDelegate:v29 reply:&stru_10360];

LABEL_11:
}

- (BOOL)_exceededFailureLimit
{
  v3 = [(MechanismPearl *)self failureLimit];

  if (!v3)
  {
    return 0;
  }

  v4 = [(MechanismPearl *)self failures]+ 1;
  [(MechanismPearl *)self setFailures:v4];
  v5 = [(MechanismPearl *)self failureLimit];
  v6 = v4 > [v5 unsignedIntegerValue];

  return v6;
}

- (BOOL)_checkFailureCounter:(BOOL)a3 wrongAuthentication:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [(MechanismPearl *)self failureLimit];

  if (v9 && ((lastCounterCheckInNoMatch = self->_lastCounterCheckInNoMatch, self->_lastCounterCheckInNoMatch = v7, v7) || !lastCounterCheckInNoMatch) && [(MechanismPearl *)self _exceededFailureLimit])
  {
    if (a5 && v6)
    {
      v11 = [LAErrorHelper errorWithCode:-1022 message:@"Application retry limit exceeded - matched unbound identity."];
      v12 = v11;
      result = 0;
      *a5 = v11;
    }

    else
    {
      if (a5)
      {
        if (v7)
        {
          [LAErrorHelper errorWithCode:-1 message:@"Application retry limit exceeded."];
        }

        else
        {
          [LAErrorHelper errorWithCode:-1 subcode:11 message:@"Application retry limit exceeded."];
        }
        v14 = ;
        *a5 = v14;
      }

      return 0;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    return 1;
  }

  return result;
}

- (void)matchOperation:(id)a3 matchedWithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2398;
  v10[3] = &unk_10388;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(MechanismPearl *)self _dispatchBKOperationWithBlock:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_dispatchBKOperationWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[NSDate now];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_24F8;
  v8[3] = &unk_103B0;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(MechanismPearl *)self dispatchAsyncOnServerQueueIfRunning:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (BOOL)_shouldShowUIBeforeFailure
{
  v3 = +[LACDevice sharedInstance];
  if ([v3 isDynamicIslandAvailable])
  {
    v4 = [(MechanismPearl *)self policyOptions];
    v5 = [v4 objectForKeyedSubscript:&off_10B28];
    v6 = [v5 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v7 = [(MechanismPearl *)self hasUI]& v6;
  v8 = [(MechanismPearl *)self policyOptions];
  v9 = [v8 objectForKeyedSubscript:&off_10B40];
  v10 = [v9 BOOLValue];

  return v7 & (v10 ^ 1);
}

- (void)_matchOperation:(id)a3 matchedWithResult:(id)a4
{
  v67 = a3;
  v6 = a4;
  v7 = [v6 identity];

  v8 = v7 == 0;
  v9 = [(MechanismPearl *)self request];
  v10 = [v9 log];

  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 138543874;
    v80 = self;
    v81 = 2112;
    v82 = v67;
    v83 = 1024;
    v84 = [v6 lockoutState];
    v12 = "%{public}@ has received no-match from %@ (lockout state:%d)";
    v13 = v10;
    v14 = 28;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 138544386;
    v80 = self;
    v81 = 2112;
    v82 = v67;
    v83 = 1024;
    v84 = [v6 unlocked];
    v85 = 1024;
    v86 = [v6 credentialAdded];
    v87 = 1024;
    v88 = [v6 resultIgnored];
    v12 = "%{public}@ has matched by %@ (unlocked:%d, credential:%d, resultIgnored:%d)";
    v13 = v10;
    v14 = 40;
  }

  _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_7:

  v15 = [(MechanismPearl *)self request];
  v16 = [v15 analytics];
  v17 = [v6 identity];
  v18 = v17 == 0;
  [v16 authenticationAttempt:v18 event:{-[MechanismPearl eventIdentifier](self, "eventIdentifier")}];

  v77 = &off_10B58;
  v19 = [v6 resultIgnored];
  if (v19)
  {
    v20 = 13;
  }

  else
  {
    v18 = [v6 identity];
    if (v18)
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }
  }

  v21 = [NSNumber numberWithInteger:v20];
  v78 = v21;
  v22 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v23 = [NSMutableDictionary dictionaryWithDictionary:v22];

  if ((v19 & 1) == 0)
  {
  }

  v24 = [(BKMatchPearlOperation *)self->_matchOperation purpose]== &dword_0 + 2 || [(BKMatchPearlOperation *)self->_matchOperation purpose]== &dword_4;
  v25 = -[MechanismPearl checkLockoutState:isEffectiveLockoutForMatchWithPurpose:](self, "checkLockoutState:isEffectiveLockoutForMatchWithPurpose:", [v6 lockoutState], -[BKMatchPearlOperation purpose](self->_matchOperation, "purpose"));
  v26 = [(BKMatchPearlOperation *)self->_matchOperation userID];
  if (!v26)
  {
    if ((([v6 lockoutState] == &dword_4 + 2) & v25) == 1)
    {
      goto LABEL_19;
    }

LABEL_21:
    v30 = 0;
    v65 = 0;
    goto LABEL_22;
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v27 = +[BiometryHelper faceIdInstance];
  v28 = [v6 lockoutState];
  v29 = [(MechanismPearl *)self userId];
  v65 = [v27 lockoutErrorForState:v28 userId:v29];

  [v23 setObject:v65 forKey:&off_10B70];
  [(MechanismPearl *)self setBiolockout:1];
  v30 = 1;
LABEL_22:
  [(MechanismPearl *)self noResponseEventWithParams:v23, v65];
  v31 = [v6 identity];
  if (v31)
  {
    v32 = [v6 resultIgnored];

    if ((v32 & 1) == 0)
    {
      v39 = [NSMutableDictionary dictionaryWithObject:&__kCFBooleanTrue forKey:&off_10B88];
      v43 = [v6 identity];
      v44 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v43 userID]);
      [v39 setObject:v44 forKey:&off_10BA0];

      v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 credentialAdded]);
      [v39 setObject:v45 forKey:&off_10BB8];

      if (v24)
      {
        v46 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 unlocked]);
        [v39 setObject:v46 forKey:&off_10BD0];
      }

      if (v30)
      {
        [v39 setObject:&__kCFBooleanTrue forKey:&off_10BE8];
      }

      v47 = [(MechanismPearl *)self policyOptions];
      v41 = [v47 objectForKeyedSubscript:&off_10C00];

      if (!v41 || [v41 BOOLValue])
      {
        v48 = +[BiometryHelper faceIdInstance];
        v49 = [v6 identity];
        v50 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v49 userID]);
        v74 = 0;
        v51 = [v48 biometryDatabaseHashForUser:v50 error:&v74];
        v52 = v74;

        if (v51)
        {
          [v39 setObject:v51 forKey:&off_10C18];
        }

        else
        {
          v54 = [(MechanismPearl *)self request];
          v55 = [v54 log];

          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            sub_7430(v6, v52, v55);
          }
        }
      }

      v42 = [(MechanismPearl *)self preCompanion];
      if (v42 && ([v39 setObject:&__kCFBooleanTrue forKey:&off_10B70], (objc_msgSend(v42, "checkCredentialValid") & 1) == 0))
      {
        v57 = [v6 identity];
        v58 = [v57 uuid];
        [(MechanismPearl *)self _scheduleMatchExpirationWithResult:v39 identityUUID:v58];

        v75 = &off_10BE8;
        v76 = &__kCFBooleanFalse;
        v59 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        [v42 noResponseEventWithParams:v59];

        v60 = [(MechanismPearl *)self policyOptions];
        v61 = [v60 objectForKeyedSubscript:&off_10B10];
        LODWORD(v58) = [v61 BOOLValue];

        if (v58)
        {
          v62 = [LAErrorHelper errorWithCode:-1023 message:@"Double press is required."];
          [(MechanismPearl *)self failAuthenticationWithError:v62];
        }

        else
        {
          [(MechanismPearl *)self prepareForRestart];
        }

        [(MechanismPearl *)self mechanismEvent:2 reply:&stru_103D0];
      }

      else
      {
        [(MechanismPearl *)self mechanismEvent:2 reply:&stru_103D0];
        objc_initWeak(buf, self);
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_30E4;
        v70[3] = &unk_10388;
        objc_copyWeak(&v73, buf);
        v71 = v39;
        v72 = v6;
        v56 = objc_retainBlock(v70);
        if ([(CoachingFeedbackFilter *)self->_coachingFeedbackFilter isFinished])
        {
          (v56[2])(v56);
        }

        else
        {
          [(CoachingFeedbackFilter *)self->_coachingFeedbackFilter dispatchNowOrWhenFeedbackDurationAchieved:0 finish:0 block:v56];
        }

        objc_destroyWeak(&v73);
        objc_destroyWeak(buf);
      }

      v63 = +[MechanismContext sharedInstance];
      v64 = [v63 backoffCounter];
      [v64 actionSuccess];

      goto LABEL_60;
    }
  }

  if (v30)
  {
    v33 = +[BiometryHelper faceIdInstance];
    v34 = [v6 lockoutState];
    v35 = [(MechanismPearl *)self userId];
    v36 = [v33 lockoutErrorForState:v34 userId:v35];

    if ([(MechanismPearl *)self _shouldShowUIBeforeFailure])
    {
      v37 = [(MechanismPearl *)self failuresInfoDictionaryWithError:v36];
      [(MechanismPearl *)self mechanismEvent:7 value:v37 reply:&stru_103F0];

      self->_expectingEndOfMatching = 1;
    }

    else
    {
      [(MechanismPearl *)self failAuthenticationWithError:v36];
    }

    goto LABEL_61;
  }

  v69 = 0;
  v38 = -[MechanismPearl _checkFailureCounter:wrongAuthentication:error:](self, "_checkFailureCounter:wrongAuthentication:error:", 1, [v6 resultIgnored], &v69);
  v39 = v69;
  if (v38)
  {
    v68 = 0;
    v40 = [(MechanismPearl *)self isAvailableForPurpose:0 error:&v68];
    v41 = v68;
    if (!v40)
    {
      [(MechanismPearl *)self failAuthenticationWithError:v41];

      goto LABEL_61;
    }

    [(MechanismPearl *)self prepareForRestart];
    v42 = -[MechanismPearl failuresInfoDictionaryWithError:unboundMatch:](self, "failuresInfoDictionaryWithError:unboundMatch:", 0, [v6 resultIgnored]);
    [(MechanismPearl *)self mechanismEvent:1 value:v42 reply:&stru_10430];
LABEL_60:

    self->_expectingEndOfMatching = 1;
    goto LABEL_61;
  }

  if ([(MechanismPearl *)self _shouldShowUIBeforeFailure])
  {
    v53 = -[MechanismPearl failuresInfoDictionaryWithError:unboundMatch:](self, "failuresInfoDictionaryWithError:unboundMatch:", v39, [v6 resultIgnored]);
    [(MechanismPearl *)self mechanismEvent:1 value:v53 reply:&stru_10410];

    self->_expectingEndOfMatching = 1;
  }

  else
  {
    [(MechanismPearl *)self failAuthenticationWithError:v39];
  }

LABEL_61:
}

- (void)operation:(id)a3 finishedWithReason:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_32B0;
  v8[3] = &unk_10458;
  objc_copyWeak(v10, &location);
  v7 = v6;
  v9 = v7;
  v10[1] = a4;
  [(MechanismPearl *)self _dispatchBKOperationWithBlock:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_operation:(id)a3 finishedWithReason:(int64_t)a4
{
  v6 = a3;
  v7 = [(MechanismPearl *)self request];
  v8 = [v7 log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543874;
    v15 = self;
    v16 = 2114;
    v17 = v6;
    v18 = 1024;
    v19 = a4;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has been finished by %{public}@, reason:%d", &v14, 0x1Cu);
  }

  if (a4 == 3)
  {
    v9 = [(MechanismPearl *)self request];
    v10 = [v9 analytics];
    [v10 authenticationAttempt:3 event:{-[MechanismPearl eventIdentifier](self, "eventIdentifier")}];

    if (!self->_expectingEndOfMatching)
    {
      v11 = [LAErrorHelper errorWithCode:-1 message:@"Biometric operation failed"];
      [(MechanismPearl *)self failAuthenticationWithError:v11];
    }
  }

  p_matchOperation = &self->_matchOperation;
  matchOperation = self->_matchOperation;
  if (matchOperation == v6 || (p_matchOperation = &self->_detectOperation, matchOperation = self->_detectOperation, matchOperation == v6))
  {
    *p_matchOperation = 0;
  }
}

- (void)operation:(id)a3 stateChanged:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_35A0;
  v8[3] = &unk_10458;
  objc_copyWeak(v10, &location);
  v7 = v6;
  v9 = v7;
  v10[1] = a4;
  [(MechanismPearl *)self _dispatchBKOperationWithBlock:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_operation:(id)a3 stateChanged:(int64_t)a4
{
  v6 = a3;
  v7 = [(MechanismPearl *)self request];
  v8 = [v7 log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v37 = self;
    v38 = 1024;
    v39 = a4;
    v40 = 2114;
    v41 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ state has changed to %d on %{public}@", buf, 0x1Cu);
  }

  if (a4 <= 3)
  {
    if (a4 == 2)
    {
      if ([(CoachingFeedbackFilter *)self->_coachingFeedbackFilter isFinished])
      {
        [(MechanismPearl *)self _setupCoachingFilter];
      }

      v34 = &off_10B58;
      v35 = &off_10B58;
      v18 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      [(MechanismPearl *)self noResponseEventWithParams:v18];

      [(MechanismPearl *)self mechanismEvent:5 reply:&stru_10478];
    }

    else if (a4 == 3)
    {
      v32 = &off_10B58;
      v33 = &off_10BE8;
      v9 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      [(MechanismPearl *)self noResponseEventWithParams:v9];

      v10 = [LAErrorHelper errorWithCode:-4 message:@"Preempted by another biometric operation."];
      [(MechanismPearl *)self failAuthenticationWithError:v10];

      [(MechanismPearl *)self _cancelOperation:v6];
    }

    goto LABEL_31;
  }

  if (a4 != 4)
  {
    if (a4 != 5)
    {
      goto LABEL_31;
    }

    v25 = 0;
    v11 = [(MechanismPearl *)self _checkFailureCounter:0 wrongAuthentication:0 error:&v25];
    v12 = v25;
    if ((v11 & 1) == 0)
    {
      if (![(MechanismPearl *)self _shouldShowUIBeforeFailure])
      {
        [(MechanismPearl *)self failAuthenticationWithError:v12];
      }

      self->_expectingEndOfMatching = 1;
    }

    [(MechanismPearl *)self prepareForRestart];
    [(MechanismPearl *)self _generateArtificialFaceOutIfNeeded];
    v26 = &off_10B58;
    v27 = &off_10BE8;
    v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [(MechanismPearl *)self noResponseEventWithParams:v13];

    if (self->_hasUI)
    {
      v14 = [(MechanismPearl *)self failuresInfoDictionaryWithError:v12];
      [(MechanismPearl *)self mechanismEvent:6 value:v14 reply:&stru_10498];

      v15 = [(MechanismPearl *)self eventsDelegate];
      if (!v15)
      {
        v16 = self->_standardUifailures + 1;
        self->_standardUifailures = v16;
        if (v16 > 1)
        {
          goto LABEL_17;
        }
      }

      v17 = [(MechanismPearl *)self isLastRestartAttempt];

      if (v17)
      {
LABEL_17:
        [(MechanismPearl *)self _stopBiometry];
      }
    }

LABEL_30:

    goto LABEL_31;
  }

  if (self->_operationState == 2)
  {
    v30 = &off_10B58;
    v31 = &off_10BE8;
    v19 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [(MechanismPearl *)self noResponseEventWithParams:v19];
  }

  matchOperation = self->_matchOperation;
  if (matchOperation == v6)
  {
    v28 = &off_10B58;
    v29 = &off_10B70;
    v21 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [(MechanismPearl *)self noResponseEventWithParams:v21];

    matchOperation = self->_matchOperation;
  }

  if (matchOperation == v6 && !self->_expectingEndOfMatching || self->_detectOperation == v6 && !self->_expectingEndOfDetection)
  {
    v12 = +[BiometryHelper faceIdInstance];
    v22 = [(MechanismPearl *)self userId];
    v23 = [(MechanismPearl *)self request];
    v24 = [v12 biometryLostErrorForUser:v22 request:v23];
    [(MechanismPearl *)self failAuthenticationWithError:v24];

    goto LABEL_30;
  }

LABEL_31:
  self->_operationState = a4;
}

- (void)noResponseEventWithParams:(id)a3
{
  v4 = a3;
  if ([(MechanismPearl *)self isMirroringUI])
  {
    v5 = [v4 objectForKeyedSubscript:&off_10B58];
    v6 = [v5 integerValue];

    if (v6 == &dword_8 + 3)
    {
      goto LABEL_5;
    }

    if (v6 == &dword_8 + 2)
    {
      v7 = &__kCFBooleanTrue;
      goto LABEL_7;
    }

    if (v6 == &dword_0 + 3)
    {
LABEL_5:
      v7 = &__kCFBooleanFalse;
LABEL_7:
      v8 = [NSMutableDictionary dictionaryWithDictionary:v4];
      [v8 setObject:v7 forKey:&off_10C30];

      v4 = v8;
    }
  }

  v9.receiver = self;
  v9.super_class = MechanismPearl;
  [(MechanismPearl *)&v9 noResponseEventWithParams:v4];
}

- (void)_generateArtificialFaceOutIfNeeded
{
  if (self->_facePresent)
  {
    self->_facePresent = 0;
    v4 = &off_10B58;
    v5 = &off_10B88;
    v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    [(MechanismPearl *)self noResponseEventWithParams:v3];
  }
}

- (void)operation:(id)a3 presenceStateChanged:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3D38;
  v8[3] = &unk_104C0;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  v11 = a4;
  [(MechanismPearl *)self _dispatchBKOperationWithBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_operation:(id)a3 presenceStateChanged:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MechanismPearl *)self request];
  v8 = [v7 log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"out";
    *buf = 138543874;
    v21 = self;
    v22 = 2114;
    if (v4)
    {
      v9 = @"in";
    }

    v23 = v9;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has received face-%{public}@ from %{public}@", buf, 0x20u);
  }

  self->_facePresent = v4;
  if (self->_detectOperation)
  {
    v10 = +[DaemonUtils sharedInstance];
    v11 = [v10 serverQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3FE8;
    block[3] = &unk_10300;
    block[4] = self;
    dispatch_async(v11, block);
  }

  if (v4)
  {
    v12 = &off_10C48;
    v13 = 3;
  }

  else
  {
    ++self->_faceOutCounter;
    v14 = [(MechanismPearl *)self request];
    v15 = [v14 analytics];
    [v15 authenticationAttempt:2 event:{-[MechanismPearl eventIdentifier](self, "eventIdentifier")}];

    v12 = &off_10B88;
    v13 = 4;
  }

  v18 = &off_10B58;
  v19 = v12;
  v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [(MechanismPearl *)self noResponseEventWithParams:v16];

  [(MechanismPearl *)self mechanismEvent:v13 reply:&stru_104E0];
}

- (void)matchOperation:(id)a3 failedWithReason:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_40E0;
  v8[3] = &unk_10458;
  objc_copyWeak(v10, &location);
  v7 = v6;
  v9 = v7;
  v10[1] = a4;
  [(MechanismPearl *)self _dispatchBKOperationWithBlock:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_operation:(id)a3 failedWithReason:(int64_t)a4
{
  v6 = a3;
  v7 = [(MechanismPearl *)self request];
  v8 = [v7 log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v21 = self;
    v22 = 2114;
    v23 = v6;
    v24 = 1024;
    v25 = a4;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has failed by %{public}@ with reason:%d", buf, 0x1Cu);
  }

  switch(a4)
  {
    case 3:
      v10 = 8;
      v9 = 1;
      break;
    case 5:
      v9 = 0;
      v10 = 9;
      break;
    case 4:
      v9 = 0;
      v10 = 10;
      break;
    default:
      goto LABEL_17;
  }

  v18 = &off_10B58;
  v19 = &off_10BD0;
  v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [(MechanismPearl *)self noResponseEventWithParams:v11];

  self->_expectingEndOfMatching = 1;
  if ((v9 & 1) != 0 || (-[MechanismPearl policyOptions](self, "policyOptions"), v15 = objc_claimAutoreleasedReturnValue(), [v15 objectForKeyedSubscript:&off_10B40], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "BOOLValue"), v16, v15, self->_hasFallback) || v17)
  {
    [(MechanismPearl *)self mechanismEvent:11 reply:&stru_10500];
    v12 = [LAErrorHelper errorWithCode:-4 subcode:qword_95C8[v10 - 8] message:*(&off_106F0 + v10 - 8)];
    matchFailure = self->_matchFailure;
    self->_matchFailure = v12;

    if (self->_hasUI)
    {
      WeakRetained = objc_loadWeakRetained(&self->_remoteUiDelegate);

      if (WeakRetained)
      {
        [(MechanismPearl *)self failAuthenticationWithError:self->_matchFailure];
      }
    }

    else
    {
      [(MechanismPearl *)self setSilentFailure:self->_matchFailure];
      [(MechanismPearl *)self _generateArtificialFaceOutIfNeeded];
      [(MechanismPearl *)self _stopBiometry];
    }
  }

  else
  {
    [(MechanismPearl *)self mechanismEvent:v10 reply:&stru_10520];
  }

LABEL_17:
}

- (void)matchOperation:(id)a3 providedFeedback:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_44C0;
  v8[3] = &unk_10458;
  objc_copyWeak(v10, &location);
  v7 = v6;
  v9 = v7;
  v10[1] = a4;
  [(MechanismPearl *)self _dispatchBKOperationWithBlock:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_operation:(id)a3 providedFeedback:(int64_t)a4
{
  v6 = a3;
  if ((a4 - 1) < 0xA || (a4 - 12) < 2)
  {
    goto LABEL_2;
  }

  if (a4 == 11)
  {
    v7 = +[BiometryHelper faceIdInstance];
    v8 = [(MechanismPearl *)self userId];
    v9 = [v7 isPeriocularMatchingEnabledForUser:v8];

    if (v9)
    {
      v10 = [(MechanismPearl *)self request];
      v11 = [v10 log];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = self;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ will ignore occlusion feedback", &v14, 0xCu);
      }

      goto LABEL_3;
    }

LABEL_2:
    [(CoachingFeedbackFilter *)self->_coachingFeedbackFilter scheduleFeedback:a4];
    goto LABEL_3;
  }

  v12 = [(MechanismPearl *)self request];
  v13 = [v12 log];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_74DC(a4, v13);
  }

LABEL_3:
}

- (void)_cancelOperation:(id)a3
{
  v4 = a3;
  if (self->_matchOperation == v4)
  {
    v5 = &OBJC_IVAR___MechanismPearl__expectingEndOfMatching;
  }

  else
  {
    if (self->_detectOperation != v4)
    {
      goto LABEL_6;
    }

    v5 = &OBJC_IVAR___MechanismPearl__expectingEndOfDetection;
  }

  self->MechanismBiometry_opaque[*v5] = 1;
  v6 = v4;
  [(BKPresenceDetectOperation *)v4 cancel];
  v4 = v6;
LABEL_6:
}

- (void)_startBiometry
{
  v3 = [(MechanismPearl *)self policyOptions];
  v4 = [v3 objectForKey:&off_10C60];
  faceDetectTimeout = self->_faceDetectTimeout;
  self->_faceDetectTimeout = v4;

  if (self->_faceDetectTimeout)
  {

    [(MechanismPearl *)self _startFaceDetectPhase];
  }

  else
  {

    [(MechanismPearl *)self _startMatching];
  }
}

- (void)_setupCoachingFilter
{
  v5 = [NSSet setWithObjects:&off_10B88, &off_10BA0, &off_10B58, &off_10BE8, 0];
  v3 = [[CoachingFeedbackFilter alloc] initWithDelegate:self feedbackSet:v5 feedbackDuration:0.4 iconDuration:0.5];
  coachingFeedbackFilter = self->_coachingFeedbackFilter;
  self->_coachingFeedbackFilter = v3;
}

- (void)_startMatching
{
  v4 = [(MechanismPearl *)self request];
  v5 = [v4 log];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MechanismPearl *)self userId];
    if (v6)
    {
      v2 = [(MechanismPearl *)self userId];
      v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"user %d", [v2 intValue]);
    }

    else
    {
      v7 = @"any user";
    }

    *buf = 138543618;
    v28 = self;
    v29 = 2114;
    v30 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will start matching %{public}@", buf, 0x16u);
    if (v6)
    {
    }
  }

  [(MechanismPearl *)self _setupCoachingFilter];
  self->_expectingEndOfMatching = 0;
  pearlDevice = self->_pearlDevice;
  v26 = 0;
  v9 = [(BKDevicePearl *)pearlDevice createMatchOperationWithError:&v26];
  v10 = v26;
  matchOperation = self->_matchOperation;
  self->_matchOperation = v9;

  [(BKMatchPearlOperation *)self->_matchOperation setDelegate:self];
  v12 = self->_matchOperation;
  v13 = [(MechanismPearl *)self externalizedContext];
  [(BKMatchPearlOperation *)v12 setCredentialSet:v13];

  [(BKMatchPearlOperation *)self->_matchOperation setPriority:50];
  [(BKMatchPearlOperation *)self->_matchOperation setStopOnSuccess:1];
  v14 = self->_matchOperation;
  v15 = [(MechanismPearl *)self identityUUIDs];
  [(BKMatchPearlOperation *)v14 setSelectedIdentities:v15];

  v16 = self->_matchOperation;
  v17 = [(MechanismPearl *)self userId];
  [(BKMatchPearlOperation *)v16 setUserID:v17];

  v18 = [(MechanismPearl *)self policyOptions];
  v19 = [v18 objectForKeyedSubscript:&off_10C78];
  v20 = [v19 BOOLValue];

  if (v20)
  {
    v21 = 4;
  }

  else
  {
    v21 = 3;
  }

  [(BKMatchPearlOperation *)self->_matchOperation setPurpose:v21];
  if ([(MechanismPearl *)self policy]== &stru_3D8.segname[4])
  {
    v22 = 2;
LABEL_15:
    [(BKMatchPearlOperation *)self->_matchOperation setUseCase:v22];
    goto LABEL_16;
  }

  v23 = [(MechanismPearl *)self request];
  v24 = [v23 isPurposeApplePay];

  if (v24)
  {
    v22 = 3;
    goto LABEL_15;
  }

LABEL_16:
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_4B90;
  v25[3] = &unk_10300;
  v25[4] = self;
  [(MechanismPearl *)self _prepareCustomSecureUiWithCompletion:v25];
}

- (void)_prepareCustomSecureUiWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MechanismPearl *)self eventsDelegate];

  if (v5 && (+[LACSecureFaceIDUIUtilities sharedInstance](LACSecureFaceIDUIUtilities, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isActive], v6, (v7 & 1) != 0))
  {
    v8 = [(MechanismPearl *)self policyOptions];
    v9 = [v8 objectForKeyedSubscript:&off_10C90];
    v10 = [v9 objectForKeyedSubscript:&off_10C18];
    v11 = [v10 objectForKeyedSubscript:&off_10CA8];

    if (v11 && [v11 integerValue])
    {
      v12 = [(MechanismPearl *)self request];
      v13 = [v12 log];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = self;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ is waiting for mirrored default UI to prepare secure UI", buf, 0xCu);
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_4FE4;
      v20[3] = &unk_10548;
      v20[4] = self;
      v14 = &v21;
      v21 = v4;
      [(MechanismPearl *)self mechanismEvent:20 value:0 timeout:v20 reply:1.0];
    }

    else
    {
      v15 = [(MechanismPearl *)self request];
      v16 = [v15 log];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = self;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ is waiting for custom UI client to prepare secure UI", buf, 0xCu);
      }

      v22 = &off_10B58;
      v23 = &off_10BB8;
      v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_50BC;
      v18[3] = &unk_10570;
      v18[4] = self;
      v14 = &v19;
      v19 = v4;
      [(MechanismPearl *)self responseEventWithParams:v17 timeout:v18 reply:1.0];
    }
  }

  else
  {
    v4[2](v4);
  }
}

- (void)_startFaceDetectPhase
{
  v3 = [(MechanismPearl *)self request];
  v4 = [v3 log];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = self;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ is starting face detect phase", buf, 0xCu);
  }

  self->_faceOutCounter = 0;
  self->_expectingEndOfDetection = 0;
  v16 = &off_10B58;
  v17 = &off_10CC0;
  v5 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [(MechanismPearl *)self noResponseEventWithParams:v5];

  pearlDevice = self->_pearlDevice;
  v15 = 0;
  v7 = [(BKDevicePearl *)pearlDevice createPresenceDetectOperationWithError:&v15];
  v8 = v15;
  detectOperation = self->_detectOperation;
  self->_detectOperation = v7;

  [(BKPresenceDetectOperation *)self->_detectOperation setPriority:50];
  [(BKPresenceDetectOperation *)self->_detectOperation setDelegate:self];
  v10 = self->_detectOperation;
  v14 = v8;
  v11 = [(BKPresenceDetectOperation *)v10 startWithError:&v14];
  v12 = v14;

  if ((v11 & 1) == 0)
  {
    v13 = [LAErrorHelper errorWithCode:-1 message:@"detect failed" suberror:v12];
    [(MechanismPearl *)self failAuthenticationWithError:v13];
  }
}

- (void)_finishFaceDetectPhase
{
  v3 = [(MechanismPearl *)self request];
  v4 = [v3 log];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = self;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will finish face detect phase", buf, 0xCu);
  }

  v6 = &off_10B58;
  v7 = &off_10C18;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(MechanismPearl *)self noResponseEventWithParams:v5];

  [(MechanismPearl *)self _cancelOperation:self->_detectOperation];
  [(MechanismPearl *)self _startMatching];
}

- (void)_setFaceDetectTimeout
{
  [(NSNumber *)self->_faceDetectTimeout doubleValue];
  v4 = v3;
  v11 = &off_10B58;
  v12 = &off_10CD8;
  v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [(MechanismPearl *)self noResponseEventWithParams:v5];

  faceOutCounter = self->_faceOutCounter;
  v7 = dispatch_time(0, (v4 * 1000000000.0));
  v8 = +[DaemonUtils sharedInstance];
  v9 = [v8 serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_55F4;
  block[3] = &unk_10598;
  block[4] = self;
  block[5] = faceOutCounter;
  dispatch_after(v7, v9, block);
}

- (void)_stopBiometry
{
  v3 = [(MechanismPearl *)self request];
  v4 = [v3 log];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    matchOperation = self->_matchOperation;
    if (!matchOperation)
    {
      matchOperation = self->_detectOperation;
    }

    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = matchOperation;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will stop biometric operation: %{public}@", &v6, 0x16u);
  }

  if (self->_matchOperation || self->_detectOperation)
  {
    [(MechanismPearl *)self _cancelOperation:?];
  }
}

- (void)willFinish
{
  if (self->_operationState == 2)
  {
    v7 = &off_10B58;
    v8 = &off_10BE8;
    v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [(MechanismPearl *)self noResponseEventWithParams:v3];
  }

  if (self->_matchOperation)
  {
    v5 = &off_10B58;
    v6 = &off_10B70;
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    [(MechanismPearl *)self noResponseEventWithParams:v4];
  }

  [(MechanismPearl *)self setRemoteUiDelegate:0];
  [(MechanismPearl *)self _stopBiometry];
}

- (void)companionStateChanged:(id)a3 newState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MechanismPearl *)self request];
  v8 = [v7 log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v6;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ state changed to %d", buf, 0x12u);
  }

  if (v4)
  {
    matchResult = self->_matchResult;
    if (matchResult)
    {
      v13 = @"Result";
      v14 = matchResult;
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      [(MechanismPearl *)self _succeedAuthenticationWithResult:v10 identityUUID:self->_matchIdentityUUID];
LABEL_14:

      goto LABEL_15;
    }

    if ([(MechanismPearl *)self biolockout])
    {
      v12 = [(MechanismPearl *)self request];
      v10 = [v12 log];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_7554(self, v10);
      }

      goto LABEL_14;
    }

    if (([(MechanismPearl *)self isLastRestartAttempt]& 1) == 0 && ![(MechanismPearl *)self noRestartWithDoublePress])
    {
      if (self->_matchOperation)
      {
        if ([(MechanismPearl *)self isRestartable])
        {
          [(MechanismPearl *)self restartWithEventIdentifier:7 lastAttempt:0];
        }
      }

      else if (!self->_detectOperation)
      {
        [(MechanismPearl *)self _startBiometry];
      }
    }

    v11 = 12;
  }

  else
  {
    if (self->_matchOperation || self->_detectOperation)
    {
      [(MechanismPearl *)self _stopBiometry];
      [(MechanismPearl *)self prepareForRestart];
    }

    v11 = 13;
  }

  [(MechanismPearl *)self mechanismEvent:v11 reply:&stru_105B8];
LABEL_15:
}

- (id)additionalControllerInternalInfoForPolicy:(int64_t)a3
{
  v4 = [(MechanismPearl *)self preCompanion];
  if (v4)
  {
    v5 = [(MechanismPearl *)self preCompanion];
    v6 = [v5 eventIdentifier];

    if (v6 == &dword_4 + 1)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_6090;
      v10[3] = &unk_105E0;
      v10[4] = self;
      v7 = sub_6090(v10);
      v8 = v7;
      if (v7)
      {
        v11 = @"FaceIdWithButton";
        v12 = v7;
        v4 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)mechanismEvent:(int64_t)a3 value:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(MechanismPearl *)self request];
  v11 = [v10 log];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v31 = a3;
    v32 = 2114;
    v33 = v8;
    v34 = 2114;
    v35 = self;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Mechanism event %d(%{public}@) on %{public}@", buf, 0x1Cu);
  }

  if (self->_hasUI && self->_coachingFeedbackFilter)
  {
    if (a3 == 14 && !self->_facePresent && [v8 intValue] != 11)
    {
      v12 = [v8 isEqualToNumber:&off_10B88];
      if (v12 == self->_faceDetectTimerPaused)
      {
        v13 = v12 ^ 1;
        matchOperation = self->_matchOperation;
        v29 = 0;
        v15 = [(BKMatchPearlOperation *)matchOperation pauseFaceDetectTimer:v13 error:&v29];
        v16 = v29;
        if (v15)
        {
          self->_faceDetectTimerPaused = v13;
        }

        else
        {
          v17 = v11;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_7644(v8, v16, v17);
          }
        }
      }
    }

    v19 = a3 == 14 || a3 == 3;
    v20 = v11;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained(&self->_remoteUiDelegate);
      *buf = 67109634;
      v31 = a3;
      v32 = 2112;
      v33 = v8;
      v34 = 2112;
      v35 = WeakRetained;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Pre-fligthing mechanism event %d (%@) to %@", buf, 0x1Cu);
    }

    coachingFeedbackFilter = self->_coachingFeedbackFilter;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_64CC;
    v23[3] = &unk_10630;
    v24 = v20;
    v28 = a3;
    v25 = v8;
    v26 = self;
    v27 = v9;
    [(CoachingFeedbackFilter *)coachingFeedbackFilter dispatchNowOrWhenFeedbackDurationAchieved:v19 finish:(a3 - 1) < 2 block:v23];
  }

  else
  {
    v9[2](v9);
  }
}

- (void)mechanismEvent:(int64_t)a3 value:(id)a4 timeout:(double)a5 reply:(id)a6
{
  v10 = a4;
  v11 = a6;
  objc_initWeak(&location, self);
  v12 = [LACBackgroundTask alloc];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_6818;
  v21[3] = &unk_10658;
  objc_copyWeak(v23, &location);
  v23[1] = a3;
  v13 = v10;
  v22 = v13;
  v14 = [v12 initWithWorker:v21];
  v15 = +[LACConcurrencyUtilities daemonQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_6944;
  v18[3] = &unk_10680;
  v16 = v11;
  v20 = v16;
  v17 = v14;
  v19 = v17;
  [v17 runWithTimeout:v15 queue:v18 completion:a5];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)_succeedAuthenticationWithResult:(id)a3 identityUUID:(id)a4
{
  v5 = [(MechanismPearl *)self mergeResult:a3 withUpdateOfIdentityUUID:a4];
  v6.receiver = self;
  v6.super_class = MechanismPearl;
  [(MechanismPearl *)&v6 succeedAuthenticationWithResult:v5];
}

- (void)_scheduleMatchExpirationWithResult:(id)a3 identityUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_matchResult, a3);
  objc_storeStrong(&self->_matchIdentityUUID, a4);
  v9 = self->_startedMatching;
  objc_initWeak(&location, self);
  v10 = +[DaemonUtils sharedInstance];
  v11 = [v10 serverQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_6B3C;
  v13[3] = &unk_106A8;
  objc_copyWeak(&v15, &location);
  v12 = v9;
  v14 = v12;
  [DaemonUtils dispatchReallyAfter:29900000000 tolerance:v11 queue:v13 block:0.0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_expireMatchThatStartedAt:(id)a3
{
  if (self->_startedMatching == a3)
  {
    matchResult = self->_matchResult;
    self->_matchResult = 0;

    matchIdentityUUID = self->_matchIdentityUUID;
    self->_matchIdentityUUID = 0;

    v7 = &off_10B58;
    v8 = &off_10CF0;
    v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [(MechanismPearl *)self noResponseEventWithParams:v6];
  }
}

- (void)handleUIEvent:(int64_t)a3 params:(id)a4
{
  v8.receiver = self;
  v8.super_class = MechanismPearl;
  [(MechanismPearl *)&v8 handleUIEvent:a3 params:a4];
  if (a3 == 13)
  {
    v6 = +[LACSecureFaceIDUIUtilities sharedInstance];
    v7 = [v6 isActive];

    if (v7)
    {
      [(MechanismPearl *)self _pauseFaceIdAfterSecureUIMovement];
    }
  }
}

- (void)_pauseFaceIdAfterSecureUIMovement
{
  v3 = [(MechanismPearl *)self pause:1 forEvent:7 error:0];
  v4 = LACLogBiometry();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = self;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ paused after secure UI movement", buf, 0xCu);
    }

    v6 = ++dword_153C0;
    objc_initWeak(buf, self);
    v7 = dispatch_time(0, 100000000);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_6E80;
    v8[3] = &unk_106D0;
    objc_copyWeak(&v9, buf);
    v10 = v6;
    dispatch_after(v7, &_dispatch_main_q, v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_76D4(self, v5);
    }
  }
}

- (LACRemoteUI)remoteUiDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteUiDelegate);

  return WeakRetained;
}

@end