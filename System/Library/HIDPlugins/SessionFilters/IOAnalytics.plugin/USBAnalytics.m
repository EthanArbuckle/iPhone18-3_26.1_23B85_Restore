@interface USBAnalytics
- (BOOL)_startEventMonitoring;
- (USBAnalytics)init;
- (void)_handleServiceMatched:(unsigned int)a3;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation USBAnalytics

- (USBAnalytics)init
{
  v12.receiver = self;
  v12.super_class = USBAnalytics;
  v2 = [(USBAnalytics *)&v12 init];
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
  v3 = [(USBAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting %@...", buf, 0xCu);
  }

  v6 = [(USBAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __21__USBAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(v6, block);
}

void __21__USBAnalytics_start__block_invoke(uint64_t a1)
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
  v3 = [(USBAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping %@...", buf, 0xCu);
  }

  v6 = [(USBAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __20__USBAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(v6, block);
}

void __20__USBAnalytics_stop__block_invoke(uint64_t a1)
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
  if ([(USBAnalytics *)self monitoring]|| ![(USBAnalytics *)self started])
  {

    return [(USBAnalytics *)self monitoring];
  }

  else
  {
    v3 = [(USBAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting matching notifications...", buf, 2u);
    }

    v4 = [(USBAnalytics *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v12, 2u);
    }

    [(USBAnalytics *)self setMonitoring:1];
    [(USBAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    v5 = [(USBAnalytics *)self ioNotificationPort];
    v6 = [(USBAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(v5, v6);

    v7 = IOServiceMatching("IOUSBHostDevice");
    v8 = [(USBAnalytics *)self ioNotificationPort];
    v9 = v7;
    v10 = IOServiceAddMatchingNotification(v8, "IOServiceFirstMatch", v9, _servicesMatched_2, self, &self->_ioServiceMatchingIterator);
    if (v10)
    {
      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      _servicesMatched_2(self, self->_ioServiceMatchingIterator);
    }

    return v10 == 0;
  }
}

- (void)_stopEventMonitoring
{
  if ([(USBAnalytics *)self monitoring])
  {
    v3 = [(USBAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(USBAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(USBAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(USBAnalytics *)self ioNotificationPort]);
    }
  }
}

- (void)_handleServiceMatched:(unsigned int)a3
{
  if (a3)
  {
    memset(name, 0, 128);
    IORegistryEntryGetName(a3, name);
    v5 = [(USBAnalytics *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v145 = name;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Service matched! (serviceName: %s)", buf, 0xCu);
    }

    if ([(USBAnalytics *)self analyticsEventsEnabled])
    {
      HIDWORD(v139) = 0;
      if (!IORegistryEntryGetParentEntry(a3, "IOPort", &v139 + 1) && HIDWORD(v139))
      {
        if (!IOObjectConformsTo(HIDWORD(v139), "IOPortTransportStateUSB"))
        {
          v15 = [(USBAnalytics *)self log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v145 = "IOPort";
            _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Could not find USB transport in %s plane!", buf, 0xCu);
          }

          goto LABEL_101;
        }

        v6 = objc_alloc_init(NSMutableDictionary);
        OUTLINED_FUNCTION_2_1();
        CFProperty = IORegistryEntryCreateCFProperty(v7, v8, v9, v10);
        objc_opt_class();
        v12 = castNSObjectToType(CFProperty);

        if (v12)
        {
          OUTLINED_FUNCTION_3_2();
        }

        else
        {
          v16 = [(USBAnalytics *)self log];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_4(&dword_0, v16, v17, "Could not find parent port type!", buf);
          }
        }

        OUTLINED_FUNCTION_2_1();
        v22 = IORegistryEntryCreateCFProperty(v18, v19, v20, v21);
        objc_opt_class();
        v23 = castNSObjectToType(v22);

        v131 = v12;
        if (v23)
        {
          [v6 setObject:v23 forKey:@"PortNumber"];
          if (v12)
          {
            v24 = IOServiceMatching("IOPort");
            v140 = @"PortType";
            v141 = @"PortNumber";
            v142 = v12;
            v143 = v23;
            v25 = [NSDictionary dictionaryWithObjects:&v142 forKeys:&v140 count:2];
            [(__CFDictionary *)v24 setObject:v25 forKey:@"IOPropertyMatch"];

            v26 = v24;
            MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v26);
            if (MatchingService)
            {
              v28 = MatchingService;
              OUTLINED_FUNCTION_2_1();
              v33 = IORegistryEntryCreateCFProperty(v29, v30, v31, v32);
              objc_opt_class();
              v34 = castNSObjectToType(v33);

              if (v34)
              {
                [v6 setObject:v34 forKey:{@"PortBuiltIn", v131}];
              }

              else
              {
                v53 = [(USBAnalytics *)self log];
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  OUTLINED_FUNCTION_5_2();
                  OUTLINED_FUNCTION_4(v126, v127, v128, v129, v130);
                }
              }

              OUTLINED_FUNCTION_2_1();
              v58 = IORegistryEntryCreateCFProperty(v54, v55, v56, v57);
              objc_opt_class();
              v59 = castNSObjectToType(v58);

              if (v59)
              {
                OUTLINED_FUNCTION_3_2();
              }

              else
              {
                v60 = [(USBAnalytics *)self log];
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  OUTLINED_FUNCTION_4(&dword_0, v60, v61, "Could not find parent port connection UUID!", buf);
                }
              }

              IOObjectRelease(v28);
            }

            else
            {
              v34 = [(USBAnalytics *)self log];
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                OUTLINED_FUNCTION_1_3(&dword_0, v47, v48, "Could not find parent port!", v49, v50, v51, v52, v12, v133, v134, v135, v136, v137, cf, v139, v140, v141, v142, v143, 0);
              }
            }

            goto LABEL_44;
          }
        }

        else
        {
          v35 = [(USBAnalytics *)self log];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_3(&dword_0, v36, v37, "Could not find parent port number!", v38, v39, v40, v41, v12, v133, v134, v135, v136, v137, cf, v139, v140, v141, v142, v143, 0);
          }
        }

        cf = 0;
        OUTLINED_FUNCTION_2_1();
        IORegistryEntryCreateCFProperties(v42, v43, v44, v45);
        v46 = [(USBAnalytics *)self log];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v145 = 0;
          _os_log_fault_impl(&dword_0, v46, OS_LOG_TYPE_FAULT, "Could not find parent port type and number! (serviceProperties: %@)", buf, 0xCu);
        }

LABEL_44:
        OUTLINED_FUNCTION_2_1();
        v66 = IORegistryEntryCreateCFProperty(v62, v63, v64, v65);
        objc_opt_class();
        v67 = castNSObjectToType(v66);

        if (v67)
        {
          [v6 setObject:v67 forKey:@"TransportTunneled"];
        }

        else
        {
          v68 = [(USBAnalytics *)self log];
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_3(&dword_0, v69, v70, "Could not find if transport is tunneled!", v71, v72, v73, v74, v131, v133, v134, v135, v136, v137, cf, v139, v140, v141, v142, v143, 0);
          }
        }

        OUTLINED_FUNCTION_2_1();
        v79 = IORegistryEntryCreateCFProperty(v75, v76, v77, v78);
        objc_opt_class();
        v80 = castNSObjectToType(v79);

        if (v80)
        {
          [v6 setObject:v80 forKey:@"DataRole"];
        }

        else
        {
          v81 = [(USBAnalytics *)self log];
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_4(&dword_0, v81, v82, "USB data role not found!", buf);
          }
        }

        if (IOObjectConformsTo(HIDWORD(v139), "IOPortTransportStateUSB2"))
        {
          v83 = 1;
        }

        else
        {
          if (!IOObjectConformsTo(HIDWORD(v139), "IOPortTransportStateUSB3"))
          {
            v83 = 0;
            v89 = 0;
            goto LABEL_59;
          }

          v83 = 2;
        }

        OUTLINED_FUNCTION_2_1();
        v88 = IORegistryEntryCreateCFProperty(v84, v85, v86, v87);
        objc_opt_class();
        v89 = castNSObjectToType(v88);

LABEL_59:
        v90 = [NSNumber numberWithUnsignedInt:v83, v131];
        OUTLINED_FUNCTION_4_1();

        if (v89)
        {
          v91 = [v89 intValue];
          if (v91 - 1 >= 3)
          {
            v92 = 0;
          }

          else
          {
            v92 = v91 + 3;
          }

          if (v91 - 1 >= 3)
          {
            v93 = 0;
          }

          else
          {
            v93 = v91;
          }

          if (v83 != 1)
          {
            v93 = 0;
          }

          if (v83 == 2)
          {
            v94 = v92;
          }

          else
          {
            v94 = v93;
          }

          v95 = [NSNumber numberWithUnsignedInt:v94];
          OUTLINED_FUNCTION_3_2();
        }

        else
        {
          v95 = [(USBAnalytics *)self log];
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_5_2();
            OUTLINED_FUNCTION_4(v121, v122, v123, v124, v125);
          }
        }

        OUTLINED_FUNCTION_2_1();
        v100 = IORegistryEntryCreateCFProperty(v96, v97, v98, v99);
        objc_opt_class();
        v101 = castNSObjectToType(v100);

        if (v101)
        {
          v102 = [v101 objectForKeyedSubscript:@"Vendor ID"];
          if (v102)
          {
            OUTLINED_FUNCTION_4_1();
          }

          v103 = [v101 objectForKeyedSubscript:@"Product ID"];

          if (v103)
          {
            OUTLINED_FUNCTION_3_2();
          }

          v104 = [v101 objectForKeyedSubscript:@"Manufacturer"];

          if (v104)
          {
            OUTLINED_FUNCTION_4_1();
          }

          v105 = [v101 objectForKeyedSubscript:@"Product"];

          if (v105)
          {
            OUTLINED_FUNCTION_3_2();
          }

          v106 = [v101 objectForKeyedSubscript:@"Device Class"];

          if (v106)
          {
            OUTLINED_FUNCTION_4_1();
          }

          v107 = [v101 objectForKeyedSubscript:@"Device Subclass"];

          if (v107)
          {
            OUTLINED_FUNCTION_3_2();
          }

          v108 = [v101 objectForKeyedSubscript:@"Device Protocol"];

          if (v108)
          {
            OUTLINED_FUNCTION_4_1();
          }

          v109 = [v101 objectForKeyedSubscript:@"Device Function"];

          if (v109)
          {
            OUTLINED_FUNCTION_3_2();
          }
        }

        v110 = [(USBAnalytics *)self log];
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v145 = @"com.apple.ioport.transport.USB.published";
          OUTLINED_FUNCTION_5_2();
          _os_log_impl(v111, v112, OS_LOG_TYPE_DEFAULT, v113, v114, 0xCu);
        }

        v115 = [(USBAnalytics *)self log];
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v145 = v6;
          OUTLINED_FUNCTION_5_2();
          _os_log_debug_impl(v117, v118, OS_LOG_TYPE_DEBUG, v119, v120, 0xCu);
        }

        v15 = v6;
        if ((AnalyticsSendEventLazy() & 1) == 0)
        {
          v116 = [(USBAnalytics *)self log];
          if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v145 = @"com.apple.ioport.transport.USB.published";
            _os_log_error_impl(&dword_0, v116, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", buf, 0xCu);
          }
        }

LABEL_101:
        IOObjectRelease(HIDWORD(v139));
        return;
      }

      v13 = [(USBAnalytics *)self log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v145 = "IOPort";
        v14 = "Could not find parent entry in %s plane!";
        goto LABEL_14;
      }
    }

    else
    {
      v13 = [(USBAnalytics *)self log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v145 = @"com.apple.ioport.transport.USB.published";
        v14 = "Analytics disabled for this event - ignoring... (eventName: %@)";
LABEL_14:
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
      }
    }
  }
}

@end