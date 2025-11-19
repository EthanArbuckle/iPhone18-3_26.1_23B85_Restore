@interface AOSThreadManager
+ (id)sharedManager;
- (void)dealloc;
- (void)runAuthThreadWithContext:(id)a3;
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

- (void)runAuthThreadWithContext:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v5 = [a3 account];
  v6 = [a3 transaction];
  v7 = [a3 info];
  v8 = [v7 objectForKey:kAOSAuthPreviousTokenKey];
  v9 = [v7 objectForKey:kAOSAuthRequestURLKey];
  if (v5)
  {
    AOSAccountGetUser(v5);
    AOSAccountGetPassword(v5);
  }

  if (!_AOSValidateURL(v9))
  {
    NSLog(&cfstr_AoskitErrorRaf.isa, v9);
    v10 = 5001;
    goto LABEL_7;
  }

  if (v8 || (v16 = AOSAccountCopyAuthInfo(v5, v9, 0, 0)) == 0 || (v13 = v16, [v16 count] != 2))
  {
    v10 = 5002;
LABEL_7:
    v11 = CFErrorCreate(0, kAOSErrorDomain, v10, 0);
    v12 = 0;
    v13 = 0;
    v14 = v11 == 0;
    goto LABEL_8;
  }

  AOSTransactionSetResult(v6, v13);
  v11 = 0;
  v12 = 1;
  v14 = 1;
LABEL_8:
  AOSTransactionSetError(v6, v11);
  AOSTransactionSetSuccessful(v6, v14);
  AOSTransactionSetIsFinished(v6, 1);
  if ((v14 & 1) == 0)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v13);
  }

  v15 = [a3 scheduleCallback];
  if (a3 && (v15 & 1) == 0)
  {
    CFRelease(a3);
  }

  [v4 drain];
}

@end