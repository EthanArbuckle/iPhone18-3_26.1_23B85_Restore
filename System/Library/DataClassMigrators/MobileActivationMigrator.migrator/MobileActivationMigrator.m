NSError *createMobileActivationError(uint64_t a1, uint64_t a2, id a3, uint64_t a4, void *a5, void *a6, ...)
{
  va_start(va, a6);
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [[NSMutableString alloc] initWithFormat:v13 arguments:va];

  v15 = objc_alloc_init(NSMutableDictionary);
  v16 = v15;
  if (v14)
  {
    [v15 setObject:v14 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v12)
  {
    [v16 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  if (os_variant_allows_internal_security_policies())
  {
    if (a1)
    {
      v17 = [NSString stringWithUTF8String:a1];
      [v16 setObject:v17 forKeyedSubscript:@"FunctionName"];
    }

    if (a2)
    {
      v18 = [NSNumber numberWithUnsignedInt:a2];
      [v16 setObject:v18 forKeyedSubscript:@"SourceLine"];
    }
  }

  v19 = [NSError errorWithDomain:v11 code:a4 userInfo:v16];

  return v19;
}

uint64_t isRunningInDiagnosticsMode()
{
  if (isRunningInDiagnosticsMode_onceToken != -1)
  {
    isRunningInDiagnosticsMode_cold_1();
  }

  return isRunningInDiagnosticsMode_retval;
}

void __isRunningInDiagnosticsMode_block_invoke(id a1)
{
  v1 = MGCopyAnswer();
  v2 = isNSNumber(v1);

  if (v2)
  {
    isRunningInDiagnosticsMode_retval = [v1 BOOLValue];
  }
}

id isNSNumber(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t isSupportedDeviceIdentityClient(uint64_t a1, NSError **a2)
{
  if (isSupportedDeviceIdentityClient_onceToken != -1)
  {
    isSupportedDeviceIdentityClient_cold_1();
  }

  v3 = copy_process_name();
  if (!v3)
  {
    v7 = createMobileActivationError("isSupportedDeviceIdentityClient", 305, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query process name.");
    v6 = 0;
    if (a2)
    {
LABEL_12:
      v9 = v7;
      v8 = 0;
      *a2 = v7;
      goto LABEL_15;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v4 = is_virtual_machine();
  v5 = &isSupportedDeviceIdentityClient_virtualDeviceSupportedList;
  if (!v4)
  {
    v5 = &isSupportedDeviceIdentityClient_physicalDeviceSupportedList;
  }

  v6 = *v5;
  if (([v6 containsObject:v3] & 1) == 0)
  {
    v7 = createMobileActivationError("isSupportedDeviceIdentityClient", 312, @"com.apple.MobileActivation.ErrorDomain", -25, 0, @"%@ is not allowed to use this API. File a radar with 'MobileActivation | all' for support.", v3);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      isSupportedDeviceIdentityClient_cold_2(v7);
      if (a2)
      {
        goto LABEL_12;
      }
    }

    else if (a2)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v7 = 0;
  v8 = 1;
LABEL_15:

  return v8;
}

void __isSupportedDeviceIdentityClient_block_invoke(id a1)
{
  v1 = isSupportedDeviceIdentityClient_virtualDeviceSupportedList;
  isSupportedDeviceIdentityClient_virtualDeviceSupportedList = &off_123D8;

  v2 = isSupportedDeviceIdentityClient_physicalDeviceSupportedList;
  isSupportedDeviceIdentityClient_physicalDeviceSupportedList = &off_123F0;
}

id isSupportedRecoveryLogClient(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (isSupportedRecoveryLogClient_onceToken != -1)
  {
    isSupportedRecoveryLogClient_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = [isSupportedRecoveryLogClient_supportedList containsObject:v2];
LABEL_6:

  return v3;
}

void __isSupportedRecoveryLogClient_block_invoke(id a1)
{
  v1 = isSupportedRecoveryLogClient_supportedList;
  isSupportedRecoveryLogClient_supportedList = &off_12408;
}

uint64_t isSupportedActivationLockClient(uint64_t a1, NSError **a2)
{
  if (isSupportedActivationLockClient_onceToken != -1)
  {
    isSupportedActivationLockClient_cold_1();
  }

  v3 = copy_process_name();
  if (!v3)
  {
    v4 = createMobileActivationError("isSupportedActivationLockClient", 382, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query process name.");
    if (a2)
    {
LABEL_10:
      v6 = v4;
      v5 = 0;
      *a2 = v4;
      goto LABEL_13;
    }

LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  if (([isSupportedActivationLockClient_supportedList containsObject:v3] & 1) == 0)
  {
    v4 = createMobileActivationError("isSupportedActivationLockClient", 387, @"com.apple.MobileActivation.ErrorDomain", -25, 0, @"%@ is not allowed to use this API. File a radar with 'MobileActivation | all' for support.", v3);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      isSupportedDeviceIdentityClient_cold_2(v4);
      if (a2)
      {
        goto LABEL_10;
      }
    }

    else if (a2)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v4 = 0;
  v5 = 1;
LABEL_13:

  return v5;
}

void __isSupportedActivationLockClient_block_invoke(id a1)
{
  v1 = isSupportedActivationLockClient_supportedList;
  isSupportedActivationLockClient_supportedList = &off_12420;
}

NSArray *copy_sorted_file_list(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = [NSURL URLWithString:v1];

  v4 = [NSArray arrayWithObject:NSURLCreationDateKey];
  v5 = [(NSFileManager *)v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v4 options:4 error:0];

  if (v5 && [(NSArray *)v5 count])
  {
    v6 = [(NSArray *)v5 sortedArrayUsingComparator:&__block_literal_global_429];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

int64_t __copy_sorted_file_list_block_invoke(id a1, id a2, id a3)
{
  v4 = a3;
  v15 = 0;
  v5 = [a2 getResourceValue:&v15 forKey:NSURLCreationDateKey error:0];
  v6 = v15;
  if (v5)
  {
    v14 = 0;
    v7 = [v4 getResourceValue:&v14 forKey:NSURLCreationDateKey error:0];
    v8 = v14;
    if (v7)
    {
      [v6 timeIntervalSince1970];
      v10 = v9;
      [v8 timeIntervalSince1970];
      if (v10 < v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v8 = 0;
  }

  return v12;
}

id isNSDictionary(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSArray(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSString(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSData(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSURL(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSDate(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id dictionary_to_xml(uint64_t a1)
{
  v1 = [NSPropertyListSerialization dataWithPropertyList:a1 format:100 options:0 error:0];
  if (v1)
  {
    v2 = [[NSString alloc] initWithData:v1 encoding:4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t store_data(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5 || !v6)
  {
    MobileActivationError = createMobileActivationError("store_data", 542, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    goto LABEL_11;
  }

  v8 = +[NSFileManager defaultManager];
  v9 = [(NSFileManager *)v8 fileExistsAtPath:v5];

  v10 = open_dprotected_np([v5 fileSystemRepresentation], 1794, 4, 0);
  if (v10 == -1)
  {
    v18 = __error();
    v24 = strerror(*v18);
    MobileActivationError = createMobileActivationError("store_data", 551, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create %@: %s", v5, v24);
LABEL_11:
    v16 = MobileActivationError;
    v11 = -1;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v10;
  if ((v9 & 1) != 0 || !chmod([v5 fileSystemRepresentation], 0x1B6u))
  {
    v15 = write(v11, [v7 bytes], objc_msgSend(v7, "length"));
    if (v15 == [v7 length])
    {
      v16 = 0;
      v17 = 1;
LABEL_14:
      close(v11);
      v20 = v17;
      goto LABEL_15;
    }

    v22 = __error();
    v25 = strerror(*v22);
    v13 = createMobileActivationError("store_data", 564, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to write data to %@: %s", v5, v25);
  }

  else
  {
    v12 = __error();
    v23 = strerror(*v12);
    v13 = createMobileActivationError("store_data", 558, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to update file permissions for %@: %s", v5, v23);
  }

  v16 = v13;
  if (a3)
  {
LABEL_12:
    v19 = v16;
    *a3 = v16;
  }

LABEL_13:
  v17 = 0;
  v20 = 0;
  if (v11 != -1)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v20;
}

uint64_t store_dict(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5 || !v6)
  {
    v9 = createMobileActivationError("store_dict", 593, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v8 = 0;
    v13 = -1;
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v28 = 0;
  v8 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v28];
  v9 = v28;
  if (!v8)
  {
    MobileActivationError = createMobileActivationError("store_dict", 601, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to serialize dictionary.");
LABEL_17:
    v23 = MobileActivationError;

    v13 = -1;
    goto LABEL_20;
  }

  v10 = +[NSFileManager defaultManager];
  v11 = [(NSFileManager *)v10 fileExistsAtPath:v5];

  v12 = open_dprotected_np([v5 fileSystemRepresentation], 1794, 4, 0);
  if (v12 == -1)
  {
    v22 = __error();
    v26 = strerror(*v22);
    MobileActivationError = createMobileActivationError("store_dict", 610, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create %@: %s", v5, v26);
    goto LABEL_17;
  }

  v13 = v12;
  if ((v11 & 1) != 0 || !chmod([v5 fileSystemRepresentation], 0x1B6u))
  {
    v21 = write(v13, [(NSData *)v8 bytes], [(NSData *)v8 length]);
    if (v21 == [(NSData *)v8 length])
    {
      v17 = 1;
      goto LABEL_11;
    }

    v24 = __error();
    v27 = strerror(*v24);
    v15 = createMobileActivationError("store_dict", 623, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to write data to %@: %s", v5, v27);
  }

  else
  {
    v14 = __error();
    v25 = strerror(*v14);
    v15 = createMobileActivationError("store_dict", 617, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to update file permissions for %@: %s", v5, v25);
  }

  v23 = v15;

LABEL_20:
  v9 = v23;
  if (a3)
  {
LABEL_9:
    v16 = v9;
    *a3 = v9;
  }

LABEL_10:
  v17 = 0;
  v18 = 0;
  if (v13 != -1)
  {
LABEL_11:
    close(v13);
    v18 = v17;
  }

  return v18;
}

NSMutableDictionary *load_dict(NSMutableDictionary *a1)
{
  if (a1)
  {
    a1 = [NSMutableDictionary dictionaryWithContentsOfFile:a1];
    v1 = vars8;
  }

  return a1;
}

id copy_process_name()
{
  v0 = __chkstk_darwin();
  bzero(buffer, 0x1000uLL);
  memset(v8, 0, sizeof(v8));
  if (v0 && (v1 = +[NSXPCConnection currentConnection]) != 0)
  {
    v2 = v1;
    v3 = [(NSXPCConnection *)v1 processIdentifier];
  }

  else
  {
    v3 = getpid();
  }

  proc_pidpath(v3, buffer, 0x1000u);
  v4 = strlen(buffer);
  if ((v4 & 0x80000000) == 0)
  {
    do
    {
      if (buffer[v4] == 47)
      {
        break;
      }
    }

    while (v4-- > 0);
  }

  __strlcpy_chk();
  v6 = [[NSString alloc] initWithFormat:@"%s", v8];

  return v6;
}

NSInteger numberOfDaysBetweenDates(void *a1, id a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (a1 && v3)
  {
    v9 = a1;
    v7 = +[NSCalendar currentCalendar];
    v16 = 0;
    v10 = [(NSCalendar *)v7 rangeOfUnit:16 startDate:&v16 interval:0 forDate:v9];

    v5 = v16;
    if (v10)
    {
      v15 = 0;
      v11 = [(NSCalendar *)v7 rangeOfUnit:16 startDate:&v15 interval:0 forDate:v4];
      v6 = v15;
      if (v11)
      {
        v12 = [(NSCalendar *)v7 components:16 fromDate:v5 toDate:v6 options:0];
        if (v12)
        {
          v13 = v12;
          v8 = [(NSDateComponents *)v12 day];

          goto LABEL_9;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
  }

LABEL_9:

  return v8;
}

NSMutableString *formatURLRequest(void *a1)
{
  v1 = a1;
  v2 = [NSMutableString stringWithString:@"\n---------REQUEST START---------\n"];
  v3 = [v1 URL];
  v4 = [v3 description];
  [(NSMutableString *)v2 appendFormat:@"URL: %@\n", v4];

  v5 = [v1 HTTPMethod];
  [(NSMutableString *)v2 appendFormat:@"METHOD: %@\n", v5];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v1 allHTTPHeaderFields];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v1 valueForHTTPHeaderField:v11];
        [(NSMutableString *)v2 appendFormat:@"%@: %@\n", v11, v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = [NSString alloc];
  v14 = [v1 HTTPBody];
  v15 = [v13 initWithData:v14 encoding:4];
  [(NSMutableString *)v2 appendFormat:@"BODY: \n%@\n", v15];

  [(NSMutableString *)v2 appendString:@"----------REQUEST END----------\n"];

  return v2;
}

NSMutableString *formatURLResponse(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [NSMutableString stringWithString:@"\n---------RESPONSE START---------\n"];
  v8 = [NSHTTPURLResponse localizedStringForStatusCode:a2];
  [(NSMutableString *)v7 appendFormat:@"HTTP Status Code: %ld (%s)\n", a2, [(NSString *)v8 UTF8String]];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        [(NSMutableString *)v7 appendFormat:@"%@: %@\n", v14, v15, v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [[NSString alloc] initWithData:v5 encoding:4];
  [(NSMutableString *)v7 appendFormat:@"BODY: \n%@\n", v16];

  [(NSMutableString *)v7 appendString:@"----------RESPONSE END----------\n"];

  return v7;
}

uint64_t is_erase_installed_build()
{
  if (copyUserDataDisposition_onceToken != -1)
  {
    is_erase_installed_build_cold_1();
  }

  return copyUserDataDisposition_dataDisposition & 1;
}

uint64_t is_upgrade_installed_build()
{
  if (copyUserDataDisposition_onceToken != -1)
  {
    is_erase_installed_build_cold_1();
  }

  return (copyUserDataDisposition_dataDisposition >> 1) & 1;
}

id data_migration_supported()
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  [@"com.apple.mobileactivationd" UTF8String];
  if ((os_variant_is_darwinos() & 1) != 0 || !xpc_user_sessions_enabled())
  {
    return 0;
  }

  if (copyUserDataDisposition_onceToken != -1)
  {
    is_erase_installed_build_cold_1();
  }

  if ((copyUserDataDisposition_dataDisposition & 2) == 0)
  {
    return 0;
  }

  v1 = +[GestaltHlpr getSharedInstance];
  v2 = [v1 getBoolAnswer:@"DeviceSupportsMultiUser"];

  return v2;
}

void __copyUserDataDisposition_block_invoke(id a1)
{
  [@"com.apple.mobileactivationd" UTF8String];
  if ((os_variant_is_darwinos() & 1) == 0)
  {
    copyUserDataDisposition_dataDisposition = DMGetUserDataDisposition();
  }
}

uint64_t mobileactivationErrorHasDomainAndErrorCode(void *a1, void *a2, id a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    do
    {
      v9 = [v5 domain];
      if ([v9 isEqualToString:v7])
      {
        v10 = [v5 code];

        if (v10 == a3)
        {
          v8 = 1;
          goto LABEL_9;
        }
      }

      else
      {
      }

      v11 = [v5 userInfo];
      v12 = [v11 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v5 = v12;
    }

    while (v12);
    v8 = 0;
  }

LABEL_9:

  return v8;
}

BOOL is_virtual_machine()
{
  v3 = 0;
  v2 = 4;
  return !sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0) && v3 == 1;
}

void sub_3344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void isSupportedDeviceIdentityClient_cold_2(void *a1)
{
  v1 = [a1 localizedDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}