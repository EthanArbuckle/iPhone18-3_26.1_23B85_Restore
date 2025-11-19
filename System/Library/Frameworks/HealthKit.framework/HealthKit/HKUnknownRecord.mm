@interface HKUnknownRecord
+ (id)_newUnknownRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 displayName:(id)a15 config:(id)a16;
+ (id)defaultDisplayString;
+ (id)unknownRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 displayName:(id)a14;
- (BOOL)isEquivalent:(id)a3;
- (HKUnknownRecord)init;
- (HKUnknownRecord)initWithCoder:(id)a3;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)description;
- (id)fallbackDisplayString;
- (void)_setDisplayName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKUnknownRecord

- (id)fallbackDisplayString
{
  v2 = [(HKUnknownRecord *)self displayName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [objc_opt_class() defaultDisplayString];
  }

  v5 = v4;

  return v5;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_UNKNOWN_RECORD" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)_newUnknownRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 displayName:(id)a15 config:(id)a16
{
  v35 = a5;
  v20 = a15;
  v21 = a16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __178__HKUnknownRecord__newUnknownRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_displayName_config___block_invoke;
  aBlock[3] = &unk_1E7379AD0;
  v41 = v20;
  v42 = v21;
  v38 = v21;
  v37 = v20;
  v22 = a13;
  v23 = a12;
  v24 = a11;
  v25 = a10;
  v26 = a8;
  v27 = a7;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v31 = _Block_copy(aBlock);
  v39.receiver = a1;
  v39.super_class = &OBJC_METACLASS___HKUnknownRecord;
  v36 = objc_msgSendSuper2(&v39, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v30, v29, v35, v28, v27, v26, a9, v25, v24, v23, v22, a14, v31);

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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUnknownRecord;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_displayName forKey:{@"DisplayName", v5.receiver, v5.super_class}];
}

- (HKUnknownRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKUnknownRecord;
  v5 = [(HKMedicalRecord *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;
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
    v16.receiver = self;
    v16.super_class = HKUnknownRecord;
    if ([(HKMedicalRecord *)&v16 isEquivalent:v5])
    {
      v6 = [(HKUnknownRecord *)self displayName];
      v7 = [v5 displayName];
      v8 = v7;
      if (v6 == v7)
      {

        goto LABEL_9;
      }

      v9 = [v5 displayName];
      if (v9)
      {
        v10 = v9;
        v11 = [(HKUnknownRecord *)self displayName];
        v12 = [v5 displayName];
        v13 = [v11 isEqualToString:v12];

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

- (void)_setDisplayName:(id)a3
{
  v4 = [a3 copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8](v4, displayName);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v7.receiver = self;
  v7.super_class = HKUnknownRecord;
  v3 = [(HKMedicalRecord *)&v7 _validateWithConfiguration:a3.var0, a3.var1];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

+ (id)unknownRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 displayName:(id)a14
{
  v31 = a5;
  v18 = a6;
  v19 = a14;
  v20 = a12;
  v21 = a11;
  v22 = a10;
  v23 = a8;
  v24 = a7;
  v25 = a4;
  v26 = a3;
  v30 = v18;
  v27 = [HKSemanticDate semanticDateWithKeyPath:@"modifiedDate" date:v18];
  v28 = [HKUnknownRecord unknownRecordWithType:v26 note:v25 enteredInError:v31 modifiedDate:v18 originIdentifier:v24 locale:v23 extractionVersion:a9 device:v22 metadata:v21 sortDate:v27 country:v20 state:a13 displayName:v19];

  return v28;
}

@end