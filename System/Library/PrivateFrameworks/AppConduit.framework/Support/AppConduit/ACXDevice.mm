@interface ACXDevice
- (ACXDevice)init;
- (ACXDevice)initWithIDSDevice:(id)device messager:(id)messager;
- (BOOL)_onQueue_isReachable;
- (BOOL)isEqual:(id)equal;
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
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)updateIDSDevice:(id)device forMessager:(id)messager;
@end

@implementation ACXDevice

- (NSUUID)pairingID
{
  nrDevice = [(ACXDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyPairingID];

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

- (ACXDevice)initWithIDSDevice:(id)device messager:(id)messager
{
  deviceCopy = device;
  messagerCopy = messager;
  v8 = [(ACXDevice *)self init];
  if (!v8)
  {
    goto LABEL_6;
  }

  if (!deviceCopy)
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

  idsDeviceIdentifier = [(ACXDevice *)v8 idsDeviceIdentifier];

  if (!idsDeviceIdentifier)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  [(ACXDevice *)v8 updateIDSDevice:deviceCopy forMessager:messagerCopy];
  nrDevice = [(ACXDevice *)v8 nrDevice];

  if (!nrDevice)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13 = +[ACXPairedSyncDelegate sharedSyncDelegate];
  pairingID = [(ACXDevice *)v8 pairingID];
  -[ACXDevice setSyncingIsRestricted:](v8, "setSyncingIsRestricted:", [v13 syncingIsRestrictedForPairingID:pairingID]);

LABEL_6:
  v15 = v8;
LABEL_17:

  return v15;
}

- (void)updateIDSDevice:(id)device forMessager:(id)messager
{
  deviceCopy = device;
  messagerCopy = messager;
  internalQueue = [(ACXDevice *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F3B8;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v12 = deviceCopy;
  v13 = messagerCopy;
  v9 = messagerCopy;
  v10 = deviceCopy;
  dispatch_sync(internalQueue, block);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  internalQueue = [(ACXDevice *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F860;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  internalQueue = [(ACXDevice *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F968;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(internalQueue, v7);
}

- (NSURL)pairingStoreURL
{
  nrDevice = [(ACXDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyLocalPairingDataStorePath];

  v4 = [NSURL fileURLWithPath:v3 isDirectory:1];

  return v4;
}

- (BOOL)_onQueue_isReachable
{
  isConnected = [(ACXDevice *)self isConnected];
  if (isConnected)
  {

    LOBYTE(isConnected) = [(ACXDevice *)self isActivePairedDevice];
  }

  return isConnected;
}

- (BOOL)isReachable
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = [(ACXDevice *)self internalQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002FB54;
  v5[3] = &unk_10008C958;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (NSString)model
{
  nrDevice = [(ACXDevice *)self nrDevice];
  v4 = [nrDevice valueForProperty:NRDevicePropertyModelNumber];

  nrDevice2 = [(ACXDevice *)self nrDevice];
  v6 = [nrDevice2 valueForProperty:NRDevicePropertyRegionInfo];

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
  productType = [(ACXDevice *)self productType];
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
  nrDevice = [(ACXDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyProductType];

  return v3;
}

- (NSString)osVersion
{
  nrDevice = [(ACXDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertySystemVersion];

  return v3;
}

- (NSString)osBuildVersion
{
  nrDevice = [(ACXDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertySystemBuildVersion];

  return v3;
}

- (NSString)serialNumber
{
  nrDevice = [(ACXDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertySerialNumber];

  return v3;
}

- (NSString)UUID
{
  nrDevice = [(ACXDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyUDID];

  return v3;
}

- (NSArray)runnableArchNames
{
  nrDevice = [(ACXDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyRunnableArchNames];

  return v3;
}

- (int)cpuType
{
  nrDevice = [(ACXDevice *)self nrDevice];
  v4 = [nrDevice valueForProperty:NRDevicePropertyCPUType];

  if (!v4 && (-[ACXDevice osVersion](self, "osVersion"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 compare:@"5.0" options:64], v5, v6 == -1))
  {
    intValue = 12;
  }

  else
  {
    intValue = [v4 intValue];
  }

  return intValue;
}

- (int)cpuSubtype
{
  nrDevice = [(ACXDevice *)self nrDevice];
  v4 = [nrDevice valueForProperty:NRDevicePropertyCPUSubType];

  if (!v4 && (-[ACXDevice osVersion](self, "osVersion"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 compare:@"5.0" options:64], v5, v6 == -1))
  {
    intValue = 12;
  }

  else
  {
    intValue = [v4 intValue];
  }

  return intValue;
}

- (BOOL)usesLegacySocketService
{
  messager = [(ACXDevice *)self messager];
  serviceName = [messager serviceName];
  v4 = [serviceName isEqualToString:@"com.apple.private.alloy.appsyncconduit.messager"];

  return v4 ^ 1;
}

- (unint64_t)hash
{
  idsDeviceIdentifier = [(ACXDevice *)self idsDeviceIdentifier];
  v3 = [idsDeviceIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      idsDeviceIdentifier = [(ACXDevice *)equalCopy idsDeviceIdentifier];
      idsDeviceIdentifier2 = [(ACXDevice *)self idsDeviceIdentifier];
      v7 = [idsDeviceIdentifier isEqualToString:idsDeviceIdentifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end