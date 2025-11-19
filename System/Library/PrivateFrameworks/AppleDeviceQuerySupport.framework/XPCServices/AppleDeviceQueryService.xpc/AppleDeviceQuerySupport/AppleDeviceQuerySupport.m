uint64_t sub_10000228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getXpcProxyWithError:]_block_invoke", 334, @"Connection to %@ invalidated!", a6, a7, a8, @"com.apple.ZhuGeInternalService");
  pthread_mutex_lock([*(a1 + 32) recursiveMutex]);
  [*(a1 + 32) setIsXpcConnectionValid:0];
  v9 = [*(a1 + 32) recursiveMutex];

  return pthread_mutex_unlock(v9);
}

uint64_t sub_100002314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getXpcProxyWithError:]_block_invoke_2", 340, @"Connection to %@ interrupted!", a6, a7, a8, @"com.apple.ZhuGeInternalService");
  pthread_mutex_lock([*(a1 + 32) recursiveMutex]);
  [*(a1 + 32) setIsXpcConnectionValid:0];
  v9 = [*(a1 + 32) recursiveMutex];

  return pthread_mutex_unlock(v9);
}

uint64_t sub_10000239C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getXpcProxyWithError:]_block_invoke_3", 353, @"%@ failed to provide a proxy with error : %@!", a6, a7, a8, @"com.apple.ZhuGeInternalService");
  pthread_mutex_lock([*(a1 + 32) recursiveMutex]);
  [*(a1 + 32) setIsXpcConnectionValid:0];
  v9 = [*(a1 + 32) recursiveMutex];

  return pthread_mutex_unlock(v9);
}

void ZhuGeLog(int a1, const char *a2, const char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a5;
  v18 = v13;
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = "UnknownFile";
  }

  if (a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = "UnknownFunc";
  }

  if (!v13)
  {
    if (qword_100019E80 != -1)
    {
      sub_100009780();
    }

    if (byte_100019E78 == 1)
    {
      ZhuGePrintStderr("/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeLog.m", "ZhuGeLog", 168, @"Catch the NULL format pointer from: %s %s(%ld)", v14, v15, v16, v17, v19);
    }

    goto LABEL_24;
  }

  if ((a1 & 0x40000) != 0 && !hasZhuGeLogConditionalPrint())
  {
LABEL_24:
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v21 = 0;
    goto LABEL_48;
  }

  v21 = objc_alloc_init(NSMutableString);
  if ((isZhuGeInRestoreOS() & 1) != 0 || hasZhuGeLogPrefixPidTid())
  {
    if (qword_100019E58 != -1)
    {
      sub_10000976C();
    }

    [v21 appendFormat:@"%@", qword_100019E60];
  }

  v22 = &OBJC_METACLASS___ZhuGeLockerService;
  if (qword_100019E80 != -1)
  {
    sub_100009780();
  }

  v23 = &OBJC_METACLASS___ZhuGeLockerService;
  if (byte_100019E78 == 1 && hasZhuGeLogPrefixFileFuncLine())
  {
    v24 = [NSString stringWithUTF8String:v19];
    v25 = [v24 lastPathComponent];
    v26 = [NSString stringWithUTF8String:v20];
    v27 = [NSNumber numberWithLong:a4];
    v28 = [NSString stringWithFormat:@"<%@ %@(%@)>", v25, v26, v27, 0];

    v23 = &OBJC_METACLASS___ZhuGeLockerService;
    v22 = &OBJC_METACLASS___ZhuGeLockerService;

    [v21 appendFormat:@"%@", v28];
  }

  else
  {
    v28 = 0;
  }

  [v21 appendFormat:@"%s: ", (&off_100014498)[BYTE1(a1)]];
  v29 = [[NSString alloc] initWithFormat:v18 arguments:&a9];
  if ([v29 hasSuffix:@"\n"])
  {
    v31 = [v29 substringToIndex:{objc_msgSend(v29, "length") - 1}];

    v29 = v31;
  }

  v30 = [NSString stringWithFormat:@"%@%@", v21, v29];
  if (isZhuGeInRestoreOS())
  {
    v30 = v30;
    if (isZhuGeInRestoreOS())
    {
      v32 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
      v33 = [v32 xpcConnection];
      v34 = [v33 synchronousRemoteObjectProxyWithErrorHandler:&stru_100014520];

      if (v34)
      {
        [v34 printRemoteLog:v30];
      }

      else
      {
        v36 = [NSString stringWithFormat:@"%s ERR: Failed to get a restore log proxy!", "[ZhuGe]"];
        sub_100002F24(v36);

        v34 = [NSString stringWithFormat:@"%s %@", "[ZhuGe]", v30];
        sub_100002F24(v34);
      }
    }
  }

  else if ((a1 & 0x10000) == 0 || (fprintf(__stdoutp, "%s\n", [v29 UTF8String]), (a1 & 0x20000) == 0))
  {
    if (qword_100019E68 != -1)
    {
      sub_100009794();
    }

    if (v22[92].info != -1)
    {
      sub_1000097BC();
    }

    if (LOBYTE(v23[92].vtable) == 1)
    {
      v35 = qword_100019E70;
      if (!os_log_type_enabled(qword_100019E70, a1))
      {
        goto LABEL_48;
      }

      *buf = 138543362;
      v38 = v30;
    }

    else
    {
      if ((a1 & 0x80410) == 0)
      {
        goto LABEL_48;
      }

      v35 = qword_100019E70;
      if (!os_log_type_enabled(qword_100019E70, a1))
      {
        goto LABEL_48;
      }

      *buf = 138543362;
      v38 = v30;
    }

    _os_log_impl(&_mh_execute_header, v35, a1, "%{public}@", buf, 0xCu);
  }

LABEL_48:
}

uint64_t ZhuGePrintStderr(char *a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a4;
  v13 = v12;
  if (!a1)
  {
    a1 = "UnknownFile";
  }

  if (!a2)
  {
    a2 = "UnknownFunc";
  }

  if (v12)
  {
    if (qword_100019E80 != -1)
    {
      sub_100009780();
    }

    if (byte_100019E78 == 1)
    {
      v14 = strrchr(a1, 47);
      if (v14)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = a1;
      }

      [NSString stringWithFormat:@"%s <%s %s(%ld)> ERR: ", "[ZhuGe]", v15, a2, a3];
    }

    else
    {
      [NSString stringWithFormat:@"%s ERR: ", "[ZhuGe]", v23, v24, v25];
    }
    v17 = ;
    v18 = [[NSString alloc] initWithFormat:v13 arguments:&a9];
    v19 = [v18 substringFromIndex:{objc_msgSend(v18, "length") - 1}];
    v20 = [v19 isEqualToString:@"\n"];

    if (v20)
    {
      v21 = [v18 substringToIndex:{objc_msgSend(v18, "length") - 1}];

      v18 = v21;
    }

    v16 = fprintf(__stderrp, "%s%s\n", [v17 UTF8String], objc_msgSend(v18, "UTF8String"));
  }

  else
  {
    if (qword_100019E80 != -1)
    {
      sub_100009780();
    }

    if (byte_100019E78 == 1)
    {
      fprintf(__stderrp, "%s <ZhuGeLog.m %s(%d)> ERR: Catched NULL format pointer from: %s %s(%ld)\n", "[ZhuGe]", "ZhuGePrintStderr", 294, a1, a2, a3);
    }

    v16 = 0xFFFFFFFFLL;
  }

  return v16;
}

void sub_100002DC4(id a1)
{
  v3 = 0;
  if (pthread_threadid_np(0, &v3))
  {
    v3 = mach_thread_self();
  }

  v1 = [NSString stringWithFormat:@"{%d:0x%llx}", getpid(), v3];
  v2 = qword_100019E60;
  qword_100019E60 = v1;
}

void sub_100002E40(id a1)
{
  qword_100019E70 = os_log_create("com.apple.zhuge", "ZhuGeService");

  _objc_release_x1();
}

void sub_100002E84(id a1)
{
  if ((isZhuGeInInternalBuild() & 1) != 0 || isZhuGeInFactoryBuild())
  {
    LOBYTE(v1) = islibtraceSimulatingCustomerBuild() ^ 1;
  }

  else
  {
    v1 = isZhuGeInRestoreOS();
    if (v1)
    {
      LOBYTE(v1) = doesZhuGeDeemRestoreOSAsInternal();
    }
  }

  byte_100019E78 = v1;
}

void sub_100002EC8(id a1, NSError *a2)
{
  v2 = [NSString stringWithFormat:@"%s ERR: Restore log connection error: %@", "[ZhuGe]", a2];
  sub_100002F24(v2);
}

void sub_100002F24(void *a1)
{
  v2 = a1;
  if (qword_100019E88 != -1)
  {
    sub_1000097E4();
  }

  dispatch_semaphore_wait(qword_100019E90, 0xFFFFFFFFFFFFFFFFLL);
  v1 = qword_100019E98;
  if (qword_100019E98 || (v1 = fopen("/dev/console", "w"), (qword_100019E98 = v1) != 0))
  {
    [v2 UTF8String];
    fprintf(v1, "%s\n");
  }

  else
  {
    fprintf(__stderrp, "%s ERR: Cannot print serial log!\n");
  }

  dispatch_semaphore_signal(qword_100019E90);
}

void sub_10000300C(id a1)
{
  qword_100019E90 = dispatch_semaphore_create(1);

  _objc_release_x1();
}

uint64_t initPthreadRecursiveMutex(pthread_mutex_t *a1)
{
  v3.__sig = 0;
  *v3.__opaque = 0;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = pthread_mutexattr_init(&v3);
  if (!result)
  {
    result = pthread_mutexattr_settype(&v3, 2);
    if (!result)
    {
      return pthread_mutex_init(a1, &v3);
    }
  }

  return result;
}

uint64_t isZhuGeInInternalBuild()
{
  if (qword_100019EA8 != -1)
  {
    sub_1000097F8();
  }

  return byte_100019EA0;
}

uint64_t isZhuGeInFactoryBuild()
{
  if (qword_100019EB8 != -1)
  {
    sub_10000980C();
  }

  return byte_100019EB0;
}

uint64_t islibtraceSimulatingCustomerBuild()
{
  if (qword_100019EC8 != -1)
  {
    sub_100009820();
  }

  return byte_100019EC0;
}

void sub_10000390C(id a1)
{
  if (os_parse_boot_arg_int())
  {
    byte_100019EC0 = 0;
  }
}

uint64_t getZhuGeDebugOption()
{
  v6 = 0;
  v5 = 0;
  v0 = sub_100003A44(@"zhuge_debug");
  if (v0)
  {
    v1 = [NSScanner scannerWithString:v0];
    if ([v1 scanInt:&v6] && (objc_msgSend(v1, "isAtEnd") & 1) != 0)
    {
      v2 = v1;
      goto LABEL_7;
    }

    v2 = [NSScanner scannerWithString:v0, 0];

    if ([v2 scanHexInt:&v6] && objc_msgSend(v2, "isAtEnd"))
    {
LABEL_7:
      v3 = v6;
      v5 = v6;
      if (v6)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  if (os_parse_boot_arg_int())
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

LABEL_13:

  return v3;
}

id sub_100003A44(void *a1)
{
  v1 = a1;
  if (!v1 || (v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options")) == 0)
  {
    v6 = 0;
    CFProperty = 0;
    goto LABEL_12;
  }

  v3 = v2;
  CFProperty = IORegistryEntryCreateCFProperty(v2, v1, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [NSString stringFromData:CFProperty];
      goto LABEL_9;
    }

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = CFProperty;
LABEL_9:
  v6 = v5;
LABEL_11:
  IOObjectRelease(v3);
LABEL_12:

  return v6;
}

uint64_t hasZhuGeLogConditionalPrint()
{
  if (qword_100019ED8 != -1)
  {
    sub_100009834();
  }

  return byte_100019ED0;
}

uint64_t hasZhuGeLogPrefixFileFuncLine()
{
  if (qword_100019EE8 != -1)
  {
    sub_100009848();
  }

  return byte_100019EE0;
}

uint64_t hasZhuGeLogPrefixPidTid()
{
  if (qword_100019EF8 != -1)
  {
    sub_10000985C();
  }

  return byte_100019EF0;
}

uint64_t doesZhuGeDeemRestoreOSAsInternal()
{
  if (qword_100019F08 != -1)
  {
    sub_100009870();
  }

  return byte_100019F00;
}

uint64_t isZhuGeInRestoreOS()
{
  if (qword_100019F18 != -1)
  {
    sub_100009884();
  }

  return byte_100019F10;
}

void sub_100003CE8(id a1)
{
  v1 = os_parse_boot_arg_int();
  v2 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  if (v2)
  {
    v5 = v2;
    v3 = [v2 objectForKeyedSubscript:@"ReleaseType"];
    v4 = [v3 isEqualToString:@"Restore"];

    v2 = v5;
  }

  else
  {
    v4 = 0;
  }

  byte_100019F10 = v1 & v4;
}

id isObjectNSStringAndZhuGeNull(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 isEqualToString:@"ZHUGE_NULL"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t isObjectNilOrZhuGeNull(void *a1)
{
  if (a1)
  {
    return isObjectNSStringAndZhuGeNull(a1);
  }

  else
  {
    return 1;
  }
}

id getZhuGeFDIPathsWithError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = 0;
  if (!a1)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m", "getZhuGeFDIPathsWithError", 782, @"error p-pointer is nil!", a6, a7, a8, v82);
    v16 = 0;
LABEL_44:
    v26 = 0;
    v77 = 0;
    v78 = 0;
    v17 = 0;
    goto LABEL_45;
  }

  *a1 = 0;
  if (!sub_10000474C() || !sub_10000481C() || !sub_10000474C() || !sub_100004A28() || !sub_10000474C() || !sub_100004B64() || !sub_10000474C() || !sub_100004CA0())
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m", "getZhuGeFDIPathsWithError", 791, @"Failed to link mobile storage framework", v9, v10, v11, v82);
    [NSError errorWithZhuGeErrorCode:13 underlyingError:0];
    v16 = 0;
    v26 = 0;
    v77 = 0;
    v78 = 0;
    *a1 = v17 = 0;
    goto LABEL_45;
  }

  v12 = sub_10000481C();
  if (!v12)
  {
    goto LABEL_52;
  }

  v16 = v12(0, &v91);
  if (!v16)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m", "getZhuGeFDIPathsWithError", 801, @"Failed to lookup mobile storage devices", v13, v14, v15, v82);
    v81 = v91;
    *a1 = [NSError errorWithZhuGeErrorCode:4 underlyingError:v91];

    goto LABEL_44;
  }

  v17 = objc_alloc_init(NSMutableArray);
  if ([v16 count])
  {
    v83 = v17;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v16 = v16;
    v21 = [v16 countByEnumeratingWithState:&v87 objects:v92 count:16];
    if (!v21)
    {
      v26 = 0;
      v84 = 0;
      v85 = 0;
      goto LABEL_49;
    }

    v25 = v21;
    v26 = 0;
    v84 = 0;
    v85 = 0;
    v27 = *v88;
    v28 = "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m";
    v29 = "getZhuGeFDIPathsWithError";
    while (1)
    {
      v30 = 0;
      v86 = v25;
      do
      {
        if (*v88 != v27)
        {
          objc_enumerationMutation(v16);
        }

        v31 = *(*(&v87 + 1) + 8 * v30);
        ZhuGeLog(262400, v28, v29, 815, @"Checking entry %@", v22, v23, v24, v31);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          ZhuGeLog(262656, v28, v29, 818, @"Entry %@ is not a dictionary", v32, v33, v34, v31);
          goto LABEL_34;
        }

        v35 = sub_100004A28();
        if (!v35)
        {
          sub_100009898();
LABEL_51:
          sub_100009898();
LABEL_52:
          sub_100009898();
        }

        v36 = v29;
        v37 = v28;
        v38 = *v35;
        v39 = [v31 objectForKeyedSubscript:*v35];

        if (!v39)
        {
          v28 = v37;
          v71 = v37;
          v29 = v36;
          ZhuGeLog(262656, v71, v36, 824, @"Entry %@ doesn't contain a valid device type", v40, v41, v42, v31);
          v26 = 0;
          goto LABEL_34;
        }

        v43 = sub_100004B64();
        if (!v43)
        {
          goto LABEL_51;
        }

        v44 = v27;
        v45 = v16;
        v46 = *v43;
        v47 = [v39 isEqualToString:*v43];

        if ((v47 & 1) == 0)
        {
          v28 = v37;
          v72 = v37;
          v29 = v36;
          ZhuGeLog(262656, v72, v36, 829, @"Device type in entry %@ is not disk image", v48, v49, v50, v31);
          goto LABEL_32;
        }

        v51 = [v31 objectForKeyedSubscript:@"PersonalizedImageType"];

        if (!v51)
        {
          v28 = v37;
          v73 = v37;
          v29 = v36;
          ZhuGeLog(262656, v73, v36, 834, @"Entry %@ doesn't contain personalized image type", v52, v53, v54, v31);
          goto LABEL_32;
        }

        v55 = [v31 objectForKeyedSubscript:@"PersonalizedImageType"];

        if (!v55)
        {
          v28 = v37;
          v74 = v37;
          v29 = v36;
          ZhuGeLog(262656, v74, v36, 840, @"Entry %@ doesn't contain a valid personalized image type", v56, v57, v58, v31);
          v85 = 0;
LABEL_32:
          v26 = v39;
LABEL_33:
          v16 = v45;
          v27 = v44;
          v25 = v86;
          goto LABEL_34;
        }

        v28 = v37;
        if (([v55 isEqualToString:@"FactoryDiskImage"] & 1) == 0)
        {
          v75 = v37;
          v29 = v36;
          ZhuGeLog(262656, v75, v36, 845, @"Entry %@ doesn't contain a correct personalized image type", v59, v60, v61, v31);
          v26 = v39;
          v85 = v55;
          goto LABEL_33;
        }

        v62 = v37;
        v29 = v36;
        ZhuGeLog(262400, v62, v36, 849, @"The entry %@ mounted personalized disk image with type %@", v59, v60, v61, v31);
        v63 = sub_100004460();
        v64 = [v31 objectForKeyedSubscript:v63];

        if (v64)
        {
          [v83 addObject:v64];
          ZhuGeLog(262400, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m", v29, 857, @"Added %@ to FDI paths array", v68, v69, v70, v64);
          v26 = v39;
          v84 = v64;
          v85 = v55;
          v16 = v45;
          v27 = v44;
          v28 = "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m";
        }

        else
        {
          v28 = "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m";
          ZhuGeLog(262656, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m", v29, 852, @"Entry %@ doesn't contain a valid personalized disk image path", v65, v66, v67, v31);
          v84 = 0;
          v85 = v55;
          v26 = v39;
          v16 = v45;
          v27 = v44;
        }

        v25 = v86;
LABEL_34:
        v30 = v30 + 1;
      }

      while (v25 != v30);
      v76 = [v16 countByEnumeratingWithState:&v87 objects:v92 count:16];
      v25 = v76;
      if (!v76)
      {
LABEL_49:

        v17 = v83;
        v78 = v84;
        v77 = v85;
        goto LABEL_45;
      }
    }
  }

  ZhuGeLog(262656, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m", "getZhuGeFDIPathsWithError", 810, @"No mobile storage device is detected", v18, v19, v20, v82);
  v26 = 0;
  v77 = 0;
  v78 = 0;
LABEL_45:
  v79 = v17;

  return v17;
}

uint64_t sub_100004460()
{
  v0 = sub_100004CA0();
  if (v0)
  {
    return *v0;
  }

  v2 = sub_100009898();
  return isXPCConnectionEntitled(v2);
}

uint64_t isXPCConnectionEntitled(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8 = v4;
  if (!v3)
  {
    v12 = @"XPC connection is invalid!";
    v13 = 971;
LABEL_8:
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m", "isXPCConnectionEntitled", v13, v12, v5, v6, v7, v16);
    v11 = 0;
    goto LABEL_9;
  }

  if (v4)
  {
    if ((isObjectNSStringAndZhuGeNull(v4) & 1) == 0)
    {
      v9 = [v3 valueForEntitlement:v8];
      v10 = [v9 BOOLValue];

      if ((v10 & 1) == 0)
      {
        v14 = [v3 processIdentifier];
        v12 = @"Connection(pid %d) is missing entitlement!";
        v16 = v14;
        v13 = 983;
        goto LABEL_8;
      }
    }
  }

  v11 = 1;
LABEL_9:

  return v11;
}

id MGQuery(void *a1, void *a2)
{
  v3 = a1;
  v7 = v3;
  if (!a2)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m", "MGQuery", 1541, @"error p-pointer is nil!", v4, v5, v6, v20);
LABEL_7:
    v11 = 0;
    goto LABEL_11;
  }

  *a2 = 0;
  if (v3)
  {
    if (MGIsQuestionValid())
    {
      v11 = MGCopyAnswerWithError();
      if (v11)
      {
        goto LABEL_11;
      }

      v12 = [NSNumber numberWithInt:0];
      ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m", "MGQuery", 1561, @"Failed to query MobileGestalt for %@, MobileGestalt error code %@!", v13, v14, v15, v7);

      v16 = [NSNumber numberWithInt:0];
      v17 = [NSString stringWithFormat:@"Failed to query MobileGestalt for %@, MobileGestalt error code %@!", v7, v16];
      *a2 = [NSError errorWithZhuGeErrorCode:4 underlyingError:v17];

      goto LABEL_7;
    }

    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m", "MGQuery", 1554, @"%@ is not a vaild MobileGestalt key!", v8, v9, v10, v7);
    v18 = 3;
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeUtils.m", "MGQuery", 1547, @"MGkey pointer is nil!", v4, v5, v6, v20);
    v18 = 45;
  }

  [NSError errorWithZhuGeErrorCode:v18 underlyingError:0];
  *a2 = v11 = 0;
LABEL_11:

  return v11;
}

uint64_t sub_10000474C()
{
  if (!qword_100019F20)
  {
    qword_100019F20 = _sl_dlopen();
  }

  return qword_100019F20;
}

uint64_t sub_10000481C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_100019F28;
  v6 = qword_100019F28;
  if (!qword_100019F28)
  {
    v1 = sub_1000049CC();
    v4[3] = dlsym(v1, "MobileStorageCopyDevicesWithError");
    qword_100019F28 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000048F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004908(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100019F20 = result;
  return result;
}

void *sub_10000497C(uint64_t a1)
{
  v2 = sub_1000049CC();
  result = dlsym(v2, "MobileStorageCopyDevicesWithError");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100019F28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000049CC()
{
  v0 = sub_10000474C();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t sub_100004A28()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_100019F30;
  v6 = qword_100019F30;
  if (!qword_100019F30)
  {
    v1 = sub_1000049CC();
    v4[3] = dlsym(v1, "kMobileStorageDeviceTypeKey");
    qword_100019F30 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100004AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100004B14(uint64_t a1)
{
  v2 = sub_1000049CC();
  result = dlsym(v2, "kMobileStorageDeviceTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100019F30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100004B64()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_100019F38;
  v6 = qword_100019F38;
  if (!qword_100019F38)
  {
    v1 = sub_1000049CC();
    v4[3] = dlsym(v1, "kMobileStorageDeviceTypeDiskImage");
    qword_100019F38 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100004C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100004C50(uint64_t a1)
{
  v2 = sub_1000049CC();
  result = dlsym(v2, "kMobileStorageDeviceTypeDiskImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100019F38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100004CA0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_100019F40;
  v6 = qword_100019F40;
  if (!qword_100019F40)
  {
    v1 = sub_1000049CC();
    v4[3] = dlsym(v1, "kMobileStorageMountPathKey");
    qword_100019F40 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100004D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100004D8C(uint64_t a1)
{
  v2 = sub_1000049CC();
  result = dlsym(v2, "kMobileStorageMountPathKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100019F40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000055E8(id a1)
{
  qword_100019F58 = dlopen([@"/System/Library/PrivateFrameworks/AppleDeviceQuerySupport.framework/libZhuGeArmory.dylib" UTF8String], 1);
  if (!qword_100019F58)
  {
    if (dlerror())
    {
      v4 = dlerror();
    }

    else
    {
      v4 = "(null)";
    }

    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getDylibHandlerWithError:]_block_invoke", 69, @"Failed to dlopen ZhuGe armory dylib with error: %s!", v1, v2, v3, v4);
    qword_100019F50 = [NSError errorWithZhuGeErrorCode:13 underlyingError:0];

    _objc_release_x1();
  }
}

uint64_t sub_100005F9C(uint64_t a1)
{
  v1 = [*(a1 + 32) serviceXpcName];
  ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]_block_invoke_2", 235, @"Connection to %@ invalidated!", v2, v3, v4, v1);

  pthread_mutex_lock(&stru_100019F68);
  byte_100019FB0 = 0;

  return pthread_mutex_unlock(&stru_100019F68);
}

uint64_t sub_100006028(uint64_t a1)
{
  v1 = [*(a1 + 32) serviceXpcName];
  ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]_block_invoke_3", 241, @"Connection to %@ interrupted!", v2, v3, v4, v1);

  pthread_mutex_lock(&stru_100019F68);
  byte_100019FB0 = 0;

  return pthread_mutex_unlock(&stru_100019F68);
}

uint64_t sub_1000060B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serviceXpcName];
  ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]_block_invoke_4", 254, @"%@ failed to provide a proxy with error : %@!", v5, v6, v7, v4);

  pthread_mutex_lock(&stru_100019F68);
  byte_100019FB0 = 0;

  return pthread_mutex_unlock(&stru_100019F68);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 activate];

  return 0;
}

void sub_1000070DC(uint64_t a1)
{
  v2 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
  v3 = [v2 xpcConnection];
  v4 = [*(a1 + 32) baseEntitlement];
  v5 = isXPCConnectionEntitled(v3, v4);

  if (v5)
  {
    v6 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
    v7 = [v6 xpcConnection];
    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 processIdentifier]);
    ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService assertCallerEntitledForService]_block_invoke", 127, @"ZhuGe service connected for pid %@", v9, v10, v11, v8);

    byte_100019FC0 = 1;
  }
}

void sub_100007558(id a1)
{
  v1 = [[ZhuGeCache alloc] initWithName:@"iCEK" andCapacity:&off_100017710 andCacheType:objc_opt_class()];
  v2 = qword_100019FD0;
  qword_100019FD0 = v1;

  v3 = qword_100019FD0;

  [ZhuGeInternalSupportAssistant registerCacheRefresh:v3];
}

void sub_1000076E8(id a1)
{
  v1 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
  v2 = [v1 xpcConnection];
  v3 = isXPCConnectionEntitled(v2, @"com.apple.private.ZhuGeInternalSupport.CopyValue");

  if (v3)
  {
    v4 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
    v5 = [v4 xpcConnection];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 processIdentifier]);
    ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService assertCallerEntitledForInternalService]_block_invoke", 210, @"ZhuGe service bridge-connected for pid %@", v7, v8, v9, v6);

    byte_100019FE8 = 1;
  }
}

void sub_100007B18(id a1)
{
  v1 = [[ZhuGeCache alloc] initWithName:@"iCEIK" andCapacity:&off_100017710 andCacheType:objc_opt_class()];
  v2 = qword_100019FF8;
  qword_100019FF8 = v1;

  v3 = qword_100019FF8;

  [ZhuGeInternalSupportAssistant registerCacheRefresh:v3];
}

void sub_100008274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000082A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000082B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_100008638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10000865C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_100008988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000089AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_100008FB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_10000928C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000092B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1000095DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100009600(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

uint64_t sub_100009898()
{
  dlerror();
  v0 = abort_report_np();
  return sub_1000098BC(v0);
}