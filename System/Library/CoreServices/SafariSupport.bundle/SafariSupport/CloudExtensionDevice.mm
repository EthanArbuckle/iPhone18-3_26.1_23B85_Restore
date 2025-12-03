@interface CloudExtensionDevice
+ (CloudExtensionDevice)cloudExtensionDeviceWithCKRecord:(id)record;
+ (CloudExtensionDevice)cloudExtensionDeviceWithDictionaryRepresentation:(id)representation extensionSettingsDictionaryForDevice:(id)device cloudExtensionsRecordZoneID:(id)d;
+ (id)_valueTransformerForDeviceName;
- (BOOL)wasNewTabPageSetByUserGesture;
- (NSDictionary)dictionaryRepresentation;
- (NSString)composedIdentifierForNewTabPage;
- (NSString)deviceName;
- (id)_initWithCKRecord:(id)record;
- (id)_initWithDeviceUUIDString:(id)string deviceName:(id)name lastModifiedDate:(id)date newTabPageComposedIdentifier:(id)identifier newTabPageSetByUserGesture:(BOOL)gesture newTabPageLastModifiedDate:(id)modifiedDate encodedSystemFieldsData:(id)data cloudExtensionsRecordZoneID:(id)self0;
- (id)_updateCloudExtensionStatesFromStates:(id)states;
- (id)description;
- (id)updateFromCloudExtensionDevice:(id)device;
- (void)_setCloudExtensionStatesFromDictionaryRepresentation:(id)representation cloudExtensionsRecordZoneID:(id)d;
- (void)_updateDevicePropertiesFromCloudExtensionDevice:(id)device;
@end

@implementation CloudExtensionDevice

+ (CloudExtensionDevice)cloudExtensionDeviceWithDictionaryRepresentation:(id)representation extensionSettingsDictionaryForDevice:(id)device cloudExtensionsRecordZoneID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v9 = WBSSafariExtensionStateDeviceUUIDString;
  representationCopy = representation;
  v11 = [representationCopy safari_stringForKey:v9];
  v12 = [representationCopy safari_stringForKey:WBSSafariExtensionStateDeviceName];
  v13 = +[NSDate date];
  v14 = [representationCopy safari_stringForKey:WBSSafariExtensionStateDeviceNewTabPageComposedIdentifier];
  v15 = v14;
  v16 = &stru_100137BA8;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = [representationCopy safari_BOOLForKey:WBSSafariExtensionStateDeviceNewTabPageSetByUserGesture];
  v19 = [representationCopy safari_dateForKey:WBSSafariExtensionStateDeviceNewTabPageLastModified];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = +[NSDate now];
  }

  v21 = v20;

  v22 = [[CloudExtensionDevice alloc] _initWithDeviceUUIDString:v11 deviceName:v12 lastModifiedDate:v13 newTabPageComposedIdentifier:v17 newTabPageSetByUserGesture:v18 newTabPageLastModifiedDate:v21 encodedSystemFieldsData:0 cloudExtensionsRecordZoneID:dCopy];
  if (v22)
  {
    if ([deviceCopy count])
    {
      [v22 _setCloudExtensionStatesFromDictionaryRepresentation:deviceCopy cloudExtensionsRecordZoneID:dCopy];
    }

    v23 = v22;
  }

  return v22;
}

+ (CloudExtensionDevice)cloudExtensionDeviceWithCKRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy safari_isCloudExtensionDeviceRecord])
  {
    v4 = [[CloudExtensionDevice alloc] _initWithCKRecord:recordCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_initWithDeviceUUIDString:(id)string deviceName:(id)name lastModifiedDate:(id)date newTabPageComposedIdentifier:(id)identifier newTabPageSetByUserGesture:(BOOL)gesture newTabPageLastModifiedDate:(id)modifiedDate encodedSystemFieldsData:(id)data cloudExtensionsRecordZoneID:(id)self0
{
  gestureCopy = gesture;
  stringCopy = string;
  nameCopy = name;
  dateCopy = date;
  identifierCopy = identifier;
  modifiedDateCopy = modifiedDate;
  dataCopy = data;
  dCopy = d;
  v44.receiver = self;
  v44.super_class = CloudExtensionDevice;
  v23 = [(CloudExtensionDevice *)&v44 init];
  if (v23)
  {
    v43 = dCopy;
    v42 = gestureCopy;
    v24 = [dataCopy length];
    v25 = [CKRecord alloc];
    v26 = v25;
    v27 = stringCopy;
    v41 = v24;
    if (v24)
    {
      v28 = [v25 safari_initWithEncodedRecordData:dataCopy];
      record = v23->_record;
      v23->_record = v28;

      [(CKRecord *)v23->_record setTrackChanges:0];
    }

    else
    {
      v30 = [[CKRecordID alloc] initWithRecordName:stringCopy zoneID:v43];
      v31 = [v26 initWithRecordType:@"CloudExtensionDevice" recordID:v30];
      v32 = v23->_record;
      v23->_record = v31;

      stringCopy = v27;
    }

    if ([nameCopy length])
    {
      _valueTransformerForDeviceName = [objc_opt_class() _valueTransformerForDeviceName];
      v34 = [_valueTransformerForDeviceName transformedValue:nameCopy];
      safari_encryptedValues = [(CKRecord *)v23->_record safari_encryptedValues];
      [safari_encryptedValues setObject:v34 forKeyedSubscript:@"DeviceName"];

      stringCopy = v27;
    }

    [(CKRecord *)v23->_record setObject:dateCopy forKeyedSubscript:@"LastModified"];
    if ([identifierCopy length])
    {
      _valueTransformerForDeviceName2 = [objc_opt_class() _valueTransformerForDeviceName];
      v37 = [_valueTransformerForDeviceName2 transformedValue:identifierCopy];
      safari_encryptedValues2 = [(CKRecord *)v23->_record safari_encryptedValues];
      [safari_encryptedValues2 setObject:v37 forKeyedSubscript:@"NewTabPageComposedIdentifier"];

      stringCopy = v27;
    }

    if (v42)
    {
      [(CKRecord *)v23->_record setObject:&__kCFBooleanTrue forKeyedSubscript:@"NewTabPageSetByUserGesture"];
    }

    [(CKRecord *)v23->_record setObject:modifiedDateCopy forKeyedSubscript:@"NewTabPageLastModified"];
    dCopy = v43;
    if (v41)
    {
      [(CKRecord *)v23->_record setTrackChanges:1];
    }

    v39 = v23;
  }

  return v23;
}

- (id)_initWithCKRecord:(id)record
{
  recordCopy = record;
  v10.receiver = self;
  v10.super_class = CloudExtensionDevice;
  v5 = [(CloudExtensionDevice *)&v10 init];
  if (v5)
  {
    v6 = [recordCopy copy];
    record = v5->_record;
    v5->_record = v6;

    v8 = v5;
  }

  return v5;
}

- (id)updateFromCloudExtensionDevice:(id)device
{
  deviceCopy = device;
  [(CloudExtensionDevice *)self _updateDevicePropertiesFromCloudExtensionDevice:deviceCopy];
  cloudExtensionStates = [deviceCopy cloudExtensionStates];

  v6 = [(CloudExtensionDevice *)self _updateCloudExtensionStatesFromStates:cloudExtensionStates];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  deviceName = [(CloudExtensionDevice *)self deviceName];
  deviceUUIDString = [(CloudExtensionDevice *)self deviceUUIDString];
  lastModifiedDate = [(CloudExtensionDevice *)self lastModifiedDate];
  composedIdentifierForNewTabPage = [(CloudExtensionDevice *)self composedIdentifierForNewTabPage];
  if ([(CloudExtensionDevice *)self wasNewTabPageSetByUserGesture])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  lastModifiedDateForNewTabPage = [(CloudExtensionDevice *)self lastModifiedDateForNewTabPage];
  cloudExtensionStates = [(CloudExtensionDevice *)self cloudExtensionStates];
  v12 = [cloudExtensionStates componentsJoinedByString:{@", \r    "}];
  v13 = [NSString stringWithFormat:@"<%@: %p name = %@; uuid = %@; lastModified = %@; composedIdentifierForNewTabPage = %@; newTabPageSetByUserGesture = %@; lastModifiedDateForNewTabPage = %@;  cloudExtensionStates = (\r    %@\r)>", v4, self, deviceName, deviceUUIDString, lastModifiedDate, composedIdentifierForNewTabPage, v9, lastModifiedDateForNewTabPage, v12];;

  return v13;
}

- (NSString)deviceName
{
  _valueTransformerForDeviceName = [objc_opt_class() _valueTransformerForDeviceName];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"DeviceName"];
  v6 = [_valueTransformerForDeviceName reverseTransformedValue:v5];

  return v6;
}

- (NSString)composedIdentifierForNewTabPage
{
  _valueTransformerForDeviceName = [objc_opt_class() _valueTransformerForDeviceName];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"NewTabPageComposedIdentifier"];
  v6 = [_valueTransformerForDeviceName reverseTransformedValue:v5];

  return v6;
}

- (BOOL)wasNewTabPageSetByUserGesture
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"NewTabPageSetByUserGesture"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSDictionary)dictionaryRepresentation
{
  v15[0] = WBSSafariExtensionStateDeviceUUIDString;
  deviceUUIDString = [(CloudExtensionDevice *)self deviceUUIDString];
  v16[0] = deviceUUIDString;
  v15[1] = WBSSafariExtensionStateDeviceName;
  deviceName = [(CloudExtensionDevice *)self deviceName];
  v5 = deviceName;
  if (deviceName)
  {
    v6 = deviceName;
  }

  else
  {
    v6 = &stru_100137BA8;
  }

  v16[1] = v6;
  v15[2] = WBSSafariExtensionStateDeviceLastModifiedDate;
  lastModifiedDate = [(CloudExtensionDevice *)self lastModifiedDate];
  v16[2] = lastModifiedDate;
  v15[3] = WBSSafariExtensionStateDeviceNewTabPageComposedIdentifier;
  composedIdentifierForNewTabPage = [(CloudExtensionDevice *)self composedIdentifierForNewTabPage];
  v9 = composedIdentifierForNewTabPage;
  if (composedIdentifierForNewTabPage)
  {
    v10 = composedIdentifierForNewTabPage;
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
  lastModifiedDateForNewTabPage = [(CloudExtensionDevice *)self lastModifiedDateForNewTabPage];
  v16[5] = lastModifiedDateForNewTabPage;
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

- (void)_setCloudExtensionStatesFromDictionaryRepresentation:(id)representation cloudExtensionsRecordZoneID:(id)d
{
  representationCopy = representation;
  dCopy = d;
  if ([representationCopy count])
  {
    deviceUUIDString = [(CloudExtensionDevice *)self deviceUUIDString];
    v9 = +[NSMutableArray array];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008EF08;
    v15[3] = &unk_1001348F8;
    v16 = deviceUUIDString;
    v17 = dCopy;
    v18 = v9;
    v10 = v9;
    v11 = deviceUUIDString;
    [representationCopy enumerateKeysAndObjectsUsingBlock:v15];
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

- (void)_updateDevicePropertiesFromCloudExtensionDevice:(id)device
{
  deviceCopy = device;
  deviceName = [deviceCopy deviceName];
  deviceName2 = [(CloudExtensionDevice *)self deviceName];
  if (deviceName != deviceName2 && ([deviceName isEqualToString:deviceName2] & 1) == 0)
  {
    _valueTransformerForDeviceName = [objc_opt_class() _valueTransformerForDeviceName];
    v7 = [_valueTransformerForDeviceName transformedValue:deviceName];
    safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues setObject:v7 forKeyedSubscript:@"DeviceName"];
  }

  lastModifiedDate = [deviceCopy lastModifiedDate];
  lastModifiedDate2 = [(CloudExtensionDevice *)self lastModifiedDate];
  if (lastModifiedDate != lastModifiedDate2 && ([lastModifiedDate isEqual:lastModifiedDate2] & 1) == 0)
  {
    [(CKRecord *)self->_record setObject:lastModifiedDate forKeyedSubscript:@"LastModified"];
  }

  composedIdentifierForNewTabPage = [deviceCopy composedIdentifierForNewTabPage];
  composedIdentifierForNewTabPage2 = [(CloudExtensionDevice *)self composedIdentifierForNewTabPage];
  if (composedIdentifierForNewTabPage != composedIdentifierForNewTabPage2 && ([composedIdentifierForNewTabPage isEqualToString:composedIdentifierForNewTabPage2] & 1) == 0)
  {
    _valueTransformerForDeviceName2 = [objc_opt_class() _valueTransformerForDeviceName];
    v14 = [_valueTransformerForDeviceName2 transformedValue:composedIdentifierForNewTabPage];
    safari_encryptedValues2 = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues2 setObject:v14 forKeyedSubscript:@"NewTabPageComposedIdentifier"];
  }

  wasNewTabPageSetByUserGesture = [deviceCopy wasNewTabPageSetByUserGesture];
  if (wasNewTabPageSetByUserGesture != [(CloudExtensionDevice *)self wasNewTabPageSetByUserGesture])
  {
    v17 = [NSNumber numberWithBool:wasNewTabPageSetByUserGesture];
    [(CKRecord *)self->_record setObject:v17 forKeyedSubscript:@"NewTabPageSetByUserGesture"];
  }

  lastModifiedDateForNewTabPage = [deviceCopy lastModifiedDateForNewTabPage];
  lastModifiedDateForNewTabPage2 = [(CloudExtensionDevice *)self lastModifiedDateForNewTabPage];
  if (lastModifiedDateForNewTabPage != lastModifiedDateForNewTabPage2 && ([lastModifiedDateForNewTabPage isEqual:lastModifiedDateForNewTabPage2] & 1) == 0)
  {
    [(CKRecord *)self->_record setObject:lastModifiedDateForNewTabPage forKeyedSubscript:@"NewTabPageLastModified"];
  }
}

- (id)_updateCloudExtensionStatesFromStates:(id)states
{
  statesCopy = states;
  location = &self->_cloudExtensionStates;
  v5 = [(NSArray *)self->_cloudExtensionStates mutableCopy];
  v30 = +[NSMutableArray array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = statesCopy;
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
        composedIdentifier = [v10 composedIdentifier];
        profileIdentifier = [v10 profileIdentifier];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10008F520;
        v35[3] = &unk_100135530;
        v13 = composedIdentifier;
        v36 = v13;
        v14 = profileIdentifier;
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

        record = [*(*(&v31 + 1) + 8 * j) record];
        safari_recordName = [record safari_recordName];
        [v18 addObject:safari_recordName];
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v21);
  }

  v26 = [v18 copy];

  return v26;
}

@end