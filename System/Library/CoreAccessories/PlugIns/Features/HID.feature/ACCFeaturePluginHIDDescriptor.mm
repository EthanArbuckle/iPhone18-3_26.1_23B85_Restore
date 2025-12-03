@interface ACCFeaturePluginHIDDescriptor
- (ACCFeaturePluginHIDDescriptor)initWithDecriptorInfo:(id)info sendOutReport:(id)report sendGetReport:(id)getReport sendComponentUpdate:(id)update;
- (BOOL)handleGetReportResponse:(unsigned __int8)response reportID:(unsigned __int8)d report:(id)report;
- (BOOL)handleInReport:(id)report;
- (BOOL)handleOutReport:(id)report;
- (void)dealloc;
- (void)removeDescriptor;
- (void)startHIDEventSystemListener:(id)listener;
@end

@implementation ACCFeaturePluginHIDDescriptor

- (ACCFeaturePluginHIDDescriptor)initWithDecriptorInfo:(id)info sendOutReport:(id)report sendGetReport:(id)getReport sendComponentUpdate:(id)update
{
  v106 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  reportCopy = report;
  getReportCopy = getReport;
  updateCopy = update;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 1;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
    }

    v16 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  else
  {
    v16 = *gLogObjects;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v103 = "[ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:]";
    v104 = 2112;
    v105 = infoCopy;
    _os_log_impl(&dword_2335CB000, v16, OS_LOG_TYPE_DEFAULT, "%s: descriptorInfo %@ ", buf, 0x16u);
  }

  v101.receiver = self;
  v101.super_class = ACCFeaturePluginHIDDescriptor;
  v17 = [(ACCFeaturePluginHIDDescriptor *)&v101 init];
  if (v17)
  {
    v18 = v17;
    v17->_isShuttingDown = 0;
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = *(v18 + 104);
    *(v18 + 104) = v19;

    *(v18 + 10) = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v23 = *(v18 + 24);
    *(v18 + 24) = uUIDString;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v24)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithInt:0];
      v26 = [infoCopy objectForKey:v25];

      if (v26)
      {
        v27 = [MEMORY[0x277CCABB0] numberWithInt:0];
        v28 = [infoCopy objectForKey:v27];
        [v24 setObject:v28 forKey:@"Transport"];
      }

      v29 = [MEMORY[0x277CCABB0] numberWithInt:1];
      v30 = [infoCopy objectForKey:v29];

      if (v30)
      {
        v31 = [MEMORY[0x277CCABB0] numberWithInt:1];
        v32 = [infoCopy objectForKey:v31];
        [v24 setObject:v32 forKey:@"VendorID"];
      }

      v33 = [MEMORY[0x277CCABB0] numberWithInt:2];
      v34 = [infoCopy objectForKey:v33];

      if (v34)
      {
        v35 = [MEMORY[0x277CCABB0] numberWithInt:2];
        v36 = [infoCopy objectForKey:v35];
        [v24 setObject:v36 forKey:@"ProductID"];
      }

      v37 = [MEMORY[0x277CCABB0] numberWithInt:3];
      v38 = [infoCopy objectForKey:v37];

      if (v38)
      {
        v39 = [MEMORY[0x277CCABB0] numberWithInt:3];
        v40 = [infoCopy objectForKey:v39];
        [v24 setObject:v40 forKey:@"VersionNumber"];
      }

      v41 = [MEMORY[0x277CCABB0] numberWithInt:4];
      v42 = [infoCopy objectForKey:v41];

      if (v42)
      {
        v43 = [MEMORY[0x277CCABB0] numberWithInt:4];
        v44 = [infoCopy objectForKey:v43];
        [v24 setObject:v44 forKey:@"Manufacturer"];
      }

      v45 = [MEMORY[0x277CCABB0] numberWithInt:12];
      v46 = [infoCopy objectForKey:v45];

      if (v46)
      {
        v47 = [MEMORY[0x277CCABB0] numberWithInt:12];
        v48 = [infoCopy objectForKey:v47];
        [v24 setObject:v48 forKey:@"Product"];
      }

      v49 = [MEMORY[0x277CCABB0] numberWithInt:6];
      v50 = [infoCopy objectForKey:v49];

      if (v50)
      {
        v51 = [MEMORY[0x277CCABB0] numberWithInt:6];
        v52 = [infoCopy objectForKey:v51];
        [v24 setObject:v52 forKey:@"SerialNumber"];
      }

      v53 = [MEMORY[0x277CCABB0] numberWithInt:7];
      v54 = [infoCopy objectForKey:v53];

      if (v54)
      {
        v55 = [MEMORY[0x277CCABB0] numberWithInt:7];
        v56 = [infoCopy objectForKey:v55];
        [v24 setObject:v56 forKey:@"CountryCode"];
      }

      v57 = [MEMORY[0x277CCABB0] numberWithInt:9];
      v58 = [infoCopy objectForKey:v57];

      if (v58)
      {
        v59 = [MEMORY[0x277CCABB0] numberWithInt:9];
        v60 = [infoCopy objectForKey:v59];
        [v24 setObject:v60 forKey:@"ReportDescriptor"];
      }

      v61 = [MEMORY[0x277CCABB0] numberWithInt:10];
      v62 = [infoCopy objectForKey:v61];

      if (v62)
      {
        v63 = [MEMORY[0x277CCABB0] numberWithInt:10];
        v64 = [infoCopy objectForKey:v63];
        [v24 setObject:v64 forKey:@"IAPHIDAccessoryCategory"];
      }

      v65 = [MEMORY[0x277CCABB0] numberWithInt:11];
      v66 = [infoCopy objectForKey:v65];

      if (v66)
      {
        v67 = [MEMORY[0x277CCABB0] numberWithInt:11];
        v68 = [infoCopy objectForKey:v67];
        [v24 setObject:v68 forKey:@"Authenticated"];
      }

      [v24 setObject:*(v18 + 24) forKey:@"PhysicalDeviceUniqueID"];
      v69 = [MEMORY[0x277CCABB0] numberWithInt:12];
      v70 = [infoCopy objectForKey:v69];

      if (v70)
      {
        v71 = v70;
      }

      else
      {
        v71 = &stru_2848E5F08;
      }

      v72 = [MEMORY[0x277CCAB68] stringWithString:v71];
      [v72 appendFormat:@"HIDDeviceQueue%@", *(v18 + 24)];
      v73 = dispatch_queue_create([v72 UTF8String], 0);
      v74 = *(v18 + 48);
      *(v18 + 48) = v73;

      v75 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v18 + 48));
      v76 = *(v18 + 64);
      *(v18 + 64) = v75;

      v77 = *(v18 + 64);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __103__ACCFeaturePluginHIDDescriptor_initWithDecriptorInfo_sendOutReport_sendGetReport_sendComponentUpdate___block_invoke;
      handler[3] = &unk_2789E2AE8;
      v78 = v18;
      v100 = v78;
      dispatch_source_set_event_handler(v77, handler);
      dispatch_source_set_timer(*(v18 + 64), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(*(v18 + 64));
      [(ACCFeaturePluginHIDDescriptor *)v78 startHIDEventSystemListener:*(v18 + 24)];
      v79 = *MEMORY[0x277CBECE8];
      v80 = IOHIDUserDeviceCreate();
      v78->_deviceRef = v80;
      if (v80)
      {
        v81 = *(v18 + 48);
        IOHIDUserDeviceScheduleWithDispatchQueue();
        deviceRef = v78->_deviceRef;
        v83 = *(v18 + 24);
        IOHIDUserDeviceRegisterGetReportCallback();
        v84 = v78->_deviceRef;
        v85 = *(v18 + 24);
        IOHIDUserDeviceRegisterSetReportCallback();
        v86 = dispatch_semaphore_create(0);
        getReportSemaphore = v78->_getReportSemaphore;
        v78->_getReportSemaphore = v86;

        v88 = MEMORY[0x2383A6230](reportCopy);
        sendOutReport = v78->_sendOutReport;
        v78->_sendOutReport = v88;

        v90 = MEMORY[0x2383A6230](getReportCopy);
        sendGetReport = v78->_sendGetReport;
        v78->_sendGetReport = v90;

        v92 = MEMORY[0x2383A6230](updateCopy);
        sendComponentUpdate = v78->_sendComponentUpdate;
        v78->_sendComponentUpdate = v92;
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v94 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
          }

          v94 = MEMORY[0x277D86220];
          v96 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
        }

        sendComponentUpdate = v78;
        v78 = 0;
      }

      v18 = v70;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v72 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
        }

        v72 = MEMORY[0x277D86220];
        v95 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
      }

      v78 = 0;
    }
  }

  else
  {
    v78 = 0;
  }

  v97 = *MEMORY[0x277D85DE8];
  return v78;
}

_BYTE *__103__ACCFeaturePluginHIDDescriptor_initWithDecriptorInfo_sendOutReport_sendGetReport_sendComponentUpdate___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 24);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_2335CB000, v4, OS_LOG_TYPE_DEFAULT, "registerDeviceMatchingTimer fired! %@ call handleHIDComponentUpdate true", &v8, 0xCu);
  }

  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {
    result = [result handleHIDComponentUpdate:1];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeDescriptor
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ACCFeaturePluginHIDDescriptor;
  [(ACCFeaturePluginHIDDescriptor *)&v2 dealloc];
}

- (void)startHIDEventSystemListener:(id)listener
{
  v20[1] = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  v5 = listenerCopy;
  if (!self->_hidEventSystemClientRef)
  {
    v19 = @"PhysicalDeviceUniqueID";
    v20[0] = listenerCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v7 = *MEMORY[0x277CBECE8];
    self->_hidEventSystemClientRef = IOHIDEventSystemClientCreate();
    hidCallbackQueue = self->_hidCallbackQueue;
    IOHIDEventSystemClientScheduleWithDispatchQueue();
    hidEventSystemClientRef = self->_hidEventSystemClientRef;
    IOHIDEventSystemClientSetMatching();
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      hidDeviceUUIDStr = self->_hidDeviceUUIDStr;
      v17 = 138412290;
      v18 = hidDeviceUUIDStr;
      _os_log_impl(&dword_2335CB000, v10, OS_LOG_TYPE_DEFAULT, "start registerDeviceMatchingTimer, %@", &v17, 0xCu);
    }

    registerDeviceMatchingTimerSource = self->_registerDeviceMatchingTimerSource;
    v14 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(registerDeviceMatchingTimerSource, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
    v15 = self->_hidEventSystemClientRef;
    IOHIDEventSystemClientRegisterDeviceMatchingCallback();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleInReport:(id)report
{
  reportCopy = report;
  if (!self->_isReady)
  {
    initialReportCache = self->_initialReportCache;
    if (initialReportCache)
    {
      [(NSMutableArray *)initialReportCache addObject:reportCopy];
    }

    else
    {
      if (gLogObjects)
      {
        v8 = gNumLogObjects < 1;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
        }

        v11 = MEMORY[0x277D86220];
        v9 = MEMORY[0x277D86220];
      }

      else
      {
        v11 = *gLogObjects;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ACCFeaturePluginHIDDescriptor handleInReport:];
      }
    }

    goto LABEL_26;
  }

  [(ACCFeaturePluginHIDDescriptor *)self deviceRef];
  [reportCopy bytes];
  [reportCopy length];
  if (IOHIDUserDeviceHandleReport())
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v5 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
      }

      v5 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ACCFeaturePluginHIDDescriptor handleInReport:];
    }

LABEL_26:
    v7 = 0;
    goto LABEL_27;
  }

  v7 = 1;
LABEL_27:

  return v7;
}

- (BOOL)handleOutReport:(id)report
{
  if (report)
  {
    reportCopy = report;
    sendOutReport = [(ACCFeaturePluginHIDDescriptor *)self sendOutReport];
    hidDeviceUUIDStr = [(ACCFeaturePluginHIDDescriptor *)self hidDeviceUUIDStr];
    (sendOutReport)[2](sendOutReport, hidDeviceUUIDStr, reportCopy);
  }

  return report != 0;
}

- (BOOL)handleGetReportResponse:(unsigned __int8)response reportID:(unsigned __int8)d report:(id)report
{
  dCopy = d;
  responseCopy = response;
  reportCopy = report;
  if ([(ACCFeaturePluginHIDDescriptor *)self getReportType]== responseCopy && [(ACCFeaturePluginHIDDescriptor *)self getReportID]== dCopy && ([(ACCFeaturePluginHIDDescriptor *)self getReportBuffer], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    [(ACCFeaturePluginHIDDescriptor *)self setGetReportResult:0];
    getReportBuffer = [(ACCFeaturePluginHIDDescriptor *)self getReportBuffer];
    v11 = [getReportBuffer length];

    v12 = [reportCopy length];
    if (v11 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    getReportBuffer2 = [(ACCFeaturePluginHIDDescriptor *)self getReportBuffer];
    memcpy([getReportBuffer2 mutableBytes], objc_msgSend(reportCopy, "bytes"), v13);

    getReportBuffer3 = [(ACCFeaturePluginHIDDescriptor *)self getReportBuffer];
    [getReportBuffer3 setLength:v13];

    getReportSemaphore = [(ACCFeaturePluginHIDDescriptor *)self getReportSemaphore];
    dispatch_semaphore_signal(getReportSemaphore);

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2335CB000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleInReport:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleInReport:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end