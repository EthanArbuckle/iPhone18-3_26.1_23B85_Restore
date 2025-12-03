@interface MechanismPassword
- (MechanismPassword)initWithACMContextRecord:(id)record passwordMode:(int64_t)mode request:(id)request;
- (MechanismPassword)initWithParams:(id)params request:(id)request;
- (id)additionalControllerInternalInfoForPolicy:(int64_t)policy;
- (void)enterPassphrase:(id)passphrase reply:(id)reply;
@end

@implementation MechanismPassword

- (MechanismPassword)initWithParams:(id)params request:(id)request
{
  requestCopy = request;
  paramsCopy = params;
  v8 = [paramsCopy objectForKeyedSubscript:@"AcmContextRecord"];
  v9 = [paramsCopy objectForKeyedSubscript:@"PasswordMode"];

  integerValue = [v9 integerValue];
  v11 = [(MechanismPassword *)self initWithACMContextRecord:v8 passwordMode:integerValue request:requestCopy];

  return v11;
}

- (MechanismPassword)initWithACMContextRecord:(id)record passwordMode:(int64_t)mode request:(id)request
{
  v7.receiver = self;
  v7.super_class = MechanismPassword;
  result = [(MechanismPassword *)&v7 initWithEventIdentifier:4 remoteViewController:4 acmContextRecord:record request:request];
  if (result)
  {
    result->_mode = mode;
  }

  return result;
}

- (void)enterPassphrase:(id)passphrase reply:(id)reply
{
  passphraseCopy = passphrase;
  replyCopy = reply;
  if (qword_20A88 != -1)
  {
    sub_BC60();
  }

  v8 = qword_20A90;
  if (os_log_type_enabled(qword_20A90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[MechanismPassword enterPassphrase:reply:]";
    v29 = 2112;
    selfCopy = self;
    _os_log_impl(&def_13158, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v9 = [[LACACMHelper alloc] initWithACMContext:{-[MechanismPassword acmContext](self, "acmContext")}];
  v22 = 0;
  v10 = [v9 performContextBlock:&stru_1C420 error:&v22];
  v11 = v22;
  if (v10)
  {
    policyOptions = [(MechanismPassword *)self policyOptions];
    v13 = [policyOptions objectForKey:&off_1C888];
    [v13 doubleValue];
    v15 = v14;

    if (v15 == 0.0)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v21 = v11;
    v17 = [v9 replacePassphraseCredentialWithPurpose:0 passphrase:passphraseCopy scope:v16 error:&v21];
    v18 = v21;

    replyCopy[2](replyCopy, v17, v18);
    if (v17)
    {
      v25 = @"Result";
      v23 = &off_1C8A0;
      v24 = &__kCFBooleanTrue;
      v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v26 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [(MechanismPassword *)self finishRunWithResult:v20 error:v18];
    }

    else
    {
      [(MechanismPassword *)self finishRunWithResult:0 error:v18];
    }

    v11 = v18;
  }

  else
  {
    replyCopy[2](replyCopy, 0, v11);
  }
}

- (id)additionalControllerInternalInfoForPolicy:(int64_t)policy
{
  v6 = @"PasswordMode";
  v3 = [NSNumber numberWithInteger:self->_mode];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

@end