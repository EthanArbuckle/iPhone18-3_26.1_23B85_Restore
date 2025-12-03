@interface DPAnalytics
- (BOOL)_startEventMonitoring;
- (DPAnalytics)init;
- (void)_handleServiceMatched:(unsigned int)matched;
- (void)_startEventMonitoring;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation DPAnalytics

- (DPAnalytics)init
{
  v12.receiver = self;
  v12.super_class = DPAnalytics;
  v2 = [(DPAnalytics *)&v12 init];
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
  v3 = [(DPAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting %@...", buf, 0xCu);
  }

  queue = [(DPAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __20__DPAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __20__DPAnalytics_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) started];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __20__DPAnalytics_start__block_invoke_cold_1();
    }
  }

  else
  {
    [v3 setStarted:1];
    v5 = *(a1 + 32);

    [v5 _startEventMonitoring];
  }
}

- (void)stop
{
  v3 = [(DPAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping %@...", buf, 0xCu);
  }

  queue = [(DPAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __19__DPAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __19__DPAnalytics_stop__block_invoke(uint64_t a1)
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
      __19__DPAnalytics_stop__block_invoke_cold_1();
    }
  }
}

- (BOOL)_startEventMonitoring
{
  if (![(DPAnalytics *)self monitoring]&& [(DPAnalytics *)self started])
  {
    v3 = [(DPAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting matching notifications...", buf, 2u);
    }

    v4 = [(DPAnalytics *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v13, 2u);
    }

    [(DPAnalytics *)self setMonitoring:1];
    [(DPAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    ioNotificationPort = [(DPAnalytics *)self ioNotificationPort];
    queue = [(DPAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(ioNotificationPort, queue);

    v7 = IOServiceMatching("IOPortTransportStateDisplayPort");
    v8 = v7;
    if (v7)
    {
      [(__CFDictionary *)v7 setObject:&off_24100 forKey:@"IOPropertyExistsMatch"];
      [(__CFDictionary *)v8 setObject:&off_24168 forKey:@"IOPropertyMatch"];
      v9 = [(DPAnalytics *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(AUVDMAnalytics *)v8 _startEventMonitoring];
      }

      v10 = IOServiceAddMatchingNotification([(DPAnalytics *)self ioNotificationPort], "IOServiceMatched", v8, _servicesMatched_4, self, &self->_ioServiceMatchingIterator);
      if (!v10)
      {
        _servicesMatched_4(self, self->_ioServiceMatchingIterator);
        v11 = 1;
LABEL_12:

        return v11;
      }

      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      [(DPAnalytics *)self _startEventMonitoring];
    }

    v11 = 0;
    goto LABEL_12;
  }

  return [(DPAnalytics *)self monitoring];
}

- (void)_stopEventMonitoring
{
  if ([(DPAnalytics *)self monitoring])
  {
    v3 = [(DPAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(DPAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(DPAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(DPAnalytics *)self ioNotificationPort]);
    }
  }
}

- (void)_handleServiceMatched:(unsigned int)matched
{
  if (matched)
  {
    memset(name, 0, sizeof(name));
    IORegistryEntryGetName(matched, name);
    v5 = [(DPAnalytics *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v6, v7, OS_LOG_TYPE_INFO, v8, v9, 0xCu);
    }

    if (![(DPAnalytics *)self analyticsEventsEnabled])
    {
      v5 = [(DPAnalytics *)self log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v18, v19, OS_LOG_TYPE_INFO, v20, v21, 0xCu);
      }

      goto LABEL_156;
    }

    if (!IOObjectConformsTo(matched, "IOPortTransportStateDisplayPort"))
    {
      v22 = [(DPAnalytics *)self log];
      if (OUTLINED_FUNCTION_18(v22))
      {
        OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_8_1();
        _os_log_error_impl(v23, v24, OS_LOG_TYPE_ERROR, v25, v26, 0xCu);
      }

      goto LABEL_156;
    }

    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = OUTLINED_FUNCTION_1_6();
    CFProperty = IORegistryEntryCreateCFProperty(v11, v12, v13, v14);
    objc_opt_class();
    v16 = OUTLINED_FUNCTION_1_5();
    v17 = castNSObjectToType(v16);

    if (v17)
    {
      [(__CFString *)v10 setObject:v17 forKey:@"PortType"];
    }

    else
    {
      v27 = [(DPAnalytics *)self log];
      if (OUTLINED_FUNCTION_5_0(v27))
      {
        OUTLINED_FUNCTION_4_3(&dword_0, v28, v29, "Could not find parent port type!", v30, v31, v32, v33, v309, v310, v311, v312, v313, v315, v317, v318, v322, v324, v326, v328, v330, v332, v334, v337, v339, v340, v341, v342, v343, cf, 0);
      }
    }

    v34 = OUTLINED_FUNCTION_1_6();
    v38 = IORegistryEntryCreateCFProperty(v34, v35, v36, v37);
    objc_opt_class();
    v39 = OUTLINED_FUNCTION_1_5();
    v40 = castNSObjectToType(v39);

    if (v40)
    {
      [(__CFString *)v10 setObject:v40 forKey:@"PortNumber"];
      if (v17)
      {
        v41 = IOServiceMatching("IOPort");
        v353[0] = @"PortType";
        v353[1] = @"PortNumber";
        v354[0] = v17;
        v354[1] = v40;
        v335 = v40;
        v42 = [NSDictionary dictionaryWithObjects:v354 forKeys:v353 count:2];
        [(__CFDictionary *)v41 setObject:v42 forKey:@"IOPropertyMatch"];

        v43 = [(DPAnalytics *)self log];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_15();
          _os_log_debug_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "matchingDict: %@", buf, 0xCu);
        }

        v44 = v41;
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v44);
        if (MatchingService)
        {
          v46 = MatchingService;
          v47 = IORegistryEntryCreateCFProperty(MatchingService, @"BuiltIn", kCFAllocatorDefault, 0);
          objc_opt_class();
          v48 = castNSObjectToType(v47);

          selfCopy = self;
          if (v48)
          {
            v50 = v17;
            [(__CFString *)v10 setObject:v48 forKey:@"PortBuiltIn"];
          }

          else
          {
            v69 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              OUTLINED_FUNCTION_5_4();
              _os_log_error_impl(v277, v278, v279, v280, v281, v282);
            }

            v50 = v17;
          }

          v70 = IORegistryEntryCreateCFProperty(v46, @"ConnectionUUID", kCFAllocatorDefault, 0);
          objc_opt_class();
          v71 = castNSObjectToType(v70);

          if (v71)
          {
            [(__CFString *)v10 setObject:v71 forKey:@"ConnectionUUID"];
          }

          else
          {
            v72 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              OUTLINED_FUNCTION_5_4();
              _os_log_error_impl(v283, v284, v285, v286, v287, v288);
            }
          }

          v17 = v50;
          IOObjectRelease(v46);

          self = selfCopy;
        }

        else
        {
          v48 = &_os_log_default;
          v63 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_0_6();
            _os_log_error_impl(v64, v65, v66, v67, v68, 2u);
          }
        }

        v40 = v335;
        goto LABEL_40;
      }
    }

    else
    {
      v51 = [(DPAnalytics *)self log];
      if (OUTLINED_FUNCTION_5_0(v51))
      {
        OUTLINED_FUNCTION_4_3(&dword_0, v52, v53, "Could not find parent port number!", v54, v55, v56, v57, v309, v310, v311, v312, v313, v315, v317, v318, v322, v324, v326, v328, v330, v332, v334, v337, v339, v340, v341, v342, v343, cf, 0);
      }
    }

    cf = 0;
    v58 = OUTLINED_FUNCTION_1_6();
    IORegistryEntryCreateCFProperties(v58, v59, v60, v61);
    v62 = [(DPAnalytics *)self log];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_5_3();
      _os_log_fault_impl(&dword_0, v62, OS_LOG_TYPE_FAULT, "Could not find parent port type and number! (serviceProperties: %@)", buf, 0xCu);
    }

LABEL_40:
    v73 = OUTLINED_FUNCTION_1_6();
    v77 = IORegistryEntryCreateCFProperty(v73, v74, v75, v76);
    objc_opt_class();
    v78 = OUTLINED_FUNCTION_1_5();
    v79 = castNSObjectToType(v78);

    v336 = v79;
    selfCopy2 = self;
    if (v79)
    {
      v80 = v10;
      [(__CFString *)v10 setObject:v79 forKey:@"TransportTunneled"];
    }

    else
    {
      v80 = v10;
      v81 = [(DPAnalytics *)self log];
      if (OUTLINED_FUNCTION_5_0(v81))
      {
        OUTLINED_FUNCTION_4_3(&dword_0, v82, v83, "Could not find if transport is tunneled!", v84, v85, v86, v87, v309, v310, v311, v312, v313, v315, v317, v318, v322, v324, v326, v328, v330, v332, 0, self, v339, v340, v341, v342, v343, cf, 0);
      }
    }

    v88 = v40;
    v89 = OUTLINED_FUNCTION_1_6();
    IORegistryEntryCreateCFProperty(v89, v90, v91, v92);
    OUTLINED_FUNCTION_14();
    v93 = OUTLINED_FUNCTION_1_5();
    v94 = castNSObjectToType(v93);

    if (v94)
    {
      v95 = v17;
      OUTLINED_FUNCTION_12();
    }

    else
    {
      v96 = [(DPAnalytics *)selfCopy2 log];
      if (OUTLINED_FUNCTION_5_0(v96))
      {
        OUTLINED_FUNCTION_4_3(&dword_0, v97, v98, "Could not find role!", v99, v100, v101, v102, v309, v310, v311, v312, v313, v315, v317, v318, v322, v324, v326, v328, v330, v332, v336, selfCopy2, v339, v340, v341, v342, v343, cf, 0);
      }

      v95 = v17;
    }

    v103 = OUTLINED_FUNCTION_1_6();
    IORegistryEntryCreateCFProperty(v103, v104, v105, v106);
    OUTLINED_FUNCTION_14();
    v107 = OUTLINED_FUNCTION_1_5();
    v108 = castNSObjectToType(v107);

    v331 = v108;
    v327 = v95;
    if (v108)
    {
      [(__CFString *)v80 setObject:v108 forKey:@"MaxLaneCount"];
    }

    else
    {
      v109 = [(DPAnalytics *)selfCopy2 log];
      if (OUTLINED_FUNCTION_5_0(v109))
      {
        OUTLINED_FUNCTION_4_3(&dword_0, v110, v111, "Could not find maxLaneCount!", v112, v113, v114, v115, v309, v310, v311, v312, v313, v315, v317, v318, v322, v324, v95, v328, 0, v332, v336, selfCopy2, v339, v340, v341, v342, v343, cf, 0);
      }
    }

    v116 = OUTLINED_FUNCTION_1_6();
    IORegistryEntryCreateCFProperty(v116, v117, v118, v119);
    OUTLINED_FUNCTION_14();
    v120 = OUTLINED_FUNCTION_1_5();
    v121 = castNSObjectToType(v120);

    v329 = v121;
    if (v121)
    {
      [(__CFString *)v80 setObject:v121 forKey:@"LaneCount"];
      v122 = v88;
    }

    else
    {
      v123 = [(DPAnalytics *)selfCopy2 log];
      v122 = v88;
      if (OUTLINED_FUNCTION_5_0(v123))
      {
        OUTLINED_FUNCTION_4_3(&dword_0, v124, v125, "Could not find laneCount!", v126, v127, v128, v129, v309, v310, v311, v312, v313, v315, v317, v318, v322, v324, v327, 0, v331, v332, v336, selfCopy2, v339, v340, v341, v342, v343, cf, 0);
      }
    }

    v130 = OUTLINED_FUNCTION_1_6();
    IORegistryEntryCreateCFProperty(v130, v131, v132, v133);
    OUTLINED_FUNCTION_14();
    v134 = OUTLINED_FUNCTION_1_5();
    v135 = castNSObjectToType(v134);

    v136 = selfCopy2;
    v325 = v135;
    if (v135)
    {
      [(__CFString *)v80 setObject:v135 forKey:@"SinkCount"];
    }

    else
    {
      v137 = [(DPAnalytics *)selfCopy2 log];
      if (OUTLINED_FUNCTION_5_0(v137))
      {
        OUTLINED_FUNCTION_4_3(&dword_0, v138, v139, "Could not find sinkCount!", v140, v141, v142, v143, v309, v310, v311, v312, v313, v315, v317, v318, v322, 0, v327, v329, v331, v332, v336, selfCopy2, v339, v340, v341, v342, v343, cf, 0);
      }
    }

    v144 = OUTLINED_FUNCTION_1_6();
    IORegistryEntryCreateCFProperty(v144, v145, v146, v147);
    OUTLINED_FUNCTION_14();
    v148 = OUTLINED_FUNCTION_1_5();
    v149 = castNSObjectToType(v148);

    v150 = v149;
    v333 = v94;
    if (v149)
    {
      [(__CFString *)v80 setObject:v149 forKey:@"LinkRate"];
    }

    else
    {
      v151 = [(DPAnalytics *)v136 log];
      if (OUTLINED_FUNCTION_5_0(v151))
      {
        OUTLINED_FUNCTION_4_3(&dword_0, v152, v153, "Could not find link rate!", v154, v155, v156, v157, v309, v310, v311, v312, v313, v315, v317, v318, v322, v325, v327, v329, v331, v94, v336, selfCopy2, v339, v340, v341, v342, v343, cf, 0);
      }

      v150 = 0;
    }

    v158 = OUTLINED_FUNCTION_1_6();
    v162 = IORegistryEntryCreateCFProperty(v158, v159, v160, v161);
    objc_opt_class();
    v163 = castNSObjectToType(v162);

    if (v163)
    {
      [(__CFString *)v80 setObject:v163 forKey:@"TransportIndex"];
      v164 = v122;
    }

    else
    {
      v165 = [(DPAnalytics *)v136 log];
      v164 = v122;
      if (OUTLINED_FUNCTION_10(v165))
      {
        *buf = 0;
        OUTLINED_FUNCTION_0_6();
        _os_log_error_impl(v241, v242, v243, v244, v245, 2u);
      }
    }

    v166 = OUTLINED_FUNCTION_1_6();
    v170 = IORegistryEntryCreateCFProperty(v166, v167, v168, v169);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_147;
    }

    v171 = [v170 objectForKeyedSubscript:@"ManufacturerName"];
    v323 = v163;
    if (v171)
    {
      objc_opt_class();
      v162 = kACCCoreAnalytics_IOPort_Transport_DP_Field_ManufacturerID;
      if ((OUTLINED_FUNCTION_13() & 1) == 0)
      {
        objc_opt_class();
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_8_0();
          goto LABEL_90;
        }

        v181 = [(DPAnalytics *)v136 log];
        if (OUTLINED_FUNCTION_10(v181))
        {
          v289 = objc_opt_class();
          v316 = NSStringFromClass(v289);
          v290 = objc_opt_class();
          v317 = NSStringFromClass(v290);
          v291 = objc_opt_class();
          v292 = NSStringFromClass(v291);
          *buf = 138413058;
          v346 = @"ManufacturerID";
          v164 = v122;
          v347 = 2112;
          v348 = v316;
          v349 = 2112;
          v350 = v317;
          v351 = 2112;
          v352 = v292;
          v293 = v292;
          v314 = v292;
          OUTLINED_FUNCTION_0_6();
          _os_log_error_impl(v294, v295, v296, v297, v298, 0x2Au);
        }

LABEL_89:

LABEL_90:
        v182 = [v170 objectForKeyedSubscript:@"ProductID"];

        if (v182)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            OUTLINED_FUNCTION_12();
            goto LABEL_98;
          }

          v190 = [(DPAnalytics *)v136 log];
          if (OUTLINED_FUNCTION_18(v190))
          {
            v251 = objc_opt_class();
            v320 = NSStringFromClass(v251);
            v252 = objc_opt_class();
            v253 = NSStringFromClass(v252);
            *buf = 136315650;
            OUTLINED_FUNCTION_2_5();
            OUTLINED_FUNCTION_8_1();
            _os_log_error_impl(v254, v255, OS_LOG_TYPE_ERROR, v256, v257, 0x20u);
          }
        }

        else
        {
          v183 = [(DPAnalytics *)v136 log];
          if (OUTLINED_FUNCTION_18(v183))
          {
            *buf = 0;
            OUTLINED_FUNCTION_8_1();
            OUTLINED_FUNCTION_5_4();
            _os_log_error_impl(v184, v185, v186, v187, v188, v189);
          }
        }

LABEL_98:
        v191 = [v170 objectForKeyedSubscript:@"ProductName"];

        if (v191)
        {
          objc_opt_class();
          if (OUTLINED_FUNCTION_13())
          {
            OUTLINED_FUNCTION_8_0();
          }

          else
          {
            v192 = [(DPAnalytics *)v136 log];
            if (OUTLINED_FUNCTION_10(v192))
            {
              v258 = objc_opt_class();
              v321 = NSStringFromClass(v258);
              v259 = objc_opt_class();
              v260 = NSStringFromClass(v259);
              *buf = 136315650;
              OUTLINED_FUNCTION_2_5();
              OUTLINED_FUNCTION_0_6();
              _os_log_error_impl(v261, v262, v263, v264, v265, 0x20u);
            }
          }
        }

        v193 = [v170 objectForKeyedSubscript:@"Model Year"];

        if (v193)
        {
          v194 = kACCCoreAnalytics_IOPort_Transport_DP_Field_ModelYear;
        }

        else
        {
          v196 = [v170 objectForKeyedSubscript:@"Week of Manufacture"];
          v197 = v196;
          if (v196 && [v196 unsignedIntegerValue])
          {
            OUTLINED_FUNCTION_8_0();
          }

          else
          {
            v198 = [(DPAnalytics *)v136 log];
            if (OUTLINED_FUNCTION_10(v198))
            {
              *buf = 0;
              OUTLINED_FUNCTION_0_6();
              _os_log_error_impl(v266, v267, v268, v269, v270, 2u);
            }
          }

          v193 = [v170 objectForKeyedSubscript:@"Year of Manufacture"];

          if (!v193 || ![v193 unsignedIntegerValue])
          {
            v199 = [(DPAnalytics *)v136 log];
            if (OUTLINED_FUNCTION_18(v199))
            {
              *buf = 0;
              OUTLINED_FUNCTION_8_1();
              OUTLINED_FUNCTION_5_4();
              _os_log_error_impl(v271, v272, v273, v274, v275, v276);
            }

            goto LABEL_119;
          }

          v194 = kACCCoreAnalytics_IOPort_Transport_DP_Field_YearOfManufacture;
        }

        v195 = *v194;
        OUTLINED_FUNCTION_12();
LABEL_119:
        v200 = [v170 objectForKeyedSubscript:@"SinkDeviceOUI"];

        if (v200)
        {
          objc_opt_class();
          if (OUTLINED_FUNCTION_13())
          {
            if ([v200 length] == &dword_0 + 3)
            {
              v201 = *([OUTLINED_FUNCTION_9_0(objc_msgSend(v200 "bytes"))] + 1);
              OUTLINED_FUNCTION_6_3([v200 bytes]);
              v193 = [NSString stringWithFormat:@"%02X-%02X-%02X"];
              OUTLINED_FUNCTION_12();
            }

            else
            {
              v213 = [(DPAnalytics *)v136 log];
              if (OUTLINED_FUNCTION_10(v213))
              {
                [v200 length];
                OUTLINED_FUNCTION_15();
                OUTLINED_FUNCTION_3_5();
                OUTLINED_FUNCTION_0_6();
                _os_log_error_impl(v299, v300, v301, v302, v303, 0x1Cu);
              }
            }
          }

          else
          {
            v202 = [(DPAnalytics *)v136 log];
            if (OUTLINED_FUNCTION_10(v202))
            {
              v203 = objc_opt_class();
              v204 = NSStringFromClass(v203);
              v205 = objc_opt_class();
              v206 = NSStringFromClass(v205);
              OUTLINED_FUNCTION_15();
              v347 = 2112;
              v348 = v204;
              v349 = 2112;
              v350 = v207;
              OUTLINED_FUNCTION_0_6();
              _os_log_error_impl(v208, v209, v210, v211, v212, 0x20u);
            }
          }

          v163 = v323;
        }

        v214 = [v170 objectForKeyedSubscript:@"SinkDeviceID"];

        if (v214)
        {
          OUTLINED_FUNCTION_12();
        }

        v215 = [v170 objectForKeyedSubscript:@"BranchDeviceOUI"];

        if (v215)
        {
          objc_opt_class();
          if (OUTLINED_FUNCTION_13())
          {
            if ([v215 length] == &dword_0 + 3)
            {
              v216 = *([OUTLINED_FUNCTION_9_0(objc_msgSend(v215 "bytes"))] + 1);
              OUTLINED_FUNCTION_6_3([v215 bytes]);
              v163 = v323;
              v214 = [NSString stringWithFormat:@"%02X-%02X-%02X"];
              OUTLINED_FUNCTION_12();
            }

            else
            {
              v226 = [(DPAnalytics *)v136 log];
              if (OUTLINED_FUNCTION_10(v226))
              {
                [v215 length];
                *buf = 136315650;
                v346 = "BranchDeviceOUI";
                OUTLINED_FUNCTION_3_5();
                OUTLINED_FUNCTION_0_6();
                _os_log_error_impl(v304, v305, v306, v307, v308, 0x1Cu);
              }
            }
          }

          else
          {
            v217 = [(DPAnalytics *)v136 log];
            if (OUTLINED_FUNCTION_10(v217))
            {
              v218 = objc_opt_class();
              v319 = NSStringFromClass(v218);
              v219 = objc_opt_class();
              v220 = NSStringFromClass(v219);
              *buf = 136315650;
              OUTLINED_FUNCTION_2_5();
              OUTLINED_FUNCTION_0_6();
              _os_log_error_impl(v221, v222, v223, v224, v225, 0x20u);
            }
          }
        }

        v227 = [v170 objectForKeyedSubscript:@"BranchDeviceID"];

        if (v227)
        {
          OUTLINED_FUNCTION_12();
        }

        v228 = [v170 objectForKeyedSubscript:@"DFP Type"];

        if (v228)
        {
          OUTLINED_FUNCTION_8_0();
        }

        else
        {
          v229 = [(DPAnalytics *)v136 log];
          if (OUTLINED_FUNCTION_10(v229))
          {
            *buf = 0;
            OUTLINED_FUNCTION_0_6();
            _os_log_error_impl(v246, v247, v248, v249, v250, 2u);
          }
        }

LABEL_147:
        v230 = [(DPAnalytics *)v136 log];
        if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_5_3();
          OUTLINED_FUNCTION_8_1();
          _os_log_impl(v231, v232, OS_LOG_TYPE_DEFAULT, v233, v234, 0xCu);
        }

        v235 = [(DPAnalytics *)v136 log];
        if (os_log_type_enabled(v235, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v346 = v80;
          OUTLINED_FUNCTION_8_1();
          _os_log_debug_impl(v237, v238, OS_LOG_TYPE_DEBUG, v239, v240, 0xCu);
        }

        v5 = v80;
        if ((AnalyticsSendEventLazy() & 1) == 0)
        {
          v236 = [(DPAnalytics *)v136 log];
          if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v346 = @"com.apple.ioport.transport.DP.published";
            _os_log_error_impl(&dword_0, v236, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", buf, 0xCu);
          }
        }

LABEL_156:
        return;
      }

      if ([v171 length] == &dword_0 + 3)
      {
        v172 = *([OUTLINED_FUNCTION_9_0(objc_msgSend(v171 "bytes"))] + 1);
        OUTLINED_FUNCTION_6_3([v171 bytes]);
        v162 = [NSString stringWithFormat:@"%02X-%02X-%02X"];
        OUTLINED_FUNCTION_12();
        goto LABEL_89;
      }

      v180 = [(DPAnalytics *)v136 log];
      if (!OUTLINED_FUNCTION_10(v180))
      {
        goto LABEL_89;
      }

      [v171 length];
      *buf = 138412802;
      v346 = @"ManufacturerID";
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_0_6();
      v179 = 28;
    }

    else
    {
      v173 = [(DPAnalytics *)v136 log];
      if (!OUTLINED_FUNCTION_10(v173))
      {
        goto LABEL_89;
      }

      *buf = 0;
      OUTLINED_FUNCTION_0_6();
      v179 = 2;
    }

    _os_log_error_impl(v174, v175, v176, v177, v178, v179);
    goto LABEL_89;
  }
}

- (void)_startEventMonitoring
{
  v1 = [self log];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_5_4();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

@end