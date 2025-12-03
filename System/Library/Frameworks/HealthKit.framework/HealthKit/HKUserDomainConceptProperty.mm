@interface HKUserDomainConceptProperty
+ (id)mergeListsOfPropertiesWithType:(int64_t)type intoListOfProperties:(id)properties fromListOfProperties:(id)ofProperties options:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (HKUserDomainConceptProperty)init;
- (HKUserDomainConceptProperty)initWithCoder:(id)coder;
- (HKUserDomainConceptProperty)initWithType:(int64_t)type version:(int64_t)version timestamp:(double)timestamp deleted:(BOOL)deleted;
- (id)description;
- (id)valueDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUserDomainConceptProperty

- (HKUserDomainConceptProperty)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptProperty)initWithType:(int64_t)type version:(int64_t)version timestamp:(double)timestamp deleted:(BOOL)deleted
{
  v12.receiver = self;
  v12.super_class = HKUserDomainConceptProperty;
  v10 = [(HKUserDomainConceptProperty *)&v12 init];
  if (HKIsDeprecatedPropertyType(type))
  {
    [HKUserDomainConceptProperty initWithType:version:timestamp:deleted:];
    if (!v10)
    {
      return v10;
    }

    goto LABEL_3;
  }

  if (v10)
  {
LABEL_3:
    v10->_type = type;
    v10->_version = version;
    v10->_timestamp = timestamp;
    v10->_deleted = deleted;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = HKStringFromUserDomainConceptPropertyType(self->_type);
  if (self->_deleted)
  {
    v5 = @" DELETED";
  }

  else
  {
    v5 = &stru_1F05FF230;
  }

  version = self->_version;
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_timestamp];
  v8 = HKDiagnosticStringFromDate(v7);
  valueDescription = [(HKUserDomainConceptProperty *)self valueDescription];
  v10 = [v3 stringWithFormat:@"<%@%@ %ld, (%@), %@>", v4, v5, version, v8, valueDescription];

  return v10;
}

+ (id)mergeListsOfPropertiesWithType:(int64_t)type intoListOfProperties:(id)properties fromListOfProperties:(id)ofProperties options:(unint64_t)options
{
  optionsCopy = options;
  propertiesCopy = properties;
  ofPropertiesCopy = ofProperties;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __112__HKUserDomainConceptProperty_mergeListsOfPropertiesWithType_intoListOfProperties_fromListOfProperties_options___block_invoke;
  v22[3] = &__block_descriptor_48_e37_B16__0__HKUserDomainConceptProperty_8l;
  v22[4] = type;
  v22[5] = self;
  if (([propertiesCopy hk_allObjectsPassTest:v22] & 1) == 0)
  {
    +[HKUserDomainConceptProperty mergeListsOfPropertiesWithType:intoListOfProperties:fromListOfProperties:options:];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __112__HKUserDomainConceptProperty_mergeListsOfPropertiesWithType_intoListOfProperties_fromListOfProperties_options___block_invoke_2;
  v21[3] = &__block_descriptor_48_e37_B16__0__HKUserDomainConceptProperty_8l;
  v21[4] = type;
  v21[5] = self;
  if (([ofPropertiesCopy hk_allObjectsPassTest:v21] & 1) == 0)
  {
    +[HKUserDomainConceptProperty mergeListsOfPropertiesWithType:intoListOfProperties:fromListOfProperties:options:];
  }

  v12 = propertiesCopy;
  if ([ofPropertiesCopy count])
  {
    v12 = ofPropertiesCopy;
    if ([propertiesCopy count])
    {
      v13 = MaximumVersionForListOfProperties(propertiesCopy);
      v14 = MaximumVersionForListOfProperties(ofPropertiesCopy);
      v15 = MaximumTimestampForListOfProperties(propertiesCopy);
      v16 = MaximumTimestampForListOfProperties(ofPropertiesCopy);
      v12 = ofPropertiesCopy;
      if (v14 <= v13)
      {
        if (v16 > v15 && v14 == v13 && (optionsCopy & 1) == 0)
        {
          v12 = ofPropertiesCopy;
        }

        else
        {
          v12 = propertiesCopy;
        }
      }
    }
  }

  v19 = v12;

  return v12;
}

uint64_t __112__HKUserDomainConceptProperty_mergeListsOfPropertiesWithType_intoListOfProperties_fromListOfProperties_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 32))
  {
    v4 = *(a1 + 40);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t __112__HKUserDomainConceptProperty_mergeListsOfPropertiesWithType_intoListOfProperties_fromListOfProperties_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 32))
  {
    v4 = *(a1 + 40);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_type == v5->_type && self->_version == v5->_version && self->_timestamp == v5->_timestamp && self->_deleted == v5->_deleted;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeInteger:self->_version forKey:@"version"];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coderCopy encodeBool:self->_deleted forKey:@"deleted"];
}

- (HKUserDomainConceptProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKUserDomainConceptProperty;
  v5 = [(HKUserDomainConceptProperty *)&v10 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeIntegerForKey:@"type"];
  if (!HKIsDeprecatedPropertyType(v6))
  {
    v5->_type = v6;
    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v8;
    v5->_deleted = [coderCopy decodeBoolForKey:@"deleted"];
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)valueDescription
{
  OUTLINED_FUNCTION_0_0();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)initWithType:version:timestamp:deleted:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HKUserDomainConceptProperty.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"HKIsDeprecatedPropertyType(type) == NO"}];
}

+ (void)mergeListsOfPropertiesWithType:intoListOfProperties:fromListOfProperties:options:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HKUserDomainConceptProperty.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"[intoListOfProperties hk_allObjectsPassTest:^BOOL(HKUserDomainConceptProperty *property) { return property.type == type && [property isKindOfClass:self]; }]"}];
}

+ (void)mergeListsOfPropertiesWithType:intoListOfProperties:fromListOfProperties:options:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HKUserDomainConceptProperty.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"[fromListOfProperties hk_allObjectsPassTest:^BOOL(HKUserDomainConceptProperty *property) { return property.type == type && [property isKindOfClass:self]; }]"}];
}

@end