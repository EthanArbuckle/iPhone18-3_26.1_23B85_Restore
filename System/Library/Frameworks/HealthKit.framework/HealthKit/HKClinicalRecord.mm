@interface HKClinicalRecord
+ (HKClinicalRecord)clinicalRecordWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata displayName:(id)name FHIRResource:(id)resource;
+ (id)_newClinicalRecordWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata displayName:(id)name FHIRResource:(id)resource config:(id)self0;
- (BOOL)isEquivalent:(id)equivalent;
- (HKClinicalRecord)init;
- (HKClinicalRecord)initWithCoder:(id)coder;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)description;
- (void)_setDisplayName:(id)name;
- (void)_setFHIRResource:(id)resource;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalRecord

+ (HKClinicalRecord)clinicalRecordWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata displayName:(id)name FHIRResource:(id)resource
{
  v9 = [self _newClinicalRecordWithType:type startDate:date endDate:endDate device:device metadata:metadata displayName:name FHIRResource:resource config:0];

  return v9;
}

+ (id)_newClinicalRecordWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata displayName:(id)name FHIRResource:(id)resource config:(id)self0
{
  nameCopy = name;
  resourceCopy = resource;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__HKClinicalRecord__newClinicalRecordWithType_startDate_endDate_device_metadata_displayName_FHIRResource_config___block_invoke;
  aBlock[3] = &unk_1E7379208;
  v32 = nameCopy;
  v33 = resourceCopy;
  v34 = configCopy;
  v19 = configCopy;
  v20 = resourceCopy;
  v21 = nameCopy;
  metadataCopy = metadata;
  deviceCopy = device;
  endDateCopy = endDate;
  dateCopy = date;
  typeCopy = type;
  v27 = _Block_copy(aBlock);
  v30.receiver = self;
  v30.super_class = &OBJC_METACLASS___HKClinicalRecord;
  v28 = objc_msgSendSuper2(&v30, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, typeCopy, dateCopy, endDateCopy, deviceCopy, metadataCopy, v27);

  return v28;
}

void __113__HKClinicalRecord__newClinicalRecordWithType_startDate_endDate_device_metadata_displayName_FHIRResource_config___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v8[12];
  v8[12] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v8[13];
  v8[13] = v5;

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

- (HKClinicalRecord)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9.receiver = self;
  v9.super_class = HKClinicalRecord;
  v6 = [(HKSample *)&v9 description];
  v7 = [v3 stringWithFormat:@"<%@:%p super=%@, displayName = %@, FHIRResource = %@>", v5, self, v6, self->_displayName, self->_FHIRResource, 0];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKClinicalRecord;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_displayName forKey:{@"DisplayName", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_FHIRResource forKey:@"FHIRResource"];
}

- (HKClinicalRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKClinicalRecord;
  v5 = [(HKSample *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FHIRResource"];
    FHIRResource = v5->_FHIRResource;
    v5->_FHIRResource = v8;
  }

  return v5;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equivalentCopy;
    v22.receiver = self;
    v22.super_class = HKClinicalRecord;
    if (![(HKSample *)&v22 isEquivalent:v5])
    {
      goto LABEL_14;
    }

    displayName = [(HKClinicalRecord *)self displayName];
    displayName2 = [v5 displayName];
    v8 = displayName2;
    if (displayName == displayName2)
    {
    }

    else
    {
      displayName3 = [v5 displayName];
      if (!displayName3)
      {
        goto LABEL_13;
      }

      v10 = displayName3;
      displayName4 = [(HKClinicalRecord *)self displayName];
      displayName5 = [v5 displayName];
      v13 = [displayName4 isEqualToString:displayName5];

      if (!v13)
      {
        goto LABEL_14;
      }
    }

    displayName = [(HKClinicalRecord *)self FHIRResource];
    fHIRResource = [v5 FHIRResource];
    v8 = fHIRResource;
    if (displayName == fHIRResource)
    {

LABEL_18:
      v14 = 1;
      goto LABEL_15;
    }

    fHIRResource2 = [v5 FHIRResource];
    if (fHIRResource2)
    {
      v17 = fHIRResource2;
      fHIRResource3 = [(HKClinicalRecord *)self FHIRResource];
      fHIRResource4 = [v5 FHIRResource];
      v20 = [fHIRResource3 isEqual:fHIRResource4];

      if (v20)
      {
        goto LABEL_18;
      }

LABEL_14:
      v14 = 0;
LABEL_15:

      goto LABEL_16;
    }

LABEL_13:

    goto LABEL_14;
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (void)_setDisplayName:(id)name
{
  v4 = [name copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setFHIRResource:(id)resource
{
  v4 = [resource copy];
  FHIRResource = self->_FHIRResource;
  self->_FHIRResource = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v10.receiver = self;
  v10.super_class = HKClinicalRecord;
  v5 = [(HKSample *)&v10 _validateWithConfiguration:configuration.var0, configuration.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_3:
    v8 = v7;
    goto LABEL_6;
  }

  if (!self->_displayName)
  {
    v7 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: displayName must not be nil", self}];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end