@interface HKClinicalRecord
+ (HKClinicalRecord)clinicalRecordWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 displayName:(id)a8 FHIRResource:(id)a9;
+ (id)_newClinicalRecordWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 displayName:(id)a8 FHIRResource:(id)a9 config:(id)a10;
- (BOOL)isEquivalent:(id)a3;
- (HKClinicalRecord)init;
- (HKClinicalRecord)initWithCoder:(id)a3;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)description;
- (void)_setDisplayName:(id)a3;
- (void)_setFHIRResource:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalRecord

+ (HKClinicalRecord)clinicalRecordWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 displayName:(id)a8 FHIRResource:(id)a9
{
  v9 = [a1 _newClinicalRecordWithType:a3 startDate:a4 endDate:a5 device:a6 metadata:a7 displayName:a8 FHIRResource:a9 config:0];

  return v9;
}

+ (id)_newClinicalRecordWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 displayName:(id)a8 FHIRResource:(id)a9 config:(id)a10
{
  v16 = a8;
  v17 = a9;
  v18 = a10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__HKClinicalRecord__newClinicalRecordWithType_startDate_endDate_device_metadata_displayName_FHIRResource_config___block_invoke;
  aBlock[3] = &unk_1E7379208;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v19 = v18;
  v20 = v17;
  v21 = v16;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = _Block_copy(aBlock);
  v30.receiver = a1;
  v30.super_class = &OBJC_METACLASS___HKClinicalRecord;
  v28 = objc_msgSendSuper2(&v30, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, v26, v25, v24, v23, v22, v27);

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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKClinicalRecord;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_displayName forKey:{@"DisplayName", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_FHIRResource forKey:@"FHIRResource"];
}

- (HKClinicalRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKClinicalRecord;
  v5 = [(HKSample *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FHIRResource"];
    FHIRResource = v5->_FHIRResource;
    v5->_FHIRResource = v8;
  }

  return v5;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v22.receiver = self;
    v22.super_class = HKClinicalRecord;
    if (![(HKSample *)&v22 isEquivalent:v5])
    {
      goto LABEL_14;
    }

    v6 = [(HKClinicalRecord *)self displayName];
    v7 = [v5 displayName];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 displayName];
      if (!v9)
      {
        goto LABEL_13;
      }

      v10 = v9;
      v11 = [(HKClinicalRecord *)self displayName];
      v12 = [v5 displayName];
      v13 = [v11 isEqualToString:v12];

      if (!v13)
      {
        goto LABEL_14;
      }
    }

    v6 = [(HKClinicalRecord *)self FHIRResource];
    v15 = [v5 FHIRResource];
    v8 = v15;
    if (v6 == v15)
    {

LABEL_18:
      v14 = 1;
      goto LABEL_15;
    }

    v16 = [v5 FHIRResource];
    if (v16)
    {
      v17 = v16;
      v18 = [(HKClinicalRecord *)self FHIRResource];
      v19 = [v5 FHIRResource];
      v20 = [v18 isEqual:v19];

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

- (void)_setDisplayName:(id)a3
{
  v4 = [a3 copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setFHIRResource:(id)a3
{
  v4 = [a3 copy];
  FHIRResource = self->_FHIRResource;
  self->_FHIRResource = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v10.receiver = self;
  v10.super_class = HKClinicalRecord;
  v5 = [(HKSample *)&v10 _validateWithConfiguration:a3.var0, a3.var1];
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