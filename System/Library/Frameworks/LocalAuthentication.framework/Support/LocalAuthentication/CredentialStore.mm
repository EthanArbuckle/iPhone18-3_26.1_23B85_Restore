@interface CredentialStore
- (void)setValue:(id)a3 forCredential:(id)a4 completion:(id)a5;
- (void)valueForCredential:(id)a3 completion:(id)a4;
@end

@implementation CredentialStore

- (void)valueForCredential:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Reading of credential (%d) not supported", [a3 credential]);
  v6 = [LAErrorHelper errorWithCode:-1020 message:v7];
  v5[2](v5, 0, v6);
}

- (void)setValue:(id)a3 forCredential:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 credential];
  if (v10 == LACCredentialPasscode)
  {
    v11 = v10;
    v12 = +[LACPasscodeHelper sharedInstance];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100004768;
    v22 = &unk_100054DC0;
    v23 = v7;
    v24 = v8;
    v13 = sub_100004768(&v19);
    v14 = [v12 verifyPasscode:v13];

    if (v14)
    {
      v15 = [NSString stringWithFormat:@"Injection of credential (%d) failed rc=%d", v11, v14, v19, v20];
      v16 = [LAErrorHelper internalErrorWithMessage:v15];
      v9[2](v9, v16);
    }

    else
    {
      v9[2](v9, 0);
    }
  }

  else
  {
    v17 = [NSString stringWithFormat:@"Injection of credential (%d) not supported", LACCredentialPasscode];
    v18 = [LAErrorHelper errorWithCode:-1020 message:v17];
    v9[2](v9, v18);
  }
}

@end