@interface CloudExtensionState
+ (id)cloudExtensionStateWithCKRecord:(id)record;
+ (id)cloudExtensionStateWithComposedIdentifier:(id)identifier owningDeviceUUIDString:(id)string lastModifiedDate:(id)date containingAppAdamID:(id)d displayName:(id)name isEnabled:(BOOL)enabled wasEnabledByUserGesture:(BOOL)gesture iosAppBundleIdentifier:(id)self0 iosExtensionBundleIdentifier:(id)self1 macAppBundleIdentifier:(id)self2 macExtensionBundleIdentifier:(id)self3 encodedSystemFieldsData:(id)self4 cloudExtensionsRecordZoneID:(id)self5;
+ (id)cloudExtensionStateWithComposedIdentifier:(id)identifier owningDeviceUUIDString:(id)string lastModifiedDate:(id)date containingAppAdamID:(id)d displayName:(id)name isEnabled:(BOOL)enabled wasEnabledByUserGesture:(BOOL)gesture iosAppBundleIdentifier:(id)self0 iosExtensionBundleIdentifier:(id)self1 macAppBundleIdentifier:(id)self2 macExtensionBundleIdentifier:(id)self3 profileIdentifier:(id)self4 encodedSystemFieldsData:(id)self5 cloudExtensionsRecordZoneID:(id)self6;
+ (id)cloudExtensionStateWithDictionaryRepresentation:(id)representation composedIdentifier:(id)identifier owningDeviceUUIDString:(id)string cloudExtensionsRecordZoneID:(id)d;
+ (id)cloudExtensionStatesFromStatesDictionaryRepresentation:(id)representation owningDeviceUUIDString:(id)string cloudExtensionsRecordZoneID:(id)d;
- (BOOL)isEnabled;
- (BOOL)wasEnabledByUserGesture;
- (NSDictionary)dictionaryRepresentation;
- (NSString)composedIdentifier;
- (NSString)containingAppAdamID;
- (NSString)displayName;
- (NSString)iosAppBundleIdentifier;
- (NSString)iosExtensionBundleIdentifier;
- (NSString)macAppBundleIdentifier;
- (NSString)macExtensionBundleIdentifier;
- (NSString)owningDeviceUUIDString;
- (id)_initWithCKRecord:(id)record;
- (id)_initWithComposedIdentifier:(id)identifier owningDeviceUUIDString:(id)string lastModifiedDate:(id)date containingAppAdamID:(id)d displayName:(id)name isEnabled:(BOOL)enabled wasEnabledByUserGesture:(BOOL)gesture iosAppBundleIdentifier:(id)self0 iosExtensionBundleIdentifier:(id)self1 macAppBundleIdentifier:(id)self2 macExtensionBundleIdentifier:(id)self3 profileIdentifier:(id)self4 encodedSystemFieldsData:(id)self5 cloudExtensionsRecordZoneID:(id)self6;
- (id)_valueTransformerForStrings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)updateFromCloudExtensionState:(id)state;
@end

@implementation CloudExtensionState

+ (id)cloudExtensionStateWithDictionaryRepresentation:(id)representation composedIdentifier:(id)identifier owningDeviceUUIDString:(id)string cloudExtensionsRecordZoneID:(id)d
{
  representationCopy = representation;
  v10 = WBSSafariExtensionStateEnabledKey;
  dCopy = d;
  stringCopy = string;
  identifierCopy = identifier;
  v41 = [representationCopy safari_BOOLForKey:v10];
  v11 = [representationCopy safari_BOOLForKey:WBSSafariExtensionStateEnabledByUserGestureKey];
  v12 = [representationCopy safari_dateForKey:WBSSafariExtensionStateLastEnabledModificationDate];
  if (!v12)
  {
    v12 = +[NSDate date];
  }

  v13 = [representationCopy safari_stringForKey:WBSSafariExtensionStateContainingAppAdamID];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_100137BA8;
  }

  v16 = v15;

  v17 = [representationCopy safari_stringForKey:WBSSafariExtensionStateDisplayName];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_100137BA8;
  }

  v39 = v19;

  v20 = [representationCopy safari_stringForKey:WBSSafariExtensionStateIOSAppBundleIdentifier];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_100137BA8;
  }

  v23 = v22;

  v24 = [representationCopy safari_stringForKey:WBSSafariExtensionStateIOSExtensionBundleIdentifier];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = &stru_100137BA8;
  }

  v27 = v26;

  v28 = [representationCopy safari_stringForKey:WBSSafariExtensionStateMacOSAppBundleIdentifier];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = &stru_100137BA8;
  }

  v31 = v30;

  v32 = [representationCopy safari_stringForKey:WBSSafariExtensionStateMacOSExtensionBundleIdentifier];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = &stru_100137BA8;
  }

  v35 = v34;

  v36 = [representationCopy safari_stringForKey:WBSSafariExtensionStateProfileIdentifier];
  LOBYTE(v38) = v11;
  v42 = [[CloudExtensionState alloc] _initWithComposedIdentifier:identifierCopy owningDeviceUUIDString:stringCopy lastModifiedDate:v12 containingAppAdamID:v16 displayName:v39 isEnabled:v41 wasEnabledByUserGesture:v38 iosAppBundleIdentifier:v23 iosExtensionBundleIdentifier:v27 macAppBundleIdentifier:v31 macExtensionBundleIdentifier:v35 profileIdentifier:v36 encodedSystemFieldsData:0 cloudExtensionsRecordZoneID:dCopy];

  return v42;
}

+ (id)cloudExtensionStateWithCKRecord:(id)record
{
  recordCopy = record;
  if (![recordCopy safari_isCloudExtensionStateRecord])
  {
    v6 = 0;
    goto LABEL_11;
  }

  recordType = [recordCopy recordType];
  if ([recordType isEqualToString:@"CloudExtensionStateV2"])
  {
    v5 = [recordCopy objectForKeyedSubscript:@"MinimumSyncAPIVersion"];
    if ([v5 unsignedIntValue] >= 2)
    {
      v7 = sub_1000D23FC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = v7;
        v10 = 134218240;
        unsignedIntValue = [v5 unsignedIntValue];
        v12 = 2048;
        v13 = 1;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unable to create CloudExtensionState from CKRecord - record's minimum API sync version (%ld) is greater than expected (%ld)", &v10, 0x16u);
      }

      v6 = 0;
      goto LABEL_10;
    }
  }

  v6 = [[CloudExtensionState alloc] _initWithCKRecord:recordCopy];
LABEL_10:

LABEL_11:

  return v6;
}

+ (id)cloudExtensionStateWithComposedIdentifier:(id)identifier owningDeviceUUIDString:(id)string lastModifiedDate:(id)date containingAppAdamID:(id)d displayName:(id)name isEnabled:(BOOL)enabled wasEnabledByUserGesture:(BOOL)gesture iosAppBundleIdentifier:(id)self0 iosExtensionBundleIdentifier:(id)self1 macAppBundleIdentifier:(id)self2 macExtensionBundleIdentifier:(id)self3 encodedSystemFieldsData:(id)self4 cloudExtensionsRecordZoneID:(id)self5
{
  enabledCopy = enabled;
  iDCopy = iD;
  dataCopy = data;
  macExtensionBundleIdentifierCopy = macExtensionBundleIdentifier;
  appBundleIdentifierCopy = appBundleIdentifier;
  extensionBundleIdentifierCopy = extensionBundleIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  dCopy = d;
  dateCopy = date;
  stringCopy = string;
  identifierCopy = identifier;
  LOBYTE(v25) = gesture;
  v34 = [[CloudExtensionState alloc] _initWithComposedIdentifier:identifierCopy owningDeviceUUIDString:stringCopy lastModifiedDate:dateCopy containingAppAdamID:dCopy displayName:nameCopy isEnabled:enabledCopy wasEnabledByUserGesture:v25 iosAppBundleIdentifier:bundleIdentifierCopy iosExtensionBundleIdentifier:extensionBundleIdentifierCopy macAppBundleIdentifier:appBundleIdentifierCopy macExtensionBundleIdentifier:macExtensionBundleIdentifierCopy profileIdentifier:0 encodedSystemFieldsData:dataCopy cloudExtensionsRecordZoneID:iDCopy];

  return v34;
}

+ (id)cloudExtensionStateWithComposedIdentifier:(id)identifier owningDeviceUUIDString:(id)string lastModifiedDate:(id)date containingAppAdamID:(id)d displayName:(id)name isEnabled:(BOOL)enabled wasEnabledByUserGesture:(BOOL)gesture iosAppBundleIdentifier:(id)self0 iosExtensionBundleIdentifier:(id)self1 macAppBundleIdentifier:(id)self2 macExtensionBundleIdentifier:(id)self3 profileIdentifier:(id)self4 encodedSystemFieldsData:(id)self5 cloudExtensionsRecordZoneID:(id)self6
{
  enabledCopy = enabled;
  iDCopy = iD;
  dataCopy = data;
  profileIdentifierCopy = profileIdentifier;
  macExtensionBundleIdentifierCopy = macExtensionBundleIdentifier;
  appBundleIdentifierCopy = appBundleIdentifier;
  extensionBundleIdentifierCopy = extensionBundleIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  dCopy = d;
  dateCopy = date;
  stringCopy = string;
  identifierCopy = identifier;
  LOBYTE(v27) = gesture;
  v24 = dCopy;
  v25 = [[CloudExtensionState alloc] _initWithComposedIdentifier:identifierCopy owningDeviceUUIDString:stringCopy lastModifiedDate:dateCopy containingAppAdamID:dCopy displayName:nameCopy isEnabled:enabledCopy wasEnabledByUserGesture:v27 iosAppBundleIdentifier:bundleIdentifierCopy iosExtensionBundleIdentifier:extensionBundleIdentifierCopy macAppBundleIdentifier:appBundleIdentifierCopy macExtensionBundleIdentifier:macExtensionBundleIdentifierCopy profileIdentifier:profileIdentifierCopy encodedSystemFieldsData:dataCopy cloudExtensionsRecordZoneID:iDCopy];

  return v25;
}

- (id)_initWithComposedIdentifier:(id)identifier owningDeviceUUIDString:(id)string lastModifiedDate:(id)date containingAppAdamID:(id)d displayName:(id)name isEnabled:(BOOL)enabled wasEnabledByUserGesture:(BOOL)gesture iosAppBundleIdentifier:(id)self0 iosExtensionBundleIdentifier:(id)self1 macAppBundleIdentifier:(id)self2 macExtensionBundleIdentifier:(id)self3 profileIdentifier:(id)self4 encodedSystemFieldsData:(id)self5 cloudExtensionsRecordZoneID:(id)self6
{
  enabledCopy = enabled;
  identifierCopy = identifier;
  stringCopy = string;
  dateCopy = date;
  dCopy = d;
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  extensionBundleIdentifierCopy = extensionBundleIdentifier;
  appBundleIdentifierCopy = appBundleIdentifier;
  macExtensionBundleIdentifierCopy = macExtensionBundleIdentifier;
  profileIdentifierCopy = profileIdentifier;
  v24 = dCopy;
  dataCopy = data;
  iDCopy = iD;
  v71.receiver = self;
  v71.super_class = CloudExtensionState;
  v27 = [(CloudExtensionState *)&v71 init];
  if (v27)
  {
    v64 = v24;
    v60 = [dataCopy length];
    if (v60)
    {
      v28 = [[CKRecord alloc] safari_initWithEncodedRecordData:dataCopy];
      record = v27->_record;
      v27->_record = v28;

      [(CKRecord *)v27->_record setTrackChanges:0];
    }

    else
    {
      v30 = [profileIdentifierCopy length];
      v31 = @"CloudExtensionState";
      if (v30)
      {
        v31 = @"CloudExtensionStateV2";
      }

      v32 = v31;
      v33 = [[CKRecord alloc] initWithRecordType:v32 zoneID:iDCopy];
      v34 = v27->_record;
      v27->_record = v33;

      v35 = [(__CFString *)v32 isEqualToString:@"CloudExtensionStateV2"];
      if (v35)
      {
        v36 = [NSNumber numberWithInteger:1];
        [(CKRecord *)v27->_record setObject:v36 forKeyedSubscript:@"MinimumSyncAPIVersion"];
      }
    }

    v62 = stringCopy;
    v59 = [[CKRecordID alloc] initWithRecordName:stringCopy zoneID:iDCopy];
    v37 = [[CKReference alloc] initWithRecordID:v59 action:1];
    [(CKRecord *)v27->_record setObject:v37 forKeyedSubscript:@"OwningDevice"];

    [(CKRecord *)v27->_record setObject:dateCopy forKeyedSubscript:@"LastModified"];
    _valueTransformerForStrings = [(CloudExtensionState *)v27 _valueTransformerForStrings];
    v39 = [_valueTransformerForStrings transformedValue:identifierCopy];
    safari_encryptedValues = [(CKRecord *)v27->_record safari_encryptedValues];
    [safari_encryptedValues setObject:v39 forKeyedSubscript:@"ComposedIdentifier"];

    if ([v24 length])
    {
      v41 = [_valueTransformerForStrings transformedValue:v24];
      safari_encryptedValues2 = [(CKRecord *)v27->_record safari_encryptedValues];
      [safari_encryptedValues2 setObject:v41 forKeyedSubscript:@"ContainingAppAdamID"];
    }

    if ([nameCopy length])
    {
      v43 = [_valueTransformerForStrings transformedValue:nameCopy];
      safari_encryptedValues3 = [(CKRecord *)v27->_record safari_encryptedValues];
      [safari_encryptedValues3 setObject:v43 forKeyedSubscript:@"DisplayName"];
    }

    if ([bundleIdentifierCopy length])
    {
      v45 = [_valueTransformerForStrings transformedValue:bundleIdentifierCopy];
      safari_encryptedValues4 = [(CKRecord *)v27->_record safari_encryptedValues];
      [safari_encryptedValues4 setObject:v45 forKeyedSubscript:@"IOSAppBundleIdentifier"];
    }

    if ([extensionBundleIdentifierCopy length])
    {
      v47 = [_valueTransformerForStrings transformedValue:extensionBundleIdentifierCopy];
      safari_encryptedValues5 = [(CKRecord *)v27->_record safari_encryptedValues];
      [safari_encryptedValues5 setObject:v47 forKeyedSubscript:@"IOSExtensionBundleIdentifier"];
    }

    if ([appBundleIdentifierCopy length])
    {
      v49 = [_valueTransformerForStrings transformedValue:appBundleIdentifierCopy];
      safari_encryptedValues6 = [(CKRecord *)v27->_record safari_encryptedValues];
      [safari_encryptedValues6 setObject:v49 forKeyedSubscript:@"MacOSAppBundleIdentifier"];
    }

    if ([macExtensionBundleIdentifierCopy length])
    {
      v51 = [_valueTransformerForStrings transformedValue:macExtensionBundleIdentifierCopy];
      safari_encryptedValues7 = [(CKRecord *)v27->_record safari_encryptedValues];
      [safari_encryptedValues7 setObject:v51 forKeyedSubscript:@"MacOSExtensionBundleIdentifier"];
    }

    if ([profileIdentifierCopy length])
    {
      [(CKRecord *)v27->_record setObject:profileIdentifierCopy forKeyedSubscript:@"ProfileUUIDString"];
    }

    v53 = [NSNumber numberWithBool:enabledCopy];
    safari_encryptedValues8 = [(CKRecord *)v27->_record safari_encryptedValues];
    [safari_encryptedValues8 setObject:v53 forKeyedSubscript:@"Enabled"];

    v55 = [NSNumber numberWithBool:gesture];
    safari_encryptedValues9 = [(CKRecord *)v27->_record safari_encryptedValues];
    [safari_encryptedValues9 setObject:v55 forKeyedSubscript:@"EnabledByUserGesture"];

    if (v60)
    {
      [(CKRecord *)v27->_record setTrackChanges:1];
    }

    v57 = v27;

    stringCopy = v62;
    v24 = v64;
  }

  return v27;
}

- (id)_initWithCKRecord:(id)record
{
  recordCopy = record;
  v10.receiver = self;
  v10.super_class = CloudExtensionState;
  v5 = [(CloudExtensionState *)&v10 init];
  if (v5)
  {
    v6 = [recordCopy copy];
    record = v5->_record;
    v5->_record = v6;

    v8 = v5;
  }

  return v5;
}

- (void)updateFromCloudExtensionState:(id)state
{
  stateCopy = state;
  lastModifiedDate = [stateCopy lastModifiedDate];
  lastModifiedDate2 = [(CloudExtensionState *)self lastModifiedDate];
  if ((WBSIsEqual() & 1) == 0)
  {
    [(CKRecord *)self->_record setObject:lastModifiedDate forKeyedSubscript:@"LastModified"];
  }

  v40 = lastModifiedDate;
  _valueTransformerForStrings = [(CloudExtensionState *)self _valueTransformerForStrings];
  containingAppAdamID = [stateCopy containingAppAdamID];
  containingAppAdamID2 = [(CloudExtensionState *)self containingAppAdamID];
  if ((WBSIsEqual() & 1) == 0)
  {
    v7 = [_valueTransformerForStrings transformedValue:containingAppAdamID];
    safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues setObject:v7 forKeyedSubscript:@"ContainingAppAdamID"];
  }

  displayName = [stateCopy displayName];
  displayName2 = [(CloudExtensionState *)self displayName];
  if ((WBSIsEqual() & 1) == 0)
  {
    v10 = [_valueTransformerForStrings transformedValue:{displayName, displayName2}];
    safari_encryptedValues2 = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues2 setObject:v10 forKeyedSubscript:@"DisplayName"];
  }

  v41 = _valueTransformerForStrings;
  isEnabled = [stateCopy isEnabled];
  if (isEnabled != [(CloudExtensionState *)self isEnabled])
  {
    v13 = [NSNumber numberWithBool:isEnabled];
    safari_encryptedValues3 = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues3 setObject:v13 forKeyedSubscript:@"Enabled"];
  }

  wasEnabledByUserGesture = [stateCopy wasEnabledByUserGesture];
  if (wasEnabledByUserGesture != [(CloudExtensionState *)self wasEnabledByUserGesture])
  {
    v16 = [NSNumber numberWithBool:wasEnabledByUserGesture];
    safari_encryptedValues4 = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues4 setObject:v16 forKeyedSubscript:@"EnabledByUserGesture"];
  }

  v36 = displayName;
  v38 = containingAppAdamID;
  iosAppBundleIdentifier = [stateCopy iosAppBundleIdentifier];
  iosAppBundleIdentifier2 = [(CloudExtensionState *)self iosAppBundleIdentifier];
  if ((WBSIsEqual() & 1) == 0)
  {
    v20 = [_valueTransformerForStrings transformedValue:iosAppBundleIdentifier];
    safari_encryptedValues5 = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues5 setObject:v20 forKeyedSubscript:@"IOSAppBundleIdentifier"];
  }

  iosExtensionBundleIdentifier = [stateCopy iosExtensionBundleIdentifier];
  iosExtensionBundleIdentifier2 = [(CloudExtensionState *)self iosExtensionBundleIdentifier];
  if ((WBSIsEqual() & 1) == 0)
  {
    v24 = [_valueTransformerForStrings transformedValue:iosExtensionBundleIdentifier];
    safari_encryptedValues6 = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues6 setObject:v24 forKeyedSubscript:@"IOSExtensionBundleIdentifier"];
  }

  macAppBundleIdentifier = [stateCopy macAppBundleIdentifier];
  macAppBundleIdentifier2 = [(CloudExtensionState *)self macAppBundleIdentifier];
  if ((WBSIsEqual() & 1) == 0)
  {
    v28 = [_valueTransformerForStrings transformedValue:macAppBundleIdentifier];
    safari_encryptedValues7 = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues7 setObject:v28 forKeyedSubscript:@"MacOSAppBundleIdentifier"];
  }

  macExtensionBundleIdentifier = [stateCopy macExtensionBundleIdentifier];
  macExtensionBundleIdentifier2 = [(CloudExtensionState *)self macExtensionBundleIdentifier];
  if ((WBSIsEqual() & 1) == 0)
  {
    v32 = [_valueTransformerForStrings transformedValue:macExtensionBundleIdentifier];
    safari_encryptedValues8 = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues8 setObject:v32 forKeyedSubscript:@"MacOSExtensionBundleIdentifier"];

    _valueTransformerForStrings = v41;
  }
}

+ (id)cloudExtensionStatesFromStatesDictionaryRepresentation:(id)representation owningDeviceUUIDString:(id)string cloudExtensionsRecordZoneID:(id)d
{
  representationCopy = representation;
  stringCopy = string;
  dCopy = d;
  if ([representationCopy count])
  {
    v10 = +[NSMutableArray array];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006A794;
    v14[3] = &unk_1001348F8;
    v15 = stringCopy;
    v16 = dCopy;
    v17 = v10;
    v11 = v10;
    [representationCopy enumerateKeysAndObjectsUsingBlock:v14];
    v12 = [v11 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CloudExtensionState allocWithZone:zone];
  record = self->_record;

  return [(CloudExtensionState *)v4 _initWithCKRecord:record];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  composedIdentifier = [(CloudExtensionState *)self composedIdentifier];
  containingAppAdamID = [(CloudExtensionState *)self containingAppAdamID];
  displayName = [(CloudExtensionState *)self displayName];
  lastModifiedDate = [(CloudExtensionState *)self lastModifiedDate];
  owningDeviceUUIDString = [(CloudExtensionState *)self owningDeviceUUIDString];
  isEnabled = [(CloudExtensionState *)self isEnabled];
  wasEnabledByUserGesture = [(CloudExtensionState *)self wasEnabledByUserGesture];
  profileIdentifier = [(CloudExtensionState *)self profileIdentifier];
  v13 = [NSString stringWithFormat:@"<%@: %p composedIdentifier = %@; containingAppAdamID = %@; displayName = %@; lastModifiedDate = %@; owning device uuid = %@; isEnabled = %d; wasEnabledByUserGesture = %d; profileIdentifier: %@>", v4, self, composedIdentifier, containingAppAdamID, displayName, lastModifiedDate, owningDeviceUUIDString, isEnabled, wasEnabledByUserGesture, profileIdentifier];;

  return v13;
}

- (NSString)composedIdentifier
{
  _valueTransformerForStrings = [(CloudExtensionState *)self _valueTransformerForStrings];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"ComposedIdentifier"];
  v6 = [_valueTransformerForStrings reverseTransformedValue:v5];

  return v6;
}

- (NSString)owningDeviceUUIDString
{
  owningDevice = [(CloudExtensionState *)self owningDevice];
  recordID = [owningDevice recordID];
  recordName = [recordID recordName];

  return recordName;
}

- (NSString)containingAppAdamID
{
  _valueTransformerForStrings = [(CloudExtensionState *)self _valueTransformerForStrings];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"ContainingAppAdamID"];
  v6 = [_valueTransformerForStrings reverseTransformedValue:v5];

  return v6;
}

- (NSString)displayName
{
  _valueTransformerForStrings = [(CloudExtensionState *)self _valueTransformerForStrings];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"DisplayName"];
  v6 = [_valueTransformerForStrings reverseTransformedValue:v5];

  return v6;
}

- (BOOL)isEnabled
{
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v3 = [safari_encryptedValues objectForKeyedSubscript:@"Enabled"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)wasEnabledByUserGesture
{
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v3 = [safari_encryptedValues objectForKeyedSubscript:@"EnabledByUserGesture"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)iosAppBundleIdentifier
{
  _valueTransformerForStrings = [(CloudExtensionState *)self _valueTransformerForStrings];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"IOSAppBundleIdentifier"];
  v6 = [_valueTransformerForStrings reverseTransformedValue:v5];

  return v6;
}

- (NSString)iosExtensionBundleIdentifier
{
  _valueTransformerForStrings = [(CloudExtensionState *)self _valueTransformerForStrings];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"IOSExtensionBundleIdentifier"];
  v6 = [_valueTransformerForStrings reverseTransformedValue:v5];

  return v6;
}

- (NSString)macAppBundleIdentifier
{
  _valueTransformerForStrings = [(CloudExtensionState *)self _valueTransformerForStrings];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"MacOSAppBundleIdentifier"];
  v6 = [_valueTransformerForStrings reverseTransformedValue:v5];

  return v6;
}

- (NSString)macExtensionBundleIdentifier
{
  _valueTransformerForStrings = [(CloudExtensionState *)self _valueTransformerForStrings];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"MacOSExtensionBundleIdentifier"];
  v6 = [_valueTransformerForStrings reverseTransformedValue:v5];

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v16[0] = WBSSafariExtensionStateDeviceUUIDString;
  owningDeviceUUIDString = [(CloudExtensionState *)self owningDeviceUUIDString];
  v17[0] = owningDeviceUUIDString;
  v16[1] = WBSSafariExtensionStateLastEnabledModificationDate;
  lastModifiedDate = [(CloudExtensionState *)self lastModifiedDate];
  v17[1] = lastModifiedDate;
  v5 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v6 = [v5 mutableCopy];

  containingAppAdamID = [(CloudExtensionState *)self containingAppAdamID];
  if ([containingAppAdamID length])
  {
    [v6 setObject:containingAppAdamID forKeyedSubscript:WBSSafariExtensionStateContainingAppAdamID];
  }

  displayName = [(CloudExtensionState *)self displayName];
  if ([displayName length])
  {
    [v6 setObject:displayName forKeyedSubscript:WBSSafariExtensionStateDisplayName];
  }

  if ([(CloudExtensionState *)self isEnabled])
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:WBSSafariExtensionStateEnabledKey];
  }

  if ([(CloudExtensionState *)self wasEnabledByUserGesture])
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:WBSSafariExtensionStateEnabledByUserGestureKey];
  }

  iosAppBundleIdentifier = [(CloudExtensionState *)self iosAppBundleIdentifier];
  if ([iosAppBundleIdentifier length])
  {
    [v6 setObject:iosAppBundleIdentifier forKeyedSubscript:WBSSafariExtensionStateIOSAppBundleIdentifier];
  }

  iosExtensionBundleIdentifier = [(CloudExtensionState *)self iosExtensionBundleIdentifier];
  if ([iosExtensionBundleIdentifier length])
  {
    [v6 setObject:iosExtensionBundleIdentifier forKeyedSubscript:WBSSafariExtensionStateIOSExtensionBundleIdentifier];
  }

  macAppBundleIdentifier = [(CloudExtensionState *)self macAppBundleIdentifier];
  if ([macAppBundleIdentifier length])
  {
    [v6 setObject:macAppBundleIdentifier forKeyedSubscript:WBSSafariExtensionStateMacOSAppBundleIdentifier];
  }

  macExtensionBundleIdentifier = [(CloudExtensionState *)self macExtensionBundleIdentifier];
  if ([macExtensionBundleIdentifier length])
  {
    [v6 setObject:macExtensionBundleIdentifier forKeyedSubscript:WBSSafariExtensionStateMacOSExtensionBundleIdentifier];
  }

  profileIdentifier = [(CloudExtensionState *)self profileIdentifier];
  if ([profileIdentifier length])
  {
    [v6 setObject:profileIdentifier forKeyedSubscript:WBSSafariExtensionStateProfileIdentifier];
  }

  v14 = [v6 copy];

  return v14;
}

- (id)_valueTransformerForStrings
{
  if (qword_100153FF0 != -1)
  {
    sub_10006B518();
  }

  v3 = qword_100153FE8;

  return v3;
}

@end