@interface AOSThreadManager
+ (id)sharedManager;
- (void)dealloc;
- (void)runAuthThreadWithContext:(id)context;
@end

@implementation AOSThreadManager

+ (id)sharedManager
{
  result = _sharedMgr;
  if (!_sharedMgr)
  {
    result = objc_alloc_init(AOSThreadManager);
    _sharedMgr = result;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AOSThreadManager;
  [(AOSThreadManager *)&v2 dealloc];
}

- (void)runAuthThreadWithContext:(id)context
{
  v4 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  account = [context account];
  transaction = [context transaction];
  info = [context info];
  v8 = [info objectForKey:kAOSAuthPreviousTokenKey];
  v9 = [info objectForKey:kAOSAuthRequestURLKey];
  if (account)
  {
    AOSAccountGetUser(account);
    AOSAccountGetPassword(account);
  }

  if (!_AOSValidateURL(v9))
  {
    NSLog(&cfstr_AoskitErrorRaf.isa, v9);
    v10 = 5001;
    goto LABEL_7;
  }

  if (v8 || (v16 = AOSAccountCopyAuthInfo(account, v9, 0, 0)) == 0 || (v13 = v16, [v16 count] != 2))
  {
    v10 = 5002;
LABEL_7:
    v11 = CFErrorCreate(0, kAOSErrorDomain, v10, 0);
    v12 = 0;
    v13 = 0;
    v14 = v11 == 0;
    goto LABEL_8;
  }

  AOSTransactionSetResult(transaction, v13);
  v11 = 0;
  v12 = 1;
  v14 = 1;
LABEL_8:
  AOSTransactionSetError(transaction, v11);
  AOSTransactionSetSuccessful(transaction, v14);
  AOSTransactionSetIsFinished(transaction, 1);
  if ((v14 & 1) == 0)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v13);
  }

  scheduleCallback = [context scheduleCallback];
  if (context && (scheduleCallback & 1) == 0)
  {
    CFRelease(context);
  }

  [v4 drain];
}

@end