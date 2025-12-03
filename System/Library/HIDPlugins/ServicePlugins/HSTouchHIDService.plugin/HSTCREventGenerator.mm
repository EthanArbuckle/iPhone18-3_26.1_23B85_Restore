@interface HSTCREventGenerator
+ (id)continousRecordingIDsFromService:(unsigned int)service property:(id)property;
- (BOOL)populateReportTable:(id)table flag:(unsigned __int8)flag;
- (HSTCREventGenerator)initWithService:(unsigned int)service deviceID:(unint64_t)d;
- (unsigned)continuousRecordingReportFlags:(id)flags;
- (void)handleConsume:(id)consume;
- (void)handleDebugStateEvent:(id)event;
- (void)handleFrame:(id)frame;
- (void)handleGetPropertyEvent:(id)event;
@end

@implementation HSTCREventGenerator

+ (id)continousRecordingIDsFromService:(unsigned int)service property:(id)property
{
  propertyCopy = property;
  v6 = IORegistryEntrySearchCFProperty(service, "IOService", @"DefaultProperties", kCFAllocatorDefault, 3u);
  v21 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v20 = v7;
  v8 = [v7 objectForKeyedSubscript:propertyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([v9 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || !v16 || [v16 unsignedIntValue] > 0xFF)
          {

            v18 = 0;
            goto LABEL_27;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v17 = v12;
  }

  else if (v11)
  {
    v26 = v11;
    v17 = [NSArray arrayWithObjects:&v26 count:1];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
LABEL_27:

  return v18;
}

- (HSTCREventGenerator)initWithService:(unsigned int)service deviceID:(unint64_t)d
{
  v5 = *&service;
  v7 = [objc_opt_class() continousRecordingIDsFromService:*&service property:@"ContinuousRecordingReportIDs"];
  v8 = [objc_opt_class() continousRecordingIDsFromService:v5 property:@"ContinuousRecordingDebuggingReportIDs"];
  if ([v7 count] && (os_variant_has_internal_diagnostics() & 1) != 0)
  {
    v13.receiver = self;
    v13.super_class = HSTCREventGenerator;
    v9 = [(HSStage *)&v13 init];
    v10 = v9;
    if (!v9 || (v9->_deviceID = d, *&v9->_reportIDTable[224] = 0u, *&v9->_reportIDTable[240] = 0u, *&v9->_reportIDTable[192] = 0u, *&v9->_reportIDTable[208] = 0u, *&v9->_reportIDTable[160] = 0u, *&v9->_reportIDTable[176] = 0u, *&v9->_reportIDTable[128] = 0u, *&v9->_reportIDTable[144] = 0u, *&v9->_reportIDTable[96] = 0u, *&v9->_reportIDTable[112] = 0u, *&v9->_reportIDTable[64] = 0u, *&v9->_reportIDTable[80] = 0u, *&v9->_reportIDTable[32] = 0u, *&v9->_reportIDTable[48] = 0u, *v9->_reportIDTable = 0u, *&v9->_reportIDTable[16] = 0u, objc_storeStrong(&v9->_reportIDs, v7), objc_storeStrong(&v10->_debuggingReportIDs, v8), [(HSTCREventGenerator *)v10 populateReportTable:v7 flag:1]) && [(HSTCREventGenerator *)v10 populateReportTable:v8 flag:2])
    {
      self = v10;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
      self = v10;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)populateReportTable:(id)table flag:(unsigned __int8)flag
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  tableCopy = table;
  v7 = [tableCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(tableCopy);
        }

        unsignedIntValue = [*(*(&v13 + 1) + 8 * i) unsignedIntValue];
        if (unsignedIntValue >= 0x100)
        {
          v11 = 0;
          goto LABEL_11;
        }

        self->_reportIDTable[unsignedIntValue] |= flag;
      }

      v7 = [tableCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (unsigned)continuousRecordingReportFlags:(id)flags
{
  flagsCopy = flags;
  if ([flagsCopy length])
  {
    v5 = self->_reportIDTable[*[flagsCopy bytes]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleFrame:(id)frame
{
  frameCopy = frame;
  v5 = [(HSTCREventGenerator *)self continuousRecordingReportFlags:frameCopy[1]];
  if (v5)
  {
    mach_absolute_time();
    [frameCopy[1] bytes];
    [frameCopy[1] length];
    VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
    v6 = objc_opt_new();
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v6 + 1, &VendorDefinedEvent);
    [(HSTCREventGenerator *)self handleConsume:v6];
  }

  if ((v5 & 2) == 0)
  {
    v7.receiver = self;
    v7.super_class = HSTCREventGenerator;
    [(HSStage *)&v7 handleConsume:frameCopy];
  }
}

- (void)handleDebugStateEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    v13 = [NSString stringWithUTF8String:"[HSTCREventGenerator handleDebugStateEvent:]"];
    [v12 handleFailureInFunction:v13 file:@"HSTCREventGenerator.mm" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  eventCopy[16] = 1;
  v5 = objc_opt_new();
  [v5 setObject:@"HSTCREventGenerator" forKeyedSubscript:@"Stage"];
  reportIDs = [(HSTCREventGenerator *)self reportIDs];

  if (reportIDs)
  {
    reportIDs2 = [(HSTCREventGenerator *)self reportIDs];
    [v5 setObject:reportIDs2 forKeyedSubscript:@"Report IDs"];
  }

  debuggingReportIDs = [(HSTCREventGenerator *)self debuggingReportIDs];

  if (debuggingReportIDs)
  {
    debuggingReportIDs2 = [(HSTCREventGenerator *)self debuggingReportIDs];
    [v5 setObject:debuggingReportIDs2 forKeyedSubscript:@"Debugging Report IDs"];
  }

  v10 = *(eventCopy + 3);
  v11 = [v5 copy];
  [v10 addObject:v11];

  v14.receiver = self;
  v14.super_class = HSTCREventGenerator;
  [(HSStage *)&v14 handleConsume:eventCopy];
}

- (void)handleGetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (*(eventCopy + 39) < 0 && eventCopy[3] == 24 && ((v6 = eventCopy[2], v7 = *v6, v8 = v6[1], v9 = v6[2], v7 == 0x69746E6F43444948) ? (v10 = v8 == 0x63655273756F756ELL) : (v10 = 0), v10 ? (v11 = v9 == 0x4449676E6964726FLL) : (v11 = 0), v11))
  {
    v12 = [NSString stringWithFormat:@"%s 0x%08llX", "Multitouch ID", self->_deviceID];
    v13 = v5[5];
    v5[5] = v12;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HSTCREventGenerator;
    [(HSStage *)&v14 handleConsume:eventCopy];
  }
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = consumeCopy;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(HSTCREventGenerator *)self handleFrame:consumeCopy];
  }

  else
  {
    v6 = consumeCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(HSTCREventGenerator *)self handleDebugStateEvent:v6];
    }

    else
    {
      v8 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        [(HSTCREventGenerator *)self handleGetPropertyEvent:v8];
      }

      else
      {
        v10.receiver = self;
        v10.super_class = HSTCREventGenerator;
        [(HSStage *)&v10 handleConsume:v8];
      }
    }
  }
}

@end