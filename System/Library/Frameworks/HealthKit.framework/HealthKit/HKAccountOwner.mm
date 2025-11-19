@interface HKAccountOwner
+ (id)_newAccountOwnerWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 name:(id)a15 birthDate:(id)a16 config:(id)a17;
+ (id)accountOwnerWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 name:(id)a14 birthDate:(id)a15;
- (BOOL)isEquivalent:(id)a3;
- (HKAccountOwner)init;
- (HKAccountOwner)initWithCoder:(id)a3;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)description;
- (void)_setBirthDate:(id)a3;
- (void)_setName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKAccountOwner

+ (id)_newAccountOwnerWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 name:(id)a15 birthDate:(id)a16 config:(id)a17
{
  v37 = a5;
  v20 = a15;
  v21 = a16;
  v22 = a17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __179__HKAccountOwner__newAccountOwnerWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_name_birthDate_config___block_invoke;
  aBlock[3] = &unk_1E7379208;
  v44 = v20;
  v45 = v21;
  v46 = v22;
  v41 = v22;
  v40 = v21;
  v39 = v20;
  v23 = a13;
  v24 = a12;
  v25 = a11;
  v26 = a10;
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = _Block_copy(aBlock);
  v42.receiver = a1;
  v42.super_class = &OBJC_METACLASS___HKAccountOwner;
  v38 = objc_msgSendSuper2(&v42, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v31, v30, v37, v29, v28, v27, a9, v26, v25, v24, v23, a14, v32);

  return v38;
}

void __179__HKAccountOwner__newAccountOwnerWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_name_birthDate_config___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v8[22];
  v8[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v8[23];
  v8[23] = v5;

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

- (HKAccountOwner)init
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
  v10.receiver = self;
  v10.super_class = HKAccountOwner;
  v6 = [(HKSample *)&v10 description];
  name = self->_name;
  v8 = [v3 stringWithFormat:@"<%@:%p super=%@name = %@birthDate = %@>", v5, self, v6, name, self->_birthDate];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKAccountOwner;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_name forKey:{@"Name", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_birthDate forKey:@"BirthDate"];
}

- (HKAccountOwner)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKAccountOwner;
  v5 = [(HKMedicalRecord *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BirthDate"];
    birthDate = v5->_birthDate;
    v5->_birthDate = v8;
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
    v22.super_class = HKAccountOwner;
    if (![(HKMedicalRecord *)&v22 isEquivalent:v5])
    {
      goto LABEL_14;
    }

    v6 = [(HKAccountOwner *)self name];
    v7 = [v5 name];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 name];
      if (!v9)
      {
        goto LABEL_13;
      }

      v10 = v9;
      v11 = [(HKAccountOwner *)self name];
      v12 = [v5 name];
      v13 = [v11 isEqualToString:v12];

      if (!v13)
      {
        goto LABEL_14;
      }
    }

    v6 = [(HKAccountOwner *)self birthDate];
    v15 = [v5 birthDate];
    v8 = v15;
    if (v6 == v15)
    {

LABEL_18:
      v14 = 1;
      goto LABEL_15;
    }

    v16 = [v5 birthDate];
    if (v16)
    {
      v17 = v16;
      v18 = [(HKAccountOwner *)self birthDate];
      v19 = [v5 birthDate];
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

- (void)_setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setBirthDate:(id)a3
{
  v4 = [a3 copy];
  birthDate = self->_birthDate;
  self->_birthDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v10.receiver = self;
  v10.super_class = HKAccountOwner;
  v5 = [(HKMedicalRecord *)&v10 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_3:
    v8 = v7;
    goto LABEL_6;
  }

  if (!self->_name)
  {
    v7 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: name must not be nil", self}];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

+ (id)accountOwnerWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 name:(id)a14 birthDate:(id)a15
{
  v31 = a5;
  v27 = a6;
  v26 = a15;
  v25 = a14;
  v17 = a12;
  v18 = a11;
  v19 = a10;
  v24 = a8;
  v20 = a7;
  v29 = a4;
  v21 = a3;
  v22 = [HKSemanticDate semanticDateWithKeyPath:@"modifiedDate" date:v27];
  v32 = [HKAccountOwner accountOwnerWithType:v21 note:v29 enteredInError:v31 modifiedDate:v27 originIdentifier:v20 locale:v24 extractionVersion:a9 device:v19 metadata:v18 sortDate:v22 country:v17 state:a13 name:v25 birthDate:v26];

  return v32;
}

@end