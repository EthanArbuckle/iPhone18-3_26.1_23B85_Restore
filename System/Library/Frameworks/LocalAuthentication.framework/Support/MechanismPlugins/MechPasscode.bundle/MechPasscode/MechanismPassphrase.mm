@interface MechanismPassphrase
- (MechanismPassphrase)initWithAcmContextRecord:(id)record request:(id)request;
- (MechanismPassphrase)initWithParams:(id)params request:(id)request;
- (id)additionalControllerInternalInfoForPolicy:(int64_t)policy;
- (void)enterPassphrase:(id)passphrase reply:(id)reply;
- (void)setCredential:(id)credential credentialType:(int64_t)type reply:(id)reply;
@end

@implementation MechanismPassphrase

- (MechanismPassphrase)initWithParams:(id)params request:(id)request
{
  requestCopy = request;
  v7 = [params objectForKeyedSubscript:@"AcmContextRecord"];
  v8 = [(MechanismPassphrase *)self initWithAcmContextRecord:v7 request:requestCopy];

  return v8;
}

- (MechanismPassphrase)initWithAcmContextRecord:(id)record request:(id)request
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = MechanismPassphrase;
  v7 = [(MechanismPassphrase *)&v9 initWithEventIdentifier:3 remoteViewController:3 acmContextRecord:recordCopy request:request];
  if (v7)
  {
    v7->_purpose = [recordCopy passphrasePurpose];
  }

  return v7;
}

- (void)enterPassphrase:(id)passphrase reply:(id)reply
{
  passphraseCopy = passphrase;
  replyCopy = reply;
  if (qword_20A98 != -1)
  {
    sub_BC74();
  }

  v8 = qword_20AA0;
  if (os_log_type_enabled(qword_20AA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[MechanismPassphrase enterPassphrase:reply:]";
    v30 = 2112;
    selfCopy = self;
    _os_log_impl(&def_13158, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v9 = [[LACACMHelper alloc] initWithACMContext:{-[MechanismPassphrase acmContext](self, "acmContext")}];
  v23 = 0;
  v10 = [v9 performContextBlock:&stru_1C460 error:&v23];
  v11 = v23;
  if (v10)
  {
    policyOptions = [(MechanismPassphrase *)self policyOptions];
    v13 = [policyOptions objectForKey:&off_1C8B8];
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

    purpose = self->_purpose;
    v22 = v11;
    v18 = [v9 replacePassphraseCredentialWithPurpose:purpose passphrase:passphraseCopy scope:v16 error:&v22];
    v19 = v22;

    replyCopy[2](replyCopy, v18, v19);
    if (v18)
    {
      v26 = @"Result";
      v24 = &off_1C8D0;
      v25 = &__kCFBooleanTrue;
      v20 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v27 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      [(MechanismPassphrase *)self finishRunWithResult:v21 error:v19];
    }

    else
    {
      [(MechanismPassphrase *)self finishRunWithResult:0 error:v19];
    }

    v11 = v19;
  }

  else
  {
    replyCopy[2](replyCopy, 0, v11);
  }
}

- (id)additionalControllerInternalInfoForPolicy:(int64_t)policy
{
  v6 = @"PassphrasePurpose";
  v3 = [NSNumber numberWithUnsignedInt:self->_purpose];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

- (void)setCredential:(id)credential credentialType:(int64_t)type reply:(id)reply
{
  if (type == -2)
  {
    credentialCopy = credential;
    replyCopy = reply;
    credentialCopy2 = credential;
    bytes = [credentialCopy2 bytes];
    v12 = [credentialCopy2 length];

    v16 = [LACSecureData secureDataWithBytes:bytes length:v12];
    [(MechanismPassphrase *)self enterPassphrase:v16 reply:replyCopy];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = MechanismPassphrase;
    replyCopy2 = reply;
    credentialCopy3 = credential;
    [(MechanismPassphrase *)&v17 setCredential:credentialCopy3 credentialType:type reply:replyCopy2];
  }
}

@end