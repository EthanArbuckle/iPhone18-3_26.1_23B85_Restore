@interface _ASAgentCredentialUpdateListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)reportAllAcceptedPublicKeyCredentialsForRelyingParty:(id)party userHandle:(id)handle acceptedCredentialIDs:(id)ds credentialUpdaterOptions:(id)options completionHandler:(id)handler;
- (void)reportPublicKeyCredentialUpdateForRelyingParty:(id)party userHandle:(id)handle newName:(id)name credentialUpdaterOptions:(id)options completionHandler:(id)handler;
- (void)reportUnknownPublicKeyCredentialForRelyingParty:(id)party credentialID:(id)d credentialUpdaterOptions:(id)options completionHandler:(id)handler;
- (void)reportUnusedPasswordCredentialForDomain:(id)domain username:(id)username credentialUpdaterOptions:(id)options completionHandler:(id)handler;
@end

@implementation _ASAgentCredentialUpdateListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1B1CE8350(connectionCopy);

  return v9 & 1;
}

- (void)reportPublicKeyCredentialUpdateForRelyingParty:(id)party userHandle:(id)handle newName:(id)name credentialUpdaterOptions:(id)options completionHandler:(id)handler
{
  v11 = _Block_copy(handler);
  v27 = sub_1B1D7BE4C();
  v13 = v12;
  handleCopy = handle;
  nameCopy = name;
  optionsCopy = options;
  selfCopy = self;
  v18 = sub_1B1D7B4EC();
  v20 = v19;

  v21 = sub_1B1D7BE4C();
  v23 = v22;

  v24 = sub_1B1D7B4EC();
  v26 = v25;

  _Block_copy(v11);
  sub_1B1CE8758(v27, v13, v18, v20, v21, v23, v24, v26, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);
  sub_1B1CDEFDC(v24, v26);

  sub_1B1CDEFDC(v18, v20);
}

- (void)reportUnknownPublicKeyCredentialForRelyingParty:(id)party credentialID:(id)d credentialUpdaterOptions:(id)options completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_1B1D7BE4C();
  v12 = v11;
  dCopy = d;
  optionsCopy = options;
  selfCopy = self;
  v16 = sub_1B1D7B4EC();
  v18 = v17;

  v19 = sub_1B1D7B4EC();
  v21 = v20;

  _Block_copy(v9);
  sub_1B1CE8A90(v10, v12, v16, v18, v19, v21, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);
  sub_1B1CDEFDC(v19, v21);
  sub_1B1CDEFDC(v16, v18);
}

- (void)reportAllAcceptedPublicKeyCredentialsForRelyingParty:(id)party userHandle:(id)handle acceptedCredentialIDs:(id)ds credentialUpdaterOptions:(id)options completionHandler:(id)handler
{
  v11 = _Block_copy(handler);
  v12 = sub_1B1D7BE4C();
  v14 = v13;
  handleCopy = handle;
  dsCopy = ds;
  optionsCopy = options;
  selfCopy = self;
  v19 = sub_1B1D7B4EC();
  v21 = v20;

  v22 = sub_1B1D7BEEC();
  v23 = sub_1B1D7B4EC();
  v25 = v24;

  _Block_copy(v11);
  sub_1B1CE8DAC(v12, v14, v19, v21, v22, v23, v25, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);
  sub_1B1CDEFDC(v23, v25);

  sub_1B1CDEFDC(v19, v21);
}

- (void)reportUnusedPasswordCredentialForDomain:(id)domain username:(id)username credentialUpdaterOptions:(id)options completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = sub_1B1D7BE4C();
  v11 = v10;
  v12 = sub_1B1D7BE4C();
  v14 = v13;
  optionsCopy = options;
  selfCopy = self;
  v17 = sub_1B1D7B4EC();
  v19 = v18;

  _Block_copy(v8);
  sub_1B1CE90D8(v9, v11, v12, v14, v17, v19, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_1B1CDEFDC(v17, v19);
}

@end