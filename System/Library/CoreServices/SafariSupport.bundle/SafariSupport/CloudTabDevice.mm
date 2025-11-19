@interface CloudTabDevice
+ (id)_valueTransformerForDeviceName;
- (BOOL)hasDuplicateName;
- (BOOL)isEphemeralDevice;
- (CKRecord)record;
- (NSDictionary)wbsCloudTabDeviceDictionary;
- (NSString)deviceName;
- (NSString)deviceTypeIdentifier;
- (id)_initWithCKRecord:(id)a3 isManateeContainer:(BOOL)a4;
- (id)_initWithParameters:(id)a3 encodedSystemFieldsData:(id)a4 cloudTabsRecordZoneID:(id)a5 isManateeContainer:(BOOL)a6;
- (id)_updateTabsFromCloudTabs:(id)a3;
- (id)description;
- (id)updateFromCloudTabDevice:(id)a3;
- (void)_removeManateeSepecifcFieldsFromRecordIfNeeded;
- (void)_setTabsFromWBSCloudTabDictionaryRepresentations:(id)a3 cloudTabsRecordZoneID:(id)a4;
@end

@implementation CloudTabDevice

- (id)_initWithCKRecord:(id)a3 isManateeContainer:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CloudTabDevice;
  v7 = [(CloudTabDevice *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    record = v7->_record;
    v7->_record = v8;

    v7->_isManateeContainer = a4;
    [(CloudTabDevice *)v7 _removeManateeSepecifcFieldsFromRecordIfNeeded];
    v10 = v7;
  }

  return v7;
}

- (id)_initWithParameters:(id)a3 encodedSystemFieldsData:(id)a4 cloudTabsRecordZoneID:(id)a5 isManateeContainer:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v43.receiver = self;
  v43.super_class = CloudTabDevice;
  v13 = [(CloudTabDevice *)&v43 init];
  if (v13)
  {
    v14 = [v10 deviceName];
    v15 = [v10 deviceUUIDString];
    v42 = [v10 deviceTypeIdentifier];
    v39 = [v10 hasDuplicateName];
    v40 = [v10 isEphemeralDevice];
    v16 = [v11 length];
    v17 = [v10 lastModified];
    v38 = v6;
    v13->_isManateeContainer = v6;
    v18 = [CKRecord alloc];
    v19 = v18;
    v41 = v16;
    if (v16)
    {
      v20 = [v18 safari_initWithEncodedRecordData:v11];
      record = v13->_record;
      v13->_record = v20;

      [(CloudTabDevice *)v13 _removeManateeSepecifcFieldsFromRecordIfNeeded];
      [(CKRecord *)v13->_record setTrackChanges:0];
    }

    else
    {
      v22 = [[CKRecordID alloc] initWithRecordName:v15 zoneID:v12];
      v23 = v15;
      v24 = v14;
      v25 = v12;
      v26 = v22;
      v27 = [v19 initWithRecordType:@"CloudTabDevice" recordID:v22];
      v28 = v13->_record;
      v13->_record = v27;

      v12 = v25;
      v14 = v24;
      v15 = v23;
    }

    if ([v14 length])
    {
      v29 = [objc_opt_class() _valueTransformerForDeviceName];
      v30 = [v29 transformedValue:v14];
      [(CKRecord *)v13->_record safari_encryptedValues];
      v31 = v15;
      v32 = v14;
      v34 = v33 = v12;
      [v34 setObject:v30 forKeyedSubscript:@"DeviceName"];

      v12 = v33;
      v14 = v32;
      v15 = v31;
    }

    if ([v42 length] && v38)
    {
      v35 = [(CKRecord *)v13->_record safari_encryptedValues];
      [v35 setObject:v42 forKeyedSubscript:@"DeviceTypeIdentifier"];
    }

    if (v39)
    {
      [(CKRecord *)v13->_record setObject:&__kCFBooleanTrue forKeyedSubscript:@"HasDuplicateDeviceName"];
    }

    if (v40)
    {
      [(CKRecord *)v13->_record setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsEphemeralDevice"];
    }

    [(CKRecord *)v13->_record setObject:v17 forKeyedSubscript:@"LastModified"];
    if (v41)
    {
      [(CKRecord *)v13->_record setTrackChanges:1];
    }

    v36 = v13;
  }

  return v13;
}

- (id)updateFromCloudTabDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceName];
  v6 = [(CloudTabDevice *)self deviceName];
  if (v5 != v6 && ([v5 isEqualToString:v6] & 1) == 0)
  {
    v7 = [objc_opt_class() _valueTransformerForDeviceName];
    v8 = [v7 transformedValue:v5];
    v9 = [(CKRecord *)self->_record safari_encryptedValues];
    [v9 setObject:v8 forKeyedSubscript:@"DeviceName"];
  }

  if (self->_isManateeContainer)
  {
    v10 = [v4 deviceTypeIdentifier];
    v11 = [(CloudTabDevice *)self deviceTypeIdentifier];
    if (v10 != v11 && ([v10 isEqualToString:v11] & 1) == 0)
    {
      v12 = [(CKRecord *)self->_record safari_encryptedValues];
      [v12 setObject:v10 forKeyedSubscript:@"DeviceTypeIdentifier"];
    }
  }

  v13 = [v4 hasDuplicateName];
  if (v13 != [(CloudTabDevice *)self hasDuplicateName])
  {
    if (v13)
    {
      v14 = &__kCFBooleanTrue;
    }

    else
    {
      v14 = 0;
    }

    [(CKRecord *)self->_record setObject:v14 forKeyedSubscript:@"HasDuplicateDeviceName"];
  }

  v15 = [v4 isEphemeralDevice];
  if (v15 != [(CloudTabDevice *)self isEphemeralDevice])
  {
    if (v15)
    {
      v16 = &__kCFBooleanTrue;
    }

    else
    {
      v16 = 0;
    }

    [(CKRecord *)self->_record setObject:v16 forKeyedSubscript:@"IsEphemeralDevice"];
  }

  v17 = [v4 lastModified];
  v18 = [(CloudTabDevice *)self lastModified];
  if (v17 != v18 && ([v17 isEqual:v18] & 1) == 0)
  {
    [(CKRecord *)self->_record setObject:v17 forKeyedSubscript:@"LastModified"];
  }

  v19 = [v4 tabs];
  v20 = [(CloudTabDevice *)self _updateTabsFromCloudTabs:v19];

  return v20;
}

- (id)_updateTabsFromCloudTabs:(id)a3
{
  v4 = a3;
  tabs = self->_tabs;
  p_tabs = &self->_tabs;
  v7 = [(NSArray *)tabs mutableCopy];
  v30 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v28 = p_tabs;
    v10 = 0;
    v11 = *v38;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * v12);
        v15 = [v14 tabUUIDString];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100093770;
        v35[3] = &unk_1001355A0;
        v36 = v15;
        v16 = v15;
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

        v10 = [v18 position];

        [v30 addObject:v18];
        v12 = v12 + 1;
        v13 = v10;
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

        v26 = [*(*(&v31 + 1) + 8 * i) tabUUIDString];
        [v20 addObject:v26];
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
  v5 = [(CloudTabDevice *)self deviceName];
  v6 = [(CloudTabDevice *)self deviceUUIDString];
  v7 = [(CloudTabDevice *)self lastModified];
  v8 = [(CloudTabDevice *)self hasDuplicateName];
  v9 = [(CloudTabDevice *)self isEphemeralDevice];
  v10 = [(CloudTabDevice *)self tabs];
  v11 = [v10 componentsJoinedByString:{@", \r    "}];
  v12 = [NSString stringWithFormat:@"<%@: %p name = %@; uuid = %@; lastModified = %@; hasDuplicateName = %d; isEphemeralDevice = %d; tabs = (\r    %@\r)>", v4, self, v5, v6, v7, v8, v9, v11];;

  return v12;
}

- (NSString)deviceName
{
  v3 = [objc_opt_class() _valueTransformerForDeviceName];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"DeviceName"];
  v6 = [v3 reverseTransformedValue:v5];

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
  v2 = [(CKRecord *)self->_record safari_encryptedValues];
  v3 = [v2 objectForKeyedSubscript:@"DeviceTypeIdentifier"];

  return v3;
}

- (BOOL)hasDuplicateName
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"HasDuplicateDeviceName"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isEphemeralDevice
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"IsEphemeralDevice"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSDictionary)wbsCloudTabDeviceDictionary
{
  v16[0] = @"DeviceName";
  v3 = [(CloudTabDevice *)self deviceName];
  v4 = v3;
  v5 = &stru_100137BA8;
  if (v3)
  {
    v5 = v3;
  }

  v17[0] = v5;
  v16[1] = @"LastModified";
  v6 = [(CloudTabDevice *)self lastModified];
  v17[1] = v6;
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

  v10 = [(CloudTabDevice *)self deviceTypeIdentifier];
  [v9 setObject:v10 forKeyedSubscript:@"DeviceTypeIdentifier"];

  v11 = [(CloudTabDevice *)self tabs];
  v12 = [v11 valueForKey:@"wbsCloudTabDictionaryRepresentation"];

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

- (void)_setTabsFromWBSCloudTabDictionaryRepresentations:(id)a3 cloudTabsRecordZoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudTabDevice *)self deviceUUIDString];
  v18 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v6;
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
        v11 = [(CloudTabDevice *)self _positionAfterPosition:v14 owningDeviceUUIDString:v8];

        v16 = [CloudTab cloudTabWithWBSCloudTabDictionaryRepresentation:v15 owningDeviceUUIDString:v8 position:v11 cloudTabsRecordZoneID:v7 isManateeContainer:self->_isManateeContainer];
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
    v3 = [(CKRecord *)self->_record safari_encryptedValues];
    v4 = [v3 objectForKeyedSubscript:@"DeviceTypeIdentifier"];

    if (v4)
    {
      v5 = [(CKRecord *)self->_record safari_encryptedValues];
      [v5 setObject:0 forKeyedSubscript:@"DeviceTypeIdentifier"];
    }
  }
}

@end