@interface MechanismPushButton
- (BOOL)_attemptToAddCredentialWithError:(id *)error;
- (BOOL)_checkDoublePressRequirementEnabled;
- (BOOL)_pollingAddCredentialWithError:(id *)error;
- (BOOL)checkCredentialValid;
- (BOOL)isAvailableForPurpose:(int64_t)purpose error:(id *)error;
- (MechanismPushButton)initWithACMContextRecord:(id)record secondary:(BOOL)secondary axMode:(BOOL)mode request:(id)request;
- (MechanismPushButton)initWithParams:(id)params request:(id)request;
- (const)_acmPolicyToVerifyCredentialValidity;
- (double)expirationTimeout;
- (id)descriptionFlags;
- (void)_intentWaiting:(BOOL)waiting;
- (void)runWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply;
- (void)willFinish;
@end

@implementation MechanismPushButton

- (MechanismPushButton)initWithParams:(id)params request:(id)request
{
  requestCopy = request;
  paramsCopy = params;
  v8 = [paramsCopy objectForKeyedSubscript:@"AcmContextRecord"];
  v9 = [paramsCopy objectForKeyedSubscript:@"Secondary"];
  bOOLValue = [v9 BOOLValue];
  v11 = [paramsCopy objectForKeyedSubscript:@"AXMode"];

  v12 = -[MechanismPushButton initWithACMContextRecord:secondary:axMode:request:](self, "initWithACMContextRecord:secondary:axMode:request:", v8, bOOLValue, [v11 BOOLValue], requestCopy);
  return v12;
}

- (MechanismPushButton)initWithACMContextRecord:(id)record secondary:(BOOL)secondary axMode:(BOOL)mode request:(id)request
{
  if (secondary)
  {
    v9 = 9;
  }

  else
  {
    v9 = 5;
  }

  v14.receiver = self;
  v14.super_class = MechanismPushButton;
  v10 = [(MechanismPushButton *)&v14 initWithEventIdentifier:v9 remoteViewController:0 acmContextRecord:record request:request];
  if (v10)
  {
    v11 = +[PushButtonMonitor sharedInstance];
    pushButtonMonitor = v10->_pushButtonMonitor;
    v10->_pushButtonMonitor = v11;

    v10->_secondary = secondary;
    v10->_axMode = mode;
  }

  return v10;
}

- (BOOL)isAvailableForPurpose:(int64_t)purpose error:(id *)error
{
  v5.receiver = self;
  v5.super_class = MechanismPushButton;
  return [(MechanismPushButton *)&v5 isAvailableForPurpose:purpose error:error];
}

- (id)descriptionFlags
{
  v7.receiver = self;
  v7.super_class = MechanismPushButton;
  descriptionFlags = [(MechanismPushButton *)&v7 descriptionFlags];
  if ([(MechanismPushButton *)self secondary])
  {
    v4 = [descriptionFlags arrayByAddingObject:@"sec"];

    descriptionFlags = v4;
  }

  if ([(MechanismPushButton *)self axMode])
  {
    v5 = [descriptionFlags arrayByAddingObject:@"ax"];

    descriptionFlags = v5;
  }

  return descriptionFlags;
}

- (void)runWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply
{
  hintsCopy = hints;
  delegateCopy = delegate;
  v10 = [(MechanismPushButton *)self fenceReplyWithTouchIdAssertions:reply];
  v35.receiver = self;
  v35.super_class = MechanismPushButton;
  [(MechanismPushButton *)&v35 runWithHints:hintsCopy eventsDelegate:delegateCopy reply:v10];

  v11 = [[LACACMHelper alloc] initWithACMContext:{-[MechanismPushButton acmContext](self, "acmContext")}];
  acmHelper = self->_acmHelper;
  self->_acmHelper = v11;

  request = [(MechanismPushButton *)self request];
  if ([request isPurposeInAppPayment] && +[DaemonUtils deviceSupportsSecureDoubleClick](DaemonUtils, "deviceSupportsSecureDoubleClick"))
  {
    v14 = +[DaemonUtils deviceHasPearl];

    if (v14)
    {
      goto LABEL_9;
    }

    v15 = self->_acmHelper;
    v34 = 0;
    v16 = [(LACACMHelper *)v15 verifyRequirementOfType:21 policy:[LACACMHelper error:"acmPolicyForPolicy:" acmPolicyForPolicy:?], &v34];
    request = v34;
    if (v16)
    {
      v17 = sub_14EC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ will not be required because biometry match was attempted, simulating credential present", buf, 0xCu);
      }

      v42 = &off_4350;
      v43 = &__kCFBooleanTrue;
      v18 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      [(MechanismPushButton *)self noResponseEventWithParams:v18];

      parent = [(MechanismPushButton *)self parent];
      [parent companionStateChanged:self newState:1];
      goto LABEL_30;
    }
  }

LABEL_9:
  if (![(MechanismPushButton *)self secondary])
  {
    delegate = [(PushButtonMonitor *)self->_pushButtonMonitor delegate];
    otherDelegate = self->_otherDelegate;
    self->_otherDelegate = delegate;
  }

  [(PushButtonMonitor *)self->_pushButtonMonitor setDelegate:self];
  v22 = [hintsCopy objectForKeyedSubscript:@"MechanismIndex"];
  request = v22;
  if (v22)
  {
    intValue = [v22 intValue];
  }

  else
  {
    intValue = 1;
  }

  v24 = intValue + [(MechanismPushButton *)self secondary];
  v25 = sub_14EC();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v40 = 1024;
    v41 = v24;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ running as index:%d", buf, 0x12u);
  }

  request2 = [(MechanismPushButton *)self request];
  isPurposeInAppPayment = [request2 isPurposeInAppPayment];

  if (isPurposeInAppPayment && v24 == 1)
  {
    v28 = @"it can't be reused for in-app payment";
LABEL_21:
    [(PushButtonMonitor *)self->_pushButtonMonitor consumeDoubleTapWithReason:v28];
    goto LABEL_22;
  }

  if ([(MechanismPushButton *)self policy]== &stru_3D8.vmaddr + 7)
  {
    v28 = @"it can't be reused for DoublePressBypass";
    goto LABEL_21;
  }

LABEL_22:
  if (+[DaemonUtils deviceHasTouchIDAndSecureDoublePress]&& [(MechanismPushButton *)self policy]!= &stru_3D8.vmaddr + 7)
  {
    bOOLValue = 1;
  }

  else
  {
    policyOptions = [(MechanismPushButton *)self policyOptions];
    v30 = [policyOptions objectForKeyedSubscript:&off_4368];
    bOOLValue = [v30 BOOLValue];
  }

  pushButtonMonitor = self->_pushButtonMonitor;
  if (self->_axMode)
  {
    if (([(PushButtonMonitor *)pushButtonMonitor axDoubleTapDetected]& 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_32:
    v33 = self->_pushButtonMonitor;
    if (self->_axMode)
    {
      [(MechanismPushButton *)self monitor:v33 axApplePayConfirmation:1];
    }

    else
    {
      [(MechanismPushButton *)self monitor:v33 doubleTapDetected:1];
    }

    goto LABEL_35;
  }

  if (([(PushButtonMonitor *)pushButtonMonitor doubleTapDetected]| bOOLValue))
  {
    goto LABEL_32;
  }

LABEL_28:
  if ([(MechanismPushButton *)self _checkDoublePressRequirementEnabled])
  {
    [(MechanismPushButton *)self _intentWaiting:1];
    v36 = &off_4350;
    v37 = &__kCFBooleanFalse;
    parent = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [(MechanismPushButton *)self noResponseEventWithParams:parent];
LABEL_30:
  }

LABEL_35:
}

- (BOOL)_checkDoublePressRequirementEnabled
{
  policyOptions = [(MechanismPushButton *)self policyOptions];
  v4 = [policyOptions objectForKeyedSubscript:&off_4368];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = [LAErrorHelper errorWithCode:-1023 message:@"Double press is required."];
    [(MechanismPushButton *)self failAuthenticationWithError:v6];
  }

  return bOOLValue ^ 1;
}

- (void)willFinish
{
  [(MechanismPushButton *)self _intentWaiting:0];
  [(PushButtonMonitor *)self->_pushButtonMonitor stop];
  delegate = [(PushButtonMonitor *)self->_pushButtonMonitor delegate];

  if (delegate == self)
  {
    [(PushButtonMonitor *)self->_pushButtonMonitor setDelegate:0];
  }

  prearmAssertion = self->_prearmAssertion;
  self->_prearmAssertion = 0;
}

- (BOOL)_pollingAddCredentialWithError:(id *)error
{
  v20 = 0;
  v5 = [(MechanismPushButton *)self _attemptToAddCredentialWithError:&v20];
  v6 = v20;
  if (v5)
  {
    v7 = 1;
    v8 = 1;
LABEL_12:
    if (v8 >= 2)
    {
      v15 = sub_14EC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        secondary = [(MechanismPushButton *)self secondary];
        v17 = "primary";
        *buf = 138543874;
        selfCopy2 = self;
        if (secondary)
        {
          v17 = "secondary";
        }

        v23 = 2080;
        v24 = v17;
        v25 = 1024;
        v26 = v8;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ has successfully added the %s credential at attempt #%d", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v9 = 0;
    while (1)
    {
      v10 = sub_14EC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        secondary2 = [(MechanismPushButton *)self secondary];
        *buf = 138544386;
        v14 = "primary";
        if (secondary2)
        {
          v14 = "secondary";
        }

        selfCopy2 = self;
        v23 = 2080;
        v24 = v14;
        v25 = 1024;
        v26 = v9 + 1;
        v27 = 1024;
        v28 = 5;
        v29 = 2114;
        v30 = v6;
        _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}@ has failed to add the %s credential at attempt %d/%d: %{public}@", buf, 0x2Cu);
      }

      usleep(0x7530u);
      if (v9 == 4)
      {
        break;
      }

      v20 = v6;
      v11 = [(MechanismPushButton *)self _attemptToAddCredentialWithError:&v20];
      v12 = v20;

      ++v9;
      v6 = v12;
      if (v11)
      {
        v7 = v9 < 5;
        v8 = v9 + 1;
        v6 = v12;
        goto LABEL_12;
      }
    }

    v7 = 0;
  }

  if (error)
  {
    v18 = v6;
    *error = v6;
  }

  return v7;
}

- (BOOL)_attemptToAddCredentialWithError:(id *)error
{
  acmHelper = self->_acmHelper;
  if ([(MechanismPushButton *)self secondary])
  {
    v6 = 16;
  }

  else
  {
    v6 = 5;
  }

  v18 = 0;
  v7 = [(LACACMHelper *)acmHelper addCredential:v6 scope:1 error:&v18];
  v8 = v18;
  if (!v7)
  {
    v13 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  _acmPolicyToVerifyCredentialValidity = [(MechanismPushButton *)self _acmPolicyToVerifyCredentialValidity];
  if (!_acmPolicyToVerifyCredentialValidity)
  {
    v13 = 1;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = _acmPolicyToVerifyCredentialValidity;
  v11 = self->_acmHelper;
  if ([(MechanismPushButton *)self secondary])
  {
    v12 = 19;
  }

  else
  {
    v12 = 11;
  }

  v17 = v8;
  v13 = [(LACACMHelper *)v11 verifyRequirementOfType:v12 policy:v10 mustBePresent:0 parameters:0 flags:0 error:&v17];
  v14 = v17;

  v8 = v14;
  if (error)
  {
LABEL_12:
    v15 = v8;
    *error = v8;
  }

LABEL_13:

  return v13;
}

- (const)_acmPolicyToVerifyCredentialValidity
{
  if (![(MechanismPushButton *)self policy])
  {
    v5 = [LACAccessControlOperation alloc];
    request = [(MechanismPushButton *)self request];
    aclOperation = [request aclOperation];
    v8 = [v5 initWithTypeErasedOperation:aclOperation];

    request2 = [(MechanismPushButton *)self request];
    v10 = [request2 acl];
    LODWORD(request) = [LACAccessControl checkACL:v10 hasConstraint:@"pbtna" forOperation:v8];

    if (request)
    {
      v11 = sub_14EC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543618;
        selfCopy2 = self;
        v23 = 2082;
        v24 = "pbtna";
        v12 = "%{public}@ will honor '%{public}s' value in ACL";
        v13 = v11;
        v14 = 22;
LABEL_11:
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v12, &v21, v14);
      }
    }

    else
    {
      request3 = [(MechanismPushButton *)self request];
      options = [request3 options];
      v17 = [NSNumber numberWithInteger:LACPolicyOptionPushButtonUseMaxPreArmAge];
      v18 = [options objectForKey:v17];
      bOOLValue = [v18 BOOLValue];

      if (!bOOLValue)
      {
        v20 = "Oslo";
        goto LABEL_14;
      }

      v11 = sub_14EC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543362;
        selfCopy2 = self;
        v12 = "%{public}@ will honor LAOptionPushButtonUseMaxPreArmAge request";
        v13 = v11;
        v14 = 12;
        goto LABEL_11;
      }
    }

    v20 = 0;
LABEL_14:

    return v20;
  }

  policy = [(MechanismPushButton *)self policy];

  return [LACACMHelper acmPolicyForPolicy:policy];
}

- (void)_intentWaiting:(BOOL)waiting
{
  if (self->_intentWaiting != waiting)
  {
    waitingCopy = waiting;
    if ([(MechanismPushButton *)self isRunning])
    {
      self->_intentWaiting = waitingCopy;
      v5 = @"com.apple.LocalAuthentication.intent.not-waiting";
      if (waitingCopy)
      {
        v5 = @"com.apple.LocalAuthentication.intent.waiting";
      }

      v6 = v5;
      v7 = sub_14EC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        selfCopy = self;
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ is posting %{public}@", &v11, 0x16u);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, v6, 0, 0, 1u);
      if (waitingCopy && ![(MechanismPushButton *)self axMode])
      {
        [(PushButtonMonitor *)self->_pushButtonMonitor start];
        prearmAssertion = [(PushButtonMonitor *)self->_pushButtonMonitor prearmAssertion];
        prearmAssertion = self->_prearmAssertion;
        self->_prearmAssertion = prearmAssertion;
      }
    }
  }
}

- (double)expirationTimeout
{
  request = [(MechanismPushButton *)self request];
  isPurposeApplePay = [request isPurposeApplePay];

  result = 30.0;
  if ((isPurposeApplePay & 1) == 0)
  {
    policy = [(MechanismPushButton *)self policy];
    result = 60.0;
    if (policy == &stru_3D8.vmaddr + 7)
    {
      return 120.0;
    }
  }

  return result;
}

- (BOOL)checkCredentialValid
{
  if (self->_axMode)
  {
    v3 = +[PushButtonMonitor sharedInstance];
    self->_credentialValid = [v3 axDoubleTapDetected];

    return [(MechanismPushButton *)self isCredentialValid];
  }

  else
  {
    v8 = 0;
    v5 = [(MechanismPushButton *)self _pollingAddCredentialWithError:&v8];
    v6 = v8;
    self->_credentialValid = v5;
    if ([(MechanismPushButton *)self isCredentialValid])
    {
      [(PushButtonMonitor *)self->_pushButtonMonitor adviseDoubleTap];
    }

    isCredentialValid = [(MechanismPushButton *)self isCredentialValid];

    return isCredentialValid;
  }
}

@end