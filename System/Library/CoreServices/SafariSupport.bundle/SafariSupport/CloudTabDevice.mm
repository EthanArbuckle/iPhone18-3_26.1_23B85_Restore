@interface CloudTabDevice
+ (id)_valueTransformerForDeviceName;
- (BOOL)hasDuplicateName;
- (BOOL)isEphemeralDevice;
- (CKRecord)record;
- (NSDictionary)wbsCloudTabDeviceDictionary;
- (NSString)deviceName;
- (NSString)deviceTypeIdentifier;
- (id)_initWithCKRecord:(id)record isManateeContainer:(BOOL)container;
- (id)_initWithParameters:(id)parameters encodedSystemFieldsData:(id)data cloudTabsRecordZoneID:(id)d isManateeContainer:(BOOL)container;
- (id)_updateTabsFromCloudTabs:(id)tabs;
- (id)description;
- (id)updateFromCloudTabDevice:(id)device;
- (void)_removeManateeSepecifcFieldsFromRecordIfNeeded;
- (void)_setTabsFromWBSCloudTabDictionaryRepresentations:(id)representations cloudTabsRecordZoneID:(id)d;
@end

@implementation CloudTabDevice

- (id)_initWithCKRecord:(id)record isManateeContainer:(BOOL)container
{
  recordCopy = record;
  v12.receiver = self;
  v12.super_class = CloudTabDevice;
  v7 = [(CloudTabDevice *)&v12 init];
  if (v7)
  {
    v8 = [recordCopy copy];
    record = v7->_record;
    v7->_record = v8;

    v7->_isManateeContainer = container;
    [(CloudTabDevice *)v7 _removeManateeSepecifcFieldsFromRecordIfNeeded];
    v10 = v7;
  }

  return v7;
}

- (id)_initWithParameters:(id)parameters encodedSystemFieldsData:(id)data cloudTabsRecordZoneID:(id)d isManateeContainer:(BOOL)container
{
  containerCopy = container;
  parametersCopy = parameters;
  dataCopy = data;
  dCopy = d;
  v43.receiver = self;
  v43.super_class = CloudTabDevice;
  v13 = [(CloudTabDevice *)&v43 init];
  if (v13)
  {
    deviceName = [parametersCopy deviceName];
    deviceUUIDString = [parametersCopy deviceUUIDString];
    deviceTypeIdentifier = [parametersCopy deviceTypeIdentifier];
    hasDuplicateName = [parametersCopy hasDuplicateName];
    isEphemeralDevice = [parametersCopy isEphemeralDevice];
    v16 = [dataCopy length];
    lastModified = [parametersCopy lastModified];
    v38 = containerCopy;
    v13->_isManateeContainer = containerCopy;
    v18 = [CKRecord alloc];
    v19 = v18;
    v41 = v16;
    if (v16)
    {
      v20 = [v18 safari_initWithEncodedRecordData:dataCopy];
      record = v13->_record;
      v13->_record = v20;

      [(CloudTabDevice *)v13 _removeManateeSepecifcFieldsFromRecordIfNeeded];
      [(CKRecord *)v13->_record setTrackChanges:0];
    }

    else
    {
      v22 = [[CKRecordID alloc] initWithRecordName:deviceUUIDString zoneID:dCopy];
      v23 = deviceUUIDString;
      v24 = deviceName;
      v25 = dCopy;
      v26 = v22;
      v27 = [v19 initWithRecordType:@"CloudTabDevice" recordID:v22];
      v28 = v13->_record;
      v13->_record = v27;

      dCopy = v25;
      deviceName = v24;
      deviceUUIDString = v23;
    }

    if ([deviceName length])
    {
      _valueTransformerForDeviceName = [objc_opt_class() _valueTransformerForDeviceName];
      v30 = [_valueTransformerForDeviceName transformedValue:deviceName];
      [(CKRecord *)v13->_record safari_encryptedValues];
      v31 = deviceUUIDString;
      v32 = deviceName;
      v34 = v33 = dCopy;
      [v34 setObject:v30 forKeyedSubscript:@"DeviceName"];

      dCopy = v33;
      deviceName = v32;
      deviceUUIDString = v31;
    }

    if ([deviceTypeIdentifier length] && v38)
    {
      safari_encryptedValues = [(CKRecord *)v13->_record safari_encryptedValues];
      [safari_encryptedValues setObject:deviceTypeIdentifier forKeyedSubscript:@"DeviceTypeIdentifier"];
    }

    if (hasDuplicateName)
    {
      [(CKRecord *)v13->_record setObject:&__kCFBooleanTrue forKeyedSubscript:@"HasDuplicateDeviceName"];
    }

    if (isEphemeralDevice)
    {
      [(CKRecord *)v13->_record setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsEphemeralDevice"];
    }

    [(CKRecord *)v13->_record setObject:lastModified forKeyedSubscript:@"LastModified"];
    if (v41)
    {
      [(CKRecord *)v13->_record setTrackChanges:1];
    }

    v36 = v13;
  }

  return v13;
}

- (id)updateFromCloudTabDevice:(id)device
{
  deviceCopy = device;
  deviceName = [deviceCopy deviceName];
  deviceName2 = [(CloudTabDevice *)self deviceName];
  if (deviceName != deviceName2 && ([deviceName isEqualToString:deviceName2] & 1) == 0)
  {
    _valueTransformerForDeviceName = [objc_opt_class() _valueTransformerForDeviceName];
    v8 = [_valueTransformerForDeviceName transformedValue:deviceName];
    safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues setObject:v8 forKeyedSubscript:@"DeviceName"];
  }

  if (self->_isManateeContainer)
  {
    deviceTypeIdentifier = [deviceCopy deviceTypeIdentifier];
    deviceTypeIdentifier2 = [(CloudTabDevice *)self deviceTypeIdentifier];
    if (deviceTypeIdentifier != deviceTypeIdentifier2 && ([deviceTypeIdentifier isEqualToString:deviceTypeIdentifier2] & 1) == 0)
    {
      safari_encryptedValues2 = [(CKRecord *)self->_record safari_encryptedValues];
      [safari_encryptedValues2 setObject:deviceTypeIdentifier forKeyedSubscript:@"DeviceTypeIdentifier"];
    }
  }

  hasDuplicateName = [deviceCopy hasDuplicateName];
  if (hasDuplicateName != [(CloudTabDevice *)self hasDuplicateName])
  {
    if (hasDuplicateName)
    {
      v14 = &__kCFBooleanTrue;
    }

    else
    {
      v14 = 0;
    }

    [(CKRecord *)self->_record setObject:v14 forKeyedSubscript:@"HasDuplicateDeviceName"];
  }

  isEphemeralDevice = [deviceCopy isEphemeralDevice];
  if (isEphemeralDevice != [(CloudTabDevice *)self isEphemeralDevice])
  {
    if (isEphemeralDevice)
    {
      v16 = &__kCFBooleanTrue;
    }

    else
    {
      v16 = 0;
    }

    [(CKRecord *)self->_record setObject:v16 forKeyedSubscript:@"IsEphemeralDevice"];
  }

  lastModified = [deviceCopy lastModified];
  lastModified2 = [(CloudTabDevice *)self lastModified];
  if (lastModified != lastModified2 && ([lastModified isEqual:lastModified2] & 1) == 0)
  {
    [(CKRecord *)self->_record setObject:lastModified forKeyedSubscript:@"LastModified"];
  }

  tabs = [deviceCopy tabs];
  v20 = [(CloudTabDevice *)self _updateTabsFromCloudTabs:tabs];

  return v20;
}

- (id)_updateTabsFromCloudTabs:(id)tabs
{
  tabsCopy = tabs;
  tabs = self->_tabs;
  p_tabs = &self->_tabs;
  v7 = [(NSArray *)tabs mutableCopy];
  v30 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = tabsCopy;
  v8 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v28 = p_tabs;
    position = 0;
    v11 = *v38;
    do
    {
      v12 = 0;
      v13 = position;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * v12);
        tabUUIDString = [v14 tabUUIDString];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100093770;
        v35[3] = &unk_1001355A0;
        v36 = tabUUIDString;
        v16 = tabUUIDString;
        v17 = [v7 indexOfObjectPassingTest:v35];
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [v14 copy];
          [v18 positionTabAfterPosition:v13];
        }

        else
        {
          v19 = v17;
          v18 = [v7 objectAtIndexedSubscript:v17];
          [v7 removeObjectAtIndex:v19];
          [v18 updateFromCloudTab:v14 previousTabPosition:v13];
        }

        position = [v18 position];

        [v30 addObject:v18];
        v12 = v12 + 1;
        v13 = position;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);

    p_tabs = v28;
  }

  objc_storeStrong(p_tabs, v30);
  v20 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v7;
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        tabUUIDString2 = [*(*(&v31 + 1) + 8 * i) tabUUIDString];
        [v20 addObject:tabUUIDString2];
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v23);
  }

  return v20;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  deviceName = [(CloudTabDevice *)self deviceName];
  deviceUUIDString = [(CloudTabDevice *)self deviceUUIDString];
  lastModified = [(CloudTabDevice *)self lastModified];
  hasDuplicateName = [(CloudTabDevice *)self hasDuplicateName];
  isEphemeralDevice = [(CloudTabDevice *)self isEphemeralDevice];
  tabs = [(CloudTabDevice *)self tabs];
  v11 = [tabs componentsJoinedByString:{@", \r    "}];
  v12 = [NSString stringWithFormat:@"<%@: %p name = %@; uuid = %@; lastModified = %@; hasDuplicateName = %d; isEphemeralDevice = %d; tabs = (\r    %@\r)>", v4, self, deviceName, deviceUUIDString, lastModified, hasDuplicateName, isEphemeralDevice, v11];;

  return v12;
}

- (NSString)deviceName
{
  _valueTransformerForDeviceName = [objc_opt_class() _valueTransformerForDeviceName];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"DeviceName"];
  v6 = [_valueTransformerForDeviceName reverseTransformedValue:v5];

  return v6;
}

- (CKRecord)record
{
  [(CloudTabDevice *)self _removeManateeSepecifcFieldsFromRecordIfNeeded];
  record = self->_record;

  return record;
}

- (NSString)deviceTypeIdentifier
{
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v3 = [safari_encryptedValues objectForKeyedSubscript:@"DeviceTypeIdentifier"];

  return v3;
}

- (BOOL)hasDuplicateName
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"HasDuplicateDeviceName"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isEphemeralDevice
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"IsEphemeralDevice"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSDictionary)wbsCloudTabDeviceDictionary
{
  v16[0] = @"DeviceName";
  deviceName = [(CloudTabDevice *)self deviceName];
  v4 = deviceName;
  v5 = &stru_100137BA8;
  if (deviceName)
  {
    v5 = deviceName;
  }

  v17[0] = v5;
  v16[1] = @"LastModified";
  lastModified = [(CloudTabDevice *)self lastModified];
  v17[1] = lastModified;
  v17[2] = @"Device";
  v16[2] = @"DictionaryType";
  v16[3] = @"Capabilities";
  v14[0] = @"CloseTabRequest";
  v14[1] = @"CloudKitBookmarkSyncing";
  v15[0] = &__kCFBooleanTrue;
  v15[1] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];
  v9 = [v8 mutableCopy];

  if ([(CloudTabDevice *)self hasDuplicateName])
  {
    [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"HasDuplicateDeviceName"];
  }

  if ([(CloudTabDevice *)self isEphemeralDevice])
  {
    [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsEphemeralDevice"];
  }

  deviceTypeIdentifier = [(CloudTabDevice *)self deviceTypeIdentifier];
  [v9 setObject:deviceTypeIdentifier forKeyedSubscript:@"DeviceTypeIdentifier"];

  tabs = [(CloudTabDevice *)self tabs];
  v12 = [tabs valueForKey:@"wbsCloudTabDictionaryRepresentation"];

  if ([v12 count])
  {
    [v9 setObject:v12 forKeyedSubscript:@"Tabs"];
  }

  return v9;
}

+ (id)_valueTransformerForDeviceName
{
  if (qword_100154050 != -1)
  {
    sub_100094024();
  }

  v3 = qword_100154048;

  return v3;
}

- (void)_setTabsFromWBSCloudTabDictionaryRepresentations:(id)representations cloudTabsRecordZoneID:(id)d
{
  representationsCopy = representations;
  dCopy = d;
  deviceUUIDString = [(CloudTabDevice *)self deviceUUIDString];
  v18 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = representationsCopy;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v19 + 1) + 8 * v13);
        v11 = [(CloudTabDevice *)self _positionAfterPosition:v14 owningDeviceUUIDString:deviceUUIDString];

        v16 = [CloudTab cloudTabWithWBSCloudTabDictionaryRepresentation:v15 owningDeviceUUIDString:deviceUUIDString position:v11 cloudTabsRecordZoneID:dCopy isManateeContainer:self->_isManateeContainer];
        if (v16)
        {
          [v18 addObject:v16];
        }

        v13 = v13 + 1;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  [(CloudTabDevice *)self setTabs:v18];
}

- (void)_removeManateeSepecifcFieldsFromRecordIfNeeded
{
  if (!self->_isManateeContainer)
  {
    safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
    v4 = [safari_encryptedValues objectForKeyedSubscript:@"DeviceTypeIdentifier"];

    if (v4)
    {
      safari_encryptedValues2 = [(CKRecord *)self->_record safari_encryptedValues];
      [safari_encryptedValues2 setObject:0 forKeyedSubscript:@"DeviceTypeIdentifier"];
    }
  }
}

@end