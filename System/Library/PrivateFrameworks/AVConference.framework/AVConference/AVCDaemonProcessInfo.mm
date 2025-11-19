@interface AVCDaemonProcessInfo
+ ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenWithError:(SEL)a3;
+ (id)getDaemonProcessInfo;
@end

@implementation AVCDaemonProcessInfo

+ (id)getDaemonProcessInfo
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = +[AVConferenceXPCClient AVConferenceXPCClientSingleton];
  v4 = @"vcGetDaemonProcessInfoUniquePid";
  v5[0] = [MEMORY[0x1E695DFB0] null];
  return [v2 sendMessageSync:"vcGetDaemonProcessInfo" arguments:objc_msgSend(MEMORY[0x1E695DF20] xpcArguments:{"dictionaryWithObjects:forKeys:count:", v5, &v4, 1), 0}];
}

+ ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenWithError:(SEL)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = +[AVConferenceXPCClient AVConferenceXPCClientSingleton];
  v12 = @"vcDaemonProcessInfoAuditToken";
  v13[0] = [MEMORY[0x1E695DFB0] null];
  v7 = [v6 sendMessageSync:"vcGetDaemonProcessInfo" arguments:objc_msgSend(MEMORY[0x1E695DF20] xpcArguments:{"dictionaryWithObjects:forKeys:count:", v13, &v12, 1), 0}];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *retstr->var0 = v8;
  *&retstr->var0[4] = v8;
  v9 = [v7 objectForKeyedSubscript:{@"ERROR", VCUtil_AuditTokenForCurrentProcess(retstr)}];
  result = [v7 objectForKeyedSubscript:@"vcDaemonProcessInfoAuditToken"];
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = result == 0;
  }

  if (!v11)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result getBytes:retstr length:32];
  }

  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

@end