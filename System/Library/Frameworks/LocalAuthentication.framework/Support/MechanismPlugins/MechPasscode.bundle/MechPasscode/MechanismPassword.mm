@interface MechanismPassword
- (MechanismPassword)initWithACMContextRecord:(id)a3 passwordMode:(int64_t)a4 request:(id)a5;
- (MechanismPassword)initWithParams:(id)a3 request:(id)a4;
- (id)additionalControllerInternalInfoForPolicy:(int64_t)a3;
- (void)enterPassphrase:(id)a3 reply:(id)a4;
@end

@implementation MechanismPassword

- (MechanismPassword)initWithParams:(id)a3 request:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"AcmContextRecord"];
  v9 = [v7 objectForKeyedSubscript:@"PasswordMode"];

  v10 = [v9 integerValue];
  v11 = [(MechanismPassword *)self initWithACMContextRecord:v8 passwordMode:v10 request:v6];

  return v11;
}

- (MechanismPassword)initWithACMContextRecord:(id)a3 passwordMode:(int64_t)a4 request:(id)a5
{
  v7.receiver = self;
  v7.super_class = MechanismPassword;
  result = [(MechanismPassword *)&v7 initWithEventIdentifier:4 remoteViewController:4 acmContextRecord:a3 request:a5];
  if (result)
  {
    result->_mode = a4;
  }

  return result;
}

- (void)enterPassphrase:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v30 = self;
    _os_log_impl(&def_13158, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v9 = [[LACACMHelper alloc] initWithACMContext:{-[MechanismPassword acmContext](self, "acmContext")}];
  v22 = 0;
  v10 = [v9 performContextBlock:&stru_1C420 error:&v22];
  v11 = v22;
  if (v10)
  {
    v12 = [(MechanismPassword *)self policyOptions];
    v13 = [v12 objectForKey:&off_1C888];
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
    v17 = [v9 replacePassphraseCredentialWithPurpose:0 passphrase:v6 scope:v16 error:&v21];
    v18 = v21;

    v7[2](v7, v17, v18);
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
    v7[2](v7, 0, v11);
  }
}

- (id)additionalControllerInternalInfoForPolicy:(int64_t)a3
{
  v6 = @"PasswordMode";
  v3 = [NSNumber numberWithInteger:self->_mode];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

@end