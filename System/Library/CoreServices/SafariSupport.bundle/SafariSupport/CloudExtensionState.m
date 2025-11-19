@interface CloudExtensionState
+ (id)cloudExtensionStateWithCKRecord:(id)a3;
+ (id)cloudExtensionStateWithComposedIdentifier:(id)a3 owningDeviceUUIDString:(id)a4 lastModifiedDate:(id)a5 containingAppAdamID:(id)a6 displayName:(id)a7 isEnabled:(BOOL)a8 wasEnabledByUserGesture:(BOOL)a9 iosAppBundleIdentifier:(id)a10 iosExtensionBundleIdentifier:(id)a11 macAppBundleIdentifier:(id)a12 macExtensionBundleIdentifier:(id)a13 encodedSystemFieldsData:(id)a14 cloudExtensionsRecordZoneID:(id)a15;
+ (id)cloudExtensionStateWithComposedIdentifier:(id)a3 owningDeviceUUIDString:(id)a4 lastModifiedDate:(id)a5 containingAppAdamID:(id)a6 displayName:(id)a7 isEnabled:(BOOL)a8 wasEnabledByUserGesture:(BOOL)a9 iosAppBundleIdentifier:(id)a10 iosExtensionBundleIdentifier:(id)a11 macAppBundleIdentifier:(id)a12 macExtensionBundleIdentifier:(id)a13 profileIdentifier:(id)a14 encodedSystemFieldsData:(id)a15 cloudExtensionsRecordZoneID:(id)a16;
+ (id)cloudExtensionStateWithDictionaryRepresentation:(id)a3 composedIdentifier:(id)a4 owningDeviceUUIDString:(id)a5 cloudExtensionsRecordZoneID:(id)a6;
+ (id)cloudExtensionStatesFromStatesDictionaryRepresentation:(id)a3 owningDeviceUUIDString:(id)a4 cloudExtensionsRecordZoneID:(id)a5;
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
- (id)_initWithCKRecord:(id)a3;
- (id)_initWithComposedIdentifier:(id)a3 owningDeviceUUIDString:(id)a4 lastModifiedDate:(id)a5 containingAppAdamID:(id)a6 displayName:(id)a7 isEnabled:(BOOL)a8 wasEnabledByUserGesture:(BOOL)a9 iosAppBundleIdentifier:(id)a10 iosExtensionBundleIdentifier:(id)a11 macAppBundleIdentifier:(id)a12 macExtensionBundleIdentifier:(id)a13 profileIdentifier:(id)a14 encodedSystemFieldsData:(id)a15 cloudExtensionsRecordZoneID:(id)a16;
- (id)_valueTransformerForStrings;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)updateFromCloudExtensionState:(id)a3;
@end

@implementation CloudExtensionState

+ (id)cloudExtensionStateWithDictionaryRepresentation:(id)a3 composedIdentifier:(id)a4 owningDeviceUUIDString:(id)a5 cloudExtensionsRecordZoneID:(id)a6
{
  v9 = a3;
  v10 = WBSSafariExtensionStateEnabledKey;
  v44 = a6;
  v43 = a5;
  v40 = a4;
  v41 = [v9 safari_BOOLForKey:v10];
  v11 = [v9 safari_BOOLForKey:WBSSafariExtensionStateEnabledByUserGestureKey];
  v12 = [v9 safari_dateForKey:WBSSafariExtensionStateLastEnabledModificationDate];
  if (!v12)
  {
    v12 = +[NSDate date];
  }

  v13 = [v9 safari_stringForKey:WBSSafariExtensionStateContainingAppAdamID];
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

  v17 = [v9 safari_stringForKey:WBSSafariExtensionStateDisplayName];
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

  v20 = [v9 safari_stringForKey:WBSSafariExtensionStateIOSAppBundleIdentifier];
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

  v24 = [v9 safari_stringForKey:WBSSafariExtensionStateIOSExtensionBundleIdentifier];
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

  v28 = [v9 safari_stringForKey:WBSSafariExtensionStateMacOSAppBundleIdentifier];
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

  v32 = [v9 safari_stringForKey:WBSSafariExtensionStateMacOSExtensionBundleIdentifier];
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

  v36 = [v9 safari_stringForKey:WBSSafariExtensionStateProfileIdentifier];
  LOBYTE(v38) = v11;
  v42 = [[CloudExtensionState alloc] _initWithComposedIdentifier:v40 owningDeviceUUIDString:v43 lastModifiedDate:v12 containingAppAdamID:v16 displayName:v39 isEnabled:v41 wasEnabledByUserGesture:v38 iosAppBundleIdentifier:v23 iosExtensionBundleIdentifier:v27 macAppBundleIdentifier:v31 macExtensionBundleIdentifier:v35 profileIdentifier:v36 encodedSystemFieldsData:0 cloudExtensionsRecordZoneID:v44];

  return v42;
}

+ (id)cloudExtensionStateWithCKRecord:(id)a3
{
  v3 = a3;
  if (![v3 safari_isCloudExtensionStateRecord])
  {
    v6 = 0;
    goto LABEL_11;
  }

  v4 = [v3 recordType];
  if ([v4 isEqualToString:@"CloudExtensionStateV2"])
  {
    v5 = [v3 objectForKeyedSubscript:@"MinimumSyncAPIVersion"];
    if ([v5 unsignedIntValue] >= 2)
    {
      v7 = sub_1000D23FC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = v7;
        v10 = 134218240;
        v11 = [v5 unsignedIntValue];
        v12 = 2048;
        v13 = 1;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unable to create CloudExtensionState from CKRecord - record's minimum API sync version (%ld) is greater than expected (%ld)", &v10, 0x16u);
      }

      v6 = 0;
      goto LABEL_10;
    }
  }

  v6 = [[CloudExtensionState alloc] _initWithCKRecord:v3];
LABEL_10:

LABEL_11:

  return v6;
}

+ (id)cloudExtensionStateWithComposedIdentifier:(id)a3 owningDeviceUUIDString:(id)a4 lastModifiedDate:(id)a5 containingAppAdamID:(id)a6 displayName:(id)a7 isEnabled:(BOOL)a8 wasEnabledByUserGesture:(BOOL)a9 iosAppBundleIdentifier:(id)a10 iosExtensionBundleIdentifier:(id)a11 macAppBundleIdentifier:(id)a12 macExtensionBundleIdentifier:(id)a13 encodedSystemFieldsData:(id)a14 cloudExtensionsRecordZoneID:(id)a15
{
  v33 = a8;
  v30 = a15;
  v29 = a14;
  v28 = a13;
  v18 = a12;
  v19 = a11;
  v20 = a10;
  v27 = a7;
  v21 = a6;
  v26 = a5;
  v22 = a4;
  v23 = a3;
  LOBYTE(v25) = a9;
  v34 = [[CloudExtensionState alloc] _initWithComposedIdentifier:v23 owningDeviceUUIDString:v22 lastModifiedDate:v26 containingAppAdamID:v21 displayName:v27 isEnabled:v33 wasEnabledByUserGesture:v25 iosAppBundleIdentifier:v20 iosExtensionBundleIdentifier:v19 macAppBundleIdentifier:v18 macExtensionBundleIdentifier:v28 profileIdentifier:0 encodedSystemFieldsData:v29 cloudExtensionsRecordZoneID:v30];

  return v34;
}

+ (id)cloudExtensionStateWithComposedIdentifier:(id)a3 owningDeviceUUIDString:(id)a4 lastModifiedDate:(id)a5 containingAppAdamID:(id)a6 displayName:(id)a7 isEnabled:(BOOL)a8 wasEnabledByUserGesture:(BOOL)a9 iosAppBundleIdentifier:(id)a10 iosExtensionBundleIdentifier:(id)a11 macAppBundleIdentifier:(id)a12 macExtensionBundleIdentifier:(id)a13 profileIdentifier:(id)a14 encodedSystemFieldsData:(id)a15 cloudExtensionsRecordZoneID:(id)a16
{
  v36 = a8;
  v33 = a16;
  v30 = a15;
  v29 = a14;
  v37 = a13;
  v19 = a12;
  v20 = a11;
  v21 = a10;
  v28 = a7;
  v22 = a6;
  v32 = a5;
  v23 = a4;
  v35 = a3;
  LOBYTE(v27) = a9;
  v24 = v22;
  v25 = [[CloudExtensionState alloc] _initWithComposedIdentifier:v35 owningDeviceUUIDString:v23 lastModifiedDate:v32 containingAppAdamID:v22 displayName:v28 isEnabled:v36 wasEnabledByUserGesture:v27 iosAppBundleIdentifier:v21 iosExtensionBundleIdentifier:v20 macAppBundleIdentifier:v19 macExtensionBundleIdentifier:v37 profileIdentifier:v29 encodedSystemFieldsData:v30 cloudExtensionsRecordZoneID:v33];

  return v25;
}

- (id)_initWithComposedIdentifier:(id)a3 owningDeviceUUIDString:(id)a4 lastModifiedDate:(id)a5 containingAppAdamID:(id)a6 displayName:(id)a7 isEnabled:(BOOL)a8 wasEnabledByUserGesture:(BOOL)a9 iosAppBundleIdentifier:(id)a10 iosExtensionBundleIdentifier:(id)a11 macAppBundleIdentifier:(id)a12 macExtensionBundleIdentifier:(id)a13 profileIdentifier:(id)a14 encodedSystemFieldsData:(id)a15 cloudExtensionsRecordZoneID:(id)a16
{
  v61 = a8;
  v70 = a3;
  v20 = a4;
  v69 = a5;
  v21 = a6;
  v68 = a7;
  v67 = a10;
  v66 = a11;
  v22 = a12;
  v65 = a13;
  v23 = a14;
  v24 = v21;
  v25 = a15;
  v26 = a16;
  v71.receiver = self;
  v71.super_class = CloudExtensionState;
  v27 = [(CloudExtensionState *)&v71 init];
  if (v27)
  {
    v64 = v24;
    v60 = [v25 length];
    if (v60)
    {
      v28 = [[CKRecord alloc] safari_initWithEncodedRecordData:v25];
      record = v27->_record;
      v27->_record = v28;

      [(CKRecord *)v27->_record setTrackChanges:0];
    }

    else
    {
      v30 = [v23 length];
      v31 = @"CloudExtensionState";
      if (v30)
      {
        v31 = @"CloudExtensionStateV2";
      }

      v32 = v31;
      v33 = [[CKRecord alloc] initWithRecordType:v32 zoneID:v26];
      v34 = v27->_record;
      v27->_record = v33;

      v35 = [(__CFString *)v32 isEqualToString:@"CloudExtensionStateV2"];
      if (v35)
      {
        v36 = [NSNumber numberWithInteger:1];
        [(CKRecord *)v27->_record setObject:v36 forKeyedSubscript:@"MinimumSyncAPIVersion"];
      }
    }

    v62 = v20;
    v59 = [[CKRecordID alloc] initWithRecordName:v20 zoneID:v26];
    v37 = [[CKReference alloc] initWithRecordID:v59 action:1];
    [(CKRecord *)v27->_record setObject:v37 forKeyedSubscript:@"OwningDevice"];

    [(CKRecord *)v27->_record setObject:v69 forKeyedSubscript:@"LastModified"];
    v38 = [(CloudExtensionState *)v27 _valueTransformerForStrings];
    v39 = [v38 transformedValue:v70];
    v40 = [(CKRecord *)v27->_record safari_encryptedValues];
    [v40 setObject:v39 forKeyedSubscript:@"ComposedIdentifier"];

    if ([v24 length])
    {
      v41 = [v38 transformedValue:v24];
      v42 = [(CKRecord *)v27->_record safari_encryptedValues];
      [v42 setObject:v41 forKeyedSubscript:@"ContainingAppAdamID"];
    }

    if ([v68 length])
    {
      v43 = [v38 transformedValue:v68];
      v44 = [(CKRecord *)v27->_record safari_encryptedValues];
      [v44 setObject:v43 forKeyedSubscript:@"DisplayName"];
    }

    if ([v67 length])
    {
      v45 = [v38 transformedValue:v67];
      v46 = [(CKRecord *)v27->_record safari_encryptedValues];
      [v46 setObject:v45 forKeyedSubscript:@"IOSAppBundleIdentifier"];
    }

    if ([v66 length])
    {
      v47 = [v38 transformedValue:v66];
      v48 = [(CKRecord *)v27->_record safari_encryptedValues];
      [v48 setObject:v47 forKeyedSubscript:@"IOSExtensionBundleIdentifier"];
    }

    if ([v22 length])
    {
      v49 = [v38 transformedValue:v22];
      v50 = [(CKRecord *)v27->_record safari_encryptedValues];
      [v50 setObject:v49 forKeyedSubscript:@"MacOSAppBundleIdentifier"];
    }

    if ([v65 length])
    {
      v51 = [v38 transformedValue:v65];
      v52 = [(CKRecord *)v27->_record safari_encryptedValues];
      [v52 setObject:v51 forKeyedSubscript:@"MacOSExtensionBundleIdentifier"];
    }

    if ([v23 length])
    {
      [(CKRecord *)v27->_record setObject:v23 forKeyedSubscript:@"ProfileUUIDString"];
    }

    v53 = [NSNumber numberWithBool:v61];
    v54 = [(CKRecord *)v27->_record safari_encryptedValues];
    [v54 setObject:v53 forKeyedSubscript:@"Enabled"];

    v55 = [NSNumber numberWithBool:a9];
    v56 = [(CKRecord *)v27->_record safari_encryptedValues];
    [v56 setObject:v55 forKeyedSubscript:@"EnabledByUserGesture"];

    if (v60)
    {
      [(CKRecord *)v27->_record setTrackChanges:1];
    }

    v57 = v27;

    v20 = v62;
    v24 = v64;
  }

  return v27;
}

- (id)_initWithCKRecord:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CloudExtensionState;
  v5 = [(CloudExtensionState *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    record = v5->_record;
    v5->_record = v6;

    v8 = v5;
  }

  return v5;
}

- (void)updateFromCloudExtensionState:(id)a3
{
  v42 = a3;
  v4 = [v42 lastModifiedDate];
  v39 = [(CloudExtensionState *)self lastModifiedDate];
  if ((WBSIsEqual() & 1) == 0)
  {
    [(CKRecord *)self->_record setObject:v4 forKeyedSubscript:@"LastModified"];
  }

  v40 = v4;
  v5 = [(CloudExtensionState *)self _valueTransformerForStrings];
  v6 = [v42 containingAppAdamID];
  v37 = [(CloudExtensionState *)self containingAppAdamID];
  if ((WBSIsEqual() & 1) == 0)
  {
    v7 = [v5 transformedValue:v6];
    v8 = [(CKRecord *)self->_record safari_encryptedValues];
    [v8 setObject:v7 forKeyedSubscript:@"ContainingAppAdamID"];
  }

  v9 = [v42 displayName];
  v34 = [(CloudExtensionState *)self displayName];
  if ((WBSIsEqual() & 1) == 0)
  {
    v10 = [v5 transformedValue:{v9, v34}];
    v11 = [(CKRecord *)self->_record safari_encryptedValues];
    [v11 setObject:v10 forKeyedSubscript:@"DisplayName"];
  }

  v41 = v5;
  v12 = [v42 isEnabled];
  if (v12 != [(CloudExtensionState *)self isEnabled])
  {
    v13 = [NSNumber numberWithBool:v12];
    v14 = [(CKRecord *)self->_record safari_encryptedValues];
    [v14 setObject:v13 forKeyedSubscript:@"Enabled"];
  }

  v15 = [v42 wasEnabledByUserGesture];
  if (v15 != [(CloudExtensionState *)self wasEnabledByUserGesture])
  {
    v16 = [NSNumber numberWithBool:v15];
    v17 = [(CKRecord *)self->_record safari_encryptedValues];
    [v17 setObject:v16 forKeyedSubscript:@"EnabledByUserGesture"];
  }

  v36 = v9;
  v38 = v6;
  v18 = [v42 iosAppBundleIdentifier];
  v19 = [(CloudExtensionState *)self iosAppBundleIdentifier];
  if ((WBSIsEqual() & 1) == 0)
  {
    v20 = [v5 transformedValue:v18];
    v21 = [(CKRecord *)self->_record safari_encryptedValues];
    [v21 setObject:v20 forKeyedSubscript:@"IOSAppBundleIdentifier"];
  }

  v22 = [v42 iosExtensionBundleIdentifier];
  v23 = [(CloudExtensionState *)self iosExtensionBundleIdentifier];
  if ((WBSIsEqual() & 1) == 0)
  {
    v24 = [v5 transformedValue:v22];
    v25 = [(CKRecord *)self->_record safari_encryptedValues];
    [v25 setObject:v24 forKeyedSubscript:@"IOSExtensionBundleIdentifier"];
  }

  v26 = [v42 macAppBundleIdentifier];
  v27 = [(CloudExtensionState *)self macAppBundleIdentifier];
  if ((WBSIsEqual() & 1) == 0)
  {
    v28 = [v5 transformedValue:v26];
    v29 = [(CKRecord *)self->_record safari_encryptedValues];
    [v29 setObject:v28 forKeyedSubscript:@"MacOSAppBundleIdentifier"];
  }

  v30 = [v42 macExtensionBundleIdentifier];
  v31 = [(CloudExtensionState *)self macExtensionBundleIdentifier];
  if ((WBSIsEqual() & 1) == 0)
  {
    v32 = [v5 transformedValue:v30];
    v33 = [(CKRecord *)self->_record safari_encryptedValues];
    [v33 setObject:v32 forKeyedSubscript:@"MacOSExtensionBundleIdentifier"];

    v5 = v41;
  }
}

+ (id)cloudExtensionStatesFromStatesDictionaryRepresentation:(id)a3 owningDeviceUUIDString:(id)a4 cloudExtensionsRecordZoneID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v10 = +[NSMutableArray array];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006A794;
    v14[3] = &unk_1001348F8;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    v11 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:v14];
    v12 = [v11 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CloudExtensionState allocWithZone:a3];
  record = self->_record;

  return [(CloudExtensionState *)v4 _initWithCKRecord:record];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CloudExtensionState *)self composedIdentifier];
  v6 = [(CloudExtensionState *)self containingAppAdamID];
  v7 = [(CloudExtensionState *)self displayName];
  v8 = [(CloudExtensionState *)self lastModifiedDate];
  v9 = [(CloudExtensionState *)self owningDeviceUUIDString];
  v10 = [(CloudExtensionState *)self isEnabled];
  v11 = [(CloudExtensionState *)self wasEnabledByUserGesture];
  v12 = [(CloudExtensionState *)self profileIdentifier];
  v13 = [NSString stringWithFormat:@"<%@: %p composedIdentifier = %@; containingAppAdamID = %@; displayName = %@; lastModifiedDate = %@; owning device uuid = %@; isEnabled = %d; wasEnabledByUserGesture = %d; profileIdentifier: %@>", v4, self, v5, v6, v7, v8, v9, v10, v11, v12];;

  return v13;
}

- (NSString)composedIdentifier
{
  v3 = [(CloudExtensionState *)self _valueTransformerForStrings];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"ComposedIdentifier"];
  v6 = [v3 reverseTransformedValue:v5];

  return v6;
}

- (NSString)owningDeviceUUIDString
{
  v2 = [(CloudExtensionState *)self owningDevice];
  v3 = [v2 recordID];
  v4 = [v3 recordName];

  return v4;
}

- (NSString)containingAppAdamID
{
  v3 = [(CloudExtensionState *)self _valueTransformerForStrings];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"ContainingAppAdamID"];
  v6 = [v3 reverseTransformedValue:v5];

  return v6;
}

- (NSString)displayName
{
  v3 = [(CloudExtensionState *)self _valueTransformerForStrings];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"DisplayName"];
  v6 = [v3 reverseTransformedValue:v5];

  return v6;
}

- (BOOL)isEnabled
{
  v2 = [(CKRecord *)self->_record safari_encryptedValues];
  v3 = [v2 objectForKeyedSubscript:@"Enabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)wasEnabledByUserGesture
{
  v2 = [(CKRecord *)self->_record safari_encryptedValues];
  v3 = [v2 objectForKeyedSubscript:@"EnabledByUserGesture"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)iosAppBundleIdentifier
{
  v3 = [(CloudExtensionState *)self _valueTransformerForStrings];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"IOSAppBundleIdentifier"];
  v6 = [v3 reverseTransformedValue:v5];

  return v6;
}

- (NSString)iosExtensionBundleIdentifier
{
  v3 = [(CloudExtensionState *)self _valueTransformerForStrings];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"IOSExtensionBundleIdentifier"];
  v6 = [v3 reverseTransformedValue:v5];

  return v6;
}

- (NSString)macAppBundleIdentifier
{
  v3 = [(CloudExtensionState *)self _valueTransformerForStrings];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"MacOSAppBundleIdentifier"];
  v6 = [v3 reverseTransformedValue:v5];

  return v6;
}

- (NSString)macExtensionBundleIdentifier
{
  v3 = [(CloudExtensionState *)self _valueTransformerForStrings];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"MacOSExtensionBundleIdentifier"];
  v6 = [v3 reverseTransformedValue:v5];

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v16[0] = WBSSafariExtensionStateDeviceUUIDString;
  v3 = [(CloudExtensionState *)self owningDeviceUUIDString];
  v17[0] = v3;
  v16[1] = WBSSafariExtensionStateLastEnabledModificationDate;
  v4 = [(CloudExtensionState *)self lastModifiedDate];
  v17[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v6 = [v5 mutableCopy];

  v7 = [(CloudExtensionState *)self containingAppAdamID];
  if ([v7 length])
  {
    [v6 setObject:v7 forKeyedSubscript:WBSSafariExtensionStateContainingAppAdamID];
  }

  v8 = [(CloudExtensionState *)self displayName];
  if ([v8 length])
  {
    [v6 setObject:v8 forKeyedSubscript:WBSSafariExtensionStateDisplayName];
  }

  if ([(CloudExtensionState *)self isEnabled])
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:WBSSafariExtensionStateEnabledKey];
  }

  if ([(CloudExtensionState *)self wasEnabledByUserGesture])
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:WBSSafariExtensionStateEnabledByUserGestureKey];
  }

  v9 = [(CloudExtensionState *)self iosAppBundleIdentifier];
  if ([v9 length])
  {
    [v6 setObject:v9 forKeyedSubscript:WBSSafariExtensionStateIOSAppBundleIdentifier];
  }

  v10 = [(CloudExtensionState *)self iosExtensionBundleIdentifier];
  if ([v10 length])
  {
    [v6 setObject:v10 forKeyedSubscript:WBSSafariExtensionStateIOSExtensionBundleIdentifier];
  }

  v11 = [(CloudExtensionState *)self macAppBundleIdentifier];
  if ([v11 length])
  {
    [v6 setObject:v11 forKeyedSubscript:WBSSafariExtensionStateMacOSAppBundleIdentifier];
  }

  v12 = [(CloudExtensionState *)self macExtensionBundleIdentifier];
  if ([v12 length])
  {
    [v6 setObject:v12 forKeyedSubscript:WBSSafariExtensionStateMacOSExtensionBundleIdentifier];
  }

  v13 = [(CloudExtensionState *)self profileIdentifier];
  if ([v13 length])
  {
    [v6 setObject:v13 forKeyedSubscript:WBSSafariExtensionStateProfileIdentifier];
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