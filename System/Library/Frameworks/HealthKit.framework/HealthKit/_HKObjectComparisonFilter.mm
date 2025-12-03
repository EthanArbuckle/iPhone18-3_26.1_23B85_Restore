@interface _HKObjectComparisonFilter
+ (BOOL)allowsEmptyContainerValuesForKeyPath:(id)path;
+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error;
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isSupportedDevicePropertyKey:(id)key;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)_acceptsDataObjectComparingDeviceProperty:(id)property;
- (BOOL)_acceptsDataObjectWithAppleWatchSource:(id)source;
- (BOOL)_acceptsDataObjectWithContributor:(id)contributor;
- (BOOL)_acceptsDataObjectWithCreationTime:(double)time;
- (BOOL)_acceptsDataObjectWithMetadata:(id)metadata;
- (BOOL)_acceptsDataObjectWithSource:(id)source;
- (BOOL)_acceptsDataObjectWithValue:(id)value;
- (BOOL)acceptsDataObject:(id)object;
- (void)_configureForKeyPathDeviceProperty;
- (void)_configureForKeyPathSource;
- (void)_configureForMetdataKeyPath;
- (void)configureInMemoryFilter;
@end

@implementation _HKObjectComparisonFilter

+ (BOOL)isSupportedDevicePropertyKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"HKDevicePropertyFirmwareVersion"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"HKDevicePropertyHardwareVersion") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"HKDevicePropertyLocalIdentifier") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"HKDevicePropertyManufacturer") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"HKDevicePropertyModel") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"HKDevicePropertyName") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"HKDevicePropertySoftwareVersion"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [keyCopy isEqualToString:@"HKDevicePropertyUDIDeviceIdentifier"];
  }

  return v4;
}

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"correlation"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"device") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"source") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"sourceRevision") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"UUID") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"workout") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"appleWatch") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"association") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"ratingOfExertionAssociation") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"OSBuild") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"contributor") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"creationDate") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"productType") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"localSyncIdentity"))
  {
    v5 = 1;
  }

  else
  {
    if ([pathCopy hk_hasDevicePropertyKeyPathPrefix])
    {
      v7 = [pathCopy substringFromIndex:{objc_msgSend(@"device.", "length")}];
      v5 = [self isSupportedDevicePropertyKey:v7];
    }

    else
    {
      if (![pathCopy hk_hasMetadataKeyPathPrefix])
      {
        v5 = 0;
        goto LABEL_16;
      }

      v7 = [pathCopy substringFromIndex:{objc_msgSend(@"metadata.", "length")}];
      v5 = [v7 length] != 0;
    }
  }

LABEL_16:

  return v5;
}

+ (id)allowedDataTypeClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"correlation"])
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_3:
    v7 = [v6 setWithObject:objc_opt_class()];
LABEL_10:
    v11 = v7;
    goto LABEL_11;
  }

  if ([pathCopy isEqualToString:@"device"] || objc_msgSend(pathCopy, "isEqualToString:", @"source") || objc_msgSend(pathCopy, "isEqualToString:", @"sourceRevision") || objc_msgSend(pathCopy, "isEqualToString:", @"UUID"))
  {
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v7 = [v8 initWithObjects:{v9, v10, objc_opt_class(), 0}];
    goto LABEL_10;
  }

  if ([pathCopy isEqualToString:@"workout"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_3;
  }

  if ([pathCopy isEqualToString:@"appleWatch"])
  {
    goto LABEL_17;
  }

  if (([pathCopy isEqualToString:@"association"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"ratingOfExertionAssociation"))
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_3;
  }

  if (([pathCopy isEqualToString:@"OSBuild"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"productType"))
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_3;
  }

  if ([pathCopy isEqualToString:@"contributor"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_3;
  }

  if ([pathCopy isEqualToString:@"creationDate"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_3;
  }

  if ([pathCopy isEqualToString:@"localSyncIdentity"])
  {
LABEL_17:
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_3;
  }

  if ([pathCopy hk_hasDevicePropertyKeyPathPrefix])
  {
    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v14 = objc_opt_class();
    v7 = [v13 initWithObjects:{v14, objc_opt_class(), 0, v21}];
    goto LABEL_10;
  }

  if (![pathCopy hk_hasMetadataKeyPathPrefix])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKObjectComparisonFilter.m" lineNumber:226 description:@"Unreachable code has been executed"];

    v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    goto LABEL_10;
  }

  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v15 initWithObjects:{v16, v17, objc_opt_class(), 0}];
  hk_acceptedPublicMetadataValueClasses = [MEMORY[0x1E695DF20] hk_acceptedPublicMetadataValueClasses];
  v11 = [v18 setByAddingObjectsFromSet:hk_acceptedPublicMetadataValueClasses];

LABEL_11:

  return v11;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"correlation"])
  {
    v6 = (type & 0xFFFFFFFFFFFFFFFELL) == 4;
    goto LABEL_9;
  }

  if (([pathCopy isEqualToString:@"device"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"source") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"sourceRevision"))
  {
    v6 = type == 10 || (type & 0xFFFFFFFFFFFFFFFELL) == 4;
    goto LABEL_9;
  }

  if ([pathCopy isEqualToString:@"UUID"])
  {
    v6 = type == 4 || type == 10;
    goto LABEL_9;
  }

  if (([pathCopy isEqualToString:@"workout"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"association") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"ratingOfExertionAssociation") || objc_msgSend(pathCopy, "isEqualToString:", @"appleWatch"))
  {
    goto LABEL_21;
  }

  if ([pathCopy isEqualToString:@"productType"])
  {
    if (type == 7)
    {
LABEL_24:
      v7 = 1;
      goto LABEL_12;
    }

LABEL_32:
    v7 = [_HKComparisonFilter isAllowedPredicateOperatorType:type forKeyPath:pathCopy];
    goto LABEL_12;
  }

  if (![pathCopy hk_hasDevicePropertyKeyPathPrefix])
  {
    if ([pathCopy hk_hasMetadataKeyPathPrefix])
    {
      if (type == 10)
      {
        goto LABEL_24;
      }
    }

    else if ([pathCopy isEqualToString:@"contributor"] || objc_msgSend(pathCopy, "isEqualToString:", @"localSyncIdentity"))
    {
LABEL_21:
      v6 = type == 4;
      goto LABEL_9;
    }

    goto LABEL_32;
  }

  v6 = type == 10;
LABEL_9:
  v7 = v6;
LABEL_12:

  return v7;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS____HKObjectComparisonFilter;
  if (objc_msgSendSuper2(&v18, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, types, error))
  {
    if ([pathCopy isEqualToString:@"device"] || objc_msgSend(pathCopy, "isEqualToString:", @"source") || objc_msgSend(pathCopy, "isEqualToString:", @"sourceRevision") || objc_msgSend(pathCopy, "isEqualToString:", @"UUID"))
    {
      v15 = objc_opt_class();
      IsValueValidForDevicePropertyKeyPath = HKIsValueOrContainerValidForOperatorType(type, valueCopy, v15, error);
    }

    else if ([pathCopy hk_hasDevicePropertyKeyPathPrefix])
    {
      IsValueValidForDevicePropertyKeyPath = _IsValueValidForDevicePropertyKeyPath(valueCopy, error);
    }

    else
    {
      if (![pathCopy hk_hasMetadataKeyPathPrefix])
      {
        v14 = 1;
        goto LABEL_10;
      }

      IsValueValidForDevicePropertyKeyPath = _IsMetadataValueValidForOperatorType(type, valueCopy, error);
    }

    v14 = IsValueValidForDevicePropertyKeyPath;
  }

  else
  {
    v14 = 0;
  }

LABEL_10:

  return v14;
}

+ (BOOL)allowsEmptyContainerValuesForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"device"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"source") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"sourceRevision") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"UUID") & 1) != 0 || (objc_msgSend(pathCopy, "hk_hasDevicePropertyKeyPathPrefix"))
  {
    hk_hasMetadataKeyPathPrefix = 1;
  }

  else
  {
    hk_hasMetadataKeyPathPrefix = [pathCopy hk_hasMetadataKeyPathPrefix];
  }

  return hk_hasMetadataKeyPathPrefix;
}

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"correlation"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"device"])
  {
    v6 = 1;
  }

  else if ([pathCopy isEqualToString:@"source"])
  {
    v6 = 2;
  }

  else if ([pathCopy isEqualToString:@"sourceRevision"])
  {
    v6 = 3;
  }

  else if ([pathCopy isEqualToString:@"UUID"])
  {
    v6 = 4;
  }

  else if ([pathCopy isEqualToString:@"workout"])
  {
    v6 = 5;
  }

  else if ([pathCopy isEqualToString:@"appleWatch"])
  {
    v6 = 6;
  }

  else if ([pathCopy isEqualToString:@"association"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"ratingOfExertionAssociation"))
  {
    v6 = 7;
  }

  else if ([pathCopy isEqualToString:@"OSBuild"])
  {
    v6 = 8;
  }

  else if ([pathCopy isEqualToString:@"contributor"])
  {
    v6 = 13;
  }

  else if ([pathCopy isEqualToString:@"creationDate"])
  {
    v6 = 10;
  }

  else if ([pathCopy isEqualToString:@"productType"])
  {
    v6 = 9;
  }

  else if ([pathCopy isEqualToString:@"localSyncIdentity"])
  {
    v6 = 14;
  }

  else if ([pathCopy hk_hasDevicePropertyKeyPathPrefix])
  {
    v6 = 11;
  }

  else if ([pathCopy hk_hasMetadataKeyPathPrefix])
  {
    v6 = 12;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKObjectComparisonFilter.m" lineNumber:348 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKObjectComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, pathCopy);
  }

  return v6;
}

+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error
{
  typesCopy = types;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS____HKObjectComparisonFilter;
  if (objc_msgSendSuper2(&v14, sel_areValidTypes_forKeyPath_error_, typesCopy, pathCopy, error))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60___HKObjectComparisonFilter_areValidTypes_forKeyPath_error___block_invoke;
    v12[3] = &unk_1E7384380;
    v13 = pathCopy;
    v10 = [typesCopy hk_allObjectsPassTestWithError:error test:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)configureInMemoryFilter
{
  v9.receiver = self;
  v9.super_class = _HKObjectComparisonFilter;
  [(_HKComparisonFilter *)&v9 configureInMemoryFilter];
  keyPath = [(_HKComparisonFilter *)self keyPath];
  v4 = [keyPath isEqualToString:@"source"];

  if (v4)
  {
    [(_HKObjectComparisonFilter *)self _configureForKeyPathSource];
  }

  else
  {
    keyPath2 = [(_HKComparisonFilter *)self keyPath];
    hk_hasDevicePropertyKeyPathPrefix = [keyPath2 hk_hasDevicePropertyKeyPathPrefix];

    if (hk_hasDevicePropertyKeyPathPrefix)
    {
      [(_HKObjectComparisonFilter *)self _configureForKeyPathDeviceProperty];
    }

    else
    {
      keyPath3 = [(_HKComparisonFilter *)self keyPath];
      hk_hasMetadataKeyPathPrefix = [keyPath3 hk_hasMetadataKeyPathPrefix];

      if (hk_hasMetadataKeyPathPrefix)
      {
        [(_HKObjectComparisonFilter *)self _configureForMetdataKeyPath];
      }
    }
  }
}

- (BOOL)acceptsDataObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
    switch([(_HKComparisonFilter *)self keyPathIntegerValue])
    {
      case 0:
      case 5:
      case 7:
      case 8:
      case 14:
        break;
      case 1:
        device = [objectCopy device];
        goto LABEL_12;
      case 2:
        _source = [objectCopy _source];
        v8 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithSource:_source];
        goto LABEL_14;
      case 3:
        device = [objectCopy sourceRevision];
        goto LABEL_12;
      case 4:
        device = [objectCopy UUID];
LABEL_12:
        _source = device;
        v8 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithValue:device];
        goto LABEL_14;
      case 6:
        _source = [objectCopy _source];
        v8 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithAppleWatchSource:_source];
        goto LABEL_14;
      case 9:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Product type filter does not support acceptsDataObject: and cannot be used in updating queries."];
        goto LABEL_16;
      case 10:
        [objectCopy _creationTimestamp];
        v5 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithCreationTime:?];
        break;
      case 11:
        _source = [objectCopy device];
        v8 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectComparingDeviceProperty:_source];
        goto LABEL_14;
      case 12:
        _source = [objectCopy metadata];
        v8 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithMetadata:_source];
        goto LABEL_14;
      case 13:
        _source = [objectCopy contributor];
        v8 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithContributor:_source];
LABEL_14:
        v5 = v8;

        break;
      default:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:1 object:self file:@"_HKObjectComparisonFilter.m" lineNumber:429 description:@"Unreachable code has been executed"];

        goto LABEL_16;
    }
  }

  else
  {
LABEL_16:
    v5 = 0;
  }

  return v5;
}

- (void)_configureForKeyPathSource
{
  operatorType = [(_HKComparisonFilter *)self operatorType];
  value = [(_HKComparisonFilter *)self value];
  v6 = value;
  if (operatorType == 10)
  {
    v5 = [value hk_containsObjectPassingTest:&__block_literal_global_145];
  }

  else
  {
    v5 = __55___HKObjectComparisonFilter__configureForKeyPathSource__block_invoke(value, value);
  }

  self->_compareForLocalDevice = v5;
}

- (void)_configureForKeyPathDeviceProperty
{
  keyPath = [(_HKComparisonFilter *)self keyPath];
  v4 = [keyPath substringFromIndex:{objc_msgSend(@"device.", "length")}];

  v10 = v4;
  if ([v10 isEqualToString:@"HKDevicePropertyFirmwareVersion"])
  {
    v5 = sel_firmwareVersion;
LABEL_17:
    v6 = NSStringFromSelector(v5);
    goto LABEL_18;
  }

  if ([v10 isEqualToString:@"HKDevicePropertyHardwareVersion"])
  {
    v5 = sel_hardwareVersion;
    goto LABEL_17;
  }

  if ([v10 isEqualToString:@"HKDevicePropertyLocalIdentifier"])
  {
    v5 = sel_localIdentifier;
    goto LABEL_17;
  }

  if ([v10 isEqualToString:@"HKDevicePropertyManufacturer"])
  {
    v5 = sel_manufacturer;
    goto LABEL_17;
  }

  if ([v10 isEqualToString:@"HKDevicePropertyModel"])
  {
    v5 = sel_model;
    goto LABEL_17;
  }

  if ([v10 isEqualToString:@"HKDevicePropertyName"])
  {
    v5 = sel_name;
    goto LABEL_17;
  }

  if ([v10 isEqualToString:@"HKDevicePropertySoftwareVersion"])
  {
    v5 = sel_softwareVersion;
    goto LABEL_17;
  }

  if ([v10 isEqualToString:@"HKDevicePropertyUDIDeviceIdentifier"])
  {
    v5 = sel_UDIDeviceIdentifier;
    goto LABEL_17;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _DevicePropertyNameForDevicePropertyKey(NSString * _Nonnull __strong)"];
  [currentHandler handleFailureInFunction:v9 file:@"_HKObjectComparisonFilter.m" lineNumber:110 description:@"Unreachable code has been executed"];

  v6 = &stru_1F05FF230;
LABEL_18:

  devicePropertyName = self->_devicePropertyName;
  self->_devicePropertyName = &v6->isa;
}

- (void)_configureForMetdataKeyPath
{
  keyPath = [(_HKComparisonFilter *)self keyPath];
  v3 = [keyPath substringFromIndex:{objc_msgSend(@"metadata.", "length")}];
  metadataKey = self->_metadataKey;
  self->_metadataKey = v3;
}

- (BOOL)_acceptsDataObjectWithValue:(id)value
{
  valueCopy = value;
  if ([(_HKComparisonFilter *)self operatorType]== 10)
  {
    value = [(_HKComparisonFilter *)self value];
    v7 = [value containsObject:valueCopy];
LABEL_5:
    LOBYTE(self) = v7;
    goto LABEL_6;
  }

  if ([(_HKComparisonFilter *)self operatorType]== 4)
  {
    value = [(_HKComparisonFilter *)self value];
    v7 = [value isEqual:valueCopy];
    goto LABEL_5;
  }

  if ([(_HKComparisonFilter *)self operatorType]== 5)
  {
    value = [(_HKComparisonFilter *)self value];
    LODWORD(self) = [value isEqual:valueCopy] ^ 1;
  }

  else
  {
    value = [MEMORY[0x1E696AAA8] currentHandler];
    [value handleFailureInMethod:a2 object:self file:@"_HKObjectComparisonFilter.m" lineNumber:472 description:@"Unreachable code has been executed"];
    LOBYTE(self) = 0;
  }

LABEL_6:

  return self;
}

- (BOOL)_acceptsDataObjectWithSource:(id)source
{
  sourceCopy = source;
  v5 = sourceCopy;
  if (self->_compareForLocalDevice && [sourceCopy _isLocalDevice])
  {
    v6 = [(_HKComparisonFilter *)self operatorType]== 4 || [(_HKComparisonFilter *)self operatorType]== 10;
  }

  else
  {
    v6 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithValue:v5];
  }

  return v6;
}

- (BOOL)_acceptsDataObjectWithAppleWatchSource:(id)source
{
  _isAppleWatch = [source _isAppleWatch];
  value = [(_HKComparisonFilter *)self value];
  v6 = _isAppleWatch ^ [value BOOLValue];

  return v6 ^ 1;
}

- (BOOL)_acceptsDataObjectWithCreationTime:(double)time
{
  selfCopy = self;
  value = [(_HKComparisonFilter *)self value];
  [value timeIntervalSinceReferenceDate];
  v7 = HKCompareDoubles(time, v6);
  LOBYTE(selfCopy) = HKComparisonResultMatchesPredicateOperator(v7, [(_HKComparisonFilter *)selfCopy operatorType]);

  return selfCopy;
}

- (BOOL)_acceptsDataObjectComparingDeviceProperty:(id)property
{
  v4 = [property valueForKeyPath:self->_devicePropertyName];
  value = [(_HKComparisonFilter *)self value];
  v6 = value;
  if (v4)
  {
    v7 = [value containsObject:v4];
  }

  else
  {
    v7 = [value count] == 0;
  }

  return v7;
}

- (BOOL)_acceptsDataObjectWithMetadata:(id)metadata
{
  v4 = [metadata objectForKeyedSubscript:self->_metadataKey];
  if ([(_HKComparisonFilter *)self operatorType]== 10)
  {
    if (v4)
    {
      value = [(_HKComparisonFilter *)self value];
      v6 = [value containsObject:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    value2 = [(_HKComparisonFilter *)self value];
    if (value2)
    {
    }

    else if ([(_HKComparisonFilter *)self operatorType]== 5)
    {
      v6 = v4 != 0;
      goto LABEL_13;
    }

    hk_acceptedPublicMetadataValueClasses = [MEMORY[0x1E695DF20] hk_acceptedPublicMetadataValueClasses];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60___HKObjectComparisonFilter__acceptsDataObjectWithMetadata___block_invoke;
    v15[3] = &unk_1E7382D18;
    v15[4] = self;
    [hk_acceptedPublicMetadataValueClasses hk_anyObjectPassingTest:v15];

    value3 = [(_HKComparisonFilter *)self value];
    if (value3 && (v10 = value3, isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) == 0))
    {
      v6 = [(_HKComparisonFilter *)self operatorType]== 5;
    }

    else
    {
      value4 = [(_HKComparisonFilter *)self value];
      v13 = [v4 compare:value4];

      v6 = HKComparisonResultMatchesPredicateOperator(v13, [(_HKComparisonFilter *)self operatorType]);
    }
  }

LABEL_13:

  return v6;
}

- (BOOL)_acceptsDataObjectWithContributor:(id)contributor
{
  if (!contributor)
  {
    return 0;
  }

  uUID = [contributor UUID];
  value = [(_HKComparisonFilter *)self value];
  v6 = [uUID isEqual:value];

  return v6;
}

@end