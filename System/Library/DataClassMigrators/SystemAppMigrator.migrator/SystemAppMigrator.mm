id _CreateErrorV(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v17)
  {
    v19 = [v17 mutableCopy];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  if (v18)
  {
    v21 = [[NSString alloc] initWithFormat:v18 arguments:a8];
    [v20 setObject:v21 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v22 = [NSString stringWithUTF8String:a1];
  [v20 setObject:v22 forKeyedSubscript:MIFunctionNameErrorKey];

  v23 = [NSNumber numberWithInt:a2];
  [v20 setObject:v23 forKeyedSubscript:MISourceFileLineErrorKey];

  v24 = [NSError errorWithDomain:v15 code:a4 userInfo:v20];

  return v24;
}

id _CreateError(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = _CreateErrorV(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

id _CreateAndLogError(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = _CreateAndLogErrorV(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

id _CreateAndLogErrorV(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a5;
  v16 = _CreateErrorV(a1, a2, a3, a4, v15, a6, a7, a8);
  v17 = [v16 userInfo];
  v18 = [v17 objectForKeyedSubscript:NSLocalizedDescriptionKey];

  if (v15)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v19 = [v15 domain];
      [v15 code];
      v20 = [v15 userInfo];
      v22 = [v20 objectForKeyedSubscript:NSLocalizedDescriptionKey];
      MOLogWrite();
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  return v16;
}

BOOL _IsMalformedBundleError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = MIInstallerErrorDomain;
  if ([v2 isEqualToString:MIInstallerErrorDomain] && objc_msgSend(v1, "code") == &dword_C)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 domain];
    if ([v5 isEqualToString:v3] && objc_msgSend(v1, "code") == &dword_8 + 3)
    {
      v4 = 1;
    }

    else
    {
      v6 = [v1 domain];
      if ([v6 isEqualToString:v3])
      {
        v4 = [v1 code] == &stru_20.cmd + 3;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

__CFString *MICopyUnlocalizedDescriptionForContainerExtendedError()
{
  v0 = container_error_copy_unlocalized_description();
  if (v0)
  {
    v1 = v0;
    v2 = [NSString stringWithUTF8String:v0];
    free(v1);
  }

  else
  {
    v2 = @"(container_error_copy_unlocalized_description returned NULL)";
  }

  return v2;
}

void sub_1FF4(uint64_t a1)
{
  v2 = [*(a1 + 32) systemAppInstallGroup];
  dispatch_group_enter(v2);

  v3 = [*(a1 + 32) pendingAppInstalls];
  [v3 addObject:*(a1 + 40)];
}

void sub_2114(uint64_t a1)
{
  v2 = [*(a1 + 32) systemAppInstallGroup];
  dispatch_group_leave(v2);

  v3 = [*(a1 + 32) pendingAppInstalls];
  [v3 removeObject:*(a1 + 40)];
}

void sub_2304(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingAppInstalls];
  *(*(*(a1 + 40) + 8) + 24) = 40 * [v2 count];
}

void sub_2368(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingAppInstalls];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v7 = [*(a1 + 32) pendingAppInstalls];
    v5 = [v7 allObjects];
    v6 = [v5 componentsJoinedByString:{@", "}];
    _DMLogFunc();
  }
}

void sub_260C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 intValue] == 6)
  {
    if (([*(a1 + 32) setSystemAppState:0 forBundleID:v6] & 1) == 0)
    {
      _DMLogFunc();
    }
  }

  else
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_2C84(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v15];
  v7 = [v6 intValue];

  if (v7 != 6)
  {
    v8 = [v5 objectForKeyedSubscript:@"UIRequiredDeviceCapabilities"];
    v9 = v8;
    if (v8 && (v14 = v8, _DMLogFunc(), (v10 = MobileInstallationCheckCapabilitiesMatch()) != 0))
    {
      v11 = v10;
      v12 = [v10 objectForKeyedSubscript:{@"CapabilitiesMatch", v15, v14}];
      v13 = MIBooleanValue(v12, 0);

      _DMLogFunc();
      if ((v13 & 1) == 0)
      {
        [*(a1 + 40) markAppAsNotAllowed:{v15, v15, v9, v11}];
      }
    }

    else
    {
      _DMLogFunc();
    }
  }
}

void sub_2ECC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"UIDeviceFamily"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = MIIsApplicableToCurrentDeviceFamilyWithError();
    v10 = 0;
    if ((v9 & 1) == 0)
    {
      _DMLogFunc();
      [*(a1 + 32) markAppAsNotAllowed:{v5, v5, v10}];
    }
  }

  else
  {
    _DMLogFunc();
  }
}

void sub_30B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 intValue];

  if (v8 != 6)
  {
    v9 = [v6 objectForKeyedSubscript:@"LSRequiredFeatureFlags"];
    objc_opt_class();
    v10 = v9;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_32A8;
      v13[3] = &unk_10590;
      v12 = v5;
      v14 = v12;
      v15 = &v16;
      [v11 enumerateKeysAndObjectsUsingBlock:v13];
      if (*(v17 + 24) == 1)
      {
        _DMLogFunc();
        [*(a1 + 40) markAppAsNotAllowed:{v12, v12}];
      }

      else if (!v8 && ([*(a1 + 40) setSystemAppState:1 forBundleID:v12] & 1) == 0)
      {
        _DMLogFunc();
      }

      _Block_object_dispose(&v16, 8);
    }
  }
}

void sub_3290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_32A8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  v18 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v18;
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  v10 = v8;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v9 && v11)
  {
    v12 = [v9 componentsSeparatedByString:@"/"];
    if ([v12 count] == &dword_0 + 2)
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [v12 objectAtIndexedSubscript:1];
      [v13 UTF8String];
      [v14 UTF8String];
      v15 = _os_feature_enabled_impl();
      if (v15 != [v11 BOOLValue])
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }

    else
    {
      v17 = *(a1 + 32);
      _DMLogFunc();
      v14 = 0;
      v13 = 0;
    }
  }

  else
  {
    v16 = *(a1 + 32);
    _DMLogFunc();
  }
}

void sub_3798(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 intValue];

  if (v8 != 1 && v8 != 6)
  {
    v10 = [v6 objectForKeyedSubscript:@"LSEligibilityPredicatesValidAtEraseInstallDataMigration"];
    v11 = MIBooleanValue(v10, 0);

    if ((v11 & 1) != 0 || ([*(a1 + 40) userDataDisposition] & 1) == 0)
    {
      v14 = 0;
      LODWORD(v12) = 0;
      if ([*(a1 + 40) _getLSEligiblityKey:@"LSEligibilityInstallPredicate" appliesTo:&v14 forBundleID:v5 withAppInfo:v6 withEvaluator:*(a1 + 48)])
      {
        if (v14 == 1)
        {
          LODWORD(v12) = v8 == 0;
        }

        else
        {
          LODWORD(v12) = 6;
        }
      }

      v14 = 0;
      v13 = [*(a1 + 40) _getLSEligiblityKey:@"LSEligibilityUninstallPredicate" appliesTo:&v14 forBundleID:v5 withAppInfo:v6 withEvaluator:*(a1 + 48)];
      if ((v13 & v14) != 0)
      {
        v12 = 6;
      }

      else
      {
        v12 = v12;
      }

      if (v12)
      {
        if (v8 != v12)
        {
          _DMLogFunc();
          if (([*(a1 + 40) setSystemAppState:v12 forBundleID:{v5, v5, v8, v12}] & 1) == 0)
          {
            _DMLogFunc();
          }
        }
      }
    }
  }
}

void sub_39F8(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v11];
  v7 = [v6 intValue];

  if (!v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"LSInstallByDefault"];
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      if ((MIBooleanValue(v10, 0) & 1) == 0)
      {
        _DMLogFunc();
        if (([*(a1 + 40) setSystemAppState:6 forBundleID:{v11, v11, 0, 6, @"LSInstallByDefault"}] & 1) == 0)
        {
          _DMLogFunc();
        }
      }
    }
  }
}

void sub_414C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = [v7 applicationIsInstalled:v5];

  if (v8)
  {
    v9 = +[NSNull null];
    v10 = [v6 isEqual:v9];

    if (v10)
    {
      v29 = v5;
    }

    else
    {
      _DMLogFunc();
      if ([*(a1 + 32) setSystemAppState:1 forBundleID:{v6, v5, v6}])
      {
LABEL_22:
        dispatch_group_enter(*(a1 + 40));
        v23 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v5];
        v24 = objc_opt_new();
        [v24 setIgnoreRemovability:1];
        [v24 setIgnoreRestrictions:1];
        [v24 setIgnoreAppProtection:1];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_44D8;
        v32[3] = &unk_105E0;
        v25 = *(a1 + 32);
        v33 = v23;
        v34 = v25;
        v35 = v5;
        v36 = *(a1 + 40);
        v26 = v23;
        [IXAppInstallCoordinator uninstallAppWithIdentity:v26 options:v24 completion:v32];

        goto LABEL_23;
      }

      v29 = v6;
    }

    _DMLogFunc();
    goto LABEL_22;
  }

  v11 = [*(a1 + 48) containsObject:v5];
  v12 = [*(a1 + 32) startingSystemAppState];
  v13 = [v12 objectForKeyedSubscript:v5];

  if (v13)
  {
    v14 = +[NSNull null];
    v15 = [v6 isEqual:v14];

    if ((v15 & 1) == 0)
    {
      v16 = [*(a1 + 32) startingSystemAppState];
      v17 = [v16 objectForKeyedSubscript:v6];

      v18 = [v17 intValue];
      v19 = [v13 intValue];
      v21 = (v19 & 0xFFFFFFFB) != 2 && v18 == 2;
      if ((v21 | v11))
      {
        v22 = v19;
        v30 = v19;
        _DMLogFunc();
        if (([*(a1 + 32) setSystemAppState:v22 forBundleID:{v6, v30, v5, v6}] & 1) == 0)
        {
          v29 = v6;
          v31 = v13;
          _DMLogFunc();
        }
      }
    }

    if (([*(a1 + 32) setSystemAppState:0 forBundleID:{v5, v29, v31}] & 1) == 0)
    {
      v29 = v5;
      _DMLogFunc();
    }
  }

LABEL_23:
  v27 = [*(a1 + 32) itemsToInstall];
  v28 = [v27 objectForKeyedSubscript:v5];

  if (v28)
  {
    [*(a1 + 56) addObject:v5];
  }
}

void sub_44D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (!a2 || v5)
  {
    v6 = *(a1 + 32);
    v9 = v5;
    _DMLogFunc();
  }

  else if (a2 != 3)
  {
    v6 = IXStringForUninstallDisposition();
    v9 = *(a1 + 32);
    _DMLogFunc();
  }

  if (([*(a1 + 40) setSystemAppState:0 forBundleID:{*(a1 + 48), v6, v9}] & 1) == 0)
  {
    v7 = *(a1 + 48);
    _DMLogFunc();
  }

  v8 = *(a1 + 48);
  _DMLogFunc();
  dispatch_group_leave(*(a1 + 56));
}

void sub_48C0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  *a4 = 0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = _CFPreferencesCopyAppValueWithContainer();
  if (v10)
  {
    v11 = v10;
    [*(a1 + 48) setObject:v10 forKeyedSubscript:v7];
  }

  else
  {
    v12 = *(a1 + 32);
    _DMLogFunc();
  }
}

void sub_4C6C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  *a4 = 0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a3;
  v11 = a2;
  _DMLogFunc();
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  _CFPreferencesSetAppValueWithContainer();
}

void sub_4DC0(uint64_t a1)
{
  v2 = [*(a1 + 32) appBundleIDsInstalledSuccessfully];
  [v2 addObject:*(a1 + 40)];
}

void sub_4EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4F14(uint64_t a1)
{
  v2 = [*(a1 + 32) appBundleIDsInstalledSuccessfully];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

uint64_t sub_5E70(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    return _DMLogFunc();
  }

  return result;
}

void sub_5FD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_89E0(v3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_7A6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_7A84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = [a3 objectForKeyedSubscript:@"com.apple.MobileInstallation.stagedAppURL"];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v7 = [v6 unsignedIntegerValue];

  LOBYTE(v6) = [*(a1 + 40) attemptToInstallSystemAppWithBundleID:v5 desiredAppState:v7 stagedAppOrPatchURL:v8 isInstalled:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "containsObject:", v5)}];
  if ((v6 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void sub_7B50(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v20];
  v7 = [v6 unsignedIntegerValue];

  v8 = [*(*(*(a1 + 48) + 8) + 40) containsObject:v20];
  if ((v7 & 0xFFFFFFFB) == 2)
  {
    if (v8)
    {
      _DMLogFunc();
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    goto LABEL_25;
  }

  if (v7 > 5 || ((1 << v7) & 0x23) == 0)
  {
    goto LABEL_25;
  }

  if (v8)
  {
    if ([*(a1 + 40) isCurrentlyInstalledAppInTrustCacheForBundleID:v20])
    {
      goto LABEL_25;
    }

    v10 = [v5 objectForKeyedSubscript:@"com.apple.MobileInstallation.stagedAppURL"];
    v11 = [v10 lastPathComponent];
    v12 = [v11 isEqualToString:v20];

    v13 = +[MIDaemonConfiguration sharedInstance];
    v14 = [v13 codeSigningEnforcementIsDisabled];
    if (v10 && v14 && (v12 & 1) == 0)
    {
      v15 = [*(a1 + 40) appInstalledSuccessfullyWithBundleID:v20];

      if (v15)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    if (![*(a1 + 40) shouldIgnoreAppsNotInTrustCache])
    {
      _DMLogFunc();
      ++*(*(*(a1 + 64) + 8) + 24);
      if (([*(a1 + 40) demoteAppWithBundleID:v20 desiredAppState:5 isInstalled:{1, v20}] & 1) == 0)
      {
        v19 = v20;
        _DMLogFunc();
      }

      v17 = [*(a1 + 40) appBundleIDsRequestingStoreDownload];
      [v17 addObject:v20];

      goto LABEL_24;
    }

LABEL_20:
    _DMLogFunc();
LABEL_24:

    goto LABEL_25;
  }

  _DMLogFunc();
  ++*(*(*(a1 + 64) + 8) + 24);
  if (([*(a1 + 40) demoteAppWithBundleID:v20 desiredAppState:5 isInstalled:{0, v20}] & 1) == 0)
  {
    v18 = v20;
    _DMLogFunc();
  }

  v16 = [*(a1 + 40) appBundleIDsRequestingStoreDownload];
  [v16 addObject:v20];

LABEL_25:
}

void sub_8104(id a1)
{
  qword_151E8 = os_log_create("com.apple.installd", "Signpost");

  _objc_release_x1();
}

id MIBooleanValue(void *a1, id a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v3 BOOLValue];
  }

  return a2;
}

uint64_t MIArrayContainsOnlyClass(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

id MIArrayFilteredToContainOnlyClass(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

uint64_t MIDictionaryContainsOnlyClasses(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_84E8;
  v8[3] = &unk_10760;
  v8[4] = &v9;
  v8[5] = a2;
  v8[6] = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_84D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_84E8(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if (a1[5] && (objc_opt_isKindOfClass() & 1) == 0 || a1[6] && (objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a4 = 1;
  }
}

id MIStringifyObject(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = [NSString stringWithFormat:@"%@", v1];
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MIArrayifyThing(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (MIArrayContainsOnlyClass(v1))
      {
        v2 = v1;
LABEL_7:
        v3 = v2;
        goto LABEL_12;
      }
    }

    else
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v1;
        v2 = [NSArray arrayWithObjects:&v6 count:1];
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v1 allObjects];
        if (MIArrayContainsOnlyClass(v4))
        {
          v3 = v4;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_12;
      }
    }
  }

  v3 = 0;
LABEL_12:

  return v3;
}

BOOL MICompareObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 != 0) == (v4 != 0) && (!v3 || !v4 || [v3 isEqual:v4]);

  return v6;
}

void sub_89E0(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "MISystemAppMigrator: App Store cancel attempt failed: %@", &v1, 0xCu);
}