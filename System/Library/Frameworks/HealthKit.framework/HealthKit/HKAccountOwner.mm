@interface HKAccountOwner
+ (id)_newAccountOwnerWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 name:(id)self5 birthDate:(id)self6 config:(id)self7;
+ (id)accountOwnerWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 name:(id)self4 birthDate:(id)self5;
- (BOOL)isEquivalent:(id)equivalent;
- (HKAccountOwner)init;
- (HKAccountOwner)initWithCoder:(id)coder;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)description;
- (void)_setBirthDate:(id)date;
- (void)_setName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAccountOwner

+ (id)_newAccountOwnerWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 name:(id)self5 birthDate:(id)self6 config:(id)self7
{
  errorCopy = error;
  nameCopy = name;
  birthDateCopy = birthDate;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __179__HKAccountOwner__newAccountOwnerWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_name_birthDate_config___block_invoke;
  aBlock[3] = &unk_1E7379208;
  v44 = nameCopy;
  v45 = birthDateCopy;
  v46 = configCopy;
  v41 = configCopy;
  v40 = birthDateCopy;
  v39 = nameCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v32 = _Block_copy(aBlock);
  v42.receiver = self;
  v42.super_class = &OBJC_METACLASS___HKAccountOwner;
  v38 = objc_msgSendSuper2(&v42, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v32);

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKAccountOwner;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_name forKey:{@"Name", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_birthDate forKey:@"BirthDate"];
}

- (HKAccountOwner)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKAccountOwner;
  v5 = [(HKMedicalRecord *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BirthDate"];
    birthDate = v5->_birthDate;
    v5->_birthDate = v8;
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
    v22.super_class = HKAccountOwner;
    if (![(HKMedicalRecord *)&v22 isEquivalent:v5])
    {
      goto LABEL_14;
    }

    name = [(HKAccountOwner *)self name];
    name2 = [v5 name];
    v8 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [v5 name];
      if (!name3)
      {
        goto LABEL_13;
      }

      v10 = name3;
      name4 = [(HKAccountOwner *)self name];
      name5 = [v5 name];
      v13 = [name4 isEqualToString:name5];

      if (!v13)
      {
        goto LABEL_14;
      }
    }

    name = [(HKAccountOwner *)self birthDate];
    birthDate = [v5 birthDate];
    v8 = birthDate;
    if (name == birthDate)
    {

LABEL_18:
      v14 = 1;
      goto LABEL_15;
    }

    birthDate2 = [v5 birthDate];
    if (birthDate2)
    {
      v17 = birthDate2;
      birthDate3 = [(HKAccountOwner *)self birthDate];
      birthDate4 = [v5 birthDate];
      v20 = [birthDate3 isEqual:birthDate4];

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

- (void)_setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setBirthDate:(id)date
{
  v4 = [date copy];
  birthDate = self->_birthDate;
  self->_birthDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v10.receiver = self;
  v10.super_class = HKAccountOwner;
  v5 = [(HKMedicalRecord *)&v10 _validateWithConfiguration:configuration.var0, configuration.var1];
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

+ (id)accountOwnerWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 name:(id)self4 birthDate:(id)self5
{
  errorCopy = error;
  dateCopy = date;
  birthDateCopy = birthDate;
  nameCopy = name;
  countryCopy = country;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  noteCopy = note;
  typeCopy = type;
  v22 = [HKSemanticDate semanticDateWithKeyPath:@"modifiedDate" date:dateCopy];
  v32 = [HKAccountOwner accountOwnerWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:dateCopy originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v22 country:countryCopy state:state name:nameCopy birthDate:birthDateCopy];

  return v32;
}

@end