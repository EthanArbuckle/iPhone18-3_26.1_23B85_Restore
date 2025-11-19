@interface MechanismPushButton
- (BOOL)_attemptToAddCredentialWithError:(id *)a3;
- (BOOL)_checkDoublePressRequirementEnabled;
- (BOOL)_pollingAddCredentialWithError:(id *)a3;
- (BOOL)checkCredentialValid;
- (BOOL)isAvailableForPurpose:(int64_t)a3 error:(id *)a4;
- (MechanismPushButton)initWithACMContextRecord:(id)a3 secondary:(BOOL)a4 axMode:(BOOL)a5 request:(id)a6;
- (MechanismPushButton)initWithParams:(id)a3 request:(id)a4;
- (const)_acmPolicyToVerifyCredentialValidity;
- (double)expirationTimeout;
- (id)descriptionFlags;
- (void)_intentWaiting:(BOOL)a3;
- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5;
- (void)willFinish;
@end

@implementation MechanismPushButton

- (MechanismPushButton)initWithParams:(id)a3 request:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"AcmContextRecord"];
  v9 = [v7 objectForKeyedSubscript:@"Secondary"];
  v10 = [v9 BOOLValue];
  v11 = [v7 objectForKeyedSubscript:@"AXMode"];

  v12 = -[MechanismPushButton initWithACMContextRecord:secondary:axMode:request:](self, "initWithACMContextRecord:secondary:axMode:request:", v8, v10, [v11 BOOLValue], v6);
  return v12;
}

- (MechanismPushButton)initWithACMContextRecord:(id)a3 secondary:(BOOL)a4 axMode:(BOOL)a5 request:(id)a6
{
  if (a4)
  {
    v9 = 9;
  }

  else
  {
    v9 = 5;
  }

  v14.receiver = self;
  v14.super_class = MechanismPushButton;
  v10 = [(MechanismPushButton *)&v14 initWithEventIdentifier:v9 remoteViewController:0 acmContextRecord:a3 request:a6];
  if (v10)
  {
    v11 = +[PushButtonMonitor sharedInstance];
    pushButtonMonitor = v10->_pushButtonMonitor;
    v10->_pushButtonMonitor = v11;

    v10->_secondary = a4;
    v10->_axMode = a5;
  }

  return v10;
}

- (BOOL)isAvailableForPurpose:(int64_t)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = MechanismPushButton;
  return [(MechanismPushButton *)&v5 isAvailableForPurpose:a3 error:a4];
}

- (id)descriptionFlags
{
  v7.receiver = self;
  v7.super_class = MechanismPushButton;
  v3 = [(MechanismPushButton *)&v7 descriptionFlags];
  if ([(MechanismPushButton *)self secondary])
  {
    v4 = [v3 arrayByAddingObject:@"sec"];

    v3 = v4;
  }

  if ([(MechanismPushButton *)self axMode])
  {
    v5 = [v3 arrayByAddingObject:@"ax"];

    v3 = v5;
  }

  return v3;
}

- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MechanismPushButton *)self fenceReplyWithTouchIdAssertions:a5];
  v35.receiver = self;
  v35.super_class = MechanismPushButton;
  [(MechanismPushButton *)&v35 runWithHints:v8 eventsDelegate:v9 reply:v10];

  v11 = [[LACACMHelper alloc] initWithACMContext:{-[MechanismPushButton acmContext](self, "acmContext")}];
  acmHelper = self->_acmHelper;
  self->_acmHelper = v11;

  v13 = [(MechanismPushButton *)self request];
  if ([v13 isPurposeInAppPayment] && +[DaemonUtils deviceSupportsSecureDoubleClick](DaemonUtils, "deviceSupportsSecureDoubleClick"))
  {
    v14 = +[DaemonUtils deviceHasPearl];

    if (v14)
    {
      goto LABEL_9;
    }

    v15 = self->_acmHelper;
    v34 = 0;
    v16 = [(LACACMHelper *)v15 verifyRequirementOfType:21 policy:[LACACMHelper error:"acmPolicyForPolicy:" acmPolicyForPolicy:?], &v34];
    v13 = v34;
    if (v16)
    {
      v17 = sub_14EC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v39 = self;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ will not be required because biometry match was attempted, simulating credential present", buf, 0xCu);
      }

      v42 = &off_4350;
      v43 = &__kCFBooleanTrue;
      v18 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      [(MechanismPushButton *)self noResponseEventWithParams:v18];

      v19 = [(MechanismPushButton *)self parent];
      [v19 companionStateChanged:self newState:1];
      goto LABEL_30;
    }
  }

LABEL_9:
  if (![(MechanismPushButton *)self secondary])
  {
    v20 = [(PushButtonMonitor *)self->_pushButtonMonitor delegate];
    otherDelegate = self->_otherDelegate;
    self->_otherDelegate = v20;
  }

  [(PushButtonMonitor *)self->_pushButtonMonitor setDelegate:self];
  v22 = [v8 objectForKeyedSubscript:@"MechanismIndex"];
  v13 = v22;
  if (v22)
  {
    v23 = [v22 intValue];
  }

  else
  {
    v23 = 1;
  }

  v24 = v23 + [(MechanismPushButton *)self secondary];
  v25 = sub_14EC();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v39 = self;
    v40 = 1024;
    v41 = v24;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ running as index:%d", buf, 0x12u);
  }

  v26 = [(MechanismPushButton *)self request];
  v27 = [v26 isPurposeInAppPayment];

  if (v27 && v24 == 1)
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
    v31 = 1;
  }

  else
  {
    v29 = [(MechanismPushButton *)self policyOptions];
    v30 = [v29 objectForKeyedSubscript:&off_4368];
    v31 = [v30 BOOLValue];
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

  if (([(PushButtonMonitor *)pushButtonMonitor doubleTapDetected]| v31))
  {
    goto LABEL_32;
  }

LABEL_28:
  if ([(MechanismPushButton *)self _checkDoublePressRequirementEnabled])
  {
    [(MechanismPushButton *)self _intentWaiting:1];
    v36 = &off_4350;
    v37 = &__kCFBooleanFalse;
    v19 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [(MechanismPushButton *)self noResponseEventWithParams:v19];
LABEL_30:
  }

LABEL_35:
}

- (BOOL)_checkDoublePressRequirementEnabled
{
  v3 = [(MechanismPushButton *)self policyOptions];
  v4 = [v3 objectForKeyedSubscript:&off_4368];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [LAErrorHelper errorWithCode:-1023 message:@"Double press is required."];
    [(MechanismPushButton *)self failAuthenticationWithError:v6];
  }

  return v5 ^ 1;
}

- (void)willFinish
{
  [(MechanismPushButton *)self _intentWaiting:0];
  [(PushButtonMonitor *)self->_pushButtonMonitor stop];
  v3 = [(PushButtonMonitor *)self->_pushButtonMonitor delegate];

  if (v3 == self)
  {
    [(PushButtonMonitor *)self->_pushButtonMonitor setDelegate:0];
  }

  prearmAssertion = self->_prearmAssertion;
  self->_prearmAssertion = 0;
}

- (BOOL)_pollingAddCredentialWithError:(id *)a3
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
        v16 = [(MechanismPushButton *)self secondary];
        v17 = "primary";
        *buf = 138543874;
        v22 = self;
        if (v16)
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
        v13 = [(MechanismPushButton *)self secondary];
        *buf = 138544386;
        v14 = "primary";
        if (v13)
        {
          v14 = "secondary";
        }

        v22 = self;
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

  if (a3)
  {
    v18 = v6;
    *a3 = v6;
  }

  return v7;
}

- (BOOL)_attemptToAddCredentialWithError:(id *)a3
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
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = [(MechanismPushButton *)self _acmPolicyToVerifyCredentialValidity];
  if (!v9)
  {
    v13 = 1;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = v9;
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
  if (a3)
  {
LABEL_12:
    v15 = v8;
    *a3 = v8;
  }

LABEL_13:

  return v13;
}

- (const)_acmPolicyToVerifyCredentialValidity
{
  if (![(MechanismPushButton *)self policy])
  {
    v5 = [LACAccessControlOperation alloc];
    v6 = [(MechanismPushButton *)self request];
    v7 = [v6 aclOperation];
    v8 = [v5 initWithTypeErasedOperation:v7];

    v9 = [(MechanismPushButton *)self request];
    v10 = [v9 acl];
    LODWORD(v6) = [LACAccessControl checkACL:v10 hasConstraint:@"pbtna" forOperation:v8];

    if (v6)
    {
      v11 = sub_14EC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543618;
        v22 = self;
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
      v15 = [(MechanismPushButton *)self request];
      v16 = [v15 options];
      v17 = [NSNumber numberWithInteger:LACPolicyOptionPushButtonUseMaxPreArmAge];
      v18 = [v16 objectForKey:v17];
      v19 = [v18 BOOLValue];

      if (!v19)
      {
        v20 = "Oslo";
        goto LABEL_14;
      }

      v11 = sub_14EC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543362;
        v22 = self;
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

  v3 = [(MechanismPushButton *)self policy];

  return [LACACMHelper acmPolicyForPolicy:v3];
}

- (void)_intentWaiting:(BOOL)a3
{
  if (self->_intentWaiting != a3)
  {
    v3 = a3;
    if ([(MechanismPushButton *)self isRunning])
    {
      self->_intentWaiting = v3;
      v5 = @"com.apple.LocalAuthentication.intent.not-waiting";
      if (v3)
      {
        v5 = @"com.apple.LocalAuthentication.intent.waiting";
      }

      v6 = v5;
      v7 = sub_14EC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = self;
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ is posting %{public}@", &v11, 0x16u);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, v6, 0, 0, 1u);
      if (v3 && ![(MechanismPushButton *)self axMode])
      {
        [(PushButtonMonitor *)self->_pushButtonMonitor start];
        v9 = [(PushButtonMonitor *)self->_pushButtonMonitor prearmAssertion];
        prearmAssertion = self->_prearmAssertion;
        self->_prearmAssertion = v9;
      }
    }
  }
}

- (double)expirationTimeout
{
  v3 = [(MechanismPushButton *)self request];
  v4 = [v3 isPurposeApplePay];

  result = 30.0;
  if ((v4 & 1) == 0)
  {
    v6 = [(MechanismPushButton *)self policy];
    result = 60.0;
    if (v6 == &stru_3D8.vmaddr + 7)
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

    v7 = [(MechanismPushButton *)self isCredentialValid];

    return v7;
  }
}

@end