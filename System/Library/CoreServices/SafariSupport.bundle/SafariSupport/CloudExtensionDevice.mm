@interface CloudExtensionDevice
+ (CloudExtensionDevice)cloudExtensionDeviceWithCKRecord:(id)a3;
+ (CloudExtensionDevice)cloudExtensionDeviceWithDictionaryRepresentation:(id)a3 extensionSettingsDictionaryForDevice:(id)a4 cloudExtensionsRecordZoneID:(id)a5;
+ (id)_valueTransformerForDeviceName;
- (BOOL)wasNewTabPageSetByUserGesture;
- (NSDictionary)dictionaryRepresentation;
- (NSString)composedIdentifierForNewTabPage;
- (NSString)deviceName;
- (id)_initWithCKRecord:(id)a3;
- (id)_initWithDeviceUUIDString:(id)a3 deviceName:(id)a4 lastModifiedDate:(id)a5 newTabPageComposedIdentifier:(id)a6 newTabPageSetByUserGesture:(BOOL)a7 newTabPageLastModifiedDate:(id)a8 encodedSystemFieldsData:(id)a9 cloudExtensionsRecordZoneID:(id)a10;
- (id)_updateCloudExtensionStatesFromStates:(id)a3;
- (id)description;
- (id)updateFromCloudExtensionDevice:(id)a3;
- (void)_setCloudExtensionStatesFromDictionaryRepresentation:(id)a3 cloudExtensionsRecordZoneID:(id)a4;
- (void)_updateDevicePropertiesFromCloudExtensionDevice:(id)a3;
@end

@implementation CloudExtensionDevice

+ (CloudExtensionDevice)cloudExtensionDeviceWithDictionaryRepresentation:(id)a3 extensionSettingsDictionaryForDevice:(id)a4 cloudExtensionsRecordZoneID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = WBSSafariExtensionStateDeviceUUIDString;
  v10 = a3;
  v11 = [v10 safari_stringForKey:v9];
  v12 = [v10 safari_stringForKey:WBSSafariExtensionStateDeviceName];
  v13 = +[NSDate date];
  v14 = [v10 safari_stringForKey:WBSSafariExtensionStateDeviceNewTabPageComposedIdentifier];
  v15 = v14;
  v16 = &stru_100137BA8;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = [v10 safari_BOOLForKey:WBSSafariExtensionStateDeviceNewTabPageSetByUserGesture];
  v19 = [v10 safari_dateForKey:WBSSafariExtensionStateDeviceNewTabPageLastModified];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = +[NSDate now];
  }

  v21 = v20;

  v22 = [[CloudExtensionDevice alloc] _initWithDeviceUUIDString:v11 deviceName:v12 lastModifiedDate:v13 newTabPageComposedIdentifier:v17 newTabPageSetByUserGesture:v18 newTabPageLastModifiedDate:v21 encodedSystemFieldsData:0 cloudExtensionsRecordZoneID:v8];
  if (v22)
  {
    if ([v7 count])
    {
      [v22 _setCloudExtensionStatesFromDictionaryRepresentation:v7 cloudExtensionsRecordZoneID:v8];
    }

    v23 = v22;
  }

  return v22;
}

+ (CloudExtensionDevice)cloudExtensionDeviceWithCKRecord:(id)a3
{
  v3 = a3;
  if ([v3 safari_isCloudExtensionDeviceRecord])
  {
    v4 = [[CloudExtensionDevice alloc] _initWithCKRecord:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_initWithDeviceUUIDString:(id)a3 deviceName:(id)a4 lastModifiedDate:(id)a5 newTabPageComposedIdentifier:(id)a6 newTabPageSetByUserGesture:(BOOL)a7 newTabPageLastModifiedDate:(id)a8 encodedSystemFieldsData:(id)a9 cloudExtensionsRecordZoneID:(id)a10
{
  v11 = a7;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v44.receiver = self;
  v44.super_class = CloudExtensionDevice;
  v23 = [(CloudExtensionDevice *)&v44 init];
  if (v23)
  {
    v43 = v22;
    v42 = v11;
    v24 = [v21 length];
    v25 = [CKRecord alloc];
    v26 = v25;
    v27 = v16;
    v41 = v24;
    if (v24)
    {
      v28 = [v25 safari_initWithEncodedRecordData:v21];
      record = v23->_record;
      v23->_record = v28;

      [(CKRecord *)v23->_record setTrackChanges:0];
    }

    else
    {
      v30 = [[CKRecordID alloc] initWithRecordName:v16 zoneID:v43];
      v31 = [v26 initWithRecordType:@"CloudExtensionDevice" recordID:v30];
      v32 = v23->_record;
      v23->_record = v31;

      v16 = v27;
    }

    if ([v17 length])
    {
      v33 = [objc_opt_class() _valueTransformerForDeviceName];
      v34 = [v33 transformedValue:v17];
      v35 = [(CKRecord *)v23->_record safari_encryptedValues];
      [v35 setObject:v34 forKeyedSubscript:@"DeviceName"];

      v16 = v27;
    }

    [(CKRecord *)v23->_record setObject:v18 forKeyedSubscript:@"LastModified"];
    if ([v19 length])
    {
      v36 = [objc_opt_class() _valueTransformerForDeviceName];
      v37 = [v36 transformedValue:v19];
      v38 = [(CKRecord *)v23->_record safari_encryptedValues];
      [v38 setObject:v37 forKeyedSubscript:@"NewTabPageComposedIdentifier"];

      v16 = v27;
    }

    if (v42)
    {
      [(CKRecord *)v23->_record setObject:&__kCFBooleanTrue forKeyedSubscript:@"NewTabPageSetByUserGesture"];
    }

    [(CKRecord *)v23->_record setObject:v20 forKeyedSubscript:@"NewTabPageLastModified"];
    v22 = v43;
    if (v41)
    {
      [(CKRecord *)v23->_record setTrackChanges:1];
    }

    v39 = v23;
  }

  return v23;
}

- (id)_initWithCKRecord:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CloudExtensionDevice;
  v5 = [(CloudExtensionDevice *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    record = v5->_record;
    v5->_record = v6;

    v8 = v5;
  }

  return v5;
}

- (id)updateFromCloudExtensionDevice:(id)a3
{
  v4 = a3;
  [(CloudExtensionDevice *)self _updateDevicePropertiesFromCloudExtensionDevice:v4];
  v5 = [v4 cloudExtensionStates];

  v6 = [(CloudExtensionDevice *)self _updateCloudExtensionStatesFromStates:v5];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CloudExtensionDevice *)self deviceName];
  v6 = [(CloudExtensionDevice *)self deviceUUIDString];
  v7 = [(CloudExtensionDevice *)self lastModifiedDate];
  v8 = [(CloudExtensionDevice *)self composedIdentifierForNewTabPage];
  if ([(CloudExtensionDevice *)self wasNewTabPageSetByUserGesture])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [(CloudExtensionDevice *)self lastModifiedDateForNewTabPage];
  v11 = [(CloudExtensionDevice *)self cloudExtensionStates];
  v12 = [v11 componentsJoinedByString:{@", \r    "}];
  v13 = [NSString stringWithFormat:@"<%@: %p name = %@; uuid = %@; lastModified = %@; composedIdentifierForNewTabPage = %@; newTabPageSetByUserGesture = %@; lastModifiedDateForNewTabPage = %@;  cloudExtensionStates = (\r    %@\r)>", v4, self, v5, v6, v7, v8, v9, v10, v12];;

  return v13;
}

- (NSString)deviceName
{
  v3 = [objc_opt_class() _valueTransformerForDeviceName];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"DeviceName"];
  v6 = [v3 reverseTransformedValue:v5];

  return v6;
}

- (NSString)composedIdentifierForNewTabPage
{
  v3 = [objc_opt_class() _valueTransformerForDeviceName];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"NewTabPageComposedIdentifier"];
  v6 = [v3 reverseTransformedValue:v5];

  return v6;
}

- (BOOL)wasNewTabPageSetByUserGesture
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"NewTabPageSetByUserGesture"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v15[0] = WBSSafariExtensionStateDeviceUUIDString;
  v3 = [(CloudExtensionDevice *)self deviceUUIDString];
  v16[0] = v3;
  v15[1] = WBSSafariExtensionStateDeviceName;
  v4 = [(CloudExtensionDevice *)self deviceName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_100137BA8;
  }

  v16[1] = v6;
  v15[2] = WBSSafariExtensionStateDeviceLastModifiedDate;
  v7 = [(CloudExtensionDevice *)self lastModifiedDate];
  v16[2] = v7;
  v15[3] = WBSSafariExtensionStateDeviceNewTabPageComposedIdentifier;
  v8 = [(CloudExtensionDevice *)self composedIdentifierForNewTabPage];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_100137BA8;
  }

  v16[3] = v10;
  v15[4] = WBSSafariExtensionStateDeviceNewTabPageSetByUserGesture;
  v11 = [NSNumber numberWithBool:[(CloudExtensionDevice *)self wasNewTabPageSetByUserGesture]];
  v16[4] = v11;
  v15[5] = WBSSafariExtensionStateDeviceNewTabPageLastModified;
  v12 = [(CloudExtensionDevice *)self lastModifiedDateForNewTabPage];
  v16[5] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:6];

  return v13;
}

+ (id)_valueTransformerForDeviceName
{
  if (qword_100154030 != -1)
  {
    sub_10008F5FC();
  }

  v3 = qword_100154028;

  return v3;
}

- (void)_setCloudExtensionStatesFromDictionaryRepresentation:(id)a3 cloudExtensionsRecordZoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(CloudExtensionDevice *)self deviceUUIDString];
    v9 = +[NSMutableArray array];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008EF08;
    v15[3] = &unk_1001348F8;
    v16 = v8;
    v17 = v7;
    v18 = v9;
    v10 = v9;
    v11 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:v15];
    v12 = [v10 copy];
    cloudExtensionStates = self->_cloudExtensionStates;
    self->_cloudExtensionStates = v12;
  }

  else
  {
    v14 = self->_cloudExtensionStates;
    self->_cloudExtensionStates = 0;
  }
}

- (void)_updateDevicePropertiesFromCloudExtensionDevice:(id)a3
{
  v20 = a3;
  v4 = [v20 deviceName];
  v5 = [(CloudExtensionDevice *)self deviceName];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    v6 = [objc_opt_class() _valueTransformerForDeviceName];
    v7 = [v6 transformedValue:v4];
    v8 = [(CKRecord *)self->_record safari_encryptedValues];
    [v8 setObject:v7 forKeyedSubscript:@"DeviceName"];
  }

  v9 = [v20 lastModifiedDate];
  v10 = [(CloudExtensionDevice *)self lastModifiedDate];
  if (v9 != v10 && ([v9 isEqual:v10] & 1) == 0)
  {
    [(CKRecord *)self->_record setObject:v9 forKeyedSubscript:@"LastModified"];
  }

  v11 = [v20 composedIdentifierForNewTabPage];
  v12 = [(CloudExtensionDevice *)self composedIdentifierForNewTabPage];
  if (v11 != v12 && ([v11 isEqualToString:v12] & 1) == 0)
  {
    v13 = [objc_opt_class() _valueTransformerForDeviceName];
    v14 = [v13 transformedValue:v11];
    v15 = [(CKRecord *)self->_record safari_encryptedValues];
    [v15 setObject:v14 forKeyedSubscript:@"NewTabPageComposedIdentifier"];
  }

  v16 = [v20 wasNewTabPageSetByUserGesture];
  if (v16 != [(CloudExtensionDevice *)self wasNewTabPageSetByUserGesture])
  {
    v17 = [NSNumber numberWithBool:v16];
    [(CKRecord *)self->_record setObject:v17 forKeyedSubscript:@"NewTabPageSetByUserGesture"];
  }

  v18 = [v20 lastModifiedDateForNewTabPage];
  v19 = [(CloudExtensionDevice *)self lastModifiedDateForNewTabPage];
  if (v18 != v19 && ([v18 isEqual:v19] & 1) == 0)
  {
    [(CKRecord *)self->_record setObject:v18 forKeyedSubscript:@"NewTabPageLastModified"];
  }
}

- (id)_updateCloudExtensionStatesFromStates:(id)a3
{
  v4 = a3;
  location = &self->_cloudExtensionStates;
  v5 = [(NSArray *)self->_cloudExtensionStates mutableCopy];
  v30 = +[NSMutableArray array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v10 composedIdentifier];
        v12 = [v10 profileIdentifier];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10008F520;
        v35[3] = &unk_100135530;
        v13 = v11;
        v36 = v13;
        v14 = v12;
        v37 = v14;
        v15 = [v5 indexOfObjectPassingTest:v35];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [v10 copy];
        }

        else
        {
          v17 = v15;
          v16 = [v5 objectAtIndexedSubscript:v15];
          [v5 removeObjectAtIndex:v17];
          [v16 updateFromCloudExtensionState:v10];
        }

        [v30 addObject:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v7);
  }

  objc_storeStrong(location, v30);
  v18 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = v5;
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v31 + 1) + 8 * j) record];
        v25 = [v24 safari_recordName];
        [v18 addObject:v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v21);
  }

  v26 = [v18 copy];

  return v26;
}

@end