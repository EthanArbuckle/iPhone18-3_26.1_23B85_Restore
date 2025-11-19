@interface MechanismTouchId
- (BOOL)_exceededFailureLimit;
- (BOOL)_shouldShowUIBeforeFailure;
- (BOOL)isAvailableForPurpose:(int64_t)a3 error:(id *)a4;
- (LACRemoteUI)remoteUiDelegate;
- (MechanismTouchId)initWithParams:(id)a3 request:(id)a4;
- (id)currentMatchingOperationUserId;
- (void)_cancelOperation:(id)a3;
- (void)_finishFingerDetectPhase;
- (void)_matchOperation:(id)a3 matchedWithResult:(id)a4;
- (void)_operation:(id)a3 finishedWithReason:(int64_t)a4;
- (void)_operation:(id)a3 presenceStateChanged:(BOOL)a4;
- (void)_operation:(id)a3 stateChanged:(int64_t)a4;
- (void)_setFingerDetectTimeout;
- (void)_startBiometry;
- (void)_startFingerDetectPhase;
- (void)_startMatching;
- (void)matchOperation:(id)a3 matchedWithResult:(id)a4;
- (void)operation:(id)a3 finishedWithReason:(int64_t)a4;
- (void)operation:(id)a3 presenceStateChanged:(BOOL)a4;
- (void)operation:(id)a3 stateChanged:(int64_t)a4;
- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5;
- (void)unEnrolledWithError:(id)a3;
@end

@implementation MechanismTouchId

- (MechanismTouchId)initWithParams:(id)a3 request:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"AcmContextRecord"];
  v9 = [v7 objectForKeyedSubscript:@"EvaluationMode"];
  v10 = [v9 integerValue];
  v11 = [v7 objectForKeyedSubscript:@"UserId"];

  v14.receiver = self;
  v14.super_class = MechanismTouchId;
  v12 = [(MechanismTouchId *)&v14 initWithEventIdentifier:1 remoteViewController:1 acmContextRecord:v8 request:v6 evaluationMode:v10 userId:v11];

  return v12;
}

- (BOOL)isAvailableForPurpose:(int64_t)a3 error:(id *)a4
{
  v7 = [(MechanismTouchId *)self evaluationMode];
  if (v7)
  {
    if (v7 == &dword_0 + 1)
    {
      v8 = +[BiometryHelper touchIdInstance];
      v9 = [v8 isAnyUserEnrolledWithAdminRole:0 error:a4];

      if (!v9)
      {
        return 0;
      }

      v10 = +[BiometryHelper touchIdInstance];
      v11 = [(MechanismTouchId *)self request];
      v12 = [v10 isNotLockedOutForAnyUserWithAdminRole:0 request:v11 error:a4];

      if (v12)
      {
        return 0;
      }
    }
  }

  else
  {
    v13 = +[BiometryHelper touchIdInstance];
    v14 = [(MechanismTouchId *)self userId];
    v15 = [v13 isEnrolled:v14 error:a4];

    if (!v15)
    {
      return 0;
    }

    v16 = +[BiometryHelper touchIdInstance];
    v17 = [(MechanismTouchId *)self userId];
    v18 = [(MechanismTouchId *)self request];
    v19 = [v16 isLockedOutForUser:v17 request:v18 error:a4];

    if (v19)
    {
      return 0;
    }
  }

  v20 = +[LAPasscodeHelper sharedInstance];
  v21 = [(MechanismTouchId *)self userId];
  v22 = [v20 isPasscodeSetForUser:objc_msgSend(v21 error:{"unsignedIntValue"), a4}];

  if (v22)
  {
    v24.receiver = self;
    v24.super_class = MechanismTouchId;
    return [(MechanismTouchId *)&v24 isAvailableForPurpose:a3 error:a4];
  }

  return 0;
}

- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (![(MechanismTouchId *)self _containsAHPModeFUS:v10])
  {
    v11 = [(MechanismTouchId *)self fenceReplyWithTouchIdAssertions:v8];

    v8 = v11;
  }

  v12 = objc_retainBlock(v8);

  v19.receiver = self;
  v19.super_class = MechanismTouchId;
  [(MechanismTouchId *)&v19 runWithHints:v10 eventsDelegate:v9 reply:v12];

  v13 = +[BiometryHelper touchIdInstance];
  v14 = [v13 device];
  touchIdDevice = self->_touchIdDevice;
  self->_touchIdDevice = v14;

  [(MechanismTouchId *)self setFailures:0];
  v16 = [(MechanismTouchId *)self policyOptions];
  v17 = [v16 objectForKey:&off_8500];
  [(MechanismTouchId *)self setFailureLimit:v17];

  v18 = [(MechanismTouchId *)self failureLimit];

  if (!v18)
  {
    [(MechanismTouchId *)self setFailureLimit:&off_8518];
  }

  [(MechanismTouchId *)self _startBiometryMain];
}

- (BOOL)_exceededFailureLimit
{
  v3 = [(MechanismTouchId *)self failureLimit];

  if (!v3)
  {
    return 0;
  }

  v4 = [(MechanismTouchId *)self failures]+ 1;
  [(MechanismTouchId *)self setFailures:v4];
  v5 = [(MechanismTouchId *)self failureLimit];
  v6 = v4 > [v5 unsignedIntegerValue];

  return v6;
}

- (BOOL)_shouldShowUIBeforeFailure
{
  v3 = [(MechanismTouchId *)self isBiometryRequiredForPolicy];
  if (v3)
  {
    v3 = [(MechanismTouchId *)self hasUI];
    if (v3)
    {
      v4 = [(MechanismTouchId *)self policyOptions];
      v5 = [v4 objectForKeyedSubscript:&off_8530];
      v6 = [v5 BOOLValue];

      if (v6)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        LOBYTE(v3) = [(MechanismTouchId *)self isFallbackVisible]^ 1;
      }
    }
  }

  return v3;
}

- (void)matchOperation:(id)a3 matchedWithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1400;
  v10[3] = &unk_81C0;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(MechanismTouchId *)self dispatchAsyncOnServerQueueIfRunning:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_matchOperation:(id)a3 matchedWithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identity];

  v9 = [(MechanismTouchId *)self request];
  v10 = [v9 log];

  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 138544386;
    v80 = self;
    v81 = 2112;
    v82 = v6;
    v83 = 1024;
    v84 = [v7 unlocked];
    v85 = 1024;
    v86 = [v7 credentialAdded];
    v87 = 1024;
    v88 = [v7 resultIgnored];
    v12 = "%{public}@ has matched by %@ (unlocked:%d, credential:%d, resultIgnored:%d)";
    v13 = v10;
    v14 = 40;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 138543874;
    v80 = self;
    v81 = 2112;
    v82 = v6;
    v83 = 1024;
    v84 = [v7 lockoutState];
    v12 = "%{public}@ has received no-match from %@ (lockout state:%d)";
    v13 = v10;
    v14 = 28;
  }

  _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_7:

  v15 = [(MechanismTouchId *)self request];
  v16 = [v15 analytics];
  v17 = [v7 identity];
  [v16 authenticationAttempt:v17 == 0 event:{-[MechanismTouchId eventIdentifier](self, "eventIdentifier")}];

  v77 = &off_8548;
  v18 = [v7 resultIgnored];
  if (v18)
  {
    v19 = 10;
  }

  else
  {
    v17 = [v7 identity];
    if (v17)
    {
      v19 = 2;
    }

    else
    {
      v19 = 3;
    }
  }

  v20 = [NSNumber numberWithInteger:v19];
  v78 = v20;
  v21 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v22 = [NSMutableDictionary dictionaryWithDictionary:v21];

  if ((v18 & 1) == 0)
  {
  }

  v72 = v6;
  v23 = -[MechanismTouchId checkLockoutState:isEffectiveLockoutForMatchWithPurpose:](self, "checkLockoutState:isEffectiveLockoutForMatchWithPurpose:", [v7 lockoutState], -[BKMatchTouchIDOperation purpose](self->_matchOperation, "purpose"));
  v24 = [(BKMatchTouchIDOperation *)self->_matchOperation purpose]== &dword_0 + 2 || [(BKMatchTouchIDOperation *)self->_matchOperation purpose]== &dword_4;
  v25 = [(BKMatchTouchIDOperation *)self->_matchOperation userID];
  if (!v25)
  {
    if ((([v7 lockoutState] == &dword_4 + 2) & v23) == 1)
    {
      goto LABEL_19;
    }

LABEL_21:
    v30 = 0;
    v70 = 0;
    goto LABEL_22;
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v26 = +[BiometryHelper touchIdInstance];
  v27 = [v7 lockoutState];
  v28 = [(MechanismTouchId *)self userId];
  v29 = [v26 lockoutErrorForState:v27 userId:v28];

  v70 = v29;
  [v22 setObject:v29 forKey:&off_8560];
  v30 = 1;
LABEL_22:
  [(MechanismTouchId *)self setBiolockout:v30, v70];
  [(MechanismTouchId *)self noResponseEventWithParams:v22];
  v31 = [v7 identity];
  if (!v31 || (v32 = v31, v33 = [v7 resultIgnored], v32, (v33 & 1) != 0))
  {
    v34 = [(MechanismTouchId *)self _exceededFailureLimit];
    v35 = [(MechanismTouchId *)self request];
    v36 = [v35 analyticsData];
    [v36 authenticationAttemptFailedForEvent:LACEventTouchID];

    if (v30)
    {
      if ([(MechanismTouchId *)self _shouldShowUIBeforeFailure])
      {
        v37 = [(MechanismTouchId *)self remoteUiDelegate];
        v38 = v71;
        v39 = [(MechanismTouchId *)self failuresInfoDictionaryWithError:v71];
        [v37 mechanismEvent:7 value:v39 reply:&stru_8220];

        v40 = v72;
        [(MechanismTouchId *)self _cancelOperation:v72];
      }

      else
      {
        v38 = v71;
        [(MechanismTouchId *)self failAuthenticationWithError:v71];
        v40 = v72;
      }

      goto LABEL_57;
    }

    if (v34)
    {
      if ([(MechanismTouchId *)self _shouldFailForUnboundMatches])
      {
        if ([v7 resultIgnored])
        {
          v41 = -1022;
        }

        else
        {
          v41 = -1;
        }
      }

      else
      {
        v41 = -1;
      }

      v55 = [LAErrorHelper errorWithCode:v41 message:@"Application retry limit exceeded."];
      v38 = v71;
      if ([(MechanismTouchId *)self _shouldShowUIBeforeFailure])
      {
        v56 = [(MechanismTouchId *)self remoteUiDelegate];
        v57 = -[MechanismTouchId failuresInfoDictionaryWithError:unboundMatch:](self, "failuresInfoDictionaryWithError:unboundMatch:", v55, [v7 resultIgnored]);
        [v56 mechanismEvent:1 value:v57 reply:&stru_8240];

        v40 = v72;
        [(MechanismTouchId *)self _cancelOperation:v72];
LABEL_51:

        goto LABEL_57;
      }
    }

    else
    {
      v54 = [(BKMatchTouchIDOperation *)self->_matchOperation purpose]== &dword_0 + 2 || [(BKMatchTouchIDOperation *)self->_matchOperation purpose]== &dword_4;
      v73 = 0;
      v58 = [(MechanismTouchId *)self isAvailableForPurpose:v54 error:&v73];
      v55 = v73;
      v38 = v71;
      if (v58)
      {
        v59 = [(MechanismTouchId *)self remoteUiDelegate];
        v60 = -[MechanismTouchId failuresInfoDictionaryWithError:unboundMatch:](self, "failuresInfoDictionaryWithError:unboundMatch:", 0, [v7 resultIgnored]);
        [v59 mechanismEvent:1 value:v60 reply:&stru_8260];

LABEL_50:
        v40 = v72;
        goto LABEL_51;
      }
    }

    [(MechanismTouchId *)self failAuthenticationWithError:v55];
    goto LABEL_50;
  }

  v42 = [NSMutableDictionary dictionaryWithObject:&__kCFBooleanTrue forKey:&off_8578];
  v43 = [v7 identity];
  v44 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v43 userID]);
  [v42 setObject:v44 forKey:&off_8590];

  v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 credentialAdded]);
  [v42 setObject:v45 forKey:&off_85A8];

  if (v24)
  {
    v46 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 unlocked]);
    [v42 setObject:v46 forKey:&off_85C0];
  }

  if (v30)
  {
    [v42 setObject:&__kCFBooleanTrue forKey:&off_85D8];
  }

  v47 = [(MechanismTouchId *)self policyOptions];
  v48 = [v47 objectForKeyedSubscript:&off_85F0];

  if (!v48 || [v48 BOOLValue])
  {
    v49 = +[BiometryHelper touchIdInstance];
    v50 = [v7 identity];
    v51 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v50 userID]);
    v74 = 0;
    v52 = [v49 biometryDatabaseHashForUser:v51 error:&v74];
    v53 = v74;

    if (v52)
    {
      [v42 setObject:v52 forKey:&off_8608];
    }

    else
    {
      v61 = [(MechanismTouchId *)self request];
      v62 = [v61 log];

      if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        sub_3518(v7, v53, v62);
      }
    }
  }

  v63 = [(MechanismTouchId *)self remoteUiDelegate];
  [v63 mechanismEvent:2 reply:&stru_8200];

  v75 = @"Result";
  v76 = v42;
  v64 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  v65 = [v7 identity];
  v66 = [v65 uuid];
  v67 = [(MechanismTouchId *)self mergeResult:v64 withUpdateOfIdentityUUID:v66];
  [(MechanismTouchId *)self succeedAuthenticationWithResult:v67];

  v68 = +[MechanismContext sharedInstance];
  v69 = [v68 backoffCounter];
  [v69 actionSuccess];

  v38 = v71;
  v40 = v72;
LABEL_57:
}

- (void)operation:(id)a3 finishedWithReason:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1E70;
  v8[3] = &unk_8288;
  objc_copyWeak(v10, &location);
  v7 = v6;
  v9 = v7;
  v10[1] = a4;
  [(MechanismTouchId *)self dispatchAsyncOnServerQueueIfRunning:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_operation:(id)a3 finishedWithReason:(int64_t)a4
{
  v6 = a3;
  v7 = [(MechanismTouchId *)self request];
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
    v9 = [(MechanismTouchId *)self request];
    v10 = [v9 analytics];
    [v10 authenticationAttempt:3 event:{-[MechanismTouchId eventIdentifier](self, "eventIdentifier")}];

    v11 = [LAErrorHelper errorWithCode:-1 message:@"Biometric operation failed"];
    [(MechanismTouchId *)self failAuthenticationWithError:v11];
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
  v8[2] = sub_2150;
  v8[3] = &unk_8288;
  objc_copyWeak(v10, &location);
  v7 = v6;
  v9 = v7;
  v10[1] = a4;
  [(MechanismTouchId *)self dispatchAsyncOnServerQueueIfRunning:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_operation:(id)a3 stateChanged:(int64_t)a4
{
  v6 = a3;
  v7 = [(MechanismTouchId *)self request];
  v8 = [v7 log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = self;
    v23 = 1024;
    v24 = a4;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ state has changed to %d on %{public}@", buf, 0x1Cu);
  }

  switch(a4)
  {
    case 5:
      v19 = &off_8548;
      v20 = &off_8620;
      v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [(MechanismTouchId *)self noResponseEventWithParams:v10];
      goto LABEL_13;
    case 4:
      if ((self->_matchOperation != v6 || self->_expectingEndOfMatching) && (self->_detectOperation != v6 || self->_expectingEndOfDetection))
      {
        break;
      }

      v10 = +[BiometryHelper touchIdInstance];
      v11 = [(MechanismTouchId *)self userId];
      v12 = [(MechanismTouchId *)self request];
      v13 = [v10 biometryLostErrorForUser:v11 request:v12];
      [(MechanismTouchId *)self failAuthenticationWithError:v13];

LABEL_13:
      break;
    case 3:
      v9 = [LAErrorHelper errorWithCode:-4 message:@"Preempted by another biometric operation."];
      [(MechanismTouchId *)self failAuthenticationWithError:v9];

      [(MechanismTouchId *)self _cancelOperation:v6];
      break;
  }

  if ((a4 == 2) == (self->_state != 2))
  {
    v17 = &off_8548;
    if (a4 == 2)
    {
      v14 = 11;
    }

    else
    {
      v14 = 12;
    }

    v15 = [NSNumber numberWithInteger:v14, v17];
    v18 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [(MechanismTouchId *)self noResponseEventWithParams:v16];
  }

  self->_state = a4;
}

- (void)operation:(id)a3 presenceStateChanged:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2568;
  v8[3] = &unk_82B0;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  v11 = a4;
  [(MechanismTouchId *)self dispatchAsyncOnServerQueueIfRunning:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_operation:(id)a3 presenceStateChanged:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MechanismTouchId *)self request];
  v8 = [v7 log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"off";
    *buf = 138543874;
    v17 = self;
    v18 = 2114;
    if (v4)
    {
      v9 = @"on";
    }

    v19 = v9;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has received finger-%{public}@ from %{public}@", buf, 0x20u);
  }

  if (self->_detectOperation)
  {
    v10 = !v4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_279C;
    block[3] = &unk_82D8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  if (v4)
  {
    v11 = &off_8638;
  }

  else
  {
    ++self->_fingerOffCounter;
    v11 = &off_8578;
  }

  v14 = &off_8548;
  v15 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [(MechanismTouchId *)self noResponseEventWithParams:v12];
}

- (void)_cancelOperation:(id)a3
{
  v4 = a3;
  if (self->_matchOperation == v4)
  {
    v5 = &OBJC_IVAR___MechanismTouchId__expectingEndOfMatching;
  }

  else
  {
    if (self->_detectOperation != v4)
    {
      goto LABEL_6;
    }

    v5 = &OBJC_IVAR___MechanismTouchId__expectingEndOfDetection;
  }

  self->MechanismBiometry_opaque[*v5] = 1;
  v6 = v4;
  [(BKPresenceDetectOperation *)v4 cancel];
  v4 = v6;
LABEL_6:
}

- (void)_startBiometry
{
  v3 = [(MechanismTouchId *)self policyOptions];
  v4 = [v3 objectForKey:&off_8650];
  fingerDetectTimeout = self->_fingerDetectTimeout;
  self->_fingerDetectTimeout = v4;

  if (self->_fingerDetectTimeout)
  {

    [(MechanismTouchId *)self _startFingerDetectPhase];
  }

  else
  {

    [(MechanismTouchId *)self _startMatching];
  }
}

- (void)_startMatching
{
  v4 = [(MechanismTouchId *)self request];
  v5 = [v4 log];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MechanismTouchId *)self userId];
    if (v6)
    {
      v2 = [(MechanismTouchId *)self userId];
      v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"user %d", [v2 intValue]);
    }

    else
    {
      v7 = @"any user";
    }

    *buf = 138543618;
    v35 = self;
    v36 = 2114;
    v37 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will start matching %{public}@", buf, 0x16u);
    if (v6)
    {
    }
  }

  self->_expectingEndOfMatching = 0;
  touchIdDevice = self->_touchIdDevice;
  v33 = 0;
  v9 = [(BKDeviceTouchID *)touchIdDevice createMatchOperationWithError:&v33];
  v10 = v33;
  matchOperation = self->_matchOperation;
  self->_matchOperation = v9;

  [(BKMatchTouchIDOperation *)self->_matchOperation setDelegate:self];
  v12 = self->_matchOperation;
  v13 = [(MechanismTouchId *)self externalizedContext];
  [(BKMatchTouchIDOperation *)v12 setCredentialSet:v13];

  [(BKMatchTouchIDOperation *)self->_matchOperation setPriority:50];
  [(BKMatchTouchIDOperation *)self->_matchOperation setStopOnSuccess:1];
  v14 = self->_matchOperation;
  v15 = [(MechanismTouchId *)self identityUUIDs];
  [(BKMatchTouchIDOperation *)v14 setSelectedIdentities:v15];

  v16 = [(MechanismTouchId *)self policyOptions];
  v17 = [v16 objectForKeyedSubscript:&off_8668];
  if ([v17 BOOLValue])
  {
  }

  else
  {
    v18 = +[DaemonUtils deviceSupportsSecureDoubleClick];

    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  [(BKMatchTouchIDOperation *)self->_matchOperation setRequireFingerOff:1];
LABEL_12:
  v19 = self->_matchOperation;
  v20 = [(MechanismTouchId *)self userId];
  [(BKMatchTouchIDOperation *)v19 setUserID:v20];

  v21 = [(MechanismTouchId *)self policyOptions];
  v22 = [v21 objectForKeyedSubscript:&off_8680];
  v23 = [v22 BOOLValue];

  if (v23)
  {
    v24 = 4;
  }

  else
  {
    v24 = 3;
  }

  [(BKMatchTouchIDOperation *)self->_matchOperation setPurpose:v24];
  if ([(MechanismTouchId *)self policy]== &stru_3D8.segname[4])
  {
    v25 = 2;
  }

  else
  {
    v26 = [(MechanismTouchId *)self request];
    v27 = [v26 isPurposeInAppPayment];

    if (!v27)
    {
      goto LABEL_20;
    }

    v25 = 3;
  }

  [(BKMatchTouchIDOperation *)self->_matchOperation setUseCase:v25];
LABEL_20:
  v28 = self->_matchOperation;
  v32 = v10;
  v29 = [(BKMatchTouchIDOperation *)v28 startWithError:&v32];
  v30 = v32;

  if ((v29 & 1) == 0)
  {
    v31 = [LAErrorHelper errorWithCode:-1 subcode:32 message:@"match failed" suberror:v30];
    [(MechanismTouchId *)self failAuthenticationWithError:v31];
  }
}

- (void)_startFingerDetectPhase
{
  v3 = [(MechanismTouchId *)self request];
  v4 = [v3 log];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = self;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ is starting finger detect phase", buf, 0xCu);
  }

  self->_fingerOffCounter = 0;
  self->_expectingEndOfDetection = 0;
  v16 = &off_8548;
  v17 = &off_8698;
  v5 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [(MechanismTouchId *)self noResponseEventWithParams:v5];

  touchIdDevice = self->_touchIdDevice;
  v15 = 0;
  v7 = [(BKDeviceTouchID *)touchIdDevice createPresenceDetectOperationWithError:&v15];
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
    [(MechanismTouchId *)self failAuthenticationWithError:v13];
  }
}

- (void)_finishFingerDetectPhase
{
  v3 = [(MechanismTouchId *)self request];
  v4 = [v3 log];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = self;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will finish finger detect phase", buf, 0xCu);
  }

  v6 = &off_8548;
  v7 = &off_8608;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(MechanismTouchId *)self noResponseEventWithParams:v5];

  [(MechanismTouchId *)self _cancelOperation:self->_detectOperation];
  [(MechanismTouchId *)self _startMatching];
}

- (void)_setFingerDetectTimeout
{
  [(NSNumber *)self->_fingerDetectTimeout doubleValue];
  v4 = v3;
  v9 = &off_8548;
  v10 = &off_8548;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(MechanismTouchId *)self noResponseEventWithParams:v5];

  fingerOffCounter = self->_fingerOffCounter;
  v7 = dispatch_time(0, (v4 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3058;
  block[3] = &unk_8300;
  block[4] = self;
  block[5] = fingerOffCounter;
  dispatch_after(v7, &_dispatch_main_q, block);
}

- (id)currentMatchingOperationUserId
{
  v2 = [(MechanismTouchId *)self userId];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_86B0;
  }

  v5 = v4;

  return v4;
}

- (void)unEnrolledWithError:(id)a3
{
  v8 = a3;
  v4 = self;
  if (([(MechanismTouchId *)v4 isRunning]& 1) != 0 || ([(MechanismTouchId *)v4 parent], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v6 = v4;
  }

  else
  {
    do
    {
      v6 = [(MechanismTouchId *)v4 parent];

      v7 = [(MechanismTouchId *)v6 parent];

      v4 = v6;
    }

    while (v7);
  }

  [(MechanismTouchId *)v6 failAuthenticationWithError:v8];
}

- (LACRemoteUI)remoteUiDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteUiDelegate);

  return WeakRetained;
}

@end