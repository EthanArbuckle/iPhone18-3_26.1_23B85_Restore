@interface HKUnknownRecord
+ (id)_newUnknownRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 displayName:(id)self5 config:(id)self6;
+ (id)defaultDisplayString;
+ (id)unknownRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 displayName:(id)self4;
- (BOOL)isEquivalent:(id)equivalent;
- (HKUnknownRecord)init;
- (HKUnknownRecord)initWithCoder:(id)coder;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)description;
- (id)fallbackDisplayString;
- (void)_setDisplayName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUnknownRecord

- (id)fallbackDisplayString
{
  displayName = [(HKUnknownRecord *)self displayName];
  v3 = displayName;
  if (displayName)
  {
    defaultDisplayString = displayName;
  }

  else
  {
    defaultDisplayString = [objc_opt_class() defaultDisplayString];
  }

  v5 = defaultDisplayString;

  return v5;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_UNKNOWN_RECORD" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)_newUnknownRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 displayName:(id)self5 config:(id)self6
{
  errorCopy = error;
  nameCopy = name;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __178__HKUnknownRecord__newUnknownRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_displayName_config___block_invoke;
  aBlock[3] = &unk_1E7379AD0;
  v41 = nameCopy;
  v42 = configCopy;
  v38 = configCopy;
  v37 = nameCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v31 = _Block_copy(aBlock);
  v39.receiver = self;
  v39.super_class = &OBJC_METACLASS___HKUnknownRecord;
  v36 = objc_msgSendSuper2(&v39, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v31);

  return v36;
}

void __178__HKUnknownRecord__newUnknownRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_displayName_config___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v6[22];
  v6[22] = v3;

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (HKUnknownRecord)init
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
  v9.super_class = HKUnknownRecord;
  v6 = [(HKSample *)&v9 description];
  v7 = [v3 stringWithFormat:@"<%@:%p super=%@displayName = %@>", v5, self, v6, self->_displayName];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKUnknownRecord;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_displayName forKey:{@"DisplayName", v5.receiver, v5.super_class}];
}

- (HKUnknownRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKUnknownRecord;
  v5 = [(HKMedicalRecord *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;
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
    v16.receiver = self;
    v16.super_class = HKUnknownRecord;
    if ([(HKMedicalRecord *)&v16 isEquivalent:v5])
    {
      displayName = [(HKUnknownRecord *)self displayName];
      displayName2 = [v5 displayName];
      v8 = displayName2;
      if (displayName == displayName2)
      {

        goto LABEL_9;
      }

      displayName3 = [v5 displayName];
      if (displayName3)
      {
        v10 = displayName3;
        displayName4 = [(HKUnknownRecord *)self displayName];
        displayName5 = [v5 displayName];
        v13 = [displayName4 isEqualToString:displayName5];

        if ((v13 & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_9:
        v14 = 1;
LABEL_12:

        goto LABEL_13;
      }
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)_setDisplayName:(id)name
{
  v4 = [name copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8](v4, displayName);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v7.receiver = self;
  v7.super_class = HKUnknownRecord;
  v3 = [(HKMedicalRecord *)&v7 _validateWithConfiguration:configuration.var0, configuration.var1];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

+ (id)unknownRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 displayName:(id)self4
{
  errorCopy = error;
  dateCopy = date;
  nameCopy = name;
  countryCopy = country;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  noteCopy = note;
  typeCopy = type;
  v30 = dateCopy;
  v27 = [HKSemanticDate semanticDateWithKeyPath:@"modifiedDate" date:dateCopy];
  v28 = [HKUnknownRecord unknownRecordWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:dateCopy originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v27 country:countryCopy state:state displayName:nameCopy];

  return v28;
}

@end