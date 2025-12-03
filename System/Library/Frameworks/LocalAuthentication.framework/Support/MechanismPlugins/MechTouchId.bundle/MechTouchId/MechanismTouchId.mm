@interface MechanismTouchId
- (BOOL)_exceededFailureLimit;
- (BOOL)_shouldShowUIBeforeFailure;
- (BOOL)isAvailableForPurpose:(int64_t)purpose error:(id *)error;
- (LACRemoteUI)remoteUiDelegate;
- (MechanismTouchId)initWithParams:(id)params request:(id)request;
- (id)currentMatchingOperationUserId;
- (void)_cancelOperation:(id)operation;
- (void)_finishFingerDetectPhase;
- (void)_matchOperation:(id)operation matchedWithResult:(id)result;
- (void)_operation:(id)_operation finishedWithReason:(int64_t)reason;
- (void)_operation:(id)_operation presenceStateChanged:(BOOL)changed;
- (void)_operation:(id)_operation stateChanged:(int64_t)changed;
- (void)_setFingerDetectTimeout;
- (void)_startBiometry;
- (void)_startFingerDetectPhase;
- (void)_startMatching;
- (void)matchOperation:(id)operation matchedWithResult:(id)result;
- (void)operation:(id)operation finishedWithReason:(int64_t)reason;
- (void)operation:(id)operation presenceStateChanged:(BOOL)changed;
- (void)operation:(id)operation stateChanged:(int64_t)changed;
- (void)runWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply;
- (void)unEnrolledWithError:(id)error;
@end

@implementation MechanismTouchId

- (MechanismTouchId)initWithParams:(id)params request:(id)request
{
  requestCopy = request;
  paramsCopy = params;
  v8 = [paramsCopy objectForKeyedSubscript:@"AcmContextRecord"];
  v9 = [paramsCopy objectForKeyedSubscript:@"EvaluationMode"];
  integerValue = [v9 integerValue];
  v11 = [paramsCopy objectForKeyedSubscript:@"UserId"];

  v14.receiver = self;
  v14.super_class = MechanismTouchId;
  v12 = [(MechanismTouchId *)&v14 initWithEventIdentifier:1 remoteViewController:1 acmContextRecord:v8 request:requestCopy evaluationMode:integerValue userId:v11];

  return v12;
}

- (BOOL)isAvailableForPurpose:(int64_t)purpose error:(id *)error
{
  evaluationMode = [(MechanismTouchId *)self evaluationMode];
  if (evaluationMode)
  {
    if (evaluationMode == &dword_0 + 1)
    {
      v8 = +[BiometryHelper touchIdInstance];
      v9 = [v8 isAnyUserEnrolledWithAdminRole:0 error:error];

      if (!v9)
      {
        return 0;
      }

      v10 = +[BiometryHelper touchIdInstance];
      request = [(MechanismTouchId *)self request];
      v12 = [v10 isNotLockedOutForAnyUserWithAdminRole:0 request:request error:error];

      if (v12)
      {
        return 0;
      }
    }
  }

  else
  {
    v13 = +[BiometryHelper touchIdInstance];
    userId = [(MechanismTouchId *)self userId];
    v15 = [v13 isEnrolled:userId error:error];

    if (!v15)
    {
      return 0;
    }

    v16 = +[BiometryHelper touchIdInstance];
    userId2 = [(MechanismTouchId *)self userId];
    request2 = [(MechanismTouchId *)self request];
    v19 = [v16 isLockedOutForUser:userId2 request:request2 error:error];

    if (v19)
    {
      return 0;
    }
  }

  v20 = +[LAPasscodeHelper sharedInstance];
  userId3 = [(MechanismTouchId *)self userId];
  v22 = [v20 isPasscodeSetForUser:objc_msgSend(userId3 error:{"unsignedIntValue"), error}];

  if (v22)
  {
    v24.receiver = self;
    v24.super_class = MechanismTouchId;
    return [(MechanismTouchId *)&v24 isAvailableForPurpose:purpose error:error];
  }

  return 0;
}

- (void)runWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply
{
  replyCopy = reply;
  delegateCopy = delegate;
  hintsCopy = hints;
  if (![(MechanismTouchId *)self _containsAHPModeFUS:hintsCopy])
  {
    v11 = [(MechanismTouchId *)self fenceReplyWithTouchIdAssertions:replyCopy];

    replyCopy = v11;
  }

  v12 = objc_retainBlock(replyCopy);

  v19.receiver = self;
  v19.super_class = MechanismTouchId;
  [(MechanismTouchId *)&v19 runWithHints:hintsCopy eventsDelegate:delegateCopy reply:v12];

  v13 = +[BiometryHelper touchIdInstance];
  device = [v13 device];
  touchIdDevice = self->_touchIdDevice;
  self->_touchIdDevice = device;

  [(MechanismTouchId *)self setFailures:0];
  policyOptions = [(MechanismTouchId *)self policyOptions];
  v17 = [policyOptions objectForKey:&off_8500];
  [(MechanismTouchId *)self setFailureLimit:v17];

  failureLimit = [(MechanismTouchId *)self failureLimit];

  if (!failureLimit)
  {
    [(MechanismTouchId *)self setFailureLimit:&off_8518];
  }

  [(MechanismTouchId *)self _startBiometryMain];
}

- (BOOL)_exceededFailureLimit
{
  failureLimit = [(MechanismTouchId *)self failureLimit];

  if (!failureLimit)
  {
    return 0;
  }

  v4 = [(MechanismTouchId *)self failures]+ 1;
  [(MechanismTouchId *)self setFailures:v4];
  failureLimit2 = [(MechanismTouchId *)self failureLimit];
  v6 = v4 > [failureLimit2 unsignedIntegerValue];

  return v6;
}

- (BOOL)_shouldShowUIBeforeFailure
{
  isBiometryRequiredForPolicy = [(MechanismTouchId *)self isBiometryRequiredForPolicy];
  if (isBiometryRequiredForPolicy)
  {
    isBiometryRequiredForPolicy = [(MechanismTouchId *)self hasUI];
    if (isBiometryRequiredForPolicy)
    {
      policyOptions = [(MechanismTouchId *)self policyOptions];
      v5 = [policyOptions objectForKeyedSubscript:&off_8530];
      bOOLValue = [v5 BOOLValue];

      if (bOOLValue)
      {
        LOBYTE(isBiometryRequiredForPolicy) = 0;
      }

      else
      {
        LOBYTE(isBiometryRequiredForPolicy) = [(MechanismTouchId *)self isFallbackVisible]^ 1;
      }
    }
  }

  return isBiometryRequiredForPolicy;
}

- (void)matchOperation:(id)operation matchedWithResult:(id)result
{
  operationCopy = operation;
  resultCopy = result;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1400;
  v10[3] = &unk_81C0;
  objc_copyWeak(&v13, &location);
  v8 = operationCopy;
  v11 = v8;
  v9 = resultCopy;
  v12 = v9;
  [(MechanismTouchId *)self dispatchAsyncOnServerQueueIfRunning:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_matchOperation:(id)operation matchedWithResult:(id)result
{
  operationCopy = operation;
  resultCopy = result;
  identity = [resultCopy identity];

  request = [(MechanismTouchId *)self request];
  v10 = [request log];

  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (identity)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 138544386;
    selfCopy2 = self;
    v81 = 2112;
    v82 = operationCopy;
    v83 = 1024;
    unlocked = [resultCopy unlocked];
    v85 = 1024;
    credentialAdded = [resultCopy credentialAdded];
    v87 = 1024;
    resultIgnored = [resultCopy resultIgnored];
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
    selfCopy2 = self;
    v81 = 2112;
    v82 = operationCopy;
    v83 = 1024;
    unlocked = [resultCopy lockoutState];
    v12 = "%{public}@ has received no-match from %@ (lockout state:%d)";
    v13 = v10;
    v14 = 28;
  }

  _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_7:

  request2 = [(MechanismTouchId *)self request];
  analytics = [request2 analytics];
  identity2 = [resultCopy identity];
  [analytics authenticationAttempt:identity2 == 0 event:{-[MechanismTouchId eventIdentifier](self, "eventIdentifier")}];

  v77 = &off_8548;
  resultIgnored2 = [resultCopy resultIgnored];
  if (resultIgnored2)
  {
    v19 = 10;
  }

  else
  {
    identity2 = [resultCopy identity];
    if (identity2)
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

  if ((resultIgnored2 & 1) == 0)
  {
  }

  v72 = operationCopy;
  v23 = -[MechanismTouchId checkLockoutState:isEffectiveLockoutForMatchWithPurpose:](self, "checkLockoutState:isEffectiveLockoutForMatchWithPurpose:", [resultCopy lockoutState], -[BKMatchTouchIDOperation purpose](self->_matchOperation, "purpose"));
  v24 = [(BKMatchTouchIDOperation *)self->_matchOperation purpose]== &dword_0 + 2 || [(BKMatchTouchIDOperation *)self->_matchOperation purpose]== &dword_4;
  userID = [(BKMatchTouchIDOperation *)self->_matchOperation userID];
  if (!userID)
  {
    if ((([resultCopy lockoutState] == &dword_4 + 2) & v23) == 1)
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
  lockoutState = [resultCopy lockoutState];
  userId = [(MechanismTouchId *)self userId];
  v29 = [v26 lockoutErrorForState:lockoutState userId:userId];

  v70 = v29;
  [v22 setObject:v29 forKey:&off_8560];
  v30 = 1;
LABEL_22:
  [(MechanismTouchId *)self setBiolockout:v30, v70];
  [(MechanismTouchId *)self noResponseEventWithParams:v22];
  identity3 = [resultCopy identity];
  if (!identity3 || (v32 = identity3, v33 = [resultCopy resultIgnored], v32, (v33 & 1) != 0))
  {
    _exceededFailureLimit = [(MechanismTouchId *)self _exceededFailureLimit];
    request3 = [(MechanismTouchId *)self request];
    analyticsData = [request3 analyticsData];
    [analyticsData authenticationAttemptFailedForEvent:LACEventTouchID];

    if (v30)
    {
      if ([(MechanismTouchId *)self _shouldShowUIBeforeFailure])
      {
        remoteUiDelegate = [(MechanismTouchId *)self remoteUiDelegate];
        v38 = v71;
        v39 = [(MechanismTouchId *)self failuresInfoDictionaryWithError:v71];
        [remoteUiDelegate mechanismEvent:7 value:v39 reply:&stru_8220];

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

    if (_exceededFailureLimit)
    {
      if ([(MechanismTouchId *)self _shouldFailForUnboundMatches])
      {
        if ([resultCopy resultIgnored])
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
        remoteUiDelegate2 = [(MechanismTouchId *)self remoteUiDelegate];
        v57 = -[MechanismTouchId failuresInfoDictionaryWithError:unboundMatch:](self, "failuresInfoDictionaryWithError:unboundMatch:", v55, [resultCopy resultIgnored]);
        [remoteUiDelegate2 mechanismEvent:1 value:v57 reply:&stru_8240];

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
        remoteUiDelegate3 = [(MechanismTouchId *)self remoteUiDelegate];
        v60 = -[MechanismTouchId failuresInfoDictionaryWithError:unboundMatch:](self, "failuresInfoDictionaryWithError:unboundMatch:", 0, [resultCopy resultIgnored]);
        [remoteUiDelegate3 mechanismEvent:1 value:v60 reply:&stru_8260];

LABEL_50:
        v40 = v72;
        goto LABEL_51;
      }
    }

    [(MechanismTouchId *)self failAuthenticationWithError:v55];
    goto LABEL_50;
  }

  v42 = [NSMutableDictionary dictionaryWithObject:&__kCFBooleanTrue forKey:&off_8578];
  identity4 = [resultCopy identity];
  v44 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [identity4 userID]);
  [v42 setObject:v44 forKey:&off_8590];

  v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [resultCopy credentialAdded]);
  [v42 setObject:v45 forKey:&off_85A8];

  if (v24)
  {
    v46 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [resultCopy unlocked]);
    [v42 setObject:v46 forKey:&off_85C0];
  }

  if (v30)
  {
    [v42 setObject:&__kCFBooleanTrue forKey:&off_85D8];
  }

  policyOptions = [(MechanismTouchId *)self policyOptions];
  v48 = [policyOptions objectForKeyedSubscript:&off_85F0];

  if (!v48 || [v48 BOOLValue])
  {
    v49 = +[BiometryHelper touchIdInstance];
    identity5 = [resultCopy identity];
    v51 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [identity5 userID]);
    v74 = 0;
    v52 = [v49 biometryDatabaseHashForUser:v51 error:&v74];
    v53 = v74;

    if (v52)
    {
      [v42 setObject:v52 forKey:&off_8608];
    }

    else
    {
      request4 = [(MechanismTouchId *)self request];
      v62 = [request4 log];

      if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        sub_3518(resultCopy, v53, v62);
      }
    }
  }

  remoteUiDelegate4 = [(MechanismTouchId *)self remoteUiDelegate];
  [remoteUiDelegate4 mechanismEvent:2 reply:&stru_8200];

  v75 = @"Result";
  v76 = v42;
  v64 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  identity6 = [resultCopy identity];
  uuid = [identity6 uuid];
  v67 = [(MechanismTouchId *)self mergeResult:v64 withUpdateOfIdentityUUID:uuid];
  [(MechanismTouchId *)self succeedAuthenticationWithResult:v67];

  v68 = +[MechanismContext sharedInstance];
  backoffCounter = [v68 backoffCounter];
  [backoffCounter actionSuccess];

  v38 = v71;
  v40 = v72;
LABEL_57:
}

- (void)operation:(id)operation finishedWithReason:(int64_t)reason
{
  operationCopy = operation;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1E70;
  v8[3] = &unk_8288;
  objc_copyWeak(v10, &location);
  v7 = operationCopy;
  v9 = v7;
  v10[1] = reason;
  [(MechanismTouchId *)self dispatchAsyncOnServerQueueIfRunning:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_operation:(id)_operation finishedWithReason:(int64_t)reason
{
  _operationCopy = _operation;
  request = [(MechanismTouchId *)self request];
  v8 = [request log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543874;
    selfCopy = self;
    v16 = 2114;
    v17 = _operationCopy;
    v18 = 1024;
    reasonCopy = reason;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has been finished by %{public}@, reason:%d", &v14, 0x1Cu);
  }

  if (reason == 3)
  {
    request2 = [(MechanismTouchId *)self request];
    analytics = [request2 analytics];
    [analytics authenticationAttempt:3 event:{-[MechanismTouchId eventIdentifier](self, "eventIdentifier")}];

    v11 = [LAErrorHelper errorWithCode:-1 message:@"Biometric operation failed"];
    [(MechanismTouchId *)self failAuthenticationWithError:v11];
  }

  p_matchOperation = &self->_matchOperation;
  matchOperation = self->_matchOperation;
  if (matchOperation == _operationCopy || (p_matchOperation = &self->_detectOperation, matchOperation = self->_detectOperation, matchOperation == _operationCopy))
  {
    *p_matchOperation = 0;
  }
}

- (void)operation:(id)operation stateChanged:(int64_t)changed
{
  operationCopy = operation;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2150;
  v8[3] = &unk_8288;
  objc_copyWeak(v10, &location);
  v7 = operationCopy;
  v9 = v7;
  v10[1] = changed;
  [(MechanismTouchId *)self dispatchAsyncOnServerQueueIfRunning:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_operation:(id)_operation stateChanged:(int64_t)changed
{
  _operationCopy = _operation;
  request = [(MechanismTouchId *)self request];
  v8 = [request log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v23 = 1024;
    changedCopy = changed;
    v25 = 2114;
    v26 = _operationCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ state has changed to %d on %{public}@", buf, 0x1Cu);
  }

  switch(changed)
  {
    case 5:
      v19 = &off_8548;
      v20 = &off_8620;
      v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [(MechanismTouchId *)self noResponseEventWithParams:v10];
      goto LABEL_13;
    case 4:
      if ((self->_matchOperation != _operationCopy || self->_expectingEndOfMatching) && (self->_detectOperation != _operationCopy || self->_expectingEndOfDetection))
      {
        break;
      }

      v10 = +[BiometryHelper touchIdInstance];
      userId = [(MechanismTouchId *)self userId];
      request2 = [(MechanismTouchId *)self request];
      v13 = [v10 biometryLostErrorForUser:userId request:request2];
      [(MechanismTouchId *)self failAuthenticationWithError:v13];

LABEL_13:
      break;
    case 3:
      v9 = [LAErrorHelper errorWithCode:-4 message:@"Preempted by another biometric operation."];
      [(MechanismTouchId *)self failAuthenticationWithError:v9];

      [(MechanismTouchId *)self _cancelOperation:_operationCopy];
      break;
  }

  if ((changed == 2) == (self->_state != 2))
  {
    v17 = &off_8548;
    if (changed == 2)
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

  self->_state = changed;
}

- (void)operation:(id)operation presenceStateChanged:(BOOL)changed
{
  operationCopy = operation;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2568;
  v8[3] = &unk_82B0;
  objc_copyWeak(&v10, &location);
  v7 = operationCopy;
  v9 = v7;
  changedCopy = changed;
  [(MechanismTouchId *)self dispatchAsyncOnServerQueueIfRunning:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_operation:(id)_operation presenceStateChanged:(BOOL)changed
{
  changedCopy = changed;
  _operationCopy = _operation;
  request = [(MechanismTouchId *)self request];
  v8 = [request log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"off";
    *buf = 138543874;
    selfCopy = self;
    v18 = 2114;
    if (changedCopy)
    {
      v9 = @"on";
    }

    v19 = v9;
    v20 = 2114;
    v21 = _operationCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has received finger-%{public}@ from %{public}@", buf, 0x20u);
  }

  if (self->_detectOperation)
  {
    v10 = !changedCopy;
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

  if (changedCopy)
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

- (void)_cancelOperation:(id)operation
{
  operationCopy = operation;
  if (self->_matchOperation == operationCopy)
  {
    v5 = &OBJC_IVAR___MechanismTouchId__expectingEndOfMatching;
  }

  else
  {
    if (self->_detectOperation != operationCopy)
    {
      goto LABEL_6;
    }

    v5 = &OBJC_IVAR___MechanismTouchId__expectingEndOfDetection;
  }

  self->MechanismBiometry_opaque[*v5] = 1;
  v6 = operationCopy;
  [(BKPresenceDetectOperation *)operationCopy cancel];
  operationCopy = v6;
LABEL_6:
}

- (void)_startBiometry
{
  policyOptions = [(MechanismTouchId *)self policyOptions];
  v4 = [policyOptions objectForKey:&off_8650];
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
  request = [(MechanismTouchId *)self request];
  v5 = [request log];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    userId = [(MechanismTouchId *)self userId];
    if (userId)
    {
      userId2 = [(MechanismTouchId *)self userId];
      v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"user %d", [userId2 intValue]);
    }

    else
    {
      v7 = @"any user";
    }

    *buf = 138543618;
    selfCopy = self;
    v36 = 2114;
    v37 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will start matching %{public}@", buf, 0x16u);
    if (userId)
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
  externalizedContext = [(MechanismTouchId *)self externalizedContext];
  [(BKMatchTouchIDOperation *)v12 setCredentialSet:externalizedContext];

  [(BKMatchTouchIDOperation *)self->_matchOperation setPriority:50];
  [(BKMatchTouchIDOperation *)self->_matchOperation setStopOnSuccess:1];
  v14 = self->_matchOperation;
  identityUUIDs = [(MechanismTouchId *)self identityUUIDs];
  [(BKMatchTouchIDOperation *)v14 setSelectedIdentities:identityUUIDs];

  policyOptions = [(MechanismTouchId *)self policyOptions];
  v17 = [policyOptions objectForKeyedSubscript:&off_8668];
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
  userId3 = [(MechanismTouchId *)self userId];
  [(BKMatchTouchIDOperation *)v19 setUserID:userId3];

  policyOptions2 = [(MechanismTouchId *)self policyOptions];
  v22 = [policyOptions2 objectForKeyedSubscript:&off_8680];
  bOOLValue = [v22 BOOLValue];

  if (bOOLValue)
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
    request2 = [(MechanismTouchId *)self request];
    isPurposeInAppPayment = [request2 isPurposeInAppPayment];

    if (!isPurposeInAppPayment)
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
  request = [(MechanismTouchId *)self request];
  v4 = [request log];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
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
  request = [(MechanismTouchId *)self request];
  v4 = [request log];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
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
  userId = [(MechanismTouchId *)self userId];
  v3 = userId;
  if (userId)
  {
    v4 = userId;
  }

  else
  {
    v4 = &off_86B0;
  }

  v5 = v4;

  return v4;
}

- (void)unEnrolledWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  if (([(MechanismTouchId *)selfCopy isRunning]& 1) != 0 || ([(MechanismTouchId *)selfCopy parent], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    parent = selfCopy;
  }

  else
  {
    do
    {
      parent = [(MechanismTouchId *)selfCopy parent];

      v6Parent = [(MechanismTouchId *)parent parent];

      selfCopy = parent;
    }

    while (v6Parent);
  }

  [(MechanismTouchId *)parent failAuthenticationWithError:errorCopy];
}

- (LACRemoteUI)remoteUiDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteUiDelegate);

  return WeakRetained;
}

@end