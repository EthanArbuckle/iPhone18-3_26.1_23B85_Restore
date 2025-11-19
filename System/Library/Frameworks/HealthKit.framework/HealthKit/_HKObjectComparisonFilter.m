@interface _HKObjectComparisonFilter
+ (BOOL)allowsEmptyContainerValuesForKeyPath:(id)a3;
+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (BOOL)isSupportedDevicePropertyKey:(id)a3;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)_acceptsDataObjectComparingDeviceProperty:(id)a3;
- (BOOL)_acceptsDataObjectWithAppleWatchSource:(id)a3;
- (BOOL)_acceptsDataObjectWithContributor:(id)a3;
- (BOOL)_acceptsDataObjectWithCreationTime:(double)a3;
- (BOOL)_acceptsDataObjectWithMetadata:(id)a3;
- (BOOL)_acceptsDataObjectWithSource:(id)a3;
- (BOOL)_acceptsDataObjectWithValue:(id)a3;
- (BOOL)acceptsDataObject:(id)a3;
- (void)_configureForKeyPathDeviceProperty;
- (void)_configureForKeyPathSource;
- (void)_configureForMetdataKeyPath;
- (void)configureInMemoryFilter;
@end

@implementation _HKObjectComparisonFilter

+ (BOOL)isSupportedDevicePropertyKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HKDevicePropertyFirmwareVersion"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HKDevicePropertyHardwareVersion") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HKDevicePropertyLocalIdentifier") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HKDevicePropertyManufacturer") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HKDevicePropertyModel") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HKDevicePropertyName") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HKDevicePropertySoftwareVersion"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"HKDevicePropertyUDIDeviceIdentifier"];
  }

  return v4;
}

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"correlation"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"device") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"source") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"sourceRevision") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"UUID") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"workout") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"appleWatch") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"association") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"ratingOfExertionAssociation") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"OSBuild") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"contributor") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"creationDate") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"productType") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"localSyncIdentity"))
  {
    v5 = 1;
  }

  else
  {
    if ([v4 hk_hasDevicePropertyKeyPathPrefix])
    {
      v7 = [v4 substringFromIndex:{objc_msgSend(@"device.", "length")}];
      v5 = [a1 isSupportedDevicePropertyKey:v7];
    }

    else
    {
      if (![v4 hk_hasMetadataKeyPathPrefix])
      {
        v5 = 0;
        goto LABEL_16;
      }

      v7 = [v4 substringFromIndex:{objc_msgSend(@"metadata.", "length")}];
      v5 = [v7 length] != 0;
    }
  }

LABEL_16:

  return v5;
}

+ (id)allowedDataTypeClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"correlation"])
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_3:
    v7 = [v6 setWithObject:objc_opt_class()];
LABEL_10:
    v11 = v7;
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"device"] || objc_msgSend(v5, "isEqualToString:", @"source") || objc_msgSend(v5, "isEqualToString:", @"sourceRevision") || objc_msgSend(v5, "isEqualToString:", @"UUID"))
  {
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v7 = [v8 initWithObjects:{v9, v10, objc_opt_class(), 0}];
    goto LABEL_10;
  }

  if ([v5 isEqualToString:@"workout"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_3;
  }

  if ([v5 isEqualToString:@"appleWatch"])
  {
    goto LABEL_17;
  }

  if (([v5 isEqualToString:@"association"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"ratingOfExertionAssociation"))
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_3;
  }

  if (([v5 isEqualToString:@"OSBuild"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"productType"))
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_3;
  }

  if ([v5 isEqualToString:@"contributor"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_3;
  }

  if ([v5 isEqualToString:@"creationDate"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_3;
  }

  if ([v5 isEqualToString:@"localSyncIdentity"])
  {
LABEL_17:
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_3;
  }

  if ([v5 hk_hasDevicePropertyKeyPathPrefix])
  {
    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v14 = objc_opt_class();
    v7 = [v13 initWithObjects:{v14, objc_opt_class(), 0, v21}];
    goto LABEL_10;
  }

  if (![v5 hk_hasMetadataKeyPathPrefix])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"_HKObjectComparisonFilter.m" lineNumber:226 description:@"Unreachable code has been executed"];

    v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    goto LABEL_10;
  }

  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v15 initWithObjects:{v16, v17, objc_opt_class(), 0}];
  v19 = [MEMORY[0x1E695DF20] hk_acceptedPublicMetadataValueClasses];
  v11 = [v18 setByAddingObjectsFromSet:v19];

LABEL_11:

  return v11;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:@"correlation"])
  {
    v6 = (a3 & 0xFFFFFFFFFFFFFFFELL) == 4;
    goto LABEL_9;
  }

  if (([v5 isEqualToString:@"device"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"source") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"sourceRevision"))
  {
    v6 = a3 == 10 || (a3 & 0xFFFFFFFFFFFFFFFELL) == 4;
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"UUID"])
  {
    v6 = a3 == 4 || a3 == 10;
    goto LABEL_9;
  }

  if (([v5 isEqualToString:@"workout"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"association") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"ratingOfExertionAssociation") || objc_msgSend(v5, "isEqualToString:", @"appleWatch"))
  {
    goto LABEL_21;
  }

  if ([v5 isEqualToString:@"productType"])
  {
    if (a3 == 7)
    {
LABEL_24:
      v7 = 1;
      goto LABEL_12;
    }

LABEL_32:
    v7 = [_HKComparisonFilter isAllowedPredicateOperatorType:a3 forKeyPath:v5];
    goto LABEL_12;
  }

  if (![v5 hk_hasDevicePropertyKeyPathPrefix])
  {
    if ([v5 hk_hasMetadataKeyPathPrefix])
    {
      if (a3 == 10)
      {
        goto LABEL_24;
      }
    }

    else if ([v5 isEqualToString:@"contributor"] || objc_msgSend(v5, "isEqualToString:", @"localSyncIdentity"))
    {
LABEL_21:
      v6 = a3 == 4;
      goto LABEL_9;
    }

    goto LABEL_32;
  }

  v6 = a3 == 10;
LABEL_9:
  v7 = v6;
LABEL_12:

  return v7;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS____HKObjectComparisonFilter;
  if (objc_msgSendSuper2(&v18, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v12, v13, a5, a6, a7))
  {
    if ([v13 isEqualToString:@"device"] || objc_msgSend(v13, "isEqualToString:", @"source") || objc_msgSend(v13, "isEqualToString:", @"sourceRevision") || objc_msgSend(v13, "isEqualToString:", @"UUID"))
    {
      v15 = objc_opt_class();
      IsValueValidForDevicePropertyKeyPath = HKIsValueOrContainerValidForOperatorType(a5, v12, v15, a7);
    }

    else if ([v13 hk_hasDevicePropertyKeyPathPrefix])
    {
      IsValueValidForDevicePropertyKeyPath = _IsValueValidForDevicePropertyKeyPath(v12, a7);
    }

    else
    {
      if (![v13 hk_hasMetadataKeyPathPrefix])
      {
        v14 = 1;
        goto LABEL_10;
      }

      IsValueValidForDevicePropertyKeyPath = _IsMetadataValueValidForOperatorType(a5, v12, a7);
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

+ (BOOL)allowsEmptyContainerValuesForKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"device"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"source") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"sourceRevision") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"UUID") & 1) != 0 || (objc_msgSend(v3, "hk_hasDevicePropertyKeyPathPrefix"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hk_hasMetadataKeyPathPrefix];
  }

  return v4;
}

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"correlation"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"device"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"source"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"sourceRevision"])
  {
    v6 = 3;
  }

  else if ([v5 isEqualToString:@"UUID"])
  {
    v6 = 4;
  }

  else if ([v5 isEqualToString:@"workout"])
  {
    v6 = 5;
  }

  else if ([v5 isEqualToString:@"appleWatch"])
  {
    v6 = 6;
  }

  else if ([v5 isEqualToString:@"association"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"ratingOfExertionAssociation"))
  {
    v6 = 7;
  }

  else if ([v5 isEqualToString:@"OSBuild"])
  {
    v6 = 8;
  }

  else if ([v5 isEqualToString:@"contributor"])
  {
    v6 = 13;
  }

  else if ([v5 isEqualToString:@"creationDate"])
  {
    v6 = 10;
  }

  else if ([v5 isEqualToString:@"productType"])
  {
    v6 = 9;
  }

  else if ([v5 isEqualToString:@"localSyncIdentity"])
  {
    v6 = 14;
  }

  else if ([v5 hk_hasDevicePropertyKeyPathPrefix])
  {
    v6 = 11;
  }

  else if ([v5 hk_hasMetadataKeyPathPrefix])
  {
    v6 = 12;
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"_HKObjectComparisonFilter.m" lineNumber:348 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKObjectComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, v5);
  }

  return v6;
}

+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS____HKObjectComparisonFilter;
  if (objc_msgSendSuper2(&v14, sel_areValidTypes_forKeyPath_error_, v8, v9, a5))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60___HKObjectComparisonFilter_areValidTypes_forKeyPath_error___block_invoke;
    v12[3] = &unk_1E7384380;
    v13 = v9;
    v10 = [v8 hk_allObjectsPassTestWithError:a5 test:v12];
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
  v3 = [(_HKComparisonFilter *)self keyPath];
  v4 = [v3 isEqualToString:@"source"];

  if (v4)
  {
    [(_HKObjectComparisonFilter *)self _configureForKeyPathSource];
  }

  else
  {
    v5 = [(_HKComparisonFilter *)self keyPath];
    v6 = [v5 hk_hasDevicePropertyKeyPathPrefix];

    if (v6)
    {
      [(_HKObjectComparisonFilter *)self _configureForKeyPathDeviceProperty];
    }

    else
    {
      v7 = [(_HKComparisonFilter *)self keyPath];
      v8 = [v7 hk_hasMetadataKeyPathPrefix];

      if (v8)
      {
        [(_HKObjectComparisonFilter *)self _configureForMetdataKeyPath];
      }
    }
  }
}

- (BOOL)acceptsDataObject:(id)a3
{
  v4 = a3;
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
        v6 = [v4 device];
        goto LABEL_12;
      case 2:
        v7 = [v4 _source];
        v8 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithSource:v7];
        goto LABEL_14;
      case 3:
        v6 = [v4 sourceRevision];
        goto LABEL_12;
      case 4:
        v6 = [v4 UUID];
LABEL_12:
        v7 = v6;
        v8 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithValue:v6];
        goto LABEL_14;
      case 6:
        v7 = [v4 _source];
        v8 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithAppleWatchSource:v7];
        goto LABEL_14;
      case 9:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Product type filter does not support acceptsDataObject: and cannot be used in updating queries."];
        goto LABEL_16;
      case 10:
        [v4 _creationTimestamp];
        v5 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithCreationTime:?];
        break;
      case 11:
        v7 = [v4 device];
        v8 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectComparingDeviceProperty:v7];
        goto LABEL_14;
      case 12:
        v7 = [v4 metadata];
        v8 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithMetadata:v7];
        goto LABEL_14;
      case 13:
        v7 = [v4 contributor];
        v8 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithContributor:v7];
LABEL_14:
        v5 = v8;

        break;
      default:
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:1 object:self file:@"_HKObjectComparisonFilter.m" lineNumber:429 description:@"Unreachable code has been executed"];

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
  v3 = [(_HKComparisonFilter *)self operatorType];
  v4 = [(_HKComparisonFilter *)self value];
  v6 = v4;
  if (v3 == 10)
  {
    v5 = [v4 hk_containsObjectPassingTest:&__block_literal_global_145];
  }

  else
  {
    v5 = __55___HKObjectComparisonFilter__configureForKeyPathSource__block_invoke(v4, v4);
  }

  self->_compareForLocalDevice = v5;
}

- (void)_configureForKeyPathDeviceProperty
{
  v3 = [(_HKComparisonFilter *)self keyPath];
  v4 = [v3 substringFromIndex:{objc_msgSend(@"device.", "length")}];

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

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _DevicePropertyNameForDevicePropertyKey(NSString * _Nonnull __strong)"];
  [v8 handleFailureInFunction:v9 file:@"_HKObjectComparisonFilter.m" lineNumber:110 description:@"Unreachable code has been executed"];

  v6 = &stru_1F05FF230;
LABEL_18:

  devicePropertyName = self->_devicePropertyName;
  self->_devicePropertyName = &v6->isa;
}

- (void)_configureForMetdataKeyPath
{
  v5 = [(_HKComparisonFilter *)self keyPath];
  v3 = [v5 substringFromIndex:{objc_msgSend(@"metadata.", "length")}];
  metadataKey = self->_metadataKey;
  self->_metadataKey = v3;
}

- (BOOL)_acceptsDataObjectWithValue:(id)a3
{
  v5 = a3;
  if ([(_HKComparisonFilter *)self operatorType]== 10)
  {
    v6 = [(_HKComparisonFilter *)self value];
    v7 = [v6 containsObject:v5];
LABEL_5:
    LOBYTE(self) = v7;
    goto LABEL_6;
  }

  if ([(_HKComparisonFilter *)self operatorType]== 4)
  {
    v6 = [(_HKComparisonFilter *)self value];
    v7 = [v6 isEqual:v5];
    goto LABEL_5;
  }

  if ([(_HKComparisonFilter *)self operatorType]== 5)
  {
    v6 = [(_HKComparisonFilter *)self value];
    LODWORD(self) = [v6 isEqual:v5] ^ 1;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_HKObjectComparisonFilter.m" lineNumber:472 description:@"Unreachable code has been executed"];
    LOBYTE(self) = 0;
  }

LABEL_6:

  return self;
}

- (BOOL)_acceptsDataObjectWithSource:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_compareForLocalDevice && [v4 _isLocalDevice])
  {
    v6 = [(_HKComparisonFilter *)self operatorType]== 4 || [(_HKComparisonFilter *)self operatorType]== 10;
  }

  else
  {
    v6 = [(_HKObjectComparisonFilter *)self _acceptsDataObjectWithValue:v5];
  }

  return v6;
}

- (BOOL)_acceptsDataObjectWithAppleWatchSource:(id)a3
{
  v4 = [a3 _isAppleWatch];
  v5 = [(_HKComparisonFilter *)self value];
  v6 = v4 ^ [v5 BOOLValue];

  return v6 ^ 1;
}

- (BOOL)_acceptsDataObjectWithCreationTime:(double)a3
{
  v4 = self;
  v5 = [(_HKComparisonFilter *)self value];
  [v5 timeIntervalSinceReferenceDate];
  v7 = HKCompareDoubles(a3, v6);
  LOBYTE(v4) = HKComparisonResultMatchesPredicateOperator(v7, [(_HKComparisonFilter *)v4 operatorType]);

  return v4;
}

- (BOOL)_acceptsDataObjectComparingDeviceProperty:(id)a3
{
  v4 = [a3 valueForKeyPath:self->_devicePropertyName];
  v5 = [(_HKComparisonFilter *)self value];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 containsObject:v4];
  }

  else
  {
    v7 = [v5 count] == 0;
  }

  return v7;
}

- (BOOL)_acceptsDataObjectWithMetadata:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:self->_metadataKey];
  if ([(_HKComparisonFilter *)self operatorType]== 10)
  {
    if (v4)
    {
      v5 = [(_HKComparisonFilter *)self value];
      v6 = [v5 containsObject:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = [(_HKComparisonFilter *)self value];
    if (v7)
    {
    }

    else if ([(_HKComparisonFilter *)self operatorType]== 5)
    {
      v6 = v4 != 0;
      goto LABEL_13;
    }

    v8 = [MEMORY[0x1E695DF20] hk_acceptedPublicMetadataValueClasses];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60___HKObjectComparisonFilter__acceptsDataObjectWithMetadata___block_invoke;
    v15[3] = &unk_1E7382D18;
    v15[4] = self;
    [v8 hk_anyObjectPassingTest:v15];

    v9 = [(_HKComparisonFilter *)self value];
    if (v9 && (v10 = v9, isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) == 0))
    {
      v6 = [(_HKComparisonFilter *)self operatorType]== 5;
    }

    else
    {
      v12 = [(_HKComparisonFilter *)self value];
      v13 = [v4 compare:v12];

      v6 = HKComparisonResultMatchesPredicateOperator(v13, [(_HKComparisonFilter *)self operatorType]);
    }
  }

LABEL_13:

  return v6;
}

- (BOOL)_acceptsDataObjectWithContributor:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 UUID];
  v5 = [(_HKComparisonFilter *)self value];
  v6 = [v4 isEqual:v5];

  return v6;
}

@end