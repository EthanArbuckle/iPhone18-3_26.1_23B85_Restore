@interface HKUserDomainConceptProperty
+ (id)mergeListsOfPropertiesWithType:(int64_t)a3 intoListOfProperties:(id)a4 fromListOfProperties:(id)a5 options:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (HKUserDomainConceptProperty)init;
- (HKUserDomainConceptProperty)initWithCoder:(id)a3;
- (HKUserDomainConceptProperty)initWithType:(int64_t)a3 version:(int64_t)a4 timestamp:(double)a5 deleted:(BOOL)a6;
- (id)description;
- (id)valueDescription;
- (void)encodeWithCoder:(id)a3;
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

- (HKUserDomainConceptProperty)initWithType:(int64_t)a3 version:(int64_t)a4 timestamp:(double)a5 deleted:(BOOL)a6
{
  v12.receiver = self;
  v12.super_class = HKUserDomainConceptProperty;
  v10 = [(HKUserDomainConceptProperty *)&v12 init];
  if (HKIsDeprecatedPropertyType(a3))
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
    v10->_type = a3;
    v10->_version = a4;
    v10->_timestamp = a5;
    v10->_deleted = a6;
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
  v9 = [(HKUserDomainConceptProperty *)self valueDescription];
  v10 = [v3 stringWithFormat:@"<%@%@ %ld, (%@), %@>", v4, v5, version, v8, v9];

  return v10;
}

+ (id)mergeListsOfPropertiesWithType:(int64_t)a3 intoListOfProperties:(id)a4 fromListOfProperties:(id)a5 options:(unint64_t)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __112__HKUserDomainConceptProperty_mergeListsOfPropertiesWithType_intoListOfProperties_fromListOfProperties_options___block_invoke;
  v22[3] = &__block_descriptor_48_e37_B16__0__HKUserDomainConceptProperty_8l;
  v22[4] = a3;
  v22[5] = a1;
  if (([v10 hk_allObjectsPassTest:v22] & 1) == 0)
  {
    +[HKUserDomainConceptProperty mergeListsOfPropertiesWithType:intoListOfProperties:fromListOfProperties:options:];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __112__HKUserDomainConceptProperty_mergeListsOfPropertiesWithType_intoListOfProperties_fromListOfProperties_options___block_invoke_2;
  v21[3] = &__block_descriptor_48_e37_B16__0__HKUserDomainConceptProperty_8l;
  v21[4] = a3;
  v21[5] = a1;
  if (([v11 hk_allObjectsPassTest:v21] & 1) == 0)
  {
    +[HKUserDomainConceptProperty mergeListsOfPropertiesWithType:intoListOfProperties:fromListOfProperties:options:];
  }

  v12 = v10;
  if ([v11 count])
  {
    v12 = v11;
    if ([v10 count])
    {
      v13 = MaximumVersionForListOfProperties(v10);
      v14 = MaximumVersionForListOfProperties(v11);
      v15 = MaximumTimestampForListOfProperties(v10);
      v16 = MaximumTimestampForListOfProperties(v11);
      v12 = v11;
      if (v14 <= v13)
      {
        if (v16 > v15 && v14 == v13 && (v6 & 1) == 0)
        {
          v12 = v11;
        }

        else
        {
          v12 = v10;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_type == v5->_type && self->_version == v5->_version && self->_timestamp == v5->_timestamp && self->_deleted == v5->_deleted;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeInteger:self->_version forKey:@"version"];
  [v5 encodeDouble:@"timestamp" forKey:self->_timestamp];
  [v5 encodeBool:self->_deleted forKey:@"deleted"];
}

- (HKUserDomainConceptProperty)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKUserDomainConceptProperty;
  v5 = [(HKUserDomainConceptProperty *)&v10 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeIntegerForKey:@"type"];
  if (!HKIsDeprecatedPropertyType(v6))
  {
    v5->_type = v6;
    v5->_version = [v4 decodeIntegerForKey:@"version"];
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v8;
    v5->_deleted = [v4 decodeBoolForKey:@"deleted"];
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