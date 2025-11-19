@interface EAAccessory
- (BOOL)accessoryHasNMEASentencesAvailable;
- (BOOL)containsSameProtocolsAsiAPAccessoryProtocols:(id)a3;
- (BOOL)getEphemerisExpirationInterval:(double *)a3;
- (BOOL)getEphemerisRecommendRefreshInterval:(double *)a3;
- (BOOL)getEphemerisURL:(id *)a3;
- (BOOL)getNMEASentence:(id *)a3;
- (BOOL)sendDestinationInformation:(id)a3 identifier:(id)a4;
- (BOOL)sendEphemeris:(id)a3;
- (BOOL)sendEphemerisPointDataGpsWeek:(unint64_t)a3 gpsTOW:(double)a4 latitude:(double)a5 longitude:(double)a6 accuracy:(unsigned __int16)a7;
- (BOOL)sendGpsWeek:(unint64_t)a3 gpsTOW:(double)a4;
- (BOOL)setNMEASentencesToFilter:(id)a3;
- (BOOL)supportsPublicIap;
- (NSArray)protocolStrings;
- (double)getNMEATimestampAverageSamples;
- (id)_createWakeToken;
- (id)_initWithAccessory:(id)a3;
- (id)_protocolIDForProtocolString:(id)a3;
- (id)_shortDescription;
- (id)allPublicProtocolStrings;
- (id)coreAccessoriesPrimaryUUID;
- (id)description;
- (id)dictionaryWithLowercaseKeys:(id)a3;
- (id)getVehicleInfoData;
- (unsigned)accessoryCapabilities;
- (void)_endSession:(unsigned int)a3;
- (void)_openCompleteForSession:(unsigned int)a3;
- (void)_updateAccessoryInfo:(id)a3;
- (void)addNMEASentence:(id)a3 withTimestamps:(id)a4;
- (void)beginOOBBTPairingWithCompletionBlock:(id)a3;
- (void)dealloc;
- (void)getIAPTimeSyncInfo:(id)a3 completionHandler:(id)a4;
- (void)logNMEATimestampDelays:(id)a3 timestamps:(id)a4;
- (void)requestIAPAccessoryWiFiCredentials;
- (void)resetIAPTimeSyncKalmanFilter;
- (void)sendDeviceIdentifierNotification:(id)a3 usbIdentifier:(id)a4;
- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessCarPlayAvailable:(id)a5 bluetoothIdentifier:(id)a6;
- (void)setIAPTimeSyncParams:(id)a3;
@end

@implementation EAAccessory

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = EAAccessory;
  [v3 appendFormat:@"%@ { \n", -[EAAccessory description](&v8, sel_description)];
  v4 = [(EAAccessory *)self isConnected];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  [v3 appendFormat:@"  connected:%@ \n", v5];
  [v3 appendFormat:@"  connectionID:%lu \n", -[EAAccessory connectionID](self, "connectionID")];
  [v3 appendFormat:@"  name: %@ \n", -[EAAccessory name](self, "name")];
  [v3 appendFormat:@"  manufacturer: %@ \n", -[EAAccessory manufacturer](self, "manufacturer")];
  [v3 appendFormat:@"  modelNumber: %@ \n", -[EAAccessory modelNumber](self, "modelNumber")];
  [v3 appendFormat:@"  serialNumber: %@ \n", -[EAAccessory serialNumber](self, "serialNumber")];
  [v3 appendFormat:@"  ppid: %@ \n", -[EAAccessory ppid](self, "ppid")];
  [v3 appendFormat:@"  regioncode: %@ \n", -[EAAccessory regionCode](self, "regionCode")];
  [v3 appendFormat:@"  firmwareRevisionActive: %@ \n", -[EAAccessory firmwareRevisionActive](self, "firmwareRevisionActive")];
  [v3 appendFormat:@"  firmwareRevisionPending: %@ \n", -[EAAccessory firmwareRevisionPending](self, "firmwareRevisionPending")];
  [v3 appendFormat:@"  hardwareRevision: %@ \n", -[EAAccessory hardwareRevision](self, "hardwareRevision")];
  [v3 appendFormat:@"  dockType: %@ \n", -[EAAccessory dockType](self, "dockType")];
  [v3 appendFormat:@"  certSerial: %lu bytes \n", objc_msgSend(-[EAAccessory certSerial](self, "certSerial"), "length")];
  [v3 appendFormat:@"  certData: %lu bytes \n", objc_msgSend(-[EAAccessory certData](self, "certData"), "length")];
  [v3 appendFormat:@"  protocols: %@ \n", -[EAAccessory protocolStrings](self, "protocolStrings")];
  [v3 appendFormat:@"}"];
  v6 = [v3 copy];

  return v6;
}

- (NSArray)protocolStrings
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(NSDictionary *)[(EAAccessoryInternal *)self->_internal protocols] allKeys];
  if (![+[EAAccessoryManager shouldAllowInternalProtocols] sharedAccessoryManager]
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 caseInsensitiveCompare:@"com.apple.update"])
          {
            [v3 addObject:v8];
          }
        }

        v5 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v2 = [v3 copy];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  [__gLocationLock lock];
  NSLog(&cfstr_LocationEaDeta.isa);
  while ([(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEASentences] count])
  {
    [(EAAccessory *)self logNMEATimestampDelays:[(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEASentences] objectAtIndex:0] timestamps:[(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEATimestamps] objectAtIndex:0]];
    [(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEASentences] removeObjectAtIndex:0];
    [(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEATimestamps] removeObjectAtIndex:0];
  }

  [__gLocationLock unlock];
  NSLog(&cfstr_LocationEaDeta_0.isa);

  v3.receiver = self;
  v3.super_class = EAAccessory;
  [(EAAccessory *)&v3 dealloc];
}

- (id)coreAccessoriesPrimaryUUID
{
  v2 = [(NSString *)[(EAAccessoryInternal *)self->_internal coreAccessoryPrimaryUUID] copy];

  return v2;
}

- (unsigned)accessoryCapabilities
{
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    NSLog(&cfstr_Externalaccess_105.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessory.mm", "[EAAccessory accessoryCapabilities]", [(EAAccessoryInternal *)self->_internal capabilities]);
  }

  internal = self->_internal;

  return [(EAAccessoryInternal *)internal capabilities];
}

- (id)_initWithAccessory:(id)a3
{
  v6.receiver = self;
  v6.super_class = EAAccessory;
  v4 = [(EAAccessory *)&v6 init];
  if (v4)
  {
    v4->_internal = a3;
  }

  return v4;
}

- (void)_updateAccessoryInfo:(id)a3
{
  v5 = [a3 objectForKey:*MEMORY[0x277D183F0]];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    [(EAAccessoryInternal *)self->_internal setName:v7];
  }

  v8 = [a3 objectForKey:*MEMORY[0x277D183E0]];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    [(EAAccessoryInternal *)self->_internal setManufacturer:v10];
  }

  v11 = [a3 objectForKey:*MEMORY[0x277D183E8]];
  if (v11)
  {
    v12 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    [(EAAccessoryInternal *)self->_internal setModelNumber:v13];
  }

  v14 = [a3 objectForKey:*MEMORY[0x277D18458]];
  if (v14)
  {
    v15 = v14;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    [(EAAccessoryInternal *)self->_internal setSerialNumber:v16];
  }

  v17 = [a3 objectForKey:*MEMORY[0x277D183B8]];
  if (v17)
  {
    v18 = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    [(EAAccessoryInternal *)self->_internal setFirmwareRevisionActive:v19];
  }

  v20 = [a3 objectForKey:*MEMORY[0x277D183C0]];
  if (v20)
  {
    v21 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    [(EAAccessoryInternal *)self->_internal setFirmwareRevisionPending:v22];
  }

  v23 = [a3 objectForKey:*MEMORY[0x277D183C8]];
  if (v23)
  {
    v24 = v23;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    [(EAAccessoryInternal *)self->_internal setHardwareRevision:v25];
  }

  v26 = [a3 objectForKey:*MEMORY[0x277D183B0]];
  if (v26)
  {
    v27 = v26;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    [(EAAccessoryInternal *)self->_internal setDockType:v28];
  }

  v29 = [a3 objectForKey:*MEMORY[0x277D183D8]];
  if (v29)
  {
    v30 = v29;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 0;
    }

    else
    {
      v31 = v30;
    }

    [(EAAccessoryInternal *)self->_internal setMacAddress:v31];
  }

  v32 = *MEMORY[0x277D18418];
  if ([a3 objectForKey:*MEMORY[0x277D18418]])
  {
    internal = self->_internal;
    v34 = [objc_msgSend(a3 objectForKey:{v32), "BOOLValue"}];

    [(EAAccessoryInternal *)internal setPointOfInterestHandoffEnabled:v34];
  }
}

- (id)_shortDescription
{
  v3.receiver = self;
  v3.super_class = EAAccessory;
  return [(EAAccessory *)&v3 description];
}

- (id)_protocolIDForProtocolString:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v4 = [(EAAccessoryInternal *)self->_internal protocols];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__EAAccessory__protocolIDForProtocolString___block_invoke;
  v7[3] = &unk_278A4E838;
  v7[4] = a3;
  v7[5] = &v8;
  [(NSDictionary *)v4 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __44__EAAccessory__protocolIDForProtocolString___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 caseInsensitiveCompare:*(a1 + 32)];
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 40) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)_openCompleteForSession:(unsigned int)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(EAAccessoryInternal *)self->_internal sessionsList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([v9 _sessionID] == a3)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  [v9 setOpenCompleted:1];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_endSession:(unsigned int)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(EAAccessoryInternal *)self->_internal sessionsList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      v7 += v6;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v12 + 1) + 8 * v9) _sessionID] == a3)
        {
          [-[NSArray objectAtIndex:](v4 objectAtIndex:{v10), "_endStreams"}];
          goto LABEL_11;
        }

        ++v10;
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_createWakeToken
{
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObject:-[EAAccessory macAddress](self forKey:{"macAddress"), @"EAAccessoryMacAddress"}];
  v3 = MEMORY[0x277CCAC58];

  return [v3 dataWithPropertyList:v2 format:200 options:0 error:0];
}

- (void)logNMEATimestampDelays:(id)a3 timestamps:(id)a4
{
  [(EAAccessory *)self getNMEATimestampAverageSamples];
  if (a4)
  {
    v8 = v7;
    [objc_msgSend(a4 objectAtIndex:{0), "doubleValue"}];
    v10 = v9;
    [objc_msgSend(a4 objectAtIndex:{1), "doubleValue"}];
    v12 = v11;
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    v13 = v12 - v10;
    v15 = v14 - v12;
    [(NSNumber *)[(EAAccessoryInternal *)self->_internal highestXPCDelay] doubleValue];
    if (v13 > v16)
    {
      -[EAAccessoryInternal setHighestXPCDelay:](self->_internal, "setHighestXPCDelay:", [MEMORY[0x277CCABB0] numberWithDouble:v13]);
    }

    [(NSNumber *)[(EAAccessoryInternal *)self->_internal highestFrameworkDelay] doubleValue];
    if (v15 > v17)
    {
      -[EAAccessoryInternal setHighestFrameworkDelay:](self->_internal, "setHighestFrameworkDelay:", [MEMORY[0x277CCABB0] numberWithDouble:v15]);
    }

    [(NSNumber *)[(EAAccessoryInternal *)self->_internal averageXPCDelay] doubleValue];
    v18 = MEMORY[0x277CCABB0];
    if (v19 == 0.0)
    {
      v20 = MEMORY[0x277CCABB0];
      v21 = v13;
    }

    else
    {
      [(NSNumber *)[(EAAccessoryInternal *)self->_internal averageXPCDelay] doubleValue];
      v23 = v22;
      [(NSNumber *)[(EAAccessoryInternal *)self->_internal averageXPCDelay] doubleValue];
      -[EAAccessoryInternal setAverageXPCDelay:](self->_internal, "setAverageXPCDelay:", [v18 numberWithDouble:v23 - v24 / v8]);
      v25 = MEMORY[0x277CCABB0];
      [(NSNumber *)[(EAAccessoryInternal *)self->_internal averageXPCDelay] doubleValue];
      v21 = v13 / v8 + v26;
      v20 = v25;
    }

    -[EAAccessoryInternal setAverageXPCDelay:](self->_internal, "setAverageXPCDelay:", [v20 numberWithDouble:v21]);
    [(NSNumber *)[(EAAccessoryInternal *)self->_internal averageXPCDelay] doubleValue];
    v27 = MEMORY[0x277CCABB0];
    if (v28 == 0.0)
    {
      -[EAAccessoryInternal setAverageXPCDelay:](self->_internal, "setAverageXPCDelay:", [MEMORY[0x277CCABB0] numberWithDouble:v13]);
    }

    else
    {
      [(NSNumber *)[(EAAccessoryInternal *)self->_internal averageFrameworkDelay] doubleValue];
      v30 = v29;
      [(NSNumber *)[(EAAccessoryInternal *)self->_internal averageFrameworkDelay] doubleValue];
      -[EAAccessoryInternal setAverageFrameworkDelay:](self->_internal, "setAverageFrameworkDelay:", [v27 numberWithDouble:v30 - v31 / v8]);
      v32 = MEMORY[0x277CCABB0];
      [(NSNumber *)[(EAAccessoryInternal *)self->_internal averageFrameworkDelay] doubleValue];
      -[EAAccessoryInternal setAverageFrameworkDelay:](self->_internal, "setAverageFrameworkDelay:", [v32 numberWithDouble:v15 / v8 + v33]);
    }

    NSLog(&cfstr_LocationCurren.isa, *&v13, *&v15, [(EAAccessoryInternal *)self->_internal highestXPCDelay], [(EAAccessoryInternal *)self->_internal highestFrameworkDelay], [(EAAccessoryInternal *)self->_internal averageXPCDelay], [(EAAccessoryInternal *)self->_internal averageFrameworkDelay], a3);
  }

  else
  {
    NSLog(&cfstr_LocationAnNmea.isa);
  }
}

- (BOOL)supportsPublicIap
{
  if (([(EAAccessoryInternal *)self->_internal capabilities]& 1) != 0)
  {
    if ([-[EAAccessory allPublicProtocolStrings](self "allPublicProtocolStrings")])
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    v3 = +[EAAccessoryManager isLoggingEnabled];
    if (!v3)
    {
      return v3;
    }

    NSLog(&cfstr_Externalaccess_106.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessory.mm", "[EAAccessory supportsPublicIap]");
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (id)allPublicProtocolStrings
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(EAAccessory *)self protocolStrings];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v2, "count")}];
  v18 = 0;
  v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:*MEMORY[0x277D184B8] options:1 error:&v18];
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"com.apple.accessory.cli.*" options:1 error:&v18];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (v3)
        {
          v10 = [v3 numberOfMatchesInString:v9 options:0 range:{0, objc_msgSend(*(*(&v14 + 1) + 8 * v8), "length")}];
          if (v10)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v10 = 0;
        }

        if (v4)
        {
          v10 = [v4 numberOfMatchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
        }

LABEL_12:
        if (v10 || ![v9 caseInsensitiveCompare:@"com.apple.iPodOut"])
        {
          if (+[EAAccessoryManager isLoggingEnabled])
          {
            NSLog(&cfstr_Externalaccess_108.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessory.mm", "[EAAccessory allPublicProtocolStrings]", v9);
          }
        }

        else
        {
          NSLog(&cfstr_Externalaccess_107.isa, v9);
          [v13 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  result = [v13 copy];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)dictionaryWithLowercaseKeys:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(a3, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [v4 setObject:objc_msgSend(a3 forKey:{"objectForKey:", *(*(&v11 + 1) + 8 * v8)), objc_msgSend(*(*(&v11 + 1) + 8 * v8), "lowercaseString")}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)containsSameProtocolsAsiAPAccessoryProtocols:(id)a3
{
  v4 = [(EAAccessory *)self dictionaryWithLowercaseKeys:a3];
  v5 = [(EAAccessory *)self dictionaryWithLowercaseKeys:[(EAAccessoryInternal *)self->_internal protocols]];

  return [v4 isEqualToDictionary:v5];
}

- (BOOL)accessoryHasNMEASentencesAvailable
{
  if ([(EAAccessory *)self createdByCoreAccessories])
  {
    [__gLocationLock lock];
    v3 = [(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEASentences] count]!= 0;
    [__gLocationLock unlock];
  }

  else
  {
    [(EAAccessoryInternal *)self->_internal connectionID];
    IAPLocationIsNMEADataAvailable();
    return 0;
  }

  return v3;
}

- (BOOL)getNMEASentence:(id *)a3
{
  v13 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(EAAccessoryInternal *)self->_internal nmeaSentenceAddCounter];
  if ([(EAAccessory *)self createdByCoreAccessories])
  {
    [__gLocationLock lock];
    if ([(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEASentences] count])
    {
      v7 = [-[NSMutableArray objectAtIndex:](-[EAAccessoryInternal enqueuedNMEASentences](self->_internal "enqueuedNMEASentences")];
      v13 = v7;
      [(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEASentences] removeObjectAtIndex:0];
      v8 = [(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEATimestamps] objectAtIndex:0];
      v9 = v8;
      [(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEATimestamps] removeObjectAtIndex:0];
      [(EAAccessoryInternal *)self->_internal setNmeaSentenceGetCounter:[(EAAccessoryInternal *)self->_internal nmeaSentenceGetCounter]+ 1];
      if (v7)
      {
        v10 = v6 % 0xF;
        if (+[EAAccessoryManager isLoggingEnabled]|| !v10)
        {
          [(EAAccessory *)self logNMEATimestampDelays:v7 timestamps:v8];
        }

        if (+[EAAccessoryManager isLoggingEnabled]|| !v10)
        {
          NSLog(&cfstr_LocationDLluLl.isa, +[EAAccessoryManager isLoggingEnabled], v6, [(EAAccessoryInternal *)self->_internal nmeaSentenceGetCounter], 15, v7, [(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEASentences] count]);
        }
      }

      else
      {
      }
    }

    [__gLocationLock unlock];
  }

  else
  {
    [(EAAccessoryInternal *)self->_internal connectionID];
    IAPLocationCopyNMEAData();
  }

  objc_autoreleasePoolPop(v5);
  if (v13)
  {
    *a3 = v13;
    v11 = v13;
  }

  return 1;
}

- (void)addNMEASentence:(id)a3 withTimestamps:(id)a4
{
  [__gLocationLock lock];
  v7 = [a3 copy];
  v8 = [a4 copy];
  [(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEASentences] addObject:v7];
  [(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEATimestamps] addObject:v8];
  [(EAAccessoryInternal *)self->_internal setNmeaSentenceAddCounter:[(EAAccessoryInternal *)self->_internal nmeaSentenceAddCounter]+ 1];
  v9 = [(EAAccessoryInternal *)self->_internal nmeaSentenceAddCounter];
  if (+[EAAccessoryManager isLoggingEnabled](EAAccessoryManager, "isLoggingEnabled") || +[EAAccessoryManager isLoggingEnabled]|| !(v9 % 0xF))
  {
    NSLog(&cfstr_LocationDLluLl_0.isa, +[EAAccessoryManager isLoggingEnabled], v9, [(EAAccessoryInternal *)self->_internal nmeaSentenceGetCounter], 15, a3, [(NSMutableArray *)[(EAAccessoryInternal *)self->_internal enqueuedNMEASentences] count]);
  }

  v10 = __gLocationLock;

  [v10 unlock];
}

- (BOOL)setNMEASentencesToFilter:(id)a3
{
  if ([(EAAccessory *)self createdByCoreAccessories])
  {
    NSLog(&cfstr_LocationSetnme.isa);
    [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager sendNMEAFilterList:"sendNMEAFilterList:forUUID:" forUUID:a3, [(EAAccessory *)self coreAccessoriesPrimaryUUID]];
    return 1;
  }

  else
  {
    NSLog(&cfstr_LocationSetnme_0.isa);
    [(EAAccessoryInternal *)self->_internal connectionID];
    return IAPlocationSetAccessoryNMEAFilter() != 0;
  }
}

- (double)getNMEATimestampAverageSamples
{
  [CFPreferencesCopyValue(@"NMEATimestampAverageSamples" @"com.apple.logging"];
  if (result == 0.0)
  {
    return *&EADefaultNMEATimestampAverageSamples;
  }

  return result;
}

- (void)setIAPTimeSyncParams:(id)a3
{
  v5 = [a3 objectForKey:@"EATimeSyncOffsetUncertaintyThreshold"];
  v6 = [a3 objectForKey:@"EATimeSyncOffsetMeasurementInterval"];
  v7 = [(EAAccessoryInternal *)self->_internal connectionID];
  v8 = [v5 unsignedLongLongValue];
  v9 = [v6 unsignedIntValue];

  MEMORY[0x2821729B0](v7, v8, v9);
}

- (void)getIAPTimeSyncInfo:(id)a3 completionHandler:(id)a4
{
  v6 = [(EAAccessoryInternal *)self->_internal connectionID];

  MEMORY[0x2821729A0](v6, a3, a4);
}

- (void)resetIAPTimeSyncKalmanFilter
{
  v2 = [(EAAccessoryInternal *)self->_internal connectionID];

  MEMORY[0x2821729A8](v2);
}

- (BOOL)getEphemerisURL:(id *)a3
{
  if (![(EAAccessory *)self createdByCoreAccessories])
  {
    [(EAAccessoryInternal *)self->_internal connectionID];
    IAPLocationCopyEphemerisURL();
  }

  return 1;
}

- (BOOL)getEphemerisRecommendRefreshInterval:(double *)a3
{
  v5 = 0.0;
  if ([(EAAccessory *)self createdByCoreAccessories])
  {
    LOBYTE(EphemerisRecommendedRefreshInterval) = 0;
  }

  else
  {
    [(EAAccessoryInternal *)self->_internal connectionID];
    EphemerisRecommendedRefreshInterval = IAPLocationGetEphemerisRecommendedRefreshInterval();
    if (EphemerisRecommendedRefreshInterval)
    {
      v5 = 0;
      LOBYTE(EphemerisRecommendedRefreshInterval) = 0;
    }
  }

  *a3 = v5;
  return EphemerisRecommendedRefreshInterval;
}

- (BOOL)getEphemerisExpirationInterval:(double *)a3
{
  v5 = 0.0;
  if ([(EAAccessory *)self createdByCoreAccessories])
  {
    LOBYTE(EphemerisMaxInterval) = 0;
  }

  else
  {
    [(EAAccessoryInternal *)self->_internal connectionID];
    EphemerisMaxInterval = IAPLocationGetEphemerisMaxInterval();
    if (EphemerisMaxInterval)
    {
      v5 = 0;
      LOBYTE(EphemerisMaxInterval) = 0;
    }
  }

  *a3 = v5;
  return EphemerisMaxInterval;
}

- (BOOL)sendGpsWeek:(unint64_t)a3 gpsTOW:(double)a4
{
  if ([(EAAccessory *)self createdByCoreAccessories])
  {
    return 1;
  }

  [(EAAccessoryInternal *)self->_internal connectionID];
  return IAPLocationSendGPSTime() != 0;
}

- (BOOL)sendEphemerisPointDataGpsWeek:(unint64_t)a3 gpsTOW:(double)a4 latitude:(double)a5 longitude:(double)a6 accuracy:(unsigned __int16)a7
{
  if ([(EAAccessory *)self createdByCoreAccessories])
  {
    return 1;
  }

  [(EAAccessoryInternal *)self->_internal connectionID];
  return IAPLocationSendEphemerisPointData() != 0;
}

- (BOOL)sendEphemeris:(id)a3
{
  if ([(EAAccessory *)self createdByCoreAccessories])
  {
    return 1;
  }

  [(EAAccessoryInternal *)self->_internal connectionID];
  return IAPLocationSendEphemeris() != 0;
}

- (BOOL)sendDestinationInformation:(id)a3 identifier:(id)a4
{
  if ([(EAAccessory *)self createdByCoreAccessories])
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];
    [v7 setObject:a4 forKey:*MEMORY[0x277D18428]];
    [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager destinationInformation:"destinationInformation:forAccessoryUUID:" forAccessoryUUID:v7, [(EAAccessory *)self coreAccessoriesPrimaryUUID]];
    return 1;
  }

  else
  {
    v9 = [(EAAccessoryInternal *)self->_internal connectionID];
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3];

    return MEMORY[0x282172900](v9, v10, a4);
  }
}

- (void)beginOOBBTPairingWithCompletionBlock:(id)a3
{
  [(EAAccessoryInternal *)self->_internal setPairingCompletionBlock:a3];
  v4 = [(EAAccessoryInternal *)self->_internal connectionID];

  MEMORY[0x2821728B0](v4);
}

- (void)requestIAPAccessoryWiFiCredentials
{
  if ([(EAAccessoryInternal *)self->_internal createdByCoreAccessories])
  {
    v3 = +[EAAccessoryManager sharedAccessoryManager];
    v4 = [(EAAccessory *)self coreAccessoriesPrimaryUUID];

    [(EAAccessoryManager *)v3 requestIAPAccessoryWiFiCredentials:v4];
  }

  else
  {
    v5 = [(EAAccessoryInternal *)self->_internal connectionID];

    MEMORY[0x2821728E8](v5);
  }
}

- (void)sendDeviceIdentifierNotification:(id)a3 usbIdentifier:(id)a4
{
  if ([(EAAccessoryInternal *)self->_internal createdByCoreAccessories])
  {
    v7 = +[EAAccessoryManager sharedAccessoryManager];
    v8 = [(EAAccessory *)self coreAccessoriesPrimaryUUID];

    [(EAAccessoryManager *)v7 sendDeviceIdentifierNotification:a3 usbIdentifier:a4 forUUID:v8];
  }

  else
  {
    v9 = [(EAAccessoryInternal *)self->_internal connectionID];
    v10 = [a3 UTF8String];
    v11 = [a4 UTF8String];

    MEMORY[0x2821728F8](v9, v10, v11);
  }
}

- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessCarPlayAvailable:(id)a5 bluetoothIdentifier:(id)a6
{
  v11 = +[EAAccessoryManager sharedAccessoryManager];
  v12 = [(EAAccessory *)self coreAccessoriesPrimaryUUID];

  [(EAAccessoryManager *)v11 sendWiredCarPlayAvailable:a3 usbIdentifier:a4 wirelessCarPlayAvailable:a5 bluetoothIdentifier:a6 forUUID:v12];
}

- (id)getVehicleInfoData
{
  v3 = +[EAAccessoryManager sharedAccessoryManager];
  v4 = [(EAAccessory *)self coreAccessoriesPrimaryUUID];

  return [(EAAccessoryManager *)v3 currentVehicleInformation:v4];
}

@end