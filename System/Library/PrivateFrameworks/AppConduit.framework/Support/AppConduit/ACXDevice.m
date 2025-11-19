@interface ACXDevice
- (ACXDevice)init;
- (ACXDevice)initWithIDSDevice:(id)a3 messager:(id)a4;
- (BOOL)_onQueue_isReachable;
- (BOOL)isEqual:(id)a3;
- (BOOL)isReachable;
- (BOOL)usesLegacySocketService;
- (NSArray)runnableArchNames;
- (NSString)UUID;
- (NSString)model;
- (NSString)osBuildVersion;
- (NSString)osVersion;
- (NSString)productType;
- (NSString)serialNumber;
- (NSString)watchSize;
- (NSURL)pairingStoreURL;
- (NSUUID)pairingID;
- (int)cpuSubtype;
- (int)cpuType;
- (unint64_t)hash;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)updateIDSDevice:(id)a3 forMessager:(id)a4;
@end

@implementation ACXDevice

- (NSUUID)pairingID
{
  v2 = [(ACXDevice *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertyPairingID];

  return v3;
}

- (ACXDevice)init
{
  v9.receiver = self;
  v9.super_class = ACXDevice;
  v2 = [(ACXDevice *)&v9 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.appconduitd.device_internal_queue", v5);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v6;
  }

  return v2;
}

- (ACXDevice)initWithIDSDevice:(id)a3 messager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXDevice *)self init];
  if (!v8)
  {
    goto LABEL_6;
  }

  if (!v6)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_16;
    }

LABEL_15:
    MOLogWrite();
LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  v9 = IDSCopyIDForDevice();
  idsDeviceIdentifier = v8->_idsDeviceIdentifier;
  v8->_idsDeviceIdentifier = v9;

  v11 = [(ACXDevice *)v8 idsDeviceIdentifier];

  if (!v11)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  [(ACXDevice *)v8 updateIDSDevice:v6 forMessager:v7];
  v12 = [(ACXDevice *)v8 nrDevice];

  if (!v12)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13 = +[ACXPairedSyncDelegate sharedSyncDelegate];
  v14 = [(ACXDevice *)v8 pairingID];
  -[ACXDevice setSyncingIsRestricted:](v8, "setSyncingIsRestricted:", [v13 syncingIsRestrictedForPairingID:v14]);

LABEL_6:
  v15 = v8;
LABEL_17:

  return v15;
}

- (void)updateIDSDevice:(id)a3 forMessager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXDevice *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F3B8;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(ACXDevice *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F860;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(ACXDevice *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F968;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (NSURL)pairingStoreURL
{
  v2 = [(ACXDevice *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];

  v4 = [NSURL fileURLWithPath:v3 isDirectory:1];

  return v4;
}

- (BOOL)_onQueue_isReachable
{
  v3 = [(ACXDevice *)self isConnected];
  if (v3)
  {

    LOBYTE(v3) = [(ACXDevice *)self isActivePairedDevice];
  }

  return v3;
}

- (BOOL)isReachable
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ACXDevice *)self internalQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002FB54;
  v5[3] = &unk_10008C958;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (NSString)model
{
  v3 = [(ACXDevice *)self nrDevice];
  v4 = [v3 valueForProperty:NRDevicePropertyModelNumber];

  v5 = [(ACXDevice *)self nrDevice];
  v6 = [v5 valueForProperty:NRDevicePropertyRegionInfo];

  if (!v6)
  {
    v6 = &stru_10008F378;
  }

  if ([v4 length])
  {
    v7 = [NSString stringWithFormat:@"%@%@", v4, v6];
  }

  else
  {
    v7 = @"N/A";
  }

  return v7;
}

- (NSString)watchSize
{
  v2 = [(ACXDevice *)self productType];
  v3 = NRDeviceSizeForProductType();
  if (v3 > 4)
  {
    v4 = @"Unhandled";
  }

  else
  {
    v4 = *(&off_10008D8D0 + v3);
  }

  return &v4->isa;
}

- (NSString)productType
{
  v2 = [(ACXDevice *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertyProductType];

  return v3;
}

- (NSString)osVersion
{
  v2 = [(ACXDevice *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertySystemVersion];

  return v3;
}

- (NSString)osBuildVersion
{
  v2 = [(ACXDevice *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertySystemBuildVersion];

  return v3;
}

- (NSString)serialNumber
{
  v2 = [(ACXDevice *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertySerialNumber];

  return v3;
}

- (NSString)UUID
{
  v2 = [(ACXDevice *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertyUDID];

  return v3;
}

- (NSArray)runnableArchNames
{
  v2 = [(ACXDevice *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertyRunnableArchNames];

  return v3;
}

- (int)cpuType
{
  v3 = [(ACXDevice *)self nrDevice];
  v4 = [v3 valueForProperty:NRDevicePropertyCPUType];

  if (!v4 && (-[ACXDevice osVersion](self, "osVersion"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 compare:@"5.0" options:64], v5, v6 == -1))
  {
    v7 = 12;
  }

  else
  {
    v7 = [v4 intValue];
  }

  return v7;
}

- (int)cpuSubtype
{
  v3 = [(ACXDevice *)self nrDevice];
  v4 = [v3 valueForProperty:NRDevicePropertyCPUSubType];

  if (!v4 && (-[ACXDevice osVersion](self, "osVersion"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 compare:@"5.0" options:64], v5, v6 == -1))
  {
    v7 = 12;
  }

  else
  {
    v7 = [v4 intValue];
  }

  return v7;
}

- (BOOL)usesLegacySocketService
{
  v2 = [(ACXDevice *)self messager];
  v3 = [v2 serviceName];
  v4 = [v3 isEqualToString:@"com.apple.private.alloy.appsyncconduit.v2"];

  return v4 ^ 1;
}

- (unint64_t)hash
{
  v2 = [(ACXDevice *)self idsDeviceIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ACXDevice *)v4 idsDeviceIdentifier];
      v6 = [(ACXDevice *)self idsDeviceIdentifier];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end