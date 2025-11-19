@interface SOUtils
+ (BOOL)auditTokenFromData:(id)a3 auditToken:(id *)a4;
+ (BOOL)checkEntitlementFromXPC:(id)a3 entitlement:(id)a4;
+ (BOOL)checkSignatureOfFile:(id)a3 teamIdentifier:(id *)a4 trusted:(BOOL *)a5 signedBySet:(int64_t *)a6 certificates:(id *)a7 error:(id *)a8;
+ (BOOL)currentProcessIsSandboxed;
+ (BOOL)isAppSSOServiceAvailable;
+ (BOOL)isInternalBuild;
+ (BOOL)sandboxAllowsXPC:(const char *)a3;
+ (id)bundleIdentifierFromAuditToken:(id *)a3;
+ (id)currentProcessContainerPath;
+ (id)currentProcessName;
+ (id)mapArray:(id)a3 usingBlock:(id)a4;
+ (id)processNameForPID:(int)a3;
+ (id)signatureSetToString:(int64_t)a3;
+ (id)teamIdentifierFromAuditToken:(id *)a3;
+ (int)mmapFile:(id)a3 mode:(int64_t)a4 mmapData:(id *)a5;
+ (int)pidFromAuditToken:(id *)a3;
+ (void)currentProcessIsSandboxed;
+ (void)unmapFile:(int)a3 data:(id)a4;
@end

@implementation SOUtils

+ (id)currentProcessName
{
  v3 = getpid();

  return [a1 processNameForPID:v3];
}

void __35__SOUtils_isAppSSOServiceAvailable__block_invoke()
{
  sp = 0;
  v0 = bootstrap_look_up(*MEMORY[0x1E69E99F8], [@"com.apple.AppSSO.service-xpc" UTF8String], &sp);
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sp == 0;
  }

  if (v1)
  {
    if ((isAppSSOServiceAvailable_appSSOServiceAvailable & 1) == 0)
    {
      v2 = v0;
      v3 = SO_LOG_SOUtils();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        __35__SOUtils_isAppSSOServiceAvailable__block_invoke_cold_1(v2, v3);
      }
    }
  }

  else
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], sp);
    isAppSSOServiceAvailable_appSSOServiceAvailable = 1;
  }
}

+ (BOOL)isAppSSOServiceAvailable
{
  if (isAppSSOServiceAvailable_onceToken != -1)
  {
    +[SOUtils isAppSSOServiceAvailable];
  }

  return isAppSSOServiceAvailable_appSSOServiceAvailable;
}

+ (id)currentProcessContainerPath
{
  if (currentProcessContainerPath_onceToken != -1)
  {
    +[SOUtils currentProcessContainerPath];
  }

  v3 = currentProcessContainerPath_containerPath;

  return v3;
}

void __38__SOUtils_currentProcessContainerPath__block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  getpid();
  if (sandbox_container_path_for_pid())
  {
    if (*__error() == 45)
    {
      goto LABEL_7;
    }

    v0 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __38__SOUtils_currentProcessContainerPath__block_invoke_cold_1();
    }
  }

  else
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    v0 = currentProcessContainerPath_containerPath;
    currentProcessContainerPath_containerPath = v1;
  }

LABEL_7:
  v2 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__SOUtils_currentProcessContainerPath__block_invoke_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (BOOL)currentProcessIsSandboxed
{
  getpid();
  v2 = *MEMORY[0x1E69E9BD0];
  v3 = sandbox_check();
  v4 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(SOUtils *)v3 != 0 currentProcessIsSandboxed:v4];
  }

  return v3 != 0;
}

+ (int)mmapFile:(id)a3 mode:(int64_t)a4 mmapData:(id *)a5
{
  v7 = a3;
  *__error() = 0;
  if (a4 == 1)
  {
    v8 = 514;
  }

  else
  {
    v8 = 0;
  }

  v9 = shm_open([v7 UTF8String], v8, 511);
  if (v9 == -1)
  {
    v13 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SOUtils mmapFile:mode:mmapData:];
    }

    goto LABEL_15;
  }

  v10 = v9;
  if (a4 == 1)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  ftruncate(v9, 4);
  v12 = mmap(0, 4uLL, v11, 1, v10, 0);
  if (v12 == -1)
  {
    close(v10);
    v13 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SOUtils mmapFile:mode:mmapData:];
    }

LABEL_15:

    v10 = -1;
    goto LABEL_16;
  }

  if (a5)
  {
    *a5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v12 length:4 freeWhenDone:0];
  }

LABEL_16:

  return v10;
}

+ (void)unmapFile:(int)a3 data:(id)a4
{
  v5 = a4;
  v6 = [v5 bytes];
  v7 = [v5 length];

  if (munmap(v6, v7) == -1)
  {
    v8 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[SOUtils unmapFile:data:];
    }
  }

  if (close(a3) == -1)
  {
    v9 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[SOUtils unmapFile:data:];
    }
  }
}

+ (BOOL)checkEntitlementFromXPC:(id)a3 entitlement:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 valueForEntitlement:v6];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138543874;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 1024;
    v17 = v8;
    _os_log_debug_impl(&dword_1CA238000, v9, OS_LOG_TYPE_DEBUG, "checkEntitlementFromXPC: %{public}@, %{public}@ = %d", &v12, 0x1Cu);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)sandboxAllowsXPC:(const char *)a3
{
  if (a3)
  {
    getpid();
    v4 = *MEMORY[0x1E69E9BD0];
    v5 = sandbox_check() == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(SOUtils *)a3 sandboxAllowsXPC:v5, v6];
  }

  return v5;
}

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[SOUtils isInternalBuild];
  }

  return isInternalBuild_internalBuild;
}

void __26__SOUtils_isInternalBuild__block_invoke()
{
  isInternalBuild_internalBuild = os_variant_has_internal_content();
  v0 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __26__SOUtils_isInternalBuild__block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

+ (id)mapArray:(id)a3 usingBlock:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = v6[2](v6, *(*(&v16 + 1) + 8 * i));
        [v7 addObject:{v13, v16}];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)auditTokenFromData:(id)a3 auditToken:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if ([v5 length] != 32)
  {
    v10 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SOUtils auditTokenFromData:v6 auditToken:?];
    }

    goto LABEL_9;
  }

  if (a4)
  {
    v7 = [v6 bytes];
    v8 = v7[1];
    *a4->var0 = *v7;
    *&a4->var0[4] = v8;
  }

  v9 = 1;
LABEL_10:

  return v9;
}

+ (int)pidFromAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *v5.val = *a3->var0;
  *&v5.val[4] = v3;
  return audit_token_to_pid(&v5);
}

+ (id)bundleIdentifierFromAuditToken:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (!v5)
  {
    v11 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&dword_1CA238000, v11, OS_LOG_TYPE_DEFAULT, "bundleIdentifier: CPCopyBundleIdentifierAndTeamFromAuditToken() failed", &token, 2u);
    }

    goto LABEL_18;
  }

  v6 = v5;
  if ((SecTaskGetCodeSignStatus(v5) & 0x4000) != 0)
  {
    CFRelease(v6);
    error = 0;
    v12 = *&a3->var0[4];
    *token.val = *a3->var0;
    *&token.val[4] = v12;
    if (CPCopyBundleIdentifierAndTeamFromAuditToken())
    {
      v13 = error;
      v9 = SO_LOG_SOUtils();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(SOUtils *)error bundleIdentifierFromAuditToken:v9, v14, v15, v16, v17, v18, v19];
      }

      goto LABEL_24;
    }

LABEL_18:
    v13 = 0;
    goto LABEL_25;
  }

  v7 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SOUtils bundleIdentifierFromAuditToken:v7];
  }

  v8 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(token.val[0]) = 0;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "bundleIdentifier: using SecTaskCopySigningIdentifier()", &token, 2u);
  }

  error = 0;
  v9 = SecTaskCopySigningIdentifier(v6, &error);
  CFRelease(v6);
  if (error)
  {
    v10 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      token.val[0] = 138543362;
      *&token.val[1] = error;
      _os_log_impl(&dword_1CA238000, v10, OS_LOG_TYPE_INFO, "bundleIdentifier: SecTaskCopySigningIdentifier() failed %{public}@", &token, 0xCu);
    }

    if (error)
    {
      CFRelease(error);
    }
  }

  else if (v9)
  {
    v20 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      token.val[0] = 138543362;
      *&token.val[1] = v9;
      _os_log_impl(&dword_1CA238000, v20, OS_LOG_TYPE_INFO, "bundleIdentifier: %{public}@", &token, 0xCu);
    }

    v13 = v9;
    goto LABEL_24;
  }

  v13 = 0;
LABEL_24:

LABEL_25:
  v21 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)processNameForPID:(int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = buffer;
  bzero(buffer, 0x400uLL);
  v5 = proc_name(a3, buffer, 0x400u);
  if ((v5 & 0x80000000) == 0)
  {
    buffer[v5] = 0;
    if (v5 >= 0xF)
    {
      v4 = buffer;
      v6 = proc_pidpath(a3, buffer, 0x400u);
      if ((v6 & 0x80000000) == 0)
      {
        buffer[v6] = 0;
        v7 = strrchr(buffer, 47);
        if (v7)
        {
          v4 = v7 + 1;
        }
      }
    }
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)signatureSetToString:(int64_t)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = v4;
  if (v3)
  {
    [v4 appendString:{@"by apple, "}];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 appendString:{@"by mac app store, "}];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v5 appendString:{@"by identified developer, "}];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v5 appendString:{@"by distribution certificate, "}];
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v5 appendString:{@"by iphone distribution certificate, "}];
  if ((v3 & 0x20) != 0)
  {
LABEL_7:
    [v5 appendString:{@"by word wide developer certificate, "}];
  }

LABEL_8:

  return v5;
}

+ (BOOL)checkSignatureOfFile:(id)a3 teamIdentifier:(id *)a4 trusted:(BOOL *)a5 signedBySet:(int64_t *)a6 certificates:(id *)a7 error:(id *)a8
{
  v37 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "+[SOUtils checkSignatureOfFile:teamIdentifier:trusted:signedBySet:certificates:error:]";
    v33 = 2114;
    v34 = v14;
    v35 = 2112;
    v36 = a1;
    _os_log_impl(&dword_1CA238000, v15, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
  }

  information = 0;
  *buf = 0;
  cf = 0;
  if (!v14)
  {
    if (a8)
    {
      [SOErrorHelper parameterErrorWithMessage:@"no file"];
      v16 = 0;
      v18 = 0;
      *a8 = v19 = 0;
    }

    else
    {
      v16 = 0;
      v18 = 0;
      v19 = 0;
    }

    goto LABEL_25;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
  v17 = SecStaticCodeCreateWithPath(v16, 0, buf);
  if (v17)
  {
    if (a8)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"SecStaticCodeCreateWithPathAndAttributes() failed with %d", v17];
      v21 = LABEL_18:;
      *a8 = [SOErrorHelper internalErrorWithMessage:v21];
    }
  }

  else
  {
    v20 = SecCodeCopySigningInformation(*buf, 2u, &information);
    if (!v20)
    {
      v18 = information;
      information = 0;
      if (a4)
      {
        *a4 = [(__CFDictionary *)v18 objectForKeyedSubscript:*MEMORY[0x1E697B080]];
      }

      if (a7)
      {
        *a7 = [(__CFDictionary *)v18 objectForKeyedSubscript:*MEMORY[0x1E697B040]];
      }

      if (a6)
      {
        if (_isStaticCodeSignedBy(*buf, 1, a8))
        {
          *a6 |= 1uLL;
        }

        if (_isStaticCodeSignedBy(*buf, 2, a8))
        {
          *a6 |= 2uLL;
        }

        if (_isStaticCodeSignedBy(*buf, 4, a8))
        {
          *a6 |= 4uLL;
        }

        if (_isStaticCodeSignedBy(*buf, 8, a8))
        {
          *a6 |= 8uLL;
        }

        if (_isStaticCodeSignedBy(*buf, 16, a8))
        {
          *a6 |= 4uLL;
        }

        if (_isStaticCodeSignedBy(*buf, 32, a8))
        {
          *a6 |= 0x20uLL;
        }
      }

      v25 = [(__CFDictionary *)v18 objectForKeyedSubscript:*MEMORY[0x1E697B090]];

      if (v25)
      {
        v26 = SecTrustEvaluateWithError(v25, &cf);
        v22 = cf;
        if (a8 && cf)
        {
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SecTrustEvaluateWithError(), trust: %@ failed with %@", v25, cf];
          *a8 = [SOErrorHelper internalErrorWithMessage:v27];

          v22 = cf;
        }

        v19 = v22 == 0;
      }

      else if (a8)
      {
        v28 = [SOErrorHelper internalErrorWithMessage:@"no kSecCodeInfoTrust in signing information"];
        v29 = v28;
        v22 = 0;
        v26 = 0;
        v19 = 0;
        *a8 = v28;
      }

      else
      {
        v22 = 0;
        v26 = 0;
        v19 = 0;
      }

      if (a5)
      {
        *a5 = v26;
      }

      goto LABEL_20;
    }

    if (a8)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"SecCodeCopySigningInformation() failed with %d", v20];
      goto LABEL_18;
    }
  }

  v22 = 0;
  v19 = 0;
  v18 = 0;
LABEL_20:
  if (*buf)
  {
    CFRelease(*buf);
    v22 = cf;
  }

  if (v22)
  {
    CFRelease(v22);
  }

LABEL_25:

  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)teamIdentifierFromAuditToken:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (!v5)
  {
    v9 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&dword_1CA238000, v9, OS_LOG_TYPE_DEFAULT, "teamIdentifier: CPCopyBundleIdentifierAndTeamFromAuditToken() failed", &token, 2u);
    }

    goto LABEL_7;
  }

  v6 = v5;
  CodeSignStatus = SecTaskGetCodeSignStatus(v5);
  if ((~CodeSignStatus & 0x4000001) == 0)
  {
    CFRelease(v6);
    v8 = @"Apple";
    goto LABEL_8;
  }

  if ((CodeSignStatus & 0x4000) == 0)
  {
    v12 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SOUtils teamIdentifierFromAuditToken:v12];
    }

    v13 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SOUtils teamIdentifierFromAuditToken:v13];
    }

    v8 = SecTaskCopyTeamIdentifier();
    v14 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      token.val[0] = 138543618;
      *&token.val[1] = v8;
      LOWORD(token.val[3]) = 2114;
      *(&token.val[3] + 2) = 0;
      _os_log_impl(&dword_1CA238000, v14, OS_LOG_TYPE_DEFAULT, "teamIdentifier: %{public}@, error: %{public}@", &token, 0x16u);
    }

    CFRelease(v6);
    goto LABEL_8;
  }

  v15 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v15;
  if (!CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v16 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    token.val[0] = 138543618;
    *&token.val[1] = 0;
    LOWORD(token.val[3]) = 2114;
    *(&token.val[3] + 2) = 0;
    _os_log_impl(&dword_1CA238000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ teamIdentifier: %{public}@", &token, 0x16u);
  }

  CFRelease(v6);
LABEL_8:
  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (void)mmapFile:mode:mmapData:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)mmapFile:mode:mmapData:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)unmapFile:data:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)unmapFile:data:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)currentProcessIsSandboxed
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3(&dword_1CA238000, a2, a3, "currentProcessIsSandboxed(): %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)sandboxAllowsXPC:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = "YES";
  if ((a2 & 1) == 0)
  {
    v3 = "NO";
  }

  v5 = 136446466;
  v6 = a1;
  v7 = 2082;
  v8 = v3;
  _os_log_debug_impl(&dword_1CA238000, log, OS_LOG_TYPE_DEBUG, "sandboxAllowsXPC(): '%{public}s' allowed = %{public}s", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __38__SOUtils_currentProcessContainerPath__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

void __38__SOUtils_currentProcessContainerPath__block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3(&dword_1CA238000, a1, a3, "currentProcessContainerPath(): %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __26__SOUtils_isInternalBuild__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3(&dword_1CA238000, a1, a3, "isInternalBuild=%{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __35__SOUtils_isAppSSOServiceAvailable__block_invoke_cold_1(kern_return_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = @"com.apple.AppSSO.service-xpc";
  v6 = 2082;
  v7 = bootstrap_strerror(a1);
  _os_log_debug_impl(&dword_1CA238000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ is not available (%{public}s)", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)auditTokenFromData:(void *)a1 auditToken:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 length];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)bundleIdentifierFromAuditToken:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3(&dword_1CA238000, a2, a3, "bundleIdentifier: CPCopyBundleIdentifierAndTeamFromAuditToken(): %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end