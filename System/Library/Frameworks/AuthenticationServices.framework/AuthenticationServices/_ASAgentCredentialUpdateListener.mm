@interface _ASAgentCredentialUpdateListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)reportAllAcceptedPublicKeyCredentialsForRelyingParty:(id)a3 userHandle:(id)a4 acceptedCredentialIDs:(id)a5 credentialUpdaterOptions:(id)a6 completionHandler:(id)a7;
- (void)reportPublicKeyCredentialUpdateForRelyingParty:(id)a3 userHandle:(id)a4 newName:(id)a5 credentialUpdaterOptions:(id)a6 completionHandler:(id)a7;
- (void)reportUnknownPublicKeyCredentialForRelyingParty:(id)a3 credentialID:(id)a4 credentialUpdaterOptions:(id)a5 completionHandler:(id)a6;
- (void)reportUnusedPasswordCredentialForDomain:(id)a3 username:(id)a4 credentialUpdaterOptions:(id)a5 completionHandler:(id)a6;
@end

@implementation _ASAgentCredentialUpdateListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1B1CE8350(v7);

  return v9 & 1;
}

- (void)reportPublicKeyCredentialUpdateForRelyingParty:(id)a3 userHandle:(id)a4 newName:(id)a5 credentialUpdaterOptions:(id)a6 completionHandler:(id)a7
{
  v11 = _Block_copy(a7);
  v27 = sub_1B1D7BE4C();
  v13 = v12;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = self;
  v18 = sub_1B1D7B4EC();
  v20 = v19;

  v21 = sub_1B1D7BE4C();
  v23 = v22;

  v24 = sub_1B1D7B4EC();
  v26 = v25;

  _Block_copy(v11);
  sub_1B1CE8758(v27, v13, v18, v20, v21, v23, v24, v26, v17, v11);
  _Block_release(v11);
  _Block_release(v11);
  sub_1B1CDEFDC(v24, v26);

  sub_1B1CDEFDC(v18, v20);
}

- (void)reportUnknownPublicKeyCredentialForRelyingParty:(id)a3 credentialID:(id)a4 credentialUpdaterOptions:(id)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_1B1D7BE4C();
  v12 = v11;
  v13 = a4;
  v14 = a5;
  v15 = self;
  v16 = sub_1B1D7B4EC();
  v18 = v17;

  v19 = sub_1B1D7B4EC();
  v21 = v20;

  _Block_copy(v9);
  sub_1B1CE8A90(v10, v12, v16, v18, v19, v21, v15, v9);
  _Block_release(v9);
  _Block_release(v9);
  sub_1B1CDEFDC(v19, v21);
  sub_1B1CDEFDC(v16, v18);
}

- (void)reportAllAcceptedPublicKeyCredentialsForRelyingParty:(id)a3 userHandle:(id)a4 acceptedCredentialIDs:(id)a5 credentialUpdaterOptions:(id)a6 completionHandler:(id)a7
{
  v11 = _Block_copy(a7);
  v12 = sub_1B1D7BE4C();
  v14 = v13;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = self;
  v19 = sub_1B1D7B4EC();
  v21 = v20;

  v22 = sub_1B1D7BEEC();
  v23 = sub_1B1D7B4EC();
  v25 = v24;

  _Block_copy(v11);
  sub_1B1CE8DAC(v12, v14, v19, v21, v22, v23, v25, v18, v11);
  _Block_release(v11);
  _Block_release(v11);
  sub_1B1CDEFDC(v23, v25);

  sub_1B1CDEFDC(v19, v21);
}

- (void)reportUnusedPasswordCredentialForDomain:(id)a3 username:(id)a4 credentialUpdaterOptions:(id)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_1B1D7BE4C();
  v11 = v10;
  v12 = sub_1B1D7BE4C();
  v14 = v13;
  v15 = a5;
  v16 = self;
  v17 = sub_1B1D7B4EC();
  v19 = v18;

  _Block_copy(v8);
  sub_1B1CE90D8(v9, v11, v12, v14, v17, v19, v16, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_1B1CDEFDC(v17, v19);
}

@end