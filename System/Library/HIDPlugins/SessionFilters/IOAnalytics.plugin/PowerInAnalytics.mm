@interface PowerInAnalytics
- (BOOL)_getMutualPowerSourceProperties:(unsigned int)a3 dict:(id)a4;
- (BOOL)_startEventMonitoring;
- (PowerInAnalytics)init;
- (void)_startEventMonitoring;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation PowerInAnalytics

- (PowerInAnalytics)init
{
  v12.receiver = self;
  v12.super_class = PowerInAnalytics;
  v2 = [(PowerInAnalytics *)&v12 init];
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
  v3 = [(PowerInAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting %@...", buf, 0xCu);
  }

  v6 = [(PowerInAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __25__PowerInAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_async(v6, block);
}

void __25__PowerInAnalytics_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) started];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __25__PowerInAnalytics_start__block_invoke_cold_1();
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
  v3 = [(PowerInAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping %@...", buf, 0xCu);
  }

  v6 = [(PowerInAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __24__PowerInAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_async(v6, block);
}

void __24__PowerInAnalytics_stop__block_invoke(uint64_t a1)
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
      __24__PowerInAnalytics_stop__block_invoke_cold_1();
    }
  }
}

- (BOOL)_startEventMonitoring
{
  if (![(PowerInAnalytics *)self monitoring]&& [(PowerInAnalytics *)self started])
  {
    v3 = [(PowerInAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting matching notifications...", buf, 2u);
    }

    v4 = [(PowerInAnalytics *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v19, 2u);
    }

    [(PowerInAnalytics *)self setMonitoring:1];
    [(PowerInAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    v5 = [(PowerInAnalytics *)self ioNotificationPort];
    v6 = [(PowerInAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(v5, v6);

    v7 = IOServiceMatching("IOPortFeaturePowerSource");
    v8 = v7;
    if (v7)
    {
      [(__CFDictionary *)v7 setObject:&off_240B8 forKey:@"IOPropertyExistsMatch"];
      v9 = [(PowerInAnalytics *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(PowerInAnalytics *)v8 _startEventMonitoring:v9];
      }

      v16 = IOServiceAddMatchingNotification([(PowerInAnalytics *)self ioNotificationPort], "IOServiceMatched", v8, _servicesMatched_1, self, &self->_ioServiceMatchingIterator);
      if (!v16)
      {
        _servicesMatched_1(self, self->_ioServiceMatchingIterator);
        v17 = 1;
LABEL_12:

        return v17;
      }

      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      [(PowerInAnalytics *)self _startEventMonitoring];
    }

    v17 = 0;
    goto LABEL_12;
  }

  return [(PowerInAnalytics *)self monitoring];
}

- (void)_stopEventMonitoring
{
  if ([(PowerInAnalytics *)self monitoring])
  {
    v3 = [(PowerInAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(PowerInAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(PowerInAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(PowerInAnalytics *)self ioNotificationPort]);
    }
  }
}

- (BOOL)_getMutualPowerSourceProperties:(unsigned int)a3 dict:(id)a4
{
  v6 = a4;
  if (a3)
  {
    CFProperty = IORegistryEntryCreateCFProperty(a3, @"ParentPortType", kCFAllocatorDefault, 0);
    objc_opt_class();
    v8 = castNSObjectToType(CFProperty);

    if (v8)
    {
      [v6 setObject:v8 forKey:@"PortType"];
      v9 = IORegistryEntryCreateCFProperty(a3, @"ParentPortNumber", kCFAllocatorDefault, 0);
      objc_opt_class();
      v10 = castNSObjectToType(v9);

      v11 = v10 != 0;
      if (v10)
      {
        [v6 setObject:v10 forKey:@"PortNumber"];
        v12 = IOServiceMatching("IOPort");
        v112[0] = @"PortType";
        v112[1] = @"PortNumber";
        v113[0] = v8;
        v113[1] = v10;
        v13 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:2];
        [(__CFDictionary *)v12 setObject:v13 forKey:@"IOPropertyMatch"];

        v14 = [(PowerInAnalytics *)self log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [(PowerInAnalytics *)v12 _startEventMonitoring:v14];
        }

        v21 = v12;
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v21);
        v104 = self;
        if (MatchingService)
        {
          v23 = MatchingService;
          v99 = v10;
          v24 = IORegistryEntryCreateCFProperty(MatchingService, @"BuiltIn", kCFAllocatorDefault, 0);
          objc_opt_class();
          v25 = castNSObjectToType(v24);

          if (v25)
          {
            v26 = v11;
            [v6 setObject:v25 forKey:@"PortBuiltIn"];
          }

          else
          {
            v36 = [(PowerInAnalytics *)self log];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [PowerInAnalytics _getMutualPowerSourceProperties:dict:];
            }

            v26 = v11;
          }

          v37 = IORegistryEntryCreateCFProperty(v23, @"ConnectionUUID", kCFAllocatorDefault, 0);
          objc_opt_class();
          v38 = castNSObjectToType(v37);

          if (v38)
          {
            [v6 setObject:v38 forKey:@"ConnectionUUID"];
          }

          else
          {
            v39 = [(PowerInAnalytics *)v104 log];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              [PowerInAnalytics _getMutualPowerSourceProperties:dict:];
            }
          }

          v11 = v26;
          IOObjectRelease(v23);

          v10 = v99;
          self = v104;
        }

        else
        {
          v28 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v28)
          {
            [(PowerInAnalytics *)v28 _getMutualPowerSourceProperties:v29 dict:v30, v31, v32, v33, v34, v35];
          }
        }

        v40 = kCFAllocatorDefault;
        v41 = IORegistryEntryCreateCFProperty(a3, @"PowerSourceName", kCFAllocatorDefault, 0);
        objc_opt_class();
        v42 = castNSObjectToType(v41);

        v103 = v42;
        if (v42)
        {
          [v6 setObject:v42 forKey:@"PowerSourceName"];
        }

        else
        {
          v43 = [(PowerInAnalytics *)self log];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [PowerInAnalytics _getMutualPowerSourceProperties:dict:];
          }
        }

        v44 = IORegistryEntryCreateCFProperty(a3, @"PowerSourceType", kCFAllocatorDefault, 0);
        objc_opt_class();
        v45 = castNSObjectToType(v44);

        if (v45)
        {
          [v6 setObject:v45 forKey:@"PowerSourceType"];
        }

        else
        {
          v46 = [(PowerInAnalytics *)self log];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            [PowerInAnalytics _getMutualPowerSourceProperties:dict:];
          }
        }

        v47 = IORegistryEntryCreateCFProperty(a3, @"PowerSourceOptions", kCFAllocatorDefault, 0);
        v101 = v47;
        v102 = v45;
        if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v48 = v47;
          *v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v49 = [v48 countByEnumeratingWithState:v106 objects:buf count:16];
          v50 = &IOIteratorNext_ptr;
          if (v49)
          {
            v51 = v49;
            v96 = v11;
            v98 = v6;
            v100 = v10;
            v97 = v8;
            v105 = 0;
            v52 = 0;
            v53 = *v107;
            while (1)
            {
              for (i = 0; i != v51; i = i + 1)
              {
                if (*v107 != v53)
                {
                  objc_enumerationMutation(v48);
                }

                v55 = *(*&v106[8] + 8 * i);
                if (v55)
                {
                  v56 = v50[120];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v57 = [v55 objectForKeyedSubscript:@"Max Current (mA)"];
                    v58 = [v55 objectForKeyedSubscript:@"Voltage (mV)"];
                    v59 = [v55 objectForKeyedSubscript:@"Max Power (mW)"];
                    v60 = v59;
                    if (v57)
                    {
                      v61 = v58 == 0;
                    }

                    else
                    {
                      v61 = 1;
                    }

                    if (!v61 && v59 != 0)
                    {
                      if ([v59 unsignedIntegerValue] > v52)
                      {
                        goto LABEL_53;
                      }

                      if ([v60 unsignedIntegerValue] == v52)
                      {
                        v50 = &IOIteratorNext_ptr;
                        if ([v58 unsignedIntegerValue] > HIDWORD(v105))
                        {
LABEL_53:
                          LODWORD(v105) = [v57 unsignedIntValue];
                          HIDWORD(v105) = [v58 unsignedIntValue];
                          v52 = [v60 unsignedIntValue];
                        }
                      }

                      else
                      {
                        v50 = &IOIteratorNext_ptr;
                      }
                    }

                    continue;
                  }
                }
              }

              v51 = [v48 countByEnumeratingWithState:v106 objects:buf count:16];
              if (!v51)
              {
                v63 = v105;
                v64 = HIDWORD(v105);
                v65 = v52;
                v8 = v97;
                v6 = v98;
                v10 = v100;
                v11 = v96;
                goto LABEL_65;
              }
            }
          }

          v64 = 0;
          v65 = 0;
          v63 = 0;
LABEL_65:

          v68 = [NSNumber numberWithUnsignedInteger:v63];
          [v6 setObject:v68 forKey:@"MaxPowerSourceOptionVoltageMV"];

          v69 = [NSNumber numberWithUnsignedInteger:v64];
          [v6 setObject:v69 forKey:@"MaxPowerSourceOptionMaxCurrentMA"];

          v66 = [NSNumber numberWithUnsignedInteger:v65];
          [v6 setObject:v66 forKey:@"MaxPowerSourceOptionMaxPowerMW"];
          self = v104;
          v40 = kCFAllocatorDefault;
          v67 = &IOIteratorNext_ptr;
        }

        else
        {
          v66 = [(PowerInAnalytics *)self log];
          v67 = &IOIteratorNext_ptr;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            [(PowerInAnalytics *)v47 == 0 _getMutualPowerSourceProperties:v47 dict:v66];
          }
        }

        v70 = IOServiceMatching("IOPortTransportProtocolAppleUVDM");
        v110[0] = @"ParentPortType";
        v110[1] = @"ParentPortNumber";
        v111[0] = v8;
        v111[1] = v10;
        v110[2] = @"ParentComponentName";
        v111[2] = @"SOP";
        v71 = [v67[120] dictionaryWithObjects:v111 forKeys:v110 count:3];
        [(__CFDictionary *)v70 setObject:v71 forKey:@"IOPropertyMatch"];

        v72 = [(PowerInAnalytics *)self log];
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          [(PowerInAnalytics *)v70 _getMutualPowerSourceProperties:v72 dict:v73, v74, v75, v76, v77, v78];
        }

        v79 = v70;
        v80 = IOServiceGetMatchingService(kIOMainPortDefault, v79);
        v81 = [(PowerInAnalytics *)self log];
        v82 = os_log_type_enabled(v81, OS_LOG_TYPE_INFO);
        if (v80)
        {
          if (v82)
          {
            *buf = 0;
            _os_log_impl(&dword_0, v81, OS_LOG_TYPE_INFO, "Found AUVDM service!", buf, 2u);
          }

          v83 = IORegistryEntryCreateCFProperty(v80, @"Manufacturer", v40, 0);
          objc_opt_class();
          v81 = castNSObjectToType(v83);

          if (v81 && [v81 length])
          {
            v84 = [NSScanner scannerWithString:v81];
            *buf = 0;
            if ([v84 scanHexInt:buf])
            {
              v85 = [NSNumber numberWithUnsignedInt:*buf];
              [v6 setObject:v85 forKey:@"AUVDM_VendorID"];

              v86 = [(PowerInAnalytics *)v104 log];
              if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
              {
                *v106 = 0;
                _os_log_impl(&dword_0, v86, OS_LOG_TYPE_INFO, "Converted AUVDM Manufacturer to VID!", v106, 2u);
              }
            }
          }

          v87 = IORegistryEntryCreateCFProperty(v80, @"Model", v40, 0);
          objc_opt_class();
          v88 = castNSObjectToType(v87);

          if (v88 && [v88 length])
          {
            v89 = [NSScanner scannerWithString:v88];
            *buf = 0;
            if ([v89 scanHexInt:buf])
            {
              v90 = [NSNumber numberWithUnsignedInt:*buf];
              [v6 setObject:v90 forKey:@"AUVDM_ProductID"];

              v91 = [(PowerInAnalytics *)v104 log];
              if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
              {
                *v106 = 0;
                _os_log_impl(&dword_0, v91, OS_LOG_TYPE_INFO, "Converted AUVDM Model to PID!", v106, 2u);
              }

              v40 = kCFAllocatorDefault;
            }
          }

          v92 = IORegistryEntryCreateCFProperty(v80, @"User String", v40, 0);
          objc_opt_class();
          v93 = castNSObjectToType(v92);

          if (v93 && [v93 length])
          {
            [v6 setObject:v93 forKey:@"AUVDM_AccessoryName"];
            v94 = [(PowerInAnalytics *)v104 log];
            if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v94, OS_LOG_TYPE_INFO, "Converted AUVDM User String to Accessory Name!", buf, 2u);
            }
          }

          v27 = v103;
        }

        else
        {
          v27 = v103;
          if (v82)
          {
            *buf = 0;
            _os_log_impl(&dword_0, v81, OS_LOG_TYPE_INFO, "Could not find AUVDM service!", buf, 2u);
          }
        }
      }

      else
      {
        v27 = [(PowerInAnalytics *)self log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [PowerInAnalytics _getMutualPowerSourceProperties:dict:];
        }
      }
    }

    else
    {
      v10 = [(PowerInAnalytics *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PowerInAnalytics _getMutualPowerSourceProperties:dict:];
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_startEventMonitoring
{
  v1 = [a1 log];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    OUTLINED_FUNCTION_4(&dword_0, v1, v2, "IOServiceMatching failed", v3);
  }
}

- (void)_getMutualPowerSourceProperties:(NSObject *)a3 dict:.cold.8(char a1, uint64_t a2, NSObject *a3)
{
  if (a1)
  {
    v5 = @"None";
  }

  else
  {
    v6 = objc_opt_class();
    v5 = NSStringFromClass(v6);
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = 136315650;
  v10 = "PowerSourceOptions";
  v11 = 2112;
  v12 = v5;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Incorrect data type for '%s' key! (class: %@, expecting: %@", &v9, 0x20u);
  if ((a1 & 1) == 0)
  {
  }
}

@end