@interface AUVDMAnalytics
- (AUVDMAnalytics)init;
- (BOOL)_startEventMonitoring;
- (void)_handleServiceMatched:(unsigned int)matched;
- (void)_startEventMonitoring;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation AUVDMAnalytics

- (AUVDMAnalytics)init
{
  v12.receiver = self;
  v12.super_class = AUVDMAnalytics;
  v2 = [(AUVDMAnalytics *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = os_log_create("com.apple.accessories", [v8 UTF8String]);
    log = v2->_log;
    v2->_log = v9;

    v2->_started = 0;
  }

  return v2;
}

- (void)start
{
  v3 = [(AUVDMAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting %@...", buf, 0xCu);
  }

  queue = [(AUVDMAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __23__AUVDMAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __23__AUVDMAnalytics_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) started];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __23__AUVDMAnalytics_start__block_invoke_cold_1(v4, v5, v6);
    }
  }

  else
  {
    [v3 setStarted:1];
    v7 = *(a1 + 32);

    [v7 _startEventMonitoring];
  }
}

- (void)stop
{
  v3 = [(AUVDMAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping %@...", buf, 0xCu);
  }

  queue = [(AUVDMAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __22__AUVDMAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __22__AUVDMAnalytics_stop__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) started];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setStarted:0];
    v4 = *(a1 + 32);

    [v4 _stopEventMonitoring];
  }

  else
  {
    v5 = [v3 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __22__AUVDMAnalytics_stop__block_invoke_cold_1(v5, v6, v7);
    }
  }
}

- (BOOL)_startEventMonitoring
{
  if (![(AUVDMAnalytics *)self monitoring]&& [(AUVDMAnalytics *)self started])
  {
    v3 = [(AUVDMAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting matching notifications...", buf, 2u);
    }

    v4 = [(AUVDMAnalytics *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v13, 2u);
    }

    [(AUVDMAnalytics *)self setMonitoring:1];
    [(AUVDMAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    ioNotificationPort = [(AUVDMAnalytics *)self ioNotificationPort];
    queue = [(AUVDMAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(ioNotificationPort, queue);

    v7 = IOServiceMatching("IOPortTransportProtocolAppleUVDM");
    v8 = [(AUVDMAnalytics *)self log];
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(AUVDMAnalytics *)v7 _startEventMonitoring];
      }

      v10 = IOServiceAddMatchingNotification([(AUVDMAnalytics *)self ioNotificationPort], "IOServiceMatched", v7, _servicesMatched, self, &self->_ioServiceMatchingIterator);
      if (!v10)
      {
        _servicesMatched(self, self->_ioServiceMatchingIterator);
        v11 = 1;
LABEL_12:

        return v11;
      }

      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      [(AUVDMAnalytics *)v8 _startEventMonitoring];
    }

    v11 = 0;
    goto LABEL_12;
  }

  return [(AUVDMAnalytics *)self monitoring];
}

- (void)_stopEventMonitoring
{
  if ([(AUVDMAnalytics *)self monitoring])
  {
    v3 = [(AUVDMAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(AUVDMAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(AUVDMAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(AUVDMAnalytics *)self ioNotificationPort]);
    }
  }
}

- (void)_handleServiceMatched:(unsigned int)matched
{
  if (matched)
  {
    memset(name, 0, 128);
    IORegistryEntryGetName(matched, name);
    v5 = [(AUVDMAnalytics *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v193 = name;
      OUTLINED_FUNCTION_2();
      _os_log_impl(v6, v7, OS_LOG_TYPE_INFO, v8, v9, 0xCu);
    }

    if (![(AUVDMAnalytics *)self analyticsEventsEnabled])
    {
      v18 = [(AUVDMAnalytics *)self log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_8();
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Analytics disabled for this event - ignoring... (eventName: %@)", buf, 0xCu);
      }

      goto LABEL_100;
    }

    if (!IOObjectConformsTo(matched, "IOPortTransportProtocolAppleUVDM"))
    {
      v18 = [(AUVDMAnalytics *)self log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_8();
        _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Could not find AUVDM service in %s plane!", buf, 0xCu);
      }

      goto LABEL_100;
    }

    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = OUTLINED_FUNCTION_0();
    CFProperty = IORegistryEntryCreateCFProperty(v11, v12, v13, v14);
    objc_opt_class();
    v16 = OUTLINED_FUNCTION_3();
    v17 = castNSObjectToType(v16);

    if (v17)
    {
      [v10 setObject:v17 forKey:@"PortType"];
    }

    else
    {
      v19 = [(AUVDMAnalytics *)self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4(v159, v160, v161, v162, v163);
      }
    }

    v20 = OUTLINED_FUNCTION_0();
    v24 = IORegistryEntryCreateCFProperty(v20, v21, v22, v23);
    objc_opt_class();
    v25 = OUTLINED_FUNCTION_3();
    v26 = castNSObjectToType(v25);

    v27 = &IOIteratorNext_ptr;
    v170 = v26;
    if (v26)
    {
      [v10 setObject:v26 forKey:@"PortNumber"];
      if (v17)
      {
        v28 = IOServiceMatching("IOPort");
        v188 = @"PortType";
        v189 = @"PortNumber";
        v190 = v17;
        v191 = v26;
        v29 = [NSDictionary dictionaryWithObjects:&v190 forKeys:&v188 count:2];
        [(__CFDictionary *)v28 setObject:v29 forKey:@"IOPropertyMatch"];

        v30 = [(AUVDMAnalytics *)self log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v193 = v28;
          _os_log_debug_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "matchingDict: %@", buf, 0xCu);
        }

        v31 = v28;
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v31);
        if (MatchingService)
        {
          v33 = MatchingService;
          v34 = IORegistryEntryCreateCFProperty(MatchingService, @"BuiltIn", kCFAllocatorDefault, 0);
          objc_opt_class();
          v35 = castNSObjectToType(v34);

          if (v35)
          {
            [v10 setObject:v35 forKey:@"PortBuiltIn"];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_4(&dword_0, &_os_log_default, v42, "Could not find if parent port is built-in!", buf);
          }

          v43 = IORegistryEntryCreateCFProperty(v33, @"ConnectionUUID", kCFAllocatorDefault, 0);
          objc_opt_class();
          v44 = castNSObjectToType(v43);

          if (v44)
          {
            [OUTLINED_FUNCTION_5() setObject:? forKey:?];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_4(&dword_0, &_os_log_default, v45, "Could not find parent port connection UUID!", buf);
          }

          IOObjectRelease(v33);

          v27 = &IOIteratorNext_ptr;
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          OUTLINED_FUNCTION_4(&dword_0, &_os_log_default, v41, "Could not find parent port!", buf);
        }

LABEL_38:
        v46 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v46, v47, v48, v49);
        OUTLINED_FUNCTION_6();
        v50 = OUTLINED_FUNCTION_3();
        v51 = castNSObjectToType(v50);

        if (v51)
        {
          [v10 setObject:v51 forKey:@"AUVDM_Vendor"];
        }

        else
        {
          v52 = [(AUVDMAnalytics *)self log];
          if (OUTLINED_FUNCTION_7(v52))
          {
            OUTLINED_FUNCTION_1(&dword_0, v53, v54, "Could not find AUVDM Vendor!", v55, v56, v57, v58, v169, v170, v171, v173, v175, v177, v179, v181, v182, v183, v184, v185, cf, v187, v188, v189, v190, v191, 0);
          }
        }

        v59 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v59, v60, v61, v62);
        OUTLINED_FUNCTION_6();
        v63 = OUTLINED_FUNCTION_3();
        v64 = castNSObjectToType(v63);

        if (v64)
        {
          [v10 setObject:v64 forKey:@"AUVDM_Product"];
        }

        else
        {
          v65 = [(AUVDMAnalytics *)self log];
          if (OUTLINED_FUNCTION_7(v65))
          {
            OUTLINED_FUNCTION_1(&dword_0, v66, v67, "Could not find AUVDM Product!", v68, v69, v70, v71, v169, v170, v171, v173, v175, v177, v179, v181, v182, v183, v184, v185, cf, v187, v188, v189, v190, v191, 0);
          }
        }

        v72 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v72, v73, v74, v75);
        OUTLINED_FUNCTION_6();
        v76 = OUTLINED_FUNCTION_3();
        v77 = castNSObjectToType(v76);

        v180 = v17;
        v174 = v77;
        if (v77)
        {
          [v10 setObject:v77 forKey:@"AUVDM_Manufacturer"];
        }

        else
        {
          v78 = [(AUVDMAnalytics *)self log];
          if (OUTLINED_FUNCTION_7(v78))
          {
            OUTLINED_FUNCTION_1(&dword_0, v79, v80, "Could not find AUVDM Manufacturer!", v81, v82, v83, v84, v169, v170, v171, 0, v175, v177, v17, v181, v182, v183, v184, v185, cf, v187, v188, v189, v190, v191, 0);
          }
        }

        v85 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v85, v86, v87, v88);
        OUTLINED_FUNCTION_6();
        v89 = OUTLINED_FUNCTION_3();
        v90 = castNSObjectToType(v89);

        v178 = v51;
        v172 = v90;
        if (v90)
        {
          [v10 setObject:v90 forKey:@"AUVDM_Model"];
        }

        else
        {
          v91 = [(AUVDMAnalytics *)self log];
          if (OUTLINED_FUNCTION_7(v91))
          {
            OUTLINED_FUNCTION_1(&dword_0, v92, v93, "Could not find AUVDM Model!", v94, v95, v96, v97, v169, v170, 0, v174, v175, v51, v180, v181, v182, v183, v184, v185, cf, v187, v188, v189, v190, v191, 0);
          }
        }

        v98 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v98, v99, v100, v101);
        OUTLINED_FUNCTION_6();
        v102 = OUTLINED_FUNCTION_3();
        v103 = castNSObjectToType(v102);

        v176 = v64;
        if (v103)
        {
          [v10 setObject:v103 forKey:@"AUVDM_FirmwareVersion"];
        }

        else
        {
          v104 = [(AUVDMAnalytics *)self log];
          if (OUTLINED_FUNCTION_7(v104))
          {
            OUTLINED_FUNCTION_1(&dword_0, v105, v106, "Could not find AUVDM FirmwareVersion!", v107, v108, v109, v110, v169, v170, v172, v174, v64, v178, v180, v181, v182, v183, v184, v185, cf, v187, v188, v189, v190, v191, 0);
          }
        }

        v111 = OUTLINED_FUNCTION_0();
        v115 = IORegistryEntryCreateCFProperty(v111, v112, v113, v114);
        v116 = v27[112];
        objc_opt_class();
        v117 = castNSObjectToType(v115);

        if (v117)
        {
          [v10 setObject:v117 forKey:@"AUVDM_HardwareVersion"];
        }

        else
        {
          v118 = [(AUVDMAnalytics *)self log];
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_9(&dword_0, v119, v120, "Could not find AUVDM HardwareVersion!", v121, v122, v123, v124, v169, v170, v172, v174, v176, v178, v180, v181, v182, v183, v184, v185, cf, v187, v188, v189, v190, v191, 0);
          }
        }

        v125 = OUTLINED_FUNCTION_0();
        v129 = IORegistryEntryCreateCFProperty(v125, v126, v127, v128);
        v130 = v27[112];
        objc_opt_class();
        v131 = castNSObjectToType(v129);

        if (v131)
        {
          [v10 setObject:v131 forKey:@"AUVDM_UserString"];
        }

        else
        {
          v132 = [(AUVDMAnalytics *)self log];
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_9(&dword_0, v133, v134, "Could not find AUVDM UserString!", v135, v136, v137, v138, v169, v170, v172, v174, v176, v178, v180, v181, v182, v183, v184, v185, cf, v187, v188, v189, v190, v191, 0);
          }
        }

        v139 = [v10 objectForKeyedSubscript:@"AUVDM_Manufacturer"];
        v140 = v139;
        if (v139 && [v139 length])
        {
          v141 = [NSScanner scannerWithString:v140];
          *buf = 0;
          if ([v141 scanHexInt:buf])
          {
            v142 = [NSNumber numberWithUnsignedInt:*buf];
            [OUTLINED_FUNCTION_5() setObject:? forKey:?];

            v143 = [(AUVDMAnalytics *)self log];
            if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
            {
              LOWORD(cf) = 0;
              _os_log_impl(&dword_0, v143, OS_LOG_TYPE_INFO, "Converted AUVDM Manufacturer to VID!", &cf, 2u);
            }
          }
        }

        v144 = [v10 objectForKeyedSubscript:@"AUVDM_Model"];
        v145 = v144;
        if (v144 && [v144 length])
        {
          v146 = [NSScanner scannerWithString:v145];
          *buf = 0;
          if ([v146 scanHexInt:buf])
          {
            v147 = [NSNumber numberWithUnsignedInt:*buf];
            [v10 setObject:v147 forKey:@"ProductID"];

            v148 = [(AUVDMAnalytics *)self log];
            if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
            {
              LOWORD(cf) = 0;
              _os_log_impl(&dword_0, v148, OS_LOG_TYPE_INFO, "Converted AUVDM Model to PID!", &cf, 2u);
            }
          }
        }

        v149 = [OUTLINED_FUNCTION_5() objectForKeyedSubscript:?];

        if (v149)
        {
          v150 = [OUTLINED_FUNCTION_5() objectForKeyedSubscript:?];
          [OUTLINED_FUNCTION_5() setObject:? forKey:?];
        }

        else
        {
          v150 = [(AUVDMAnalytics *)self log];
          if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_4(&dword_0, v150, v151, "Could not find AUVDM AccessoryName!", buf);
          }
        }

        v152 = [(AUVDMAnalytics *)self log];
        if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_8();
          _os_log_impl(&dword_0, v152, OS_LOG_TYPE_DEFAULT, "Sending analytics event... (eventName: %@)", buf, 0xCu);
        }

        v153 = [(AUVDMAnalytics *)self log];
        if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v193 = v10;
          _os_log_debug_impl(&dword_0, v153, OS_LOG_TYPE_DEBUG, "eventDict: %@", buf, 0xCu);
        }

        v18 = v10;
        if ((AnalyticsSendEventLazy() & 1) == 0)
        {
          v154 = [(AUVDMAnalytics *)self log];
          if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v193 = @"com.apple.ioport.transport.protocol.AppleUVDM.published";
            _os_log_error_impl(&dword_0, v154, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", buf, 0xCu);
          }
        }

LABEL_100:
        return;
      }
    }

    else
    {
      v36 = [(AUVDMAnalytics *)self log];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4(v164, v165, v166, v167, v168);
      }
    }

    cf = 0;
    v37 = OUTLINED_FUNCTION_0();
    IORegistryEntryCreateCFProperties(v37, v38, v39, v40);
    v31 = [(AUVDMAnalytics *)self log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_2();
      _os_log_fault_impl(v155, v156, OS_LOG_TYPE_FAULT, v157, v158, 0xCu);
    }

    goto LABEL_38;
  }
}

- (void)_startEventMonitoring
{
  if (os_log_type_enabled(self, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    OUTLINED_FUNCTION_4(&dword_0, self, v2, "IOServiceMatching failed", v3);
  }
}

@end