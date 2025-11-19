@interface AssetCacheLocatorService
- (AssetCacheLocatorService)init;
- (BOOL)amRunningOnMyQueue;
- (BOOL)doesConnection:(id)a3 haveEntitlement:(const char *)a4;
- (BOOL)doesServer:(id)a3 haveCapabilities:(id)a4 tag:(unsigned int)a5;
- (BOOL)handleEvent:(id)a3 forConnection:(id)a4;
- (BOOL)handleImportEvent:(id)a3 forConnection:(id)a4 tag:(unsigned int)a5;
- (BOOL)handleIntrospectEvent:(id)a3 forConnection:(id)a4 tag:(unsigned int)a5;
- (BOOL)handleLocateEvent:(id)a3 forConnection:(id)a4 tag:(unsigned int)a5;
- (BOOL)handleRecentlySeenEvent:(id)a3 forConnection:(id)a4 tag:(unsigned int)a5;
- (BOOL)handleUpdateHealthEvent:(id)a3 forConnection:(id)a4 tag:(unsigned int)a5;
- (BOOL)isAddress:(id)a3 inCompiledRanges:(id)a4 tag:(unsigned int)a5;
- (BOOL)transferVolatileStateFromDiskCache:(id)a3 toDiskCache:(id)a4 tag:(unsigned int)a5;
- (id)NSObjectFromXPCObject:(id)a3 tag:(unsigned int)a4;
- (id)XPCObjectFromNSObject:(id)a3 tag:(unsigned int)a4;
- (id)cachedEntryCalled:(id)a3 withKey:(id)a4 forNetworkIdentifiers:(id)a5 validityInterval:(double *)a6 tag:(unsigned int)a7;
- (id)cachedServers:(id)a3 forAffinityID:(id)a4 tag:(unsigned int)a5;
- (id)choose:(int)a3 fromArray:(id)a4 sorted:(BOOL)a5 other:(id)a6 tag:(unsigned int)a7;
- (id)compileRanges:(id)a3 tag:(unsigned int)a4;
- (id)describeCapableServers:(id)a3 fromAvailableServers:(id)a4 withOtherServers:(id)a5;
- (id)makeBootTimeWithTag:(unsigned int)a3;
- (id)makeRangesFromDNSRecordNamed:(id)a3 withType:(int)a4 data:(const char *)a5 length:(unint64_t)a6 more:(BOOL *)a7 error:(id *)a8 tag:(unsigned int)a9;
- (id)makeSoftwareVersions;
- (id)objectWithError:(id)a3;
- (id)redactObject:(id)a3;
- (id)redactStringsFromObject:(id)a3 usingBlock:(id)a4;
- (id)safeString:(const char *)a3 length:(unint64_t)a4 forceHex:(BOOL)a5;
- (id)sanitizeRanges:(id)a3 fromSource:(id)a4 tag:(unsigned int)a5;
- (id)servers:(id)a3 byAppendingServers:(id)a4;
- (id)systemGroupContainerPathWithGroupIdentifier:(id)a3;
- (int)probeCacheWithLabel:(id)a3 capabilities:(id)a4 affinityID:(id)a5 hitServers:(id *)a6 hitServersAreSorted:(BOOL *)a7 hitOtherServers:(id *)a8 hitValidityInterval:(double *)a9 tag:(unsigned int)a10;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)cacheServers:(id)a3 forAffinityID:(id)a4 tag:(unsigned int)a5;
- (void)handleConnection:(id)a3;
- (void)importToCachingServerAsURL:(id)a3 sourcePath:(id)a4 sourceFileHandle:(id)a5 sourceOffset:(int64_t)a6 sourceLength:(int64_t)a7 method:(id)a8 headers:(id)a9 importStrategies:(id)a10 entitled:(BOOL)a11 callback:(id)a12 callbackQueue:(id)a13 tag:(unsigned int)a14;
- (void)importToLocalCachingServerAsURL:(id)a3 sourceFileHandle:(id)a4 sourceOffset:(int64_t)a5 sourceLength:(int64_t)a6 method:(id)a7 headers:(id)a8 callback:(id)a9 callbackQueue:(id)a10 tag:(unsigned int)a11;
- (void)locateCachingServersWithTimeout:(double)a3 capabilities:(id)a4 affinityID:(id)a5 autoRefresh:(BOOL)a6 quickMiss:(BOOL)a7 forceMiss:(BOOL)a8 callback:(id)a9 callbackQueue:(id)a10 tag:(unsigned int)a11;
- (void)locateLocalCachingServersWithTimeout:(double)a3 localAddresses:(id)a4 gatewayIdentifiers:(id)a5 configurationProfiles:(id)a6 forceDNSRefresh:(BOOL)a7 callback:(id)a8 callbackQueue:(id)a9 tag:(unsigned int)a10;
- (void)networkChanged;
- (void)recentlySeenCachingServerWithAutoRefresh:(BOOL)a3 callback:(id)a4 callbackQueue:(id)a5 tag:(unsigned int)a6;
- (void)refineServers:(id)a3 intoBest:(id *)a4 andOther:(id *)a5 tag:(unsigned int)a6;
- (void)relocateCachingServersWithTimeout:(double)a3 capabilities:(id)a4 affinityID:(id)a5 forceRefresh:(BOOL)a6 tag:(unsigned int)a7;
- (void)resolveDNSRecordNamed:(id)a3 withTimeout:(double)a4 errorIfNotFound:(BOOL)a5 callback:(id)a6 callbackQueue:(id)a7 tag:(unsigned int)a8;
- (void)resolveDNSRecordsWithTimeout:(double)a3 callback:(id)a4 callbackQueue:(id)a5 tag:(unsigned int)a6;
- (void)start;
- (void)uncacheAllAffinitiesWithTag:(unsigned int)a3;
- (void)updateDiskCacheRefreshTimerWithTag:(unsigned int)a3;
- (void)updateHealthOfCachingServerWithHostport:(id)a3 healthy:(BOOL)a4 override:(BOOL)a5 callback:(id)a6 callbackQueue:(id)a7 tag:(unsigned int)a8;
- (void)watchForNetworkChanges;
@end

@implementation AssetCacheLocatorService

- (BOOL)amRunningOnMyQueue
{
  specific = dispatch_get_specific(off_10003ACF0);
  v4 = [(AssetCacheLocatorService *)self queue];
  LOBYTE(self) = specific == v4;

  return self;
}

- (void)networkChanged
{
  if (([(AssetCacheLocatorService *)self testFlags]& 8) == 0)
  {
    v3 = [(AssetCacheLocatorService *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001038;
    block[3] = &unk_100034B58;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

- (AssetCacheLocatorService)init
{
  v170.receiver = self;
  v170.super_class = AssetCacheLocatorService;
  v2 = [(AssetCacheLocatorService *)&v170 init];
  if (!v2)
  {
    goto LABEL_63;
  }

  v3 = os_log_create("com.apple.AssetCacheServices", "Daemon");
  v4 = gLogHandle;
  gLogHandle = v3;

  v5 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v5, &stru_100034B30);

  v163 = [(AssetCacheLocatorService *)v2 systemGroupContainerPathWithGroupIdentifier:@"systemgroup.com.apple.AssetCacheServices.diskCache"];
  if (!v163)
  {
    goto LABEL_67;
  }

  v6 = [v163 stringByAppendingFormat:@"/%@", @"Library/Caches/com.apple.AssetCacheLocatorService"];
  [(AssetCacheLocatorService *)v2 setCacheDirPath:v6];

  v7 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_10001FCD4(v7, v2);
  }

  [(AssetCacheLocatorService *)v2 setAffinityQueryTimeout:5.0];
  v8 = CFPreferencesCopyAppValue(@"AffinityQueryTimeout", @"com.apple.AssetCacheLocatorService");
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      [v8 doubleValue];
      [(AssetCacheLocatorService *)v2 setAffinityQueryTimeout:?];
      [(AssetCacheLocatorService *)v2 affinityQueryTimeout];
      if (v9 >= 1.0)
      {
        [(AssetCacheLocatorService *)v2 affinityQueryTimeout];
        if (v14 <= 60.0)
        {
          goto LABEL_14;
        }

        v10 = 60.0;
      }

      else
      {
        v10 = 1.0;
      }

      [(AssetCacheLocatorService *)v2 setAffinityQueryTimeout:v10];
    }

    else
    {
      v11 = gLogHandle;
      if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = currentQueueName();
        buf = 67109890;
        v278 = 2080;
        v279 = v13;
        v280 = 2112;
        v281 = @"AffinityQueryTimeout";
        v282 = 2112;
        v283 = @"a number";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#%08x [%s] bad type for preference %@; expected %@", &buf, 0x26u);
      }
    }
  }

LABEL_14:

  [(AssetCacheLocatorService *)v2 setConcurrentDNSResolutions:5];
  v15 = CFPreferencesCopyAppValue(@"ConcurrentDNSResolutions", @"com.apple.AssetCacheLocatorService");
  if (!v15)
  {
    goto LABEL_23;
  }

  if (objc_opt_respondsToSelector())
  {
    -[AssetCacheLocatorService setConcurrentDNSResolutions:](v2, "setConcurrentDNSResolutions:", [v15 intValue]);
    if ([(AssetCacheLocatorService *)v2 concurrentDNSResolutions]<= 0)
    {
      v16 = v2;
      v17 = 1;
    }

    else
    {
      if ([(AssetCacheLocatorService *)v2 concurrentDNSResolutions]< 26)
      {
        goto LABEL_23;
      }

      v16 = v2;
      v17 = 25;
    }

    [(AssetCacheLocatorService *)v16 setConcurrentDNSResolutions:v17];
  }

  else
  {
    v18 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = currentQueueName();
      buf = 67109890;
      v278 = 2080;
      v279 = v20;
      v280 = 2112;
      v281 = @"ConcurrentDNSResolutions";
      v282 = 2112;
      v283 = @"a number";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#%08x [%s] bad type for preference %@; expected %@", &buf, 0x26u);
    }
  }

LABEL_23:

  [(AssetCacheLocatorService *)v2 setLocateTimeout:60.0];
  v21 = CFPreferencesCopyAppValue(@"LocateTimeout", @"com.apple.AssetCacheLocatorService");
  if (!v21)
  {
    goto LABEL_31;
  }

  if (objc_opt_respondsToSelector())
  {
    [v21 doubleValue];
    [(AssetCacheLocatorService *)v2 setLocateTimeout:?];
    [(AssetCacheLocatorService *)v2 locateTimeout];
    if (v22 >= 5.0)
    {
      [(AssetCacheLocatorService *)v2 locateTimeout];
      v28 = v27;
      v23 = 300.0;
      if (v28 <= 300.0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v23 = 5.0;
    }

    [(AssetCacheLocatorService *)v2 setLocateTimeout:v23];
  }

  else
  {
    v24 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = currentQueueName();
      buf = 67109890;
      v278 = 2080;
      v279 = v26;
      v280 = 2112;
      v281 = @"LocateTimeout";
      v282 = 2112;
      v283 = @"a number";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#%08x [%s] bad type for preference %@; expected %@", &buf, 0x26u);
    }
  }

LABEL_31:

  [(AssetCacheLocatorService *)v2 setDnsResolutionTimeout:5.0];
  v29 = CFPreferencesCopyAppValue(@"DNSResolutionTimeout", @"com.apple.AssetCacheLocatorService");
  if (!v29)
  {
    goto LABEL_40;
  }

  if (objc_opt_respondsToSelector())
  {
    [v29 doubleValue];
    [(AssetCacheLocatorService *)v2 setDnsResolutionTimeout:?];
    [(AssetCacheLocatorService *)v2 dnsResolutionTimeout];
    if (v30 >= 1.0)
    {
      [(AssetCacheLocatorService *)v2 dnsResolutionTimeout];
      if (v35 <= 60.0)
      {
        goto LABEL_40;
      }

      v31 = 60.0;
    }

    else
    {
      v31 = 1.0;
    }

    [(AssetCacheLocatorService *)v2 setDnsResolutionTimeout:v31];
  }

  else
  {
    v32 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      v34 = currentQueueName();
      buf = 67109890;
      v278 = 2080;
      v279 = v34;
      v280 = 2112;
      v281 = @"DNSResolutionTimeout";
      v282 = 2112;
      v283 = @"a number";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#%08x [%s] bad type for preference %@; expected %@", &buf, 0x26u);
    }
  }

LABEL_40:

  [(AssetCacheLocatorService *)v2 setRefreshValidityInterval:60.0];
  v36 = CFPreferencesCopyAppValue(@"RefreshValidityInterval", @"com.apple.AssetCacheLocatorService");
  if (v36)
  {
    if (objc_opt_respondsToSelector())
    {
      [v36 doubleValue];
      [(AssetCacheLocatorService *)v2 setRefreshValidityInterval:?];
      [(AssetCacheLocatorService *)v2 refreshValidityInterval];
      v37 = 60.0;
      if (v38 < 60.0 || ([(AssetCacheLocatorService *)v2 refreshValidityInterval], v37 = 1.79769313e308, v39 > 1.79769313e308))
      {
        [(AssetCacheLocatorService *)v2 setRefreshValidityInterval:v37];
      }
    }

    else
    {
      v40 = gLogHandle;
      if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        v42 = currentQueueName();
        buf = 67109890;
        v278 = 2080;
        v279 = v42;
        v280 = 2112;
        v281 = @"RefreshValidityInterval";
        v282 = 2112;
        v283 = @"a number";
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#%08x [%s] bad type for preference %@; expected %@", &buf, 0x26u);
      }
    }
  }

  v161 = [NSURL URLWithString:@"https://lcdn-locator.apple.com/lcdn/locate"];
  [(AssetCacheLocatorService *)v2 setLocateURL:?];
  v162 = CFPreferencesCopyAppValue(@"LocateURL", @"com.apple.AssetCacheLocatorService");
  if (v162)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [NSURL URLWithString:v162];
      [(AssetCacheLocatorService *)v2 setLocateURL:v43];

      v44 = [(AssetCacheLocatorService *)v2 locateURL];

      if (!v44)
      {
        [(AssetCacheLocatorService *)v2 setLocateURL:v161];
      }
    }

    else
    {
      v45 = gLogHandle;
      if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v45;
        v47 = currentQueueName();
        buf = 67109890;
        v278 = 2080;
        v279 = v47;
        v280 = 2112;
        v281 = @"LocateURL";
        v282 = 2112;
        v283 = @"a string";
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#%08x [%s] bad type for preference %@; expected %@", &buf, 0x26u);
      }
    }
  }

  [(AssetCacheLocatorService *)v2 setRedactLogs:1];
  LOBYTE(buf) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"RedactLogs", @"com.apple.AssetCacheLocatorService", &buf);
  if (buf)
  {
    [(AssetCacheLocatorService *)v2 setRedactLogs:AppBooleanValue != 0];
  }

  [(AssetCacheLocatorService *)v2 setSkipEVCheck:0];
  LOBYTE(buf) = 0;
  v49 = CFPreferencesGetAppBooleanValue(@"SkipEVCheck", @"com.apple.AssetCacheLocatorService", &buf);
  if (buf)
  {
    [(AssetCacheLocatorService *)v2 setSkipEVCheck:v49 != 0];
  }

  LOBYTE(buf) = 0;
  v50 = +[NSFileManager defaultManager];
  v51 = [(AssetCacheLocatorService *)v2 cacheDirPath];
  v52 = [v50 fileExistsAtPath:v51 isDirectory:&buf];

  if (!v52)
  {
    goto LABEL_60;
  }

  if ((buf & 1) == 0)
  {
    v53 = +[NSFileManager defaultManager];
    v54 = [(AssetCacheLocatorService *)v2 cacheDirPath];
    [v53 removeItemAtPath:v54 error:0];

LABEL_60:
    v55 = +[NSFileManager defaultManager];
    v56 = [(AssetCacheLocatorService *)v2 cacheDirPath];
    v169 = 0;
    v57 = [v55 createDirectoryAtPath:v56 withIntermediateDirectories:1 attributes:0 error:&v169];
    v58 = v169;

    if (v57)
    {

      goto LABEL_62;
    }

    v134 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10001FD8C(v134, v2, v58);
    }

LABEL_67:
    v133 = 0;
    goto LABEL_68;
  }

LABEL_62:
  v59 = [(AssetCacheLocatorService *)v2 cacheDirPath];
  v60 = [NSString stringWithFormat:@"%@/%@", v59, @"diskCache.plist"];
  [(AssetCacheLocatorService *)v2 setDiskCachePlistPath:v60];

  [(AssetCacheLocatorService *)v2 setLocalhostAddresses:&off_100037670];
  v276[0] = &__kCFBooleanFalse;
  v275[0] = @"mandatory";
  v275[1] = @"class";
  v276[1] = objc_opt_class();
  v275[2] = @"template";
  v273[0] = @"im";
  v272[0] = &__kCFBooleanFalse;
  v271[0] = @"mandatory";
  v271[1] = @"class";
  v272[1] = objc_opt_class();
  v158 = [NSDictionary dictionaryWithObjects:v272 forKeys:v271 count:2];
  v274[0] = v158;
  v273[1] = @"ns";
  v270[0] = &__kCFBooleanFalse;
  v269[0] = @"mandatory";
  v269[1] = @"class";
  v270[1] = objc_opt_class();
  v61 = [NSDictionary dictionaryWithObjects:v270 forKeys:v269 count:2];
  v274[1] = v61;
  v273[2] = @"pc";
  v268[0] = &__kCFBooleanFalse;
  v267[0] = @"mandatory";
  v267[1] = @"class";
  v268[1] = objc_opt_class();
  v62 = [NSDictionary dictionaryWithObjects:v268 forKeys:v267 count:2];
  v274[2] = v62;
  v273[3] = @"query-parameters";
  v266[0] = &__kCFBooleanFalse;
  v265[0] = @"mandatory";
  v265[1] = @"class";
  v266[1] = objc_opt_class();
  v63 = [NSDictionary dictionaryWithObjects:v266 forKeys:v265 count:2];
  v274[3] = v63;
  v273[4] = @"sc";
  v264[0] = &__kCFBooleanFalse;
  v263[0] = @"mandatory";
  v263[1] = @"class";
  v264[1] = objc_opt_class();
  v64 = [NSDictionary dictionaryWithObjects:v264 forKeys:v263 count:2];
  v274[4] = v64;
  v273[5] = @"ur";
  v262[0] = &__kCFBooleanFalse;
  v261[0] = @"mandatory";
  v261[1] = @"class";
  v262[1] = objc_opt_class();
  [NSDictionary dictionaryWithObjects:v262 forKeys:v261 count:2];
  v65 = v164 = v2;
  v274[5] = v65;
  v66 = [NSDictionary dictionaryWithObjects:v274 forKeys:v273 count:6];
  v276[2] = v66;
  v67 = [NSDictionary dictionaryWithObjects:v276 forKeys:v275 count:3];
  [(AssetCacheLocatorService *)v164 setServerCapabilitiesTemplate:v67];

  v68 = [ACLSTypeVerifier alloc];
  v69 = [(AssetCacheLocatorService *)v164 serverCapabilitiesTemplate];
  v70 = [(ACLSTypeVerifier *)v68 initWithTemplate:v69];
  [(AssetCacheLocatorService *)v164 setServerCapabilitiesVerifier:v70];

  v260[0] = &__kCFBooleanFalse;
  v259[0] = @"mandatory";
  v259[1] = @"class";
  v260[1] = objc_opt_class();
  v259[2] = @"template";
  v257[0] = @"ac-power";
  v256[0] = &__kCFBooleanFalse;
  v255[0] = @"mandatory";
  v255[1] = @"class";
  v256[1] = objc_opt_class();
  v159 = [NSDictionary dictionaryWithObjects:v256 forKeys:v255 count:2];
  v258[0] = v159;
  v257[1] = @"cache-size";
  v254[0] = &__kCFBooleanFalse;
  v253[0] = @"mandatory";
  v253[1] = @"class";
  v254[1] = objc_opt_class();
  v156 = [NSDictionary dictionaryWithObjects:v254 forKeys:v253 count:2];
  v258[1] = v156;
  v257[2] = @"capabilities";
  v154 = [(AssetCacheLocatorService *)v164 serverCapabilitiesTemplate];
  v258[2] = v154;
  v257[3] = @"is-portable";
  v252[0] = &__kCFBooleanFalse;
  v251[0] = @"mandatory";
  v251[1] = @"class";
  v252[1] = objc_opt_class();
  v152 = [NSDictionary dictionaryWithObjects:v252 forKeys:v251 count:2];
  v258[3] = v152;
  v257[4] = @"local-network";
  v250[0] = &__kCFBooleanFalse;
  v249[0] = @"mandatory";
  v249[1] = @"class";
  v250[1] = objc_opt_class();
  v249[2] = @"template";
  v247[0] = @"class";
  v248[0] = objc_opt_class();
  v247[1] = @"template";
  v245[0] = @"speed";
  v244[0] = &__kCFBooleanFalse;
  v243[0] = @"mandatory";
  v243[1] = @"class";
  v244[1] = objc_opt_class();
  v71 = [NSDictionary dictionaryWithObjects:v244 forKeys:v243 count:2];
  v246[0] = v71;
  v245[1] = @"wired";
  v242[0] = &__kCFBooleanFalse;
  v241[0] = @"mandatory";
  v241[1] = @"class";
  v242[1] = objc_opt_class();
  v72 = [NSDictionary dictionaryWithObjects:v242 forKeys:v241 count:2];
  v246[1] = v72;
  v73 = [NSDictionary dictionaryWithObjects:v246 forKeys:v245 count:2];
  v248[1] = v73;
  v74 = [NSDictionary dictionaryWithObjects:v248 forKeys:v247 count:2];
  v250[2] = v74;
  v75 = [NSDictionary dictionaryWithObjects:v250 forKeys:v249 count:3];
  v258[4] = v75;
  v76 = [NSDictionary dictionaryWithObjects:v258 forKeys:v257 count:5];
  v260[2] = v76;
  v77 = [NSDictionary dictionaryWithObjects:v260 forKeys:v259 count:3];
  [(AssetCacheLocatorService *)v164 setServerDetailsTemplate:v77];

  v78 = [ACLSTypeVerifier alloc];
  v79 = [(AssetCacheLocatorService *)v164 serverDetailsTemplate];
  v80 = [(ACLSTypeVerifier *)v78 initWithTemplate:v79];
  [(AssetCacheLocatorService *)v164 setServerDetailsVerifier:v80];

  v240[0] = &__kCFBooleanTrue;
  v239[0] = @"mandatory";
  v239[1] = @"class";
  v240[1] = objc_opt_class();
  v239[2] = @"template";
  v237[0] = @"class";
  v238[0] = objc_opt_class();
  v237[1] = @"template";
  v235[0] = @"digest";
  v234[0] = &__kCFBooleanTrue;
  v233[0] = @"mandatory";
  v233[1] = @"class";
  v234[1] = objc_opt_class();
  v81 = [NSDictionary dictionaryWithObjects:v234 forKeys:v233 count:2];
  v236[0] = v81;
  v235[1] = @"key";
  v232[0] = &__kCFBooleanTrue;
  v231[0] = @"mandatory";
  v231[1] = @"class";
  v232[1] = objc_opt_class();
  v82 = [NSDictionary dictionaryWithObjects:v232 forKeys:v231 count:2];
  v236[1] = v82;
  v83 = [NSDictionary dictionaryWithObjects:v236 forKeys:v235 count:2];
  v238[1] = v83;
  v84 = [NSDictionary dictionaryWithObjects:v238 forKeys:v237 count:2];
  v240[2] = v84;
  v157 = [NSDictionary dictionaryWithObjects:v240 forKeys:v239 count:3];

  v230[0] = &__kCFBooleanTrue;
  v229[0] = @"mandatory";
  v229[1] = @"class";
  v230[1] = objc_opt_class();
  v229[2] = @"template";
  v227[0] = @"class";
  v228[0] = objc_opt_class();
  v227[1] = @"template";
  v225[0] = @"first";
  v224[0] = &__kCFBooleanTrue;
  v223[0] = @"mandatory";
  v223[1] = @"class";
  v224[1] = objc_opt_class();
  v85 = [NSDictionary dictionaryWithObjects:v224 forKeys:v223 count:2];
  v226[0] = v85;
  v225[1] = @"last";
  v222[0] = &__kCFBooleanTrue;
  v221[0] = @"mandatory";
  v221[1] = @"class";
  v222[1] = objc_opt_class();
  v86 = [NSDictionary dictionaryWithObjects:v222 forKeys:v221 count:2];
  v226[1] = v86;
  v87 = [NSDictionary dictionaryWithObjects:v226 forKeys:v225 count:2];
  v228[1] = v87;
  v88 = [NSDictionary dictionaryWithObjects:v228 forKeys:v227 count:2];
  v230[2] = v88;
  v160 = [NSDictionary dictionaryWithObjects:v230 forKeys:v229 count:3];

  v220[0] = &__kCFBooleanTrue;
  v219[0] = @"mandatory";
  v219[1] = @"class";
  v220[1] = objc_opt_class();
  v219[2] = @"template";
  v217[0] = @"version";
  v216[0] = &__kCFBooleanTrue;
  v215[0] = @"mandatory";
  v215[1] = @"class";
  v216[1] = objc_opt_class();
  v155 = [NSDictionary dictionaryWithObjects:v216 forKeys:v215 count:2];
  v218[0] = v155;
  v217[1] = @"cache";
  v214[0] = &__kCFBooleanTrue;
  v213[0] = @"mandatory";
  v213[1] = @"class";
  v214[1] = objc_opt_class();
  v213[2] = @"template";
  v211[0] = @"class";
  v212[0] = objc_opt_class();
  v211[1] = @"template";
  v209[0] = @"validUntil";
  v208[0] = &__kCFBooleanTrue;
  v207[0] = @"mandatory";
  v207[1] = @"class";
  v208[1] = objc_opt_class();
  v153 = [NSDictionary dictionaryWithObjects:v208 forKeys:v207 count:2];
  v210[0] = v153;
  v210[1] = v157;
  v209[1] = @"networkIdentifiers";
  v209[2] = @"servers";
  v206[0] = &__kCFBooleanTrue;
  v205[0] = @"mandatory";
  v205[1] = @"class";
  v206[1] = objc_opt_class();
  v205[2] = @"template";
  v203[0] = @"class";
  v204[0] = objc_opt_class();
  v203[1] = @"template";
  v201[0] = @"localAddressAndPort";
  v200[0] = &__kCFBooleanTrue;
  v199[0] = @"mandatory";
  v199[1] = @"class";
  v200[1] = objc_opt_class();
  v151 = [NSDictionary dictionaryWithObjects:v200 forKeys:v199 count:2];
  v202[0] = v151;
  v201[1] = @"connectTimeout";
  v198[0] = &__kCFBooleanTrue;
  v197[0] = @"mandatory";
  v197[1] = @"class";
  v198[1] = objc_opt_class();
  v150 = [NSDictionary dictionaryWithObjects:v198 forKeys:v197 count:2];
  v202[1] = v150;
  v201[2] = @"details";
  v149 = [(AssetCacheLocatorService *)v164 serverDetailsTemplate];
  v202[2] = v149;
  v201[3] = @"failureCount";
  v196[0] = &__kCFBooleanFalse;
  v195[0] = @"mandatory";
  v195[1] = @"class";
  v196[1] = objc_opt_class();
  v148 = [NSDictionary dictionaryWithObjects:v196 forKeys:v195 count:2];
  v202[3] = v148;
  v201[4] = @"favored";
  v194[0] = &__kCFBooleanFalse;
  v193[0] = @"mandatory";
  v193[1] = @"class";
  v194[1] = objc_opt_class();
  v147 = [NSDictionary dictionaryWithObjects:v194 forKeys:v193 count:2];
  v202[4] = v147;
  v201[5] = @"guid";
  v192[0] = &__kCFBooleanTrue;
  v191[0] = @"mandatory";
  v191[1] = @"class";
  v192[1] = objc_opt_class();
  v146 = [NSDictionary dictionaryWithObjects:v192 forKeys:v191 count:2];
  v202[5] = v146;
  v201[6] = @"rank";
  v190[0] = &__kCFBooleanTrue;
  v189[0] = @"mandatory";
  v189[1] = @"class";
  v190[1] = objc_opt_class();
  v145 = [NSDictionary dictionaryWithObjects:v190 forKeys:v189 count:2];
  v202[6] = v145;
  v144 = [NSDictionary dictionaryWithObjects:v202 forKeys:v201 count:7];
  v204[1] = v144;
  v143 = [NSDictionary dictionaryWithObjects:v204 forKeys:v203 count:2];
  v206[2] = v143;
  v142 = [NSDictionary dictionaryWithObjects:v206 forKeys:v205 count:3];
  v210[2] = v142;
  v141 = [NSDictionary dictionaryWithObjects:v210 forKeys:v209 count:3];
  v212[1] = v141;
  v140 = [NSDictionary dictionaryWithObjects:v212 forKeys:v211 count:2];
  v214[2] = v140;
  v139 = [NSDictionary dictionaryWithObjects:v214 forKeys:v213 count:3];
  v218[1] = v139;
  v217[2] = @"dnsResults";
  v188[0] = &__kCFBooleanTrue;
  v187[0] = @"mandatory";
  v187[1] = @"class";
  v188[1] = objc_opt_class();
  v187[2] = @"template";
  v185[0] = @"class";
  v186[0] = objc_opt_class();
  v185[1] = @"template";
  v183[0] = @"validUntil";
  v182[0] = &__kCFBooleanTrue;
  v181[0] = @"mandatory";
  v181[1] = @"class";
  v182[1] = objc_opt_class();
  v138 = [NSDictionary dictionaryWithObjects:v182 forKeys:v181 count:2];
  v184[0] = v138;
  v184[1] = v157;
  v183[1] = @"networkIdentifiers";
  v183[2] = @"publicAddressRanges";
  v183[3] = @"favoredServerRanges";
  v184[2] = v160;
  v184[3] = v160;
  v137 = [NSDictionary dictionaryWithObjects:v184 forKeys:v183 count:4];
  v186[1] = v137;
  v136 = [NSDictionary dictionaryWithObjects:v186 forKeys:v185 count:2];
  v188[2] = v136;
  v89 = [NSDictionary dictionaryWithObjects:v188 forKeys:v187 count:3];
  v218[2] = v89;
  v217[3] = @"serversRecentlySeen";
  v180[0] = &__kCFBooleanFalse;
  v179[0] = @"mandatory";
  v179[1] = @"class";
  v180[1] = objc_opt_class();
  v179[2] = @"template";
  v177[0] = @"class";
  v90 = objc_opt_class();
  v177[1] = @"template";
  v178[0] = v90;
  v175[0] = @"validUntil";
  v173[1] = @"class";
  v174[0] = &__kCFBooleanTrue;
  v173[0] = @"mandatory";
  v174[1] = objc_opt_class();
  v91 = [NSDictionary dictionaryWithObjects:v174 forKeys:v173 count:2];
  v176[0] = v91;
  v176[1] = v157;
  v175[1] = @"networkIdentifiers";
  v175[2] = @"recentlySeen";
  v171[1] = @"class";
  v172[0] = &__kCFBooleanTrue;
  v171[0] = @"mandatory";
  v172[1] = objc_opt_class();
  v92 = [NSDictionary dictionaryWithObjects:v172 forKeys:v171 count:2];
  v176[2] = v92;
  v93 = [NSDictionary dictionaryWithObjects:v176 forKeys:v175 count:3];
  v178[1] = v93;
  v94 = [NSDictionary dictionaryWithObjects:v178 forKeys:v177 count:2];
  v180[2] = v94;
  v95 = [NSDictionary dictionaryWithObjects:v180 forKeys:v179 count:3];
  v218[3] = v95;
  v96 = [NSDictionary dictionaryWithObjects:v218 forKeys:v217 count:4];
  v220[2] = v96;
  v97 = [NSDictionary dictionaryWithObjects:v220 forKeys:v219 count:3];
  [(AssetCacheLocatorService *)v164 setDiskCacheTemplate:v97];

  v2 = v164;
  v98 = [ACLSTypeVerifier alloc];
  v99 = [(AssetCacheLocatorService *)v164 diskCacheTemplate];
  v100 = [(ACLSTypeVerifier *)v98 initWithTemplate:v99];
  [(AssetCacheLocatorService *)v164 setDiskCacheVerifier:v100];

  v101 = [(AssetCacheLocatorService *)v164 makeSoftwareVersions];
  [(AssetCacheLocatorService *)v164 setSoftwareVersions:v101];

  v102 = [(AssetCacheLocatorService *)v164 makeBootTimeWithTag:0];
  [(AssetCacheLocatorService *)v164 setBootTime:v102];

  v103 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v104 = dispatch_queue_create("AssetCacheLocatorService.queue", v103);
  [(AssetCacheLocatorService *)v164 setQueue:v104];

  v105 = [(AssetCacheLocatorService *)v164 queue];
  v106 = off_10003ACF0;
  v107 = [(AssetCacheLocatorService *)v164 queue];
  dispatch_queue_set_specific(v105, v106, v107, 0);

  v108 = dispatch_get_global_queue(0, 0);
  v109 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v108);
  [(AssetCacheLocatorService *)v164 setDiskCacheRefreshTimer:v109];

  v110 = [(AssetCacheLocatorService *)v164 diskCacheRefreshTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100008114;
  handler[3] = &unk_100034B58;
  v111 = v164;
  v168 = v111;
  dispatch_source_set_event_handler(v110, handler);

  [(AssetCacheLocatorService *)v111 setDiskCacheRefreshTimerResumed:0];
  v112 = dispatch_semaphore_create(1);
  [(AssetCacheLocatorService *)v111 setSingleLocate:v112];

  v113 = objc_alloc_init(NSOperationQueue);
  [(AssetCacheLocatorService *)v111 setLocateOpQueue:v113];

  v114 = [(AssetCacheLocatorService *)v111 locateOpQueue];
  [v114 setMaxConcurrentOperationCount:1];

  v115 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v116 = dispatch_queue_create("AssetCacheLocatorService.cacheRefreshQueue", v115);
  [(AssetCacheLocatorService *)v111 setCacheRefreshQueue:v116];

  v117 = [(AssetCacheLocatorService *)v111 cacheRefreshQueue];
  v118 = off_10003ACF0;
  v119 = [(AssetCacheLocatorService *)v111 cacheRefreshQueue];
  dispatch_queue_set_specific(v117, v118, v119, 0);

  v120 = +[NSMutableDictionary dictionary];
  [(AssetCacheLocatorService *)v111 setAffinityCache:v120];

  v121 = [[NSURLCache alloc] initWithMemoryCapacity:0 diskCapacity:0 diskPath:0];
  [v121 removeAllCachedResponses];
  [NSURLCache setSharedURLCache:v121];
  v122 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  [(AssetCacheLocatorService *)v111 setLocateSessionConfig:v122];

  v123 = [(AssetCacheLocatorService *)v111 locateSessionConfig];
  [v123 setAllowsCellularAccess:0];

  v124 = [(AssetCacheLocatorService *)v111 locateSessionConfig];
  [v124 setHTTPCookieStorage:0];

  v125 = [(AssetCacheLocatorService *)v111 locateSessionConfig];
  [v125 setURLCredentialStorage:0];

  v126 = [(AssetCacheLocatorService *)v111 locateSessionConfig];
  [v126 setURLCache:0];

  v127 = [(AssetCacheLocatorService *)v111 locateSessionConfig];
  v128 = [v127 copy];
  [(AssetCacheLocatorService *)v111 setImportSessionConfig:v128];

  v129 = [(AssetCacheLocatorService *)v111 locateSessionConfig];
  v130 = [v129 copy];
  [(AssetCacheLocatorService *)v111 setQuerySessionConfig:v130];

  v131 = [(AssetCacheLocatorService *)v111 singleLocate];
  dispatch_semaphore_wait(v131, 0xFFFFFFFFFFFFFFFFLL);

  v132 = [(AssetCacheLocatorService *)v111 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000082D4;
  block[3] = &unk_100034B58;
  v166 = v111;
  dispatch_async(v132, block);

LABEL_63:
  v133 = v2;
LABEL_68:

  return v133;
}

- (id)systemGroupContainerPathWithGroupIdentifier:(id)a3
{
  v3 = a3;
  v9 = 1;
  [v3 UTF8String];
  v4 = container_system_group_path_for_identifier();
  if (v4)
  {
    v5 = v4;
    v6 = [NSString stringWithUTF8String:v4];
    free(v5);
  }

  else
  {
    v7 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10001FE90(v7, v3, &v9);
    }

    v6 = 0;
  }

  return v6;
}

- (id)objectWithError:(id)a3
{
  v3 = a3;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = [v3 domain];
  v6 = v5;
  if (v5)
  {
    xpc_dictionary_set_string(v4, "errorDomain", [v5 UTF8String]);
  }

  xpc_dictionary_set_int64(v4, "errorCode", [v3 code]);
  v7 = [v3 localizedDescription];

  if (v7)
  {
    xpc_dictionary_set_string(v4, "errorDescription", [v7 UTF8String]);
  }

  return v4;
}

- (id)NSObjectFromXPCObject:(id)a3 tag:(unsigned int)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_18;
  }

  type = xpc_get_type(v6);
  if (type == &_xpc_type_BOOL)
  {
    v10 = [NSNumber numberWithBool:xpc_BOOL_get_value(v7)];
LABEL_17:
    v9 = v10;
    goto LABEL_18;
  }

  if (type == &_xpc_type_int64)
  {
    v10 = [NSNumber numberWithLongLong:xpc_int64_get_value(v7)];
    goto LABEL_17;
  }

  if (type == &_xpc_type_uint64)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v7)];
    goto LABEL_17;
  }

  if (type == &_xpc_type_double)
  {
    v10 = [NSNumber numberWithDouble:xpc_double_get_value(v7)];
    goto LABEL_17;
  }

  if (type == &_xpc_type_string)
  {
    v10 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v7)];
    goto LABEL_17;
  }

  if (type == &_xpc_type_array)
  {
    +[NSMutableArray array];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100008908;
    applier[3] = &unk_100034B80;
    applier[4] = self;
    v9 = v18 = a4;
    v17 = v9;
    xpc_array_apply(v7, applier);
    v12 = v17;
  }

  else
  {
    if (type != &_xpc_type_dictionary)
    {
      if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_ERROR))
      {
        sub_10001FF54();
      }

      goto LABEL_11;
    }

    +[NSMutableDictionary dictionary];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100008954;
    v13[3] = &unk_100034BA8;
    v13[4] = self;
    v9 = v15 = a4;
    v14 = v9;
    xpc_dictionary_apply(v7, v13);
    v12 = v14;
  }

LABEL_18:

  return v9;
}

- (id)XPCObjectFromNSObject:(id)a3 tag:(unsigned int)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFBooleanGetTypeID())
    {
      v9 = xpc_BOOL_create(kCFBooleanTrue == v7);
LABEL_12:
      v11 = v9;
      goto LABEL_19;
    }

    if (v8 == CFNumberGetTypeID())
    {
      if (CFNumberIsFloatType(v7))
      {
        [(__CFBoolean *)v7 doubleValue];
        v9 = xpc_double_create(v10);
      }

      else
      {
        v9 = xpc_uint64_create([(__CFBoolean *)v7 unsignedLongLongValue]);
      }

      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = xpc_string_create([(__CFBoolean *)v7 UTF8String]);
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100008C2C;
      v17[3] = &unk_100034BD0;
      v17[4] = self;
      v19 = a4;
      v11 = xpc_array_create(0, 0);
      v18 = v11;
      [(__CFBoolean *)v7 enumerateObjectsUsingBlock:v17];
      v12 = v18;
LABEL_15:

      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100008C90;
      v14[3] = &unk_100034BF8;
      v14[4] = self;
      v16 = a4;
      v11 = xpc_dictionary_create(0, 0, 0);
      v15 = v11;
      [(__CFBoolean *)v7 enumerateKeysAndObjectsUsingBlock:v14];
      v12 = v15;
      goto LABEL_15;
    }

    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10001FFF0();
    }
  }

  v11 = 0;
LABEL_19:

  return v11;
}

- (id)servers:(id)a3 byAppendingServers:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (id)choose:(int)a3 fromArray:(id)a4 sorted:(BOOL)a5 other:(id)a6 tag:(unsigned int)a7
{
  v8 = a5;
  v11 = a4;
  v12 = a6;
  v50 = self;
  v13 = [(AssetCacheLocatorService *)self servers:v11 byAppendingServers:v12];
  v14 = v13;
  v52 = a3;
  v53 = v8;
  if (a3 <= 0)
  {
    v23 = v13;
    goto LABEL_36;
  }

  if (a3 != 1)
  {
    sub_10002008C();
  }

  v54 = v12;
  if (!v8)
  {
    v49 = v13;
    v24 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
    v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v47 = v11;
    v26 = v11;
    v27 = [v26 countByEnumeratingWithState:&v55 objects:v79 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v56;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v56 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v55 + 1) + 8 * i);
          v32 = [v31 objectForKeyedSubscript:{@"failureCount", v47}];
          v33 = [v32 unsignedIntegerValue];

          if (v33 <= 2)
          {
            v34 = [v31 objectForKeyedSubscript:@"favored"];
            v35 = [v34 BOOLValue];

            if (v35)
            {
              v36 = v24;
            }

            else
            {
              v36 = v25;
            }

            [v36 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v55 objects:v79 count:16];
      }

      while (v28);
    }

    if ([v24 count])
    {
      v37 = [v24 objectAtIndex:{arc4random_uniform(objc_msgSend(v24, "count"))}];
      v78 = v37;
      v38 = &v78;
      v11 = v47;
      v14 = v49;
      v12 = v54;
    }

    else
    {
      v11 = v47;
      v14 = v49;
      v12 = v54;
      if (![v25 count])
      {
        v23 = 0;
        goto LABEL_35;
      }

      v37 = [v25 objectAtIndex:{arc4random_uniform(objc_msgSend(v25, "count"))}];
      v77 = v37;
      v38 = &v77;
    }

    v23 = [NSArray arrayWithObjects:v38 count:1, v47];

LABEL_35:
    goto LABEL_36;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v59 objects:v81 count:16];
  if (v16)
  {
    v17 = v16;
    v48 = v14;
    v18 = *v60;
    while (2)
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v60 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v59 + 1) + 8 * j);
        v21 = [v20 objectForKeyedSubscript:@"failureCount"];
        v22 = [v21 unsignedIntegerValue];

        if (v22 <= 2)
        {
          v80 = v20;
          v23 = [NSArray arrayWithObjects:&v80 count:1];
          goto LABEL_29;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v59 objects:v81 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v23 = 0;
LABEL_29:
    v14 = v48;
  }

  else
  {
    v23 = 0;
  }

  v12 = v54;
LABEL_36:
  v39 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v41 = v39;
    v42 = currentQueueName();
    v43 = [(AssetCacheLocatorService *)v50 redactObject:v11];
    v44 = [(AssetCacheLocatorService *)v50 redactObject:v12];
    [(AssetCacheLocatorService *)v50 redactObject:v23];
    v46 = v45 = v11;
    *buf = 67110658;
    v64 = a7;
    v65 = 2080;
    v66 = v42;
    v67 = 1024;
    v68 = v52;
    v69 = 2112;
    v70 = v43;
    v71 = 1024;
    v72 = v53;
    v73 = 2112;
    v74 = v44;
    v75 = 2112;
    v76 = v46;
    _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "#%08x [%s] choose:%d fromArray:%@ sorted:%{BOOL}d other:%@ -> %@", buf, 0x3Cu);

    v11 = v45;
  }

  return v23;
}

- (void)start
{
  v3 = objc_autoreleasePoolPush();
  v4 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 67109890;
    v16 = 0;
    v17 = 2080;
    v18 = currentQueueName();
    v19 = 2080;
    v20 = "AssetCacheLocatorService";
    v21 = 1024;
    v22 = geteuid();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#%08x [%s] %s starting for user %d", buf, 0x22u);
  }

  [(AssetCacheLocatorService *)self watchForNetworkChanges];
  v6 = dispatch_get_global_queue(2, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.AssetCacheLocatorService", v6, 1uLL);
  [(AssetCacheLocatorService *)self setListenerConnection:mach_service];

  v8 = [(AssetCacheLocatorService *)self listenerConnection];

  if (v8)
  {
    v9 = [(AssetCacheLocatorService *)self listenerConnection];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100009508;
    handler[3] = &unk_100034C20;
    handler[4] = self;
    xpc_connection_set_event_handler(v9, handler);

    v10 = dispatch_get_global_queue(0, 0);
    xpc_set_idle_handler();

    v11 = [(AssetCacheLocatorService *)self listenerConnection:_NSConcreteStackBlock];
    xpc_connection_resume(v11);

    objc_autoreleasePoolPop(v3);
    v12 = +[NSRunLoop currentRunLoop];
    [v12 run];
  }

  else
  {
    v13 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_ERROR))
    {
      sub_1000200B8(v13);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)handleConnection:(id)a3
{
  v4 = a3;
  v5 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    *buf = 67109890;
    v12 = 0;
    v13 = 2080;
    v14 = currentQueueName();
    v15 = 1024;
    pid = xpc_connection_get_pid(v4);
    v17 = 1024;
    euid = xpc_connection_get_euid(v4);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#%08x [%s] XPC connection from pid %d uid %d", buf, 0x1Eu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009814;
  v8[3] = &unk_100034C48;
  v9 = v4;
  v10 = self;
  v7 = v4;
  xpc_connection_set_event_handler(v7, v8);
  xpc_connection_resume(v7);
}

- (BOOL)handleEvent:(id)a3 forConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100020308(v8);
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    goto LABEL_4;
  }

  uint64 = xpc_dictionary_get_uint64(v6, "tag");
  if (!uint64)
  {
    v16 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_ERROR))
    {
      sub_1000203C8(v16, v7);
    }

    goto LABEL_4;
  }

  string = xpc_dictionary_get_string(v6, "command");
  if (([(AssetCacheLocatorService *)self testFlags]& 0x10) != 0 && ![(AssetCacheLocatorService *)self doesConnection:v7 haveEntitlement:"com.apple.private.AssetCacheServices.test"])
  {
    v19 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
    {
      v18 = v19;
      v30 = 67110146;
      v31 = uint64;
      v32 = 2080;
      v33 = currentQueueName();
      v34 = 1024;
      pid = xpc_connection_get_pid(v7);
      v36 = 1024;
      euid = xpc_connection_get_euid(v7);
      v38 = 2080;
      v39 = string;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#%08x [%s] rejecting civilian XPC request from pid %d uid %d: %s", &v30, 0x28u);
      goto LABEL_27;
    }
  }

  else
  {
    if (string)
    {
      if (!strcmp(string, "locate"))
      {
        v20 = gLogHandle;
        if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
        {
          v21 = v20;
          v30 = 67110146;
          v31 = uint64;
          v32 = 2080;
          v33 = currentQueueName();
          v34 = 1024;
          pid = xpc_connection_get_pid(v7);
          v36 = 1024;
          euid = xpc_connection_get_euid(v7);
          v38 = 2080;
          v39 = string;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "#%08x [%s] XPC request from pid %d uid %d: %s", &v30, 0x28u);
        }

        v15 = [(AssetCacheLocatorService *)self handleLocateEvent:v6 forConnection:v7 tag:uint64];
        goto LABEL_43;
      }

      if (!strcmp(string, "recentlySeen"))
      {
        v22 = gLogHandle;
        if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
        {
          v23 = v22;
          v30 = 67110146;
          v31 = uint64;
          v32 = 2080;
          v33 = currentQueueName();
          v34 = 1024;
          pid = xpc_connection_get_pid(v7);
          v36 = 1024;
          euid = xpc_connection_get_euid(v7);
          v38 = 2080;
          v39 = string;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "#%08x [%s] XPC request from pid %d uid %d: %s", &v30, 0x28u);
        }

        v15 = [(AssetCacheLocatorService *)self handleRecentlySeenEvent:v6 forConnection:v7 tag:uint64];
        goto LABEL_43;
      }

      if (!strcmp(string, "updateHealth"))
      {
        v24 = gLogHandle;
        if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
        {
          v25 = v24;
          v30 = 67110146;
          v31 = uint64;
          v32 = 2080;
          v33 = currentQueueName();
          v34 = 1024;
          pid = xpc_connection_get_pid(v7);
          v36 = 1024;
          euid = xpc_connection_get_euid(v7);
          v38 = 2080;
          v39 = string;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "#%08x [%s] XPC request from pid %d uid %d: %s", &v30, 0x28u);
        }

        v15 = [(AssetCacheLocatorService *)self handleUpdateHealthEvent:v6 forConnection:v7 tag:uint64];
        goto LABEL_43;
      }

      if (!strcmp(string, "import"))
      {
        v26 = gLogHandle;
        if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
        {
          v27 = v26;
          v30 = 67110146;
          v31 = uint64;
          v32 = 2080;
          v33 = currentQueueName();
          v34 = 1024;
          pid = xpc_connection_get_pid(v7);
          v36 = 1024;
          euid = xpc_connection_get_euid(v7);
          v38 = 2080;
          v39 = string;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "#%08x [%s] XPC request from pid %d uid %d: %s", &v30, 0x28u);
        }

        v15 = [(AssetCacheLocatorService *)self handleImportEvent:v6 forConnection:v7 tag:uint64];
        goto LABEL_43;
      }

      if (!strcmp(string, "introspect"))
      {
        v28 = gLogHandle;
        if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
        {
          v29 = v28;
          v30 = 67110146;
          v31 = uint64;
          v32 = 2080;
          v33 = currentQueueName();
          v34 = 1024;
          pid = xpc_connection_get_pid(v7);
          v36 = 1024;
          euid = xpc_connection_get_euid(v7);
          v38 = 2080;
          v39 = string;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "#%08x [%s] XPC request from pid %d uid %d: %s", &v30, 0x28u);
        }

        v15 = [(AssetCacheLocatorService *)self handleIntrospectEvent:v6 forConnection:v7 tag:uint64];
        goto LABEL_43;
      }

      if (!strcmp(string, "setTestFlags") && [(AssetCacheLocatorService *)self doesConnection:v7 haveEntitlement:"com.apple.private.AssetCacheServices.test"]&& os_variant_allows_internal_security_policies())
      {
        v13 = gLogHandle;
        if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
        {
          v14 = v13;
          v30 = 67110146;
          v31 = uint64;
          v32 = 2080;
          v33 = currentQueueName();
          v34 = 1024;
          pid = xpc_connection_get_pid(v7);
          v36 = 1024;
          euid = xpc_connection_get_euid(v7);
          v38 = 2080;
          v39 = string;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "#%08x [%s] XPC request from pid %d uid %d: %s", &v30, 0x28u);
        }

        v15 = [(AssetCacheLocatorService *)self handleSetTestFlagsEvent:v6 forConnection:v7 tag:uint64];
LABEL_43:
        v9 = v15;
        goto LABEL_5;
      }
    }

    v17 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      v30 = 67110402;
      v31 = uint64;
      v32 = 2080;
      v33 = currentQueueName();
      v34 = 1024;
      pid = xpc_connection_get_pid(v7);
      v36 = 1024;
      euid = xpc_connection_get_euid(v7);
      v38 = 2080;
      v39 = "command";
      v40 = 2080;
      v41 = string;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#%08x [%s] XPC connection from pid %d uid %d received unknown %s: %s", &v30, 0x32u);
LABEL_27:
    }
  }

LABEL_4:
  v9 = 0;
LABEL_5:

  return v9;
}

- (BOOL)handleLocateEvent:(id)a3 forConnection:(id)a4 tag:(unsigned int)a5
{
  v6 = a3;
  v38 = a4;
  v36 = +[NSDate date];
  reply = xpc_dictionary_create_reply(v6);
  v7 = xpc_dictionary_get_value(v6, "quantity");
  v8 = v7;
  if (v7)
  {
    value = xpc_int64_get_value(v7);
  }

  else
  {
    value = 1;
  }

  string = xpc_dictionary_get_string(v6, "x-apple-persistent-identifier");
  if (string)
  {
    v11 = [NSString stringWithUTF8String:string];
  }

  else
  {
    v11 = 0;
  }

  v12 = +[NSMutableDictionary dictionary];
  v13 = xpc_dictionary_get_value(v6, "capabilities");
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v14 = v11;
  v69 = v11 == 0;
  object = v13;
  if (v13 && xpc_get_type(v13) == &_xpc_type_dictionary)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10000A4CC;
    applier[3] = &unk_100034C70;
    v64 = v12;
    v65 = &v66;
    xpc_dictionary_apply(object, applier);
  }

  if (*(v67 + 24))
  {
    v15 = @"sc";
  }

  else
  {
    v15 = @"pc";
  }

  [v12 setObject:&__kCFBooleanTrue forKey:v15];
  uint64 = xpc_dictionary_get_uint64(v6, "sizeHint");
  if (uint64)
  {
    v17 = [NSNumber numberWithUnsignedLongLong:uint64];
    [v12 setObject:v17 forKey:@"sizeHint"];
  }

  v35 = v12;
  v18 = [v12 copy];
  v19 = xpc_dictionary_get_value(v6, "autoRefresh");
  v20 = v19;
  if (v19)
  {
    v21 = xpc_BOOL_get_value(v19);
  }

  else
  {
    v21 = 1;
  }

  v34 = xpc_dictionary_get_BOOL(v6, "quickMiss");
  v22 = xpc_dictionary_get_BOOL(v6, "forceMiss");
  v33 = v8;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10000A640;
  v53[3] = &unk_100034C98;
  v53[4] = self;
  v59 = a5;
  v60 = value;
  v39 = v38;
  v54 = v39;
  v37 = v36;
  v55 = v37;
  v61 = v8 != 0;
  v23 = reply;
  v56 = v23;
  v62 = v21;
  v24 = v18;
  v57 = v24;
  v25 = v14;
  v58 = v25;
  v26 = objc_retainBlock(v53);
  [(AssetCacheLocatorService *)self locateTimeout];
  [NSDate dateWithTimeIntervalSinceNow:?];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10000AE88;
  v44[3] = &unk_100034CC0;
  v27 = v44[4] = self;
  v45 = v27;
  v28 = v24;
  v46 = v28;
  v29 = v25;
  v47 = v29;
  v50 = v21;
  v51 = v34;
  v52 = v22;
  v30 = v26;
  v48 = v30;
  v49 = a5;
  v31 = objc_retainBlock(v44);
  (v31[2])();

  _Block_object_dispose(&v66, 8);
  return 1;
}

- (BOOL)handleRecentlySeenEvent:(id)a3 forConnection:(id)a4 tag:(unsigned int)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[NSDate date];
  reply = xpc_dictionary_create_reply(v9);
  v12 = xpc_dictionary_get_value(v9, "autoRefresh");

  if (v12)
  {
    value = xpc_BOOL_get_value(v12);
  }

  else
  {
    value = 1;
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000B114;
  v28[3] = &unk_100034CE8;
  v33 = a5;
  v29 = v8;
  v30 = v10;
  v31 = reply;
  v32 = self;
  v14 = reply;
  v15 = v10;
  v16 = v8;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000B3E8;
  v24[3] = &unk_100034D10;
  v27 = value;
  v24[4] = self;
  v25 = objc_retainBlock(v28);
  v26 = a5;
  v17 = v25;
  v18 = objc_retainBlock(v24);
  (v18[2])(v18, v19, v20, v21, v22);

  return 1;
}

- (BOOL)handleUpdateHealthEvent:(id)a3 forConnection:(id)a4 tag:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  if (([(AssetCacheLocatorService *)self testFlags]& 0x80) == 0)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = sub_10000B628;
    v21[4] = sub_10000B638;
    v22 = os_transaction_create();
    string = xpc_dictionary_get_string(v8, "hostport");
    if (string)
    {
      v11 = [NSString stringWithUTF8String:string];
    }

    else
    {
      v11 = 0;
    }

    v12 = xpc_dictionary_get_BOOL(v8, "healthy");
    v13 = dispatch_get_global_queue(0, 0);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000B640;
    v16[3] = &unk_100034D60;
    v16[4] = self;
    v17 = v11;
    v20 = v12;
    v18 = v21;
    v19 = a5;
    v14 = v11;
    dispatch_async(v13, v16);

    _Block_object_dispose(v21, 8);
  }

  return 1;
}

- (BOOL)handleImportEvent:(id)a3 forConnection:(id)a4 tag:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[NSDate date];
  reply = xpc_dictionary_create_reply(v8);
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_10000BC4C;
  v64[3] = &unk_100034CE8;
  v55 = a5;
  v69 = a5;
  v12 = v9;
  v65 = v12;
  v58 = v10;
  v66 = v58;
  v57 = reply;
  v67 = v57;
  v68 = self;
  v56 = objc_retainBlock(v64);
  string = xpc_dictionary_get_string(v8, "url");
  if (string)
  {
    v14 = [NSString stringWithUTF8String:string];
    v15 = [NSURL URLWithString:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = xpc_dictionary_get_string(v8, "method");
  if (v16)
  {
    v17 = [NSString stringWithUTF8String:v16];
    if (([(__CFString *)v17 isEqualToString:@"PUT"]& 1) != 0 || ([(__CFString *)v17 isEqualToString:@"POST"]& 1) != 0)
    {
      goto LABEL_9;
    }
  }

  v17 = @"PUT";
LABEL_9:
  v18 = xpc_dictionary_get_string(v8, "sourcePath");
  if (v18)
  {
    v19 = [NSString stringWithUTF8String:v18];
  }

  else
  {
    v19 = 0;
  }

  uint64 = xpc_dictionary_get_uint64(v8, "sourceOffset");
  v48 = xpc_dictionary_get_uint64(v8, "sourceLength");
  v20 = xpc_dictionary_dup_fd(v8, "sourceFd");
  v52 = v19;
  if ((v20 & 0x80000000) != 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = [[NSFileHandle alloc] initWithFileDescriptor:v20 closeOnDealloc:1];
  }

  v22 = xpc_dictionary_get_value(v8, "headers");
  v23 = v22;
  if (v22 && xpc_get_type(v22) == &_xpc_type_dictionary)
  {
    +[NSMutableDictionary dictionary];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10000BF20;
    v63 = applier[3] = &unk_100034D88;
    v25 = v63;
    xpc_dictionary_apply(v23, applier);
    v24 = [v25 copy];
  }

  else
  {
    v24 = 0;
  }

  v51 = v24;
  v54 = v17;
  v26 = xpc_dictionary_get_value(v8, "importStrategies");
  v27 = v26;
  v28 = v21;
  v29 = v15;
  if (v26 && xpc_get_type(v26) == &_xpc_type_array)
  {
    v31 = malloc_type_calloc(4uLL, 1uLL, 0x100004077774924uLL);
    +[NSMutableArray array];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10000BFC8;
    v60 = v59[3] = &unk_100034DB0;
    v61 = v31;
    v32 = v12;
    v33 = v60;
    xpc_array_apply(v27, v59);
    free(v31);
    v30 = [v33 copy];

    v12 = v32;
  }

  else
  {
    v30 = 0;
  }

  v50 = v23;
  v34 = self;
  v53 = v12;
  v35 = [(AssetCacheLocatorService *)self doesConnection:v12 haveEntitlement:"com.apple.private.AssetCache.import"];
  if (v29 && v28)
  {
    v36 = v35;
    v37 = dispatch_get_global_queue(0, 0);
    LODWORD(v47) = v55;
    LOBYTE(v46) = v36;
    v38 = v56;
    v39 = v51;
    v40 = v52;
    v41 = v34;
    v42 = v29;
    v43 = v29;
    v44 = v54;
    [(AssetCacheLocatorService *)v41 importToCachingServerAsURL:v43 sourcePath:v52 sourceFileHandle:v28 sourceOffset:uint64 sourceLength:v48 method:v54 headers:v51 importStrategies:v30 entitled:v46 callback:v56 callbackQueue:v37 tag:v47];
  }

  else
  {
    v37 = createTaggedError(NSPOSIXErrorDomain, 22, @"missing or invalid arguments", v55);
    v38 = v56;
    (v56[2])(v56, 0, v37);
    v42 = v29;
    v44 = v54;
    v39 = v51;
    v40 = v52;
  }

  return 1;
}

- (BOOL)handleIntrospectEvent:(id)a3 forConnection:(id)a4 tag:(unsigned int)a5
{
  v8 = a4;
  v9 = a3;
  reply = xpc_dictionary_create_reply(v9);
  v11 = xpc_dictionary_get_BOOL(v9, "forceMiss");

  v12 = [(AssetCacheLocatorService *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000C194;
  v16[3] = &unk_100034E28;
  v19 = a5;
  v16[4] = self;
  v17 = v8;
  v18 = reply;
  v20 = v11;
  v13 = reply;
  v14 = v8;
  dispatch_async(v12, v16);

  return 1;
}

- (BOOL)doesConnection:(id)a3 haveEntitlement:(const char *)a4
{
  v4 = xpc_connection_copy_entitlement_value();
  v5 = v4;
  if (v4)
  {
    value = xpc_BOOL_get_value(v4);
  }

  else
  {
    value = 0;
  }

  return value;
}

- (id)makeSoftwareVersions
{
  v20 = +[NSMutableArray array];
  v2 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v3 = [v2 objectForKey:@"ProductName"];
  v4 = [v2 objectForKey:@"ProductVersion"];
  v5 = [v2 objectForKey:@"ProductBuildVersion"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v5)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23[0] = @"type";
              v23[1] = @"name";
              v24[0] = @"system";
              v24[1] = v3;
              v23[2] = @"version";
              v23[3] = @"build";
              v24[2] = v4;
              v24[3] = v5;
              v6 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
              [v20 addObject:v6];
            }
          }
        }
      }
    }
  }

  v18 = v4;
  v7 = v5;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 objectForInfoDictionaryKey:@"CFBundleIdentifier"];
  v10 = [v8 objectForInfoDictionaryKey:@"CFBundleName"];
  v11 = [v8 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  v12 = [v8 executablePath];
  v13 = [v12 componentsSeparatedByString:@"/"];
  v14 = [v13 lastObject];

  if (![(__CFString *)v14 length])
  {

    v14 = @"AssetCacheLocatorService";
  }

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v11)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21[0] = @"type";
              v21[1] = @"id";
              v22[0] = @"bundle";
              v22[1] = v9;
              v21[2] = @"name";
              v21[3] = @"version";
              v22[2] = v10;
              v22[3] = v11;
              v21[4] = @"executable";
              v22[4] = v14;
              v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:5];
              [v20 addObject:v15];
            }
          }
        }
      }
    }
  }

  v16 = [v20 copy];

  return v16;
}

- (void)watchForNetworkChanges
{
  v3 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1000204D0(v3);
  }

  context.version = 0;
  context.info = self;
  context.retain = &CFRetain;
  context.release = &_CFRelease;
  context.copyDescription = &CFCopyDescription;
  v4 = SCDynamicStoreCreate(0, @"com.apple.AssetCacheLocatorService.network-watcher", sub_100000F9C, &context);
  [(AssetCacheLocatorService *)self setStore:v4];

  if ([(AssetCacheLocatorService *)self store])
  {
    Mutable = CFArrayCreateMutable(0, 2, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = kSCEntNetIPv4;
      v8 = 1;
      v9 = kSCEntNetIPv4;
      do
      {
        v10 = v8;
        NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, v9);
        if (NetworkGlobalEntity)
        {
          v12 = NetworkGlobalEntity;
          CFArrayAppendValue(v6, NetworkGlobalEntity);
          CFRelease(v12);
        }

        v8 = 0;
        v9 = kSCEntNetIPv6;
      }

      while ((v10 & 1) != 0);
      v13 = CFArrayCreateMutable(0, 2, &kCFTypeArrayCallBacks);
      if (v13)
      {
        v14 = v13;
        v15 = 1;
        do
        {
          v16 = v15;
          NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, v7);
          if (NetworkInterfaceEntity)
          {
            v18 = NetworkInterfaceEntity;
            CFArrayAppendValue(v14, NetworkInterfaceEntity);
            CFRelease(v18);
          }

          v15 = 0;
          v7 = kSCEntNetIPv6;
        }

        while ((v16 & 1) != 0);
        if (SCDynamicStoreSetNotificationKeys([(AssetCacheLocatorService *)self store], v6, v14))
        {
          v19 = [(AssetCacheLocatorService *)self store];
          v20 = dispatch_get_global_queue(0, 0);
          LODWORD(v19) = SCDynamicStoreSetDispatchQueue(v19, v20);

          if (v19)
          {
            RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, [(AssetCacheLocatorService *)self store], 0);
            if (RunLoopSource)
            {
              v22 = RunLoopSource;
              Main = CFRunLoopGetMain();
              CFRunLoopAddSource(Main, v22, kCFRunLoopDefaultMode);
              CFRelease(v22);
            }
          }
        }

        CFRelease(v14);
      }

      CFRelease(v6);
    }
  }
}

- (id)safeString:(const char *)a3 length:(unint64_t)a4 forceHex:(BOOL)a5
{
  v5 = a5;
  for (i = +[NSMutableString string];
  {
    v10 = *a3++;
    v9 = v10;
    v11 = v10 - 127;
    if (v10 == 37 || v11 < 0xFFFFFFA1 || v5)
    {
      v14 = @"%%%02x";
    }

    else
    {
      v14 = @"%c";
    }

    [i appendFormat:v14, v9];
  }

  return i;
}

- (id)makeRangesFromDNSRecordNamed:(id)a3 withType:(int)a4 data:(const char *)a5 length:(unint64_t)a6 more:(BOOL *)a7 error:(id *)a8 tag:(unsigned int)a9
{
  v73 = a3;
  if ((a4 | 2) != 2)
  {
    v37 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v59 = v37;
      v60 = currentQueueName();
      v61 = [(AssetCacheLocatorService *)self safeString:a5 length:a6 forceHex:1];
      *buf = 67110403;
      *&buf[4] = a9;
      *&buf[8] = 2080;
      *&buf[10] = v60;
      *&buf[18] = 2112;
      *&buf[20] = v73;
      *&buf[28] = 1024;
      *&buf[30] = a4;
      *&buf[34] = 2048;
      *&buf[36] = a6;
      *&buf[44] = 2113;
      v91 = v61;
      _os_log_debug_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "#%08x [%s] makeRangesFromDNSRecordNamed:%@ withType:%d data:[%ld]%{private}@", buf, 0x36u);

      if (a6)
      {
        goto LABEL_52;
      }
    }

    else if (a6)
    {
LABEL_52:
      v71 = a8;
      v38 = 0;
      if (a4 == 1)
      {
        v39 = "prn=";
      }

      else
      {
        v39 = "fsn=";
      }

      v40 = a5;
      while (1)
      {
        v41 = *v40;
        v42 = a6 - 5;
        if (a6 >= 5 && v41 == 20)
        {
          *buf = 0;
          *buf = *(v40 + 1);
          if ([ACLSNetworkUtilities isUsefulInaddr4:buf])
          {
            v43 = [ACLSNetworkUtilities stringFromInaddr4:buf];
            v44 = [ACLSNetworkUtilities stringFromInaddr4:buf];
            v40 += 5;
LABEL_64:
            a6 = v42;
            if (v43 && v44)
            {
              if (!v38)
              {
                v38 = +[NSMutableArray array];
              }

              v80[0] = @"first";
              v80[1] = @"last";
              v81[0] = v43;
              v81[1] = v44;
              v80[2] = @"source";
              v81[2] = @"dns";
              v52 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:3];
              [v38 addObject:v52];

              goto LABEL_96;
            }

            goto LABEL_93;
          }
        }

        else
        {
          v42 = a6 - 17;
          if (a6 >= 0x11 && v41 == 22)
          {
            *buf = 0;
            *&buf[8] = 0;
            *buf = *(v40 + 1);
            if ([ACLSNetworkUtilities isUsefulInaddr6:buf])
            {
              v43 = [ACLSNetworkUtilities stringFromInaddr6:buf];
              v44 = [ACLSNetworkUtilities stringFromInaddr6:buf];
              v40 += 17;
              goto LABEL_64;
            }
          }

          else
          {
            v42 = a6 - 9;
            if (a6 >= 9 && v41 == 36)
            {
              *buf = 0;
              *v84 = 0;
              *buf = *(v40 + 1);
              *v84 = *(v40 + 5);
              if ([ACLSNetworkUtilities isUsefulInaddr4:buf]&& [ACLSNetworkUtilities isUsefulInaddr4:v84])
              {
                v45 = bswap32(*buf);
                v46 = bswap32(*v84);
                v22 = v45 >= v46;
                v47 = v45 > v46;
                v48 = !v22;
                if (v47 - v48 <= 0)
                {
                  v43 = [ACLSNetworkUtilities stringFromInaddr4:buf];
                  v44 = [ACLSNetworkUtilities stringFromInaddr4:v84];
                  v40 += 9;
                  goto LABEL_64;
                }
              }
            }

            else
            {
              v42 = a6 - 33;
              if (a6 < 0x21 || v41 != 38)
              {
                v44 = 0;
                v72 = v38;
                if (v41 == 43)
                {
                  v36 = 1;
                  v17 = 0;
                  v43 = 0;
                  goto LABEL_110;
                }

                v43 = 0;
                goto LABEL_94;
              }

              *buf = 0;
              *&buf[8] = 0;
              memset(v84, 0, sizeof(v84));
              *buf = *(v40 + 1);
              *v84 = *(v40 + 17);
              if ([ACLSNetworkUtilities isUsefulInaddr6:buf]&& [ACLSNetworkUtilities isUsefulInaddr6:v84])
              {
                v49 = bswap64(*buf);
                v50 = bswap64(*v84);
                if (v49 == v50 && (v49 = bswap64(*&buf[8]), v50 = bswap64(*&v84[8]), v49 == v50))
                {
                  v51 = 0;
                }

                else
                {
                  v51 = v49 < v50 ? -1 : 1;
                }

                if (v51 <= 0)
                {
                  v43 = [ACLSNetworkUtilities stringFromInaddr6:buf];
                  v44 = [ACLSNetworkUtilities stringFromInaddr6:v84];
                  v40 += 33;
                  goto LABEL_64;
                }
              }
            }
          }
        }

        v43 = 0;
        v44 = 0;
LABEL_93:
        v72 = v38;
LABEL_94:
        v53 = [NSString stringWithFormat:@"invalid range in %@ %s at index %ld", v73, v39, v40 - a5];
        v17 = createTaggedError(NSPOSIXErrorDomain, 22, v53, a9);

        if (v17)
        {
          v36 = 0;
LABEL_110:

          goto LABEL_101;
        }

        v38 = v72;
LABEL_96:

        if (!a6)
        {
          v72 = v38;
          v36 = 0;
          v17 = 0;
          goto LABEL_113;
        }
      }
    }

    v72 = 0;
    v36 = 0;
    v17 = 0;
    goto LABEL_113;
  }

  v71 = a8;
  v14 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v56 = v14;
    v57 = currentQueueName();
    v58 = [(AssetCacheLocatorService *)self safeString:a5 length:a6 forceHex:0];
    *buf = 67110403;
    *&buf[4] = a9;
    *&buf[8] = 2080;
    *&buf[10] = v57;
    *&buf[18] = 2112;
    *&buf[20] = v73;
    *&buf[28] = 1024;
    *&buf[30] = a4;
    *&buf[34] = 2048;
    *&buf[36] = a6;
    *&buf[44] = 2113;
    v91 = v58;
    _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "#%08x [%s] makeRangesFromDNSRecordNamed:%@ withType:%d data:[%ld]%{private}@", buf, 0x36u);
  }

  __stringp = malloc_type_malloc(a6 + 1, 0x619370CEuLL);
  v69 = __stringp;
  memcpy(__stringp, a5, a6);
  v72 = 0;
  __stringp[a6] = 0;
  if (a4)
  {
    v15 = "fss=";
  }

  else
  {
    v15 = "prs=";
  }

  while (1)
  {
    v16 = strsep(&__stringp, ",");
    v17 = v16;
    if (!v16)
    {
LABEL_49:
      v36 = 0;
      goto LABEL_100;
    }

    if (!strcasecmp(v16, "more"))
    {
      break;
    }

    v18 = strchr(v17, 45);
    v19 = v17;
    if (v18)
    {
      *v18 = 0;
      v19 = v18 + 1;
    }

    if (!*v17 || !*v19)
    {
LABEL_32:
      v28 = 0;
      v29 = 0;
LABEL_33:
      if (v19 != v17)
      {
        *(v19 - 1) = 45;
      }

      v30 = [(AssetCacheLocatorService *)self safeString:v17 length:strlen(v17) forceHex:0];
      v31 = [NSString stringWithFormat:@"invalid range in %@ %s: %@", v73, v15, v30];
      v17 = createTaggedError(NSPOSIXErrorDomain, 22, v31, a9);

      goto LABEL_36;
    }

    v77 = 0;
    v78 = 0;
    *v88 = 0;
    v89 = 0;
    *v86 = 0;
    v87 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    memset(buf, 0, sizeof(buf));
    *v84 = 0u;
    memset(v85, 0, sizeof(v85));
    if (inet_pton(2, v17, &v78 + 4) == 1 && inet_pton(2, v19, &v78) == 1 && [ACLSNetworkUtilities isUsefulInaddr4:&v78 + 4]&& [ACLSNetworkUtilities isUsefulInaddr4:&v78]&& ((v20 = bswap32(HIDWORD(v78)), v21 = bswap32(v78), v22 = v20 >= v21, v23 = v20 > v21, v22) ? (v24 = 0) : (v24 = 1), v23 - v24 <= 0 && inet_ntop(2, &v78 + 4, v88, 0x10u) && (v32 = v86, inet_ntop(2, &v78, v86, 0x10u))))
    {
      v33 = v88;
    }

    else
    {
      if (inet_pton(30, v17, &v76) != 1 || inet_pton(30, v19, &v74) != 1 || ![ACLSNetworkUtilities isUsefulInaddr6:&v76]|| ![ACLSNetworkUtilities isUsefulInaddr6:&v74])
      {
        goto LABEL_32;
      }

      v25 = bswap64(v76);
      v26 = bswap64(v74);
      if (v25 == v26 && (v25 = bswap64(v77), v26 = bswap64(v75), v25 == v26))
      {
        v27 = 0;
      }

      else
      {
        v27 = v25 < v26 ? -1 : 1;
      }

      if (v27 > 0)
      {
        goto LABEL_32;
      }

      if (!inet_ntop(30, &v76, buf, 0x2Eu))
      {
        goto LABEL_32;
      }

      v32 = v84;
      if (!inet_ntop(30, &v74, v84, 0x2Eu))
      {
        goto LABEL_32;
      }

      v33 = buf;
    }

    v28 = [NSString stringWithUTF8String:v33];
    v34 = [NSString stringWithUTF8String:v32];
    v29 = v34;
    if (!v28 || !v34)
    {
      goto LABEL_33;
    }

    v35 = v72;
    if (!v72)
    {
      v35 = +[NSMutableArray array];
    }

    v82[0] = @"first";
    v82[1] = @"last";
    v83[0] = v28;
    v83[1] = v29;
    v82[2] = @"source";
    v83[2] = @"dns";
    v30 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:3];
    v72 = v35;
    [v35 addObject:v30];
    v17 = 0;
LABEL_36:

    if (v17)
    {
      goto LABEL_49;
    }
  }

  v17 = 0;
  v36 = 1;
LABEL_100:
  free(v69);
LABEL_101:
  a8 = v71;
  if (v17)
  {
    if (v71)
    {
      v54 = v17;
      *v71 = v17;
    }

    v72 = 0;
  }

  v55 = v36 ^ 1;
  if (!a7)
  {
    v55 = 1;
  }

  if ((v55 & 1) == 0)
  {
    *a7 = 1;
  }

LABEL_113:
  v62 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v65 = v62;
    v66 = currentQueueName();
    v67 = [v72 count];
    if (a8)
    {
      v68 = *a8;
    }

    else
    {
      v68 = 0;
    }

    *buf = 67110403;
    *&buf[4] = a9;
    *&buf[8] = 2080;
    *&buf[10] = v66;
    *&buf[18] = 2048;
    *&buf[20] = v67;
    *&buf[28] = 2113;
    *&buf[30] = v72;
    *&buf[38] = 1024;
    *&buf[40] = v36;
    *&buf[44] = 2112;
    v91 = v68;
    _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "#%08x [%s] makeRangesFromDNSRecordWithType -> [%ld]%{private}@, more %{BOOL}d, error %@", buf, 0x36u);
  }

  v63 = [v72 copy];

  return v63;
}

- (void)resolveDNSRecordNamed:(id)a3 withTimeout:(double)a4 errorIfNotFound:(BOOL)a5 callback:(id)a6 callbackQueue:(id)a7 tag:(unsigned int)a8
{
  v11 = a5;
  v14 = a3;
  v15 = a6;
  v114 = a7;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100020564();
  }

  v112 = a8;
  v110 = self;
  if ((-[AssetCacheLocatorService testFlags](self, "testFlags") & 2) != 0 && (-[AssetCacheLocatorService diskCache](self, "diskCache"), v16 = objc_claimAutoreleasedReturnValue(), [v16 objectForKey:@"simulatedDNSResponses"], v17 = objc_claimAutoreleasedReturnValue(), v16, v17))
  {
    v107 = v11;
    v18 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
    {
      v19 = v18;
      *buf.name = 67109890;
      *&buf.name[4] = a8;
      *&buf.name[8] = 2080;
      *&buf.name[10] = currentQueueName();
      *&buf.name[18] = 2112;
      *&buf.name[20] = @"simulatedDNSResponses";
      *&buf.name[28] = 2112;
      *&buf.name[30] = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "#%08x [%s] using %@ for %@", &buf, 0x26u);
    }

    v20 = [v17 objectForKey:v14];
    v21 = [v20 objectForKeyedSubscript:@"resolv"];
    if (!v21)
    {
      v46 = [v20 objectForKey:@"delay"];
      [v46 doubleValue];
      v48 = v47;

      v49 = [v20 objectForKey:@"error"];
      v50 = v17;
      v51 = [v49 BOOLValue];

      v52 = [v20 objectForKey:@"response"];
      if (v48 < a4)
      {
        v53 = v48;
      }

      else
      {
        v53 = a4;
      }

      v54 = dispatch_time(0, (v53 * 1000000000.0));
      v55 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000EAFC;
      block[3] = &unk_100034E78;
      v132 = v48 >= a4;
      v131 = v112;
      v133 = v51;
      v17 = v50;
      v126 = v52;
      v127 = self;
      v128 = v14;
      v27 = v114;
      v129 = v114;
      v130 = v15;
      v56 = v15;
      v57 = v52;
      dispatch_after(v54, v55, block);

      v113 = 0;
      v25 = 0;
      v29 = 0;
      v58 = 0;
      goto LABEL_102;
    }

    v22 = v21;
    v23 = [v21 objectForKeyedSubscript:@"initResult"];
    v24 = [v22 objectForKeyedSubscript:@"initialSize"];
    v25 = [v22 objectForKeyedSubscript:@"hErrno"];
    v26 = [v22 objectForKeyedSubscript:@"answer"];

    v124 = 0;
    bzero(&res, 0x228uLL);
    v27 = v114;
    if (v23)
    {
      v28 = [v23 intValue];
      v11 = v107;
      goto LABEL_12;
    }

    v11 = v107;
  }

  else
  {
    v124 = 0;
    bzero(&res, 0x228uLL);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v17 = 0;
    v27 = v114;
  }

  v28 = res_9_ninit(&res);
  v23 = 0;
LABEL_12:
  v111 = v23;
  v113 = v26;
  if (v28)
  {
    v29 = v24;
    v30 = [NSString stringWithFormat:@"%@: res_ninit() failed", v14];
    v31 = createTaggedError(NSPOSIXErrorDomain, 12, v30, v112);

    v32 = 0;
    v33 = 0;
    v34 = 0.0;
    goto LABEL_101;
  }

  v35 = a4;
  if (a4 <= 1)
  {
    v35 = 1;
  }

  res.retrans = v35;
  res.retry = 1;
  if (v24)
  {
    v36 = [v24 intValue];
  }

  else
  {
    v36 = 0x10000;
  }

  v108 = v11;
  v106 = v17;
  if (v36 < 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v39 = -2;
    do
    {
      v40 = malloc_type_realloc(v38, v36, 0x624F6C21uLL);
      if (!v40)
      {
        break;
      }

      v38 = v40;
      bzero(v40, v36);
      if (v25)
      {
        _res_9_h_errno_set(&res, [v25 intValue]);
        v37 = 0xFFFFFFFFLL;
      }

      else if (v26)
      {
        v37 = [v26 length];
        if (v36 >= v37)
        {
          memcpy(v38, [v26 bytes], v37);
        }
      }

      else
      {
        v37 = acls_nsearch_notld(&res, [v14 UTF8String], 1, 16, v38, v36);
      }

      if (v37 <= v36)
      {
        goto LABEL_34;
      }

      v36 = (v37 + 1);
      if (__CFADD__(v39++, 1))
      {
        goto LABEL_34;
      }
    }

    while ((v37 & 0x80000000) == 0);
  }

  v38 = 0;
  *__error() = 12;
LABEL_34:
  v42 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v75 = v42;
    v76 = currentQueueName();
    v77 = *__error();
    *buf.name = 67110658;
    *&buf.name[4] = v112;
    *&buf.name[8] = 2080;
    *&buf.name[10] = v76;
    *&buf.name[18] = 2112;
    *&buf.name[20] = v14;
    *&buf.name[28] = 1024;
    *&buf.name[30] = v37;
    *&buf.name[34] = 1024;
    *&buf.name[36] = v36;
    *&buf.name[40] = 1024;
    *&buf.name[42] = v77;
    *&buf.name[46] = 1024;
    *&buf.name[48] = res.res_h_errno;
    _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "#%08x [%s] resolveDNSRecordNamed:%@ res_nsearch -> %d/%d, errno %{darwin.errno}d, h_errno %d", &buf, 0x34u);

    if (v38)
    {
      goto LABEL_36;
    }

LABEL_82:
    v29 = v24;
    v78 = [NSString stringWithFormat:@"%@: out of memory for %d byte DNS buffer", v14, v36];
    v31 = createTaggedError(NSPOSIXErrorDomain, 12, v78, v112);

    v33 = 0;
    v32 = 0;
    v34 = 0.0;
    v17 = v106;
    goto LABEL_100;
  }

  if (!v38)
  {
    goto LABEL_82;
  }

LABEL_36:
  if (v37 < 1)
  {
    v34 = 0.0;
    v29 = v24;
    if ((v37 & 0x80000000) != 0)
    {
      if (res.res_h_errno <= 4u && ((1 << SLOBYTE(res.res_h_errno)) & 0x16) != 0 && !v108)
      {
        v33 = 0;
        v32 = 0;
        v31 = 0;
        v34 = 86400.0;
      }

      else
      {
        v74 = [NSString stringWithFormat:@"%@: DNS error %d: %s", v14, res.res_h_errno, hstrerror(res.res_h_errno)];
        v31 = createTaggedError(NSURLErrorDomain, -1003, v74, v112);

        v33 = 0;
        v32 = 0;
      }
    }

    else
    {
      v33 = 0;
      v32 = 0;
      v31 = 0;
    }

    goto LABEL_98;
  }

  memset(&v123, 0, sizeof(v123));
  if (res_9_ns_initparse(v38, v37, &v123))
  {
    v29 = v24;
    v43 = *__error();
    v44 = __error();
    v45 = [NSString stringWithFormat:@"%@: cannot parse DNS response: %s", v14, strerror(*v44)];
    v31 = createTaggedError(NSPOSIXErrorDomain, v43, v45, v112);

    v33 = 0;
    v32 = 0;
    v34 = 0.0;
LABEL_98:
    v17 = v106;
    goto LABEL_99;
  }

  v94 = v15;
  v59 = v123._counts[1];
  v34 = 0.0;
  v101 = v123._counts[1];
  if (!v123._counts[1])
  {
    v29 = v24;
    v62 = 0;
    v61 = 0;
    v102 = 0;
    v109 = 0;
    v98 = 0;
LABEL_84:
    v31 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_85;
  }

  v60 = 0;
  v109 = 0;
  v102 = 0;
  v61 = 0;
  v62 = 0;
  v98 = 0;
  v99 = &v38[v37];
  v100 = v14;
  while (1)
  {
    bzero(&buf, 0x418uLL);
    if (!res_9_ns_parserr(&v123, ns_s_an, v60, &buf))
    {
      break;
    }

    v62 = (v62 + 1);
LABEL_75:
    if (v59 == ++v60)
    {
      v29 = v24;
      goto LABEL_84;
    }
  }

  if (buf.rr_class != 1 || buf.type != 16)
  {
    v61 = (v61 + 1);
    goto LABEL_75;
  }

  if (!buf.rdlength)
  {
    v102 = (v102 + 1);
    goto LABEL_75;
  }

  v103 = v61;
  ttl = buf.ttl;
  rdata = buf.rdata;
  v65 = buf.rdata + 1;
  v64 = *buf.rdata;
  rdlength = buf.rdlength;
  log = buf.rdlength - 1;
  v66 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v71 = v66;
    v72 = currentQueueName();
    *v134 = 67111170;
    v135 = v112;
    v136 = 2080;
    v137 = v72;
    v138 = 2112;
    v139 = v100;
    v140 = 1024;
    v141 = v60 + 1;
    v142 = 1024;
    v143 = v101;
    v144 = 1024;
    *v145 = v64;
    *&v145[4] = 1024;
    *&v145[6] = log;
    v146 = 1024;
    v147 = 4;
    v148 = 1024;
    v149 = v99 - v65;
    _os_log_debug_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "#%08x [%s] resolveDNSRecordNamed:%@ %d/%d: s=%d d=%d l=%d e=%d", v134, 0x40u);
  }

  if (v64 > log || &v65[v64] > v99 || v64 <= 4)
  {
    v109 = (v109 + 1);
LABEL_74:
    v14 = v100;
    v59 = v101;
    v61 = v103;
    goto LABEL_75;
  }

  v69 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    loga = v69;
    v93 = currentQueueName();
    v73 = [(AssetCacheLocatorService *)v110 safeString:v65 length:4 forceHex:0];
    *v134 = 67110402;
    v135 = v112;
    v136 = 2080;
    v137 = v93;
    v138 = 2112;
    v139 = v100;
    v140 = 1024;
    v141 = v60 + 1;
    v142 = 1024;
    v143 = v101;
    v144 = 2112;
    *v145 = v73;
    _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "#%08x [%s] resolveDNSRecordNamed:%@ %d/%d: type=%@", v134, 0x32u);
  }

  v70 = *v65 != 1030976112;
  switch(*v65)
  {
    case 0x3D737270:
      v29 = v24;
      v87 = 0;
      v88 = 0;
      goto LABEL_107;
    case 0x3D6E7270:
      v29 = v24;
      v87 = 1;
      v88 = 1;
      goto LABEL_107;
    case 0x3D737366:
      v29 = v24;
      v87 = 0;
      v88 = 2;
      goto LABEL_107;
  }

  if (*v65 != 1030648678)
  {
    v98 = (v98 + 1);
    goto LABEL_74;
  }

  v29 = v24;
  v87 = 0;
  v88 = 3;
LABEL_107:
  v122 = 0;
  LODWORD(v92) = v112;
  v33 = [(AssetCacheLocatorService *)v110 makeRangesFromDNSRecordNamed:v100 withType:v88 data:rdata + 5 length:(rdlength - 5) more:&v124 error:&v122 tag:v92];
  v31 = v122;
  if (v70)
  {
    v89 = v87;
  }

  else
  {
    v89 = 1;
  }

  v14 = v100;
  v90 = v89 == 0;
  v91 = v33;
  if (v90)
  {
    v32 = v33;
  }

  else
  {
    v32 = 0;
  }

  if (v90)
  {
    v33 = 0;
  }

  if (v91)
  {
    v34 = ttl;
  }

  else
  {
    v34 = 0.0;
  }

  v61 = v103;
LABEL_85:
  if (!(v33 | v32))
  {
    v32 = 0;
    if ((v124 & 1) == 0 && !v31)
    {
      [NSString stringWithFormat:@"unable to parse DNS TXT record %@ (a=%d, n=%d, c=%d, i=%d, e=%d, b=%d, u=%d)", v14, v37, v101, v62, v61, v102, v109, v98];
      v80 = v79 = v61;
      v31 = createTaggedError(NSPOSIXErrorDomain, 22, v80, v112);

      v32 = 0;
      if (!v62 && !v79 && !v102 && !v109 && v98)
      {
        v81 = gLogHandle;
        if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
        {
          v82 = v81;
          v83 = currentQueueName();
          *buf.name = 67109634;
          *&buf.name[4] = v112;
          *&buf.name[8] = 2080;
          *&buf.name[10] = v83;
          *&buf.name[18] = 2112;
          *&buf.name[20] = v31;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "#%08x [%s] ignoring DNS error: %@", &buf, 0x1Cu);
        }

        v31 = 0;
        v32 = 0;
      }
    }
  }

  v17 = v106;
  v15 = v94;
LABEL_99:
  free(v38);
LABEL_100:
  res_9_ndestroy(&res);
  v27 = v114;
LABEL_101:
  v115[0] = _NSConcreteStackBlock;
  v115[1] = 3221225472;
  v115[2] = sub_10000EF58;
  v115[3] = &unk_100034EA0;
  v116 = v31;
  v117 = v33;
  v118 = v32;
  v119 = v15;
  v120 = v34;
  v121 = v124;
  v84 = v15;
  v85 = v32;
  v20 = v33;
  v86 = v31;
  dispatch_async(v27, v115);

  v58 = v111;
LABEL_102:
}

- (void)resolveDNSRecordsWithTimeout:(double)a3 callback:(id)a4 callbackQueue:(id)a5 tag:(unsigned int)a6
{
  v68 = a4;
  queue = a5;
  v9 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v65 = v9;
    v66 = currentQueueName();
    v67 = objc_retainBlock(v68);
    *buf = 67110146;
    v103 = a6;
    v104 = 2080;
    v105 = v66;
    v106 = 2048;
    v107 = a3;
    v108 = 2048;
    v109 = v67;
    v110 = 2080;
    label = dispatch_queue_get_label(queue);
    _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "#%08x [%s] resolveDNSRecordsWithTimeout:%.3f callback:%p callbackQueue:%s", buf, 0x30u);
  }

  v70 = [NSDate dateWithTimeIntervalSinceNow:a3];
  v10 = dispatch_group_create();
  v74 = +[NSMutableArray array];
  v73 = +[NSMutableArray array];
  v77 = 0.0;
  v98 = 0;
  v99 = &v98;
  v11 = &stru_100035770;
  v100 = 0x2020000000;
  v101 = 0;
  do
  {
    v12 = +[NSMutableDictionary dictionary];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v79 = dispatch_queue_create("AssetCacheLocatorService.resolve.resultsQueue", v13);

    v14 = +[NSMutableArray array];
    [(AssetCacheLocatorService *)self dnsResolutionTimeout];
    v15 = a3;
    if (a3 > v16)
    {
      [(AssetCacheLocatorService *)self dnsResolutionTimeout];
      v15 = v17;
    }

    v18 = -1;
    do
    {
      if (++v18 >= [(AssetCacheLocatorService *)self concurrentDNSResolutions])
      {
        break;
      }

      v19 = [NSString stringWithFormat:@"_aaplcache%@._tcp", v11];
      dispatch_group_enter(v10);
      v20 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000FA98;
      block[3] = &unk_100034EF0;
      block[4] = self;
      v21 = v19;
      v91 = v21;
      v96 = v15;
      v22 = v11;
      v92 = v22;
      v97 = a6;
      v93 = v12;
      v94 = v10;
      v95 = v79;
      dispatch_async(v20, block);

      [v14 addObject:v21];
      v11 = [NSNumber numberWithInt:[(__CFString *)v22 intValue]+ 1];

      v23 = [(__CFString *)v11 intValue]< 25;
    }

    while (v23);
    if ([v14 count] == 1)
    {
      v71 = [v14 objectAtIndex:0];
    }

    else
    {
      v24 = [v14 objectAtIndex:0];
      v25 = [v14 objectAtIndex:{objc_msgSend(v14, "count") - 1}];
      v71 = [NSString stringWithFormat:@"%@ through %@", v24, v25];
    }

    v26 = gLogHandle;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v49 = currentQueueName();
      *buf = 67109890;
      v103 = a6;
      v104 = 2080;
      v105 = v49;
      v106 = 2048;
      v107 = v15;
      v108 = 2112;
      v109 = v71;
      _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "#%08x [%s] waiting up to %.3f sec for concurrent DNS resolution of %@", buf, 0x26u);
    }

    v27 = dispatch_time(0, (v15 * 1000000000.0));
    if (dispatch_group_wait(v10, v27))
    {
      v28 = [NSString stringWithFormat:@"timed out waiting for concurrent DNS resolution of %@", v71];
      createTaggedError(NSPOSIXErrorDomain, 60, v28, a6);
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

LABEL_16:
      v30 = 0;
      v77 = *&v29;
      goto LABEL_17;
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = v14;
    v31 = [obj countByEnumeratingWithState:&v86 objects:v116 count:16];
    if (v31)
    {
      v76 = *v87;
      v32 = v77;
      while (2)
      {
        v75 = v31;
        for (i = 0; i != v75; i = i + 1)
        {
          if (*v87 != v76)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v86 + 1) + 8 * i);
          v35 = [v12 objectForKey:*&v34];
          v36 = gLogHandle;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v46 = currentQueueName();
            *buf = 67109891;
            v103 = a6;
            v104 = 2080;
            v105 = v46;
            v106 = 2112;
            v107 = v34;
            v108 = 2113;
            v109 = v35;
            _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "#%08x [%s] resolveDNSRecords: %@: result=%{private}@", buf, 0x26u);
          }

          [v35 objectForKey:@"error"];
          v77 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          v37 = *&v77 == 0;
          if (v77 != 0.0)
          {
            goto LABEL_34;
          }

          v38 = [v35 objectForKey:@"publicAddressRanges"];
          [v74 addObjectsFromArray:v38];

          v39 = [v35 objectForKey:@"favoredServerRanges"];
          [v73 addObjectsFromArray:v39];

          v40 = [v35 objectForKey:@"validityInterval"];
          [v40 doubleValue];
          v42 = v41;

          v43 = v99[3];
          if (v43 == 0.0 || v42 < v43)
          {
            v99[3] = v42;
          }

          v44 = [v35 objectForKey:@"more"];
          v45 = [v44 BOOLValue];

          if ((v45 & 1) == 0)
          {
LABEL_34:

            goto LABEL_36;
          }

          v32 = 0.0;
        }

        v31 = [obj countByEnumeratingWithState:&v86 objects:v116 count:16];
        v32 = 0.0;
        v37 = 0;
        v77 = 0.0;
        if (v31)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v37 = 0;
    }

LABEL_36:

    v47 = v77 != 0.0 || v37;
    if (v47)
    {
      v30 = 0;
    }

    else
    {
      if ([(__CFString *)v11 intValue]>= 25)
      {
        v28 = [NSString stringWithFormat:@"too many chained DNS records, max %d", 25];
        createTaggedError(NSPOSIXErrorDomain, 62, v28, a6);
        *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        goto LABEL_16;
      }

      [v70 timeIntervalSinceNow];
      a3 = v48;
      if (v48 <= 0.0)
      {
        v28 = [NSString stringWithFormat:@"_aaplcache%@._tcp", v11];
        v50 = [NSString stringWithFormat:@"timed out before getting to DNS resolution of %@", v28];
        createTaggedError(NSPOSIXErrorDomain, 60, v50, a6);
        *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

        goto LABEL_16;
      }

      v77 = 0.0;
      v30 = 1;
    }

LABEL_17:
  }

  while ((v30 & 1) != 0);
  v51 = gLogHandle;
  v52 = os_log_type_enabled(v51, OS_LOG_TYPE_INFO);
  if (v77 == 0.0)
  {
    if (v52)
    {
      v57 = currentQueueName();
      v58 = COERCE_DOUBLE([v74 count]);
      v59 = [v73 count];
      v60 = *(v99 + 3);
      *buf = 67110659;
      v103 = a6;
      v104 = 2080;
      v105 = v57;
      v106 = 2048;
      v107 = v58;
      v108 = 2113;
      v109 = v74;
      v110 = 2048;
      label = v59;
      v112 = 2112;
      v113 = v73;
      v114 = 2048;
      v115 = v60;
      v54 = "#%08x [%s] resolveDNSRecords -> public addresses: [%ld]%{private}@, favored servers: [%ld]%@, validityInterval %.f";
      v55 = v51;
      v56 = 68;
LABEL_51:
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, v54, buf, v56);
    }
  }

  else if (v52)
  {
    v53 = currentQueueName();
    *buf = 67109634;
    v103 = a6;
    v104 = 2080;
    v105 = v53;
    v106 = 2112;
    v107 = v77;
    v54 = "#%08x [%s] resolveDNSRecords -> %@";
    v55 = v51;
    v56 = 28;
    goto LABEL_51;
  }

  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_10000FE60;
  v80[3] = &unk_100034F18;
  v81 = v77;
  v82 = v74;
  v83 = v73;
  v84 = v68;
  v85 = &v98;
  v61 = v73;
  v62 = v74;
  v63 = v68;
  v64 = *&v77;
  dispatch_async(queue, v80);

  _Block_object_dispose(&v98, 8);
}

- (id)sanitizeRanges:(id)a3 fromSource:(id)a4 tag:(unsigned int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v36 = v9;
    *buf = 67110147;
    *&buf[4] = a5;
    *&buf[8] = 2080;
    *&buf[10] = currentQueueName();
    *&buf[18] = 2048;
    *&buf[20] = [v7 count];
    *&buf[28] = 2113;
    *&buf[30] = v7;
    *&buf[38] = 2112;
    *&buf[40] = v8;
    _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "#%08x [%s] sanitizeRanges:[%ld]%{private}@ fromSource:%@", buf, 0x30u);
  }

  v10 = +[NSMutableArray array];
  v11 = [v7 count];
  if (!v11)
  {
    goto LABEL_45;
  }

  v12 = v11;
  v38 = v8;
  v37 = a5;
  v13 = 0;
  while (1)
  {
    v14 = [v7 objectAtIndex:v13];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v15 = [v14 objectForKey:@"first"];
    v16 = [v14 objectForKey:@"last"];
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v15 length] || !v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !objc_msgSend(v16, "length"))
    {

      break;
    }

    v42 = 0;
    v43 = 0;
    *v48 = 0;
    v49 = 0;
    *v46 = 0;
    v47 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    memset(buf, 0, 46);
    *v44 = 0u;
    memset(v45, 0, sizeof(v45));
    if (inet_pton(2, [v15 UTF8String], &v43 + 4) == 1 && inet_pton(2, objc_msgSend(v16, "UTF8String"), &v43) == 1 && ((v17 = bswap32(HIDWORD(v43)), v18 = bswap32(v43), v19 = v17 >= v18, v20 = v17 > v18, v19) ? (v21 = 0) : (v21 = 1), v20 - v21 <= 0 && inet_ntop(2, &v43 + 4, v48, 0x10u) && (v28 = v46, inet_ntop(2, &v43, v46, 0x10u))))
    {
      v29 = v48;
    }

    else
    {
      if (inet_pton(30, [v15 UTF8String], &v41) != 1 || inet_pton(30, objc_msgSend(v16, "UTF8String"), &v39) != 1 || ((v22 = bswap64(v41), v23 = bswap64(v39), v22 != v23) || (v22 = bswap64(v42), v23 = bswap64(v40), v22 != v23) ? (v22 < v23 ? (v24 = -1) : (v24 = 1)) : (v24 = 0), v24 > 0 || !inet_ntop(30, &v41, buf, 0x2Eu) || (v28 = v44, !inet_ntop(30, &v39, v44, 0x2Eu))))
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        goto LABEL_28;
      }

      v29 = buf;
    }

    v25 = [NSString stringWithUTF8String:v29];
    v30 = [NSString stringWithUTF8String:v28];
    v26 = v30;
    v27 = 0;
    if (v25 && v30)
    {
      v31 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v25, @"first", v30, @"last", v38, @"source", 0];
      [v10 addObject:v31];

      v27 = 1;
    }

LABEL_28:

    if (!v27)
    {
      goto LABEL_42;
    }

    if (v12 == ++v13)
    {
      v8 = v38;
      goto LABEL_45;
    }
  }

LABEL_42:
  v32 = gLogHandle;
  v8 = v38;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v33 = v32;
    v34 = currentQueueName();
    *buf = 67110146;
    *&buf[4] = v37;
    *&buf[8] = 2080;
    *&buf[10] = v34;
    *&buf[18] = 2048;
    *&buf[20] = v13 + 1;
    *&buf[28] = 2048;
    *&buf[30] = v12;
    *&buf[38] = 2112;
    *&buf[40] = v38;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#%08x [%s] sanitizeRanges: bad entry %lu/%lu in %@", buf, 0x30u);
  }

  v10 = 0;
LABEL_45:
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100020600();
  }

  return v10;
}

- (id)makeBootTimeWithTag:(unsigned int)a3
{
  v3 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1000206B8(v3);
  }

  *v8 = 0x1500000001;
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  v6 = 16;
  if (sysctl(v8, 2u, &v7, &v6, 0, 0) == -1)
  {
    gettimeofday(&v7, 0);
  }

  v4 = [NSDate dateWithTimeIntervalSince1970:v7.tv_usec / 1000000.0 + v7.tv_sec];
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100020744();
  }

  return v4;
}

- (BOOL)transferVolatileStateFromDiskCache:(id)a3 toDiskCache:(id)a4 tag:(unsigned int)a5
{
  v6 = a3;
  v7 = a4;
  v8 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100020948(v8);
  }

  v51 = [v6 objectForKeyedSubscript:@"cache"];
  [v7 objectForKeyedSubscript:@"cache"];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v76 = 0u;
  v52 = [obj countByEnumeratingWithState:&v73 objects:v94 count:16];
  if (v52)
  {
    v57 = 0;
    v50 = *v74;
    v9 = @"localAddressAndPort";
    v46 = v6;
    v48 = v7;
    while (1)
    {
      for (i = 0; i != v52; i = i + 1)
      {
        if (*v74 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v73 + 1) + 8 * i);
        v56 = [v11 objectForKeyedSubscript:{@"networkIdentifiers", v46}];
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v12 = v51;
        v13 = [v12 countByEnumeratingWithState:&v69 objects:v93 count:16];
        if (!v13)
        {
          goto LABEL_44;
        }

        v14 = v13;
        v53 = i;
        v15 = *v70;
LABEL_10:
        v16 = 0;
        while (1)
        {
          if (*v70 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v69 + 1) + 8 * v16);
          v18 = [v17 objectForKeyedSubscript:@"networkIdentifiers"];
          v19 = [v18 isEqual:v56];

          if (v19)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [v12 countByEnumeratingWithState:&v69 objects:v93 count:16];
            if (!v14)
            {
              v7 = v48;
              goto LABEL_43;
            }

            goto LABEL_10;
          }
        }

        v20 = v17;

        if (v20)
        {
          v49 = v20;
          v21 = [v20 objectForKeyedSubscript:@"servers"];
          v22 = [v11 objectForKeyedSubscript:@"servers"];
          v23 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v21 count]);
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v59 = v21;
          v24 = [v59 countByEnumeratingWithState:&v65 objects:v92 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v66;
            do
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v66 != v26)
                {
                  objc_enumerationMutation(v59);
                }

                v28 = *(*(&v65 + 1) + 8 * j);
                v29 = [v28 objectForKeyedSubscript:v9];
                [v23 setObject:v28 forKeyedSubscript:v29];
              }

              v25 = [v59 countByEnumeratingWithState:&v65 objects:v92 count:16];
            }

            while (v25);
          }

          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v58 = v22;
          v30 = [v58 countByEnumeratingWithState:&v61 objects:v91 count:16];
          if (v30)
          {
            v31 = v30;
            v60 = *v62;
            do
            {
              for (k = 0; k != v31; k = k + 1)
              {
                if (*v62 != v60)
                {
                  objc_enumerationMutation(v58);
                }

                v33 = *(*(&v61 + 1) + 8 * k);
                v34 = [v33 objectForKeyedSubscript:v9];
                v35 = [v23 objectForKeyedSubscript:v34];
                v36 = v35;
                if (v35)
                {
                  v37 = v9;
                  v38 = [v35 objectForKeyedSubscript:@"failureCount"];
                  v39 = gLogHandle;
                  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    v43 = v39;
                    v44 = currentQueueName();
                    v55 = [v33 objectForKeyedSubscript:@"failureCount"];
                    *buf = 67110658;
                    v78 = a5;
                    v79 = 2080;
                    v80 = v44;
                    v81 = 2112;
                    v82 = v56;
                    v83 = 2112;
                    v84 = v34;
                    v85 = 2112;
                    v86 = @"failureCount";
                    v87 = 2112;
                    v88 = v38;
                    v89 = 2112;
                    v90 = v55;
                    _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "#%08x [%s] transfer diskCache[%@][%@].%@ %@ (override %@)", buf, 0x44u);
                  }

                  v40 = [v33 objectForKeyedSubscript:@"failureCount"];
                  v41 = v40;
                  if (v38)
                  {
                    v42 = [v40 isEqual:v38];

                    if ((v42 & 1) == 0)
                    {
                      [v33 setObject:v38 forKeyedSubscript:@"failureCount"];
                      goto LABEL_38;
                    }
                  }

                  else
                  {

                    if (v41)
                    {
                      [v33 removeObjectForKey:@"failureCount"];
LABEL_38:
                      v57 = 1;
                    }
                  }

                  v9 = v37;
                }
              }

              v31 = [v58 countByEnumeratingWithState:&v61 objects:v91 count:16];
            }

            while (v31);
          }

          v6 = v46;
          v7 = v48;
          v12 = v49;
LABEL_43:
          i = v53;
LABEL_44:

          goto LABEL_46;
        }

        v7 = v48;
        i = v53;
LABEL_46:
      }

      v52 = [obj countByEnumeratingWithState:&v73 objects:v94 count:16];
      if (!v52)
      {
        goto LABEL_50;
      }
    }
  }

  v57 = 0;
LABEL_50:

  return v57 & 1;
}

- (void)updateDiskCacheRefreshTimerWithTag:(unsigned int)a3
{
  v5 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100020BDC(v5);
  }

  if (![(AssetCacheLocatorService *)self amRunningOnMyQueue])
  {
    sub_100020C68();
  }

  if (!-[AssetCacheLocatorService testFlags](self, "testFlags") || (-[AssetCacheLocatorService diskCache](self, "diskCache"), v6 = objc_claimAutoreleasedReturnValue(), [v6 objectForKey:@"nextDiskCacheRefreshDate"], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v47 = a3;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v8 = [(AssetCacheLocatorService *)self diskCache];
    v9 = [v8 objectForKey:@"cache"];

    v10 = [v9 countByEnumeratingWithState:&v56 objects:v72 count:16];
    if (v10)
    {
      v11 = v10;
      v7 = 0;
      v12 = *v57;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v57 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v56 + 1) + 8 * i) objectForKey:@"validUntil"];
          if (!v7 || [v7 compare:v14] == 1)
          {
            v15 = v14;

            v7 = v15;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v56 objects:v72 count:16];
      }

      while (v11);
    }

    else
    {
      v7 = 0;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v16 = [(AssetCacheLocatorService *)self diskCache];
    v17 = [v16 objectForKey:@"dnsResults"];

    v18 = [v17 countByEnumeratingWithState:&v52 objects:v71 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v53;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v53 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v52 + 1) + 8 * j) objectForKey:@"validUntil"];
          if (!v7 || [v7 compare:v22] == 1)
          {
            v23 = v22;

            v7 = v23;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v52 objects:v71 count:16];
      }

      while (v19);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v24 = [(AssetCacheLocatorService *)self diskCache];
    v25 = [v24 objectForKey:@"serversRecentlySeen"];

    v26 = [v25 countByEnumeratingWithState:&v48 objects:v70 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v49;
      do
      {
        for (k = 0; k != v27; k = k + 1)
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v48 + 1) + 8 * k) objectForKey:@"validUntil"];
          if (!v7 || [v7 compare:v30] == 1)
          {
            v31 = v30;

            v7 = v31;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v48 objects:v70 count:16];
      }

      while (v27);
    }

    a3 = v47;
    if (!v7)
    {
      if (![(AssetCacheLocatorService *)self diskCacheRefreshTimerResumed])
      {
        v7 = 0;
        goto LABEL_54;
      }

      v44 = gLogHandle;
      if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
      {
        v45 = v44;
        v46 = currentQueueName();
        *buf = 67109378;
        v61 = v47;
        v62 = 2080;
        v63 = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "#%08x [%s] automatic disk cache refreshes suspended", buf, 0x12u);
      }

      v42 = [(AssetCacheLocatorService *)self diskCacheRefreshTimer];
      dispatch_suspend(v42);
      v43 = 0;
      v7 = 0;
      goto LABEL_53;
    }
  }

  [v7 timeIntervalSinceNow];
  if (v32 >= 5.0)
  {
    v33 = v32 + 5.0;
  }

  else
  {
    v33 = 5.0;
  }

  v34 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
  {
    v35 = v34;
    v36 = currentQueueName();
    v37 = [NSDate dateWithTimeIntervalSinceNow:v33];
    v38 = +[NSDate date];
    *buf = 67110146;
    v61 = a3;
    v62 = 2080;
    v63 = v36;
    v64 = 2112;
    v65 = v37;
    v66 = 2112;
    v67 = v38;
    v68 = 2048;
    v69 = v33;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "#%08x [%s] next automatic disk cache refresh at or after %@ (%@ + %.f sec)", buf, 0x30u);
  }

  v39 = dispatch_time(0, (v33 * 1000000000.0));
  v40 = [(AssetCacheLocatorService *)self diskCacheRefreshTimer];
  if ([(AssetCacheLocatorService *)self testFlags])
  {
    v41 = 0;
  }

  else
  {
    v41 = 300000000000;
  }

  dispatch_source_set_timer(v40, v39, 0xFFFFFFFFFFFFFFFFLL, v41);

  if (![(AssetCacheLocatorService *)self diskCacheRefreshTimerResumed])
  {
    v42 = [(AssetCacheLocatorService *)self diskCacheRefreshTimer];
    dispatch_resume(v42);
    v43 = 1;
LABEL_53:

    [(AssetCacheLocatorService *)self setDiskCacheRefreshTimerResumed:v43];
  }

LABEL_54:
}

- (id)cachedEntryCalled:(id)a3 withKey:(id)a4 forNetworkIdentifiers:(id)a5 validityInterval:(double *)a6 tag:(unsigned int)a7
{
  v11 = a3;
  v12 = a4;
  v39 = a5;
  v13 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v30 = v13;
    *buf = 67110147;
    v46 = a7;
    v47 = 2080;
    v48 = currentQueueName();
    v49 = 2112;
    v50 = v11;
    v51 = 2048;
    v52 = [v39 count];
    v53 = 2113;
    v54 = *&v39;
    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "#%08x [%s] cached%@ForNetworkIdentifiers:[%ld]%{private}@", buf, 0x30u);
  }

  if (![(AssetCacheLocatorService *)self amRunningOnMyQueue])
  {
    sub_100020C94();
  }

  v34 = self;
  v35 = a6;
  v37 = v11;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = [(AssetCacheLocatorService *)self diskCache];
  v36 = v12;
  v15 = [v14 objectForKey:v12];

  v16 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v41;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        v21 = [v20 objectForKey:@"validUntil"];
        [v21 timeIntervalSinceNow];
        if (v22 > 0.0)
        {
          v23 = v22;
          v24 = [v20 objectForKey:@"networkIdentifiers"];
          v25 = [ACLSNetworkUtilities areDigestedIdentifiers:v24 equalToCleartextIdentifiers:v39 tag:a7];

          if (v25)
          {
            v28 = gLogHandle;
            v27 = v37;
            if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v31 = v28;
              v32 = currentQueueName();
              v33 = [(AssetCacheLocatorService *)v34 redactObject:v20];
              *buf = 67110146;
              v46 = a7;
              v47 = 2080;
              v48 = v32;
              v49 = 2112;
              v50 = v37;
              v51 = 2112;
              v52 = v33;
              v53 = 2048;
              v54 = v23;
              _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "#%08x [%s] cached%@ForNetworkIdentifiers -> %@ validityInterval=%.3f", buf, 0x30u);
            }

            if (v35)
            {
              *v35 = v23;
            }

            v26 = [v20 copy];

            goto LABEL_20;
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v27 = v37;
    sub_100020CC0();
    v26 = 0;
  }

  else
  {
    v26 = 0;
    v27 = v37;
  }

LABEL_20:

  return v26;
}

- (void)locateLocalCachingServersWithTimeout:(double)a3 localAddresses:(id)a4 gatewayIdentifiers:(id)a5 configurationProfiles:(id)a6 forceDNSRefresh:(BOOL)a7 callback:(id)a8 callbackQueue:(id)a9 tag:(unsigned int)a10
{
  v50 = a7;
  v16 = a4;
  v54 = a5;
  v51 = a6;
  v17 = a8;
  v18 = a9;
  v19 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v53 = v19;
    v44 = currentQueueName();
    v45 = [v54 count];
    v46 = objc_retainBlock(v17);
    *buf = 67111427;
    v76 = a10;
    v77 = 2080;
    v78 = v44;
    v79 = 2048;
    v80 = a3;
    v81 = 2112;
    v82 = v16;
    v83 = 2048;
    v84 = v45;
    v85 = 2113;
    v86 = v54;
    v87 = 2113;
    v88 = v51;
    v89 = 1024;
    v90 = v50;
    v91 = 2048;
    v92 = v46;
    v93 = 2080;
    label = dispatch_queue_get_label(v18);
    _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "#%08x [%s] locateLocalCachingServersWithTimeout:%.3f localAddresses:%@ gatewayIdentifiers:[%ld]%{private}@ configurationProfiles:%{private}@ forceDNSRefresh:%{BOOL}d callback:%p callbackQueue:%s", buf, 0x5Eu);
  }

  if (![(AssetCacheLocatorService *)self amRunningInMySingleLocate:a10])
  {
    sub_1000216EC();
  }

  v20 = [NSDate dateWithTimeIntervalSinceNow:a3];
  v21 = +[NSMutableArray array];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100015A34;
  v69[3] = &unk_100035070;
  v74 = a10;
  v69[4] = self;
  v49 = v18;
  v70 = v49;
  v48 = v17;
  v73 = v48;
  v22 = v20;
  v71 = v22;
  v52 = v21;
  v72 = v52;
  v23 = objc_retainBlock(v69);
  v24 = +[NSMutableDictionary dictionary];
  [v24 setObject:@"close" forKey:@"Connection"];
  [v24 setObject:@"application/json" forKey:@"Content-Type"];
  [v24 setObject:@"3" forKey:@"X-Protocol-Version"];
  v25 = +[NSMutableArray array];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_100015DC0;
  v65[3] = &unk_100035098;
  v65[4] = self;
  v68 = a10;
  v26 = v16;
  v66 = v26;
  v27 = v25;
  v67 = v27;
  v28 = objc_retainBlock(v65);
  if (v50)
  {
    v29 = a10;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v29 = a10;
    [(AssetCacheLocatorService *)self cachedDNSPublicAddressRanges:&v64 andFavoredServerRanges:&v63 forNetworkIdentifiers:v54 tag:a10];
    v31 = v64;
    v30 = v63;
  }

  if (v31 | v30)
  {
    if (v31)
    {
      [v27 addObject:v31];
    }

    v32 = v22;
    if (v30)
    {
      [v52 addObject:v30];
    }

    v33 = (v28[2])(v28);
    (v23[2])(v23, v24, v33);

    v22 = v32;
  }

  else
  {
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100015ED8;
    v55[3] = &unk_1000350C0;
    v47 = v29;
    v62 = v29;
    v55[4] = self;
    v56 = v54;
    v57 = v27;
    v58 = v52;
    v60 = v23;
    v59 = v24;
    v61 = v28;
    v34 = v31;
    v35 = v28;
    v36 = v27;
    v37 = v26;
    v38 = objc_retainBlock(v55);
    [v22 timeIntervalSinceNow];
    v40 = v39;
    v41 = [(AssetCacheLocatorService *)self queue];
    v42 = self;
    v43 = v41;
    [(AssetCacheLocatorService *)v42 resolveDNSRecordsWithTimeout:v38 callback:v41 callbackQueue:v47 tag:v40];

    v26 = v37;
    v27 = v36;
    v28 = v35;
    v31 = v34;
  }
}

- (BOOL)doesServer:(id)a3 haveCapabilities:(id)a4 tag:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v17 = v10;
    v18 = currentQueueName();
    v19 = [(AssetCacheLocatorService *)self redactObject:v8];
    *buf = 67109890;
    *&buf[4] = a5;
    *v33 = 2080;
    *&v33[2] = v18;
    *&v33[10] = 2112;
    *&v33[12] = v19;
    v34 = 2112;
    v35 = v9;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "#%08x [%s] doesServer:%@ haveCapabilities:%@", buf, 0x26u);
  }

  *buf = 0;
  *v33 = buf;
  *&v33[8] = 0x2020000000;
  v33[16] = 1;
  v11 = [v8 objectForKey:@"details"];
  [v11 objectForKey:@"capabilities"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100016468;
  v12 = v22[3] = &unk_1000350E8;
  v23 = v12;
  v25 = buf;
  v13 = v11;
  v24 = v13;
  [v9 enumerateKeysAndObjectsUsingBlock:v22];
  v14 = gLogHandle;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v20 = currentQueueName();
    v21 = *(*v33 + 24);
    *v26 = 67109634;
    v27 = a5;
    v28 = 2080;
    v29 = v20;
    v30 = 1024;
    v31 = v21;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "#%08x [%s] doesServerHaveCapabilities -> %{BOOL}d", v26, 0x18u);
  }

  v15 = *(*v33 + 24);
  _Block_object_dispose(buf, 8);

  return v15 & 1;
}

- (void)refineServers:(id)a3 intoBest:(id *)a4 andOther:(id *)a5 tag:(unsigned int)a6
{
  v8 = a3;
  v9 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v22 = v9;
    v23 = currentQueueName();
    v24 = [(AssetCacheLocatorService *)self redactObject:v8];
    *buf = 67109634;
    v33 = a6;
    v34 = 2080;
    v35 = v23;
    v36 = 2112;
    v37 = v24;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "#%08x [%s] refineServers:%@", buf, 0x1Cu);
  }

  if ([v8 count])
  {
    v10 = [v8 sortedArrayWithOptions:16 usingComparator:&stru_100035128];
    v11 = [v10 firstObject];
    v12 = [v11 objectForKey:@"rank"];

    v13 = 1;
    if ([v10 count] >= 2)
    {
      do
      {
        v14 = [v10 objectAtIndex:v13];
        v15 = [v14 objectForKey:@"rank"];
        v16 = [v15 isEqualToNumber:v12];

        if (!v16)
        {
          break;
        }

        ++v13;
      }

      while (v13 < [v10 count]);
    }

    v17 = [v10 subarrayWithRange:{0, v13}];
    v18 = 0;
    if (v13 < [v10 count])
    {
      v18 = [v10 subarrayWithRange:{v13, objc_msgSend(v10, "count") - v13}];
    }

    if (a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
    if (a4)
    {
LABEL_10:
      v19 = v17;
      *a4 = v17;
    }
  }

  if (a5)
  {
    v20 = v18;
    *a5 = v18;
  }

  v21 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v25 = v21;
    v26 = currentQueueName();
    v27 = [v30 redactObject:v17];
    v28 = [v30 redactObject:v18];
    *buf = 67109890;
    v33 = a6;
    v34 = 2080;
    v35 = v26;
    v36 = 2112;
    v37 = v27;
    v38 = 2112;
    v39 = v28;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "#%08x [%s] refineServers -> best=%@ other=%@", buf, 0x26u);
  }
}

- (id)cachedServers:(id)a3 forAffinityID:(id)a4 tag:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  if (![(AssetCacheLocatorService *)self amRunningOnMyQueue])
  {
    sub_100021744();
  }

  v33 = a5;
  v10 = [(AssetCacheLocatorService *)self affinityCache];
  v34 = v9;
  v11 = [v10 objectForKeyedSubscript:v9];

  v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v56 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v19 = [v18 objectForKeyedSubscript:@"localAddressAndPort"];
        [v12 setObject:v18 forKeyedSubscript:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v39 objects:v56 count:16];
    }

    while (v15);
  }

  v20 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v11;
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [v12 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * j)];
        if (v26)
        {
          [v20 addObject:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v35 objects:v55 count:16];
    }

    while (v23);
  }

  v27 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v29 = v27;
    v30 = currentQueueName();
    v31 = [(AssetCacheLocatorService *)self redactObject:v13];
    v32 = [(AssetCacheLocatorService *)self redactObject:v20];
    *buf = 67110402;
    v44 = v33;
    v45 = 2080;
    v46 = v30;
    v47 = 2112;
    v48 = v31;
    v49 = 2112;
    v50 = v34;
    v51 = 2112;
    v52 = v21;
    v53 = 2112;
    v54 = v32;
    _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "#%08x [%s] cachedServers:%@ forAffinityID:%@ hostports=%@ -> %@", buf, 0x3Au);
  }

  return v20;
}

- (void)cacheServers:(id)a3 forAffinityID:(id)a4 tag:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  if (![(AssetCacheLocatorService *)self amRunningOnMyQueue])
  {
    sub_100021770();
  }

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v22 + 1) + 8 * v15) objectForKeyedSubscript:{@"localAddressAndPort", v22}];
        [v10 addObject:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v36 count:16];
    }

    while (v13);
  }

  v17 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v19 = v17;
    v20 = currentQueueName();
    v21 = [(AssetCacheLocatorService *)self redactObject:v11];
    *buf = 67110146;
    v27 = a5;
    v28 = 2080;
    v29 = v20;
    v30 = 2112;
    v31 = v21;
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = v10;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "#%08x [%s] cacheServers:%@ forAffinityID:%@ hostports=%@", buf, 0x30u);
  }

  v18 = [(AssetCacheLocatorService *)self affinityCache];
  [v18 setObject:v10 forKeyedSubscript:v9];
}

- (void)uncacheAllAffinitiesWithTag:(unsigned int)a3
{
  v4 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1000217C8(v4);
  }

  if (![(AssetCacheLocatorService *)self amRunningOnMyQueue])
  {
    sub_100021854();
  }

  v5 = [(AssetCacheLocatorService *)self affinityCache];
  [v5 removeAllObjects];
}

- (int)probeCacheWithLabel:(id)a3 capabilities:(id)a4 affinityID:(id)a5 hitServers:(id *)a6 hitServersAreSorted:(BOOL *)a7 hitOtherServers:(id *)a8 hitValidityInterval:(double *)a9 tag:(unsigned int)a10
{
  v15 = a10;
  v16 = a3;
  v80 = a4;
  v79 = a5;
  v17 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v48 = v17;
    *buf = 67110146;
    v96 = a10;
    v97 = 2080;
    v98 = currentQueueName();
    v99 = 2112;
    v100 = v16;
    v101 = 2112;
    v102 = v80;
    v103 = 2112;
    v104 = v79;
    _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "#%08x [%s] probeCacheWithLabel:%@ capabilities:%@ affinityID:%@", buf, 0x30u);
  }

  if (![(AssetCacheLocatorService *)self amRunningOnMyQueue])
  {
    sub_100021938();
  }

  v93 = 0;
  v18 = [(AssetCacheLocatorService *)self localhostAddresses];
  v92 = 0;
  v19 = [(AssetCacheLocatorService *)self probeCacheForType:@"localhost" withLabel:v16 networkIdentifiers:v18 hitServers:&v92 hitValidityInterval:&v93 tag:a10];
  v20 = v92;

  if (v19)
  {
    v78 = v16;
    v90 = 0;
    v91 = 0;
    [(AssetCacheLocatorService *)self refineServers:v20 intoBest:&v91 andOther:&v90 tag:a10];
    v21 = v91;
    v22 = v90;
    v23 = [(AssetCacheLocatorService *)self serversFromArray:v21 withCapabilities:v80 tag:a10];
    v24 = v20;
    if ([v23 count] || !-[NSObject count](v20, "count"))
    {
      v25 = v21;
      v26 = gLogHandle;
      if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        v28 = currentQueueName();
        [(AssetCacheLocatorService *)self describeCapableServers:v23 fromAvailableServers:v20 withOtherServers:v22];
        v30 = v29 = a6;
        *buf = 67109890;
        v96 = a10;
        v97 = 2080;
        v98 = v28;
        v24 = v20;
        v99 = 2112;
        v100 = v78;
        v101 = 2112;
        v102 = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#%08x [%s] %@ hit: %@", buf, 0x26u);

        a6 = v29;
      }

      if (a6)
      {
        v31 = v23;
        *a6 = v23;
      }

      v32 = v79;
      v33 = v25;
      if (a7)
      {
        *a7 = 0;
      }

      v34 = v22;
      if (a8)
      {
        v35 = v22;
        *a8 = v22;
      }

      if (a9)
      {
        *a9 = v93;
      }

      v36 = 2;
      goto LABEL_44;
    }

    v16 = v78;
  }

  v33 = [(AssetCacheLocatorService *)self localAddresses];
  v37 = [(AssetCacheLocatorService *)self gatewayIdentifiers];
  v34 = v37;
  if (!v33)
  {
    v43 = v37;
    v88 = v37;
    v89 = 0;
    v44 = [(AssetCacheLocatorService *)self makeLocalAddresses:&v89 andGatewayIdentifiers:&v88 tag:a10];
    v45 = v89;
    v46 = v88;

    if ((v44 & 1) == 0)
    {

      v46 = 0;
      v45 = 0;
    }

    v24 = v20;
    [(AssetCacheLocatorService *)self setLocalAddresses:v45];
    [(AssetCacheLocatorService *)self setGatewayIdentifiers:v46];
    v47 = v46;
    v32 = v79;
    v33 = v45;
    v15 = a10;
    v34 = v47;
    if (v47)
    {
      goto LABEL_21;
    }

LABEL_29:
    v36 = 0;
    goto LABEL_45;
  }

  v24 = v20;
  v32 = v79;
  if (!v37)
  {
    goto LABEL_29;
  }

LABEL_21:
  v76 = v33;

  v93 = 0;
  v87 = 0;
  v38 = [(AssetCacheLocatorService *)self probeCacheForType:@"local" withLabel:v16 networkIdentifiers:v34 hitServers:&v87 hitValidityInterval:&v93 tag:v15];
  v24 = v87;
  if (v38)
  {
    v73 = a7;
    v85 = 0;
    v86 = 0;
    [(AssetCacheLocatorService *)self refineServers:v24 intoBest:&v86 andOther:&v85 tag:v15];
    v39 = v86;
    v40 = v85;
    v71 = v39;
    v41 = [(AssetCacheLocatorService *)self serversFromArray:v39 withCapabilities:v80 tag:v15];
    v42 = v41;
    v78 = v16;
    v72 = a6;
    v70 = v15;
    if (!v32)
    {
      goto LABEL_25;
    }

    if (![v41 count])
    {
      v74 = 0;
      goto LABEL_32;
    }

    if ([v42 count] == 1)
    {
LABEL_25:
      v74 = v42;
LABEL_32:
      v49 = 0;
      v36 = 2;
LABEL_33:
      v50 = gLogHandle;
      if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        loga = v50;
        v51 = v32;
        v52 = v24;
        v53 = currentQueueName();
        v54 = [(AssetCacheLocatorService *)self describeCapableServers:v74 fromAvailableServers:v52 withOtherServers:v40];
        *buf = 67109890;
        v96 = v70;
        v97 = 2080;
        v98 = v53;
        v24 = v52;
        v32 = v51;
        v99 = 2112;
        v100 = v16;
        v101 = 2112;
        v102 = v54;
        _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "#%08x [%s] %@ hit: %@", buf, 0x26u);
      }

      if (v72)
      {
        v55 = v74;
        *v72 = v74;
      }

      if (v73)
      {
        *v73 = v49;
      }

      if (a8)
      {
        v56 = v40;
        *a8 = v40;
      }

      if (a9)
      {
        *a9 = v93;
      }

      v33 = v76;
      v23 = v71;
LABEL_44:

      v16 = v78;
      goto LABEL_45;
    }

    log = v24;
    v58 = [(AssetCacheLocatorService *)self cachedServers:v24 forAffinityID:v32 tag:v15];
    v59 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v58 count]);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v60 = v58;
    v61 = [v60 countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (v61)
    {
      v62 = v61;
      v75 = v40;
      v63 = 0;
      v64 = *v82;
      do
      {
        for (i = 0; i != v62; i = i + 1)
        {
          if (*v82 != v64)
          {
            objc_enumerationMutation(v60);
          }

          v66 = *(*(&v81 + 1) + 8 * i);
          if ([v42 containsObject:v66])
          {
            [v59 addObject:v66];
            v63 = 1;
          }
        }

        v62 = [v60 countByEnumeratingWithState:&v81 objects:v94 count:16];
      }

      while (v62);

      v16 = v78;
      v40 = v75;
      if (v63)
      {
        v49 = 1;
        v36 = 2;
        v67 = v59;
LABEL_59:
        v74 = v67;

        v32 = v79;
        v24 = log;
        goto LABEL_33;
      }
    }

    else
    {
    }

    v49 = 0;
    v36 = 1;
    v67 = v42;
    goto LABEL_59;
  }

  v36 = 0;
  v33 = v76;
LABEL_45:

  return v36;
}

- (void)locateCachingServersWithTimeout:(double)a3 capabilities:(id)a4 affinityID:(id)a5 autoRefresh:(BOOL)a6 quickMiss:(BOOL)a7 forceMiss:(BOOL)a8 callback:(id)a9 callbackQueue:(id)a10 tag:(unsigned int)a11
{
  v12 = a8;
  v13 = a7;
  v14 = a6;
  v18 = a4;
  v19 = a5;
  v20 = a9;
  v21 = a10;
  v22 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
  {
    log = v22;
    v23 = v13;
    v13 = v14;
    v24 = currentQueueName();
    v25 = objc_retainBlock(v20);
    *buf = 67111426;
    v43 = a11;
    v44 = 2080;
    v45 = v24;
    v14 = v13;
    LOBYTE(v13) = v23;
    v46 = 2048;
    v47 = a3;
    v48 = 2112;
    v49 = v18;
    v50 = 2112;
    v51 = v19;
    v52 = 1024;
    v53 = v14;
    v54 = 1024;
    v55 = v23;
    v56 = 1024;
    v57 = v12;
    v58 = 2048;
    v59 = v25;
    v60 = 2080;
    label = dispatch_queue_get_label(v21);
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "#%08x [%s] locateCachingServersWithTimeout:%.3f capabilities:%@ affinityID:%@ autoRefresh:%{BOOL}d quickMiss:%{BOOL}d forceMiss:%{BOOL}d callback:%p callbackQueue:%s", buf, 0x56u);
  }

  v26 = [(AssetCacheLocatorService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019990;
  block[3] = &unk_1000352B0;
  v39 = v12;
  v38 = a11;
  block[4] = self;
  v33 = v18;
  v34 = v19;
  v35 = v21;
  v36 = v20;
  v40 = v13;
  v41 = v14;
  v37 = a3;
  v27 = v20;
  v28 = v21;
  v29 = v19;
  v30 = v18;
  dispatch_async(v26, block);
}

- (void)relocateCachingServersWithTimeout:(double)a3 capabilities:(id)a4 affinityID:(id)a5 forceRefresh:(BOOL)a6 tag:(unsigned int)a7
{
  v8 = a6;
  v12 = a4;
  v13 = a5;
  v14 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    *buf = 67110402;
    *&buf[4] = a7;
    *v25 = 2080;
    *&v25[2] = currentQueueName();
    *&v25[10] = 2048;
    *&v25[12] = a3;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    v30 = 1024;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "#%08x [%s] relocateCachingServersWithTimeout:%.3f capabilities:%@ affinityID:%@ forceRefresh:%{BOOL}d", buf, 0x36u);
  }

  *buf = 0;
  *v25 = buf;
  *&v25[8] = 0x2020000000;
  v25[16] = 0;
  v16 = [(AssetCacheLocatorService *)self cacheRefreshQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A168;
  block[3] = &unk_1000352D8;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(v16, block);

  if (*(*v25 + 24) == 1)
  {
    v17 = dispatch_get_global_queue(0, 0);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001A1B0;
    v18[3] = &unk_100034E28;
    v21 = a7;
    v18[4] = self;
    v19 = v12;
    v20 = v13;
    v22 = v8;
    dispatch_async(v17, v18);
  }

  _Block_object_dispose(buf, 8);
}

- (id)describeCapableServers:(id)a3 fromAvailableServers:(id)a4 withOtherServers:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSMutableString string];
  if ([v8 count])
  {
    v11 = +[NSMutableSet set];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v27 + 1) + 8 * i) objectForKeyedSubscript:@"localAddressAndPort"];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    v18 = [v8 count];
    v19 = [v8 count];
    v20 = @"s";
    if (v19 == 1)
    {
      v20 = &stru_100035770;
    }

    [v10 appendFormat:@"%d caching server%@: ", v18, v20];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001BE88;
    v24[3] = &unk_1000353F0;
    v25 = v10;
    v26 = v11;
    v21 = v11;
    [v8 enumerateObjectsUsingBlock:v24];

    v7 = v23;
  }

  else
  {
    [v10 appendString:@"no caching servers"];
  }

  if ([v9 count])
  {
    [v10 appendFormat:@" [plus %d more of other ranks]", objc_msgSend(v9, "count")];
  }

  return v10;
}

- (id)compileRanges:(id)a3 tag:(unsigned int)a4
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = &IOMainPort_ptr;
    v8 = *v39;
    v28 = *v39;
    do
    {
      v9 = 0;
      v29 = v5;
      do
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        v11 = v7[293];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v9;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v34 objects:v48 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v35;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v35 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v34 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v18 = [v17 objectForKeyedSubscript:@"first"];
                  v19 = [v17 objectForKeyedSubscript:@"last"];
                  v32[1] = 0;
                  v33 = 0;
                  *buf = 0;
                  *v43 = 0;
                  v32[0] = 0;
                  if (inet_pton(2, [v18 UTF8String], &v33 + 4) == 1 && inet_pton(2, objc_msgSend(v19, "UTF8String"), &v33) == 1)
                  {
                    v20 = [[ACLSIPv4Range alloc] initWithFirst:&v33 + 4 andLast:&v33];
                    v21 = 0;
                  }

                  else
                  {
                    if (inet_pton(30, [v18 UTF8String], buf) == 1 && inet_pton(30, objc_msgSend(v19, "UTF8String"), v32) == 1)
                    {
                      v21 = [[ACLSIPv6Range alloc] initWithFirst:buf andLast:v32];
                    }

                    else
                    {
                      v21 = 0;
                    }

                    v20 = 0;
                  }

                  if (v20 | v21)
                  {
                    if (!v6)
                    {
                      v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [obj count]);
                    }

                    if (v20)
                    {
                      v22 = v20;
                    }

                    else
                    {
                      v22 = v21;
                    }

                    [v6 addObject:v22];
                  }
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v34 objects:v48 count:16];
            }

            while (v14);
          }

          v7 = &IOMainPort_ptr;
          v8 = v28;
          v5 = v29;
          v9 = v30;
        }

        v9 = v9 + 1;
      }

      while (v9 != v5);
      v5 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v23 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v25 = v23;
    v26 = currentQueueName();
    *buf = 67109890;
    *&buf[4] = a4;
    *v43 = 2080;
    *&v43[2] = v26;
    v44 = 2112;
    v45 = obj;
    v46 = 2112;
    v47 = v6;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "#%08x [%s] compileRanges:%@ -> %@", buf, 0x26u);
  }

  return v6;
}

- (BOOL)isAddress:(id)a3 inCompiledRanges:(id)a4 tag:(unsigned int)a5
{
  v7 = a3;
  v8 = a4;
  v35 = 0;
  v34[0] = 0;
  v34[1] = 0;
  if (inet_pton(2, [v7 UTF8String], &v35) == 1)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v14 containsAddress:&v35])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v30 objects:v47 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_24;
        }
      }

LABEL_23:
      v21 = 1;
LABEL_25:

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (inet_pton(30, [v7 UTF8String], v34) == 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
LABEL_15:
      v19 = 0;
      while (1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * v19);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v20 containsAddress:{v34, v26}])
        {
          goto LABEL_23;
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v26 objects:v46 count:16];
          v21 = 0;
          if (v17)
          {
            goto LABEL_15;
          }

          goto LABEL_25;
        }
      }
    }

LABEL_24:
    v21 = 0;
    goto LABEL_25;
  }

  v21 = 0;
LABEL_27:
  v22 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v24 = v22;
    v25 = currentQueueName();
    *buf = 67110146;
    v37 = a5;
    v38 = 2080;
    v39 = v25;
    v40 = 2112;
    v41 = v7;
    v42 = 2112;
    v43 = v8;
    v44 = 1024;
    v45 = v21;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "#%08x [%s] isAddress:%@ inCompiledRanges:%@ -> %{BOOL}d", buf, 0x2Cu);
  }

  return v21;
}

- (void)recentlySeenCachingServerWithAutoRefresh:(BOOL)a3 callback:(id)a4 callbackQueue:(id)a5 tag:(unsigned int)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a5;
  v12 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = currentQueueName();
    v15 = objc_retainBlock(v10);
    *buf = 67110146;
    v25 = a6;
    v26 = 2080;
    v27 = v14;
    v28 = 1024;
    v29 = v8;
    v30 = 2048;
    v31 = v15;
    v32 = 2080;
    label = dispatch_queue_get_label(v11);
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "#%08x [%s] recentlySeenCachingServerWithAutoRefresh:%{BOOL}d callback:%p callbackQueue:%s", buf, 0x2Cu);
  }

  v16 = [(AssetCacheLocatorService *)self queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001C850;
  v19[3] = &unk_100035440;
  v22 = a6;
  v19[4] = self;
  v20 = v11;
  v21 = v10;
  v23 = v8;
  v17 = v10;
  v18 = v11;
  dispatch_async(v16, v19);
}

- (void)updateHealthOfCachingServerWithHostport:(id)a3 healthy:(BOOL)a4 override:(BOOL)a5 callback:(id)a6 callbackQueue:(id)a7 tag:(unsigned int)a8
{
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v23 = v17;
    *buf = 67110146;
    v33 = a8;
    v34 = 2080;
    v35 = currentQueueName();
    v36 = 2112;
    v37 = v14;
    v38 = 1024;
    v39 = v12;
    v40 = 1024;
    v41 = v11;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "#%08x [%s] updateHealthOfCachingServerWithHostport:%@ healthy:%{BOOL}d override:%{BOOL}d", buf, 0x28u);
  }

  v18 = [v14 rangeOfString:@":" options:4];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v19 = [v14 substringToIndex:v18];
    if ([v19 hasPrefix:@"["] && objc_msgSend(v19, "hasSuffix:", @"]"))
    {
      v20 = [v19 substringWithRange:{1, objc_msgSend(v19, "length") - 2}];

      v19 = v20;
    }
  }

  if (![v19 length])
  {
    v22 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
    {
      sub_100021AC4(v22);
      if (!v15)
      {
        goto LABEL_13;
      }
    }

    else if (!v15)
    {
      goto LABEL_13;
    }

    dispatch_async(v16, v15);
    goto LABEL_13;
  }

  v21 = [(AssetCacheLocatorService *)self queue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001CD44;
  v24[3] = &unk_100035468;
  v24[4] = self;
  v25 = v19;
  v29 = a8;
  v26 = v14;
  v30 = v12;
  v31 = v11;
  v28 = v15;
  v27 = v16;
  dispatch_async(v21, v24);

LABEL_13:
}

- (void)importToLocalCachingServerAsURL:(id)a3 sourceFileHandle:(id)a4 sourceOffset:(int64_t)a5 sourceLength:(int64_t)a6 method:(id)a7 headers:(id)a8 callback:(id)a9 callbackQueue:(id)a10 tag:(unsigned int)a11
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v21;
    v34 = currentQueueName();
    v36 = [v15 absoluteString];
    v35 = objc_retainBlock(v19);
    *buf = 67111426;
    v43 = a11;
    v44 = 2080;
    v45 = v34;
    v46 = 2112;
    v47 = v36;
    v48 = 2112;
    v49 = v16;
    v50 = 2048;
    v51 = a5;
    v52 = 2048;
    v53 = a6;
    v54 = 2112;
    v55 = v17;
    v56 = 2112;
    v57 = v18;
    v58 = 2048;
    v59 = v35;
    v60 = 2080;
    label = dispatch_queue_get_label(v20);
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#%08x [%s] importToLocalCachingServerAsURL:%@ sourceFileHandle:%@ sourceOffset:%llu sourceLength:%llu method:%@ headers:%@ callback:%p callbackQueue:%s", buf, 0x62u);
  }

  v22 = [NSMutableURLRequest requestWithURL:v15 cachePolicy:1 timeoutInterval:60.0];
  [v22 setHTTPMethod:v17];
  [v22 setHTTPShouldHandleCookies:0];
  [v22 setAllowsCellularAccess:0];
  v23 = v19;
  v24 = v18;
  v25 = v17;
  v26 = v16;
  v27 = [NSString stringWithFormat:@"#%08x", a11];
  [v22 setValue:v27 forHTTPHeaderField:@"X-Apple-Locator-Tag"];

  v28 = [NSString stringWithFormat:@"%llu", a6];
  [v22 setValue:v28 forHTTPHeaderField:@"Content-Length"];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10001D508;
  v40[3] = &unk_100034F68;
  v41 = v22;
  v29 = v22;
  [v24 enumerateKeysAndObjectsUsingBlock:v40];
  v30 = [[ACLSImportDelegate alloc] initWithFileHandle:v26 fileOffset:a5 length:a6 callback:v23 callbackQueue:v20 tag:a11];
  v31 = [(AssetCacheLocatorService *)self importSessionConfig];
  v32 = [ACSURLSession sessionWithConfiguration:v31 canUseCachingServer:0 locateOptions:0 delegate:v30 delegateQueue:0];

  v33 = [v32 uploadTaskWithStreamedRequest:v29];
  [v33 resume];
}

- (void)importToCachingServerAsURL:(id)a3 sourcePath:(id)a4 sourceFileHandle:(id)a5 sourceOffset:(int64_t)a6 sourceLength:(int64_t)a7 method:(id)a8 headers:(id)a9 importStrategies:(id)a10 entitled:(BOOL)a11 callback:(id)a12 callbackQueue:(id)a13 tag:(unsigned int)a14
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a8;
  v22 = a9;
  v40 = a10;
  v23 = a12;
  v24 = a13;
  v25 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
  {
    log = v25;
    v26 = v20;
    v27 = v21;
    v28 = v19;
    v29 = currentQueueName();
    v30 = [v18 absoluteString];
    v31 = objc_retainBlock(v23);
    v37 = v23;
    v32 = v22;
    v33 = v31;
    *buf = 67112194;
    v45 = a14;
    v46 = 2080;
    v47 = v29;
    v19 = v28;
    v21 = v27;
    v20 = v26;
    v48 = 2112;
    v49 = v30;
    v50 = 2112;
    v51 = v19;
    v52 = 2112;
    v53 = v26;
    v54 = 2048;
    v55 = a6;
    v56 = 2048;
    v57 = a7;
    v58 = 2112;
    v59 = v21;
    v60 = 2112;
    v61 = v32;
    v62 = 2112;
    v63 = v40;
    v64 = 1024;
    v65 = a11;
    v66 = 2048;
    v67 = v31;
    v68 = 2080;
    label = dispatch_queue_get_label(v24);
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "#%08x [%s] importToCachingServerAsURL:%@ sourcePath:%@ sourceFileHandle:%@ sourceOffset:%llu sourceLength:%llu method:%@ headers:%@ importStrategies:%@ entitled:%{BOOL}d callback:%p callbackQueue:%s", buf, 0x7Cu);

    v22 = v32;
    v23 = v37;
  }

  if (!a7)
  {
    [v20 seekToEndOfFile];
    a7 = [v20 offsetInFile] - a6;
  }

  if (a11)
  {
    LODWORD(v35) = a14;
    [(AssetCacheLocatorService *)self importToLocalCachingServerAsURL:v18 sourceFileHandle:v20 sourceOffset:a6 sourceLength:a7 method:v21 headers:v22 callback:v23 callbackQueue:v24 tag:v35];
  }

  else
  {
    createTaggedError(NSPOSIXErrorDomain, 13, @"Not entitled", a14);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D844;
    v42 = block[3] = &unk_100034FF8;
    v43 = v23;
    v34 = v42;
    dispatch_async(v24, block);
  }
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AssetCacheLocatorService *)self locateTag];
  v12 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v22 = v12;
    v23 = currentQueueName();
    v24 = [(__CFString *)v9 protectionSpace];
    *buf = 67110146;
    v47 = v11;
    v48 = 2080;
    v49 = v23;
    v50 = 2112;
    v51 = v8;
    v52 = 2112;
    v53 = v9;
    v54 = 2112;
    v55 = v24;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "#%08x [%s] URLSession:%@ didReceiveChallenge:%@ [protection space %@]", buf, 0x30u);
  }

  v13 = [(AssetCacheLocatorService *)self locateSession];

  if (v13 == v8)
  {
    if (![(AssetCacheLocatorService *)self amRunningInMySingleLocate:v11])
    {
      sub_100021B50();
    }

    v14 = [(__CFString *)v9 protectionSpace];
    v15 = [v14 authenticationMethod];
    v16 = [v15 isEqualToString:NSURLAuthenticationMethodServerTrust];

    if (!v16)
    {
      v10[2](v10, 1, 0);
      goto LABEL_20;
    }

    [(AssetCacheLocatorService *)self setLocateServerValidated:0];
    v17 = [v14 serverTrust];
    error = 0;
    if (v17)
    {
      v18 = v17;
      if (SecTrustEvaluateWithError(v17, &error))
      {
        if ([(AssetCacheLocatorService *)self skipEVCheck])
        {
          goto LABEL_10;
        }

        v26 = SecTrustCopyResult(v18);
        if (!v26)
        {
          v29 = gLogHandle;
          if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_ERROR))
          {
            sub_100021B7C(v29, self);
          }

          goto LABEL_19;
        }

        v27 = v26;
        v21 = CFDictionaryGetValue(v26, kSecTrustExtendedValidation);
        log = CFDictionaryGetValue(v27, kSecTrustOrganizationName);
        if (v21)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [(__CFString *)v21 BOOLValue]&& log && ([log isEqualToString:@"Apple Inc."]& 1) != 0)
          {
            CFRelease(v27);

LABEL_10:
            v19 = [NSURLCredential credentialForTrust:v18];
            [(AssetCacheLocatorService *)self setLocateServerValidated:1];
            v20 = gLogHandle;
            if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
            {
              loga = v20;
              v34 = currentQueueName();
              v35 = [(AssetCacheLocatorService *)self locateURL];
              v36 = [v35 absoluteString];
              v37 = [(AssetCacheLocatorService *)self skipEVCheck];
              *buf = 67110146;
              v38 = @"with";
              v47 = v11;
              v48 = 2080;
              if (v37)
              {
                v38 = @"without";
              }

              v49 = v34;
              v50 = 2112;
              v51 = v36;
              v52 = 2112;
              v53 = v38;
              v54 = 2112;
              v55 = v19;
              _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "#%08x [%s] LocateURL %@ trusted %@ EV, credential=%@", buf, 0x30u);

              if (v19)
              {
                goto LABEL_12;
              }
            }

            else if (v19)
            {
LABEL_12:
              (v10)[2](v10, 0, v19);

LABEL_20:
              goto LABEL_21;
            }

LABEL_19:
            v10[2](v10, 2, 0);
            goto LABEL_20;
          }
        }

        v28 = gLogHandle;
        if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_ERROR))
        {
          v39 = v28;
          v42 = currentQueueName();
          v40 = [(AssetCacheLocatorService *)self locateURL];
          v41 = [v40 absoluteString];
          *buf = 67110146;
          v47 = v11;
          v48 = 2080;
          v49 = v42;
          v50 = 2112;
          v51 = v41;
          v52 = 2112;
          v53 = v21;
          v54 = 2112;
          v55 = log;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "#%08x [%s] LocateURL %@ untrusted: EV=%@ organization=%@", buf, 0x30u);
        }

        CFRelease(v27);

LABEL_18:
        goto LABEL_19;
      }

      v21 = error;
    }

    else
    {
      v21 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-25245 userInfo:0];
    }

    v25 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_ERROR))
    {
      v30 = v25;
      v31 = currentQueueName();
      v32 = [(AssetCacheLocatorService *)self locateURL];
      v33 = [v32 absoluteString];
      *buf = 67109890;
      v47 = v11;
      v48 = 2080;
      v49 = v31;
      v50 = 2112;
      v51 = v33;
      v52 = 2112;
      v53 = v21;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#%08x [%s] LocateURL %@ untrusted: error=%@", buf, 0x26u);
    }

    goto LABEL_18;
  }

  v10[2](v10, 2, 0);
LABEL_21:
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(AssetCacheLocatorService *)self locateTag];
  v15 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v16 = v15;
    v17[0] = 67110146;
    v17[1] = v14;
    v18 = 2080;
    v19 = currentQueueName();
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "#%08x [%s] URLSession:%@ task:%@ didReceiveChallenge:%@", v17, 0x30u);
  }

  v13[2](v13, 2, 0);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AssetCacheLocatorService *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001E070;
  v15[3] = &unk_1000354E0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(AssetCacheLocatorService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E860;
  block[3] = &unk_100035508;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AssetCacheLocatorService *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001EA6C;
  v15[3] = &unk_1000354E0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (id)redactObject:(id)a3
{
  v4 = a3;
  v5 = [(AssetCacheLocatorService *)self redactLogs];
  if (!v4 || (v5 & 1) == 0)
  {
LABEL_15:
    v6 = v4;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10001EEE0;
        v13 = v16[3] = &unk_100035590;
        v17 = v13;
        v18 = self;
        v19 = &stru_100035548;
        v20 = &stru_100035568;
        [v4 enumerateKeysAndObjectsUsingBlock:v16];
        v14 = v20;
        v6 = v13;

        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(AssetCacheLocatorService *)self redactObject:*(*(&v21 + 1) + 8 * i)];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

LABEL_16:

  return v6;
}

- (id)redactStringsFromObject:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AssetCacheLocatorService *)self redactLogs];
  if (!v6 || (v8 & 1) == 0)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v7[2](v7, v6);
LABEL_16:
        v9 = v16;
        goto LABEL_17;
      }

LABEL_15:
      v16 = v6;
      goto LABEL_16;
    }
  }

  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(AssetCacheLocatorService *)self redactStringsFromObject:*(*(&v18 + 1) + 8 * i) usingBlock:v7, v18];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

LABEL_17:

  return v9;
}

@end