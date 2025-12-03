@interface CredentialStore
- (void)setValue:(id)value forCredential:(id)credential completion:(id)completion;
- (void)valueForCredential:(id)credential completion:(id)completion;
@end

@implementation CredentialStore

- (void)valueForCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Reading of credential (%d) not supported", [credential credential]);
  v6 = [LAErrorHelper errorWithCode:-1020 message:v7];
  completionCopy[2](completionCopy, 0, v6);
}

- (void)setValue:(id)value forCredential:(id)credential completion:(id)completion
{
  valueCopy = value;
  credentialCopy = credential;
  completionCopy = completion;
  credential = [credentialCopy credential];
  if (credential == LACCredentialPasscode)
  {
    v11 = credential;
    v12 = +[LACPasscodeHelper sharedInstance];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100004768;
    v22 = &unk_100054DC0;
    v23 = valueCopy;
    v24 = credentialCopy;
    v13 = sub_100004768(&v19);
    v14 = [v12 verifyPasscode:v13];

    if (v14)
    {
      v15 = [NSString stringWithFormat:@"Injection of credential (%d) failed rc=%d", v11, v14, v19, v20];
      v16 = [LAErrorHelper internalErrorWithMessage:v15];
      completionCopy[2](completionCopy, v16);
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    lACCredentialPasscode = [NSString stringWithFormat:@"Injection of credential (%d) not supported", LACCredentialPasscode];
    v18 = [LAErrorHelper errorWithCode:-1020 message:lACCredentialPasscode];
    completionCopy[2](completionCopy, v18);
  }
}

@end