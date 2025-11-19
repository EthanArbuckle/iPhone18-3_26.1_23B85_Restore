@interface SLAccountNotificationPlugin
- (BOOL)_accountExistsForAccountTypeIdentifier:(id)a3 inStore:(id)a4;
- (BOOL)account:(id)a3 willChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
- (SLAccountNotificationPlugin)init;
- (void)cleanupTwitterPushDestinationsForAccount:(id)a3 accountStore:(id)a4;
@end

@implementation SLAccountNotificationPlugin

- (SLAccountNotificationPlugin)init
{
  v3.receiver = self;
  v3.super_class = SLAccountNotificationPlugin;
  result = [(SLAccountNotificationPlugin *)&v3 init];
  if (result)
  {
    result->_accountState = 0;
  }

  return result;
}

- (BOOL)_accountExistsForAccountTypeIdentifier:(id)a3 inStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x29EDB83C8] accountsWithAccountTypeIdentifierExist:v5];
  if (v7 == 1)
  {
    v8 = 1;
  }

  else if (v7 == 2)
  {
    v8 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v9 = dispatch_semaphore_create(0);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = sub_29C91B030;
    v12[3] = &unk_29F333618;
    v13 = v6;
    v15 = &v16;
    v10 = v9;
    v14 = v10;
    [v13 accountTypeWithIdentifier:v5 handler:v12];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v8 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  return v8 & 1;
}

- (void)cleanupTwitterPushDestinationsForAccount:(id)a3 accountStore:(id)a4
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x29EDBFA58]);
  v6 = [v5 initWithEnvironmentName:*MEMORY[0x29EDBFA50]];
  v7 = [MEMORY[0x29EDB8E48] mainRunLoop];
  [v6 scheduleInRunLoop:v7];

  v8 = [v6 publicToken];
  v9 = [v8 base64Encoding];

  v22 = [v4 username];
  _SLLog();

  v10 = MEMORY[0x29EDBA058];
  v11 = [MEMORY[0x29EDB8E70] SLTwitterCleanupPushDestinationsURL];
  v12 = [v10 requestWithURL:v11];

  [v12 setHTTPMethod:@"POST"];
  v13 = MEMORY[0x29EDBA0F8];
  v14 = [v9 _urlEncodedString];
  v15 = [v13 stringWithFormat:@"token=%@", v14];
  v16 = [v15 dataUsingEncoding:4];
  [v12 setHTTPBody:v16];

  v17 = [objc_alloc(MEMORY[0x29EDB83D0]) initWithAccount:v4];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 signedURLRequestWithURLRequest:v12];
    v20 = dispatch_queue_create("performRequestQueue", 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = sub_29C91B388;
    block[3] = &unk_29F333640;
    v24 = v19;
    v25 = v4;
    v21 = v19;
    dispatch_async(v20, block);
  }
}

- (BOOL)account:(id)a3 willChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = v10;
  if (a4 == 3)
  {
    v12 = [v10 accountType];
    v13 = [v12 identifier];
    v14 = [v13 isEqualToString:*MEMORY[0x29EDB82A8]];

    if (v14)
    {
      [(SLAccountNotificationPlugin *)self cleanupTwitterPushDestinationsForAccount:v11 accountStore:v9];
    }
  }

  return 0;
}

@end