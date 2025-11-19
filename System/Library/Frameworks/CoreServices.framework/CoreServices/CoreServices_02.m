uint64_t _LSNodeIsPackageCommon(LSContext *a1, void *a2, int a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (a4)
  {
    *a4 = 0;
  }

  if ([v7 isDirectory] && (objc_msgSend(v8, "isVolume") & 1) == 0)
  {
    if ([v8 hasPackageBit])
    {
      v9 = 1;
    }

    else
    {
      v11 = [v8 extensionWithError:0];
      v12 = v11;
      if (v11)
      {
        if (a1 && -[__CFString length](v11, "length") && (_LSIsPackageExtension(a1, a3, v12) || ([v8 getHFSType:0 creator:0 error:0] & 1) != 0))
        {
          v9 = 1;
        }

        else
        {
          v9 = [v8 isAVCHDCollection];
          v13 = v9 ^ 1;
          if (!a4)
          {
            v13 = 1;
          }

          if ((v13 & 1) == 0)
          {
            v9 = 1;
            *a4 = 1;
          }
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t LaunchServices::URLPropertyProvider::prepareIsApplicationValue(LaunchServices::Database::Context *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (_LSGetBundleClassForNode(0, a2) != 2)
  {
    goto LABEL_5;
  }

  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (v11)
  {
    if (_LSGetBundleClassForNode(v11, a2) == 2)
    {
      v12 = MEMORY[0x1E695E4D0];
LABEL_6:
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695EB20], *v12);
      return 1;
    }

LABEL_5:
    v12 = MEMORY[0x1E695E4C0];
    goto LABEL_6;
  }

  if (!a6)
  {
    return 0;
  }

  v14 = +[_LSDServiceDomain defaultServiceDomain];
  v15 = LaunchServices::Database::Context::_get(a1, v14, 0);

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(a1 + 3);
    v17 = v16;
  }

  result = 0;
  *a6 = v16;
  return result;
}

uint64_t _LSIsCurrentProcessSandboxed(_BYTE *a1)
{
  v3 = 0;
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v3 = 0;
    if (!a1)
    {
      return HIBYTE(v3);
    }

    goto LABEL_10;
  }

  if (_LSCheckCurrentProcessSandboxEveryTime(void)::once != -1)
  {
    _LSIsCurrentProcessSandboxed_cold_1();
  }

  if (_LSCheckCurrentProcessSandboxEveryTime(void)::result)
  {
    if (_LSGetAuditTokenForSelf::once != -1)
    {
      _LSGetAuditTokenForSelf_cold_1();
    }

    _LSIsAuditTokenSandboxed(_LSGetAuditTokenForSelf::result, &v3 + 1, &v3);
    if (a1)
    {
LABEL_10:
      *a1 = v3;
    }
  }

  else
  {
    if (_LSIsCurrentProcessSandboxed::once != -1)
    {
      _LSIsCurrentProcessSandboxed_cold_3();
    }

    HIBYTE(v3) = _LSIsCurrentProcessSandboxed::sSandbox;
    LOBYTE(v3) = _LSIsCurrentProcessSandboxed::sAppSandbox;
    if (a1)
    {
      goto LABEL_10;
    }
  }

  return HIBYTE(v3);
}

uint64_t _LSCheckMachPortAccessForAuditToken(__int128 *a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (_LSGetAuditTokenForSelf::once != -1)
    {
      _LSGetAuditTokenForSelf_cold_1();
    }

    if (_LSGetAuditTokenForSelf::result == a1 && !_LSIsCurrentProcessSandboxed(0))
    {
      return 1;
    }

    else
    {
      v5 = *MEMORY[0x1E69E9BD0];
      v6 = objc_autoreleasePoolPush();
      v8 = *a1;
      v9 = a1[1];
      [a2 UTF8String];
      v2 = sandbox_check_by_audit_token() == 0;
      objc_autoreleasePoolPop(v6);
    }
  }

  return v2;
}

uint64_t LaunchServices::URLPropertyProvider::prepareLocalizedNameValue(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (_LSContextIsCurrentThreadInitializing())
  {
    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [a2 URL];
      LaunchServices::URLPropertyProvider::prepareLocalizedNameValue(v12, &v20, v11);
    }
  }

  else
  {
    if (LaunchServices::URLPropertyProvider::shouldAvoidLocalizingNameBecauseIsInLightweightSystemSession(void)::onceToken != -1)
    {
      LaunchServices::URLPropertyProvider::prepareLocalizedNameValue();
    }

    if (LaunchServices::URLPropertyProvider::shouldAvoidLocalizingNameBecauseIsInLightweightSystemSession(void)::result != 1)
    {
      v16 = LaunchServices::URLPropertyProvider::getDisplayNameConstructor(a1, a2, a5, a6);
      v17 = v16;
      if (v16)
      {
        v14 = [v16 unlocalizedNameWithContextIfNeeded:a1];
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        goto LABEL_10;
      }

LABEL_15:
      v15 = 0;
      goto LABEL_16;
    }

    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [a2 URL];
      v20 = 138477827;
      v21 = v13;
      _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "Not localizing name for %{private}@ because we are in the system session, which has no user preferences.", &v20, 0xCu);
    }
  }

  v14 = [a2 nameWithError:a6];
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_10:
  MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695EBC8], v14);
  v15 = 1;
LABEL_16:

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t shouldConnectToLSD(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v2 = 1;
  }

  else
  {
    v2 = objc_opt_respondsToSelector() & 1;
  }

  return v2;
}

void performWithLSAWDistributedNotificationNameBasedOnObserverConformance(void *a1, void (*a2)(__CFString *))
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    a2(@"com.lsinstallprogress.appcontrols.cancel");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.lsinstallprogress.appcontrols.pause");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.lsinstallprogress.appcontrols.prioritize");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.lsinstallprogress.appcontrols.resume");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.lsinstallprogress.networkusagechanged");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.apple.LaunchServices.pluginsregistered");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.apple.LaunchServices.pluginsunregistered");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.apple.LaunchServices.pluginswillberemoved");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.apple.LaunchServices.applicationStateChanged");
  }
}

void sub_181657004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *___ZL38_LSCheckCurrentProcessSandboxEveryTimev_block_invoke()
{
  result = getenv("LS_PROCESS_WILL_BE_SANDBOXED");
  if (result)
  {
    result = atoi(result);
    _LSCheckCurrentProcessSandboxEveryTime(void)::result = result != 0;
  }

  return result;
}

id installProgressInterface()
{
  if (installProgressInterface_onceToken != -1)
  {
    installProgressInterface_cold_1();
  }

  v1 = installProgressInterface_interface;

  return v1;
}

void __installProgressInterface_block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v8 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFAB2B0];
  v3 = installProgressInterface_interface;
  installProgressInterface_interface = v2;

  [installProgressInterface_interface setClass:objc_opt_class() forSelector:sel_createInstallProgressForApplication_withPhase_andPublishingString_reply_ argumentIndex:0 ofReply:0];
  [installProgressInterface_interface setClass:objc_opt_class() forSelector:sel_createInstallProgressForApplication_withPhase_andPublishingString_reply_ argumentIndex:2 ofReply:0];
  [installProgressInterface_interface setClasses:v8 forSelector:sel_sendNotification_forApplications_withPlugins_ argumentIndex:1 ofReply:0];
  [installProgressInterface_interface setClass:objc_opt_class() forSelector:sel_sendNotification_forApplicationWithBundleIdentifier_completion_ argumentIndex:1 ofReply:0];
  [installProgressInterface_interface setClass:objc_opt_class() forSelector:sel_sendNotification_forApplicationWithBundleIdentifier_completion_ argumentIndex:0 ofReply:1];
  v4 = installProgressInterface_interface;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [v4 setClasses:v7 forSelector:sel_setProgressProportionsByPhase_forInstallOfApplicationWithIdentifier_completion_ argumentIndex:0 ofReply:0];

  [installProgressInterface_interface setClass:objc_opt_class() forSelector:sel_setProgressProportionsByPhase_forInstallOfApplicationWithIdentifier_completion_ argumentIndex:1 ofReply:0];
  [installProgressInterface_interface setClass:objc_opt_class() forSelector:sel_setProgressProportionsByPhase_forInstallOfApplicationWithIdentifier_completion_ argumentIndex:0 ofReply:1];
}

id workspaceObserverInterface()
{
  if (workspaceObserverInterface_onceToken != -1)
  {
    workspaceObserverInterface_cold_1();
  }

  v1 = workspaceObserverInterface_interface;

  return v1;
}

void __workspaceObserverInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEF9D818];
  v1 = workspaceObserverInterface_interface;
  workspaceObserverInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidStart_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidChange_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidUpdateIcon_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsWillInstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsDidInstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_pluginsDidInstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsWillUninstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_pluginsWillUninstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsDidUninstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_pluginsDidUninstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsDidFailToInstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsDidFailToUninstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationStateDidChange_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationIconDidChange_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsArePrioritized_arePaused_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsArePrioritized_arePaused_ argumentIndex:1 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidPause_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidResume_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidCancel_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidPrioritize_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsDidChangePersonas_ argumentIndex:0 ofReply:0];
}

id _LSProgressLog()
{
  if (_LSProgressLog_onceToken != -1)
  {
    _LSProgressLog_cold_1();
  }

  v1 = _LSProgressLog_log;

  return v1;
}

id _LSInstallLog()
{
  if (_LSInstallLog_onceToken != -1)
  {
    _LSInstallLog_cold_1();
  }

  v1 = _LSInstallLog_log;

  return v1;
}

BOOL _LSPluginCheckExtensionPoint(void *a1, unsigned int a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = _LSExtensionPointFindWithStringID(v7, *(a3 + 180), *(a3 + 20), 0, 0, 0);
  v21 = 0;
  v9 = _LSGetNSErrorFromOSStatusImpl(v8, &v21, 0, "_LSPluginCheckExtensionPoint", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSPluginBundle.mm", 1006);
  v10 = v21;
  if (!v9)
  {
    if ((*(a3 + 164) & 1) != 0 && [__LSDefaultsGetSharedInstance() isAppleInternal])
    {
      v11 = *(a3 + 224);
      if (v11 && (*(_LSBundleGet(v7, v11) + 174) & 4) != 0)
      {
        v12 = _LSDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a3 + 172);
          v17 = _LSDatabaseGetNSStringFromString(v7);
          *buf = 138478083;
          v23 = v17;
          v24 = 2048;
          v25 = a2;
          _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "checking extension point for plugin %{private}@ (0x%llx), found it is inside a placeholder", buf, 0x16u);
        }
      }

      else
      {
        v12 = _LSDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v18 = *(a3 + 172);
          v19 = _LSDatabaseGetNSStringFromString(v7);
          v20 = *(a3 + 20);
          *buf = 138478595;
          v23 = v19;
          v24 = 2048;
          v25 = a2;
          v26 = 2048;
          v27 = v20;
          v28 = 2112;
          v29 = v10;
          _os_log_error_impl(&dword_18162D000, v12, OS_LOG_TYPE_ERROR, "Plugin %{private}@ (0x%llx platform 0x%lx) has a bad extension point identifier specified in its Info.plist: %@", buf, 0x2Au);
        }
      }
    }

    if (a4)
    {
      v13 = v10;
      *a4 = v10;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

id _LSDecodeURLPropertyDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E695E268]];

  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___LSDecodeURLPropertyDictionary_block_invoke;
    v7[3] = &unk_1E6A1AF50;
    v4 = v3;
    v8 = v4;
    [v1 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = [v4 copy];

    v1 = v5;
  }

  return v1;
}

uint64_t ___ZN14LaunchServices19URLPropertyProviderL60shouldAvoidLocalizingNameBecauseIsInLightweightSystemSessionEv_block_invoke()
{
  result = _os_feature_enabled_impl();
  if ((result & 1) == 0)
  {
    result = xpc_user_sessions_enabled();
    if (result)
    {
      result = xpc_user_sessions_get_session_uid();
      if (!result)
      {
        LaunchServices::URLPropertyProvider::shouldAvoidLocalizingNameBecauseIsInLightweightSystemSession(void)::result = 1;
      }
    }
  }

  return result;
}

id LaunchServices::URLPropertyProvider::getDisplayNameConstructor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a3 + 40);
  v8 = *(a3 + 40);
  v9 = v8;
  if (!v8)
  {
    v8 = [_LSDisplayNameConstructor displayNameConstructorWithContextIfNeeded:a1 node:a2 error:a4];
    if (v8)
    {
      objc_storeStrong(v7, v8);
    }
  }

  return v8;
}

void sub_18165892C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&mutationLock);
  objc_exception_rethrow();
}

uint64_t LaunchServices::Record::checkForExfiltrationRisk(LaunchServices::Record *this, NSCoder *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (LaunchServices::Record::checkForExfiltrationRisk(NSCoder *)::once != -1)
  {
    LaunchServices::Record::checkForExfiltrationRisk();
  }

  if (LaunchServices::Record::checkForExfiltrationRisk(NSCoder *)::isSafeToSendData)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  memset(&v17, 0, sizeof(v17));
  v3 = [(LaunchServices::Record *)this connection];
  v4 = v3;
  if (v3)
  {
    [v3 auditToken];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  v5 = _LSRecordLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = MEMORY[0x1E696AEC0];
    atoken = v17;
    v7 = audit_token_to_pid(&atoken);
    atoken = v17;
    v8 = audit_token_to_pidversion(&atoken);
    atoken = v17;
    v9 = audit_token_to_euid(&atoken);
    atoken = v17;
    v10 = audit_token_to_ruid(&atoken);
    atoken = v17;
    v11 = audit_token_to_egid(&atoken);
    atoken = v17;
    v12 = audit_token_to_rgid(&atoken);
    atoken = v17;
    v13 = audit_token_to_asid(&atoken);
    atoken = v17;
    v14 = [v6 stringWithFormat:@"[pid:%d/%d uid:%d/%d gid:%d/%d %d/%d]", v7, v8, v9, v10, v11, v12, v13, audit_token_to_auid(&atoken)];
    *buf = 138543362;
    v20 = v14;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEBUG, "checkForExfiltrationRisk: Checking if token %{public}@ is allowed to map the LS database or is a platform binary.", buf, 0xCu);
  }

  if (_LSAuditTokenMayMapDatabase(&v17) || _LSIsAuditTokenPlatformBinary(&v17))
  {
LABEL_12:
    result = 0;
  }

  else
  {
    __LAUNCH_SERVICES_CLIENT_MAY_BE_EXFILTRATING_PRIVACY_SENSITIVE_INFORMATION__();
    result = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t initMCEffectiveSettingsChangedNotification()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCEffectiveSettingsChangedNotification");
  constantMCEffectiveSettingsChangedNotification = result;
  getMCEffectiveSettingsChangedNotification[0] = MCEffectiveSettingsChangedNotificationFunction;
  return result;
}

CFStringRef UTTypeCreatePreferredIdentifierForTag(CFStringRef inTagClass, CFStringRef inTag, CFStringRef inConformingToUTI)
{
  v3 = 0;
  if (inTagClass && inTag)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [UTTypeRecord typeRecordWithTag:inTag ofClass:inTagClass conformingToIdentifier:inConformingToUTI];
    v9 = v8;
    if (v8)
    {
      v3 = [v8 identifier];
    }

    else
    {
      v3 = 0;
    }

    objc_autoreleasePoolPop(v7);
  }

  return v3;
}

id _LSValidationTokenComputeHMAC(NSData *a1, NSData *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  _LSAssertRunningInServer("NSData *_LSValidationTokenComputeHMAC(NSData *__strong, NSData *__strong)");
  v5 = [__LSDefaultsGetSharedInstance() HMACSecret];
  v6 = v5;
  v7 = 0;
  if (v4 && v3 && v5)
  {
    v8 = [(NSData *)v3 mutableCopy];
    [v8 appendData:v4];
    memset(v11, 0, sizeof(v11));
    CCHmac(4u, [v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v8, "bytes"), objc_msgSend(v8, "length"), v11);
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v11 length:64];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

id _LSURLPropertyProviderAllKeys()
{
  if (_LSURLPropertyProviderAllKeys::onceToken != -1)
  {
    _LSURLPropertyProviderAllKeys_cold_1();
  }

  v1 = _LSURLPropertyProviderAllKeys::result;

  return v1;
}

void sub_1816593D8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(&currentLock);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_181659420(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1816593E4);
}

uint64_t _LSIsArrayWithValuesOfClasses(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = _LSIsSequenceOfClassWithValuesOfClasses(v4, v5, v3);

  return v6;
}

id _LSResolveRemoteURLPropertiesWithMimic(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 URL];
  [v10 ls_setPreferredLocalizations:v8];
  [v10 setTemporaryResourceValue:v7 forKey:@"_LSMimicKey"];
  v11 = [v9 allObjects];
  v12 = [v10 resourceValuesForKeys:v11 error:a4];

  [v10 removeCachedResourceValueForKey:@"_LSMimicKey"];

  return v12;
}

void sub_181659574(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id LaunchServices::Record::getNullPlaceholder(LaunchServices::Record *this)
{
  if (LaunchServices::Record::getNullPlaceholder(void)::once != -1)
  {
    LaunchServices::Record::getNullPlaceholder();
  }

  v2 = LaunchServices::Record::getNullPlaceholder(void)::result;

  return v2;
}

Class initMCProfileConnection()
{
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    ManagedConfigurationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  }

  result = objc_getClass("MCProfileConnection");
  classMCProfileConnection = result;
  getMCProfileConnectionClass[0] = MCProfileConnectionFunction;
  return result;
}

uint64_t LaunchServices::URLPropertyProvider::prepareTypeIdentifierAndObjectValue(LaunchServices::Database::Context *a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int *a5, void *a6)
{
  v12 = +[_LSDServiceDomain defaultServiceDomain];
  v13 = LaunchServices::Database::Context::_get(a1, v12, 0);

  if (!v13)
  {
    if (a6)
    {
      v25 = +[_LSDServiceDomain defaultServiceDomain];
      v26 = LaunchServices::Database::Context::_get(a1, v25, 0);

      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = *(a1 + 3);
        v28 = v27;
      }

      result = 0;
      *a6 = v27;
      return result;
    }

    return 0;
  }

  v14 = *(a5 + 32);
  if (v14 == 1)
  {
    v15 = *a5;
    v16 = _UTTypeGet(v13->db);
    *(a5 + 1) = v16;
    LOBYTE(v14) = *(a5 + 32);
    if (!v16 && (a5[8] & 1) != 0)
    {

      *(a5 + 32) = 0;
      goto LABEL_7;
    }
  }

  if ((v14 & 1) == 0)
  {
LABEL_7:
    LaunchServices::TypeEvaluator::TypeEvaluator(v32, a2);
    LaunchServices::TypeEvaluator::evaluateType(v32, &v13->db, a6, v29);
    std::__optional_storage_base<LaunchServices::TypeEvaluator::Result,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LaunchServices::TypeEvaluator::Result,false>>(a5, v29);
    if (v31 == 1)
    {
    }

    if (a5[8])
    {
      goto LABEL_10;
    }

    return 0;
  }

LABEL_10:
  v17 = LaunchServices::TypeEvaluator::Result::getTypeIdentifier(a5, v13);
  v18 = *MEMORY[0x1E695E268];
  v19 = CFEqual(a4, *MEMORY[0x1E695E268]);
  if (v19)
  {
    UTTypeClass = LaunchServices::URLPropertyProvider::getUTTypeClass(v19);
    if (UTTypeClass)
    {
      v21 = UTTypeClass;
      if (!*a5 || ([UTTypeClass _constantTypeForURLPropertyProviderWithIdentifier:v17], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v23 = LaunchServices::TypeEvaluator::Result::getTypeRecord(a5, v13);
        v22 = [v21 _typeForURLPropertyProviderWithTypeRecord:v23];
      }

      MEMORY[0x1865D5CD0](a3, v18, v22);
    }
  }

  MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695EC28], v17);

  return 1;
}

uint64_t initMCFeatureMaximumAppsRating()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureMaximumAppsRating");
  constantMCFeatureMaximumAppsRating = result;
  getMCFeatureMaximumAppsRating[0] = MCFeatureMaximumAppsRatingFunction;
  return result;
}

uint64_t LaunchServices::TypeEvaluator::TypeEvaluator(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  *(a1 + 8) = 0;
  if (!v3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"LaunchServices::TypeEvaluator::TypeEvaluator(const __strong id<FSNodePropertyProviding> _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"UTTypeEvaluator.mm" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"node != nil"}];
  }

  return a1;
}

void LaunchServices::TypeEvaluation::runEvaluator(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v72[2] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  *(a4 + 32) = 0;
  v63 = 0;
  if ([*a2 getCachedResourceValueIfPresent:&v63 forKey:*MEMORY[0x1E695DC68] error:0])
  {
    if (_UTTypeIdentifierIsDynamic(v63))
    {
      v8 = [(__CFString *)v63 copy];
      v9 = *(a4 + 32);
      *a4 = 0;
      *(a4 + 8) = 0;
      if (v9 == 1)
      {
        v10 = *(a4 + 16);
        *(a4 + 16) = v8;

LABEL_11:
        *(a4 + 24) = 0;
        goto LABEL_12;
      }

      *(a4 + 16) = v8;
    }

    else
    {
      LODWORD(v65) = 0;
      active = _UTGetActiveTypeForCFStringIdentifier(*a1, v63, &v65);
      if (!active)
      {
        goto LABEL_12;
      }

      v12 = *(a4 + 32);
      *a4 = v65;
      *(a4 + 8) = active;
      if (v12 == 1)
      {
        v13 = *(a4 + 16);
        *(a4 + 16) = 0;

        goto LABEL_11;
      }

      *(a4 + 16) = 0;
    }

    *(a4 + 32) = 1;
    goto LABEL_11;
  }

LABEL_12:
  if ((*(a4 + 32) & 1) == 0)
  {
    v14 = *a2;
    v60 = 256;
    TypeDirectory = 0;
    v62 = 0;
    *v58 = a1;
    v59 = 0;
    objc_storeStrong(&v59, v14);
    if (TypeDirectory)
    {
      goto LABEL_14;
    }

    LOBYTE(v60) = 0;
    if ([v59 isVolume])
    {
      TypeVolume = _UTTypeGetTypeVolume(**v58);
LABEL_21:
      TypeDirectory = TypeVolume;
      goto LABEL_79;
    }

    if ([v59 isDirectory])
    {
      LOBYTE(v64) = 0;
      if (_LSNodeIsPackageIgnoringTypeDeclarations(*v58, v59, &v64))
      {
        v30 = **v58;
        if (v64)
        {
          TypeAVCHDCollection = _UTTypeGetTypeAVCHDCollection(v30);
        }

        else
        {
          TypeAVCHDCollection = _UTTypeGetTypePackage(v30);
        }

        TypeDirectory = TypeAVCHDCollection;
        LOBYTE(v60) = v64 == 0;
      }

      else
      {
        TypeDirectory = _UTTypeGetTypeDirectory(**v58);
        HIBYTE(v60) = 0;
        v40 = LaunchServices::TypeEvaluation::State::getExtension(v58);
        LOBYTE(v60) = v40 != 0;
      }

      goto LABEL_78;
    }

    if ([v59 isSymbolicLink])
    {
      TypeVolume = _UTTypeGetTypeSymbolicLink(**v58);
      goto LABEL_21;
    }

    if ([v59 isAliasFile])
    {
      TypeVolume = _UTTypeGetTypeAliasFile(**v58);
      goto LABEL_21;
    }

    if ([v59 isRegularFile])
    {
      TypeVolume = _UTTypeGetTypeData(**v58);
      TypeDirectory = TypeVolume;
      LOBYTE(v60) = 1;
      goto LABEL_79;
    }

    v64 = 0;
    v50 = *MEMORY[0x1E695DB20];
    if (![v59 getResourceValue:&v64 forKey:*MEMORY[0x1E695DB20] options:1 error:a3])
    {
LABEL_114:

LABEL_78:
      TypeVolume = TypeDirectory;
LABEL_79:
      if (a3 && !TypeVolume)
      {
        if (*a3)
        {
          goto LABEL_84;
        }

        v39 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "resolveBaseType", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Type/UTTypeEvaluator.mm", 381);
        goto LABEL_70;
      }

      if (!TypeVolume)
      {
        goto LABEL_84;
      }

LABEL_14:
      if (v60 != 1)
      {
        goto LABEL_34;
      }

      LOBYTE(v65) = 0;
      v69 = 0;
      v15 = LaunchServices::TypeEvaluation::State::getExtension(v58);
      if (v15)
      {
        LODWORD(v72[0]) = 0;
        if (_UTTypeGetActiveIdentifierForTag(**v58, @"public.filename-extension", v15, TypeDirectory, v72))
        {
          v16 = v72[0];
          if (LODWORD(v72[0]))
          {
            v17 = _UTTypeGet(**v58);
            LODWORD(v65) = v16;
            v66 = v17;
            v67 = 0;
            v69 = 1;
            v68 = 0;
            goto LABEL_32;
          }
        }
      }

      if (!TypeDirectory || v60 != 1 || HIBYTE(v60) != 1)
      {
LABEL_32:
        std::__optional_storage_base<LaunchServices::TypeEvaluator::Result,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LaunchServices::TypeEvaluator::Result,false>>(a4, &v65);
        if (v69 == 1)
        {
        }

LABEL_34:
        if ((*(a4 + 32) & 1) == 0)
        {
          LODWORD(v65) = 0;
          v23 = TypeDirectory;
          if (v23 == _UTTypeGetTypeData(**v58))
          {
            v24 = [v59 nameWithError:0];
            v25 = v24;
            if (v24)
            {
              if (![v24 caseInsensitiveCompare:@"makefile"] || !objc_msgSend(v25, "caseInsensitiveCompare:", @"gnumakefile"))
              {
                _UTGetActiveTypeForCFStringIdentifier(**v58, @"public.make-source", &v65);
              }

              if (LaunchServices::TypeEvaluation::gnitsFileNames(void)::once != -1)
              {
                LaunchServices::TypeEvaluation::runEvaluator();
              }

              if ([LaunchServices::TypeEvaluation::gnitsFileNames(void)::result containsObject:{v25, *v58}])
              {
                _UTGetActiveTypeForCFStringIdentifier(**v58, @"public.plain-text", &v65);
              }
            }

            v26 = v65;
            if (v65)
            {
              v27 = _UTTypeGet(**v58);
              v28 = *(a4 + 32);
              *a4 = v26;
              *(a4 + 8) = v27;
              if (v28 == 1)
              {
                v29 = *(a4 + 16);
                *(a4 + 16) = 0;
              }

              else
              {
                *(a4 + 16) = 0;
                *(a4 + 32) = 1;
              }

              *(a4 + 24) = 0;
            }
          }
        }

        if (*(a4 + 32))
        {
          goto LABEL_67;
        }

        v32 = TypeDirectory;
        if (v32 == _UTTypeGetTypeData(**v58))
        {
          if ([v59 isExecutable])
          {
            TypeUnixExecutable = _UTTypeGetTypeUnixExecutable(**v58);
            goto LABEL_61;
          }
        }

        else
        {
          v34 = TypeDirectory;
          if (v34 == _UTTypeGetTypeDirectory(**v58))
          {
            TypeUnixExecutable = _UTTypeGetTypeFolder(**v58);
LABEL_61:
            v35 = TypeUnixExecutable;
            if (TypeUnixExecutable)
            {
              goto LABEL_63;
            }
          }
        }

        v35 = TypeDirectory;
        if (!TypeDirectory)
        {
LABEL_67:
          if (!a3 || (*(a4 + 32) & 1) != 0)
          {
LABEL_84:
            if (*(a4 + 32) != 1 || *(a2 + 8) != 1 || (v41 = *a4, LOBYTE(v65) = 0, v69 = 0, _UTTypeGetTypeData(**v58) != v41))
            {
LABEL_98:

              goto LABEL_99;
            }

            v72[0] = 0;
            v42 = [v59 URL];
            v72[0] = 0;
            if (_LSCopySniffedExtensionAndTypeIdentifierForURL())
            {
              v43 = v72[0] == 0;

              if (!v43)
              {
                LODWORD(v71[0]) = 0;
                v44 = **v58;
                v45 = v72[0];
                TypeData = _UTTypeGetTypeData(**v58);
                ActiveIdentifierForTag = _UTTypeGetActiveIdentifierForTag(v44, @"public.filename-extension", v45, TypeData, v71);
                v48 = ActiveIdentifierForTag != 0;
                if (ActiveIdentifierForTag)
                {
                  LODWORD(v65) = v71[0];
                  v66 = ActiveIdentifierForTag;
                  v67 = 0;
                  v69 = 1;
                  v68 = 1;
                }

                goto LABEL_93;
              }
            }

            else
            {
            }

            v48 = 0;
LABEL_93:
            if (v72[0])
            {
              CFRelease(v72[0]);
            }

            if (v48)
            {
              std::__optional_storage_base<LaunchServices::TypeEvaluator::Result,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LaunchServices::TypeEvaluator::Result,false>>(a4, &v65);
              if (v69)
              {
              }
            }

            goto LABEL_98;
          }

          v39 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "runEvaluator", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Type/UTTypeEvaluator.mm", 274);
LABEL_70:
          *a3 = v39;
          goto LABEL_84;
        }

LABEL_63:
        v36 = _UTTypeGet(**v58);
        v37 = *(a4 + 32);
        *a4 = v35;
        *(a4 + 8) = v36;
        if (v37 == 1)
        {
          v38 = *(a4 + 16);
          *(a4 + 16) = 0;
        }

        else
        {
          *(a4 + 16) = 0;
          *(a4 + 32) = 1;
        }

        *(a4 + 24) = 0;
        goto LABEL_67;
      }

      v19 = LaunchServices::TypeEvaluation::State::getExtension(v58);
      if (v19)
      {
        if (!_UTExtensionLooksLikeAppendedRandomness(**v58, v19))
        {
          v20 = @"public.filename-extension";
          v19 = v19;
          if (v20)
          {
            v55 = _UTTypeGet(**v58);
            if (v55)
            {
              v56 = *(v55 + 12);
              [(_LSDatabase *)**v58 store];
              v57 = _CSStringCopyCFString();
            }

            else
            {
              v57 = 0;
            }

            DynamicIdentifierForTag = _UTTypeCreateDynamicIdentifierForTag(*v58, v20, v19, v57);

LABEL_30:
            if (DynamicIdentifierForTag)
            {
              v22 = [(__CFString *)DynamicIdentifierForTag copy];
              LODWORD(v65) = 0;
              v66 = 0;
              v67 = v22;
              v69 = 1;
              v68 = 0;
            }

            goto LABEL_32;
          }

LABEL_29:
          DynamicIdentifierForTag = 0;
          goto LABEL_30;
        }

        v19 = 0;
      }

      v20 = 0;
      goto LABEL_29;
    }

    if (LaunchServices::TypeEvaluation::resolveBaseType(LaunchServices::TypeEvaluation::State &,NSError * {__autoreleasing}*)::once != -1)
    {
      LaunchServices::TypeEvaluation::runEvaluator();
    }

    v51 = [LaunchServices::TypeEvaluation::resolveBaseType(LaunchServices::TypeEvaluation::State & NSError * {__autoreleasing}*):"objectForKeyedSubscript:" :{v64, *v58}posixUTIs];
    if (v51)
    {
      v52 = _UTGetActiveTypeForCFStringIdentifier(**v58, v51, &TypeDirectory);
      if (!a3 || v52)
      {
        goto LABEL_113;
      }

      v72[0] = *MEMORY[0x1E696A278];
      v72[1] = v50;
      v65 = @"File system object has an unknown POSIX type.";
      v66 = v64;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:v72 count:2];
      v54 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10815, v53, "resolveBaseType", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Type/UTTypeEvaluator.mm", 366);
    }

    else
    {
      if (!a3)
      {
LABEL_113:

        goto LABEL_114;
      }

      v70[0] = *MEMORY[0x1E696A278];
      v70[1] = v50;
      v71[0] = @"File system object has an unknown POSIX type.";
      v71[1] = v64;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
      v54 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10815, v53, "resolveBaseType", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Type/UTTypeEvaluator.mm", 371);
    }

    *a3 = v54;

    goto LABEL_113;
  }

LABEL_99:

  v49 = *MEMORY[0x1E69E9840];
}

void sub_18165A4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  if (*(v14 + 32) == 1)
  {
  }

  _Unwind_Resume(a1);
}

id mapBundleIdentifiersToUUIDs(int a1, void *a2, void *a3)
{
  v5 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __mapBundleIdentifiersToUUIDs_block_invoke;
  v15[3] = &unk_1E6A198D0;
  v15[4] = &v16;
  v6 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v15];
  v7 = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __mapBundleIdentifiersToUUIDs_block_invoke_2;
  v13[3] = &unk_1E6A1A458;
  v14 = a1;
  if (a1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (a1)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  v13[4] = &v22;
  v13[5] = &v16;
  [v6 mapBundleIdentifiers:v8 orMachOUUIDs:v9 completionHandler:v13];
  v10 = v23[5];
  if (a3 && !v10)
  {
    *a3 = v17[5];
    v10 = v23[5];
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v11;
}

void sub_18165A83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t LaunchServices::URLPropertyProvider::prepareCanSetHiddenExtensionValue(LaunchServices::Database::Context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = LaunchServices::URLPropertyProvider::getDisplayNameConstructor(a1, a2, a5, a6);
  if (v8)
  {
    v9 = +[_LSDServiceDomain defaultServiceDomain];
    v10 = LaunchServices::Database::Context::_get(a1, v9, 0);

    v11 = [v8 canSetExtensionHiddenWithContext:v10];
    v12 = MEMORY[0x1E695E4C0];
    if (v11)
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E250], *v12);
  }

  else
  {
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E250], *MEMORY[0x1E695E4C0]);
  }

  return 1;
}

void ___ZL28_LSDNCGetForbiddenCharactersj_block_invoke()
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD48]);
  [v6 addCharactersInRange:{0, 1}];
  v0 = [MEMORY[0x1E696AB08] illegalCharacterSet];
  [v6 formUnionWithCharacterSet:v0];

  v1 = [v6 copy];
  v2 = _LSDNCGetForbiddenCharacters::forbiddenWithoutNewlines;
  _LSDNCGetForbiddenCharacters::forbiddenWithoutNewlines = v1;

  v3 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  [v6 formUnionWithCharacterSet:v3];

  v4 = [v6 copy];
  v5 = _LSDNCGetForbiddenCharacters::forbiddenWithNewlines;
  _LSDNCGetForbiddenCharacters::forbiddenWithNewlines = v4;
}

void sub_18165AC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void ___ZL36_LSPlistLookUpIndexOfCompactedStringP8NSString_block_invoke()
{
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:256];
  for (i = 0; i != 256; ++i)
  {
    v1 = _LSPlistLookUpCompactedStringByIndex(i);
    if (v1)
    {
      v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      [v5 setObject:v2 forKeyedSubscript:v1];
    }
  }

  v3 = [v5 copy];
  v4 = _LSPlistLookUpIndexOfCompactedString(NSString *)::indexes;
  _LSPlistLookUpIndexOfCompactedString(NSString *)::indexes = v3;
}

void ___ZL36_LSPlistLookUpCompactedStringByIndexm_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] arrayWithCapacity:256];
  for (i = 0; i != 256; ++i)
  {
    v2 = v9;
    v3 = i;
    memset(v9, 0, sizeof(v9));
    do
    {
      *v2++ = _ZZZL36_LSPlistLookUpCompactedStringByIndexmEUb_E12characterSet[v3 & 0x3F];
      v4 = v3 > 0x3F;
      v3 >>= 6;
    }

    while (v4);
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    [v0 addObject:v5];
  }

  v6 = [v0 copy];
  v7 = _LSPlistLookUpCompactedStringByIndex(unsigned long)::strings;
  _LSPlistLookUpCompactedStringByIndex(unsigned long)::strings = v6;

  v8 = *MEMORY[0x1E69E9840];
}

void ___ZL24_LSPlistGetCommonStringsv_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DF70] array];
  [v1 addObject:@"UISupportedInterfaceOrientations"];
  [v1 addObject:@"com.apple.security.exception.mach-lookup.global-name"];
  [v1 addObject:@"UIInterfaceOrientationLandscapeRight"];
  [v1 addObject:@"UIInterfaceOrientationPortrait"];
  [v1 addObject:@"CFBundleInfoDictionaryVersion"];
  [v1 addObject:@"UIInterfaceOrientationLandscapeLeft"];
  [v1 addObject:@"CFBundleSupportedPlatforms"];
  [v1 addObject:@"CFBundleShortVersionString"];
  [v1 addObject:@"CFBundleDevelopmentRegion"];
  [v1 addObject:@"com.apple.private.security.container-required"];
  [v1 addObject:@"CFBundleNumericVersion"];
  [v1 addObject:@"BuildMachineOSBuild"];
  [v1 addObject:@"CFBundlePackageType"];
  [v1 addObject:@"com.apple.springboard.opensensitiveurl"];
  [v1 addObject:@"CFBundleExecutable"];
  [v1 addObject:@"CFBundleIdentifier"];
  [v1 addObject:@"UIRequiredDeviceCapabilities"];
  [v1 addObject:@"UIViewControllerBasedStatusBarAppearance"];
  [v1 addObject:@"DTPlatformVersion"];
  [v1 addObject:@"com.apple.security.exception.files.home-relative-path.read-write"];
  [v1 addObject:@"MinimumOSVersion"];
  [v1 addObject:@"com.apple.UIKit.vends-view-services"];
  [v1 addObject:@"CFBundleSignature"];
  [v1 addObject:@"CFBundleVersion"];
  [v1 addObject:@"DTPlatformBuild"];
  [v1 addObject:@"CanInheritApplicationStateFromOtherProcesses"];
  [v1 addObject:@"LSRequiresIPhoneOS"];
  [v1 addObject:@"DTPlatformName"];
  [v1 addObject:@"UIDeviceFamily"];
  [v1 addObject:@"com.apple.private.tcc.allow"];
  [v1 addObject:@"CFBundleDisplayName"];
  [v1 addObject:@"com.apple.private.coreservices.canmaplsdatabase"];
  [v1 addObject:@"com.apple.security.exception.shared-preference.read-write"];
  [v1 addObject:@"DTXcodeBuild"];
  [v1 addObject:@"UIViewServiceUsesNSXPCConnection"];
  [v1 addObject:@"UILaunchStoryboardName"];
  [v1 addObject:@"UIInterfaceOrientationPortraitUpsideDown"];
  [v1 addObject:@"com.apple.itunesstored.private"];
  [v1 addObject:@"com.apple.accounts.appleaccount.fullaccess"];
  [v1 addObject:@"com.apple.private.accounts.allaccounts"];
  [v1 addObject:@"CFBundleName"];
  [v1 addObject:@"DTCompiler"];
  [v1 addObject:@"DTSDKBuild"];
  [v1 addObject:@"keychain-access-groups"];
  [v1 addObject:@"CFBundlePrimaryIcon"];
  [v1 addObject:@"com.apple.locationd.effective_bundle"];
  [v1 addObject:@"com.apple.Contacts.database-allow"];
  [v1 addObject:@"DTSDKName"];
  [v1 addObject:@"com.apple.security.exception.files.absolute-path.read-write"];
  [v1 addObject:@"kTCCServiceAddressBook"];
  [v1 addObject:@"com.apple.CommCenter.fine-grained"];
  [v1 addObject:@"com.apple.coremedia.allow-protected-content-playback"];
  [v1 addObject:@"com.apple.springboard.openurlinbackground"];
  [v1 addObject:@"com.apple.private.canModifyAppLinkPermissions"];
  [v1 addObject:@"iPhoneOS"];
  [v1 addObject:@"com.apple.frontboard.launchapplications"];
  [v1 addObject:@"application-identifier"];
  [v1 addObject:@"SBMatchingApplicationGenres"];
  [v1 addObject:@"com.apple.private.tcc.allow.overridable"];
  [v1 addObject:@"UIBackgroundModes"];
  [v1 addObject:@"com.apple.security.exception.files.absolute-path.read-only"];
  [v1 addObject:@"com.apple.security.exception.files.home-relative-path.read-only"];
  [v1 addObject:@"com.apple.private.appleaccount.app-hidden-from-icloud-settings"];
  [v1 addObject:@"com.apple.telephonyutilities.callservicesdaemon.callprovidermanager"];
  [v1 addObject:@"DTXcode"];
  [v1 addObject:@"com.apple.QuartzCore.secure-mode"];
  [v1 addObject:@"platform-application"];
  [v1 addObject:@"com.apple.private.corerecents"];
  [v1 addObject:@"CFBundleIcons"];
  [v1 addObject:@"NSLocationWhenInUseUsageDescription"];
  [v1 addObject:@"kTCCServicePhotos"];
  [v1 addObject:@"com.apple.wifi.manager-access"];
  [v1 addObject:@"CFBundleURLTypes"];
  [v1 addObject:@"UIApplicationSystemWindowsSecureKey"];
  [v1 addObject:@"com.apple.telephonyutilities.callservicesd"];
  [v1 addObject:@"com.apple.private.MobileGestalt.AllowedProtectedKeys"];
  [v1 addObject:@"com.apple.private.canGetAppLinkInfo"];
  [v1 addObject:@"com.apple.managedconfiguration.profiled-access"];
  [v1 addObject:@"SBMachServices"];
  [v1 addObject:@"com.apple.coreaudio.allow-amr-decode"];
  [v1 addObject:@"com.apple.telephonyutilities.callservicesdaemon.callstatecontroller"];
  [v1 addObject:@"SBAppTags"];
  [v1 addObject:@"com.apple.authkit.client.internal"];
  [v1 addObject:@"kTCCServiceCamera"];
  [v1 addObject:@"com.apple.SystemConfiguration.SCPreferences-write-access"];
  [v1 addObject:@"UIRequiresFullScreen"];
  [v1 addObject:@"com.apple.private.suggestions.contacts"];
  [v1 addObject:@"com.apple.developer.icloud-services"];
  [v1 addObject:@"com.apple.authkit.client.private"];
  [v1 addObject:@"com.apple.developer.icloud-container-identifiers"];
  [v1 addObject:@"com.apple.coreduetd.allow"];
  [v1 addObject:@"com.apple.developer.ubiquity-kvstore-identifier"];
  [v1 addObject:@"com.apple.private.coreservices.canopenactivity"];
  [v1 addObject:@"com.apple.springboard.activateRemoteAlert"];
  [v1 addObject:@"NSUserActivityTypes"];
  [v1 addObject:@"kTCCServiceMediaLibrary"];
  [v1 addObject:@"com.apple.accounts.appleidauthentication.defaultaccess"];
  [v1 addObject:@"com.apple.developer.icloud-container-environment"];
  [v1 addObject:@"com.apple.private.assets.accessible-asset-types"];
  [v1 addObject:@"com.apple.private.imcore.imremoteurlconnection"];
  [v1 addObject:@"com.apple.springboard.launchapplications"];
  [v1 addObject:@"CAProcessCanAccessGPU"];
  [v1 addObject:@"kTCCServiceMicrophone"];
  [v1 addObject:@"_LSSupportsRemoval"];
  [v1 addObject:@"UIApplicationShortcutItems"];
  [v1 addObject:@"com.apple.private.suggestions"];
  [v1 addObject:@"com.apple.springboard.shortcutitems.customimage"];
  [v1 addObject:@"SBUninstallIconOverrideStringsFile"];
  [v1 addObject:@"kTCCServiceCalendar"];
  [v1 addObject:@"com.apple.private.persona.read"];
  [v1 addObject:@"com.apple.mobile.deleted.AllowFreeSpace"];
  [v1 addObject:@"com.apple.SystemConfiguration.SCDynamicStore-write-access"];
  [v1 addObject:@"com.apple.springboard.allowallcallurls"];
  [v1 addObject:@"com.apple.security.exception.shared-preference.read-only"];
  [v1 addObject:@"com.apple.security.application-groups"];
  [v1 addObject:@"SBIsLaunchableDuringSetup"];
  [v1 addObject:@"com.apple.private.webinspector.allow-remote-inspection"];
  [v1 addObject:@"com.apple.locationd.usage_oracle"];
  [v1 addObject:@"CFBundleAllowMixedLocalizations"];
  [v1 addObject:@"com.apple.private.game-center.bypass-authentication"];
  [v1 addObject:@"com.apple.avfoundation.allow-still-image-capture-shutter-sound-manipulation"];
  [v1 addObject:@"hidden"];
  [v1 addObject:@"com.apple.mobilemail.mailservices"];
  [v1 addObject:@"armv7"];
  [v1 addObject:@"com.apple.coretelephony.Identity.get"];
  [v1 addObject:@"com.apple.private.healthkit.medicaliddata"];
  [v1 addObject:@"com.apple.coreduetd.people"];
  [v1 addObject:@"com.apple.private.hsa-authentication-processing"];
  [v1 addObject:@"com.apple.private.mobileinstall.upgrade-enabled"];
  [v1 addObject:@"com.apple.private.corespotlight.internal"];
  [v1 addObject:@"com.apple.springboard.appbackgroundstyle"];
  [v1 addObject:@"com.apple.private.subscriptionservice.internal"];
  [v1 addObject:@"com.apple.private.bmk.allow"];
  [v1 addObject:@"com.apple.security.exception.iokit-user-client-class"];
  [v1 addObject:@"com.apple.private.lockdown.finegrained-get"];
  [v1 addObject:@"com.apple.private.mobileinstall.allowedSPI"];
  [v1 addObject:@"CoreSpotlightContinuation"];
  [v1 addObject:@"CoreSpotlightActions"];
  [v1 addObject:@"com.apple.accounts.facebook.defaultaccess"];
  [v1 addObject:@"com.apple.developer.pass-type-identifiers"];
  [v1 addObject:@"com.apple.locationd.authorizeapplications"];
  [v1 addObject:@"com.apple.private.network.socket-delegate"];
  [v1 addObject:@"com.apple.QuartzCore.global-capture"];
  [v1 addObject:@"com.apple.media.ringtones.read-only"];
  [v1 addObject:@"com.apple.managedconfiguration.profiled.configurationprofiles"];
  [v1 addObject:@"com.apple.coremedia.allow-mpeg4streaming"];
  [v1 addObject:@"com.apple.private.cloudkit.systemService"];
  [v1 addObject:@"com.apple.springboard.openurlswhenlocked"];
  [v1 addObject:@"SBIconVisibilitySetByAppPreference"];
  [v1 addObject:@"com.apple.private.launchservices.suppresscustomschemeprompt"];
  [v1 addObject:@"com.apple.private.corespotlight.search.internal"];
  [v1 addObject:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.lsd.iconscache/Library/Caches/com.apple.IconsCache/"];
  [v1 addObject:@"com.apple.developer.healthkit"];
  [v1 addObject:@"CFBundleDocumentTypes"];
  [v1 addObject:@"aps-connection-initiate"];
  [v1 addObject:@"com.apple.private.communicationsfilter"];
  [v1 addObject:@"com.apple.private.social.facebook.like"];
  [v1 addObject:@"com.apple.keystore.device"];
  [v1 addObject:@"com.apple.springboard.activateawayviewplugins"];
  [v1 addObject:@"com.apple.springboard.statusbarstyleoverrides"];
  [v1 addObject:@"fairplay-client"];
  [v1 addObject:@"UIStatusBarStyle"];
  [v1 addObject:@"com.apple.security.system-groups"];
  [v1 addObject:@"com.apple.visualvoicemail.client"];
  [v1 addObject:@"UIMainStoryboardFile"];
  [v1 addObject:@"com.apple.certificates"];
  [v1 addObject:@"com.apple.videoconference.allow-conferencing"];
  [v1 addObject:@"com.apple.appstored.xpc.updates"];
  [v1 addObject:@"com.apple.private.externalaccessory.showallaccessories"];
  [v1 addObject:@"com.apple.private.librarian.container-proxy"];
  [v1 addObject:@"*.pass.com.apple.itunes.storecredit"];
  [v1 addObject:@"access-call-providers"];
  [v1 addObject:@"com.apple.hsa-authentication-server"];
  [v1 addObject:@"NSPrincipalClass"];
  [v1 addObject:@"UTExportedTypeDeclarations"];
  [v1 addObject:@"com.apple.assistant.dictation.prerecorded"];
  [v1 addObject:@"com.apple.private.game-center"];
  [v1 addObject:@"com.apple.safari.credit-cards"];
  [v1 addObject:@"com.apple.CoreRoutine.LocationOfInterest"];
  [v1 addObject:@"com.apple.developer.ubiquity-container-identifiers"];
  [v1 addObject:@"com.apple.private.allow-explicit-graphics-priority"];
  [v1 addObject:@"com.apple.seld.tsmmanager"];
  [v1 addObject:@"com.apple.springboard.wallpaperAnimationSuspension"];
  [v1 addObject:@"com.apple.icloud.fmfd.access"];
  [v1 addObject:@"com.apple.nanosystemsettings"];
  [v1 addObject:@"com.apple.backboardd.launchapplications"];
  [v1 addObject:@"SKRespectApplicationUserInterfaceLayoutDirection"];
  [v1 addObject:@"com.apple.nfcd.hwmanager"];
  [v1 addObject:@"com.apple.private.healthkit.authorization_bypass"];
  [v1 addObject:@"SBAppUsesLocalNotifications"];
  [v1 addObject:@"com.apple.private.ids.messaging.urgent-priority"];
  [v1 addObject:@"com.apple.private.ids.messaging"];
  [v1 addObject:@"com.apple.private.persona.write"];
  [v1 addObject:@"com.apple.security.temporary-exception.mach-lookup.global-name"];
  [v1 addObject:@"com.apple.companionappd.connect.allow"];
  [v1 addObject:@"com.apple.icloud.findmydeviced.access"];
  [v1 addObject:@"com.apple.mediastream.mstreamd-access"];
  [v1 addObject:@"com.apple.private.security.no-sandbox"];
  [v1 addObject:@"com.apple.private.hid.client.service-protected"];
  [v1 addObject:@"unboundedTaskCompletion"];
  [v1 addObject:@"com.apple.TextInput.rdt.me"];
  [v1 addObject:@"com.apple.identities"];
  [v1 addObject:@"com.apple.private.alloy.passbook.provisioning"];
  [v1 addObject:@"kTCCServiceReminders"];
  [v1 addObject:@"com.apple.backboardd.hostCanRequireTouchesFromHostedContent"];
  [v1 addObject:@"com.apple.launchservices.receivereferrerrurl"];
  [v1 addObject:@"com.apple.private.accounts.customaccesssinfo"];
  [v1 addObject:@"com.apple.radios.plist"];
  [v1 addObject:@"com.apple.locationd.prompt_behavior"];
  [v1 addObject:@"/Library/Preferences/com.apple.mobilephone.speeddial.plist"];
  [v1 addObject:@"com.apple.avfoundation.allow-shallow-depth-of-field-effect"];
  [v1 addObject:@"com.apple.excludes-extensions"];
  [v1 addObject:@"com.apple.private.ubiquity-additional-kvstore-identifiers"];
  [v1 addObject:@"UIStatusBarHidden"];
  [v1 addObject:@"com.apple.familycircle.agent"];
  [v1 addObject:@"com.apple.icloud.fmfd"];
  [v1 addObject:@"com.apple.mobile.keybagd.xpc"];
  [v1 addObject:@"com.apple.payment.all-access"];
  [v1 addObject:@"UIApplicationShortcutItemsVersion"];
  [v1 addObject:@"com.apple.bulletinboard.utilities"];
  [v1 addObject:@"com.apple.notificationcenter.widgetcontrollerhascontent"];
  [v1 addObject:@"com.apple.private.cloudkit.setEnvironment"];
  [v1 addObject:@"UIApplicationShortcutWidget"];
  [v1 addObject:@"com.apple.private.healthkit"];
  [v1 addObject:@"com.apple.cards.all-access"];
  [v1 addObject:@"com.apple.managedconfiguration.profiled"];
  [v1 addObject:@"com.apple.springboard.activateassistant"];
  [v1 addObject:@"com.apple.keystore.stash.access"];
  [v1 addObject:@"com.apple.routined.registration"];
  [v1 addObject:@"SBStarkCapable"];
  [v1 addObject:@"com.apple.mobilesafari"];
  [v1 addObject:@"/Media/PhotoData/"];
  [v1 addObject:@"UIBackgroundStyle"];
  [v1 addObject:@"/private/var/mobile/Library/Preferences/com.apple.restrictionspassword.plist"];
  [v1 addObject:@"DataProtectionClass"];
  [v1 addObject:@"SBIconVisibilityDefaultVisible"];
  [v1 addObject:@"UIStatusBarTintParameters"];
  [v1 addObject:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/CloudConfigurationDetails.plist"];
  [v1 addObject:@"com.apple.intents.extension.discovery"];
  [v1 addObject:@"com.apple.private.healthkit.authorization_manager"];
  [v1 addObject:@"com.apple.passes.add-silently"];
  [v1 addObject:@"com.apple.private.tcc.manager"];
  [v1 addObject:@"com.apple.developer.extension-host.photo-editing"];
  [v1 addObject:@"com.apple.homekit.private-spi-access"];
  [v1 addObject:@"com.apple.nano.nanoregistry.pairunpairobliterate"];
  [v1 addObject:@"com.apple.private.suggestions.events"];
  [v1 addObject:@"com.apple.springboard.allowIconVisibilityChanges"];
  [v1 addObject:@"com.apple.private.ids.idquery-cache"];
  [v1 addObject:@"com.apple.private.ind.client"];
  [v1 addObject:@"continuous"];
  [v1 addObject:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/MDMAppManagement.plist"];
  [v1 addObject:@"SBLaunchSuspendedAlways"];
  [v1 addObject:@"com.apple.private.can-load-any-content-blocker"];
  [v1 addObject:@"com.apple.springboard.setWantsLockButtonEvents"];
  [v1 addObject:@"com.apple.NPKCompanionAgent.client"];
  [v1 addObject:@"seatbelt-profiles"];
  [v1 addObject:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/UserSettings.plist"];
  v2 = [v1 copy];

  objc_autoreleasePoolPop(v0);
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v2];
    v4 = _LSPlistGetCommonStrings(void)::result;
    _LSPlistGetCommonStrings(void)::result = v3;
  }

  if (!_LSPlistGetCommonStrings(void)::result)
  {
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___ZL24_LSPlistGetCommonStringsv_block_invoke_cold_1(v5);
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    v7 = _LSPlistGetCommonStrings(void)::result;
    _LSPlistGetCommonStrings(void)::result = v6;
  }
}

Boolean FSEventStreamSetExclusionPaths(FSEventStreamRef streamRef, CFArrayRef pathsToExclude)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!*(streamRef + 188))
  {
    Count = CFArrayGetCount(pathsToExclude);
    *(streamRef + 12) = Count;
    if (!Count || Count > 8)
    {
      result = 0;
      *(streamRef + 12) = 0;
      goto LABEL_15;
    }

    if (Count < 1)
    {
LABEL_13:
      result = 1;
      goto LABEL_15;
    }

    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(pathsToExclude, v6);
      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(ValueAtIndex) || !CFStringGetFileSystemRepresentation(ValueAtIndex, buffer, 1024))
      {
        break;
      }

      if (*(streamRef + 16) || !fsevent_realpath(buffer, __s1))
      {
        __strlcpy_chk();
      }

      *(streamRef + v6++ + 13) = strdup(__s1);
      if (*(streamRef + 12) <= v6)
      {
        goto LABEL_13;
      }
    }
  }

  result = 0;
LABEL_15:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

char *fsevent_realpath(const char *a1, char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = xmmword_1817E89B0;
  memset(v8, 0, 512);
  v6 = 0;
  v7 = 32;
  DWORD1(v5) = 0x80000000;
  if (getattrlist(a1, &v5, v8, 0x420uLL, 0x20u) == -1)
  {
    a2 = 0;
  }

  else if (a2)
  {
    strlcpy(a2, &v8[1] + SDWORD2(v8[1]) + 8, 0x400uLL);
  }

  else
  {
    a2 = &v8[1] + SDWORD2(v8[1]) + 8;
  }

  v3 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t FSEvents_connect()
{
  pthread_mutex_lock(&FSEvents_f2d_public_port_mutex);
  if (FSEvents_f2d_public_port)
  {
    pthread_mutex_unlock(&FSEvents_f2d_public_port_mutex);
    return 0;
  }

  else
  {
    v1 = *MEMORY[0x1E69E99F8];
    v0 = bootstrap_look_up2();
    pthread_mutex_unlock(&FSEvents_f2d_public_port_mutex);
    if (v0)
    {
      v2 = fsevent_default_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        FSEvents_connect_cold_1();
      }
    }
  }

  return v0;
}

uint64_t register_with_server(uint64_t a1, uint64_t a2, int a3, int a4, int a5, const void **a6, uint64_t a7, uint64_t a8, int a9, _DWORD *a10)
{
  v17 = FSEvents_connect();
  if (v17)
  {
    return v17;
  }

  v66 = a7;
  v19 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
  if (v19)
  {
    v20 = v19;
    v67 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
    if (v67)
    {
      v62 = a8;
      v63 = a3;
      v65 = a4;
      v21 = a5;
      if (a5 < 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        v23 = a5;
        v24 = a6;
        v25 = v20;
        do
        {
          v26 = *v24++;
          v27 = strlen(v26);
          *v25++ = v27;
          v22 += v27;
          --v23;
        }

        while (v23);
      }

      v30 = v22 + a5;
      v31 = malloc_type_malloc(v22 + a5, 0xBF49D592uLL);
      if (!v31)
      {
        v46 = fsevent_default_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          register_with_server_cold_5();
        }

        v47 = 0;
        v40 = 0;
        v17 = 4294967293;
        goto LABEL_49;
      }

      v64 = v30;
      v61 = v20;
      v32 = 0;
      if (a5 >= 1)
      {
        v33 = v67;
        v34 = v20;
        do
        {
          *v33++ = v32;
          v35 = *v34++;
          v36 = v35 + 1;
          v37 = *a6++;
          memcpy(&v31[v32], v37, v36);
          v32 += v36;
          --v21;
        }

        while (v21);
      }

      v38 = v64;
      if (v32 != v64)
      {
        v39 = fsevent_default_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          register_with_server_cold_1();
        }
      }

      v40 = *(a1 + 96);
      v41 = v65;
      if (v40)
      {
        if (v40 < 1)
        {
          v42 = 0;
          v20 = v61;
        }

        else
        {
          v42 = 0;
          v43 = (a1 + 104);
          v44 = *(a1 + 96);
          v20 = v61;
          do
          {
            v45 = *v43++;
            v42 += strlen(v45) + 1;
            --v44;
          }

          while (v44);
        }

        v49 = malloc_type_malloc(4 * v40, 0x100004052888210uLL);
        if (!v49)
        {
          v58 = fsevent_default_log();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            register_with_server_cold_3();
          }

          v47 = 0;
          v40 = 0;
          v17 = 4294967292;
          goto LABEL_49;
        }

        v47 = v49;
        v50 = malloc_type_malloc(v42, 0x6F28CA70uLL);
        if (!v50)
        {
          v59 = fsevent_default_log();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            register_with_server_cold_2();
          }

          v40 = 0;
          v17 = 4294967291;
          goto LABEL_49;
        }

        v40 = v50;
        v48 = *(a1 + 96);
        if (v48 >= 1)
        {
          v60 = v31;
          v51 = 0;
          v52 = v50;
          v53 = 0;
          v54 = a1 + 104;
          do
          {
            v47[v51] = v53;
            v55 = strlen(*(v54 + 8 * v51));
            v56 = v55 + 1;
            memcpy(&v52[v53], *(v54 + 8 * v51), v55 + 1);
            v53 += v56;
            ++v51;
            v48 = *(a1 + 96);
          }

          while (v48 > v51);
          v20 = v61;
          v41 = v65;
          v40 = v52;
          v31 = v60;
        }

        v38 = v64;
      }

      else
      {
        LODWORD(v48) = 0;
        v47 = 0;
        LODWORD(v42) = 0;
        v20 = v61;
      }

      v17 = f2d_register_rpc(FSEvents_f2d_public_port, v63, v41, a5, v67, a5, v31, v38, v48, v47, v48, v40, v42, v62, a9, v66, a10);
      if (v17)
      {
        v57 = fsevent_default_log();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          register_with_server_cold_4();
        }
      }

LABEL_49:
      free(v20);
      free(v67);
      if (v31)
      {
        free(v31);
      }

      if (v47)
      {
        free(v47);
      }

      if (v40)
      {
        free(v40);
      }

      return v17;
    }

    v29 = fsevent_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      register_with_server_cold_6();
    }

    free(v20);
    return 4294967294;
  }

  else
  {
    v28 = fsevent_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      register_with_server_cold_7();
    }

    return 0xFFFFFFFFLL;
  }
}

id LaunchServices::TypeEvaluation::State::getExtension(LaunchServices::TypeEvaluation::State *this)
{
  v1 = *(this + 3);
  if (v1 || ([*(this + 1) extensionWithError:0], v3 = objc_claimAutoreleasedReturnValue(), v4 = *(this + 3), *(this + 3) = v3, v4, (v1 = *(this + 3)) != 0))
  {
    if ([v1 length])
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t f2d_register_rpc(int a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9, uint64_t a10, int a11, uint64_t a12, int a13, uint64_t a14, int a15, uint64_t a16, _DWORD *a17)
{
  v49 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[24] = 5;
  *&msg[28] = a2;
  v25 = 1310720;
  v26 = a5;
  v27 = 16777472;
  v28 = 4 * a6;
  v29 = a7;
  v30 = 16777472;
  v31 = a8;
  v32 = a10;
  v33 = 16777472;
  v34 = 4 * a11;
  v35 = a12;
  v36 = 16777472;
  v37 = a13;
  v38 = *MEMORY[0x1E69E99E0];
  v39 = a3;
  v40 = a4;
  v41 = a6;
  v42 = a8;
  v43 = a9;
  v44 = a11;
  v45 = a13;
  v46 = a14;
  v47 = a15;
  v48 = a16;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x101D000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v19 = *&msg[12];
  }

  else
  {
    v19 = special_reply_port;
  }

  v20 = mach_msg(msg, 3162115, 0xA0u, 0x30u, v19, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) > 0xE || ((1 << (v20 - 2)) & 0x4003) == 0)
  {
    if (!v20)
    {
      if (*&msg[20] == 71)
      {
        v21 = 4294966988;
      }

      else if (*&msg[20] == 66100)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v21 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v21 = 4294966996;
              }

              else
              {
                v21 = *&msg[32];
              }
            }
          }

          else
          {
            v21 = 4294966996;
          }

          goto LABEL_24;
        }

        v21 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 40 && !*&msg[8] && HIWORD(v25) << 16 == 1114112)
        {
          v21 = 0;
          *a17 = *&msg[28];
          goto LABEL_25;
        }
      }

      else
      {
        v21 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(msg);
      goto LABEL_25;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_25:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void resume_source(NSObject *a1, int *a2)
{
  if (a1)
  {
    v3 = *a2;
    if (*a2)
    {
      if (v3 == 2)
      {
        dispatch_resume(a1);
      }

      else if (v3 == 1)
      {
        dispatch_activate(a1);
      }

      *a2 = 3;
    }
  }
}

uint64_t _UTTypeGetActiveIdentifierForTag(void *a1, const __CFString *a2, const __CFString *a3, int a4, uint64_t a5)
{
  v9 = a1;
  v10 = v9;
  v11 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (v9 && a2 && a3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___UTTypeGetActiveIdentifierForTag_block_invoke;
    v13[3] = &unk_1E6A1EEC0;
    v17 = a4;
    v14 = v9;
    v15 = &v18;
    v16 = a5;
    _UTEnumerateTypesForTag(v14, a2, a3, v13);

    v11 = v19[3];
  }

  _Block_object_dispose(&v18, 8);

  return v11;
}

void sub_18165D0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Boolean FSEventStreamStart(FSEventStreamRef streamRef)
{
  if (!streamRef)
  {
    v4 = fsevent_default_log();
    v3 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    FSEventStreamStart_cold_3();
    goto LABEL_20;
  }

  if (*(streamRef + 188))
  {
    v2 = fsevent_default_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    FSEventStreamStart_cold_1();
    goto LABEL_20;
  }

  if (!*(streamRef + 27) && !*(streamRef + 45))
  {
    v8 = fsevent_default_log();
    v3 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    FSEventStreamStart_cold_2();
    goto LABEL_20;
  }

  v5 = *(streamRef + 46);
  if ((v5 & 4) != 0 && !*(streamRef + 54) && !*(streamRef + 52) && !*(streamRef + 53))
  {
LABEL_20:
    LOBYTE(v3) = 0;
    return v3;
  }

  if (!*(streamRef + 49))
  {
    if (!register_with_server(streamRef, "FSEventStreamStart", *(streamRef + 48), *(streamRef + 16), *(streamRef + 18), *(streamRef + 10), *(streamRef + 21), *(streamRef + 22), v5, streamRef + 49))
    {
      *(streamRef + 188) = 1;
      if (*(streamRef + 27))
      {
        context.version = 0;
        context.info = streamRef;
        context.retain = _FSEventStreamRetainAndReturnSelf;
        context.release = FSEventStreamRelease;
        context.copyDescription = FSEventStreamCopyDescription;
        v9 = CFMachPortCreateWithPort(0, *(streamRef + 49), FSEventsClientPortCallback, &context, 0);
        *(streamRef + 26) = v9;
        CFMachPortSetInvalidationCallBack(v9, server_gone_callback);
      }

      else
      {
        v10 = *(streamRef + 45);
        if (v10)
        {
          resume_source(v10, streamRef + 92);
          if (create_f2d_private_port_source(streamRef))
          {
            resume_source(*(streamRef + 47), streamRef + 96);
          }
        }
      }

      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_14:
  v6 = *(streamRef + 52);
  if (v6)
  {
    CFFileDescriptorEnableCallBacks(v6, 1uLL);
  }

  v7 = *(streamRef + 54);
  if (v7)
  {
    resume_source(v7, streamRef + 110);
  }

  LOBYTE(v3) = 1;
  return v3;
}

BOOL create_f2d_private_port_source(uint64_t a1)
{
  v2 = *(a1 + 196);
  v3 = dispatch_source_create(MEMORY[0x1E69E96E0], v2, 1uLL, *(a1 + 352));
  if (v3)
  {
    FSEventStreamRetain(a1);
    dispatch_set_qos_class_fallback();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __create_f2d_private_port_source_block_invoke;
    handler[3] = &__block_descriptor_tmp_54;
    handler[4] = a1;
    dispatch_source_set_event_handler(v3, handler);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __create_f2d_private_port_source_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_55;
    v6 = v2;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_source_set_cancel_handler(v3, v5);
    *(a1 + 376) = v3;
    *(a1 + 384) = 1;
  }

  return v3 != 0;
}

void _UTEnumerateTypesForTag(void *a1, const __CFString *a2, const __CFString *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (a2)
    {
      if (a3)
      {
        if (v8)
        {
          StringForCFString = _LSDatabaseGetStringForCFString(v7, a2, 1);
          if (StringForCFString)
          {
            BindingMapIndex = _LSDatabaseFindBindingMapIndex(v7, StringForCFString);
            if (BindingMapIndex != -1)
            {
              v12 = [(_LSDatabase *)v7 schema];
              if (_LSDatabaseGetStringForCFString(v7, a3, *(v12 + 104 * BindingMapIndex + 220)))
              {
                v13 = v7;
                v14 = v9;
                _LSDatabaseEnumeratingBindingMap(v13);
              }
            }
          }
        }
      }
    }
  }
}

void FSEventStreamRetain(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    atomic_fetch_add(streamRef, 1u);
  }

  else
  {
    v1 = fsevent_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamRetain_cold_1();
    }
  }
}

uint64_t _LSDatabaseFindBindingMapIndex(char *a1, int a2)
{
  v3 = 0;
  v4 = a1 + 48;
  if (!a1)
  {
    v4 = 0;
  }

  v5 = (v4 + 216);
  while (1)
  {
    a1 = a1;
    v6 = *v5;
    v5 += 26;
    if (v6 == a2)
    {
      break;
    }

    if (++v3 == 14)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t _UTTypeGetPedigreeInternal(id *a1, int a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = *(a3 + 12);
  [(_LSDatabase *)*a1 store];
  v8 = _CSStringCopyCFString();
  if (v8)
  {
    [v6 addObject:v8];
  }

  v9 = *a1;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = ___UTTypeGetPedigreeInternal_block_invoke;
  v16 = &unk_1E6A1EF88;
  v18 = a1;
  v10 = v6;
  v17 = v10;
  _UTTypeSearchConformsToTypesCommon(v9, a2, -1, _UTTypeSearchConformsToTypesWithBlock::$_0::__invoke, &v13, 0);
  v11 = [v10 copy];

  return v11;
}

void sub_18165DB8C(void *exc_buf)
{
  objc_begin_catch(exc_buf);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_18165DBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

__n128 std::__optional_storage_base<LaunchServices::TypeEvaluator::Result,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LaunchServices::TypeEvaluator::Result,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      *a1 = *a2;
      v4 = *(a2 + 16);
      *(a2 + 16) = 0;
      v5 = *(a1 + 16);
      *(a1 + 16) = v4;

      *(a1 + 24) = *(a2 + 24);
    }
  }

  else if (*(a1 + 32))
  {

    *(a1 + 32) = 0;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
    v7 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a1 + 16) = v7;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = 1;
  }

  return result;
}

id LaunchServices::TypeEvaluator::Result::getTypeIdentifier(LaunchServices::TypeEvaluator::Result *this, LSContext *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 12);
    [(_LSDatabase *)a2->db store];
    v4 = _CSStringCopyCFString();
  }

  else
  {
    v4 = *(this + 2);
  }

  return v4;
}

uint64_t _UTTypeSearchConformsToTypesWithBlock::$_0::__invoke(uint64_t a1)
{
  v2 = 0;
  (*(*(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), &v2);
  return v2;
}

BOOL _LSURLPropertiesNeedReplacement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:*MEMORY[0x1E695E268]];
  v2 = v1 != 0;

  return v2;
}

Boolean UTTypeConformsTo(CFStringRef inUTI, CFStringRef inConformsToUTI)
{
  v2 = 0;
  if (inUTI && inConformsToUTI)
  {
    if (inUTI == inConformsToUTI || off_1EEF61AE0(inUTI, inConformsToUTI))
    {
      return 1;
    }

    else if (_LSCurrentProcessMayMapDatabase() && _UTTypeIdentifierIsDeclarable(inUTI) && _UTTypeIdentifierIsDeclarable(inConformsToUTI))
    {
      v7 = 0;
      if (_LSContextInit(&v7))
      {
        v2 = 0;
      }

      else
      {
        v6 = 0;
        if (_UTGetActiveTypeForCFStringIdentifier(v7, inUTI, &v6 + 1) && _UTGetActiveTypeForCFStringIdentifier(v7, inConformsToUTI, &v6))
        {
          v2 = _UTTypeConformsTo(v7, SHIDWORD(v6), v6);
        }

        else
        {
          v2 = 0;
        }

        _LSContextDestroy(&v7);
      }
    }

    else
    {
      return [UTTypeRecord _typeIdentifier:inUTI conformsToTypeIdentifier:inConformsToUTI];
    }
  }

  return v2;
}

uint64_t LaunchServices::URLPropertyProvider::prepareLocalizedNameDictionaryValue(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v41[1] = *MEMORY[0x1E69E9840];
  if ([a2 canIssueIO])
  {
    v10 = [_LSDisplayNameConstructor displayNameConstructorsWithContextIfNeeded:a1 node:a2 error:a6];
    if (!v10)
    {
      v18 = 0;
      goto LABEL_11;
    }

    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = v12;
    if (v11)
    {
      if (v12)
      {
LABEL_5:
        v33 = MEMORY[0x1E69E9820];
        v34 = 3221225472;
        v35 = ___ZN14LaunchServices19URLPropertyProviderL35prepareLocalizedNameDictionaryValueERNS_8Database7ContextEPU34objcproto23FSNodePropertyProviding11objc_objectP11__FileCachePK10__CFStringPNS0_5StateEPU15__autoreleasingP7NSError_block_invoke;
        v36 = &unk_1E6A1E5C0;
        v39 = a1;
        v14 = v11;
        v37 = v14;
        v15 = v13;
        v38 = v15;
        [v10 enumerateKeysAndObjectsUsingBlock:&v33];
        v16 = [v14 copy];
        MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E378], v16);

        v17 = [v15 copy];
        MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E380], v17);

        v18 = 1;
        goto LABEL_11;
      }
    }

    else
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean LaunchServices::prepareLocalizedNameDictionaryValue(Context &, __unsafe_unretained id<FSNodePropertyProviding>, _CFURLFileCacheRef, CFStringRef, State *, NSError *__autoreleasing *)"}];
      [v29 handleFailureInFunction:v30 file:@"LSURLPropertyProvider.mm" lineNumber:828 description:@"Failed to create localized name dictionary."];

      if (v13)
      {
        goto LABEL_5;
      }
    }

    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean LaunchServices::prepareLocalizedNameDictionaryValue(Context &, __unsafe_unretained id<FSNodePropertyProviding>, _CFURLFileCacheRef, CFStringRef, State *, NSError *__autoreleasing *)"}];
    [v31 handleFailureInFunction:v32 file:@"LSURLPropertyProvider.mm" lineNumber:829 description:@"Failed to create localized name dictionary."];

    goto LABEL_5;
  }

  v19 = _LSDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LaunchServices::URLPropertyProvider::prepareLocalizedNameDictionaryValue(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  if (!a6)
  {
    v18 = 0;
    goto LABEL_12;
  }

  v40 = *MEMORY[0x1E696A278];
  v41[0] = @"can't provide with mimic";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "prepareLocalizedNameDictionaryValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 817);
  *a6 = v18 = 0;
LABEL_11:

LABEL_12:
  v27 = *MEMORY[0x1E69E9840];
  return v18;
}

_DWORD *_LSBindingListGetEntryAtIndex(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = a1;
  [(_LSDatabase *)v4 store];
  v5 = *([(_LSDatabase *)v4 schema]+ 1596);
  Unit = CSStoreGetUnit();
  if (*Unit <= a3)
  {
    i = 0;
  }

  else
  {
    for (i = Unit + 1; a3; --a3)
    {
      i += i[1] + 2;
    }
  }

  return i;
}

void ___ZN14LaunchServices19URLPropertyProviderL13prepareValuesEPK7__CFURLP11__FileCachePKPK10__CFStringPPKvlSC_PP9__CFError_block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 | v8)
  {
    if (v7)
    {
      v10 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695E268]];
      v11 = v10 != 0;

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___ZN14LaunchServices19URLPropertyProviderL13prepareValuesEPK7__CFURLP11__FileCachePKPK10__CFStringPPKvlSC_PP9__CFError_block_invoke_3;
      v13[3] = &__block_descriptor_41_e25_v32__0__NSString_8_16_B24l;
      v14 = v11;
      v13[4] = a1[6];
      [v7 enumerateKeysAndObjectsUsingBlock:v13];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___ZN14LaunchServices19URLPropertyProviderL13prepareValuesEPK7__CFURLP11__FileCachePKPK10__CFStringPPKvlSC_PP9__CFError_block_invoke_4;
    v12[3] = &__block_descriptor_40_e22_v24__0__NSString_8_B16l;
    v12[4] = a1[6];
    [v8 enumerateObjectsUsingBlock:v12];
    *(*(a1[4] + 8) + 24) = 1;
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 0;
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
  }
}

void ___ZN14LaunchServices19URLPropertyProviderL13prepareValuesEPK7__CFURLP11__FileCachePKPK10__CFStringPPKvlSC_PP9__CFError_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 40) == 1)
  {
    v7 = _LSReplaceURLPropertyValueForDecoding(v5);

    v6 = v7;
  }

  MEMORY[0x1865D5CD0](*(a1 + 32), v8, v6);
}

uint64_t (*_LSGetBRDisplayNameForSideFaultFileNode(void *a1))(const __CFURL *)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_7;
  }

  if (![v1 isSideFault])
  {
    goto LABEL_7;
  }

  v3 = [v2 URL];

  if (!softLinkBRCopyRepresentedFileNameForFaultFileURL[0])
  {
    goto LABEL_7;
  }

  v4 = softLinkBRCopyRepresentedFileNameForFaultFileURL[0](v3);
  if (v4 && (_NSIsNSString() & 1) == 0)
  {

LABEL_7:
    v4 = 0;
  }

  return v4;
}

uint64_t _LSExtensionPointFindWithIdentifier(void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6)
{
  v11 = a1;
  StringForCFString = _LSDatabaseGetStringForCFString(v11, a2, 0);
  v13 = _LSExtensionPointFindWithStringID(v11, StringForCFString, a3, a4, a5, a6);

  return v13;
}

uint64_t _UTTypeGetBundleBaseData(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = *(a2 + 20);
  if ((*(a2 + 9) & 0x20) != 0)
  {
    v6 = _LSGetPlugin(v3, v5);
  }

  else
  {
    v6 = _LSBundleGet(v3, v5);
  }

  v7 = v6;

  return v7;
}

uint64_t _LSDNCGetBundleClass(id *a1, void *a2, int a3, _DWORD *a4, void *a5)
{
  v9 = a2;
  if (!a3)
  {
    v12 = _LSGetBundleClassForNode(0, v9);
    goto LABEL_5;
  }

  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (v11)
  {
    v12 = _LSGetBundleClassForNode(v11, v9);
LABEL_5:
    *a4 = v12;
    v13 = 1;
    goto LABEL_6;
  }

  if (a5)
  {
    v15 = +[_LSDServiceDomain defaultServiceDomain];
    v16 = LaunchServices::Database::Context::_get(a1, v15, 0);

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = a1[3];
    }

    v13 = 0;
    *a5 = v17;
  }

  else
  {
    v13 = 0;
  }

LABEL_6:

  return v13;
}

uint64_t _LSCheckEntitlementForXPCConnection(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (!_LSCheckEntitlementForXPCConnectionQuiet(v3, a2))
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      pid = xpc_connection_get_pid(v4);
      v11 = 2114;
      v12 = a2;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Connection from process %llu does not have the required entitlement %{public}@", &v9, 0x16u);
    }

    goto LABEL_7;
  }

  v5 = 1;
LABEL_8:

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

BOOL _LSCheckEntitlementForXPCConnectionQuiet(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = _LSCopyEntitlementValueForXPCConnection(v3, a2);
    v6 = v5;
    if (v5)
    {
      v7 = _LSGetBooleanValueForEntitlementValue(v5, 0);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _LSCopyEntitlementValueForXPCConnection(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    v5 = objc_autoreleasePoolPush();
    if (![a2 UTF8String])
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"xpc_object_t _LSCopyEntitlementValueForXPCConnection(__strong xpc_connection_t, CFStringRef)"}];
      [v7 handleFailureInFunction:v8 file:@"LSEntitlements.mm" lineNumber:1010 description:{@"Couldn't get C string from entitlement name '%@'", a2}];
    }

    v4 = xpc_connection_copy_entitlement_value();
    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

CFStringRef UTTypeCopyPreferredTagWithClass(CFStringRef inUTI, CFStringRef inTagClass)
{
  v2 = UTTypeCopyAllTagsWithClass(inUTI, inTagClass);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFArrayGetCount(v2) < 1)
  {
    v5 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
    v5 = CFRetain(ValueAtIndex);
  }

  CFRelease(v3);
  return v5;
}

CFArrayRef UTTypeCopyAllTagsWithClass(CFStringRef inUTI, CFStringRef inTagClass)
{
  v2 = 0;
  if (inUTI && inTagClass)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [UTTypeRecord typeRecordWithIdentifier:inUTI];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 tagSpecification];
      v9 = objc_opt_class();
      v2 = [v8 objectForKey:inTagClass ofClass:v9 valuesOfClass:objc_opt_class()];

      if (v2)
      {
        v10 = v2;
      }
    }

    else
    {
      v2 = 0;
    }

    objc_autoreleasePoolPop(v5);
  }

  return v2;
}

void ___ZN14LaunchServices6RecordL18getNullPlaceholderEv_block_invoke()
{
  v0 = objc_alloc_init(__LSRECORD_NULL_PLACEHOLDER__);
  v1 = LaunchServices::Record::getNullPlaceholder(void)::result;
  LaunchServices::Record::getNullPlaceholder(void)::result = v0;
}

unint64_t _LSDBEnumeratorGetNextObject(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0;
  if (*(a1 + 80))
  {
    goto LABEL_19;
  }

  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get((a1 + 32), v2, 0);

  if (!v3)
  {
    v14 = +[_LSDServiceDomain defaultServiceDomain];
    v15 = LaunchServices::Database::Context::_get((a1 + 32), v14, 0);

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(a1 + 56);
    }

    _LSEnumeratorFireErrorHandler(a1, v16);

LABEL_19:
    if (*(a1 + 80))
    {
      result = 0;
    }

    else
    {
      *(a1 + 80) |= 1u;
      *(a1 + 64) = -1;
      v17 = a1 + 32;
      if (*v17 && *(v17 + 16) == 1)
      {
        _LSContextDestroy(*v17);
      }

      v18 = *(v17 + 8);
      *v17 = 0;
      *(v17 + 8) = 0;

      *(v17 + 16) = 0;
      v19 = *(v17 + 24);
      *(v17 + 24) = 0;

      result = v22;
    }

    goto LABEL_25;
  }

  if (!_LSDBEnumeratorPrepareIfNeeded(a1))
  {
    goto LABEL_19;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 64);
  *&v4 = 138478083;
  v21 = v4;
  do
  {
    v7 = objc_autoreleasePoolPush();
    v8 = _LSEnumeratorLog;
    if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = v21;
      v24 = a1;
      v25 = 2048;
      v26 = v6;
      _os_log_debug_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEBUG, "Enumerator %{private}@ iteration %llu", buf, 0x16u);
    }

    v9 = [a1 _getObject:&v22 atIndex:v6 context:{v3, v21}];
    if (v22 && v5 && ((*(v5 + 16))(v5) & 1) == 0)
    {
      v10 = v22;
      v22 = 0;
    }

    objc_autoreleasePoolPop(v7);
    v11 = v6 + 1;
    result = v22;
    v13 = (v22 | (((v6 == -1) << 63) >> 63) ^ (v6 == -1)) == 0;
    ++v6;
  }

  while ((v13 & v9 & 1) != 0);
  *(a1 + 64) = v11;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _LSDBEnumeratorPrepareIfNeeded(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 80) & 2) == 0)
  {
    *(a1 + 80) |= 2u;
    if (*(a1 + 64))
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _LSDBEnumeratorPrepareIfNeeded(_LSDBEnumerator *const __strong _Nonnull)"];
      [v14 handleFailureInFunction:v15 file:@"LSEnumerator.mm" lineNumber:226 description:@"Need to prepare after first iteration. This should not be possible."];
    }

    v2 = objc_autoreleasePoolPush();
    v3 = +[_LSDServiceDomain defaultServiceDomain];
    v4 = LaunchServices::Database::Context::_get((a1 + 32), v3, 0);

    if (v4)
    {
      v16 = 0;
      v5 = [a1 _prepareWithContext:v4 error:&v16];
      v6 = v16;
      v7 = _LSEnumeratorLog;
      if (v5)
      {
        if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG))
        {
          _LSDBEnumeratorPrepareIfNeeded_cold_2(a1, v7);
        }

        *(a1 + 80) |= 4u;
      }

      else
      {
        if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_ERROR))
        {
          _LSDBEnumeratorPrepareIfNeeded_cold_1();
        }

        _LSEnumeratorFireErrorHandler(a1, v6);
      }
    }

    else
    {
      v8 = _LSEnumeratorLog;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = LaunchServices::Database::Context::error((a1 + 32));
        _LSDBEnumeratorPrepareIfNeeded_cold_3(a1, v9, buf, v8);
      }

      v10 = +[_LSDServiceDomain defaultServiceDomain];
      v11 = LaunchServices::Database::Context::_get((a1 + 32), v10, 0);

      if (v11)
      {
        v6 = 0;
      }

      else
      {
        v6 = *(a1 + 56);
      }

      _LSEnumeratorFireErrorHandler(a1, v6);
    }

    objc_autoreleasePoolPop(v2);
  }

  v12 = *MEMORY[0x1E69E9840];
  return (*(a1 + 80) >> 2) & 1;
}

uint64_t _UTGetLocalizedDescription(void *a1, int a2)
{
  v3 = a1;
  v7 = 0;
  v4 = objc_autoreleasePoolPush();
  _UTTypeSearchConformsToTypesCommon(v3, a2, 32, _UTGetLocalizedDescriptionImpl, &v7, 0);
  objc_autoreleasePoolPop(v4);
  v5 = v7;

  return v5;
}

BOOL _UTGetLocalizedDescriptionImpl(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v15 = &v17;
  v16 = v2;
  v17 = a1;
  v4 = v1;
  v5 = v4;
  if (*(v3 + 24))
  {
    v18[0] = &v15;
    v6 = v4;
    v7 = v6;
    if (*(v3 + 10))
    {
      [(_LSDatabase *)v6 store];
      v9 = *(v3 + 24);
      if (_CSArrayGetCount() != 1)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void LaunchServices::UTTypeEnumerateFlavoredDisplayNames(__strong LSDatabaseRef, const _UTTypeData *, const F &) [F = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/UTTypeCore.mm:159:55)]"}];
        [(_LSDatabase *)v7 store];
        v14 = *(v3 + 24);
        [v12 handleFailureInFunction:v13 file:@"UTTypeCore.mm" lineNumber:143 description:{@"bogus array in %s, %zu elements", "UTTypeEnumerateFlavoredDisplayNames", _CSArrayGetCount()}];
      }

      [(_LSDatabase *)v7 store];
      v10 = *(v3 + 24);
      v18[1] = MEMORY[0x1E69E9820];
      v18[2] = 3221225472;
      v18[3] = ___ZN14LaunchServicesL35UTTypeEnumerateFlavoredDisplayNamesIZNS_L54UTTypeEnumerateAvailableAndPresentFlavoredDisplayNamesIZL30_UTGetLocalizedDescriptionImplPK16UTTypeSearchInfoE3__0EEvP11_LSDatabasePK11_UTTypeDataRKT_EUljRKNS_23UTTypeDisplayNameFlavorEPhE_EEvS7_SA_SD__block_invoke;
      v18[4] = &__block_descriptor_40_e14_v24__0I8I12_16l;
      v18[5] = v18;
      _CSArrayEnumerateAllValues();
    }

    else
    {
      v8 = *(v3 + 24);
      if (v8 && LaunchServices::LocalizedString::Get(**v15, *(v3 + 24)))
      {
        *v16 = v8;
      }
    }
  }

  return *v2 != 0;
}

void sub_18165FD88(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 80), 8);

  _Unwind_Resume(a1);
}

id LaunchServices::LocalizedString::getDefaultValueUnsafely(LaunchServices::LocalizedString *this, _LSDatabase *a2)
{
  v3 = a2;
  if (!v3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *LaunchServices::LocalizedString::getDefaultValueUnsafely(_LSDatabase *__strong _Nonnull) const"];
    [v12 handleFailureInFunction:v13 file:@"LSLocalizedString.mm" lineNumber:265 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];
  }

  v4 = objc_autoreleasePoolPush();
  if ((*(this + 8) & 2) != 0)
  {
    v8 = *(this + 1);
    [(_LSDatabase *)v3 store];
    v9 = _CSStringCopyCFString();
    if (*(this + 8))
    {
      v7 = @"✴️";
    }

    else
    {
      v7 = @"🔂";
    }

    v6 = v9;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!*this || !*(this + 1) || !_LSDatabaseGetStringForCFString(v3, @"LSDefaultLocalizedValue", 0))
    {
      v6 = 0;
      goto LABEL_17;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x3812000000;
    v17 = __Block_byref_object_copy__33;
    v18 = __Block_byref_object_dispose__33;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    [(_LSDatabase *)v3 store];
    _CSArrayEnumerateAllValues();
    if (*(v15 + 52) == 1)
    {
      v5 = *(v15 + 12);
      v6 = _LSDatabaseGetNSStringFromArray(v3);
      v7 = @"🔴";
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    _Block_object_dispose(&v14, 8);
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  if (v7 && [__LSDefaultsGetSharedInstance() markLocalizationsStoredInDatabase])
  {
    v10 = [v6 stringByAppendingString:v7];

    v6 = v10;
  }

LABEL_17:
  objc_autoreleasePoolPop(v4);

  return v6;
}

uint64_t _LSPluginIsValid(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, __CFString **a6)
{
  v67 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a4;
  v62 = 0;
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_15;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = @"No plugin data pointer";
LABEL_20:
    *a6 = v19;
    goto LABEL_21;
  }

  if (!*(a3 + 4))
  {
    if (a6)
    {
      *a6 = @"No container set for plugin";
    }

    v20 = _LSDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "ERROR: No container set for plugin", buf, 2u);
    }

    goto LABEL_15;
  }

  v13 = _LSContainerGet(v11);
  if (!v13)
  {
    if (!a6)
    {
      goto LABEL_15;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = @"No container data for plugin";
    goto LABEL_20;
  }

  v14 = _LSContainerCheckState(v11, *(a3 + 4), v13, &v62, 0);
  if (!v14)
  {
    if (v62 != 1)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Container state is %i", v62];
      if (a6)
      {
        v15 = v15;
        *a6 = v15;
      }

      goto LABEL_7;
    }

    v24 = *(a3 + 168);
    v23 = *(a3 + 172);
    v25 = v11;
    [(_LSDatabase *)v11 store];
    v16 = _CSStringCopyCFString();
    if (_LSIsNewsWidgetBundleIdentifier(v16))
    {
      v26 = +[LSApplicationRestrictionsManager sharedInstance];
      v27 = [(LSApplicationRestrictionsManager *)v26 isAppExtensionRestricted:v16];

      if (v27)
      {
        if (!a6)
        {
          goto LABEL_16;
        }

        v17 = 0;
        v18 = 0;
        v19 = @"News app extension is restricted";
        goto LABEL_20;
      }
    }

    else
    {
      if ((v24 & 8) != 0)
      {
        if (!a6)
        {
          goto LABEL_16;
        }

        v17 = 0;
        v18 = 0;
        v19 = @"Has override";
        goto LABEL_20;
      }

      if ((*(a3 + 164) & 2) != 0)
      {
        if (!a6)
        {
          goto LABEL_16;
        }

        v17 = 0;
        v18 = 0;
        v19 = @"Requires GC";
        goto LABEL_20;
      }

      if (v12)
      {
        v28 = *(a3 + 176);
        v29 = _LSDatabaseGetNSStringFromString(v11);
        v31 = _LSPlistGetDictionary(v11, *(a3 + 140), v30);
        if (v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v16;
        }

        if (((v12)[2](v12, v32, v31) & 1) == 0)
        {
          if (a6)
          {
            *a6 = @"Rejected by filter block";
          }

          goto LABEL_16;
        }
      }

      v34 = (a3 + 224);
      v33 = *(a3 + 224);
      if (v33)
      {
        v35 = _LSBundleGet(v11, v33);
        v36 = v35;
        if (!v35)
        {
          v38 = _LSDefaultLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            _LSPluginIsValid_cold_1(a2, (a3 + 224));
          }

          v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parent app %llx", *v34];
          if (a6)
          {
            v39 = v39;
            *a6 = v39;
          }

          goto LABEL_16;
        }

        v59 = *(v35 + 172);
        v37 = *(v35 + 12);
        v17 = _LSDatabaseGetNSStringFromString(v11);
        if (_LSBundleDataIsInUnsupportedLocation(v11, v36))
        {
          if (!a6)
          {
            goto LABEL_17;
          }

          v18 = 0;
          v19 = @"Parent app is in an unsupported location";
          goto LABEL_20;
        }

        if ((v59 & 0x40000) != 0)
        {
          if (!a6)
          {
            goto LABEL_17;
          }

          v18 = 0;
          v19 = @"Parent app is a placeholder";
          goto LABEL_20;
        }

        if ((a5 & 3) == 0 && (v59 & 0x400000000000) != 0)
        {
          if (!a6)
          {
            goto LABEL_17;
          }

          v18 = 0;
          v19 = @"Parent app has a parallel placeholder";
          goto LABEL_20;
        }

        v40 = *(a3 + 20);
        if ((v40 | 2) != 2 && dyld_get_base_platform() != 2)
        {
          v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Plugin invalid plugin platform %d on platform %d", v40, 2];
          if (a6)
          {
            v45 = v45;
            *a6 = v45;
          }

          goto LABEL_17;
        }

        v41 = *(v36 + 180);
        if ((v41 & 0x2000000) != 0)
        {
          v42 = +[LSEligibilityPredicateEvaluator sharedCachingEligibilityPredicateEvaluator];
          v43 = *v34;
          v61 = 0;
          v44 = [v42 evaluateBundle:v43 bundleData:v36 database:v11 error:&v61];
          v57 = v61;
          if (v44)
          {
            if (([v44 BOOLValue] & 1) == 0)
            {
              if (a6)
              {
                *a6 = @"Parent app is ineligible";
              }

              goto LABEL_17;
            }
          }

          else
          {
            v46 = _LSBindingLog();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v47 = *v34;
              *buf = 134218242;
              v64 = v47;
              v65 = 2112;
              v66 = v57;
              _os_log_impl(&dword_18162D000, v46, OS_LOG_TYPE_ERROR, "Couldn't check eligibility of parent app %llx: %@", buf, 0x16u);
            }
          }

          v41 = *(v36 + 180);
        }

        if ((v41 & 0x4000000) != 0)
        {
          v48 = +[LSFeatureFlagPredicateEvaluator defaultEvaluator];
          v49 = *v34;
          v60 = 0;
          v50 = [v48 evaluateBundle:v49 bundleData:v36 database:v11 error:&v60];
          v58 = v60;
          if (v50)
          {
            if (([v50 BOOLValue] & 1) == 0)
            {
              if (a6)
              {
                *a6 = @"Parent app is disabled by feature flag";
              }

              goto LABEL_17;
            }
          }

          else
          {
            v51 = _LSBindingLog();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v52 = *v34;
              *buf = 134218242;
              v64 = v52;
              v65 = 2112;
              v66 = v58;
              _os_log_impl(&dword_18162D000, v51, OS_LOG_TYPE_ERROR, "Couldn't check feature flag of parent app %llx: %@", buf, 0x16u);
            }
          }
        }

        if ((v59 & 0x40000000000) == 0)
        {
          v53 = +[LSApplicationRestrictionsManager sharedInstance];
          v54 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v36 + 420)];
          if ([(LSApplicationRestrictionsManager *)v53 isRatingAllowed:v54 forBundleIdentifier:v17])
          {
            v55 = +[LSApplicationRestrictionsManager sharedInstance];
            v56 = [(LSApplicationRestrictionsManager *)v55 isApplicationRestricted:v17];

            if (!v56)
            {
              goto LABEL_44;
            }
          }

          else
          {
          }

          if (!a6)
          {
            goto LABEL_17;
          }

          v18 = 0;
          v19 = @"Blocked by ManagedConfiguration";
          goto LABEL_20;
        }

LABEL_44:
        v18 = 1;
        goto LABEL_21;
      }
    }

    v17 = 0;
    goto LABEL_44;
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_LSContainerCheckState() returned %i", v14];
  if (a6)
  {
    v15 = v15;
    *a6 = v15;
  }

LABEL_7:

LABEL_15:
  v16 = 0;
LABEL_16:
  v17 = 0;
LABEL_17:
  v18 = 0;
LABEL_21:

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t ___ZNK14LaunchServices15LocalizedString23getDefaultValueUnsafelyEP11_LSDatabase_block_invoke(uint64_t result, int a2, int a3, _BYTE *a4)
{
  if (*(result + 40) == a3)
  {
    v4 = *(*(result + 32) + 8);
    *(v4 + 48) = a2;
    *(v4 + 52) = 1;
    *a4 = 1;
  }

  return result;
}

BOOL _LSIsNewsWidgetBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 caseInsensitiveCompare:@"com.apple.news.widget"] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _LSEnumerateViableBundlesOfClass(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSEnumerateViableBundlesOfClass(LSContext *, LSBundleClass, void (^__strong)(LSBundleID, const LSBundleData *, Boolean *))"}];
    [v9 handleFailureInFunction:v10 file:@"LSBundle.mm" lineNumber:2613 description:{@"Invalid parameter not satisfying: %@", @"inContext != NULL"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSEnumerateViableBundlesOfClass(LSContext *, LSBundleClass, void (^__strong)(LSBundleID, const LSBundleData *, Boolean *))"}];
  [v11 handleFailureInFunction:v12 file:@"LSBundle.mm" lineNumber:2614 description:{@"Invalid parameter not satisfying: %@", @"inSearchBlock != nil"}];

LABEL_3:
  v6 = _LSCheckAllContainerStates(a1);
  if (!v6)
  {
    [(_LSDatabase *)*a1 store];
    v7 = *([(_LSDatabase *)*a1 schema]+ 4);
    v13 = v5;
    _CSStoreEnumerateUnits();
  }

  return v6;
}

uint64_t _LSCheckAllContainerStates(uint64_t *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [(_LSDatabase *)*a1 store];
  v2 = *([(_LSDatabase *)*a1 schema]+ 1580);
  v8[1] = MEMORY[0x1E69E9820];
  v8[2] = 3221225472;
  v8[3] = ___LSCheckAllContainerStates_block_invoke;
  v8[4] = &unk_1E6A1B310;
  v8[5] = &v9;
  v8[6] = a1;
  _CSStoreEnumerateUnits();
  if (*(v10 + 24))
  {
    v8[0] = 0;
    v3 = _LSContextUpdate(a1, 1, v8);
    v4 = v8[0];
    v5 = v4;
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = _LSGetOSStatusFromNSError(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

id _LSDatabaseGetNSStringFromString(_LSDatabase *a1)
{
  [(_LSDatabase *)a1 store];
  v1 = _CSStringCopyCFString();

  return v1;
}

BOOL _LSBundleDataIsInUnsupportedLocation(void *a1, uint64_t a2)
{
  v2 = *(a2 + 172);
  v3 = *(a2 + 4);
  _LSContainerGet(a1);
  return (v2 & 0x1000000040) != 0;
}

void __mapBundleIdentifiersToUUIDs_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = a2;
  v7 = a3;
  v8 = a4;
  if (*(a1 + 48))
  {
    v9 = v30;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;
  if (*(a1 + 48))
  {
    v11 = v7;
  }

  else
  {
    v11 = v30;
  }

  v12 = v11;
  v13 = v12;
  if (v10)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = *(*(a1 + 40) + 8);
    v16 = v8;
    v17 = *(v15 + 40);
    *(v15 + 40) = v16;
  }

  else
  {
    v29 = v8;
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = [v10 count];
    v19 = [v13 count];
    if (v18 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        v22 = [v10 objectAtIndexedSubscript:i];
        v23 = [v17 objectForKeyedSubscript:v22];

        if (!v23)
        {
          v23 = [MEMORY[0x1E695DFA8] set];
          v24 = [v10 objectAtIndexedSubscript:i];
          [v17 setObject:v23 forKeyedSubscript:v24];
        }

        v25 = [v13 objectAtIndexedSubscript:i];
        [v23 addObject:v25];
      }
    }

    v26 = [v17 copy];
    v27 = *(*(a1 + 32) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    v8 = v29;
  }
}

void *std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__emplace_unique_key_args<objc_selector *,objc_selector *,decltype(nullptr)>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1816612D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_181661394(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_1816616F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  objc_destroyWeak((v12 + 48));
  objc_destroyWeak((v12 + 40));

  objc_destroyWeak((v13 - 80));
  LaunchServices::Database::Context::~Context(va);
  objc_destroyWeak((v13 - 88));

  _Unwind_Resume(a1);
}

atomic_uint *_LSContextAddChangeObserver(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(_LSChangeObserver);
  v9 = *(*a1 + 16);
  v8 = *(*a1 + 20);
  v10 = [(_LSDServiceDomain *)v5 resolvedSessionKey];
  v11 = v10;
  v12 = v9 | (v8 << 32);
  if (v8)
  {
    if ((v10 & 0x100000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v10 & 0x100000000) == 0 && v9 == v10)
  {
    goto LABEL_9;
  }

  v13 = _LSDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v24 = _LSSessionKeyCopyDescription(v12);
    v25 = _LSSessionKeyCopyDescription(v11);
    *buf = 138412802;
    v32 = v24;
    v33 = 2112;
    v34 = v5;
    v35 = 2112;
    v36 = v25;
    _os_log_fault_impl(&dword_18162D000, v13, OS_LOG_TYPE_FAULT, "Adding change observer for context with session key %@ but service domain %@ implied session key %@", buf, 0x20u);
  }

LABEL_9:
  v14 = [__LSDefaultsGetSharedInstance() databaseUpdateNotificationNameForSessionKey:v12];
  v15 = MEMORY[0x1865D71B0](v6);
  v16 = v7->block;
  v7->block = v15;

  v7->uid = v9;
  v17 = _LSGetDispatchTokenQueue();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = ___LSContextAddChangeObserver_block_invoke;
  v28[3] = &unk_1E6A1ABE8;
  v18 = v7;
  v29 = v18;
  v19 = v5;
  v30 = v19;
  LaunchServices::notifyd::NotifyToken::RegisterDispatch(v14, v17, v28, buf);
  LaunchServices::notifyd::NotifyToken::operator=(v18 + 5, buf);
  LaunchServices::notifyd::NotifyToken::~NotifyToken(buf);

  v20 = _LSGetDispatchTokenQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___LSContextAddChangeObserver_block_invoke_3;
  block[3] = &unk_1E6A1A830;
  v21 = v18;
  v27 = v21;
  dispatch_barrier_async(v20, block);

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

uint64_t _UTTypeSearchConformingTypesCommon(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v11 = a1;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  v17 = v11;
  v18 = a5;
  v19 = a2;
  v20 = _UTTypeGet(v11);
  v21 = a4;
  v22 = 0;
  v12 = 32;
  if (a3 >= 0)
  {
    v12 = a3;
  }

  v23 = v12;
  if (_UTTypeSearchConformingTypesCore(v15))
  {
    if (a6)
    {
      *a6 = v19;
    }

    v13 = v20;
  }

  else
  {
    v13 = 0;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v15);

  return v13;
}

void sub_181661E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(&a9);

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

uint64_t _UTTypeSearchConformingTypesCore(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>(a1, (a1 + 56)))
  {
    v2 = 0;
  }

  else
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int &>(a1, (a1 + 56));
    *(a1 + 72) = *(a1 + 88);
    if ((*(a1 + 80))(a1 + 40))
    {
      v2 = 1;
    }

    else
    {
      if (*(a1 + 96) > *(a1 + 88))
      {
        v3 = *(a1 + 40);
        v4 = *(a1 + 56);
        v5 = *(a1 + 64);
        ++*(a1 + 88);
        v6 = *(v5 + 12);
        v9 = v3;
        v7 = v3;
        _LSDatabaseEnumeratingBindingMap(v7);
        --*(a1 + 88);
        *(a1 + 56) = v4;
        *(a1 + 64) = v5;
      }

      v2 = *(v11 + 24);
    }
  }

  _Block_object_dispose(&v10, 8);
  return v2;
}

void sub_181662048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UTTypeSearchConformingTypesWithBlock::$_0::__invoke(uint64_t a1)
{
  v2 = 0;
  (*(*(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), &v2);
  return v2;
}

uint64_t ___ZL32_UTTypeSearchConformingTypesCoreP14UTTypeSearchPB_block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  v4 = a3 & 0xFFFFFFFC;
  if ((~a3 & 3) == 0 && v4 != 0)
  {
    v7 = result;
    result = _UTTypeGet(*(result + 32));
    if (result)
    {
      if (*(result + 8))
      {
        v8 = *(v7 + 48);
        *(v8 + 56) = v4;
        *(v8 + 64) = result;
        result = _UTTypeSearchConformingTypesCore(*(v7 + 48));
        if (result)
        {
          *(*(*(v7 + 40) + 8) + 24) = 1;
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

BOOL _LSNSErrorIsXPCConnectionInterrupted(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 domain];
    if ([v3 isEqual:*MEMORY[0x1E696A250]])
    {
      v4 = [v2 code] == 4097;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void LaunchServices::Record::storeWeakSharedRecord(void *a1, id *a2)
{
  v3 = a1;
  objc_storeWeak(a2, v3);
  if (v3)
  {
    [v3 _setShared:1];
    CFAutorelease(v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,unsigned int const&,unsigned int &>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_181662938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void *std::__hash_table<std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>>>::__emplace_unique_key_args<void const*,void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void _LSEnumerateExtensionPoints(void *a1, uint64_t a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x5812000000;
  v16 = __Block_byref_object_copy__27;
  v17 = __Block_byref_object_dispose__27;
  v18 = &unk_1818533FF;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  [(_LSDatabase *)v3 store];
  [(_LSDatabase *)v3 schema];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = ___LSEnumerateExtensionPoints_block_invoke;
  v10 = &unk_1E6A1AAF8;
  v4 = v3;
  v11 = v4;
  v12 = &v13;
  _CSStringBindingEnumerateAllBindings();
  v6 = 0;
  v5 = v14 + 8;
  do
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    (*(a2 + 16))(a2, *(v5 + 6), v5[2], &v6);
  }

  while (!v6);

  _Block_object_dispose(&v13, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v19);
}

void sub_181662DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v9 + 48);

  _Unwind_Resume(a1);
}

void std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>::shrink_to_fit(const void **a1)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = a1[2] - *a1;
  v5 = v2 - *a1;
  if (v4 > v5)
  {
    if (v2 != v3)
    {
      std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::allocate_at_least[abi:nn200100](a1, v5 >> 4);
    }

    v7 = 0;
    if (v4 >> 4)
    {
      v8 = 16 * (v5 >> 4);
      v9 = a1[1] - v3;
      v10 = v8 - v9;
      memcpy((v8 - v9), v3, v9);
      v7 = *a1;
      *a1 = v10;
      a1[1] = v8;
      a1[2] = 0;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_181663698(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

uint64_t _FSEventStreamCreate(const char *a1, CFAllocatorRef Default, uint64_t a3, __int128 *a4, int a5, CFArrayRef theArray, uint64_t a7, uint64_t a8, int a9)
{
  v83[127] = *MEMORY[0x1E69E9840];
  if ((a9 & 0x41) == 0x40)
  {
    v10 = fsevent_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_9();
    }

    goto LABEL_90;
  }

  Count = CFArrayGetCount(theArray);
  if (*MEMORY[0x1E695E480] == Default)
  {
    Default = CFAllocatorGetDefault();
  }

  v18 = MEMORY[0x1865D4CB0](Default, 456, 0x10F0040DD1F3337, 0);
  if (!v18)
  {
    v50 = fsevent_default_log();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_8();
    }

    goto LABEL_90;
  }

  v19 = v18;
  *(v18 + 448) = 0;
  *(v18 + 416) = 0u;
  *(v18 + 432) = 0u;
  *(v18 + 384) = 0u;
  *(v18 + 400) = 0u;
  *(v18 + 352) = 0u;
  *(v18 + 368) = 0u;
  *(v18 + 320) = 0u;
  *(v18 + 336) = 0u;
  *(v18 + 288) = 0u;
  *(v18 + 304) = 0u;
  *(v18 + 256) = 0u;
  *(v18 + 272) = 0u;
  *(v18 + 224) = 0u;
  *(v18 + 240) = 0u;
  *(v18 + 192) = 0u;
  *(v18 + 208) = 0u;
  *(v18 + 160) = 0u;
  *(v18 + 176) = 0u;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 8) = Default;
  CFRetain(Default);
  *(v19 + 16) = a3;
  if (a4)
  {
    v20 = *a4;
    v21 = a4[1];
    *(v19 + 56) = *(a4 + 4);
    *(v19 + 40) = v21;
    *(v19 + 24) = v20;
  }

  v66 = a7;
  v22 = *(v19 + 40);
  if (v22)
  {
    v22(*(v19 + 32));
  }

  *(v19 + 64) = a5;
  *(v19 + 72) = Count;
  *(v19 + 80) = MEMORY[0x1865D4CB0](Default, 8 * Count, 0x10040436913F5, 0);
  *(v19 + 88) = MEMORY[0x1865D4CB0](Default, 4 * Count, 0x100004052888210, 0);
  v23 = *(v19 + 80);
  if (!v23)
  {
    v51 = fsevent_default_log();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_7();
    }

    goto LABEL_89;
  }

  bzero(v23, 8 * Count);
  bzero(*(v19 + 88), 4 * Count);
  if ((a9 & 4) == 0)
  {
    v68 = a1;
    *(v19 + 408) = -1;
    goto LABEL_14;
  }

  v52 = kqueue();
  *(v19 + 408) = v52;
  if (v52 < 0)
  {
    v55 = fsevent_default_log();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_3();
    }

    goto LABEL_89;
  }

  v53 = MEMORY[0x1865D4CB0](Default, 32 * Count, 0x101004048259AEFLL, 0);
  *(v19 + 392) = v53;
  if (!v53)
  {
    v56 = fsevent_default_log();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_2();
    }

    goto LABEL_89;
  }

  bzero(v53, 32 * Count);
  v54 = MEMORY[0x1865D4CB0](Default, 32 * Count, 0x108004019856BD9, 0);
  *(v19 + 400) = v54;
  if (!v54)
  {
    v60 = fsevent_default_log();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_1();
    }

LABEL_89:
    _FSEventStreamDeallocate(v19);
LABEL_90:
    v19 = 0;
    goto LABEL_91;
  }

  v68 = a1;
  bzero(v54, 32 * Count);
LABEL_14:
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(ValueAtIndex))
      {
        v57 = fsevent_default_log();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamCreate_cold_4();
        }

        goto LABEL_89;
      }

      if (!CFStringGetFileSystemRepresentation(ValueAtIndex, buffer, 1024))
      {
        v58 = fsevent_default_log();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamCreate_cold_6();
        }

        goto LABEL_89;
      }

      if (a5)
      {
        v27 = 1000;
        while (1)
        {
          v28 = getfsstat(0, 0, 2);
          if (v28 < 0)
          {
            goto LABEL_33;
          }

          v29 = 2168 * (v28 + 1);
          v30 = malloc_type_malloc(2168 * (v28 + 1), 0x100004087E0324AuLL);
          if (!v30)
          {
            goto LABEL_33;
          }

          v31 = v30;
          v32 = getfsstat(v30, v29, 2);
          if ((v32 & 0x80000000) == 0)
          {
            break;
          }

          free(v31);
          if (!--v27)
          {
            goto LABEL_33;
          }
        }

        if (!v32)
        {
LABEL_33:
          v33 = buffer;
          __strlcpy_chk();
LABEL_34:
          *(*(v19 + 88) + 4 * i) |= 2u;
          goto LABEL_35;
        }

        v34 = v32;
        f_mntonname = v31->f_mntonname;
        while (*(f_mntonname - 10) != a5)
        {
          f_mntonname += 2168;
          if (!--v34)
          {
            v33 = buffer;
            __strlcpy_chk();
LABEL_64:
            free(v31);
            goto LABEL_34;
          }
        }

        snprintf(__s, 0x400uLL, "%s/%s", f_mntonname, buffer);
        if (realpath_DARWIN_EXTSN(__s, __s1))
        {
          v48 = strlen(f_mntonname);
          if (__s1[v48] == 47)
          {
            v33 = &__s1[v48 + 1];
          }

          else
          {
            v33 = &__s1[v48];
          }

          goto LABEL_64;
        }

        free(v31);
      }

      else
      {
        v33 = __s1;
        if (fsevent_realpath(buffer, __s1))
        {
          goto LABEL_35;
        }
      }

      if (buffer[0] == 47)
      {
        v33 = buffer;
        __strlcpy_chk();
      }

      else
      {
        v33 = __s1;
        getcwd(__s1, 0x400uLL);
        __strlcat_chk();
        __strlcat_chk();
      }

LABEL_35:
      v36 = (strlen(v33) + 1);
      *(*(v19 + 80) + 8 * i) = MEMORY[0x1865D4CB0](Default, v36, 1425393460, 0);
      v37 = *(*(v19 + 80) + 8 * i);
      if (!v37)
      {
        v59 = fsevent_default_log();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamCreate_cold_5();
        }

        goto LABEL_89;
      }

      strlcpy(v37, v33, v36);
      if (*buffer == 0x2F6D65747379532FLL && v83[0] == 0x2F73656D756C6F56 && *(v83 + 5) == 0x2F617461442F7365)
      {
        *(*(v19 + 88) + 4 * i) |= 1u;
        if ((a9 & 4) == 0)
        {
          continue;
        }
      }

      else if ((a9 & 4) == 0)
      {
        continue;
      }

      v40 = *(v19 + 392);
      v41 = v40 + 32 * i;
      *(v41 + 4) = -1;
      if (!*(v19 + 64) || __s1[0] == 47)
      {
        *(v41 + 24) = strdup(__s1);
      }

      else
      {
        if (!realpath_DARWIN_EXTSN(*(*(v19 + 80) + 8 * i), __s))
        {
          getcwd(__s, 0x400uLL);
          v42 = strlen(__s);
          __s[v42] = 47;
          strlcpy(&__s[v42 + 1], *(*(v19 + 80) + 8 * i), 1024 - (v42 + 1));
        }

        *(*(v19 + 392) + 32 * i + 24) = strdup(__s);
        v40 = *(v19 + 392);
      }

      v43 = (v40 + 32 * i);
      *v43 = 8;
      v44 = watch_path(v68, *(v19 + 408), __s1, *(v19 + 400) + 32 * i, v43, i);
      if (v44)
      {
        v45 = v44;
        v46 = fsevent_default_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v49 = strerror(v45);
          *__s = 136316674;
          v70 = v68;
          v71 = 2080;
          v72 = "_FSEventStreamCreate";
          v73 = 2080;
          v74 = v33;
          v75 = 2080;
          *v76 = __s1;
          *&v76[8] = 1024;
          *&v76[10] = i;
          v77 = 1024;
          v78 = v45;
          v79 = 2080;
          v80 = v49;
          _os_log_error_impl(&dword_18162D000, v46, OS_LOG_TYPE_ERROR, "%s: %s: ERROR: watch_path() failed for srcPath='%s' resolvedPath='%s' index=%d (%d):(%s)", __s, 0x40u);
        }

        if ((v45 - 23) < 2)
        {
          goto LABEL_89;
        }
      }

      v47 = watch_all_parents(v68, *(v19 + 408), __s1, *(v19 + 392) + 32 * i, i);
      if (v47)
      {
        v61 = v47;
        v62 = fsevent_default_log();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v65 = strerror(v61);
          *__s = 136316162;
          v70 = v68;
          v71 = 2080;
          v72 = "_FSEventStreamCreate";
          v73 = 2080;
          v74 = v33;
          v75 = 1024;
          *v76 = v61;
          *&v76[4] = 2080;
          *&v76[6] = v65;
          _os_log_error_impl(&dword_18162D000, v62, OS_LOG_TYPE_ERROR, "%s: %s: ERROR: watch_all_parents() failed for '%s' (%d):(%s)", __s, 0x30u);
        }

        goto LABEL_89;
      }
    }
  }

  *(v19 + 168) = v66;
  *(v19 + 176) = a8;
  *(v19 + 184) = a9;
  *(v19 + 188) = 0;
  *(v19 + 190) = v66 != -1;
  *(v19 + 216) = 0;
  *(v19 + 360) = 0;
  *(v19 + 432) = 0;
  *(v19 + 192) = 0;
  *(v19 + 200) = 0;
  *v19 = 1;
LABEL_91:
  v63 = *MEMORY[0x1E69E9840];
  return v19;
}

void FSEventStreamSetDispatchQueue(FSEventStreamRef streamRef, dispatch_queue_t q)
{
  if (streamRef)
  {
    if (q)
    {
      if (!*(streamRef + 48))
      {
        if (allocate_d2f_port("FSEventStreamSetDispatchQueue", streamRef))
        {
          v10 = fsevent_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamSetDispatchQueue_cold_1();
          }

          return;
        }

        pthread_mutex_lock(&FSEvents_streamDict_mutex);
        v11 = *MEMORY[0x1E695E480];
        if (!FSEvents_streamDict)
        {
          FSEvents_streamDict = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], 0);
        }

        v12 = CFNumberCreate(v11, kCFNumberIntType, streamRef + 192);
        CFDictionaryAddValue(FSEvents_streamDict, v12, streamRef);
        pthread_mutex_unlock(&FSEvents_streamDict_mutex);
        CFRelease(v12);
      }

      pthread_mutex_init((streamRef + 240), 0);
      pthread_cond_init((streamRef + 304), 0);
      dispatch_retain(q);
      *(streamRef + 44) = q;
      if (create_d2f_port_source(streamRef))
      {
        if ((*(streamRef + 184) & 4) == 0)
        {
          return;
        }

        v4 = *(streamRef + 102);
        v5 = dispatch_source_create(MEMORY[0x1E69E96F8], v4, 0, *(streamRef + 44));
        if (v5)
        {
          v6 = v5;
          dispatch_set_qos_class_fallback();
          FSEventStreamRetain(streamRef);
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 0x40000000;
          handler[2] = __FSEventStreamSetDispatchQueue_block_invoke;
          handler[3] = &__block_descriptor_tmp_0;
          handler[4] = streamRef;
          v17 = v4;
          dispatch_source_set_event_handler(v6, handler);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 0x40000000;
          v14[2] = __FSEventStreamSetDispatchQueue_block_invoke_2;
          v14[3] = &__block_descriptor_tmp_24;
          v15 = v4;
          v14[4] = v6;
          v14[5] = streamRef;
          dispatch_source_set_cancel_handler(v6, v14);
          *(streamRef + 54) = v6;
          *(streamRef + 110) = 1;
          return;
        }

        v13 = fsevent_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamSetDispatchQueue_cold_3();
        }
      }

      else
      {
        v9 = fsevent_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamSetDispatchQueue_cold_2();
        }
      }

      if (*(streamRef + 54))
      {
        cancel_source(streamRef + 54, streamRef + 110);
        *(streamRef + 102) = -1;
      }

      if (*(streamRef + 45))
      {
        cancel_source(streamRef + 45, streamRef + 92);
        *(streamRef + 48) = 0;
      }
    }

    else
    {
      if (*(streamRef + 45))
      {
        cancel_source(streamRef + 45, streamRef + 92);
        *(streamRef + 48) = 0;
      }

      if (*(streamRef + 47))
      {
        cancel_source(streamRef + 47, streamRef + 96);
        *(streamRef + 49) = 0;
      }

      if ((*(streamRef + 184) & 4) != 0 && *(streamRef + 54))
      {
        cancel_source(streamRef + 54, streamRef + 110);
        *(streamRef + 102) = -1;
      }

      v8 = *(streamRef + 44);
      if (v8)
      {
        dispatch_release(v8);
        *(streamRef + 44) = 0;
      }
    }
  }

  else
  {
    v7 = fsevent_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamSetDispatchQueue_cold_4();
    }
  }
}

uint64_t allocate_d2f_port(uint64_t a1, uint64_t a2)
{
  v2 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, (a2 + 192));
  if (v2)
  {
    v3 = fsevent_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      allocate_d2f_port_cold_1();
    }
  }

  return v2;
}

BOOL create_d2f_port_source(uint64_t a1)
{
  v2 = *(a1 + 192);
  v3 = dispatch_source_create(MEMORY[0x1E69E96D8], v2, 0, *(a1 + 352));
  if (v3)
  {
    FSEventStreamRetain(a1);
    dispatch_set_qos_class_fallback();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __create_d2f_port_source_block_invoke;
    handler[3] = &__block_descriptor_tmp_66;
    v8 = v2;
    dispatch_source_set_event_handler(v3, handler);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __create_d2f_port_source_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_67;
    v6 = v2;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_source_set_cancel_handler(v3, v5);
    *(a1 + 360) = v3;
    *(a1 + 368) = 1;
  }

  return v3 != 0;
}

void _UTEnumerateTypesForIdentifier(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (v5 && a2 && v6)
  {
    v8 = v5;
    v9 = v7;
    _LSDatabaseEnumeratingBindingMap(v8);
  }
}

id fallbackDynamicOrBaseTypeRecord(LSContext *a1, const __CFString *a2, __CFString *inUTI, __CFString *a4)
{
  if (!a4 || ![(__CFString *)inUTI isEqual:@"public.filename-extension"]|| !_UTExtensionLooksLikeAppendedRandomness(a1->db, a2) || ([(__CFString *)a4 isEqualToString:@"public.data"]& 1) == 0 && ([(__CFString *)a4 isEqualToString:@"public.folder"]& 1) == 0 && ![(__CFString *)a4 isEqualToString:@"public.directory"]|| ([UTTypeRecord _typeRecordWithContext:a1 identifier:a4 allowUndeclared:0], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    DynamicIdentifierForTag = _UTTypeCreateDynamicIdentifierForTag(&a1->db, inUTI, a2, a4);
    if (DynamicIdentifierForTag)
    {
      v8 = [[_UTDynamicTypeRecord alloc] _initWithContext:a1 dynamicUTI:DynamicIdentifierForTag];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

CFStringRef _UTTypeCreateDynamicIdentifierForTag(void **a1, CFStringRef inUTI, const __CFString *a3, const __CFString *a4)
{
  result = 0;
  if (inUTI && a3)
  {
    if (a1)
    {
      v12 = 0;
      if (!_UTGetActiveTypeForCFStringIdentifier(*a1, inUTI, &v12))
      {
        v11 = 0;
        return _UTTypeCreateDynamicIdentifierForTagCommon(inUTI, a3, a4, v11);
      }

      TypeCaseInsensitiveText = _UTTypeGetTypeCaseInsensitiveText(*a1);
      v10 = _UTTypeConformsTo(*a1, v12, TypeCaseInsensitiveText);
    }

    else
    {
      v10 = UTTypeConformsTo(inUTI, @"public.case-insensitive-text");
    }

    v11 = v10;
    return _UTTypeCreateDynamicIdentifierForTagCommon(inUTI, a3, a4, v11);
  }

  return result;
}

BOOL _UTExtensionLooksLikeAppendedRandomness(void *a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  if ((Length - 12) > 0x74)
  {
    return 0;
  }

  v5 = Length;
  v6 = v19;
  v20.location = 0;
  v20.length = Length;
  CFStringGetCharacters(theString, v20, v19);
  v7 = &v19[v5];
  v8 = 2 * v5;
  v9 = v7;
  v10 = v19;
  do
  {
    v11 = *v10++;
    if (v11 == 45)
    {
      v9 = v6;
    }

    v6 = v10;
    v8 -= 2;
  }

  while (v8);
  v12 = v7 - v9;
  if (v5 <= v12 || v12 - 2 >= 0x14)
  {
    return 0;
  }

  while (++v9 != v7)
  {
    v16 = *v9;
    if ((v16 - 48) >= 0xA && (v16 & 0xFFFFFFDF) - 65 > 0x19)
    {
      if (v9 != v7)
      {
        return 0;
      }

      break;
    }
  }

  v18 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], v19, v5 - v12);
  v14 = _UTTypeGetActiveIdentifierForTag(a1, @"public.filename-extension", v18, 0, 0) != 0;
  CFRelease(v18);
  return v14;
}

uint64_t _UTTypeGetTypeCaseInsensitiveText(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.case-insensitive-text", (*(v2 + 1616) + 132));

  return CachedType;
}

void _LSGetVersionFromString(__CFString *a1@<X0>, _OWORD *a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  a2[1] = 0u;
  if (a1)
  {
    if (CFStringGetCString(a1, buffer, 1024, 0x8000100u))
    {
      LaunchServices::VersionNumber::FromCString(buffer, a2);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [(__CFString *)a1 UTF8String];
      if (v5)
      {
        LaunchServices::VersionNumber::FromCString(v5, a2);
      }

      objc_autoreleasePoolPop(v4);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t LaunchServices::VersionNumber::FromCString@<X0>(uint64_t this@<X0>, _OWORD *a2@<X8>)
{
  v13[3] = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  a2[1] = 0u;
  if (this)
  {
    v3 = (this - 1);
    do
    {
      v4 = *++v3;
      v5 = v4 - 48;
      if (v4)
      {
        v6 = v5 > 9;
      }

      else
      {
        v6 = 0;
      }
    }

    while (v6);
    v7 = 0;
    v13[0] = a2;
    v13[1] = a2 + 8;
    v13[2] = a2 + 1;
    while (2)
    {
      v8 = 0;
      v9 = v13[v7];
      while (1)
      {
        v10 = *v3;
        if (!*v3)
        {
          break;
        }

        if (v10 == 46)
        {
          ++v3;
          break;
        }

        v11 = v10 - 48;
        if (v11 >= 0xA)
        {
          *v9 = v8;
          goto LABEL_17;
        }

        v8 = 10 * v8 + v11;
        ++v3;
      }

      *v9 = v8;
      if (++v7 != 3)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v12 = *MEMORY[0x1E69E9840];
  return this;
}

void enumeratePluginsMatchingQuery(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[_LSQueryContext defaultContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __enumeratePluginsMatchingQuery_block_invoke;
  v7[3] = &unk_1E6A19BD8;
  v8 = v3;
  v6 = v3;
  [v5 enumerateResolvedResultsOfQuery:v4 withBlock:v7];
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

id __copy_helper_block_ea8_48c14_ZTS9LSContext(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t UTTypeCopyParentIdentifiers(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 parentTypeIdentifiers];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 array];
      v8 = [v7 copy];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v8;
}

CFStringRef _UTTypeCreateDynamicIdentifierForTagCommon(const __CFString *a1, const __CFString *a2, const __CFString *a3, int a4)
{
  DynamicIdentifierForFileInfo = 0;
  v22 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    memset(v21, 0, sizeof(v21));
    v9 = CFGetTypeID(a1);
    if (v9 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(a1);
      v11 = XCFBufInitWithCFStringRange(v21, a1, 0, Length, 1);
    }

    else
    {
      XCFBufInit(v21);
      v11 = 0;
    }

    memset(v20, 0, sizeof(v20));
    v12 = CFGetTypeID(a2);
    if (v12 == CFStringGetTypeID())
    {
      v13 = CFStringGetLength(a2);
      v14 = XCFBufInitWithCFStringRange(v20, a2, 0, v13, a4);
      if (v11 && v14)
      {
        memset(v19, 0, sizeof(v19));
        if (a3)
        {
          v15 = CFGetTypeID(a3);
          if (v15 == CFStringGetTypeID())
          {
            v16 = CFStringGetLength(a3);
            if (XCFBufInitWithCFStringRange(v19, a3, 0, v16, 1))
            {
              DynamicIdentifierForFileInfo = _UTTypeCreateDynamicIdentifierForFileInfo(v20, v21, v19, 1);
              XCFBufDestroy(v19);
LABEL_21:
              XCFBufDestroy(v20);
LABEL_22:
              XCFBufDestroy(v21);
              goto LABEL_23;
            }
          }

          else
          {
            XCFBufInit(v19);
          }

          DynamicIdentifierForFileInfo = 0;
          goto LABEL_21;
        }

        DynamicIdentifierForFileInfo = _UTTypeCreateDynamicIdentifierForFileInfo(v20, v21, 0, 0);
        goto LABEL_21;
      }

      if (v14)
      {
        XCFBufDestroy(v20);
      }
    }

    else
    {
      XCFBufInit(v20);
    }

    DynamicIdentifierForFileInfo = 0;
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_23:
  v17 = *MEMORY[0x1E69E9840];
  return DynamicIdentifierForFileInfo;
}

void ___ZL45_LSGetCurrentSystemIOSSupportAndBuildVersionsP15LSVersionNumberS0_PPK10__CFStringS0_S4__block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _CFCopySystemVersionPlatformDictionary();
  v1 = v0;
  v2 = MEMORY[0x1E695E208];
  v3 = MEMORY[0x1E695E1E8];
  if (v0)
  {
    Value = CFDictionaryGetValue(v0, *MEMORY[0x1E695E208]);
    if (Value)
    {
      _LSGetVersionFromString(Value, &v14);
      _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedSystemVersion = v14;
      *algn_1ED444F90 = v15;
    }

    v5 = CFDictionaryGetValue(v1, *v3);
    if (v5)
    {
      _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedBuildVersion = CFStringCreateCopy(*MEMORY[0x1E695E480], v5);
    }
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 contentsAtPath:@"/private/preboot/Cryptexes/OS/SystemVersion.plist"];

  if (v7)
  {
    v13 = 0;
    v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:&v13];
    v9 = v13;
    if (v8)
    {
      v10 = CFDictionaryGetValue(v1, *v2);
      if (v10)
      {
        _LSGetVersionFromString(v10, &v14);
        _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedCryptexVersion = v14;
        unk_1EA8313E8 = v15;
      }

      v11 = CFDictionaryGetValue(v1, *v3);
      if (v11)
      {
        _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedCryptexBuildVersion = CFStringCreateCopy(*MEMORY[0x1E695E480], v11);
      }
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_181665A6C(_Unwind_Exception *a1)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(a1);
}

CFStringRef _UTTypeCreateDynamicIdentifierForFileInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a2 || a4)
  {
    XCFBufInit(&v18);
    if (a4)
    {
      XCFBufAppend(&v18, "?0=", 3u);
      v8 = 0;
      v9 = (a3 + 8);
      do
      {
        if (v8)
        {
          XCFBufAppend(&v18, ",", 1u);
        }

        v10 = *(v9 - 1);
        v11 = *v9;
        v9 += 4;
        XCFBufInitWithBytes(&v20, v10, v11, 0);
        _UTAbbreviateTerm(&v20);
        _UTAppendCharactersAddingEscapes(&v18, v20, v21);
        XCFBufDestroy(&v20);
        ++v8;
      }

      while (a4 != v8);
    }
  }

  else
  {
    if (*a2)
    {
      CFStringGetLength(@"public.filename-extension");
    }

    XCFBufInit(&v18);
  }

  if (a1)
  {
    if (v19)
    {
      XCFBufAppend(&v18, ":", 1u);
    }

    XCFBufInitWithBytes(&v20, *a2, *(a2 + 8), 0);
    _UTAbbreviateTerm(&v20);
    _UTAppendCharactersAddingEscapes(&v18, v20, v21);
    XCFBufDestroy(&v20);
    XCFBufAppend(&v18, "=", 1u);
    _UTAppendCharactersAddingEscapes(&v18, *a1, *(a1 + 8));
  }

  v12 = 0;
  v13 = v18;
  if (v18)
  {
    v14 = v19;
    if (v19)
    {
      memset(v22, 0, sizeof(v22));
      XCFBufInit(v22);
      XCFBufAppend(v22, "dyn.a", 5u);
      v15 = _UTBase32EncodedLength(v14);
      XCFBufAddCapacity(v22, v15);
      _UTBase32Encode(v13, v14, (*&v22[0] + DWORD2(v22[0])));
      DWORD2(v22[0]) += v15;
      *(*&v22[0] + DWORD2(v22[0])) = 0;
      v12 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], *&v22[0], DWORD2(v22[0]), 0x8000100u, 0);
      XCFBufDestroy(v22);
    }
  }

  XCFBufDestroy(&v18);
  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

void *XCFBufAppend(_DWORD *a1, const void *a2, unsigned int a3)
{
  XCFBufAddCapacity(a1, a3);
  result = memcpy((*a1 + a1[2]), a2, a3);
  v7 = a1[2] + a3;
  a1[2] = v7;
  *(*a1 + v7) = 0;
  return result;
}

_DWORD *XCFBufAddCapacity(_DWORD *result, int a2)
{
  v2 = result[2] + a2;
  v3 = result[6];
  if (v2 > v3)
  {
    v4 = result;
    if (v2 <= ((2 * v3) | 1))
    {
      v5 = 2 * v3 + 1;
    }

    else
    {
      v5 = result[2] + a2;
    }

    v6 = *result;
    v7 = *(result + 2);
    if (v6 == v7)
    {
      result = malloc_type_realloc(v7, (v5 + 1), 0x100004077774924uLL);
      *(v4 + 2) = result;
    }

    else
    {
      v8 = malloc_type_malloc((v5 + 1), 0x100004077774924uLL);
      *(v4 + 2) = v8;
      memcpy(v8, *v4, v4[2]);
      result = *(v4 + 2);
    }

    *v4 = result;
    v4[6] = v5;
  }

  return result;
}

uint64_t XCFBufInitWithBytes(uint64_t a1, void *__src, size_t __len, int a4)
{
  *(a1 + 28) = 0;
  result = a1 + 28;
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 24) = 127;
  *(a1 + 16) = 0;
  if (!__len)
  {
    return 0;
  }

  v7 = __len;
  if (__len >= 0x80)
  {
    result = malloc_type_malloc((__len + 1), 0x100004077774924uLL);
    if (!result)
    {
      return result;
    }

    *(a1 + 16) = result;
    *a1 = result;
    *(a1 + 24) = v7;
  }

  v9 = v7;
  memmove(result, __src, v7);
  *(*a1 + v7) = 0;
  *(a1 + 8) = v7;
  if (a4)
  {
    v10 = *a1;
    do
    {
      v11 = *v10;
      if ((v11 - 65) <= 0x19)
      {
        *v10 = v11 | 0x20;
      }

      ++v10;
      --v9;
    }

    while (v9);
  }

  return 1;
}

id _LSPlistGetDictionary(_LSDatabase *a1, unsigned int a2, _LSPlistHint *a3)
{
  v3 = _LSPlistGet(a1, a2);
  v4 = _LSPlistDataGetDictionary(v3, 0);

  return v4;
}

{
  v3 = _LSPlistGet(a1, a2);
  v4 = _LSPlistDataGetDictionary(v3, 0);

  return v4;
}

{
  v3 = _LSPlistGet(a1, a2);
  v4 = _LSPlistDataGetDictionary(v3, 0);

  return v4;
}

_DWORD *_UTAbbreviateTerm(_DWORD *result)
{
  v1 = result[2];
  if (v1 >= 3)
  {
    v2 = result;
    v3 = 0;
    v4 = *result;
    while (1)
    {
      v5 = (&builtins)[v3];
      result = strncmp(v5, v4, v1);
      if (!result && !v5[v1])
      {
        break;
      }

      if (++v3 == 22)
      {
        return result;
      }
    }

    if (v3 > 0xF)
    {
      *v4 = a0123456789abcd_0[v3 >> 4];
      *(*v2 + 1) = a0123456789abcd_0[v3 & 0xF];
      *(*v2 + 2) = 0;
      v6 = 2;
    }

    else
    {
      *v4 = a0123456789abcd_0[v3];
      v6 = 1;
    }

    v2[2] = v6;
  }

  return result;
}

_DWORD *_UTAppendCharactersAddingEscapes(_DWORD *a1, _BYTE *a2, unsigned int a3)
{
  result = XCFBufAddCapacity(a1, 2 * a3);
  v7 = *a1;
  v8 = a1[2];
  if (a3)
  {
    v9 = (v7 + v8);
    v10 = a3;
    do
    {
      v11 = *a2;
      if ((v11 - 44) <= 0x30 && ((1 << (v11 - 44)) & 0x1000000024001) != 0 || v11 == 0)
      {
        *v9++ = 92;
        ++a1[2];
        LOBYTE(v11) = *a2;
      }

      *v9++ = v11;
      v8 = (a1[2] + 1);
      a1[2] = v8;
      ++a2;
      --v10;
    }

    while (v10);
    v7 = *a1;
  }

  *(v7 + v8) = 0;
  return result;
}

unsigned __int8 *_UTBase32Encode(unsigned __int8 *result, unsigned int a2, _BYTE *a3)
{
  v4 = result;
  v5 = &result[a2];
  v6 = a2 % 5;
  if (&v5[-v6] > result)
  {
    do
    {
      result = _UTBase32EncodeDatum(v4, 5, a3);
      v4 += 5;
      a3 += 8;
    }

    while (v4 < &v5[-v6]);
  }

  if (v6)
  {

    return _UTBase32EncodeDatum(v4, v6, a3);
  }

  return result;
}

unsigned __int8 *_UTBase32EncodeDatum(unsigned __int8 *result, int a2, _BYTE *a3)
{
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      *a3 = encoder[*result >> 3];
      v3 = 4 * (*result & 7);
      v4 = 1;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      *a3 = encoder[*result >> 3];
      a3[1] = encoder[(result[1] >> 6) & 0xFFFFFFFFFFFFFFE3 | (4 * (*result & 7))];
      a3[2] = encoder[(result[1] >> 1) & 0x1F];
      v3 = 16 * (result[1] & 1);
      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        *a3 = encoder[*result >> 3];
        a3[1] = encoder[(result[1] >> 6) & 0xFFFFFFFFFFFFFFE3 | (4 * (*result & 7))];
        a3[2] = encoder[(result[1] >> 1) & 0x1F];
        a3[3] = encoder[(result[2] >> 4) & 0xFFFFFFFFFFFFFFEFLL | (16 * (result[1] & 1))];
        v3 = 2 * (result[2] & 0xF);
        v4 = 4;
        break;
      case 4:
        *a3 = encoder[*result >> 3];
        a3[1] = encoder[(result[1] >> 6) & 0xFFFFFFFFFFFFFFE3 | (4 * (*result & 7))];
        a3[2] = encoder[(result[1] >> 1) & 0x1F];
        a3[3] = encoder[(result[2] >> 4) & 0xFFFFFFFFFFFFFFEFLL | (16 * (result[1] & 1))];
        a3[4] = encoder[(result[3] >> 7) & 0xFFFFFFFFFFFFFFE1 | (2 * (result[2] & 0xF))];
        a3[5] = encoder[(result[3] >> 2) & 0x1F];
        v3 = 8 * (result[3] & 3);
        v4 = 6;
        break;
      case 5:
        *a3 = encoder[*result >> 3];
        a3[1] = encoder[(result[1] >> 6) & 0xFFFFFFFFFFFFFFE3 | (4 * (*result & 7))];
        a3[2] = encoder[(result[1] >> 1) & 0x1F];
        a3[3] = encoder[(result[2] >> 4) & 0xFFFFFFFFFFFFFFEFLL | (16 * (result[1] & 1))];
        a3[4] = encoder[(result[3] >> 7) & 0xFFFFFFFFFFFFFFE1 | (2 * (result[2] & 0xF))];
        a3[5] = encoder[(result[3] >> 2) & 0x1F];
        a3[6] = encoder[(result[4] >> 5) & 0xFFFFFFFFFFFFFFE7 | (8 * (result[3] & 3))];
        v3 = result[4] & 0x1F;
        v4 = 7;
        break;
      default:
        return result;
    }
  }

  a3[v4] = encoder[v3];
  return result;
}

uint64_t _LSIsCPUTypeSubtypeRunnable(int a1, int a2)
{
  if (a1 == 16777228)
  {
    if (_LSGetCPUType::once != -1)
    {
      _LSGetCPUType_cold_1();
    }

    if (_LSGetCPUType::type != 16777228)
    {
      goto LABEL_20;
    }

    v5 = a2 & 0xFFFFFF;
    if ((a2 & 0xFFFFFF) != 0 && v5 != 0xFFFFFF && v5 != 2)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a1 != 16777223)
  {
    v3 = a2 == -1;
    if (a1 != -1)
    {
      v3 = 0;
    }

    return v3 & 1;
  }

  if (_LSGetCPUType::once != -1)
  {
    _LSGetCPUType_cold_1();
  }

  if (_LSGetCPUType::type != 16777223)
  {
LABEL_20:
    v3 = 0;
    return v3 & 1;
  }

  v4 = a2 & 0xFFFFFF;
  if ((a2 & 0xFFFFFF) == 0xFFFFFF)
  {
LABEL_19:
    v3 = 1;
    return v3 & 1;
  }

  if (v4 != 8)
  {
    if (v4 != 3)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (_LSPlatformSupportsHaswell::onceToken != -1)
  {
    _LSIsCPUTypeSubtypeRunnable_cold_2();
  }

  v3 = _LSPlatformSupportsHaswell::canRun;
  return v3 & 1;
}

uint64_t initMCFeatureSystemAppRemovalAllowed()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureSystemAppRemovalAllowed");
  constantMCFeatureSystemAppRemovalAllowed = result;
  getMCFeatureSystemAppRemovalAllowed = MCFeatureSystemAppRemovalAllowedFunction;
  return result;
}

Boolean UTTypeIsDynamic(CFStringRef inUTI)
{
  if (inUTI)
  {
    v1 = inUTI;
    LODWORD(inUTI) = _UTTypeIdentifierIsValid(inUTI);
    if (inUTI)
    {
      LOBYTE(inUTI) = _UTTypeIdentifierIsDynamic(v1) != 0;
    }
  }

  return inUTI;
}

id _LSGetBRDisplayNameForContainerNode(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  if (v3 && [v3 isDirectory])
  {
    v5 = [v3 nameWithError:0];
    v6 = v5;
    if (v5 && (CFStringFind(v5, @"~", 0).location != -1 || CFStringCompare(v6, @"Desktop", 0) == kCFCompareEqualTo || CFStringCompare(v6, @"Documents", 0) == kCFCompareEqualTo))
    {
      v7 = [v3 URL];

      if (v4)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = ___LSGetBRDisplayNameForContainerNode_block_invoke;
        v16[3] = &unk_1E6A1AA08;
        v16[4] = &v17;
        v16[5] = v7;
        [v4 enumerateObjectsUsingBlock:v16];
      }

      v8 = v18;
      if (!v18[5])
      {
        v9 = softLinkBRCopyDisplayNameForContainerAtURL;
        if (softLinkBRCopyDisplayNameForContainerAtURL)
        {
          v10 = softLinkBRCopyDisplayNameForContainerAtURL(v7, 0);
          v8 = v18;
          v9 = v18[5];
        }

        else
        {
          v10 = 0;
        }

        v8[5] = v10;
      }
    }
  }

  v11 = v18;
  if (v18[5])
  {
    v12 = _NSIsNSString();
    v11 = v18;
    if ((v12 & 1) == 0)
    {
      v13 = v18[5];
      v18[5] = 0;

      v11 = v18;
    }
  }

  v14 = v11[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

void sub_181666B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_181666D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t _LSFindOrFindOrRegisterBundleNode(uint64_t *a1, void *a2, unsigned int *a3, unsigned int a4, FSNode *a5, unsigned int *a6, LSBundleData **a7)
{
  v13 = a2;
  if ([v13 canIssueIO])
  {
    v14 = _LSFindOrRegisterBundleNode(a1, v13, a3, a4, a5, a6, a7);
  }

  else
  {
    v14 = _LSBundleFindWithNode(a1, v13, a6, a7);
  }

  v15 = v14;

  return v15;
}

uint64_t _LSFindOrRegisterBundleNode(uint64_t *a1, void *a2, unsigned int *a3, unsigned int a4, FSNode *a5, unsigned int *a6, LSBundleData **a7)
{
  v79 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = v11;
  v13 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  theArray = 0;
  v72 = 0;
  v14 = 4294967246;
  v70 = 0;
  if (!a1 || !v11)
  {
    goto LABEL_120;
  }

  if (a3)
  {
    v15 = *a3;
  }

  else
  {
    v15 = _LSGetBundleClassForNode(a1, v11);
  }

  if (v15 == 11)
  {
    v16 = a4 | 0x10000000;
  }

  else
  {
    v16 = a4;
  }

  v17 = v15 > 0x10 || ((1 << v15) & 0x16804) == 0;
  if (v17 && (v16 & 0x10000000) == 0)
  {
    v20 = 0;
    v13 = 0;
    v14 = 4294956485;
    if ((v16 & 0x4000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_43;
  }

  v18 = _LSBundleFindWithNode(a1, v12, &v75, &v74);
  v14 = v18;
  if (v18 == -9499)
  {
    v19 = 1;
  }

  else
  {
    if (v18)
    {
      v13 = 0;
      goto LABEL_120;
    }

    v19 = _LSBundleNeedsRegistration(a1, v12, v16, v75, v74) != 0;
  }

  v13 = 0;
  v20 = 0;
  if (!a5 || !v19)
  {
LABEL_42:
    if ((v16 & 0x4000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_43;
  }

  if (!*a1)
  {
    v13 = 0;
    v14 = 4294956479;
    goto LABEL_120;
  }

  v69 = 0;
  v21 = _LSContainerFindOrRegisterWithNode(a1, v12, v16, &v73, 0, &v72, &v69);
  v22 = v69;
  v13 = v22;
  if ((v21 & 1) == 0)
  {
    v14 = _LSGetOSStatusFromNSError(v22);
    if (v14)
    {
      goto LABEL_120;
    }
  }

  v75 = 0;
  v74 = 0;
  v23 = _LSBundleFindWithNode(a1, v12, &v75, &v74);
  v14 = v23;
  if (v23 == -9499)
  {
    v24 = 1;
  }

  else
  {
    if (v23)
    {
      goto LABEL_120;
    }

    v24 = _LSBundleNeedsRegistration(a1, v12, v16, v75, v74) != 0;
  }

  if (!v74)
  {
    if (v24)
    {
      v61 = 0;
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (!v24)
  {
LABEL_41:
    v20 = 0;
    goto LABEL_42;
  }

  v61 = *&v74->appStoreToolsBuildVersion;
  if ((*(&v74->_clas + 1) & 0x80) == 0)
  {
    v16 |= 2u;
  }

LABEL_37:
  v25 = objc_autoreleasePoolPush();
  v26 = v73;
  v27 = theArray;
  v28 = v72;
  theArray = 0;
  if (v27)
  {
    CFRelease(v27);
  }

  v68 = 0;
  v29 = _LSRegisterBundleNode(a1, v26, v28, v12, v16, a5, &theArray, &v70, &v75, &v68);
  v30 = v68;
  v31 = v30;
  if (v29)
  {
    v14 = 0;
  }

  else
  {
    v14 = _LSGetOSStatusFromNSError(v30);
  }

  objc_autoreleasePoolPop(v25);
  if (!v14)
  {
    if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
    {
      for (i = 0; i != Count; ++i)
      {
        v35 = objc_autoreleasePoolPush();
        LODWORD(v64) = 0;
        *buf = 0;
        if (!theArray || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, i), v37 = CFURLGetTypeID(), ValueAtIndex) && v37 && CFGetTypeID(ValueAtIndex) != v37)
        {
          ValueAtIndex = 0;
        }

        if (v70)
        {
          v16 |= 6u;
        }

        else
        {
          v16 = v16 & 0xFFFFFFF9 | 4;
        }

        v14 = FSNodeCreateWithURL(ValueAtIndex, 0, buf);
        if (!v14)
        {
          v67 = 0;
          v38 = _LSRegisterBundleNode(a1, v73, v72, *buf, v16, a5, 0, 0, &v64, &v67);
          v39 = v67;
          v40 = v39;
          if (v38)
          {
            v14 = 0;
          }

          else
          {
            v14 = _LSGetOSStatusFromNSError(v39);
          }
        }

        objc_autoreleasePoolPop(v35);
      }
    }

    else
    {
      v14 = 0;
    }

    if ((v16 & 0x3000000) == 0x2000000)
    {
      [(_LSDatabase *)*a1 store];
      Generation = CSStoreGetGeneration();
      v66 = 0;
      v42 = _LSContextUpdate(a1, 1, &v66);
      v43 = v66;
      if (v42)
      {
        v44 = _LSRegistrationLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          [(_LSDatabase *)*a1 store];
          v45 = CSStoreGetGeneration();
          *buf = 134218240;
          *&buf[4] = Generation;
          v77 = 2048;
          v78 = v45;
          _os_log_impl(&dword_18162D000, v44, OS_LOG_TYPE_DEFAULT, "LSFORBN: Caller wants reinitialization, updated store from generation %lu to %lu", buf, 0x16u);
        }
      }

      else
      {
        v47 = _LSRegistrationLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_18162D000, v47, OS_LOG_TYPE_ERROR, "LSFORBN: couldn't update context as asked", buf, 2u);
        }

        v14 = _LSGetOSStatusFromNSError(v43);
        if (v14)
        {

          goto LABEL_120;
        }
      }

      v74 = _LSBundleGet(*a1, v75);
      if (!v74)
      {
        v65 = 0;
        v64 = 0;
        if (_LSBundleFindWithNode(a1, v12, &v65, &v64))
        {
          v48 = _LSRegistrationLog();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v75;
            _os_log_impl(&dword_18162D000, v48, OS_LOG_TYPE_ERROR, "Couldn't refind bundle unit after registering %llx", buf, 0xCu);
          }
        }

        else if (*(v64 + 276) > v61)
        {
          v55 = _LSRegistrationLog();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v75;
            v77 = 2048;
            v78 = v65;
            _os_log_impl(&dword_18162D000, v55, OS_LOG_TYPE_ERROR, "After registering bundle unit %llx and reinitializing context, couldn't find it, but did find bundle unit %llx on refetch-by-node; using that", buf, 0x16u);
          }

          v75 = v65;
          v74 = v64;
        }
      }

      v14 = 0;
    }

    else
    {
      v74 = 0;
    }

    v20 = 1;
    if ((v16 & 0x4000000) == 0)
    {
LABEL_103:
      if (v14 && v14 != -10654)
      {
        goto LABEL_120;
      }

      v56 = v75;
      v57 = v74;
      if (v14 || !v75 || v74)
      {
        if (v14)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v57 = _LSBundleGet(*a1, v75);
        v74 = v57;
        v56 = v75;
      }

      if (!v56)
      {
        goto LABEL_123;
      }

      if (((v20 ^ 1 | ((v16 & 0x2000000) >> 25)) & 1) == 0)
      {
        v58 = _LSDefaultLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          _LSFindOrRegisterBundleNode_cold_1(&v74, v16, v58);
        }

        goto LABEL_116;
      }

      if (!v57)
      {
LABEL_123:
        v14 = 4294956482;
        goto LABEL_120;
      }

LABEL_116:
      if (a6)
      {
        *a6 = v75;
      }

      if (a7)
      {
        *a7 = v74;
      }

      goto LABEL_120;
    }

LABEL_43:
    if (!v75)
    {
      goto LABEL_128;
    }

    if (v74)
    {
      v32 = *(&v74->_clas + 5) & 1;
    }

    else
    {
      *buf = 0;
      if (_LSContextInit(buf))
      {
        v32 = 0;
      }

      else
      {
        v46 = _LSBundleGet(*buf, v75);
        v74 = v46;
        if (v46)
        {
          v32 = *(v46 + 173) & 1;
          v74 = 0;
        }

        else
        {
          v32 = 0;
        }

        _LSContextDestroy(buf);
      }
    }

    if (v32)
    {
LABEL_128:
      v49 = [(FSNode *)v12 URL];
      v50 = *MEMORY[0x1E695E480];
      v51 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();

      if (v51)
      {
        v52 = CFBundleCopyBundleURL(v51);
        if (v52)
        {
          v53 = [[FSNode alloc] initWithURL:v52 flags:0 error:0];
          if (v53)
          {
            v54 = _LSFindOrRegisterBundleNode(a1, v53, 0, v16 & 0xFBFFFFFF, 0, &v75, &v74);
            if (v54)
            {
              v14 = v54;
            }

            else
            {
              v14 = 4294956642;
            }
          }

          CFRelease(v52);
        }

        CFRelease(v51);
      }
    }

    goto LABEL_103;
  }

LABEL_120:

  if (theArray)
  {
    CFRelease(theArray);
  }

  v59 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1816676CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, CFTypeRef cf, void *a23)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void sub_1816678EC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_181667900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSBundleNeedsRegistration(LSContext *a1, FSNode *a2, int a3, unsigned int a4, const LSBundleData *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v11 = v9;
  if (v9)
  {
    HasChanged = _LSNodeHasChanged(v9, v10, a4, a5, 0);
    v14 = (a3 & 0x40000000) == 0 || HasChanged == 0;
    if ((a3 & 1) != 0 || !v14)
    {
      goto LABEL_14;
    }
  }

  else if (a3)
  {
    goto LABEL_14;
  }

  if (([(_LSDatabase *)a1->db isSeeded]& 1) != 0)
  {
    v15 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v16 = getNeedsRegistrationLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = a4;
    _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "bundle 0x%llx needs registration", &v19, 0xCu);
  }

  v15 = 1;
LABEL_17:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

id getValueForKeyFromPlugin(NSString *a1, const LSPluginData *a2, _LSDatabase *a3)
{
  v5 = a1;
  v6 = a3;
  if ([(NSString *)v5 isEqualToString:@"NSExtensionIdentifier"])
  {
    if ((a2->var1 & 4) != 0)
    {
      var3 = a2->var3;
    }

    else
    {
      var2 = a2->var2;
    }

    [(_LSDatabase *)v6 store];
    goto LABEL_12;
  }

  if ([(NSString *)v5 isEqualToString:@"NSExtensionPointName"])
  {
    var5 = a2->var5;
    [(_LSDatabase *)v6 store];
LABEL_12:
    v12 = _CSStringCopyCFString();
    goto LABEL_13;
  }

  if ([(NSString *)v5 isEqualToString:@"NSExtensionPointIdentifier"])
  {
    var4 = a2->var4;
    [(_LSDatabase *)v6 store];
    goto LABEL_12;
  }

  if ([(NSString *)v5 isEqualToString:@"com.apple.uuid"])
  {
    var7 = a2->var7;
    [(_LSDatabase *)v6 store];
    goto LABEL_12;
  }

  if ([(NSString *)v5 isEqualToString:@"NSExtensionContainingApp"])
  {
    var8 = a2->var8;
    if (var8)
    {
      if (v6)
      {
        v15 = _LSBundleGet(v6, var8);
        if (v15 && *v15)
        {
          v16 = _LSAliasCopyResolvedNode(v6, *v15, 0, 0, 0);
          v17 = v16;
          if (v16)
          {
            v18 = [v16 URL];
            v12 = [v18 path];
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v19 = _LSDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          getValueForKeyFromPlugin(v19);
        }
      }
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

uint64_t _UTDynamicValuesSearch(uint64_t a1, const __CFString *a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t a6)
{
  v55 = *MEMORY[0x1E69E9840];
  XCFBufInit(&v45);
  if (a2 && (v12 = CFGetTypeID(a2), v12 == CFStringGetTypeID()))
  {
    Length = CFStringGetLength(a2);
    XCFBufInitWithCFStringRange(&v47, a2, 0, Length, 0);
  }

  else
  {
    XCFBufInit(&v47);
  }

  if (v48 >= 5 && *(v47 + 4) == 97)
  {
    v14 = _UTBase32DecodedLength(v48 - 5);
    XCFBufAddCapacity(&v45, v14);
    v15 = _UTBase32Decode(v47 + 5, v48 - 5, v45);
    v45[v14] = 0;
    v46 = v14;
    XCFBufDestroy(&v47);
    if (v15)
    {
      v54 = a6;
      i = v45;
      v47 = a1;
      v49 = v45;
      if (v45)
      {
        while (1)
        {
          v17 = v45;
          v18 = &v45[v46];
          if (v18 == i)
          {
            v25 = 0;
            goto LABEL_24;
          }

          v19 = i;
          v20 = i;
          while (1)
          {
            v21 = *v20;
            if (v21 == 61)
            {
              break;
            }

            if (v20 + 1 == v18)
            {
              v22 = v20;
            }

            else
            {
              v22 = v20 + 1;
            }

            if (v21 == 92 && v17 != 0)
            {
              v20 = v22;
            }

            v24 = *v20++;
            *v19++ = v24;
            if (v20 == v18)
            {
              v42 = 0;
              LODWORD(v50) = 0;
              v49 = 0;
              goto LABEL_79;
            }
          }

          v25 = v20 - i;
          for (i = v20; ; i = v29 + 1)
          {
LABEL_24:
            if (i == v18)
            {
              i = 0;
              goto LABEL_38;
            }

            v26 = *i;
            if (v26 == 58)
            {
              break;
            }

            if (i + 1 == v18)
            {
              v27 = i;
            }

            else
            {
              v27 = i + 1;
            }

            if (v26 != 92 || v17 == 0)
            {
              v29 = i;
            }

            else
            {
              v29 = v27;
            }
          }

          ++i;
LABEL_38:
          LODWORD(v50) = v25;
          if (v25)
          {
            v30 = v49;
            if (*v49 == 63)
            {
              v48 = 1;
              v30 = ++v49;
              LODWORD(v50) = --v25;
            }

            else
            {
              v48 = 2;
            }

            v52 = &v30[v25 + 1];
            v31 = _UTDebreviateTerm(&v49);
            v49 = v31;
            v50 = v32;
            if (!a3 || v48 == a3)
            {
              if (!a4)
              {
                goto LABEL_52;
              }

              v42 = 0;
              if (*(a4 + 8) != v32 || !v31)
              {
                goto LABEL_45;
              }

              if (!strncmp(*a4, v31, v32))
              {
LABEL_52:
                v51 = 0;
                v33 = v52;
                if (v52)
                {
                  do
                  {
                    v34 = v33 - v45;
                    if (v46 <= v33 - v45)
                    {
                      v40 = 0;
                      v42 = 0;
                      LODWORD(v53) = 0;
                    }

                    else
                    {
                      v35 = v34;
                      v36 = &v45[v34];
                      if (v35 != v46)
                      {
                        v37 = &v45[v46];
                        v38 = v36;
                        do
                        {
                          v39 = *v38;
                          if (v39 == 92)
                          {
                            if (v38 + 1 != v37)
                            {
                              ++v38;
                            }

                            LOBYTE(v39) = *v38;
                          }

                          else if (v39 == 44 || v39 == 58)
                          {
                            if (v39 == 58)
                            {
                              v40 = 0;
                            }

                            else
                            {
                              v40 = (v38 + 1);
                            }

                            goto LABEL_69;
                          }

                          ++v38;
                          *v36++ = v39;
                        }

                        while (v38 != v37);
                      }

                      v40 = 0;
LABEL_69:
                      LODWORD(v53) = v36 - v33;
                      if (v36 == v33)
                      {
                        v42 = 0;
                      }

                      else
                      {
                        if (v48 == 1)
                        {
                          v52 = _UTDebreviateTerm(&v52);
                          v53 = v41;
                        }

                        v42 = a5(&v47);
                      }
                    }

                    v52 = v40;
                    ++v51;
                    if (!v40)
                    {
                      break;
                    }

                    v33 = v40;
                  }

                  while (!v42);
                  goto LABEL_45;
                }
              }
            }
          }

          v42 = 0;
LABEL_45:
          v49 = i;
          if (!i || v42)
          {
            goto LABEL_79;
          }
        }
      }
    }
  }

  else
  {
    XCFBufDestroy(&v47);
  }

  v42 = 0;
LABEL_79:
  XCFBufDestroy(&v45);
  v43 = *MEMORY[0x1E69E9840];
  return v42;
}

uint64_t _LSNodeHasChanged(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, _BYTE *a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v39 = 0.0;
  v9 = [v8 getContentModificationDate:&v39 error:0];
  v10 = v9;
  if (v9)
  {
    ModTime = _LSBundleDataGetModTime(a4);
    v12 = v39;
    if (ModTime == v39)
    {
      v13 = 0;
      goto LABEL_8;
    }

    v14 = getNeedsRegistrationLog();
    v17 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (ModTime > v12)
    {
      if (v17)
      {
        v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:ModTime];
        v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v39];
        *buf = 134218498;
        v41 = a3;
        v42 = 2114;
        v43 = v18;
        v44 = 2114;
        v45 = v19;
        _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "bundle 0x%llx mod date went backwards from %{public}@ to %{public}@, verifying with fresh node", buf, 0x20u);
      }

      v20 = [FSNode alloc];
      v21 = objc_alloc(MEMORY[0x1E695DFF8]);
      v22 = [v8 URL];
      v23 = [v22 absoluteString];
      v24 = [v21 initWithString:v23];
      v38 = 0;
      v25 = [(FSNode *)v20 initWithURL:v24 flags:0 error:&v38];
      v26 = v38;

      if (!v25)
      {
        v33 = getNeedsRegistrationLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v26;
          _os_log_impl(&dword_18162D000, v33, OS_LOG_TYPE_DEFAULT, "Couldn't get fresh node: %@", buf, 0xCu);
        }

        v13 = 1;
        v14 = v26;
        goto LABEL_31;
      }

      v36 = v26;
      v37 = 0.0;
      v27 = [(FSNode *)v25 getContentModificationDate:&v37 error:&v36];
      v14 = v36;

      if (v27)
      {
        v28 = v37;
        v29 = getNeedsRegistrationLog();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (ModTime == v28)
        {
          if (v30)
          {
            *buf = 134217984;
            v41 = a3;
            _os_log_impl(&dword_18162D000, v29, OS_LOG_TYPE_DEFAULT, "bundle 0x%llx fresh node shows no change, cached data was stale", buf, 0xCu);
          }

          v13 = 0;
          goto LABEL_30;
        }

        if (v30)
        {
          v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:ModTime];
          v35 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v37];
          *buf = 134218498;
          v41 = a3;
          v42 = 2114;
          v43 = v34;
          v44 = 2114;
          v45 = v35;
          _os_log_impl(&dword_18162D000, v29, OS_LOG_TYPE_DEFAULT, "bundle 0x%llx fresh node confirms mod date changed from %{public}@ to %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v29 = getNeedsRegistrationLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v14;
          _os_log_impl(&dword_18162D000, v29, OS_LOG_TYPE_DEFAULT, "Couldn't get refreshed modification date: %@", buf, 0xCu);
        }
      }

      v13 = 1;
LABEL_30:

LABEL_31:
      goto LABEL_7;
    }

    if (v17)
    {
      v31 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:ModTime];
      v32 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v39];
      *buf = 134218498;
      v41 = a3;
      v42 = 2114;
      v43 = v31;
      v44 = 2114;
      v45 = v32;
      _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "bundle 0x%llx mod date changed from %{public}@ to %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v14 = getNeedsRegistrationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v41 = a3;
      _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "bundle 0x%llx does not appear to exist anymore", buf, 0xCu);
    }
  }

  v13 = 1;
LABEL_7:

LABEL_8:
  if (a5)
  {
    *a5 = v10;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t _UTDynamicGetTagSpecification(const __CFString *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__53;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___UTDynamicGetTagSpecification_block_invoke;
  v4[3] = &unk_1E6A1E6F8;
  v4[4] = &v5;
  _UTDynamicValuesSearch(0, a1, 2, 0, _UTDynamicValuesSearchWithBlock::$_0::__invoke, v4);
  if ([v6[5] count])
  {
    v1 = objc_alloc(MEMORY[0x1E695DF20]);
    v2 = [v1 initWithDictionary:v6[5] copyItems:1];
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_181668724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t _FSNodeGetTimestampValue(void *a1, uint64_t a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695DAA8] == a2 || *MEMORY[0x1E695DA98] == a2 || *MEMORY[0x1E695DA80] == a2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *v13 = 0u;
    v14 = 0u;
    v10 = [a1 URL];
    v6 = _CFURLCopyResourcePropertyValuesAndFlags() != 0;

    if (v6)
    {
      if (a3)
      {
        *a3 = 0;
      }
    }

    else if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    v13[0] = 0;
    v6 = [a1 getResourceValue:v13 forKey:a2 options:3 error:a4];
    v7 = v6 ^ 1;
    v8 = v13[0];
    if (!a3)
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      if (v13[0])
      {
        [v13[0] timeIntervalSinceReferenceDate];
        *a3 = v9;
        v8 = v13[0];
      }

      else
      {
        *a3 = 0;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL _UTBase32Decode(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v4 = a1;
  v5 = a1 + a2;
  v6 = a2 & 7;
  if (v5 - v6 != a1)
  {
    v7 = a2 - v6;
    while (_UTBase32DecodeDatum(v4, 8, a3))
    {
      v4 += 8;
      a3 += 5;
      v7 -= 8;
      if (!v7)
      {
        v4 = v5 - v6;
        break;
      }
    }
  }

  if (v6 && _UTBase32DecodeDatum(v4, v6, a3))
  {
    v4 = v5;
  }

  return v4 == v5;
}

uint64_t _UTBase32DecodeDatum(uint64_t a1, int a2, _BYTE *a3)
{
  v3 = 0;
  v21[1] = *MEMORY[0x1E69E9840];
  if (a1 && (a2 - 1) <= 7)
  {
    v4 = 0;
    v21[0] = 0;
    do
    {
      v5 = decoder[*(a1 + v4)];
      if (v5 < 0)
      {
        v3 = 0;
        goto LABEL_19;
      }

      *(v21 + v4++) = v5;
    }

    while (a2 != v4);
    if (a2 <= 4)
    {
      if (a2 == 2)
      {
        *a3 = (BYTE1(v21[0]) >> 2) | (8 * LOBYTE(v21[0]));
      }

      else if (a2 == 4)
      {
        v11 = BYTE1(v21[0]);
        *a3 = (BYTE1(v21[0]) >> 2) | (8 * LOBYTE(v21[0]));
        a3[1] = (2 * BYTE2(v21[0])) | (v11 << 6) | (BYTE3(v21[0]) >> 4);
      }
    }

    else
    {
      switch(a2)
      {
        case 5:
          v12 = BYTE1(v21[0]);
          *a3 = (BYTE1(v21[0]) >> 2) | (8 * LOBYTE(v21[0]));
          v13 = (2 * BYTE2(v21[0])) | (v12 << 6);
          v14 = BYTE3(v21[0]);
          a3[1] = v13 | (BYTE3(v21[0]) >> 4);
          a3[2] = (BYTE4(v21[0]) >> 1) | (16 * v14);
          break;
        case 7:
          v15 = BYTE1(v21[0]);
          *a3 = (BYTE1(v21[0]) >> 2) | (8 * LOBYTE(v21[0]));
          v16 = (2 * BYTE2(v21[0])) | (v15 << 6);
          v17 = BYTE3(v21[0]);
          a3[1] = v16 | (BYTE3(v21[0]) >> 4);
          v18 = BYTE4(v21[0]);
          a3[2] = (BYTE4(v21[0]) >> 1) | (16 * v17);
          a3[3] = (4 * BYTE5(v21[0])) | (v18 << 7) | (BYTE6(v21[0]) >> 3);
          break;
        case 8:
          v6 = BYTE1(v21[0]);
          *a3 = (BYTE1(v21[0]) >> 2) | (8 * LOBYTE(v21[0]));
          v7 = (2 * BYTE2(v21[0])) | (v6 << 6);
          v8 = BYTE3(v21[0]);
          a3[1] = v7 | (BYTE3(v21[0]) >> 4);
          v9 = BYTE4(v21[0]);
          a3[2] = (BYTE4(v21[0]) >> 1) | (16 * v8);
          v10 = BYTE6(v21[0]);
          a3[3] = (4 * BYTE5(v21[0])) | (v9 << 7) | (BYTE6(v21[0]) >> 3);
          a3[4] = HIBYTE(v21[0]) | (32 * v10);
          break;
      }
    }

    v3 = 1;
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
  return v3;
}

char *_UTDebreviateTerm(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return v2;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  if (v3 > 2)
  {
LABEL_14:
    v6 = *(a1 + 8);
    return v2;
  }

  v9 = 0;
  __str = *v2;
  if (v3 != 1)
  {
    LOBYTE(v9) = v2[1];
  }

  *__error() = 0;
  v4 = strtoul(&__str, 0, 16);
  v5 = v4;
  if (!v4)
  {
    if (!*__error())
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (v4 > 0x15)
  {
LABEL_13:
    v2 = *a1;
    goto LABEL_14;
  }

LABEL_9:
  v2 = (&builtins)[v5];
  strlen(v2);
  return v2;
}

uint64_t _UTDynamicValuesSearchWithBlock::$_0::__invoke(uint64_t a1)
{
  v2 = MEMORY[0x1865D71B0](*(a1 + 56));
  v5 = 0;
  (v2)[2](v2, *(a1 + 8), a1 + 16, *(a1 + 32), a1 + 40, &v5);
  v3 = v5;

  return v3;
}

void __mutateSubscriberCountForNotificationName_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = mutateSubscriberCountForNotificationName_notificationSubscriberCounts;
  mutateSubscriberCountForNotificationName_notificationSubscriberCounts = v0;
}

id _LSBundleGetLocalizedNameDictionary(void *a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = _LSBundleGet(v7, a2);
  v11 = *(v10 + 112);
  if (!v11)
  {
    v11 = *(v10 + 104);
  }

  v12 = LaunchServices::LocalizedString::Get(v7, v11);
  if (v12)
  {
    v13 = LaunchServices::LocalizedString::getAllUnsafeLocalizations(v12, v7, 0, 0, 0);
    if (v13)
    {
      v14 = _LSDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        _LSBundleGetShortDescription(v7, a2);
        objc_claimAutoreleasedReturnValue();
        _LSBundleGetLocalizedNameDictionary_cold_1();
      }

      v15 = v13;
      goto LABEL_11;
    }
  }

  v16 = _LSDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    _LSBundleGetShortDescription(v7, a2);
    objc_claimAutoreleasedReturnValue();
    _LSBundleGetLocalizedNameDictionary_cold_2();
  }

  v15 = _LSBundleCopyStringDictionaryForKey(v7, a2, v8, *MEMORY[0x1E695E120], v9);
  if (v15)
  {
LABEL_11:
    if ([v15 count] != 1)
    {
      goto LABEL_16;
    }
  }

  v17 = _LSBundleCopyStringDictionaryForKey(v7, a2, v8, *MEMORY[0x1E695E4F8], v9);
  v18 = v17;
  if (v17 && [v17 count] >= 2)
  {
    v19 = v18;

    v15 = v19;
  }

LABEL_16:
  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

void mutateSubscriberCountForNotificationName(const __CFString *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (mutateSubscriberCountForNotificationName_onceToken != -1)
  {
    mutateSubscriberCountForNotificationName_cold_1();
  }

  os_unfair_lock_lock(&mutateSubscriberCountForNotificationName_notificationCountLock);
  v4 = [mutateSubscriberCountForNotificationName_notificationSubscriberCounts objectForKey:a1];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[2](v3, v6);
  v8 = v7;
  if (v6 != v7)
  {
    if (v6)
    {
      if (!v7)
      {
        v9 = _LSInstallLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412290;
          v17 = a1;
          _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "unregistering for distributed notification %@ in this process", &v16, 0xCu);
        }

        DistributedCenter = CFNotificationCenterGetDistributedCenter();
        CFNotificationCenterRemoveObserver(DistributedCenter, +[LSApplicationWorkspace defaultWorkspace], a1, 0);
      }
    }

    else
    {
      v11 = _LSInstallLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = a1;
        _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "registering for distributed notification %@ in this process", &v16, 0xCu);
      }

      v12 = CFNotificationCenterGetDistributedCenter();
      CFNotificationCenterAddObserver(v12, +[LSApplicationWorkspace defaultWorkspace], LSApplicationWorkspaceNotificationCallback, a1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  v13 = mutateSubscriberCountForNotificationName_notificationSubscriberCounts;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
  [v13 setObject:v14 forKey:a1];

  os_unfair_lock_unlock(&mutateSubscriberCountForNotificationName_notificationCountLock);
  v15 = *MEMORY[0x1E69E9840];
}

id getValueForKeyFromPlist(NSString *a1, NSDictionary *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [(NSDictionary *)v4 objectForKey:@"NSExtension"];
  v6 = [v5 objectForKey:@"NSExtensionAttributes"];
  v7 = v6;
  if (!v6 || ([v6 objectForKey:v3], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [(NSDictionary *)v4 objectForKey:v3];
  }

  return v8;
}

void sub_181669758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816698E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UTDynamicGetFirstTag(const __CFString *a1, const __CFString *cf)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__53;
  v14 = __Block_byref_object_dispose__53;
  v15 = 0;
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFStringGetTypeID()))
  {
    Length = CFStringGetLength(cf);
    if (XCFBufInitWithCFStringRange(v16, cf, 0, Length, 1))
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = ___UTDynamicGetFirstTag_block_invoke;
      v9[3] = &unk_1E6A1E6F8;
      v9[4] = &v10;
      _UTDynamicValuesSearch(0, a1, 2, v16, _UTDynamicValuesSearchWithBlock::$_0::__invoke, v9);
      XCFBufDestroy(v16);
    }
  }

  else
  {
    XCFBufInit(v16);
  }

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_181669A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id a19)
{
  _Block_object_dispose(&a14, 8);

  _Unwind_Resume(a1);
}

uint64_t _UTDynamicEnumerateParentIdentifiers(const __CFString *a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___UTDynamicEnumerateParentIdentifiers_block_invoke;
  v3[3] = &unk_1E6A1E770;
  v3[4] = a2;
  return _UTDynamicValuesSearch(0, a1, 1, &kUTTypeConformsToKeyChars, _UTDynamicValuesSearchWithBlock::$_0::__invoke, v3);
}

BOOL _LSIsPackageExtension(LSContext *a1, int a2, CFStringRef theString)
{
  if (!theString)
  {
    goto LABEL_9;
  }

  Length = CFStringGetLength(theString);
  switch(Length)
  {
    case 3:
      v7 = @"app";
LABEL_8:
      v8 = 1;
      if (CFStringCompare(theString, v7, 1uLL) == kCFCompareEqualTo)
      {
        return v8;
      }

      break;
    case 11:
      v7 = @"placeholder";
      goto LABEL_8;
    case 7:
      v7 = @"service";
      goto LABEL_8;
  }

LABEL_9:
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (_LSDatabaseGetStringForCFString(a1->db, theString, 1))
  {
    _LSDatabaseEnumeratingBindingMap(a1->db);
  }

  v9 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  v10 = v9 == 0;
  v8 = v9 != 0;
  v10 = !v10 || a2 == 0;
  if (!v10)
  {
    db = a1->db;
    TypePackage = _UTTypeGetTypePackage(db);
    return _UTTypeGetActiveIdentifierForTag(db, @"public.filename-extension", theString, TypePackage, 0) != 0;
  }

  return v8;
}

void sub_18166A278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSCopyBundleURLForXPCConnection(void *a1, int a2)
{
  v3 = a1;
  if (v3)
  {
    xpc_connection_get_audit_token();
    v4 = _LSCopyBundleURLForAuditToken(&v6, a2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void ___ZL30_LSDNCGetBiDiControlCharactersv_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v1 = 0;
  v4 = v0;
  do
  {
    [v0 addCharactersInRange:{_LSBiDiControlCharacters[v1++], 1}];
    v0 = v4;
  }

  while (v1 != 12);
  v2 = [v4 copy];
  v3 = _LSDNCGetBiDiControlCharacters(void)::result;
  _LSDNCGetBiDiControlCharacters(void)::result = v2;
}

id UMUserManagerFunction(void)
{
  return classUMUserManager;
}

{
  return classUMUserManager;
}

{
  return classUMUserManager;
}

uint64_t _UTDynamicGetPedigree(uint64_t a1, __CFString *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if (v5)
    {
      v6 = [(__CFString *)a2 copy];
      [v5 addObject:v6];

      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = ___UTDynamicGetPedigree_block_invoke;
      v12 = &unk_1E6A1E798;
      v14 = a1;
      v2 = v5;
      v13 = v2;
      _UTDynamicEnumerateParentIdentifiers(a2, &v9);
    }

    else
    {
      v2 = 0;
    }
  }

  v7 = [v2 copy];

  return v7;
}

CFDictionaryRef UTTypeCopyDeclaration(CFStringRef inUTI)
{
  if (!inUTI || !_UTTypeIdentifierIsDeclarable(inUTI))
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:inUTI];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 declaration];
    v6 = [v5 _expensiveDictionaryRepresentation];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

void ___ZN14LaunchServices19URLPropertyProviderL35prepareLocalizedNameDictionaryValueERNS_8Database7ContextEPU34objcproto23FSNodePropertyProviding11objc_objectP11__FileCachePK10__CFStringPNS0_5StateEPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 unlocalizedNameWithContextIfNeeded:*(a1 + 48) asIfShowingAllExtensions:MEMORY[0x1E695E118]];
  v8 = [v5 unlocalizedNameWithContextIfNeeded:*(a1 + 48) asIfShowingAllExtensions:MEMORY[0x1E695E110]];
  if ([v7 isEqual:v8])
  {
    v9 = v7;

    v8 = v9;
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v10];
  [*(a1 + 40) setObject:v8 forKeyedSubscript:v10];

  objc_autoreleasePoolPop(v6);
}

void _LSDNCWithCharacters(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [(__CFString *)v3 length];
  CharactersPtr = CFStringGetCharactersPtr(v3);
  if (CharactersPtr)
  {
    v4[2](v4, CharactersPtr, v5);
  }

  else
  {
    if (v5 > 0xFF)
    {
      memset(__p, 0, 24);
      std::vector<unsigned short>::__vallocate[abi:nn200100](__p, v5);
    }

    [(__CFString *)v3 getCharacters:__p range:0, v5];
    v4[2](v4, __p, v5);
  }
}

void sub_18166B6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

id *std::vector<LSRecord * {__weak}>::__insert_with_size[abi:nn200100]<LSRecord * const*,LSRecord * const*>(uint64_t *a1, id *a2, void **a3, void **a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v16 = v10 - a2;
      if ((v10 - a2) >> 3 >= a5)
      {
        v24 = 8 * a5;
        std::vector<LSRecord * {__weak}>::__move_range(a1, a2, a1[1], &a2[a5]);
        v25 = v5;
        do
        {
          v26 = *v7++;
          objc_storeWeak(v25++, v26);
          v24 -= 8;
        }

        while (v24);
      }

      else
      {
        v32 = (v10 - a2) >> 3;
        v18 = (a3 + v16);
        v19 = a1[1];
        if ((a3 + v16) != a4)
        {
          v20 = a1[1];
          do
          {
            v21 = *v18++;
            objc_initWeak(v20++, v21);
            v19 += 8;
          }

          while (v18 != a4);
        }

        a1[1] = v19;
        if (v32 >= 1)
        {
          std::vector<LSRecord * {__weak}>::__move_range(a1, v5, v10, &v5[a5]);
          if (v10 != v5)
          {
            v22 = v5;
            do
            {
              v23 = *v7++;
              objc_storeWeak(v22++, v23);
              v16 -= 8;
            }

            while (v16);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 3);
      if (v12 >> 61)
      {
        std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 2 > v12)
      {
        v12 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v33[4] = a1;
      if (v15)
      {
        std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](a1, v15);
      }

      v27 = (8 * (v13 >> 3));
      v33[0] = 0;
      v33[1] = v27;
      v33[3] = 0;
      v28 = 8 * a5;
      v29 = &v27[a5];
      do
      {
        v30 = *v7++;
        objc_initWeak(v27++, v30);
        v28 -= 8;
      }

      while (v28);
      v33[2] = v29;
      v5 = std::vector<LSRecord * {__weak}>::__swap_out_circular_buffer(a1, v33, v5);
      std::__split_buffer<LSRecord * {__weak}>::~__split_buffer(v33);
    }
  }

  return v5;
}

void sub_18166B9DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<LSRecord * {__weak}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<LSRecord * {__weak}>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, id *from)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<LSRecord * {__weak}>,LSRecord * {__weak}*>(a1, from, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - from;
  *(a1 + 8) = from;
  v9 = (v8 + v7 - from);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<LSRecord * {__weak}>,LSRecord * {__weak}*>(a1, v7, from, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<LSRecord * {__weak}>,LSRecord * {__weak}*>(int a1, id *from, id *a3, id *to)
{
  if (from != a3)
  {
    v6 = from;
    v7 = from;
    do
    {
      objc_moveWeak(to++, v7++);
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      objc_destroyWeak(v6++);
    }
  }
}

uint64_t std::__split_buffer<LSRecord * {__weak}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    objc_destroyWeak((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

id *std::remove[abi:nn200100]<std::__wrap_iter<LSRecord * {__weak}*>,decltype(nullptr)>(id *a1, id *a2)
{
  v3 = std::__find[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*,decltype(nullptr),std::__identity>(a1, a2);
  v4 = v3 + 1;
  if (v3 != a2 && v4 != a2)
  {
    do
    {
      WeakRetained = objc_loadWeakRetained(v4);

      if (WeakRetained)
      {
        v7 = objc_loadWeakRetained(v4);
        objc_storeWeak(v3, v7);

        ++v3;
      }

      ++v4;
    }

    while (v4 != a2);
  }

  return v3;
}

id *std::__find[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*,decltype(nullptr),std::__identity>(id *location, id *a2)
{
  for (i = location; i != a2; ++i)
  {
    WeakRetained = objc_loadWeakRetained(i);

    if (!WeakRetained)
    {
      break;
    }
  }

  return i;
}

id *std::vector<LSRecord * {__weak}>::erase(uint64_t a1, id *a2, id *location)
{
  if (location != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*,LSRecord * {__weak}*>(&v9, location, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        objc_destroyWeak(--v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void ___ZN14LaunchServices6RecordL25detachRecordsOnMainThreadEPKP8LSRecordm_block_invoke()
{
  v0 = *LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool;
  v1 = *(LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool + 8);
  if (*LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool != v1)
  {
    v2 = *LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool;
    do
    {
      WeakRetained = objc_loadWeakRetained(v2);
      [WeakRetained _resolveAllProperties];

      ++v2;
    }

    while (v2 != v1);
    do
    {
      v4 = objc_loadWeakRetained(v0);
      [v4 detach];

      ++v0;
    }

    while (v0 != v1);
  }

  v5 = LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool;
  if (LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool)
  {
    v6 = LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool;
    std::vector<LSRecord * {__weak}>::__destroy_vector::operator()[abi:nn200100](&v6);
    MEMORY[0x1865D6250](v5, 0x80C40D6874129);
  }

  LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool = 0;
  LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::nilScanIndex = 0;
}

uint64_t _UTTypeGetTypeFolder(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.folder", (*(v2 + 1616) + 108));

  return CachedType;
}

uint64_t _LSAliasMatchesPath_NoIO(void *a1, int a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSAliasMatchesPath_NoIO(__strong LSDatabaseRef, LSAliasID, NSString *__strong, LSPathMatchType)"}];
    [v14 handleFailureInFunction:v15 file:@"LSAlias.mm" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"inDB != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSAliasMatchesPath_NoIO(__strong LSDatabaseRef, LSAliasID, NSString *__strong, LSPathMatchType)"}];
  [v16 handleFailureInFunction:v17 file:@"LSAlias.mm" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"inPath != nil"}];

LABEL_3:
  v10 = _LSAliasGet(v7, a2);
  v11 = v10;
  if (v10)
  {
    v12 = _LSAliasDataMatchesPath_NoIO(v10, v9, a4);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t LaunchServices::URLPropertyProvider::setValues(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = objc_autoreleasePoolPush();
  v14 = [FSNode alloc];
  if (a8)
  {
    v15 = &v46;
  }

  else
  {
    v15 = 0;
  }

  if (a8)
  {
    v46 = 0;
  }

  v33 = [(FSNode *)v14 initWithURL:a1 flags:64 error:v15];
  if (a8)
  {
    v16 = v46;
  }

  else
  {
    v16 = 0;
  }

  if (!v33)
  {
    v24 = 1;
    goto LABEL_31;
  }

  v45 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v38[0] = 0;
  v40 = 0;
  v41 = 0;
  if (a6 < 1)
  {
    v25 = 0;
    v18 = 0;
    v24 = 1;
    goto LABEL_24;
  }

  v30 = a1;
  v31 = a8;
  v32 = v13;
  v17 = 0;
  v18 = 1;
  while (1)
  {
    v19 = *(a3 + 8 * v17);
    if (v19)
    {
      break;
    }

LABEL_18:
    v18 = ++v17 < a6;
    if (a6 == v17)
    {
      v24 = 1;
      goto LABEL_23;
    }
  }

  v20 = *(a4 + 8 * v17);
  v21 = *(*(a5 + 8 * v17) + 32);
  if (!v21)
  {
LABEL_16:
    if (!v20)
    {
      MEMORY[0x1865D5C80](a2, v19);
    }

    goto LABEL_18;
  }

  v37 = v16;
  v22 = v21(&v42, v33, a2, v19, v20, v38, &v37);
  v23 = v37;

  if (v22)
  {
    v16 = v23;
    goto LABEL_16;
  }

  v24 = 0;
  v16 = v23;
LABEL_23:
  v25 = v41;
  a8 = v31;
  v13 = v32;
  a1 = v30;
LABEL_24:

  if (v40 == 1)
  {
  }

  if (v42 && v44 == 1)
  {
    _LSContextDestroy(v42);
  }

  v26 = v43;
  v42 = 0;
  v43 = 0;

  v44 = 0;
  v27 = v45;
  v45 = 0;

  if (a8 != 0 && v18)
  {
    v36 = v16;
    LaunchServices::URLPropertyProvider::normalizeError(a1, 1, &v36);
    v28 = v36;

    v16 = v28;
    v24 = 0;
    *a8 = v16;
  }

LABEL_31:

  objc_autoreleasePoolPop(v13);
  return v24;
}

CFUUIDRef FSEventsCopyUUIDForDevice(dev_t dev)
{
  v11 = *MEMORY[0x1E69E9840];
  if (dev <= 0)
  {
    v2 = fsevent_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      FSEventsCopyUUIDForDevice_cold_1();
    }
  }

  if (FSEvents_connect() || ((v10 = 0, memset(v9, 0, sizeof(v9)), f2d_get_server_uuid_rpc(FSEvents_f2d_public_port, dev, v9), LODWORD(v9[0]) == 1429032782) ? (v6 = *(v9 + 3) == 1145656661) : (v6 = 0), v6 || (v7 = CFStringCreateWithBytes(0, v9, 36, 0x600u, 0)) == 0))
  {
    v3 = 0;
  }

  else
  {
    v8 = v7;
    v3 = CFUUIDCreateFromString(0, v7);
    CFRelease(v8);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t f2d_get_server_uuid_rpc(int a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(msg, 3162115, 0x24u, 0x50u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&msg[20] == 66102)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 72)
          {
            if (!*&msg[8])
            {
              v8 = *&msg[32];
              if (!*&msg[32])
              {
                v12 = *v15;
                *a3 = v14;
                *(a3 + 16) = v12;
                *(a3 + 32) = *&v15[16];
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&msg[32] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

FSEventStreamEventId FSEventsGetCurrentEventId(void)
{
  v2 = 0;
  v0 = FSEvents_connect();
  result = 0;
  if (!v0)
  {
    f2d_get_current_event_id_rpc(FSEvents_f2d_public_port, &v2);
    return v2;
  }

  return result;
}

uint64_t f2d_get_current_event_id_rpc(int a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x34u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&msg[20] == 66103)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v7 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v12;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v8 = 1;
            }

            else
            {
              v8 = *&msg[32] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t LaunchServices::URLPropertyProvider::prepareApplicationFlags(LaunchServices::Database::Context *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (!v11)
  {
    if (a6)
    {
      v24 = +[_LSDServiceDomain defaultServiceDomain];
      v25 = LaunchServices::Database::Context::_get(a1, v24, 0);

      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(a1 + 3);
        v29 = v26;
      }

      goto LABEL_28;
    }

    return 0;
  }

  v30 = 0;
  v12 = _LSFindOrFindOrRegisterBundleNode(v11, a2, 0, 0x2000000u, 0, 0, &v30);
  if (v12)
  {
    v13 = v12 == -10811;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (a6)
    {
      v26 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "prepareApplicationFlags", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 994);
      v28 = v26;
LABEL_28:
      result = 0;
      *a6 = v26;
      return result;
    }

    return 0;
  }

  if (!v30 || ((clas = v30->_clas, v15 = clas > 0x10, v16 = (1 << clas) & 0x14004, !v15) ? (v17 = v16 == 0) : (v17 = 1), v17))
  {
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E228], 0);
    v22 = *MEMORY[0x1E695E220];
    v23 = a3;
    v21 = 0;
  }

  else
  {
    v18 = *MEMORY[0x1E695E4D0];
    v19 = *MEMORY[0x1E695E4C0];
    if ((*(&v30->_clas + 1) & 0x40000) != 0)
    {
      v20 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v20 = *MEMORY[0x1E695E4C0];
    }

    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E228], v20);
    if ((*(&v30->_clas + 1) & 0x200000) != 0)
    {
      v21 = v18;
    }

    else
    {
      v21 = v19;
    }

    v22 = *MEMORY[0x1E695E220];
    v23 = a3;
  }

  MEMORY[0x1865D5CD0](v23, v22, v21);
  return 1;
}

uint64_t LaunchServices::URLPropertyProvider::prepareVolumeLocalizedNameValue(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if ([a2 canIssueIO])
  {
    v9 = [a2 volumeNodeWithFlags:16 error:a6];
    v10 = v9;
    if (v9)
    {
      v22 = 0;
      v11 = [v9 getResourceValue:&v22 forKey:*MEMORY[0x1E695DC10] options:3 error:a6];
      if (v11)
      {
        MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695ED60], v22);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::URLPropertyProvider::prepareVolumeLocalizedNameValue(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    if (!a6)
    {
      v11 = 0;
      goto LABEL_12;
    }

    v23 = *MEMORY[0x1E696A278];
    v24[0] = @"can't provide with mimic";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "prepareVolumeLocalizedNameValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 860);
    *a6 = v11 = 0;
  }

LABEL_12:
  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t (*initBRCopyDisplayNameForContainerAtURL(const __CFURL *a1, const __CFString *a2))(const __CFURL *, const __CFString *)
{
  v4 = CloudDocsLibrary(void)::frameworkLibrary;
  if (!CloudDocsLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 2);
    CloudDocsLibrary(void)::frameworkLibrary = v4;
  }

  result = dlsym(v4, "BRCopyDisplayNameForContainerAtURL");
  softLinkBRCopyDisplayNameForContainerAtURL = result;
  if (result)
  {

    return result(a1, a2);
  }

  return result;
}

void std::vector<LSRecord * {__weak}>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        objc_destroyWeak(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ___ZN14LaunchServices13PropertyListsL27filterValueFromPropertyListEP11objc_objectP10objc_classS4__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

void receive_and_dispatch_rcv_msg(mach_port_name_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9AC8];
  v3 = (MEMORY[0x1EEE9AC00])();
  v4 = (v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v13 - v5);
  v7 = mach_msg(v4, 50331910, 0, v2, a1, 0, 0);
  if (!v7)
  {
LABEL_8:
    v9 = (v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    goto LABEL_9;
  }

  if (v7 != 268451844)
  {
    v11 = fsevent_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      receive_and_dispatch_rcv_msg_cold_2();
    }

    goto LABEL_8;
  }

  v8 = v4->msgh_size + 68;
  v9 = malloc_type_malloc(v8, 0x1000040504FFAC1uLL);
  if (mach_msg(v9, 262, 0, v8, a1, 0, 0))
  {
    v10 = fsevent_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      receive_and_dispatch_rcv_msg_cold_1();
    }
  }

LABEL_9:
  *v6 = 0;
  v6[1] = v2;
  FSEventsD2F_server(v9, v6);
  if (v9 != v4)
  {
    free(v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t FSEventsD2F_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (a1[5] == 67000)
  {
    _Xcallback_rpc(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

void _Xcallback_rpc(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 4 && *(a1 + 4) == 120)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 71) == 1 && *(a1 + 87) == 1)
    {
      v3 = *(a1 + 40) >> 2;
      if (v3 == *(a1 + 104))
      {
        v4 = *(a1 + 56) >> 2;
        if (v4 == *(a1 + 108))
        {
          v5 = *(a1 + 72) >> 3;
          if (v5 == *(a1 + 112) && *(a1 + 88) == *(a1 + 116))
          {
            *(a2 + 32) = implementation_callback_rpc(*(a1 + 12), *(a1 + 100), *(a1 + 28), v3, *(a1 + 44), v4, *(a1 + 60), v5, *(a1 + 76), *(a1 + 88));
            mig_deallocate(*(a1 + 76), *(a1 + 88));
            *(a1 + 76) = 0;
            *(a1 + 88) = 0;
            mig_deallocate(*(a1 + 60), *(a1 + 72));
            *(a1 + 60) = 0;
            *(a1 + 72) = 0;
            mig_deallocate(*(a1 + 44), *(a1 + 56));
            *(a1 + 44) = 0;
            *(a1 + 56) = 0;
            mig_deallocate(*(a1 + 28), *(a1 + 40));
            *(a1 + 28) = 0;
            *(a1 + 40) = 0;
            return;
          }
        }
      }
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t implementation_callback_rpc(int a1, unsigned int a2, uint64_t a3, int a4, _BYTE *a5, int a6, __CFArray *a7, int a8, char *a9, int a10)
{
  v156 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  if (a2 != a4)
  {
    v16 = fsevent_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_1();
    }
  }

  if (a2 != a6)
  {
    v17 = fsevent_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_2();
    }
  }

  if (a2 == a8 || (v18 = fsevent_default_log(), !os_log_type_enabled(v18, OS_LOG_TYPE_ERROR)))
  {
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_84:
    v72 = fsevent_default_log();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_18();
    }

    v36 = 4294967278;
    goto LABEL_218;
  }

  implementation_callback_rpc_cold_3();
  if (!a2)
  {
    goto LABEL_84;
  }

LABEL_10:
  v19 = *MEMORY[0x1E695E480];
  v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (!v20)
  {
    v35 = fsevent_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_17();
    }

    v36 = 4294967279;
    goto LABEL_218;
  }

  v21 = v20;
  pthread_mutex_lock(&FSEvents_streamDict_mutex);
  Value = CFDictionaryGetValue(FSEvents_streamDict, v21);
  pthread_mutex_unlock(&FSEvents_streamDict_mutex);
  CFRelease(v21);
  if (!Value)
  {
    v37 = fsevent_default_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_16();
    }

    v36 = 4294967286;
    goto LABEL_218;
  }

  v23 = 0;
  v24 = 0;
  LODWORD(v25) = 0;
  LODWORD(v146) = a10;
  v145 = a9;
  v141 = a2;
  do
  {
    v26 = *&a5[v23];
    v27 = (v26 << 8) & 0x1000;
    if ((v26 & 0x20) != 0)
    {
      v27 = 4096;
    }

    v28 = vandq_s8(vshlq_u32(vdupq_n_s32(v26), xmmword_1817E8990), xmmword_1817E89A0);
    v29 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
    v30 = v29.i32[0] | v26 & 0x100000 | v29.i32[1] | (v26 >> 4) & 0x40000 | (((v26 >> 19) & 1) << 21) | (v26 << 8) & 0x400F00 | v27 & 0xFFFFFFF8 | (v26 >> 29);
    if ((v26 & 0x40) != 0)
    {
      v30 |= 0xA000u;
    }

    v31 = (v26 << 6) & 0x8000;
    if ((v26 & 0x400) != 0)
    {
      v31 = 0x8000;
    }

    *&a5[v23] = (v26 >> 2) & 0x80000 | (((v26 >> 8) & 1) << 14) | (((v26 >> 7) & 1) << 8) | v31 | v30;
    if ((v30 & 6) != 0)
    {
      v32 = *(Value + 18);
      v24 = 1;
    }

    else
    {
      v32 = 1;
    }

    v25 = (v32 + v25);
    v23 += 4;
  }

  while (4 * a2 != v23);
  v33 = *(Value + 46);
  if ((v33 & 0x40) != 0)
  {
    v34 = malloc_type_calloc(v25, 8uLL, 0x100004000313F17uLL);
    if ((*(Value + 46) & 0x100) != 0)
    {
      goto LABEL_25;
    }

LABEL_33:
    v144 = 0;
    goto LABEL_34;
  }

  v34 = 0;
  if ((v33 & 0x100) == 0)
  {
    goto LABEL_33;
  }

LABEL_25:
  v144 = malloc_type_calloc(v25, 4uLL, 0x100004052888210uLL);
LABEL_34:
  if (a2 == 1 && (*a5 & 0x10) != 0)
  {
    if (!Value[190])
    {
      v36 = 0;
      goto LABEL_218;
    }

    Value[190] = 0;
  }

  if (!Value[188])
  {
    v36 = 4294966297;
    goto LABEL_218;
  }

  v143 = malloc_type_malloc(8 * v25, 0x10040436913F5uLL);
  if (!v143)
  {
    v67 = fsevent_default_log();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_15();
    }

    v40 = 0;
    v36 = 4294967285;
    goto LABEL_215;
  }

  *&v138 = a3;
  v38 = malloc_type_calloc(v25, 4uLL, 0x100004052888210uLL);
  v40 = v38;
  v142 = v34;
  if (!v38)
  {
    v68 = fsevent_default_log();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_14();
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    v42 = 0;
    v45 = 0;
    v36 = 4294967285;
    goto LABEL_199;
  }

  v139 = v38;
  v134 = 8 * v25;
  if (!v24)
  {
    if (!v25)
    {
      v45 = a7;
      v42 = a5;
      goto LABEL_127;
    }

    v140 = a7;
    v137 = v19;
    v133 = 0;
    v73 = (v138 + 4);
    *&v39 = 136315394;
    v138 = v39;
    v74 = v143;
    v75 = v144;
    v76 = v25;
    v77 = v146;
    while (1)
    {
      if (*(v73 - 1) >= v77)
      {
        v78 = fsevent_default_log();
        v79 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
        v77 = v146;
        if (v79)
        {
          *buf = v138;
          v153 = "implementation_callback_rpc";
          v154 = 2080;
          v155 = "path_offsets[i] < paths_blobCnt";
          _os_log_error_impl(&dword_18162D000, v78, OS_LOG_TYPE_ERROR, "%s(): failed assertion '%s'\n", buf, 0x16u);
          v77 = v146;
        }
      }

      v80 = *(v73 - 1);
      if (v80 >= v77)
      {
        v81 = "ERROR: failed assertion: path_offsets[i] < paths_blobCnt";
      }

      else
      {
        v81 = &v145[v80];
      }

      *v74 = v81;
      if (v142)
      {
        v82 = strlen(v81);
        v77 = v146;
        v83 = v146;
        if (v25 != 1)
        {
          v83 = v146;
          if (v76 != 1)
          {
            v83 = *v73;
          }
        }

        v84 = v80 + v82 + 1;
        if (v84 == v83)
        {
          v85 = 0;
        }

        else
        {
          if (v84 + 8 > v83)
          {
            goto LABEL_105;
          }

          v85 = *&v145[v84];
        }

        *v34 = v85;
      }

LABEL_105:
      if (v144)
      {
        v86 = strlen(v81);
        v77 = v146;
        v87 = v146;
        if (v25 != 1)
        {
          v87 = v146;
          if (v76 != 1)
          {
            v87 = *v73;
          }
        }

        v88 = v80 + v86 + 9;
        if (v88 == v87)
        {
          v89 = 0;
LABEL_113:
          *v75 = v89;
          goto LABEL_114;
        }

        if (v88 + 4 <= v87)
        {
          v89 = *&v145[v88];
          goto LABEL_113;
        }
      }

LABEL_114:
      ++v75;
      v34 += 8;
      ++v73;
      ++v74;
      if (!--v76)
      {
        v40 = v139;
        v45 = v140;
        v42 = a5;
        v24 = v133;
        v19 = v137;
        goto LABEL_127;
      }
    }
  }

  v140 = a7;
  v41 = malloc_type_malloc(4 * v25, 0x100004052888210uLL);
  if (!v41)
  {
    v90 = fsevent_default_log();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_6();
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    v42 = 0;
    v45 = 0;
    v36 = 4294967281;
    goto LABEL_199;
  }

  v42 = v41;
  v43 = malloc_type_malloc(v134, 0x100004000313F17uLL);
  if (!v43)
  {
    v91 = fsevent_default_log();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_5();
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    v45 = 0;
    v36 = 4294967280;
    goto LABEL_199;
  }

  v45 = v43;
  v137 = v19;
  v133 = v24;
  v46 = 0;
  v47 = 0;
  *&v136 = v138 + 4;
  *&v44 = 136315394;
  v132 = v44;
  v48 = v141;
  v49 = v146;
  do
  {
    v50 = *&a5[4 * v46];
    v51 = *(v140 + v46);
    if ((v50 & 6) == 0)
    {
      if (*(v138 + 4 * v46) >= v49)
      {
        v135 = fsevent_default_log();
        v56 = os_log_type_enabled(v135, OS_LOG_TYPE_ERROR);
        v49 = v146;
        if (v56)
        {
          *buf = v132;
          v153 = "implementation_callback_rpc";
          v154 = 2080;
          v155 = "path_offsets[i] < paths_blobCnt";
          _os_log_error_impl(&dword_18162D000, v135, OS_LOG_TYPE_ERROR, "%s(): failed assertion '%s'\n", buf, 0x16u);
          v49 = v146;
        }
      }

      v57 = *(v138 + 4 * v46);
      v58 = &v145[v57];
      if (v57 >= v49)
      {
        v58 = "ERROR: failed assertion: path_offsets[i] < paths_blobCnt";
      }

      v143[v47] = v58;
      if (v142)
      {
        v59 = strlen(v143[v46]);
        v49 = v146;
        v60 = v146;
        if (v25 != 1)
        {
          v60 = v146;
          if (v46 != v25)
          {
            v60 = *(v136 + 4 * v46);
          }
        }

        v61 = v57 + v59 + 1;
        if (v61 == v60)
        {
          v62 = 0;
        }

        else
        {
          if (v61 + 8 > v60)
          {
            goto LABEL_64;
          }

          v62 = *&v145[v61];
        }

        *&v142[8 * v47] = v62;
      }

LABEL_64:
      v48 = v141;
      if (v144)
      {
        v63 = strlen(v143[v46]);
        v49 = v146;
        v64 = v146;
        if (v25 != 1)
        {
          v64 = v146;
          if (v46 != v25)
          {
            v64 = *(v136 + 4 * v46);
          }
        }

        v65 = v57 + v63 + 9;
        if (v65 == v64)
        {
          v66 = 0;
          v48 = v141;
LABEL_72:
          v144[v47] = v66;
          goto LABEL_73;
        }

        v48 = v141;
        if (v65 + 4 <= v64)
        {
          v66 = *&v145[v65];
          goto LABEL_72;
        }
      }

LABEL_73:
      v42[v47] = v50;
      *(v45 + v47++) = v51;
      v40 = v139;
      goto LABEL_74;
    }

    v52 = *(Value + 9);
    if (v52 >= 1)
    {
      v53 = 0;
      v54 = v143;
      do
      {
        v55 = v47 + v53;
        v54[v55] = *(*(Value + 10) + 8 * v53);
        v40[v55] = *(*(Value + 11) + 4 * v53);
        v42[v55] = v50 | 1;
        *(v45 + v55) = v51;
        ++v53;
      }

      while (v52 != v53);
      v47 += v53;
    }

LABEL_74:
    ++v46;
  }

  while (v46 != v48);
  if (v47 == v25)
  {
    v24 = v133;
    v19 = v137;
    goto LABEL_128;
  }

  v92 = fsevent_default_log();
  v24 = v133;
  v19 = v137;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
  {
    implementation_callback_rpc_cold_4();
  }

LABEL_127:
  v48 = v141;
LABEL_128:
  v93 = 0;
  v94 = *(Value + 21);
  if (v94 == -1)
  {
    v94 = 0;
  }

  do
  {
    if (*(v45 + v93) > v94)
    {
      v94 = *(v45 + v93);
    }

    ++v93;
  }

  while (v48 != v93);
  *(Value + 21) = v94;
  v95 = *(Value + 46);
  if ((v95 & 0x40) == 0)
  {
    if ((v95 & 1) == 0)
    {
      v71 = 0;
      goto LABEL_158;
    }

    v119 = malloc_type_calloc(v25, 8uLL, 0x6004044C4A2DFuLL);
    if (!v119)
    {
      v126 = fsevent_default_log();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        implementation_callback_rpc_cold_13();
      }

      v69 = 0;
      v70 = 0;
      v71 = 0;
      v36 = 4294967284;
      goto LABEL_199;
    }

    v69 = v119;
    if (v25)
    {
      v120 = 0;
      while (1)
      {
        v121 = caller_path(v143[v120], v40[v120]);
        v122 = CFStringCreateWithFileSystemRepresentation(v19, v121);
        if (!v122)
        {
          break;
        }

        v69[v120++] = v122;
        if (v25 == v120)
        {
          goto LABEL_176;
        }
      }

      v127 = fsevent_default_log();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
      {
        implementation_callback_rpc_cold_11();
      }

      v70 = 0;
      v71 = 0;
      v36 = 4294967283;
      goto LABEL_199;
    }

LABEL_176:
    v123 = CFArrayCreate(v19, v69, v25, MEMORY[0x1E695E9C0]);
    if (v123)
    {
      v70 = v123;
      v71 = 0;
LABEL_159:
      if (*(Value + 2) && Value[188] && !Value[189])
      {
        FSEventStreamRetain(Value);
        v110 = *(Value + 46);
        if ((v110 & 0x40) != 0)
        {
          (*(Value + 2))(Value, *(Value + 4), v25, v71, v42, v45);
        }

        else if (v110)
        {
          (*(Value + 2))(Value, *(Value + 4), v25, v70, v42, v45);
        }

        else
        {
          v140 = v71;
          v133 = v24;
          v145 = &v132;
          MEMORY[0x1EEE9AC00]();
          if (v134 >= 0x200)
          {
            v112 = 512;
          }

          else
          {
            v112 = v134;
          }

          v146 = (&v132 - ((v111 + 15) & 0xFFFFFFFF0));
          bzero(v146, v112);
          if (v25)
          {
            v113 = v25;
            v114 = v146;
            v115 = v139;
            v116 = v143;
            do
            {
              v118 = *v116++;
              v117 = v118;
              LODWORD(v118) = *v115++;
              *v114 = caller_path(v117, v118);
              v114 = (v114 + 8);
              --v113;
            }

            while (v113);
          }

          (*(Value + 2))(Value, *(Value + 4), v25, v146, v42, v45);
          v24 = v133;
          v40 = v139;
          v71 = v140;
        }

        if (*(Value + 45))
        {
          pthread_mutex_lock((Value + 240));
          pthread_cond_signal((Value + 304));
          pthread_mutex_unlock((Value + 240));
        }

        FSEventStreamRelease(Value);
      }

      v36 = 0;
      goto LABEL_199;
    }

    v128 = fsevent_default_log();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_12();
    }

LABEL_181:
    v70 = 0;
    v71 = 0;
    v36 = 4294967282;
    goto LABEL_199;
  }

  Mutable = CFArrayCreateMutable(v19, v48, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v124 = fsevent_default_log();
    if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_10();
    }

    v69 = 0;
    goto LABEL_181;
  }

  v71 = Mutable;
  if (!v25)
  {
LABEL_158:
    v70 = 0;
    v69 = 0;
    goto LABEL_159;
  }

  v137 = v19;
  v98 = 0;
  *&v97 = 136315394;
  v136 = v97;
  v145 = v142;
  v140 = Mutable;
  v141 = v144;
  while (1)
  {
    v99 = v143[v98];
    v100 = v40[v98];
    v146 = CFDictionaryCreateMutable(v137, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v146)
    {
      break;
    }

    v101 = caller_path(v99, v100);
    v102 = CFStringCreateWithFileSystemRepresentation(v137, v101);
    if (v102)
    {
      v103 = v102;
      CFDictionaryAddValue(v146, @"path", v102);
      CFRelease(v103);
      v40 = v139;
      v71 = v140;
    }

    else
    {
      *&v138 = fsevent_default_log();
      v40 = v139;
      v71 = v140;
      if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        *buf = v136;
        v153 = "implementation_callback_rpc";
        v154 = 2080;
        v155 = v101;
        _os_log_error_impl(&dword_18162D000, v138, OS_LOG_TYPE_ERROR, "%s: ERROR: CFStringCreateWithFileSystemRepresentation('%s') failed", buf, 0x16u);
      }
    }

    if ((*&a5[4 * v98] & 0x77FF00) != 0)
    {
      if (v142 && *v145)
      {
        v104 = CFNumberCreate(v137, kCFNumberSInt64Type, v145);
        if (v104)
        {
          v105 = v104;
          CFDictionaryAddValue(v146, @"fileID", v104);
          CFRelease(v105);
        }

        else
        {
          v106 = fsevent_default_log();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            implementation_callback_rpc_cold_7(v150, &v151, v106);
          }
        }
      }

      if (v144 && *v141)
      {
        v107 = CFNumberCreate(v137, kCFNumberSInt32Type, v141);
        if (v107)
        {
          v108 = v107;
          CFDictionaryAddValue(v146, @"docID", v107);
          CFRelease(v108);
        }

        else
        {
          v109 = fsevent_default_log();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            implementation_callback_rpc_cold_7(v148, &v149, v109);
          }
        }
      }
    }

    CFArraySetValueAtIndex(v71, v98, v146);
    CFRelease(v146);
    ++v98;
    v141 += 4;
    v145 += 8;
    if (v25 == v98)
    {
      goto LABEL_158;
    }
  }

  v125 = fsevent_default_log();
  if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
  {
    implementation_callback_rpc_cold_9();
  }

  v69 = 0;
  v70 = 0;
  v36 = 4294967281;
  v40 = v139;
  v71 = v140;
LABEL_199:
  free(v143);
  if (v42 && v24)
  {
    free(v42);
  }

  if (v45 && v24)
  {
    free(v45);
  }

  v34 = v142;
  if (v69)
  {
    if (v25)
    {
      v129 = v69;
      do
      {
        if (!*v129)
        {
          break;
        }

        CFRelease(*v129++);
        --v25;
      }

      while (v25);
    }

    free(v69);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v71)
  {
    CFRelease(v71);
  }

LABEL_215:
  if (v34)
  {
    free(v34);
  }

  free(v40);
LABEL_218:
  v130 = *MEMORY[0x1E69E9840];
  return v36;
}