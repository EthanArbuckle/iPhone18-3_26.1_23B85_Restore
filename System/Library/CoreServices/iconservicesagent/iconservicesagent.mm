void start()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "iconservicesagent launched.", &v7, 2u);
  }

  v0 = _ISDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1 = +[ISDefaults sharedInstance];
    v2 = [v1 safeBoot];
    v7 = 136315394;
    v8 = "com.apple.iconservices";
    v9 = 1024;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Stating IconServices agent service with name: %s safe: %d", &v7, 0x12u);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [IconCacheService alloc];
  v5 = [NSString stringWithUTF8String:"com.apple.iconservices"];
  v6 = [(IconCacheService *)v4 initWithServiceName:v5];

  [(IconCacheService *)v6 start];
  dispatch_main();
}

uint64_t sub_1000012CC(void *a1)
{
  v10 = 0;
  accessControlList = 0;
  v9 = 0;
  v1 = [a1 getResourceValue:&v10 forKey:NSURLFileSecurityKey error:&v9];
  v2 = v10;
  v3 = v9;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100005DFC();
    }

    goto LABEL_11;
  }

  if (!CFFileSecurityCopyAccessControlList(v2, &accessControlList))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  acl_free(accessControlList);
  v7 = 1;
LABEL_12:

  return v7;
}

id sub_1000014B8(void *a1)
{
  v1 = a1;
  if (![v1 caseInsensitiveCompare:@"Black"])
  {
    v17 = 12;
LABEL_49:
    v16 = [NSNumber numberWithInt:v17];
    goto LABEL_50;
  }

  if (![v1 caseInsensitiveCompare:@"White"])
  {
    v17 = 11;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Red"])
  {
    v17 = 0;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Orange"])
  {
    v17 = 1;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Yellow"])
  {
    v17 = 2;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Green"])
  {
    v17 = 3;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Mint"])
  {
    v17 = 5;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Teal"])
  {
    v17 = 4;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Cyan"])
  {
    v17 = 6;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Blue"])
  {
    v17 = 7;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Indigo"])
  {
    v17 = 8;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Purple"])
  {
    v17 = 9;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Pink"])
  {
    v17 = 10;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Brown"])
  {
    v17 = 14;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Gray"])
  {
    v17 = 13;
    goto LABEL_49;
  }

  v2 = [NSCharacterSet characterSetWithCharactersInString:@"1234567890."];
  v3 = [v1 componentsSeparatedByString:{@", "}];
  v4 = v3;
  if (v3 && [v3 count] == 4)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v31 = v4;
      v8 = 0;
      v9 = *v33;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = [v11 stringByTrimmingCharactersInSet:v2];
          if (![v11 length] || objc_msgSend(v12, "length") || (objc_msgSend(v11, "floatValue"), v13 < 0.0) || (objc_msgSend(v11, "floatValue"), v14 > 1.0))
          {
            v15 = _ISDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v11;
            }

            v8 = 1;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v7);

      v4 = v31;
      if (v8)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

    v19 = [v5 objectAtIndex:0];
    [v19 floatValue];
    v21 = v20;

    v22 = [v5 objectAtIndex:1];
    [v22 floatValue];
    v24 = v23;

    v25 = [v5 objectAtIndex:2];
    [v25 floatValue];
    v27 = v26;

    v28 = [v5 objectAtIndex:3];
    [v28 floatValue];
    v30 = v29;

    v16 = [[IFColor alloc] initWithRed:v21 green:v24 blue:v27 alpha:v30];
    goto LABEL_55;
  }

LABEL_33:
  v16 = 0;
LABEL_55:

LABEL_50:

  return v16;
}

id sub_1000019C4(void *a1)
{
  v1 = sub_1000014B8(a1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
LABEL_5:
    v3 = v2;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[IFColor alloc] initWithSystemColor:{objc_msgSend(v1, "intValue")}];
    goto LABEL_5;
  }

  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Unexpected color %@", &v6, 0xCu);
  }

  v3 = 0;
LABEL_9:

  return v3;
}

id sub_100001AF8(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = sub_100001C18(v1);
LABEL_5:
    v3 = v2;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = sub_100001D1C(v1);
    goto LABEL_5;
  }

  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Unexpected color %@", &v6, 0xCu);
  }

  v3 = 0;
LABEL_9:

  return v3;
}

id sub_100001C18(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 ciColor];
    [v2 red];
    v4 = v3;
    v5 = [v1 ciColor];
    [v5 green];
    v7 = v6;
    v8 = [v1 ciColor];
    [v8 blue];
    v10 = v9;
    v11 = [v1 ciColor];

    [v11 alpha];
    v13 = [NSString stringWithFormat:@"%f, %f, %f, %f", v4, v7, v10, v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

__CFString *sub_100001D1C(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return 0;
  }

  else
  {
    return off_10000C430[a1];
  }
}

void sub_100002BF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[LSRecord alloc] initWithPersistentIdentifier:v6];

  if (!v7)
  {
    v8 = _ISDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Removing store unit: %@", &v12, 0xCu);
    }

    v9 = [*(a1 + 32) store];
    v10 = [v9 removeUnitForUUID:v5];

    if (v10)
    {
      v11 = [*(a1 + 32) unitSourceRegistry];
      [v11 removeDataForUUID:v5];
    }
  }
}

void sub_1000031C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000031E0(uint64_t a1)
{
  v2 = _ISDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100005884();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[7];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000032A8;
    block[3] = &unk_10000C4D8;
    v7 = WeakRetained;
    dispatch_async(v5, block);
  }
}

void sub_1000035F4(id a1)
{
  v1 = _ISDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "InterruptionHandler called", v2, 2u);
  }
}

void sub_10000365C(id a1)
{
  v1 = _ISDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "InvalidationHandler called", v2, 2u);
  }
}

void sub_100003FB0(uint64_t a1)
{
  v2 = [*(a1 + 32) icon];
  v3 = [*(a1 + 32) imageDescriptor];
  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v33 = *(a1 + 64);
    *buf = 67109634;
    *&buf[4] = v33;
    *&buf[8] = 2112;
    *&buf[10] = v2;
    *&buf[18] = 2112;
    *&buf[20] = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Processing generation request from %d icon: %@ image descriptor: %@", buf, 0x1Cu);
  }

  if (v2 && v3)
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 40);
    v7 = *(a1 + 84);
    *buf = *(a1 + 68);
    *&buf[16] = v7;
    if ([v6 _isRequestValidForToken:buf clientPID:v5 icon:v2])
    {
      v38 = v3;
      v8 = [NSArray arrayWithObjects:&v38 count:1];
      v9 = [v2 _beginPrepareISIconSignpost:v8 funcName:"-[IconCacheService(XPCService) generateImageWithRequest:reply:]_block_invoke"];

      if ([v3 ignoreCache])
      {
        v10 = _ISDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_100005B78((a1 + 64));
        }
      }

      else
      {
        if (![*(a1 + 40) _skipCacheForIcon:v2])
        {
          v29 = [*(a1 + 40) iconCache];
          v36 = 0;
          v37 = 0;
          v30 = [v29 findStoreUnitForIcon:v2 descriptor:v3 UUID:&v37 validationToken:&v36];
          v13 = v37;
          v18 = v36;

          if (v30)
          {
            v31 = [v2 assessValidationToken:v18];
            if (v31)
            {
              v32 = v31;
              v10 = _ISDefaultLog();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                *&buf[4] = v2;
                *&buf[12] = 2112;
                *&buf[14] = v3;
                *&buf[22] = 2048;
                *&buf[24] = v32;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Rejected cached image for %@ : %@ validation state %lu ", buf, 0x20u);
              }

              goto LABEL_19;
            }

            v34 = [*(a1 + 40) iconCache];
            v22 = [v34 storeUnitForUUID:v13];

            if (v22)
            {
              [v2 _endPrepareISIconSignpost:v9];
              goto LABEL_21;
            }
          }

LABEL_20:
          v19 = v18;
          v21 = *(a1 + 32);
          v20 = *(a1 + 40);
          v35 = v18;
          v22 = [v20 generateStoreUnitWithRequest:v21 validationToken:&v35];
          v18 = v35;

          [v2 _endPrepareISIconSignpost:v9];
          if (!v22)
          {
            v22 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-2582 userInfo:0];
            v27 = _ISDefaultLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              sub_100005C7C();
            }

            v14 = [[ISGenerationResponse alloc] initWithError:v22];
            goto LABEL_27;
          }

LABEL_21:
          v23 = [ISGenerationResponse alloc];
          v24 = [v22 data];
          v25 = [v22 UUID];
          v14 = [v23 initWithData:v24 uuid:v25 validationToken:v18];

          v26 = _ISDefaultLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            sub_100005BF0(v14);
          }

LABEL_27:
          goto LABEL_28;
        }

        v10 = _ISDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_100005B00((a1 + 64));
        }
      }

      v13 = 0;
      v18 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v15 = _ISDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 64);
      *buf = 67109634;
      *&buf[4] = v16;
      *&buf[8] = 2112;
      *&buf[10] = v2;
      *&buf[18] = 2112;
      *&buf[20] = v3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Rejecting generation request from %d for %@ with %@. Disallowed!", buf, 0x1Cu);
    }

    v39 = NSLocalizedDescriptionKey;
    v40 = @"Client is disallowed from making such an icon request";
    v13 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v17 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-609 userInfo:v13];
    v14 = [[ISGenerationResponse alloc] initWithError:v17];
  }

  else
  {
    v11 = _ISDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 64);
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to queue nil generation request for pid %d", buf, 8u);
    }

    v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:0];
    v14 = [[ISGenerationResponse alloc] initWithError:v13];
  }

LABEL_28:

  v28 = [*(a1 + 40) gpuIdleTimer];
  [v28 armTimer];

  (*(*(a1 + 56) + 16))();
}

void sub_100004588(uint64_t a1)
{
  v2 = [*(a1 + 32) cleanupQueue];
  dispatch_sync(v2, *(a1 + 40));
}

void sub_100004B38(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v2 = [*(a1 + 32) iconCache];
  v3 = [v2 mutableStoreIndex];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100004DBC;
  v21[3] = &unk_10000C5D8;
  v4 = *(a1 + 128);
  v28 = *(a1 + 112);
  v29 = v4;
  v30 = *(a1 + 144);
  v31 = *(a1 + 160);
  v5 = *(a1 + 64);
  v24 = *(a1 + 48);
  v25 = v5;
  v6 = *(a1 + 96);
  v26 = *(a1 + 80);
  v27 = v6;
  v23 = &v15;
  v22 = *(a1 + 40);
  [v3 removeValuePassingTest:v21];

  if (*(v16 + 24) == 1)
  {
    v7 = _ISDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v20 = v8;
      v9 = "UPDATEING_EXISTING_INDEX_ITEM: %@";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
    }
  }

  else
  {
    v10 = [*(a1 + 32) iconCache];
    v11 = [v10 mutableStoreIndex];
    v12 = [v11 addValue:a1 + 48];

    if (v12)
    {
      v7 = _ISDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 40);
        *buf = 138412290;
        v20 = v13;
        v9 = "ADDED_INDEX_ITEM: %@";
        goto LABEL_9;
      }
    }

    else
    {
      v7 = _ISDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 40);
        *buf = 138412290;
        v20 = v14;
        v9 = "FAILED_TO_ADD_INDEX_ITEM: %@";
        goto LABEL_9;
      }
    }
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t sub_100004DBC(uint64_t a1, unsigned __int8 *uu2)
{
  if (*(a1 + 88) != *(uu2 + 10))
  {
    return 0;
  }

  v4 = *(a1 + 80);
  if (v4 < *(uu2 + 2) || v4 > *(uu2 + 3) || uuid_compare((a1 + 48), uu2) || uuid_compare((a1 + 92), uu2 + 44))
  {
    return 0;
  }

  if (uuid_compare((a1 + 108), uu2 + 60) || (result = memcmp((a1 + 124), uu2 + 76, 0x28uLL), result))
  {
    v6 = _ISDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "REMOVE_INDEX_ITEM: %@", &v8, 0xCu);
    }

    return 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_1000051BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerFiredForGeneration:*(a1 + 40)];
}

void sub_1000053D4()
{
  sub_100004F04();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Error creating cache folder at path: %@ with error: %@", v2, 0x16u);
}

void sub_100005458()
{
  sub_100004F04();
  sub_100004EF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100005508(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 path];
  v6 = [a2 domain];
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  v11 = 2048;
  v12 = [a2 code];
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Could not write cache info file to %@. Error domain: %@ code %ld", &v7, 0x20u);
}

void sub_1000055E0(void *a1, NSObject *a2)
{
  v4 = [a1 domain];
  v5 = 138412546;
  v6 = v4;
  v7 = 2048;
  v8 = [a1 code];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not serialize cache info file. Error domain: %@ code %ld", &v5, 0x16u);
}

void sub_1000056DC()
{
  sub_100004F04();
  sub_100004EF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000574C()
{
  CFAbsoluteTimeGetCurrent();
  sub_100004F20();
  sub_100004F10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000057E8()
{
  CFAbsoluteTimeGetCurrent();
  sub_100004F20();
  sub_100004F10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000058C4()
{
  sub_100004F04();
  sub_100004EF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100005934()
{
  sub_100004F04();
  sub_100004EF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100005B00(int *a1)
{
  v6 = *a1;
  sub_100004EF8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100005B78(int *a1)
{
  v6 = *a1;
  sub_100004EF8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100005BF0(void *a1)
{
  v1 = [a1 uuid];
  sub_100004F04();
  sub_100004F10();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100005C7C()
{
  sub_100004F04();
  sub_100004EF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100005CEC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = [[NSUUID alloc] initWithUUIDBytes:a1];
  v9 = *(a1 + 16);
  *a2 = 138412802;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = v8;
  *(a2 + 22) = 2048;
  *(a2 + 24) = v9;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Generated image for icon %@ -- Validation token DB UUID %@ seq No %llu", a2, 0x20u);
}

void sub_100005D94(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 138412802;
  *(buf + 4) = a2;
  *(buf + 6) = 2112;
  *(buf + 14) = &stru_10000CC08;
  *(buf + 11) = 2048;
  *(buf + 3) = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Generated image for icon %@ -- Validation token DB UUID %@ seq No %llu", buf, 0x20u);
}

void sub_100005DFC()
{
  sub_100004F04();
  sub_100004EF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100005E6C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ISGPUIdleTimer.m" lineNumber:34 description:@"need a queue"];
}