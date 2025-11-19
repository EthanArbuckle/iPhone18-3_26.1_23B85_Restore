@interface CIOAnalytics
- (BOOL)_startEventMonitoring;
- (CIOAnalytics)init;
- (void)_handleServiceMatched:(unsigned int)a3;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation CIOAnalytics

- (CIOAnalytics)init
{
  v12.receiver = self;
  v12.super_class = CIOAnalytics;
  v2 = [(CIOAnalytics *)&v12 init];
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
  v3 = [(CIOAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting %@...", buf, 0xCu);
  }

  v6 = [(CIOAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __21__CIOAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(v6, block);
}

void __21__CIOAnalytics_start__block_invoke(uint64_t a1)
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
  v3 = [(CIOAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping %@...", buf, 0xCu);
  }

  v6 = [(CIOAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __20__CIOAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(v6, block);
}

void __20__CIOAnalytics_stop__block_invoke(uint64_t a1)
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
  if ([(CIOAnalytics *)self monitoring]|| ![(CIOAnalytics *)self started])
  {

    return [(CIOAnalytics *)self monitoring];
  }

  else
  {
    v3 = [(CIOAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting matching notifications...", buf, 2u);
    }

    v4 = [(CIOAnalytics *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v13, 2u);
    }

    [(CIOAnalytics *)self setMonitoring:1];
    [(CIOAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    v5 = [(CIOAnalytics *)self ioNotificationPort];
    v6 = [(CIOAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(v5, v6);

    v7 = IOServiceMatching("IOThunderboltSwitch");
    v8 = [(CIOAnalytics *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(AUVDMAnalytics *)v7 _startEventMonitoring];
    }

    v9 = [(CIOAnalytics *)self ioNotificationPort];
    v10 = v7;
    v11 = IOServiceAddMatchingNotification(v9, "IOServiceFirstMatch", v10, _servicesMatched_0, self, &self->_ioServiceMatchingIterator);
    if (v11)
    {
      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      _servicesMatched_0(self, self->_ioServiceMatchingIterator);
    }

    return v11 == 0;
  }
}

- (void)_stopEventMonitoring
{
  if ([(CIOAnalytics *)self monitoring])
  {
    v3 = [(CIOAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(CIOAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(CIOAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(CIOAnalytics *)self ioNotificationPort]);
    }
  }
}

- (void)_handleServiceMatched:(unsigned int)a3
{
  if (a3)
  {
    memset(name, 0, 128);
    IORegistryEntryGetName(a3, name);
    v5 = [(CIOAnalytics *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v189 = name;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Service matched! (serviceName: %s)", buf, 0xCu);
    }

    if ([(CIOAnalytics *)self analyticsEventsEnabled])
    {
      HIDWORD(v183) = 0;
      if (!IORegistryEntryGetParentEntry(a3, "IOPort", &v183 + 1) && HIDWORD(v183))
      {
        if (!IOObjectConformsTo(HIDWORD(v183), "IOPortTransportStateCIO"))
        {
          v16 = [(CIOAnalytics *)self log];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v189 = "IOPort";
            _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Could not find CIO transport in %s plane!", buf, 0xCu);
          }

          goto LABEL_100;
        }

        v6 = objc_alloc_init(NSMutableDictionary);
        OUTLINED_FUNCTION_2_1();
        CFProperty = IORegistryEntryCreateCFProperty(v7, v8, v9, v10);
        objc_opt_class();
        v12 = OUTLINED_FUNCTION_3();
        v13 = castNSObjectToType(v12);

        if (v13)
        {
          [v6 setObject:v13 forKey:@"PortType"];
        }

        else
        {
          v17 = [(CIOAnalytics *)self log];
          if (OUTLINED_FUNCTION_5_0(v17))
          {
            OUTLINED_FUNCTION_0_1(&dword_0, v18, v19, "Could not find parent port type!", v20, v21, v22, v23, v171, v173, v175, v177, v178, v179, v180, v181, cf, v183, v184, v185, v186, v187, 0);
          }
        }

        OUTLINED_FUNCTION_2_1();
        IORegistryEntryCreateCFProperty(v24, v25, v26, v27);
        OUTLINED_FUNCTION_6_0();
        v28 = OUTLINED_FUNCTION_3();
        v29 = castNSObjectToType(v28);

        v30 = &IOIteratorNext_ptr;
        v174 = v29;
        if (v29)
        {
          [v6 setObject:v29 forKey:@"PortNumber"];
          if (v13)
          {
            v31 = IOServiceMatching("IOPort");
            v184 = @"PortType";
            v185 = @"PortNumber";
            v186 = v13;
            v187 = v29;
            v32 = [NSDictionary dictionaryWithObjects:&v186 forKeys:&v184 count:2];
            [(__CFDictionary *)v31 setObject:v32 forKey:@"IOPropertyMatch"];

            v33 = [(CIOAnalytics *)self log];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v189 = v31;
              OUTLINED_FUNCTION_1_1();
              _os_log_debug_impl(v167, v168, OS_LOG_TYPE_DEBUG, v169, v170, 0xCu);
            }

            v30 = kIOMainPortDefault;
            v34 = v31;
            MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v34);
            if (MatchingService)
            {
              v36 = MatchingService;
              OUTLINED_FUNCTION_2_1();
              IORegistryEntryCreateCFProperty(v37, v38, v39, v40);
              OUTLINED_FUNCTION_6_0();
              v41 = OUTLINED_FUNCTION_3();
              v42 = castNSObjectToType(v41);

              if (v42)
              {
                [v6 setObject:v42 forKey:@"PortBuiltIn"];
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                OUTLINED_FUNCTION_4(&dword_0, &_os_log_default, v55, "Could not find if parent port is built-in!", buf);
              }

              OUTLINED_FUNCTION_2_1();
              v30 = IORegistryEntryCreateCFProperty(v56, v57, v58, v59);
              objc_opt_class();
              v60 = OUTLINED_FUNCTION_3();
              v33 = castNSObjectToType(v60);

              if (v33)
              {
                OUTLINED_FUNCTION_7_0();
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                OUTLINED_FUNCTION_4(&dword_0, &_os_log_default, v61, "Could not find parent port connection UUID!", buf);
              }

              IOObjectRelease(v36);
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              OUTLINED_FUNCTION_4(&dword_0, &_os_log_default, v54, "Could not find parent port!", buf);
            }

LABEL_44:
            OUTLINED_FUNCTION_2_1();
            IORegistryEntryCreateCFProperty(v62, v63, v64, v65);
            OUTLINED_FUNCTION_6_0();
            v66 = OUTLINED_FUNCTION_3();
            v67 = castNSObjectToType(v66);

            if (v67)
            {
              [v6 setObject:v67 forKey:@"Generation"];
            }

            else
            {
              v68 = [(CIOAnalytics *)self log];
              if (OUTLINED_FUNCTION_5_0(v68))
              {
                OUTLINED_FUNCTION_0_1(&dword_0, v69, v70, "Could not find generation!", v71, v72, v73, v74, v171, v174, v175, v177, v178, v179, v180, v181, cf, v183, v184, v185, v186, v187, 0);
              }
            }

            OUTLINED_FUNCTION_2_1();
            IORegistryEntryCreateCFProperty(v75, v76, v77, v78);
            OUTLINED_FUNCTION_6_0();
            v79 = OUTLINED_FUNCTION_3();
            v80 = castNSObjectToType(v79);

            if (v80)
            {
              [v6 setObject:v80 forKey:@"LegacyAdapter"];
            }

            else
            {
              v81 = [(CIOAnalytics *)self log];
              if (OUTLINED_FUNCTION_5_0(v81))
              {
                OUTLINED_FUNCTION_0_1(&dword_0, v82, v83, "Could not find Legacy Adapter!", v84, v85, v86, v87, v171, v174, v175, v177, v178, v179, v180, v181, cf, v183, v184, v185, v186, v187, 0);
              }
            }

            OUTLINED_FUNCTION_2_1();
            IORegistryEntryCreateCFProperty(v88, v89, v90, v91);
            OUTLINED_FUNCTION_6_0();
            v92 = OUTLINED_FUNCTION_3();
            v93 = castNSObjectToType(v92);

            v176 = v13;
            if (v93)
            {
              [v6 setObject:v93 forKey:@"LinkTrainingMode"];
            }

            else
            {
              v94 = [(CIOAnalytics *)self log];
              if (OUTLINED_FUNCTION_5_0(v94))
              {
                OUTLINED_FUNCTION_0_1(&dword_0, v95, v96, "Could not find link training mode!", v97, v98, v99, v100, v171, v174, v13, v177, v178, v179, v180, v181, cf, v183, v184, v185, v186, v187, 0);
              }
            }

            OUTLINED_FUNCTION_2_1();
            IORegistryEntryCreateCFProperty(v101, v102, v103, v104);
            OUTLINED_FUNCTION_6_0();
            v105 = OUTLINED_FUNCTION_3();
            v106 = castNSObjectToType(v105);

            if (v106)
            {
              [v6 setObject:v106 forKey:@"CableSpeed"];
            }

            else
            {
              v107 = [(CIOAnalytics *)self log];
              if (OUTLINED_FUNCTION_5_0(v107))
              {
                OUTLINED_FUNCTION_0_1(&dword_0, v108, v109, "Could not find cable speed!", v110, v111, v112, v113, v171, v174, v176, v177, v178, v179, v180, v181, cf, v183, v184, v185, v186, v187, 0);
              }
            }

            OUTLINED_FUNCTION_2_1();
            IORegistryEntryCreateCFProperty(v114, v115, v116, v117);
            OUTLINED_FUNCTION_6_0();
            v118 = OUTLINED_FUNCTION_3();
            v119 = castNSObjectToType(v118);

            if (v119)
            {
              [v6 setObject:v119 forKey:@"CableGeneration"];
              v120 = &IOIteratorNext_ptr;
            }

            else
            {
              v121 = [(CIOAnalytics *)self log];
              v120 = &IOIteratorNext_ptr;
              if (OUTLINED_FUNCTION_5_0(v121))
              {
                OUTLINED_FUNCTION_0_1(&dword_0, v122, v123, "Could not find cable generation!", v124, v125, v126, v127, v171, v174, v176, v177, v178, v179, v180, v181, cf, v183, v184, v185, v186, v187, 0);
              }
            }

            OUTLINED_FUNCTION_2_1();
            v132 = IORegistryEntryCreateCFProperty(v128, v129, v130, v131);
            v133 = v120[120];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v134 = [v132 objectForKeyedSubscript:@"Device Vendor ID"];
              if (v134)
              {
                OUTLINED_FUNCTION_8_0();
              }

              v135 = [v132 objectForKeyedSubscript:@"Device Vendor Name"];

              if (v135)
              {
                OUTLINED_FUNCTION_7_0();
              }

              v136 = [v132 objectForKeyedSubscript:@"Device Model ID"];

              if (v136)
              {
                OUTLINED_FUNCTION_8_0();
              }

              v137 = [v132 objectForKeyedSubscript:{@"Device Model Revision", v106}];

              if (v137)
              {
                OUTLINED_FUNCTION_7_0();
              }

              v138 = v93;
              v139 = [v132 objectForKeyedSubscript:@"Device Model Name"];

              if (v139)
              {
                OUTLINED_FUNCTION_8_0();
              }

              v140 = v80;
              v141 = [v132 objectForKeyedSubscript:@"Vendor ID"];

              if (v141)
              {
                OUTLINED_FUNCTION_7_0();
              }

              v142 = v67;
              v143 = [v132 objectForKeyedSubscript:@"Device ID"];

              if (v143)
              {
                OUTLINED_FUNCTION_8_0();
              }

              v144 = [v132 objectForKeyedSubscript:@"ROM Version"];

              if (v144)
              {
                [v6 setObject:v144 forKey:@"ROMVersion"];
              }

              v33 = [v132 objectForKeyedSubscript:@"EEPROM Version"];

              if (v33)
              {
                OUTLINED_FUNCTION_7_0();
              }

              v67 = v142;
              v80 = v140;
              v93 = v138;
              v106 = v172;
            }

            else
            {
              v145 = [(CIOAnalytics *)self log];
              if (OUTLINED_FUNCTION_5_0(v145))
              {
                OUTLINED_FUNCTION_0_1(&dword_0, v146, v147, "Could not find metadata!", v148, v149, v150, v151, v171, v174, v176, v177, v178, v179, v180, v181, cf, v183, v184, v185, v186, v187, 0);
              }
            }

            v152 = [(CIOAnalytics *)self log];
            if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v189 = @"com.apple.ioport.transport.CIO.published";
              OUTLINED_FUNCTION_1_1();
              _os_log_impl(v153, v154, OS_LOG_TYPE_DEFAULT, v155, v156, 0xCu);
            }

            v157 = [(CIOAnalytics *)self log];
            if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v189 = v6;
              OUTLINED_FUNCTION_1_1();
              _os_log_debug_impl(v159, v160, OS_LOG_TYPE_DEBUG, v161, v162, 0xCu);
            }

            v16 = v6;
            if ((AnalyticsSendEventLazy() & 1) == 0)
            {
              v158 = [(CIOAnalytics *)self log];
              if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v189 = @"com.apple.ioport.transport.CIO.published";
                _os_log_error_impl(&dword_0, v158, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", buf, 0xCu);
              }
            }

LABEL_100:
            IOObjectRelease(HIDWORD(v183));
            return;
          }
        }

        else
        {
          v43 = [(CIOAnalytics *)self log];
          if (OUTLINED_FUNCTION_5_0(v43))
          {
            OUTLINED_FUNCTION_0_1(&dword_0, v44, v45, "Could not find parent port number!", v46, v47, v48, v49, v171, 0, v175, v177, v178, v179, v180, v181, cf, v183, v184, v185, v186, v187, 0);
          }
        }

        cf = 0;
        OUTLINED_FUNCTION_2_1();
        IORegistryEntryCreateCFProperties(v50, v51, v52, v53);
        v33 = [(CIOAnalytics *)self log];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v189 = 0;
          OUTLINED_FUNCTION_1_1();
          _os_log_fault_impl(v163, v164, OS_LOG_TYPE_FAULT, v165, v166, 0xCu);
        }

        goto LABEL_44;
      }

      v14 = [(CIOAnalytics *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v189 = "IOPort";
        v15 = "Could not find parent entry in %s plane!";
        goto LABEL_14;
      }
    }

    else
    {
      v14 = [(CIOAnalytics *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v189 = @"com.apple.ioport.transport.CIO.published";
        v15 = "Analytics disabled for this event - ignoring... (eventName: %@)";
LABEL_14:
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
      }
    }
  }
}

@end