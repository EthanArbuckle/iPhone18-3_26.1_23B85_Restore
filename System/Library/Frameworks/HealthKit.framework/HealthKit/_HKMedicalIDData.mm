@interface _HKMedicalIDData
- (BOOL)hasAnyData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSyncedData:(id)a3;
- (NSDate)dateSaved;
- (NSDateComponents)gregorianBirthday;
- (_HKMedicalIDData)init;
- (_HKMedicalIDData)initWithCoder:(id)a3;
- (id)_gregorianUtcCalendar;
- (id)consolidatedSOSContactsWithSOSContactsManager:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)merge:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setGregorianBirthday:(id)a3;
- (void)setModificationDatesForUpdatedFieldsWithMedicalIDData:(id)a3;
- (void)setModificationDatesToCurrentDate;
@end

@implementation _HKMedicalIDData

- (_HKMedicalIDData)init
{
  v5.receiver = self;
  v5.super_class = _HKMedicalIDData;
  v2 = [(_HKMedicalIDData *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_HKMedicalIDData *)v2 setSchemaVersion:4];
  }

  return v3;
}

- (_HKMedicalIDData)initWithCoder:(id)a3
{
  v4 = a3;
  v69.receiver = self;
  v69.super_class = _HKMedicalIDData;
  v5 = [(_HKMedicalIDData *)&v69 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataDateSavedKey"];
    [(_HKMedicalIDData *)v5 setDateSaved:v6];

    -[_HKMedicalIDData setSchemaVersion:](v5, "setSchemaVersion:", [v4 decodeIntegerForKey:@"HKMedicalIDDataSchemaVersionKey"]);
    -[_HKMedicalIDData setIsDisabled:](v5, "setIsDisabled:", [v4 decodeBoolForKey:@"HKMedicalIDDataIsDisabledKey"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataIsDisabledModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setIsDisabledModifiedDate:v7];

    -[_HKMedicalIDData setShareDuringEmergency:](v5, "setShareDuringEmergency:", [v4 decodeBoolForKey:@"HKMedicalIDDataShareDuringEmergencyKey"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataShareDuringEmergencyModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setShareDuringEmergencyModifiedDate:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPictureDataKey"];
    [(_HKMedicalIDData *)v5 setPictureData:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPictureDataModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setPictureDataModifiedDate:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataNameKey"];
    [(_HKMedicalIDData *)v5 setName:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataNameModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setNameModifiedDate:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataBirthdateKey"];
    [(_HKMedicalIDData *)v5 setBirthdate:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataGmtBirthdateKey"];
    [(_HKMedicalIDData *)v5 setGmtBirthdate:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataGregorianBirthdateModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setGregorianBirthdayModifiedDate:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPrimaryLanguageCodeKey"];
    [(_HKMedicalIDData *)v5 setPrimaryLanguageCode:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPrimaryLanguageCodeModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setPrimaryLanguageCodeModifiedDate:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataHeightKey"];
    [(_HKMedicalIDData *)v5 setHeight:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataHeightModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setHeightModifiedDate:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataWeightKey"];
    [(_HKMedicalIDData *)v5 setWeight:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataWeightModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setWeightModifiedDate:v21];

    -[_HKMedicalIDData setBloodType:](v5, "setBloodType:", [v4 decodeIntegerForKey:@"HKMedicalIDDataBloodTypeKey"]);
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataBloodTypeModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setBloodTypeModifiedDate:v22];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataIsOrganDonorKey"];
    [(_HKMedicalIDData *)v5 setIsOrganDonor:v23];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataIsOrganDonorModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setIsOrganDonorModifiedDate:v24];

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"HKMedicalIDDataEmergencyContactsKey"];
    [(_HKMedicalIDData *)v5 setEmergencyContacts:v28];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataEmergencyContactsModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setEmergencyContactsModifiedDate:v29];

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"HKMedicalIDDataClinicalContactsKey"];
    [(_HKMedicalIDData *)v5 setClinicalContacts:v33];

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataClinicalContactsModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setClinicalContactsModifiedDate:v34];

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicalConditionsKey"];
    [(_HKMedicalIDData *)v5 setMedicalConditions:v35];

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicalConditionsModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setMedicalConditionsModifiedDate:v36];

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicalNotesKey"];
    [(_HKMedicalIDData *)v5 setMedicalNotes:v37];

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicalNotesModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setMedicalNotesModifiedDate:v38];

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataAllergyInfoKey"];
    [(_HKMedicalIDData *)v5 setAllergyInfo:v39];

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataAllergyInfoModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setAllergyInfoModifiedDate:v40];

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicationInfoKey"];
    [(_HKMedicalIDData *)v5 setMedicationInfo:v41];

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicationInfoModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setMedicationInfoModifiedDate:v42];

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPregnancyStartDateKey"];
    [(_HKMedicalIDData *)v5 setPregnancyStartDate:v43];

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPregnancyStartDateModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setPregnancyStartDateModifiedDate:v44];

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPregnancyEstimatedDueDateKey"];
    [(_HKMedicalIDData *)v5 setPregnancyEstimatedDueDate:v45];

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPregnancyEstimatedDueDateModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setPregnancyEstimatedDueDateModifiedDate:v46];

    v47 = MEMORY[0x1E695DFD8];
    v48 = objc_opt_class();
    v49 = [v47 setWithObjects:{v48, objc_opt_class(), 0}];
    v50 = [v4 decodeObjectOfClasses:v49 forKey:@"HKMedicalIDDataMedicationsListKey"];
    [(_HKMedicalIDData *)v5 setMedicationsList:v50];

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicationsListModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setMedicationsListModifiedDate:v51];

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicationsListVersionKey"];
    [(_HKMedicalIDData *)v5 setMedicationsListVersion:v52];

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicationsListVersionModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setMedicationsListVersionModifiedDate:v53];

    v54 = MEMORY[0x1E695DFD8];
    v55 = objc_opt_class();
    v56 = [v54 setWithObjects:{v55, objc_opt_class(), 0}];
    v57 = [v4 decodeObjectOfClasses:v56 forKey:@"HKMedicalIDDataAllergiesListKey"];
    [(_HKMedicalIDData *)v5 setAllergiesList:v57];

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataAllergiesListModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setAllergiesListModifiedDate:v58];

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataAllergiesListVersionKey"];
    [(_HKMedicalIDData *)v5 setAllergiesListVersion:v59];

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataAllergiesListVersionModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setAllergiesListVersionModifiedDate:v60];

    v61 = MEMORY[0x1E695DFD8];
    v62 = objc_opt_class();
    v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
    v64 = [v4 decodeObjectOfClasses:v63 forKey:@"HKMedicalIDDataConditionsListKey"];
    [(_HKMedicalIDData *)v5 setConditionsList:v64];

    v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataConditionsListModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setConditionsListModifiedDate:v65];

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataConditionsListVersionKey"];
    [(_HKMedicalIDData *)v5 setConditionsListVersion:v66];

    v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataConditionsListVersionModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setConditionsListVersionModifiedDate:v67];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_HKMedicalIDData *)self dateSaved];
  [v4 encodeObject:v5 forKey:@"HKMedicalIDDataDateSavedKey"];

  [v4 encodeInteger:-[_HKMedicalIDData schemaVersion](self forKey:{"schemaVersion"), @"HKMedicalIDDataSchemaVersionKey"}];
  [v4 encodeBool:-[_HKMedicalIDData isDisabled](self forKey:{"isDisabled"), @"HKMedicalIDDataIsDisabledKey"}];
  v6 = [(_HKMedicalIDData *)self isDisabledModifiedDate];
  [v4 encodeObject:v6 forKey:@"HKMedicalIDDataIsDisabledModifiedDateKey"];

  [v4 encodeBool:-[_HKMedicalIDData shareDuringEmergency](self forKey:{"shareDuringEmergency"), @"HKMedicalIDDataShareDuringEmergencyKey"}];
  v7 = [(_HKMedicalIDData *)self shareDuringEmergencyModifiedDate];
  [v4 encodeObject:v7 forKey:@"HKMedicalIDDataShareDuringEmergencyModifiedDateKey"];

  v8 = [(_HKMedicalIDData *)self pictureData];
  [v4 encodeObject:v8 forKey:@"HKMedicalIDDataPictureDataKey"];

  v9 = [(_HKMedicalIDData *)self pictureDataModifiedDate];
  [v4 encodeObject:v9 forKey:@"HKMedicalIDDataPictureDataModifiedDateKey"];

  v10 = [(_HKMedicalIDData *)self name];
  [v4 encodeObject:v10 forKey:@"HKMedicalIDDataNameKey"];

  v11 = [(_HKMedicalIDData *)self nameModifiedDate];
  [v4 encodeObject:v11 forKey:@"HKMedicalIDDataNameModifiedDateKey"];

  v12 = [(_HKMedicalIDData *)self birthdate];
  [v4 encodeObject:v12 forKey:@"HKMedicalIDDataBirthdateKey"];

  v13 = [(_HKMedicalIDData *)self gmtBirthdate];
  [v4 encodeObject:v13 forKey:@"HKMedicalIDDataGmtBirthdateKey"];

  v14 = [(_HKMedicalIDData *)self gregorianBirthday];
  [v4 encodeObject:v14 forKey:@"HKMedicalIDDataGregorianBirthdateKey"];

  v15 = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];
  [v4 encodeObject:v15 forKey:@"HKMedicalIDDataGregorianBirthdateModifiedDateKey"];

  v16 = [(_HKMedicalIDData *)self primaryLanguageCode];
  [v4 encodeObject:v16 forKey:@"HKMedicalIDDataPrimaryLanguageCodeKey"];

  v17 = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];
  [v4 encodeObject:v17 forKey:@"HKMedicalIDDataPrimaryLanguageCodeModifiedDateKey"];

  v18 = [(_HKMedicalIDData *)self height];
  [v4 encodeObject:v18 forKey:@"HKMedicalIDDataHeightKey"];

  v19 = [(_HKMedicalIDData *)self heightModifiedDate];
  [v4 encodeObject:v19 forKey:@"HKMedicalIDDataHeightModifiedDateKey"];

  v20 = [(_HKMedicalIDData *)self weight];
  [v4 encodeObject:v20 forKey:@"HKMedicalIDDataWeightKey"];

  v21 = [(_HKMedicalIDData *)self weightModifiedDate];
  [v4 encodeObject:v21 forKey:@"HKMedicalIDDataWeightModifiedDateKey"];

  [v4 encodeInteger:-[_HKMedicalIDData bloodType](self forKey:{"bloodType"), @"HKMedicalIDDataBloodTypeKey"}];
  v22 = [(_HKMedicalIDData *)self bloodTypeModifiedDate];
  [v4 encodeObject:v22 forKey:@"HKMedicalIDDataBloodTypeModifiedDateKey"];

  v23 = [(_HKMedicalIDData *)self isOrganDonor];
  [v4 encodeObject:v23 forKey:@"HKMedicalIDDataIsOrganDonorKey"];

  v24 = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];
  [v4 encodeObject:v24 forKey:@"HKMedicalIDDataIsOrganDonorModifiedDateKey"];

  v25 = [(_HKMedicalIDData *)self emergencyContacts];
  [v4 encodeObject:v25 forKey:@"HKMedicalIDDataEmergencyContactsKey"];

  v26 = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];
  [v4 encodeObject:v26 forKey:@"HKMedicalIDDataEmergencyContactsModifiedDateKey"];

  v27 = [(_HKMedicalIDData *)self clinicalContacts];
  [v4 encodeObject:v27 forKey:@"HKMedicalIDDataClinicalContactsKey"];

  v28 = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];
  [v4 encodeObject:v28 forKey:@"HKMedicalIDDataClinicalContactsModifiedDateKey"];

  v29 = [(_HKMedicalIDData *)self medicalConditions];
  [v4 encodeObject:v29 forKey:@"HKMedicalIDDataMedicalConditionsKey"];

  v30 = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];
  [v4 encodeObject:v30 forKey:@"HKMedicalIDDataMedicalConditionsModifiedDateKey"];

  v31 = [(_HKMedicalIDData *)self medicalNotes];
  [v4 encodeObject:v31 forKey:@"HKMedicalIDDataMedicalNotesKey"];

  v32 = [(_HKMedicalIDData *)self medicalNotesModifiedDate];
  [v4 encodeObject:v32 forKey:@"HKMedicalIDDataMedicalNotesModifiedDateKey"];

  v33 = [(_HKMedicalIDData *)self allergyInfo];
  [v4 encodeObject:v33 forKey:@"HKMedicalIDDataAllergyInfoKey"];

  v34 = [(_HKMedicalIDData *)self allergyInfoModifiedDate];
  [v4 encodeObject:v34 forKey:@"HKMedicalIDDataAllergyInfoModifiedDateKey"];

  v35 = [(_HKMedicalIDData *)self medicationInfo];
  [v4 encodeObject:v35 forKey:@"HKMedicalIDDataMedicationInfoKey"];

  v36 = [(_HKMedicalIDData *)self medicationInfoModifiedDate];
  [v4 encodeObject:v36 forKey:@"HKMedicalIDDataMedicationInfoModifiedDateKey"];

  v37 = [(_HKMedicalIDData *)self pregnancyStartDate];
  [v4 encodeObject:v37 forKey:@"HKMedicalIDDataPregnancyStartDateKey"];

  v38 = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];
  [v4 encodeObject:v38 forKey:@"HKMedicalIDDataPregnancyStartDateModifiedDateKey"];

  v39 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
  [v4 encodeObject:v39 forKey:@"HKMedicalIDDataPregnancyEstimatedDueDateKey"];

  v40 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];
  [v4 encodeObject:v40 forKey:@"HKMedicalIDDataPregnancyEstimatedDueDateModifiedDateKey"];

  v41 = [(_HKMedicalIDData *)self medicationsList];
  [v4 encodeObject:v41 forKey:@"HKMedicalIDDataMedicationsListKey"];

  v42 = [(_HKMedicalIDData *)self medicationsListModifiedDate];
  [v4 encodeObject:v42 forKey:@"HKMedicalIDDataMedicationsListModifiedDateKey"];

  v43 = [(_HKMedicalIDData *)self medicationsListVersion];
  [v4 encodeObject:v43 forKey:@"HKMedicalIDDataMedicationsListVersionKey"];

  v44 = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];
  [v4 encodeObject:v44 forKey:@"HKMedicalIDDataMedicationsListVersionModifiedDateKey"];

  v45 = [(_HKMedicalIDData *)self allergiesList];
  [v4 encodeObject:v45 forKey:@"HKMedicalIDDataAllergiesListKey"];

  v46 = [(_HKMedicalIDData *)self allergiesListModifiedDate];
  [v4 encodeObject:v46 forKey:@"HKMedicalIDDataAllergiesListModifiedDateKey"];

  v47 = [(_HKMedicalIDData *)self allergiesListVersion];
  [v4 encodeObject:v47 forKey:@"HKMedicalIDDataAllergiesListVersionKey"];

  v48 = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];
  [v4 encodeObject:v48 forKey:@"HKMedicalIDDataAllergiesListVersionModifiedDateKey"];

  v49 = [(_HKMedicalIDData *)self conditionsList];
  [v4 encodeObject:v49 forKey:@"HKMedicalIDDataConditionsListKey"];

  v50 = [(_HKMedicalIDData *)self conditionsListModifiedDate];
  [v4 encodeObject:v50 forKey:@"HKMedicalIDDataConditionsListModifiedDateKey"];

  v51 = [(_HKMedicalIDData *)self conditionsListVersion];
  [v4 encodeObject:v51 forKey:@"HKMedicalIDDataConditionsListVersionKey"];

  v52 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
  [v4 encodeObject:v52 forKey:@"HKMedicalIDDataConditionsListVersionModifiedDateKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_HKMedicalIDData allocWithZone:?]];
  v5 = [(_HKMedicalIDData *)self dateSaved];
  v6 = [v5 copy];
  [(_HKMedicalIDData *)v4 setDateSaved:v6];

  [(_HKMedicalIDData *)v4 setSchemaVersion:[(_HKMedicalIDData *)self schemaVersion]];
  [(_HKMedicalIDData *)v4 setIsDisabled:[(_HKMedicalIDData *)self isDisabled]];
  v7 = [(_HKMedicalIDData *)self isDisabledModifiedDate];
  v8 = [v7 copy];
  [(_HKMedicalIDData *)v4 setIsDisabledModifiedDate:v8];

  [(_HKMedicalIDData *)v4 setShareDuringEmergency:[(_HKMedicalIDData *)self shareDuringEmergency]];
  v9 = [(_HKMedicalIDData *)self shareDuringEmergencyModifiedDate];
  v10 = [v9 copy];
  [(_HKMedicalIDData *)v4 setShareDuringEmergencyModifiedDate:v10];

  v11 = [(_HKMedicalIDData *)self pictureData];
  v12 = [v11 copy];
  [(_HKMedicalIDData *)v4 setPictureData:v12];

  v13 = [(_HKMedicalIDData *)self pictureDataModifiedDate];
  v14 = [v13 copy];
  [(_HKMedicalIDData *)v4 setPictureDataModifiedDate:v14];

  v15 = [(_HKMedicalIDData *)self name];
  v16 = [v15 copy];
  [(_HKMedicalIDData *)v4 setName:v16];

  v17 = [(_HKMedicalIDData *)self nameModifiedDate];
  v18 = [v17 copy];
  [(_HKMedicalIDData *)v4 setNameModifiedDate:v18];

  v19 = [(_HKMedicalIDData *)self birthdate];
  v20 = [v19 copy];
  [(_HKMedicalIDData *)v4 setBirthdate:v20];

  v21 = [(_HKMedicalIDData *)self gmtBirthdate];
  v22 = [v21 copy];
  [(_HKMedicalIDData *)v4 setGmtBirthdate:v22];

  v23 = [(_HKMedicalIDData *)self gregorianBirthday];
  v24 = [v23 copy];
  [(_HKMedicalIDData *)v4 setGregorianBirthday:v24];

  v25 = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];
  v26 = [v25 copy];
  [(_HKMedicalIDData *)v4 setGregorianBirthdayModifiedDate:v26];

  v27 = [(_HKMedicalIDData *)self primaryLanguageCode];
  v28 = [v27 copy];
  [(_HKMedicalIDData *)v4 setPrimaryLanguageCode:v28];

  v29 = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];
  v30 = [v29 copy];
  [(_HKMedicalIDData *)v4 setPrimaryLanguageCodeModifiedDate:v30];

  v31 = [(_HKMedicalIDData *)self height];
  v32 = [v31 copy];
  [(_HKMedicalIDData *)v4 setHeight:v32];

  v33 = [(_HKMedicalIDData *)self heightModifiedDate];
  v34 = [v33 copy];
  [(_HKMedicalIDData *)v4 setHeightModifiedDate:v34];

  v35 = [(_HKMedicalIDData *)self weight];
  v36 = [v35 copy];
  [(_HKMedicalIDData *)v4 setWeight:v36];

  v37 = [(_HKMedicalIDData *)self weightModifiedDate];
  v38 = [v37 copy];
  [(_HKMedicalIDData *)v4 setWeightModifiedDate:v38];

  [(_HKMedicalIDData *)v4 setBloodType:[(_HKMedicalIDData *)self bloodType]];
  v39 = [(_HKMedicalIDData *)self bloodTypeModifiedDate];
  v40 = [v39 copy];
  [(_HKMedicalIDData *)v4 setBloodTypeModifiedDate:v40];

  v41 = [(_HKMedicalIDData *)self isOrganDonor];
  v42 = [v41 copy];
  [(_HKMedicalIDData *)v4 setIsOrganDonor:v42];

  v43 = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];
  v44 = [v43 copy];
  [(_HKMedicalIDData *)v4 setIsOrganDonorModifiedDate:v44];

  v45 = [(_HKMedicalIDData *)self emergencyContacts];
  v46 = [v45 copy];
  [(_HKMedicalIDData *)v4 setEmergencyContacts:v46];

  v47 = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];
  v48 = [v47 copy];
  [(_HKMedicalIDData *)v4 setEmergencyContactsModifiedDate:v48];

  v49 = [(_HKMedicalIDData *)self clinicalContacts];
  v50 = [v49 copy];
  [(_HKMedicalIDData *)v4 setClinicalContacts:v50];

  v51 = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];
  v52 = [v51 copy];
  [(_HKMedicalIDData *)v4 setClinicalContactsModifiedDate:v52];

  v53 = [(_HKMedicalIDData *)self medicalConditions];
  v54 = [v53 copy];
  [(_HKMedicalIDData *)v4 setMedicalConditions:v54];

  v55 = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];
  v56 = [v55 copy];
  [(_HKMedicalIDData *)v4 setMedicalConditionsModifiedDate:v56];

  v57 = [(_HKMedicalIDData *)self medicalNotes];
  v58 = [v57 copy];
  [(_HKMedicalIDData *)v4 setMedicalNotes:v58];

  v59 = [(_HKMedicalIDData *)self medicalNotesModifiedDate];
  v60 = [v59 copy];
  [(_HKMedicalIDData *)v4 setMedicalNotesModifiedDate:v60];

  v61 = [(_HKMedicalIDData *)self allergyInfo];
  v62 = [v61 copy];
  [(_HKMedicalIDData *)v4 setAllergyInfo:v62];

  v63 = [(_HKMedicalIDData *)self allergyInfoModifiedDate];
  v64 = [v63 copy];
  [(_HKMedicalIDData *)v4 setAllergyInfoModifiedDate:v64];

  v65 = [(_HKMedicalIDData *)self medicationInfo];
  v66 = [v65 copy];
  [(_HKMedicalIDData *)v4 setMedicationInfo:v66];

  v67 = [(_HKMedicalIDData *)self medicationInfoModifiedDate];
  v68 = [v67 copy];
  [(_HKMedicalIDData *)v4 setMedicationInfoModifiedDate:v68];

  v69 = [(_HKMedicalIDData *)self pregnancyStartDate];
  v70 = [v69 copy];
  [(_HKMedicalIDData *)v4 setPregnancyStartDate:v70];

  v71 = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];
  v72 = [v71 copy];
  [(_HKMedicalIDData *)v4 setPregnancyStartDateModifiedDate:v72];

  v73 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
  v74 = [v73 copy];
  [(_HKMedicalIDData *)v4 setPregnancyEstimatedDueDate:v74];

  v75 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];
  v76 = [v75 copy];
  [(_HKMedicalIDData *)v4 setPregnancyEstimatedDueDateModifiedDate:v76];

  v77 = [(_HKMedicalIDData *)self medicationsList];
  v78 = [v77 copy];
  [(_HKMedicalIDData *)v4 setMedicationsList:v78];

  v79 = [(_HKMedicalIDData *)self medicationsListModifiedDate];
  v80 = [v79 copy];
  [(_HKMedicalIDData *)v4 setMedicationsListModifiedDate:v80];

  v81 = [(_HKMedicalIDData *)self medicationsListVersion];
  v82 = [v81 copy];
  [(_HKMedicalIDData *)v4 setMedicationsListVersion:v82];

  v83 = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];
  v84 = [v83 copy];
  [(_HKMedicalIDData *)v4 setMedicationsListVersionModifiedDate:v84];

  v85 = [(_HKMedicalIDData *)self allergiesList];
  v86 = [v85 copy];
  [(_HKMedicalIDData *)v4 setAllergiesList:v86];

  v87 = [(_HKMedicalIDData *)self allergiesListModifiedDate];
  v88 = [v87 copy];
  [(_HKMedicalIDData *)v4 setAllergiesListModifiedDate:v88];

  v89 = [(_HKMedicalIDData *)self allergiesListVersion];
  v90 = [v89 copy];
  [(_HKMedicalIDData *)v4 setAllergiesListVersion:v90];

  v91 = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];
  v92 = [v91 copy];
  [(_HKMedicalIDData *)v4 setAllergiesListVersionModifiedDate:v92];

  v93 = [(_HKMedicalIDData *)self conditionsList];
  v94 = [v93 copy];
  [(_HKMedicalIDData *)v4 setConditionsList:v94];

  v95 = [(_HKMedicalIDData *)self conditionsListModifiedDate];
  v96 = [v95 copy];
  [(_HKMedicalIDData *)v4 setConditionsListModifiedDate:v96];

  v97 = [(_HKMedicalIDData *)self conditionsListVersion];
  v98 = [v97 copy];
  [(_HKMedicalIDData *)v4 setConditionsListVersion:v98];

  v99 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
  v100 = [v99 copy];
  [(_HKMedicalIDData *)v4 setConditionsListVersionModifiedDate:v100];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_241;
  }

  v9 = [(_HKMedicalIDData *)self pictureData];
  v10 = [v8 pictureData];
  if (v9 != v10)
  {
    v11 = [v8 pictureData];
    if (!v11)
    {
      v197 = 0;
      v232 = 0;
      memset(v242, 0, sizeof(v242));
      memset(v228, 0, sizeof(v228));
      v252 = 0;
      v227 = 0;
      v256 = 0;
      v221 = 0;
      v225 = 0;
      v255 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v231 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_90;
    }

    v197 = v11;
    v12 = [(_HKMedicalIDData *)self pictureData];
    [v8 pictureData];
    v193 = v194 = v12;
    if (![v12 isEqual:?])
    {
      v232 = 0;
      memset(v242, 0, sizeof(v242));
      v252 = 0;
      v227 = 0;
      memset(v228, 0, 28);
      v256 = 0;
      v221 = 0;
      v225 = 0;
      v255 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v231 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v228[3]) = 1;
      goto LABEL_90;
    }
  }

  v17 = [(_HKMedicalIDData *)self name];
  [v8 name];
  v195 = v196 = v17;
  v3 = v17 != v195;
  HIDWORD(v228[3]) = v9 != v10;
  if (v17 != v195)
  {
    v18 = [v8 name];
    if (!v18)
    {
      v192 = 0;
      *v242 = 0;
      v252 = 0;
      v227 = 0;
      memset(v228, 0, 28);
      v256 = 0;
      v221 = 0;
      v225 = 0;
      v255 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      *&v242[8] = 1;
      goto LABEL_90;
    }

    v192 = v18;
    v19 = [(_HKMedicalIDData *)self name];
    [v8 name];
    v188 = v189 = v19;
    if (![v19 isEqualToString:?])
    {
      *v242 = 0;
      v252 = 0;
      v227 = 0;
      memset(v228, 0, 20);
      v256 = 0;
      v221 = 0;
      v225 = 0;
      v255 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      *&v242[8] = 1;
      *(&v228[2] + 4) = 1;
      goto LABEL_90;
    }
  }

  v20 = [(_HKMedicalIDData *)self birthdate];
  v190 = [v8 birthdate];
  v4 = v20 != v190;
  *&v242[8] = v3;
  v191 = v20;
  if (v20 != v190)
  {
    v21 = [v8 birthdate];
    if (!v21)
    {
      v187 = 0;
      *v242 = 0x100000000;
      v252 = 0;
      v227 = 0;
      memset(v228, 0, 20);
      v256 = 0;
      v221 = 0;
      v225 = 0;
      v255 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      goto LABEL_90;
    }

    v187 = v21;
    v22 = [(_HKMedicalIDData *)self birthdate];
    [v8 birthdate];
    v183 = v184 = v22;
    if (![v22 isEqual:?])
    {
      *v242 = 0x100000000;
      *(v228 + 4) = 0;
      v252 = 0;
      v227 = 0;
      LODWORD(v228[0]) = 0;
      v256 = 0;
      v221 = 0;
      v225 = 0;
      v255 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      *(&v228[1] + 4) = 1;
      goto LABEL_90;
    }
  }

  v23 = [(_HKMedicalIDData *)self gmtBirthdate];
  v185 = [v8 gmtBirthdate];
  v5 = v23 != v185;
  *&v242[4] = v4;
  v186 = v23;
  if (v23 != v185)
  {
    v24 = [v8 gmtBirthdate];
    if (!v24)
    {
      v182 = 0;
      *(v228 + 4) = 0;
      v252 = 0;
      v227 = 0;
      LODWORD(v228[0]) = 0;
      v256 = 0;
      v221 = 0;
      v225 = 0;
      v255 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      *v242 = 1;
      goto LABEL_90;
    }

    v182 = v24;
    v25 = [(_HKMedicalIDData *)self gmtBirthdate];
    [v8 gmtBirthdate];
    v178 = v179 = v25;
    if (![v25 isEqual:?])
    {
      LODWORD(v228[1]) = 0;
      v252 = 0;
      v227 = 0;
      v228[0] = 0x100000000;
      v256 = 0;
      v221 = 0;
      v225 = 0;
      v255 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      *v242 = 1;
      goto LABEL_90;
    }
  }

  v26 = [(_HKMedicalIDData *)self primaryLanguageCode];
  v180 = [v8 primaryLanguageCode];
  v6 = v26 != v180;
  *v242 = v5;
  v181 = v26;
  if (v26 != v180)
  {
    v27 = [v8 primaryLanguageCode];
    if (!v27)
    {
      v177 = 0;
      v227 = 0;
      LODWORD(v228[0]) = 0;
      v256 = 0;
      v221 = 0;
      v225 = 0;
      v255 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      v252 = 1;
      goto LABEL_90;
    }

    v177 = v27;
    v28 = [(_HKMedicalIDData *)self primaryLanguageCode];
    [v8 primaryLanguageCode];
    v173 = v174 = v28;
    if (![v28 isEqualToString:?])
    {
      LODWORD(v228[0]) = 0;
      v256 = 0;
      v221 = 0;
      v225 = 0;
      v255 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      v252 = 1;
      v227 = 1;
      goto LABEL_90;
    }
  }

  v29 = [(_HKMedicalIDData *)self height];
  v30 = [v8 height];
  v31 = v29;
  v175 = v30;
  v32 = v29 == v30;
  v33 = v29 != v30;
  v252 = v6;
  v176 = v31;
  if (v32)
  {
    v256 = v33;
  }

  else
  {
    v34 = [v8 height];
    if (!v34)
    {
      v172 = 0;
      v221 = 0;
      v225 = 0;
      v255 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v227 = v6;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      LODWORD(v228[0]) = 1;
      v256 = 1;
      goto LABEL_90;
    }

    v256 = v33;
    v172 = v34;
    v35 = [(_HKMedicalIDData *)self height];
    [v8 height];
    v168 = v169 = v35;
    if (![v35 isEqual:?])
    {
      v225 = 0;
      v255 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v227 = v6;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      LODWORD(v228[0]) = 1;
      v256 = 1;
      v221 = 1;
      goto LABEL_90;
    }
  }

  v36 = [(_HKMedicalIDData *)self weight];
  v170 = [v8 weight];
  v255 = v36 != v170;
  v171 = v36;
  if (v36 != v170)
  {
    v37 = [v8 weight];
    if (!v37)
    {
      v167 = 0;
      v213 = 0;
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v227 = v6;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v255 = 1;
      goto LABEL_90;
    }

    v167 = v37;
    v38 = [(_HKMedicalIDData *)self weight];
    [v8 weight];
    v163 = v164 = v38;
    if (![v38 isEqual:?])
    {
      v220 = 0;
      v254 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v227 = v6;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v255 = 1;
      v213 = 1;
      goto LABEL_90;
    }
  }

  v39 = [(_HKMedicalIDData *)self isOrganDonor];
  v165 = [v8 isOrganDonor];
  v254 = v39 != v165;
  v166 = v39;
  if (v39 != v165)
  {
    v40 = [v8 isOrganDonor];
    if (!v40)
    {
      v162 = 0;
      v209 = 0;
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v227 = v6;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v254 = 1;
      goto LABEL_90;
    }

    v162 = v40;
    v41 = [(_HKMedicalIDData *)self isOrganDonor];
    [v8 isOrganDonor];
    v158 = v159 = v41;
    if (![v41 isEqual:?])
    {
      v215 = 0;
      v250 = 0;
      v247 = 0;
      v253 = 0;
      v207 = 0;
      v249 = 0;
      v245 = 0;
      v251 = 0;
      v202 = 0;
      v206 = 0;
      v243 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v227 = v6;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v254 = 1;
      v209 = 1;
      goto LABEL_90;
    }
  }

  v42 = [(_HKMedicalIDData *)self emergencyContacts];
  v160 = [v8 emergencyContacts];
  v250 = v42 != v160;
  v161 = v42;
  if (v42 == v160)
  {
    v247 = 0;
    v253 = 0;
  }

  else
  {
    v43 = [v8 emergencyContacts];
    v247 = v43 != 0;
    v155 = v43;
    if (v43 && (-[_HKMedicalIDData emergencyContacts](self, "emergencyContacts"), v44 = objc_claimAutoreleasedReturnValue(), [v8 emergencyContacts], v150 = v44, v149 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v44, "isEqual:") & 1) != 0))
    {
      v253 = 0;
      v247 = 1;
    }

    else
    {
      v154 = [(_HKMedicalIDData *)self emergencyContacts];
      if ([v154 count])
      {
        v207 = 0;
        v249 = 0;
        v245 = 0;
        v251 = 0;
        v202 = 0;
        v206 = 0;
        v243 = 0;
        v201 = 0;
        v205 = 0;
        v248 = 0;
        v199 = 0;
        v203 = 0;
        v246 = 0;
        v200 = 0;
        v204 = 0;
        v244 = 0;
        v198 = 0;
        v212 = 0;
        v241 = 0;
        v208 = 0;
        v214 = 0;
        v240 = 0;
        v211 = 0;
        v219 = 0;
        v237 = 0;
        v234 = 0;
        v239 = 0;
        v210 = 0;
        v218 = 0;
        v238 = 0;
        v216 = 0;
        v222 = 0;
        v233 = 0;
        v230 = 0;
        v236 = 0;
        v217 = 0;
        v223 = 0;
        v235 = 0;
        v224 = 0;
        v227 = v6;
        v229 = 0;
        v226 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v231 = 0;
        v232 = 1;
        HIDWORD(v228[2]) = v3;
        LODWORD(v228[3]) = 1;
        HIDWORD(v228[1]) = v4;
        LODWORD(v228[2]) = 1;
        HIDWORD(v228[0]) = v5;
        LODWORD(v228[1]) = 1;
        LODWORD(v228[0]) = 1;
        v221 = v256;
        v225 = 1;
        v213 = v255;
        v220 = 1;
        v209 = v254;
        v215 = 1;
        v250 = 1;
        v253 = 1;
        goto LABEL_90;
      }

      v142 = [v8 emergencyContacts];
      if ([v142 count])
      {
        v232 = 1;
        v249 = 0;
        v245 = 0;
        v251 = 0;
        v202 = 0;
        v206 = 0;
        v243 = 0;
        v201 = 0;
        v205 = 0;
        v248 = 0;
        v199 = 0;
        v203 = 0;
        v246 = 0;
        v200 = 0;
        v204 = 0;
        v244 = 0;
        v198 = 0;
        v212 = 0;
        v241 = 0;
        v208 = 0;
        v214 = 0;
        v240 = 0;
        v211 = 0;
        v219 = 0;
        v237 = 0;
        v234 = 0;
        v239 = 0;
        v210 = 0;
        v218 = 0;
        v238 = 0;
        v216 = 0;
        v222 = 0;
        v233 = 0;
        v230 = 0;
        v236 = 0;
        v217 = 0;
        v223 = 0;
        v235 = 0;
        v224 = 0;
        v227 = v6;
        v229 = 0;
        v231 = 0;
        v226 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        HIDWORD(v228[2]) = v3;
        LODWORD(v228[3]) = 1;
        HIDWORD(v228[1]) = v4;
        LODWORD(v228[2]) = 1;
        HIDWORD(v228[0]) = v5;
        LODWORD(v228[1]) = 1;
        LODWORD(v228[0]) = 1;
        v221 = v256;
        v225 = 1;
        v213 = v255;
        v220 = 1;
        v209 = v254;
        v215 = 1;
        v250 = 1;
        v253 = 1;
        v207 = 1;
        goto LABEL_90;
      }

      v253 = 1;
    }
  }

  v45 = [(_HKMedicalIDData *)self clinicalContacts];
  v156 = [v8 clinicalContacts];
  v249 = v45 != v156;
  v157 = v45;
  if (v45 == v156)
  {
    v245 = 0;
    v251 = 0;
    goto LABEL_54;
  }

  v46 = [v8 clinicalContacts];
  v245 = v46 != 0;
  v151 = v46;
  if (v46)
  {
    v47 = [(_HKMedicalIDData *)self clinicalContacts];
    v145 = [v8 clinicalContacts];
    v146 = v47;
    if ([v47 isEqual:?])
    {
      v251 = 0;
      v245 = 1;
      v6 = v252;
      goto LABEL_54;
    }

    v6 = v252;
  }

  v148 = [(_HKMedicalIDData *)self clinicalContacts];
  if ([v148 count])
  {
    v202 = 0;
    v206 = 0;
    v243 = 0;
    v201 = 0;
    v205 = 0;
    v248 = 0;
    v199 = 0;
    v203 = 0;
    v246 = 0;
    v200 = 0;
    v204 = 0;
    v244 = 0;
    v198 = 0;
    v212 = 0;
    v241 = 0;
    v208 = 0;
    v214 = 0;
    v240 = 0;
    v211 = 0;
    v219 = 0;
    v237 = 0;
    v234 = 0;
    v239 = 0;
    v210 = 0;
    v218 = 0;
    v238 = 0;
    v216 = 0;
    v222 = 0;
    v233 = 0;
    v230 = 0;
    v236 = 0;
    v217 = 0;
    v223 = 0;
    v235 = 0;
    v224 = 0;
    v227 = v6;
    v229 = 0;
    v226 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v231 = 0;
    v232 = 1;
    HIDWORD(v228[2]) = v3;
    LODWORD(v228[3]) = 1;
    HIDWORD(v228[1]) = v4;
    LODWORD(v228[2]) = 1;
    HIDWORD(v228[0]) = v5;
    LODWORD(v228[1]) = 1;
    LODWORD(v228[0]) = 1;
    v221 = v256;
    v225 = 1;
    v213 = v255;
    v220 = 1;
    v209 = v254;
    v215 = 1;
    v207 = v253 | 0x100000000;
    v249 = 1;
    v251 = 1;
    goto LABEL_90;
  }

  v136 = [v8 clinicalContacts];
  if ([v136 count])
  {
    v232 = 1;
    v206 = 0;
    v243 = 0;
    v201 = 0;
    v205 = 0;
    v248 = 0;
    v199 = 0;
    v203 = 0;
    v246 = 0;
    v200 = 0;
    v204 = 0;
    v244 = 0;
    v198 = 0;
    v212 = 0;
    v241 = 0;
    v208 = 0;
    v214 = 0;
    v240 = 0;
    v211 = 0;
    v219 = 0;
    v237 = 0;
    v234 = 0;
    v239 = 0;
    v210 = 0;
    v218 = 0;
    v238 = 0;
    v216 = 0;
    v222 = 0;
    v233 = 0;
    v230 = 0;
    v236 = 0;
    v217 = 0;
    v223 = 0;
    v235 = 0;
    v224 = 0;
    v227 = v6;
    v229 = 0;
    v231 = 0;
    v226 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    HIDWORD(v228[2]) = v3;
    LODWORD(v228[3]) = 1;
    HIDWORD(v228[1]) = v4;
    LODWORD(v228[2]) = 1;
    HIDWORD(v228[0]) = v5;
    LODWORD(v228[1]) = 1;
    LODWORD(v228[0]) = 1;
    v221 = v256;
    v225 = 1;
    v213 = v255;
    v220 = 1;
    v209 = v254;
    v215 = 1;
    v207 = v253 | 0x100000000;
    v249 = 1;
    v251 = 1;
    v202 = 1;
    goto LABEL_90;
  }

  v251 = 1;
LABEL_54:
  v48 = [(_HKMedicalIDData *)self medicalConditions];
  v49 = [v8 medicalConditions];
  v50 = v48;
  v152 = v49;
  v32 = v48 == v49;
  v51 = v48 != v49;
  v153 = v50;
  if (!v32)
  {
    v52 = [v8 medicalConditions];
    if (!v52)
    {
      v147 = 0;
      v201 = 0;
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v227 = v6;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v209 = v254;
      v215 = 1;
      v207 = v253 | 0x100000000;
      v202 = v251;
      v206 = 1;
      v243 = 1;
      goto LABEL_90;
    }

    v147 = v52;
    v6 = [(_HKMedicalIDData *)self medicalConditions];
    v140 = [v8 medicalConditions];
    v141 = v6;
    if (![v6 isEqualToString:?])
    {
      v205 = 0;
      v248 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      v227 = v252;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v209 = v254;
      v215 = 1;
      v207 = v253 | 0x100000000;
      v202 = v251;
      v206 = 1;
      v243 = 1;
      v201 = 1;
      goto LABEL_90;
    }
  }

  v6 = [(_HKMedicalIDData *)self medicalNotes];
  v53 = [v8 medicalNotes];
  v248 = v6 != v53;
  v243 = v51;
  v143 = v53;
  v144 = v6;
  if (v6 != v53)
  {
    v54 = [v8 medicalNotes];
    if (!v54)
    {
      v139 = 0;
      v199 = 0;
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      v227 = v252;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v209 = v254;
      v215 = 1;
      v207 = v253 | 0x100000000;
      v202 = v251;
      v206 = 1;
      v201 = v51;
      v205 = 1;
      v248 = 1;
      goto LABEL_90;
    }

    v139 = v54;
    v6 = [(_HKMedicalIDData *)self medicalNotes];
    v134 = [v8 medicalNotes];
    v135 = v6;
    if (![v6 isEqualToString:?])
    {
      v203 = 0;
      v246 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      v227 = v252;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v209 = v254;
      v215 = 1;
      v207 = v253 | 0x100000000;
      v202 = v251;
      v206 = 1;
      v201 = v51;
      v205 = 1;
      v248 = 1;
      v199 = 1;
      goto LABEL_90;
    }
  }

  v6 = [(_HKMedicalIDData *)self allergyInfo];
  v137 = [v8 allergyInfo];
  v246 = v6 != v137;
  v138 = v6;
  if (v6 != v137)
  {
    v55 = [v8 allergyInfo];
    if (!v55)
    {
      v133 = 0;
      v200 = 0;
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      v227 = v252;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v209 = v254;
      v215 = 1;
      v207 = v253 | 0x100000000;
      v202 = v251;
      v206 = 1;
      v201 = v51;
      v205 = 1;
      v199 = v248;
      v203 = 1;
      v246 = 1;
      goto LABEL_90;
    }

    v133 = v55;
    v6 = [(_HKMedicalIDData *)self allergyInfo];
    v128 = [v8 allergyInfo];
    v129 = v6;
    if (![v6 isEqualToString:?])
    {
      v204 = 0;
      v244 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      v227 = v252;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v209 = v254;
      v215 = 1;
      v207 = v253 | 0x100000000;
      v202 = v251;
      v206 = 1;
      v201 = v51;
      v205 = 1;
      v199 = v248;
      v203 = 1;
      v246 = 1;
      v200 = 1;
      goto LABEL_90;
    }
  }

  v6 = [(_HKMedicalIDData *)self medicationInfo];
  v56 = [v8 medicationInfo];
  v244 = v6 != v56;
  v131 = v56;
  v132 = v6;
  if (v6 != v56)
  {
    v130 = [v8 medicationInfo];
    if (!v130)
    {
      v130 = 0;
      v198 = 0;
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      v227 = v252;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v209 = v254;
      v215 = 1;
      v207 = v253 | 0x100000000;
      v202 = v251;
      v206 = 1;
      v201 = v51;
      v205 = 1;
      v199 = v248;
      v203 = 1;
      v200 = v246;
      v204 = 1;
      v244 = 1;
      goto LABEL_90;
    }

    v6 = [(_HKMedicalIDData *)self medicationInfo];
    v126 = [v8 medicationInfo];
    v127 = v6;
    if (![v6 isEqualToString:?])
    {
      v212 = 0;
      v241 = 0;
      v208 = 0;
      v214 = 0;
      v240 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      v227 = v252;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v209 = v254;
      v215 = 1;
      v207 = v253 | 0x100000000;
      v202 = v251;
      v206 = 1;
      v201 = v51;
      v205 = 1;
      v199 = v248;
      v203 = 1;
      v200 = v246;
      v204 = 1;
      v244 = 1;
      v57 = 1;
LABEL_88:
      v198 = v57;
      goto LABEL_90;
    }
  }

  v58 = [(_HKMedicalIDData *)self isDisabled];
  if (v58 != [v8 isDisabled] || (v59 = -[_HKMedicalIDData shareDuringEmergency](self, "shareDuringEmergency"), v59 != objc_msgSend(v8, "shareDuringEmergency")) || (v64 = -[_HKMedicalIDData bloodType](self, "bloodType"), v64 != objc_msgSend(v8, "bloodType")))
  {
    v212 = 0;
    v241 = 0;
    v208 = 0;
    v214 = 0;
    v240 = 0;
    v211 = 0;
    v219 = 0;
    v237 = 0;
    v234 = 0;
    v239 = 0;
    v210 = 0;
    v218 = 0;
    v238 = 0;
    v216 = 0;
    v222 = 0;
    v233 = 0;
    v230 = 0;
    v236 = 0;
    v217 = 0;
    v223 = 0;
    v235 = 0;
    v224 = 0;
    v229 = 0;
    v226 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v231 = 0;
    v232 = 1;
    HIDWORD(v228[2]) = v3;
    LODWORD(v228[3]) = 1;
    HIDWORD(v228[1]) = v4;
    LODWORD(v228[2]) = 1;
    HIDWORD(v228[0]) = v5;
    LODWORD(v228[1]) = 1;
    v227 = v252;
    LODWORD(v228[0]) = 1;
    v221 = v256;
    v225 = 1;
    v213 = v255;
    v220 = 1;
    v209 = v254;
    v215 = 1;
    v207 = v253 | 0x100000000;
    v202 = v251;
    v206 = 1;
    v201 = v243;
    v205 = 1;
    v199 = v248;
    v203 = 1;
    v200 = v246;
    v204 = 1;
    v57 = v244;
    goto LABEL_88;
  }

  v65 = [(_HKMedicalIDData *)self pregnancyStartDate];
  v124 = [v8 pregnancyStartDate];
  v125 = v65;
  v241 = v65 != v124;
  if (v65 == v124)
  {
    goto LABEL_248;
  }

  v123 = [v8 pregnancyStartDate];
  if (!v123)
  {
    v123 = 0;
    v208 = 0;
    v214 = 0;
    v240 = 0;
    v211 = 0;
    v219 = 0;
    v237 = 0;
    v234 = 0;
    v239 = 0;
    v210 = 0;
    v218 = 0;
    v238 = 0;
    v216 = 0;
    v222 = 0;
    v233 = 0;
    v230 = 0;
    v236 = 0;
    v217 = 0;
    v223 = 0;
    v235 = 0;
    v224 = 0;
    v229 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v231 = 0;
    v232 = 1;
    HIDWORD(v228[2]) = v3;
    LODWORD(v228[3]) = 1;
    HIDWORD(v228[1]) = v4;
    LODWORD(v228[2]) = 1;
    HIDWORD(v228[0]) = v5;
    LODWORD(v228[1]) = 1;
    v226 = 0;
    v227 = v252;
    LODWORD(v228[0]) = 1;
    v221 = v256;
    v225 = 1;
    v213 = v255;
    v220 = 1;
    v209 = v254;
    v215 = 1;
    v207 = v253 | 0x100000000;
    v202 = v251;
    v206 = 1;
    v201 = v243;
    v205 = 1;
    v199 = v248;
    v203 = 1;
    v200 = v246;
    v204 = 1;
    v198 = v244;
    v212 = 1;
    v241 = 1;
    goto LABEL_90;
  }

  v66 = [(_HKMedicalIDData *)self pregnancyStartDate];
  v118 = [v8 pregnancyStartDate];
  v119 = v66;
  if ([v66 isEqual:?])
  {
LABEL_248:
    v67 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
    v121 = [v8 pregnancyEstimatedDueDate];
    v122 = v67;
    v240 = v67 != v121;
    if (v67 == v121)
    {
      goto LABEL_253;
    }

    v120 = [v8 pregnancyEstimatedDueDate];
    if (!v120)
    {
      v120 = 0;
      v211 = 0;
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      v226 = 0;
      v227 = v252;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v209 = v254;
      v215 = 1;
      v207 = v253 | 0x100000000;
      v202 = v251;
      v206 = 1;
      v201 = v243;
      v205 = 1;
      v199 = v248;
      v203 = 1;
      v200 = v246;
      v204 = 1;
      v198 = v244;
      v212 = 1;
      v208 = v241;
      v214 = 1;
      v240 = 1;
      goto LABEL_90;
    }

    v68 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
    v114 = [v8 pregnancyEstimatedDueDate];
    v115 = v68;
    if ([v68 isEqual:?])
    {
LABEL_253:
      v69 = [(_HKMedicalIDData *)self medicationsList];
      v116 = [v8 medicationsList];
      v117 = v69;
      v237 = v69 != v116;
      if (v69 == v116)
      {
        v234 = 0;
        v239 = 0;
      }

      else
      {
        v70 = [v8 medicationsList];
        v234 = v70 != 0;
        v111 = v70;
        if (v70 && (-[_HKMedicalIDData medicationsList](self, "medicationsList"), v71 = objc_claimAutoreleasedReturnValue(), [v8 medicationsList], v107 = objc_claimAutoreleasedReturnValue(), v108 = v71, (objc_msgSend(v71, "isEqual:") & 1) != 0))
        {
          v239 = 0;
          v234 = 1;
        }

        else
        {
          v109 = [(_HKMedicalIDData *)self medicationsList];
          if ([v109 count])
          {
            v210 = 0;
            v218 = 0;
            v238 = 0;
            v216 = 0;
            v222 = 0;
            v233 = 0;
            v230 = 0;
            v236 = 0;
            v217 = 0;
            v223 = 0;
            v235 = 0;
            v224 = 0;
            v229 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v231 = 0;
            v232 = 1;
            HIDWORD(v228[2]) = v3;
            LODWORD(v228[3]) = 1;
            HIDWORD(v228[1]) = v4;
            LODWORD(v228[2]) = 1;
            HIDWORD(v228[0]) = v5;
            LODWORD(v228[1]) = 1;
            v226 = 0;
            v227 = v252;
            LODWORD(v228[0]) = 1;
            v221 = v256;
            v225 = 1;
            v213 = v255;
            v220 = 1;
            v209 = v254;
            v215 = 1;
            v207 = v253 | 0x100000000;
            v202 = v251;
            v206 = 1;
            v201 = v243;
            v205 = 1;
            v199 = v248;
            v203 = 1;
            v200 = v246;
            v204 = 1;
            v198 = v244;
            v212 = 1;
            v208 = v241;
            v214 = 1;
            v211 = v240;
            v219 = 1;
            v237 = 1;
            v239 = 1;
            goto LABEL_90;
          }

          v98 = [v8 medicationsList];
          v232 = 1;
          if ([v98 count])
          {
            v218 = 0;
            v238 = 0;
            v216 = 0;
            v222 = 0;
            v233 = 0;
            v230 = 0;
            v236 = 0;
            v217 = 0;
            v223 = 0;
            v235 = 0;
            v224 = 0;
            v229 = 0;
            v231 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            HIDWORD(v228[2]) = v3;
            LODWORD(v228[3]) = 1;
            HIDWORD(v228[1]) = v4;
            LODWORD(v228[2]) = 1;
            HIDWORD(v228[0]) = v5;
            LODWORD(v228[1]) = 1;
            v226 = 0;
            v227 = v252;
            LODWORD(v228[0]) = 1;
            v221 = v256;
            v225 = 1;
            v213 = v255;
            v220 = 1;
            v209 = v254;
            v215 = 1;
            v207 = v253 | 0x100000000;
            v202 = v251;
            v206 = 1;
            v201 = v243;
            v205 = 1;
            v199 = v248;
            v203 = 1;
            v200 = v246;
            v204 = 1;
            v198 = v244;
            v212 = 1;
            v208 = v241;
            v214 = 1;
            v211 = v240;
            v219 = 1;
            v237 = 1;
            v239 = 1;
            v210 = 1;
            goto LABEL_90;
          }

          v239 = 1;
        }
      }

      v72 = [(_HKMedicalIDData *)self medicationsListVersion];
      v112 = [v8 medicationsListVersion];
      v113 = v72;
      v238 = v72 != v112;
      if (v72 == v112)
      {
        goto LABEL_263;
      }

      v110 = [v8 medicationsListVersion];
      if (!v110)
      {
        v110 = 0;
        v216 = 0;
        v222 = 0;
        v233 = 0;
        v230 = 0;
        v236 = 0;
        v217 = 0;
        v223 = 0;
        v235 = 0;
        v224 = 0;
        v229 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v231 = 0;
        v232 = 1;
        HIDWORD(v228[2]) = v3;
        LODWORD(v228[3]) = 1;
        HIDWORD(v228[1]) = v4;
        LODWORD(v228[2]) = 1;
        HIDWORD(v228[0]) = v5;
        LODWORD(v228[1]) = 1;
        v226 = 0;
        v227 = v252;
        LODWORD(v228[0]) = 1;
        v221 = v256;
        v225 = 1;
        v213 = v255;
        v220 = 1;
        v209 = v254;
        v215 = 1;
        v207 = v253 | 0x100000000;
        v202 = v251;
        v206 = 1;
        v201 = v243;
        v205 = 1;
        v199 = v248;
        v203 = 1;
        v200 = v246;
        v204 = 1;
        v198 = v244;
        v212 = 1;
        v208 = v241;
        v214 = 1;
        v211 = v240;
        v219 = 1;
        v210 = v239;
        v218 = 1;
        v238 = 1;
        goto LABEL_90;
      }

      v73 = [(_HKMedicalIDData *)self medicationsListVersion];
      v103 = [v8 medicationsListVersion];
      v104 = v73;
      if ([v73 isEqual:?])
      {
LABEL_263:
        v74 = [(_HKMedicalIDData *)self allergiesList];
        v105 = [v8 allergiesList];
        v106 = v74;
        v233 = v74 != v105;
        if (v74 == v105)
        {
          v230 = 0;
          v236 = 0;
        }

        else
        {
          v75 = [v8 allergiesList];
          v230 = v75 != 0;
          v100 = v75;
          if (v75 && (-[_HKMedicalIDData allergiesList](self, "allergiesList"), v76 = objc_claimAutoreleasedReturnValue(), [v8 allergiesList], v95 = objc_claimAutoreleasedReturnValue(), v96 = v76, (objc_msgSend(v76, "isEqual:") & 1) != 0))
          {
            v236 = 0;
            v230 = 1;
          }

          else
          {
            v97 = [(_HKMedicalIDData *)self allergiesList];
            if ([v97 count])
            {
              v217 = 0;
              v223 = 0;
              v235 = 0;
              v224 = 0;
              v229 = 0;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v231 = 0;
              v232 = 1;
              HIDWORD(v228[2]) = v3;
              LODWORD(v228[3]) = 1;
              HIDWORD(v228[1]) = v4;
              LODWORD(v228[2]) = 1;
              HIDWORD(v228[0]) = v5;
              LODWORD(v228[1]) = 1;
              v226 = 0;
              v227 = v252;
              LODWORD(v228[0]) = 1;
              v221 = v256;
              v225 = 1;
              v213 = v255;
              v220 = 1;
              v209 = v254;
              v215 = 1;
              v207 = v253 | 0x100000000;
              v202 = v251;
              v206 = 1;
              v201 = v243;
              v205 = 1;
              v199 = v248;
              v203 = 1;
              v200 = v246;
              v204 = 1;
              v198 = v244;
              v212 = 1;
              v208 = v241;
              v214 = 1;
              v211 = v240;
              v219 = 1;
              v210 = v239;
              v218 = 1;
              v216 = v238;
              v222 = 1;
              v233 = 1;
              v236 = 1;
              goto LABEL_90;
            }

            v88 = [v8 allergiesList];
            v232 = 1;
            if ([v88 count])
            {
              v223 = 0;
              v235 = 0;
              v224 = 0;
              v229 = 0;
              v231 = 0;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              HIDWORD(v228[2]) = v3;
              LODWORD(v228[3]) = 1;
              HIDWORD(v228[1]) = v4;
              LODWORD(v228[2]) = 1;
              HIDWORD(v228[0]) = v5;
              LODWORD(v228[1]) = 1;
              v226 = 0;
              v227 = v252;
              LODWORD(v228[0]) = 1;
              v221 = v256;
              v225 = 1;
              v213 = v255;
              v220 = 1;
              v209 = v254;
              v215 = 1;
              v207 = v253 | 0x100000000;
              v202 = v251;
              v206 = 1;
              v201 = v243;
              v205 = 1;
              v199 = v248;
              v203 = 1;
              v200 = v246;
              v204 = 1;
              v198 = v244;
              v212 = 1;
              v208 = v241;
              v214 = 1;
              v211 = v240;
              v219 = 1;
              v210 = v239;
              v218 = 1;
              v216 = v238;
              v222 = 1;
              v233 = 1;
              v236 = 1;
              v217 = 1;
              goto LABEL_90;
            }

            v236 = 1;
          }
        }

        v77 = [(_HKMedicalIDData *)self allergiesListVersion];
        v101 = [v8 allergiesListVersion];
        v102 = v77;
        v235 = v77 != v101;
        if (v77 == v101)
        {
          goto LABEL_277;
        }

        v99 = [v8 allergiesListVersion];
        if (!v99)
        {
          v99 = 0;
          v224 = 0;
          v229 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v231 = 0;
          v232 = 1;
          HIDWORD(v228[2]) = v3;
          LODWORD(v228[3]) = 1;
          HIDWORD(v228[1]) = v4;
          LODWORD(v228[2]) = 1;
          HIDWORD(v228[0]) = v5;
          LODWORD(v228[1]) = 1;
          v226 = 0;
          v227 = v252;
          LODWORD(v228[0]) = 1;
          v221 = v256;
          v225 = 1;
          v213 = v255;
          v220 = 1;
          v209 = v254;
          v215 = 1;
          v207 = v253 | 0x100000000;
          v202 = v251;
          v206 = 1;
          v201 = v243;
          v205 = 1;
          v199 = v248;
          v203 = 1;
          v200 = v246;
          v204 = 1;
          v198 = v244;
          v212 = 1;
          v208 = v241;
          v214 = 1;
          v211 = v240;
          v219 = 1;
          v210 = v239;
          v218 = 1;
          v216 = v238;
          v222 = 1;
          v217 = v236;
          v223 = 1;
          v235 = 1;
          goto LABEL_90;
        }

        v78 = [(_HKMedicalIDData *)self allergiesListVersion];
        v91 = [v8 allergiesListVersion];
        v92 = v78;
        if ([v78 isEqual:?])
        {
LABEL_277:
          v79 = [(_HKMedicalIDData *)self conditionsList];
          v93 = [v8 conditionsList];
          v94 = v79;
          HIDWORD(v229) = v79 != v93;
          if (v79 == v93)
          {
            LODWORD(v229) = 0;
            v231 = 0;
          }

          else
          {
            v80 = [v8 conditionsList];
            LODWORD(v229) = v80 != 0;
            v90 = v80;
            if (v80 && (-[_HKMedicalIDData conditionsList](self, "conditionsList"), v81 = objc_claimAutoreleasedReturnValue(), [v8 conditionsList], v85 = objc_claimAutoreleasedReturnValue(), v86 = v81, (objc_msgSend(v81, "isEqual:") & 1) != 0))
            {
              v231 = 0;
              LODWORD(v229) = 1;
            }

            else
            {
              v87 = [(_HKMedicalIDData *)self conditionsList];
              if ([v87 count])
              {
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v232 = 1;
                HIDWORD(v228[2]) = v3;
                LODWORD(v228[3]) = 1;
                HIDWORD(v228[1]) = v4;
                LODWORD(v228[2]) = 1;
                HIDWORD(v228[0]) = v5;
                LODWORD(v228[1]) = 1;
                v226 = 0;
                v227 = v252 | 0x100000000;
                LODWORD(v228[0]) = 1;
                v221 = v256;
                v225 = 1;
                v213 = v255;
                v220 = 1;
                v209 = v254;
                v215 = 1;
                v207 = v253 | 0x100000000;
                v202 = v251;
                v206 = 1;
                v201 = v243;
                v205 = 1;
                v199 = v248;
                v203 = 1;
                v200 = v246;
                v204 = 1;
                v198 = v244;
                v212 = 1;
                v208 = v241;
                v214 = 1;
                v211 = v240;
                v219 = 1;
                v210 = v239;
                v218 = 1;
                v216 = v238;
                v222 = 1;
                v217 = v236;
                v223 = 1;
                v224 = v235;
                HIDWORD(v229) = 1;
                v231 = 1;
                goto LABEL_90;
              }

              v84 = [v8 conditionsList];
              v232 = 1;
              if ([v84 count])
              {
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                HIDWORD(v228[2]) = v3;
                LODWORD(v228[3]) = 1;
                HIDWORD(v228[1]) = v4;
                LODWORD(v228[2]) = 1;
                HIDWORD(v228[0]) = v5;
                LODWORD(v228[1]) = 1;
                v227 = v252 | 0x100000000;
                LODWORD(v228[0]) = 1;
                v221 = v256;
                v225 = 1;
                v213 = v255;
                v220 = 1;
                v209 = v254;
                v215 = 1;
                v207 = v253 | 0x100000000;
                v202 = v251;
                v206 = 1;
                v201 = v243;
                v205 = 1;
                v199 = v248;
                v203 = 1;
                v200 = v246;
                v204 = 1;
                v198 = v244;
                v212 = 1;
                v208 = v241;
                v214 = 1;
                v211 = v240;
                v219 = 1;
                v210 = v239;
                v218 = 1;
                v216 = v238;
                v222 = 1;
                v217 = v236;
                v223 = 1;
                v224 = v235;
                HIDWORD(v229) = 1;
                v231 = 1;
                v226 = 1;
                goto LABEL_90;
              }

              v231 = 1;
            }
          }

          v82 = [(_HKMedicalIDData *)self conditionsListVersion];
          v6 = [v8 conditionsListVersion];
          v89 = v82;
          if (v82 == v6)
          {
            goto LABEL_292;
          }

          v3 = [v8 conditionsListVersion];
          if (!v3)
          {
            v15 = 0;
            v16 = 0;
            v232 = 1;
            HIDWORD(v228[2]) = *&v242[8];
            LODWORD(v228[3]) = 1;
            HIDWORD(v228[1]) = v4;
            LODWORD(v228[2]) = 1;
            HIDWORD(v228[0]) = v5;
            LODWORD(v228[1]) = 1;
            v227 = v252 | 0x100000000;
            LODWORD(v228[0]) = 1;
            v221 = v256;
            v225 = 1;
            v213 = v255;
            v220 = 1;
            v209 = v254;
            v215 = 1;
            v207 = v253 | 0x100000000;
            v202 = v251;
            v206 = 1;
            v201 = v243;
            v205 = 1;
            v199 = v248;
            v203 = 1;
            v200 = v246;
            v204 = 1;
            v198 = v244;
            v212 = 1;
            v208 = v241;
            v214 = 1;
            v211 = v240;
            v219 = 1;
            v210 = v239;
            v218 = 1;
            v216 = v238;
            v222 = 1;
            v217 = v236;
            v223 = 1;
            v224 = v235;
            v226 = v231;
            v13 = 1;
            v14 = 1;
            goto LABEL_90;
          }

          v4 = [(_HKMedicalIDData *)self conditionsListVersion];
          v5 = [v8 conditionsListVersion];
          if ([v4 isEqual:v5])
          {
LABEL_292:
            v83 = [(_HKMedicalIDData *)self schemaVersion];
            v16 = v83 == [v8 schemaVersion];
            v232 = 1;
            HIDWORD(v228[2]) = *&v242[8];
            LODWORD(v228[3]) = 1;
            HIDWORD(v228[1]) = *&v242[4];
            LODWORD(v228[2]) = 1;
            HIDWORD(v228[0]) = *v242;
            LODWORD(v228[1]) = 1;
            v227 = v252 | 0x100000000;
            LODWORD(v228[0]) = 1;
            v221 = v256;
            v225 = 1;
            v213 = v255;
            v220 = 1;
            v209 = v254;
            v215 = 1;
            v207 = v253 | 0x100000000;
            v202 = v251;
            v206 = 1;
            v201 = v243;
            v205 = 1;
            v199 = v248;
            v203 = 1;
            v200 = v246;
            v204 = 1;
            v198 = v244;
            v212 = 1;
            v208 = v241;
            v214 = 1;
            v211 = v240;
            v219 = 1;
            v210 = v239;
            v218 = 1;
            v216 = v238;
            v222 = 1;
            v217 = v236;
            v223 = 1;
            v224 = v235;
            v226 = v231;
            v13 = 1;
            v14 = v82 != v6;
            v15 = v14;
          }

          else
          {
            v16 = 0;
            v232 = 1;
            HIDWORD(v228[2]) = *&v242[8];
            LODWORD(v228[3]) = 1;
            HIDWORD(v228[1]) = *&v242[4];
            LODWORD(v228[2]) = 1;
            HIDWORD(v228[0]) = *v242;
            LODWORD(v228[1]) = 1;
            v227 = v252 | 0x100000000;
            LODWORD(v228[0]) = 1;
            v221 = v256;
            v225 = 1;
            v213 = v255;
            v220 = 1;
            v209 = v254;
            v215 = 1;
            v207 = v253 | 0x100000000;
            v202 = v251;
            v206 = 1;
            v201 = v243;
            v205 = 1;
            v199 = v248;
            v203 = 1;
            v200 = v246;
            v204 = 1;
            v198 = v244;
            v212 = 1;
            v208 = v241;
            v214 = 1;
            v211 = v240;
            v219 = 1;
            v210 = v239;
            v218 = 1;
            v216 = v238;
            v222 = 1;
            v217 = v236;
            v223 = 1;
            v224 = v235;
            v226 = v231;
            v13 = 1;
            v14 = 1;
            v15 = 1;
          }
        }

        else
        {
          v229 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v231 = 0;
          v232 = 1;
          HIDWORD(v228[2]) = v3;
          LODWORD(v228[3]) = 1;
          HIDWORD(v228[1]) = v4;
          LODWORD(v228[2]) = 1;
          HIDWORD(v228[0]) = v5;
          LODWORD(v228[1]) = 1;
          v226 = 0;
          v227 = v252;
          LODWORD(v228[0]) = 1;
          v221 = v256;
          v225 = 1;
          v213 = v255;
          v220 = 1;
          v209 = v254;
          v215 = 1;
          v207 = v253 | 0x100000000;
          v202 = v251;
          v206 = 1;
          v201 = v243;
          v205 = 1;
          v199 = v248;
          v203 = 1;
          v200 = v246;
          v204 = 1;
          v198 = v244;
          v212 = 1;
          v208 = v241;
          v214 = 1;
          v211 = v240;
          v219 = 1;
          v210 = v239;
          v218 = 1;
          v216 = v238;
          v222 = 1;
          v217 = v236;
          v223 = 1;
          v235 = 1;
          v224 = 1;
        }
      }

      else
      {
        v222 = 0;
        v233 = 0;
        v230 = 0;
        v236 = 0;
        v217 = 0;
        v223 = 0;
        v235 = 0;
        v224 = 0;
        v229 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v231 = 0;
        v232 = 1;
        HIDWORD(v228[2]) = v3;
        LODWORD(v228[3]) = 1;
        HIDWORD(v228[1]) = v4;
        LODWORD(v228[2]) = 1;
        HIDWORD(v228[0]) = v5;
        LODWORD(v228[1]) = 1;
        v226 = 0;
        v227 = v252;
        LODWORD(v228[0]) = 1;
        v221 = v256;
        v225 = 1;
        v213 = v255;
        v220 = 1;
        v209 = v254;
        v215 = 1;
        v207 = v253 | 0x100000000;
        v202 = v251;
        v206 = 1;
        v201 = v243;
        v205 = 1;
        v199 = v248;
        v203 = 1;
        v200 = v246;
        v204 = 1;
        v198 = v244;
        v212 = 1;
        v208 = v241;
        v214 = 1;
        v211 = v240;
        v219 = 1;
        v210 = v239;
        v218 = 1;
        v238 = 1;
        v216 = 1;
      }
    }

    else
    {
      v219 = 0;
      v237 = 0;
      v234 = 0;
      v239 = 0;
      v210 = 0;
      v218 = 0;
      v238 = 0;
      v216 = 0;
      v222 = 0;
      v233 = 0;
      v230 = 0;
      v236 = 0;
      v217 = 0;
      v223 = 0;
      v235 = 0;
      v224 = 0;
      v229 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = v3;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = v4;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = v5;
      LODWORD(v228[1]) = 1;
      v226 = 0;
      v227 = v252;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v209 = v254;
      v215 = 1;
      v207 = v253 | 0x100000000;
      v202 = v251;
      v206 = 1;
      v201 = v243;
      v205 = 1;
      v199 = v248;
      v203 = 1;
      v200 = v246;
      v204 = 1;
      v198 = v244;
      v212 = 1;
      v208 = v241;
      v214 = 1;
      v240 = 1;
      v211 = 1;
    }
  }

  else
  {
    v214 = 0;
    v240 = 0;
    v211 = 0;
    v219 = 0;
    v237 = 0;
    v234 = 0;
    v239 = 0;
    v210 = 0;
    v218 = 0;
    v238 = 0;
    v216 = 0;
    v222 = 0;
    v233 = 0;
    v230 = 0;
    v236 = 0;
    v217 = 0;
    v223 = 0;
    v235 = 0;
    v224 = 0;
    v229 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v231 = 0;
    v232 = 1;
    HIDWORD(v228[2]) = v3;
    LODWORD(v228[3]) = 1;
    HIDWORD(v228[1]) = v4;
    LODWORD(v228[2]) = 1;
    HIDWORD(v228[0]) = v5;
    LODWORD(v228[1]) = 1;
    v226 = 0;
    v227 = v252;
    LODWORD(v228[0]) = 1;
    v221 = v256;
    v225 = 1;
    v213 = v255;
    v220 = 1;
    v209 = v254;
    v215 = 1;
    v207 = v253 | 0x100000000;
    v202 = v251;
    v206 = 1;
    v201 = v243;
    v205 = 1;
    v199 = v248;
    v203 = 1;
    v200 = v246;
    v204 = 1;
    v198 = v244;
    v212 = 1;
    v241 = 1;
    v208 = 1;
  }

LABEL_90:
  if (v15)
  {
    v60 = v10;
    v61 = v9;
    v62 = v14;

    v14 = v62;
    v9 = v61;
    v10 = v60;
  }

  if (v14)
  {
  }

  if (v13)
  {
  }

  if (v226)
  {
  }

  if (v231)
  {
  }

  if (v229)
  {
  }

  if (HIDWORD(v229))
  {
  }

  if (HIDWORD(v227))
  {
  }

  if (v224)
  {
  }

  if (v235)
  {
  }

  if (v223)
  {
  }

  if (v217)
  {
  }

  if (v236)
  {
  }

  if (v230)
  {
  }

  if (v233)
  {
  }

  if (v222)
  {
  }

  if (v216)
  {
  }

  if (v238)
  {
  }

  if (v218)
  {
  }

  if (v210)
  {
  }

  if (v239)
  {
  }

  if (v234)
  {
  }

  if (v237)
  {
  }

  if (v219)
  {
  }

  if (v211)
  {
  }

  if (v240)
  {
  }

  if (v214)
  {
  }

  if (v208)
  {
  }

  if (v241)
  {
  }

  if (v212)
  {
  }

  if (v198)
  {
  }

  if (v244)
  {
  }

  if (v204)
  {
  }

  if (v200)
  {
  }

  if (v246)
  {
  }

  if (v203)
  {
  }

  if (v199)
  {
  }

  if (v248)
  {
  }

  if (v205)
  {
  }

  if (v201)
  {
  }

  if (v243)
  {
  }

  if (v206)
  {
  }

  if (v202)
  {
  }

  if (v251)
  {
  }

  if (v245)
  {
  }

  if (v249)
  {
  }

  if (HIDWORD(v207))
  {
  }

  if (v207)
  {
  }

  if (v253)
  {
  }

  if (v247)
  {
  }

  if (v250)
  {
  }

  if (v215)
  {
  }

  if (v209)
  {
  }

  if (v254)
  {
  }

  if (v220)
  {
  }

  if (v213)
  {
  }

  if (v255)
  {
  }

  if (v225)
  {
  }

  if (v221)
  {
  }

  if (v256)
  {
  }

  if (LODWORD(v228[0]))
  {
  }

  if (v227)
  {
  }

  if (v252)
  {
  }

  if (LODWORD(v228[1]))
  {
  }

  if (HIDWORD(v228[0]))
  {
  }

  if (*v242)
  {
  }

  if (LODWORD(v228[2]))
  {
  }

  if (HIDWORD(v228[1]))
  {
  }

  if (*&v242[4])
  {
  }

  if (LODWORD(v228[3]))
  {
  }

  if (HIDWORD(v228[2]))
  {
  }

  if (*&v242[8])
  {
  }

  if (v232)
  {
  }

  if (HIDWORD(v228[3]))
  {
  }

  if (v9 != v10)
  {
  }

LABEL_241:
  return v16;
}

- (BOOL)isEqualToSyncedData:(id)a3
{
  v8 = a3;
  v9 = [(_HKMedicalIDData *)self pictureData];
  v10 = [v8 pictureData];
  v11 = v9 != v10;
  v257 = v10;
  v258 = v9;
  if (v9 != v10)
  {
    v12 = [v8 pictureData];
    if (!v12)
    {
      v211 = 0;
      v256 = 0;
      v262 = 0;
      memset(v249, 0, sizeof(v249));
      memset(v265, 0, sizeof(v265));
      v273 = 0;
      memset(v247, 0, sizeof(v247));
      v245 = 0;
      v242 = 0;
      v241 = 0;
      v272 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v248 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_15;
    }

    v211 = v12;
    v3 = [(_HKMedicalIDData *)self pictureData];
    [v8 pictureData];
    v206 = v207 = v3;
    if (![v3 isEqual:?])
    {
      v262 = 0;
      memset(v249, 0, sizeof(v249));
      memset(v265, 0, sizeof(v265));
      v273 = 0;
      memset(v247, 0, sizeof(v247));
      v245 = 0;
      v242 = 0;
      v241 = 0;
      v272 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v248 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v256 = 1;
      goto LABEL_15;
    }
  }

  v3 = [(_HKMedicalIDData *)self name];
  v209 = [v8 name];
  v4 = v3 != v209;
  v256 = v11;
  v210 = v3;
  if (v3 != v209)
  {
    v17 = [v8 name];
    if (!v17)
    {
      v205 = 0;
      memset(v249, 0, sizeof(v249));
      *v265 = 0;
      v273 = 0;
      memset(v247, 0, sizeof(v247));
      v245 = 0;
      v242 = 0;
      v241 = 0;
      v272 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v248 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v265[8] = 1;
      goto LABEL_15;
    }

    v205 = v17;
    v18 = [(_HKMedicalIDData *)self name];
    [v8 name];
    v201 = v202 = v18;
    if (![v18 isEqualToString:?])
    {
      *v249 = 0;
      *v265 = 0;
      v273 = 0;
      memset(v247, 0, sizeof(v247));
      v245 = 0;
      v242 = 0;
      v241 = 0;
      v272 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v248 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v265[8] = 1;
      *&v249[4] = 1;
      goto LABEL_15;
    }
  }

  v19 = [(_HKMedicalIDData *)self birthdate];
  v20 = [v8 birthdate];
  v21 = v19;
  v203 = v20;
  v22 = v19 == v20;
  v23 = v19 != v20;
  *&v265[8] = v3 != v209;
  v204 = v21;
  if (!v22)
  {
    v24 = [v8 birthdate];
    if (!v24)
    {
      v200 = 0;
      *v265 = 0x100000000;
      v273 = 0;
      memset(v247, 0, sizeof(v247));
      v245 = 0;
      v242 = 0;
      v241 = 0;
      v272 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      goto LABEL_15;
    }

    v200 = v24;
    v5 = [(_HKMedicalIDData *)self birthdate];
    [v8 birthdate];
    v196 = v197 = v5;
    if (![v5 isEqual:?])
    {
      *v247 = 0;
      *&v247[8] = 0;
      *v265 = 0x100000000;
      v273 = 0;
      v245 = 0;
      v242 = 0;
      v241 = 0;
      v272 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[16] = 1;
      goto LABEL_15;
    }
  }

  v79 = [(_HKMedicalIDData *)self gmtBirthdate];
  v80 = [v8 gmtBirthdate];
  v81 = v79;
  v198 = v80;
  v22 = v79 == v80;
  v5 = v79 != v80;
  *&v265[4] = v23;
  v199 = v81;
  if (!v22)
  {
    v82 = [v8 gmtBirthdate];
    if (!v82)
    {
      v195 = 0;
      *&v247[4] = 0;
      v273 = 0;
      *v247 = 0;
      v245 = 0;
      v242 = 0;
      v241 = 0;
      v272 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *v265 = 1;
      goto LABEL_15;
    }

    v195 = v82;
    v6 = [(_HKMedicalIDData *)self gmtBirthdate];
    [v8 gmtBirthdate];
    v191 = v192 = v6;
    if (![v6 isEqual:?])
    {
      *v247 = 0;
      v273 = 0;
      v245 = 0;
      v242 = 0;
      v241 = 0;
      v272 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *v265 = 1;
      *&v247[8] = 1;
      goto LABEL_15;
    }
  }

  v83 = [(_HKMedicalIDData *)self primaryLanguageCode];
  v84 = [v8 primaryLanguageCode];
  v85 = v83;
  v193 = v84;
  v22 = v83 == v84;
  v6 = v83 != v84;
  *v265 = v5;
  v194 = v85;
  if (v22)
  {
    HIDWORD(v273) = v6;
  }

  else
  {
    v86 = [v8 primaryLanguageCode];
    if (!v86)
    {
      v208 = 0;
      *v247 = 0x100000000;
      v245 = 0;
      v273 = 0x100000000;
      v242 = 0;
      v241 = 0;
      v272 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[8] = v5;
      goto LABEL_15;
    }

    HIDWORD(v273) = v6;
    v208 = v86;
    v6 = [(_HKMedicalIDData *)self primaryLanguageCode];
    [v8 primaryLanguageCode];
    v187 = v188 = v6;
    if (![v6 isEqualToString:?])
    {
      v245 = 0;
      v273 = 0x100000000;
      v242 = 0;
      v241 = 0;
      v272 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[8] = v5;
      *v247 = 0x100000001;
      goto LABEL_15;
    }
  }

  v6 = [(_HKMedicalIDData *)self height];
  v189 = [v8 height];
  LODWORD(v273) = v6 != v189;
  v190 = v6;
  if (v6 != v189)
  {
    v87 = [v8 height];
    if (!v87)
    {
      v186 = 0;
      v242 = 0;
      v241 = 0;
      v272 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      LODWORD(v273) = 1;
      goto LABEL_15;
    }

    v186 = v87;
    v6 = [(_HKMedicalIDData *)self height];
    [v8 height];
    v182 = v183 = v6;
    if (![v6 isEqual:?])
    {
      v241 = 0;
      v272 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      LODWORD(v273) = 1;
      v242 = 1;
      goto LABEL_15;
    }
  }

  v6 = [(_HKMedicalIDData *)self weight];
  v184 = [v8 weight];
  v272 = v6 != v184;
  v185 = v6;
  if (v6 != v184)
  {
    v88 = [v8 weight];
    if (!v88)
    {
      v181 = 0;
      v237 = 0;
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v272 = 1;
      goto LABEL_15;
    }

    v181 = v88;
    v6 = [(_HKMedicalIDData *)self weight];
    [v8 weight];
    v177 = v178 = v6;
    if (![v6 isEqual:?])
    {
      v234 = 0;
      v271 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v272 = 1;
      v237 = 1;
      goto LABEL_15;
    }
  }

  v6 = [(_HKMedicalIDData *)self isOrganDonor];
  v179 = [v8 isOrganDonor];
  v271 = v6 != v179;
  v180 = v6;
  if (v6 != v179)
  {
    v89 = [v8 isOrganDonor];
    if (!v89)
    {
      v176 = 0;
      v231 = 0;
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v271 = 1;
      goto LABEL_15;
    }

    v176 = v89;
    v6 = [(_HKMedicalIDData *)self isOrganDonor];
    [v8 isOrganDonor];
    v172 = v173 = v6;
    if (![v6 isEqual:?])
    {
      v226 = 0;
      v270 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v271 = 1;
      v231 = 1;
      goto LABEL_15;
    }
  }

  v6 = [(_HKMedicalIDData *)self medicalConditions];
  v174 = [v8 medicalConditions];
  v270 = v6 != v174;
  v175 = v6;
  if (v6 != v174)
  {
    v90 = [v8 medicalConditions];
    if (!v90)
    {
      v171 = 0;
      v218 = 0;
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v270 = 1;
      goto LABEL_15;
    }

    v171 = v90;
    v6 = [(_HKMedicalIDData *)self medicalConditions];
    [v8 medicalConditions];
    v167 = v168 = v6;
    if (![v6 isEqualToString:?])
    {
      v217 = 0;
      v269 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v270 = 1;
      v218 = 1;
      goto LABEL_15;
    }
  }

  v6 = [(_HKMedicalIDData *)self medicalNotes];
  v169 = [v8 medicalNotes];
  v269 = v6 != v169;
  v170 = v6;
  if (v6 != v169)
  {
    v91 = [v8 medicalNotes];
    if (!v91)
    {
      v166 = 0;
      v216 = 0;
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v269 = 1;
      goto LABEL_15;
    }

    v166 = v91;
    v6 = [(_HKMedicalIDData *)self medicalNotes];
    v162 = [v8 medicalNotes];
    v163 = v6;
    if (![v6 isEqualToString:?])
    {
      v215 = 0;
      v268 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v269 = 1;
      v216 = 1;
      goto LABEL_15;
    }
  }

  v92 = [(_HKMedicalIDData *)self allergyInfo];
  v164 = [v8 allergyInfo];
  v165 = v92;
  v22 = v92 == v164;
  v6 = v92 != v164;
  if (v22)
  {
    v268 = v6;
  }

  else
  {
    v93 = [v8 allergyInfo];
    if (!v93)
    {
      v161 = 0;
      v213 = 0;
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v268 = 1;
      goto LABEL_15;
    }

    v268 = v6;
    v161 = v93;
    v6 = [(_HKMedicalIDData *)self allergyInfo];
    v157 = [v8 allergyInfo];
    v158 = v6;
    if (![v6 isEqualToString:?])
    {
      v214 = 0;
      v267 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v268 = 1;
      v213 = 1;
      goto LABEL_15;
    }
  }

  v6 = [(_HKMedicalIDData *)self medicationInfo];
  v159 = [v8 medicationInfo];
  v267 = v6 != v159;
  v160 = v6;
  if (v6 != v159)
  {
    v94 = [v8 medicationInfo];
    if (!v94)
    {
      v156 = 0;
      v212 = 0;
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v267 = 1;
      goto LABEL_15;
    }

    v156 = v94;
    v6 = [(_HKMedicalIDData *)self medicationInfo];
    v154 = [v8 medicationInfo];
    v155 = v6;
    if (![v6 isEqualToString:?])
    {
      v230 = 0;
      v266 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v3 != v209;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v95 = 1;
      v214 = 1;
      v267 = 1;
LABEL_245:
      v212 = v95;
      goto LABEL_15;
    }
  }

  v6 = HIDWORD(v273);
  v3 = [(_HKMedicalIDData *)self isDisabled];
  if (v3 != [v8 isDisabled] || (v3 = -[_HKMedicalIDData shareDuringEmergency](self, "shareDuringEmergency"), v3 != objc_msgSend(v8, "shareDuringEmergency")) || (v3 = -[_HKMedicalIDData bloodType](self, "bloodType"), v3 != objc_msgSend(v8, "bloodType")))
  {
    v230 = 0;
    v266 = 0;
    v223 = 0;
    v224 = 0;
    v264 = 0;
    v220 = 0;
    v227 = 0;
    v255 = 0;
    v263 = 0;
    v219 = 0;
    v222 = 0;
    v229 = 0;
    v254 = 0;
    v261 = 0;
    v221 = 0;
    v225 = 0;
    v232 = 0;
    v253 = 0;
    v260 = 0;
    v228 = 0;
    v233 = 0;
    v235 = 0;
    v259 = 0;
    v236 = 0;
    v239 = 0;
    v252 = 0;
    v250 = 0;
    v238 = 0;
    v240 = 0;
    v243 = 0;
    *&v249[4] = v4;
    *&v249[8] = 0;
    v246 = 0;
    v251 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v262 = 1;
    v248 = 0;
    *v249 = 1;
    *&v247[12] = 1;
    *&v247[16] = v23;
    *&v247[4] = 1;
    *&v247[8] = v5;
    *v247 = HIDWORD(v273);
    v244 = 0;
    v245 = 1;
    v242 = v273;
    v241 = 1;
    v237 = v272;
    v234 = 1;
    v231 = v271;
    v226 = 1;
    v218 = v270;
    v217 = 1;
    v216 = v269;
    v215 = 1;
    v213 = v268;
    v214 = 1;
    v95 = v267;
    goto LABEL_245;
  }

  v3 = [(_HKMedicalIDData *)self pregnancyStartDate];
  v152 = [v8 pregnancyStartDate];
  v153 = v3;
  v266 = v3 != v152;
  if (v3 != v152)
  {
    v151 = [v8 pregnancyStartDate];
    if (!v151)
    {
      v151 = 0;
      v223 = 0;
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v266 = 1;
      goto LABEL_15;
    }

    v3 = [(_HKMedicalIDData *)self pregnancyStartDate];
    v146 = [v8 pregnancyStartDate];
    v147 = v3;
    if (![v3 isEqual:?])
    {
      v224 = 0;
      v264 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v266 = 1;
      v223 = 1;
      goto LABEL_15;
    }
  }

  v3 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
  v149 = [v8 pregnancyEstimatedDueDate];
  v150 = v3;
  v264 = v3 != v149;
  if (v3 != v149)
  {
    v148 = [v8 pregnancyEstimatedDueDate];
    if (!v148)
    {
      v148 = 0;
      v220 = 0;
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v264 = 1;
      goto LABEL_15;
    }

    v3 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
    v141 = [v8 pregnancyEstimatedDueDate];
    v142 = v3;
    if (![v3 isEqual:?])
    {
      v227 = 0;
      v255 = 0;
      v263 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v264 = 1;
      v220 = 1;
      goto LABEL_15;
    }
  }

  v96 = [(_HKMedicalIDData *)self emergencyContacts];
  v255 = v96 == 0;
  v144 = v96;
  if (v96 || ([v8 emergencyContacts], (v140 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v145 = [(_HKMedicalIDData *)self emergencyContacts];
    if (!v145)
    {
      v145 = 0;
      v219 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v263 = 1;
      goto LABEL_15;
    }

    v143 = [v8 emergencyContacts];
    if (!v143)
    {
      v143 = 0;
      v222 = 0;
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v263 = 1;
      v219 = 1;
      goto LABEL_15;
    }

    v138 = [(_HKMedicalIDData *)self emergencyContacts];
    v3 = [v138 count];
    v137 = [v8 emergencyContacts];
    v262 = 1;
    if (v3 != [v137 count])
    {
      v229 = 0;
      v254 = 0;
      v261 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v263 = 1;
      v219 = 1;
      v222 = 1;
      goto LABEL_15;
    }

    v263 = 1;
  }

  else
  {
    v140 = 0;
    v263 = 0;
  }

  v97 = [(_HKMedicalIDData *)self clinicalContacts];
  v254 = v97 == 0;
  v136 = v97;
  if (v97 || ([v8 clinicalContacts], (v134 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v139 = [(_HKMedicalIDData *)self clinicalContacts];
    if (!v139)
    {
      v139 = 0;
      v221 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v261 = 1;
      goto LABEL_15;
    }

    v135 = [v8 clinicalContacts];
    if (!v135)
    {
      v135 = 0;
      v225 = 0;
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v261 = 1;
      v221 = 1;
      goto LABEL_15;
    }

    v132 = [(_HKMedicalIDData *)self clinicalContacts];
    v3 = [v132 count];
    v131 = [v8 clinicalContacts];
    v262 = 1;
    if (v3 != [v131 count])
    {
      v232 = 0;
      v253 = 0;
      v260 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v261 = 1;
      v221 = 1;
      v225 = 1;
      goto LABEL_15;
    }

    v261 = 1;
  }

  else
  {
    v134 = 0;
    v261 = 0;
  }

  v98 = [(_HKMedicalIDData *)self medicationsList];
  v253 = v98 == 0;
  v130 = v98;
  if (v98 || ([v8 medicationsList], (v128 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v133 = [(_HKMedicalIDData *)self medicationsList];
    if (!v133)
    {
      v133 = 0;
      v228 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v260 = 1;
      goto LABEL_15;
    }

    v129 = [v8 medicationsList];
    if (!v129)
    {
      v129 = 0;
      v233 = 0;
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v260 = 1;
      v228 = 1;
      goto LABEL_15;
    }

    v127 = [(_HKMedicalIDData *)self medicationsList];
    v3 = [v127 count];
    v126 = [v8 medicationsList];
    v262 = 1;
    if (v3 != [v126 count])
    {
      v235 = 0;
      v259 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v260 = 1;
      v228 = 1;
      v233 = 1;
      goto LABEL_15;
    }

    v260 = 1;
  }

  else
  {
    v128 = 0;
    v260 = 0;
  }

  v3 = [(_HKMedicalIDData *)self medicationsListVersion];
  v124 = [v8 medicationsListVersion];
  v125 = v3;
  v259 = v3 != v124;
  if (v3 != v124)
  {
    v123 = [v8 medicationsListVersion];
    if (!v123)
    {
      v123 = 0;
      v236 = 0;
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v228 = v260;
      v233 = v260;
      v235 = 1;
      v259 = 1;
      goto LABEL_15;
    }

    v3 = [(_HKMedicalIDData *)self medicationsListVersion];
    v118 = [v8 medicationsListVersion];
    v119 = v3;
    if (![v3 isEqual:?])
    {
      v239 = 0;
      v252 = 0;
      v250 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v228 = v260;
      v233 = v260;
      v235 = 1;
      v259 = 1;
      v236 = 1;
      goto LABEL_15;
    }
  }

  v99 = [(_HKMedicalIDData *)self allergiesList];
  v252 = v99 == 0;
  v121 = v99;
  if (v99 || ([v8 allergiesList], (v117 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v122 = [(_HKMedicalIDData *)self allergiesList];
    if (!v122)
    {
      v122 = 0;
      v238 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v228 = v260;
      v233 = v260;
      v235 = 1;
      v236 = v259;
      v239 = 1;
      v250 = 1;
      goto LABEL_15;
    }

    v120 = [v8 allergiesList];
    if (!v120)
    {
      v120 = 0;
      v240 = 0;
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v228 = v260;
      v233 = v260;
      v235 = 1;
      v236 = v259;
      v239 = 1;
      v250 = 1;
      v238 = 1;
      goto LABEL_15;
    }

    v116 = [(_HKMedicalIDData *)self allergiesList];
    v3 = [v116 count];
    v115 = [v8 allergiesList];
    v262 = 1;
    if (v3 != [v115 count])
    {
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v249[4] = v4;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v228 = v260;
      v233 = v260;
      v235 = 1;
      v236 = v259;
      v239 = 1;
      v250 = 1;
      v238 = 1;
      v240 = 1;
      goto LABEL_15;
    }

    v250 = 1;
  }

  else
  {
    v117 = 0;
    v250 = 0;
  }

  v3 = [(_HKMedicalIDData *)self allergiesListVersion];
  v113 = [v8 allergiesListVersion];
  v114 = v3;
  *&v249[8] = v3 != v113;
  if (v3 != v113)
  {
    v112 = [v8 allergiesListVersion];
    if (!v112)
    {
      v112 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v228 = v260;
      v233 = v260;
      v235 = 1;
      v236 = v259;
      v239 = 1;
      v238 = v250;
      v240 = v250;
      v243 = 1;
      *&v249[8] = 1;
      goto LABEL_15;
    }

    v3 = [(_HKMedicalIDData *)self allergiesListVersion];
    v109 = [v8 allergiesListVersion];
    v110 = v3;
    if (![v3 isEqual:?])
    {
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = v4;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v228 = v260;
      v233 = v260;
      v235 = 1;
      v236 = v259;
      v239 = 1;
      v238 = v250;
      v240 = v250;
      v243 = 1;
      *&v249[8] = 1;
      v244 = 1;
      goto LABEL_15;
    }
  }

  v100 = [(_HKMedicalIDData *)self conditionsList];
  v251 = v100 == 0;
  v108 = v100;
  if (v100 || ([v8 conditionsList], (v106 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v111 = [(_HKMedicalIDData *)self conditionsList];
    if (!v111)
    {
      v111 = 0;
      v246 = 0x100000000;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *v249 = 1;
      *&v249[4] = v4;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v228 = v260;
      v233 = v260;
      v235 = 1;
      v236 = v259;
      v239 = 1;
      v238 = v250;
      v240 = v250;
      v243 = 1;
      v244 = *&v249[8];
      v248 = 1;
      goto LABEL_15;
    }

    v107 = [v8 conditionsList];
    if (!v107)
    {
      v107 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *v249 = 1;
      *&v249[4] = v4;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v228 = v260;
      v233 = v260;
      v235 = 1;
      v236 = v259;
      v239 = 1;
      v238 = v250;
      v240 = v250;
      v243 = 1;
      v244 = *&v249[8];
      v246 = 0x100000001;
      v248 = 1;
      goto LABEL_15;
    }

    v105 = [(_HKMedicalIDData *)self conditionsList];
    v3 = [v105 count];
    v104 = [v8 conditionsList];
    v262 = 1;
    if (v3 != [v104 count])
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *v249 = 1;
      *&v249[4] = v4;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = v5;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v228 = v260;
      v233 = v260;
      v235 = 1;
      v236 = v259;
      v239 = 1;
      v238 = v250;
      v240 = v250;
      v243 = 1;
      v244 = *&v249[8];
      v246 = 0x100000001;
      v248 = 1;
      v13 = 1;
      goto LABEL_15;
    }

    v248 = 1;
  }

  else
  {
    v106 = 0;
    v248 = 0;
  }

  v3 = [(_HKMedicalIDData *)self conditionsListVersion];
  v5 = [v8 conditionsListVersion];
  v103 = v3;
  v102 = v3 != v5;
  if (v3 != v5)
  {
    v4 = [v8 conditionsListVersion];
    if (!v4)
    {
      v16 = 0;
      v262 = 1;
      *v249 = 1;
      *&v249[4] = *&v265[8];
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = *v265;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v228 = v260;
      v233 = v260;
      v235 = 1;
      v236 = v259;
      v239 = 1;
      v238 = v250;
      v240 = v250;
      v243 = 1;
      v244 = *&v249[8];
      v13 = v248;
      v246 = v248 | 0x100000000;
      v14 = 1;
      v15 = 1;
LABEL_15:
      v25 = 1;
      if (!v16)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v6 = [(_HKMedicalIDData *)self conditionsListVersion];
    v3 = [v8 conditionsListVersion];
    if (![v6 isEqual:v3])
    {
      v262 = 1;
      *v249 = 1;
      *&v249[4] = *&v265[8];
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = *v265;
      *v247 = HIDWORD(v273);
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v237 = v272;
      v234 = 1;
      v231 = v271;
      v226 = 1;
      v218 = v270;
      v217 = 1;
      v216 = v269;
      v215 = 1;
      v213 = v268;
      v214 = 1;
      v212 = v267;
      v230 = 1;
      v223 = v266;
      v224 = 1;
      v220 = v264;
      v227 = 1;
      v219 = v263;
      v222 = v263;
      v229 = 1;
      v221 = v261;
      v225 = v261;
      v232 = 1;
      v228 = v260;
      v233 = v260;
      v235 = 1;
      v236 = v259;
      v239 = 1;
      v238 = v250;
      v240 = v250;
      v243 = 1;
      v244 = *&v249[8];
      v16 = 1;
      v13 = v248;
      v246 = v248 | 0x100000000;
      v14 = 1;
      v15 = 1;
      goto LABEL_15;
    }
  }

  v101 = [(_HKMedicalIDData *)self schemaVersion];
  v25 = v101 != [v8 schemaVersion];
  v262 = 1;
  *v249 = 1;
  *&v249[4] = *&v265[8];
  *&v247[12] = 1;
  *&v247[16] = v23;
  *&v247[4] = 1;
  *&v247[8] = *v265;
  *v247 = HIDWORD(v273);
  v245 = 1;
  v242 = v273;
  v241 = 1;
  v237 = v272;
  v234 = 1;
  v231 = v271;
  v226 = 1;
  v218 = v270;
  v217 = 1;
  v216 = v269;
  v215 = 1;
  v213 = v268;
  v214 = 1;
  v212 = v267;
  v230 = 1;
  v223 = v266;
  v224 = 1;
  v220 = v264;
  v227 = 1;
  v219 = v263;
  v222 = v263;
  v229 = 1;
  v221 = v261;
  v225 = v261;
  v232 = 1;
  v228 = v260;
  v233 = v260;
  v235 = 1;
  v236 = v259;
  v239 = 1;
  v238 = v250;
  v240 = v250;
  v243 = 1;
  v244 = *&v249[8];
  v13 = v248;
  v246 = v248 | 0x100000000;
  v14 = 1;
  v15 = v102;
  if (v102)
  {
LABEL_16:
    v26 = v14;
    v27 = v15;

    v15 = v27;
    v14 = v26;
  }

LABEL_17:
  if (v15)
  {
  }

  if (v14)
  {
  }

  if (v13)
  {
  }

  if (v246)
  {
  }

  if (v248)
  {
  }

  if (v251)
  {
  }

  if (HIDWORD(v246))
  {
  }

  if (v244)
  {
  }

  if (*&v249[8])
  {
  }

  if (v243)
  {
  }

  if (v240)
  {
  }

  if (v238)
  {
  }

  if (v250)
  {
  }

  if (v252)
  {
  }

  if (v239)
  {
  }

  if (v236)
  {
  }

  if (v259)
  {
  }

  if (v235)
  {
  }

  if (v233)
  {
  }

  if (v228)
  {
  }

  if (v260)
  {
  }

  if (v253)
  {
  }

  if (v232)
  {
  }

  if (v225)
  {
  }

  if (v221)
  {
  }

  if (v261)
  {
  }

  if (v254)
  {
  }

  if (v229)
  {
  }

  if (v222)
  {
  }

  if (v219)
  {
  }

  if (v263)
  {
  }

  if (v255)
  {
  }

  if (v227)
  {
  }

  if (v220)
  {
  }

  if (v264)
  {
  }

  if (v224)
  {
  }

  if (v223)
  {
  }

  if (v266)
  {
  }

  if (v230)
  {
  }

  if (v212)
  {
  }

  if (v267)
  {
  }

  if (v214)
  {
  }

  if (v213)
  {
  }

  if (v268)
  {
  }

  if (v215)
  {
  }

  if (v216)
  {
  }

  if (v269)
  {
  }

  if (v217)
  {
  }

  if (v218)
  {
  }

  if (v270)
  {
  }

  if (v226)
  {
  }

  if (v231)
  {
  }

  if (v271)
  {
  }

  if (v234)
  {
  }

  if (v237)
  {
  }

  if (v272)
  {
  }

  if (v241)
  {
  }

  if (v242)
  {
  }

  if (v273)
  {
  }

  if (v245)
  {
  }

  if (*v247)
  {
  }

  if (HIDWORD(v273))
  {
  }

  if (*&v247[4])
  {
  }

  if (*&v247[8])
  {
  }

  if (*v265)
  {
  }

  if (*&v247[12])
  {
  }

  if (*&v247[16])
  {
  }

  if (*&v265[4])
  {
  }

  if (*v249)
  {
  }

  if (*&v249[4])
  {
  }

  if (*&v265[8])
  {
  }

  if (v262)
  {
  }

  if (v256)
  {
  }

  if (v258 != v257)
  {
  }

  if (v25)
  {
LABEL_166:
    v28 = 0;
    goto LABEL_167;
  }

  v30 = [(_HKMedicalIDData *)self emergencyContacts];
  v31 = [v30 count];

  if (v31)
  {
    v32 = 0;
    do
    {
      v33 = [(_HKMedicalIDData *)self emergencyContacts];
      v34 = [v33 objectAtIndexedSubscript:v32];
      v35 = [v8 emergencyContacts];
      v36 = [v35 objectAtIndexedSubscript:v32];
      v37 = [v34 isEqualToSyncedContact:v36];

      if ((v37 & 1) == 0)
      {
        goto LABEL_166;
      }

      ++v32;
      v38 = [(_HKMedicalIDData *)self emergencyContacts];
      v39 = [v38 count];
    }

    while (v32 < v39);
  }

  v40 = [(_HKMedicalIDData *)self clinicalContacts];
  v41 = [v40 count];

  if (v41)
  {
    v42 = 0;
    do
    {
      v43 = [(_HKMedicalIDData *)self clinicalContacts];
      v44 = [v43 objectAtIndexedSubscript:v42];
      v45 = [v8 clinicalContacts];
      v46 = [v45 objectAtIndexedSubscript:v42];
      v47 = [v44 isEqualToSyncedContact:v46];

      if ((v47 & 1) == 0)
      {
        goto LABEL_166;
      }

      ++v42;
      v48 = [(_HKMedicalIDData *)self clinicalContacts];
      v49 = [v48 count];
    }

    while (v42 < v49);
  }

  v50 = [(_HKMedicalIDData *)self medicationsList];
  v51 = [v50 count];

  if (v51)
  {
    v52 = 0;
    do
    {
      v53 = [(_HKMedicalIDData *)self medicationsList];
      v54 = [v53 objectAtIndexedSubscript:v52];
      v55 = [v8 medicationsList];
      v56 = [v55 objectAtIndexedSubscript:v52];
      v57 = [v54 isEqualToSyncedData:v56];

      if ((v57 & 1) == 0)
      {
        goto LABEL_166;
      }

      ++v52;
      v58 = [(_HKMedicalIDData *)self medicationsList];
      v59 = [v58 count];
    }

    while (v52 < v59);
  }

  v60 = [(_HKMedicalIDData *)self allergiesList];
  v61 = [v60 count];

  if (v61)
  {
    v62 = 0;
    do
    {
      v63 = [(_HKMedicalIDData *)self allergiesList];
      v64 = [v63 objectAtIndexedSubscript:v62];
      v65 = [v8 allergiesList];
      v66 = [v65 objectAtIndexedSubscript:v62];
      v67 = [v64 isEqualToSyncedData:v66];

      if ((v67 & 1) == 0)
      {
        goto LABEL_166;
      }

      ++v62;
      v68 = [(_HKMedicalIDData *)self allergiesList];
      v69 = [v68 count];
    }

    while (v62 < v69);
  }

  v70 = [(_HKMedicalIDData *)self conditionsList];
  v71 = [v70 count];

  if (v71)
  {
    v72 = 0;
    do
    {
      v73 = [(_HKMedicalIDData *)self conditionsList];
      v74 = [v73 objectAtIndexedSubscript:v72];
      v75 = [v8 conditionsList];
      v76 = [v75 objectAtIndexedSubscript:v72];
      v28 = [v74 isEqualToSyncedData:v76];

      if ((v28 & 1) == 0)
      {
        break;
      }

      ++v72;
      v77 = [(_HKMedicalIDData *)self conditionsList];
      v78 = [v77 count];
    }

    while (v72 < v78);
  }

  else
  {
    v28 = 1;
  }

LABEL_167:

  return v28;
}

- (void)setGregorianBirthday:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4)
  {
    v5 = [v4 calendar];
    v6 = [v5 calendarIdentifier];
    v7 = [v6 isEqualToString:*MEMORY[0x1E695D850]];

    if ((v7 & 1) == 0)
    {
      [_HKMedicalIDData setGregorianBirthday:];
    }

    v8 = [(_HKMedicalIDData *)self _gregorianUtcCalendar];
    v9 = [v8 dateFromComponents:v10];

    [(_HKMedicalIDData *)self setGmtBirthdate:v9];
    [(_HKMedicalIDData *)self setBirthdate:v9];
  }

  else
  {
    [(_HKMedicalIDData *)self setGmtBirthdate:0];
  }
}

- (NSDateComponents)gregorianBirthday
{
  if (self->_gmtBirthdate)
  {
    v3 = [(_HKMedicalIDData *)self _gregorianUtcCalendar];
    v4 = [v3 hk_dateOfBirthDateComponentsWithDate:self->_gmtBirthdate];

    v5 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    [v4 setCalendar:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)dateSaved
{
  if ([(_HKMedicalIDData *)self hasAnyModificationDate])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = v3;
    if (self->_isDisabledModifiedDate)
    {
      [v3 addObject:?];
    }

    if (self->_shareDuringEmergencyModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_pictureDataModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_nameModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_gregorianBirthdayModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_primaryLanguageCodeModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_heightModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_weightModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_bloodTypeModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_isOrganDonorModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_emergencyContactsModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_clinicalContactsModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_medicalConditionsModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_medicalNotesModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_allergyInfoModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_medicationInfoModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_pregnancyStartDateModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_pregnancyEstimatedDueDateModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_medicationsListModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_medicationsListVersionModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_allergiesListModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_allergiesListVersionModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_conditionsListModifiedDate)
    {
      [v4 addObject:?];
    }

    if (self->_conditionsListVersionModifiedDate)
    {
      [v4 addObject:?];
    }

    v5 = [MEMORY[0x1E695DF00] hk_mostRecentDate:v4];
    legacyDateSaved = self->_legacyDateSaved;
    self->_legacyDateSaved = v5;
  }

  v7 = self->_legacyDateSaved;

  return v7;
}

- (BOOL)hasAnyData
{
  if (self->_isDisabled)
  {
    return 0;
  }

  else
  {
    return ![(_HKMedicalIDData *)self isEmpty:v2];
  }
}

- (BOOL)isEmpty
{
  if (self->_pictureData)
  {
    return 0;
  }

  if ([(NSString *)self->_name length]|| self->_gmtBirthdate || [(NSString *)self->_primaryLanguageCode length]|| self->_height || self->_weight || self->_bloodType || self->_isOrganDonor || [(NSArray *)self->_emergencyContacts count]|| [(NSArray *)self->_clinicalContacts count]|| [(NSString *)self->_medicalConditions length]|| [(NSString *)self->_medicalNotes length]|| [(NSString *)self->_allergyInfo length]|| [(NSString *)self->_medicationInfo length]|| self->_pregnancyStartDate || self->_pregnancyEstimatedDueDate || [(NSArray *)self->_medicationsList count]|| self->_medicationsListVersion || [(NSArray *)self->_allergiesList count]|| self->_allergiesListVersion || [(NSArray *)self->_conditionsList count])
  {
    return 0;
  }

  return self->_conditionsListVersion == 0;
}

- (void)setModificationDatesForUpdatedFieldsWithMedicalIDData:(id)a3
{
  v5 = a3;
  v203 = v5;
  if (v5)
  {
    isDisabled = self->_isDisabled;
    if (isDisabled != [v5 isDisabled])
    {
      v7 = [MEMORY[0x1E695DF00] date];
      isDisabledModifiedDate = self->_isDisabledModifiedDate;
      self->_isDisabledModifiedDate = v7;
    }

    shareDuringEmergency = self->_shareDuringEmergency;
    if (shareDuringEmergency == [v203 shareDuringEmergency])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = self->_isDisabledModifiedDate;
    self->_isDisabledModifiedDate = v10;
  }

  v12 = [MEMORY[0x1E695DF00] date];
  shareDuringEmergencyModifiedDate = self->_shareDuringEmergencyModifiedDate;
  self->_shareDuringEmergencyModifiedDate = v12;

  if (!v203)
  {
    v20 = [MEMORY[0x1E695DF00] date];
    pictureDataModifiedDate = self->_pictureDataModifiedDate;
    self->_pictureDataModifiedDate = v20;
    goto LABEL_20;
  }

LABEL_8:
  pictureData = self->_pictureData;
  v15 = [v203 pictureData];
  if (pictureData == v15)
  {
LABEL_15:

    goto LABEL_16;
  }

  v16 = [v203 pictureData];
  if (!v16)
  {

    goto LABEL_14;
  }

  v17 = v16;
  v18 = self->_pictureData;
  v19 = [v203 pictureData];
  v3 = [(NSData *)v18 isEqual:v19];

  if ((v3 & 1) == 0)
  {
LABEL_14:
    v22 = [MEMORY[0x1E695DF00] date];
    v15 = self->_pictureDataModifiedDate;
    self->_pictureDataModifiedDate = v22;
    goto LABEL_15;
  }

LABEL_16:
  name = self->_name;
  v24 = [v203 name];
  pictureDataModifiedDate = v24;
  if (name == v24)
  {

    goto LABEL_24;
  }

  v25 = [v203 name];
  if (v25)
  {
    v26 = v25;
    v27 = self->_name;
    v28 = [v203 name];
    v3 = [(NSString *)v27 isEqualToString:v28];

    if (v3)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:

LABEL_21:
  v29 = [MEMORY[0x1E695DF00] date];
  nameModifiedDate = self->_nameModifiedDate;
  self->_nameModifiedDate = v29;

  if (!v203)
  {
    v31 = [MEMORY[0x1E695DF00] date];
    gregorianBirthdayModifiedDate = self->_gregorianBirthdayModifiedDate;
    self->_gregorianBirthdayModifiedDate = v31;
    goto LABEL_36;
  }

LABEL_24:
  v33 = [(_HKMedicalIDData *)self gregorianBirthday];
  v34 = [v203 gregorianBirthday];
  v35 = v34;
  if (v33 == v34)
  {

LABEL_31:
    goto LABEL_32;
  }

  v36 = [v203 gregorianBirthday];
  if (!v36)
  {

    goto LABEL_30;
  }

  v3 = v36;
  v37 = [(_HKMedicalIDData *)self gregorianBirthday];
  v38 = [v203 gregorianBirthday];
  v39 = [v37 isEqual:v38];

  if ((v39 & 1) == 0)
  {
LABEL_30:
    v40 = [MEMORY[0x1E695DF00] date];
    v33 = self->_gregorianBirthdayModifiedDate;
    self->_gregorianBirthdayModifiedDate = v40;
    goto LABEL_31;
  }

LABEL_32:
  primaryLanguageCode = self->_primaryLanguageCode;
  v42 = [v203 primaryLanguageCode];
  gregorianBirthdayModifiedDate = v42;
  if (primaryLanguageCode == v42)
  {

    v47 = v203;
    goto LABEL_40;
  }

  v43 = [v203 primaryLanguageCode];
  if (v43)
  {
    v44 = v43;
    v45 = self->_primaryLanguageCode;
    v46 = [v203 primaryLanguageCode];
    v3 = [(NSString *)v45 isEqualToString:v46];

    v47 = v203;
    if (v3)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_36:

LABEL_37:
  v48 = [MEMORY[0x1E695DF00] date];
  primaryLanguageCodeModifiedDate = self->_primaryLanguageCodeModifiedDate;
  self->_primaryLanguageCodeModifiedDate = v48;

  v47 = v203;
  if (!v203)
  {
    v50 = [MEMORY[0x1E695DF00] date];
    heightModifiedDate = self->_heightModifiedDate;
    self->_heightModifiedDate = v50;
    goto LABEL_51;
  }

LABEL_40:
  height = self->_height;
  v53 = [v47 height];
  if (height == v53)
  {
LABEL_46:

    goto LABEL_47;
  }

  v54 = [v203 height];
  if (!v54)
  {

    goto LABEL_45;
  }

  v55 = v54;
  v56 = self->_height;
  v57 = [v203 height];
  v3 = [(HKQuantity *)v56 isEqual:v57];

  if ((v3 & 1) == 0)
  {
LABEL_45:
    v58 = [MEMORY[0x1E695DF00] date];
    v53 = self->_heightModifiedDate;
    self->_heightModifiedDate = v58;
    goto LABEL_46;
  }

LABEL_47:
  weight = self->_weight;
  v60 = [v203 weight];
  heightModifiedDate = v60;
  if (weight == v60)
  {

    v65 = v203;
    goto LABEL_55;
  }

  v61 = [v203 weight];
  if (v61)
  {
    v62 = v61;
    v63 = self->_weight;
    v64 = [v203 weight];
    v3 = [(HKQuantity *)v63 isEqual:v64];

    v65 = v203;
    if (v3)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

LABEL_51:

LABEL_52:
  v66 = [MEMORY[0x1E695DF00] date];
  weightModifiedDate = self->_weightModifiedDate;
  self->_weightModifiedDate = v66;

  v65 = v203;
  if (!v203)
  {
    v68 = [MEMORY[0x1E695DF00] date];
    bloodTypeModifiedDate = self->_bloodTypeModifiedDate;
    self->_bloodTypeModifiedDate = v68;
    goto LABEL_61;
  }

LABEL_55:
  bloodType = self->_bloodType;
  if (bloodType != [v65 bloodType])
  {
    v71 = [MEMORY[0x1E695DF00] date];
    v72 = self->_bloodTypeModifiedDate;
    self->_bloodTypeModifiedDate = v71;
  }

  isOrganDonor = self->_isOrganDonor;
  v74 = [v203 isOrganDonor];
  bloodTypeModifiedDate = v74;
  if (isOrganDonor == v74)
  {

    v79 = v203;
    goto LABEL_65;
  }

  v75 = [v203 isOrganDonor];
  if (v75)
  {
    v76 = v75;
    v77 = self->_isOrganDonor;
    v78 = [v203 isOrganDonor];
    v3 = [(NSNumber *)v77 isEqual:v78];

    v79 = v203;
    if (v3)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

LABEL_61:

LABEL_62:
  v80 = [MEMORY[0x1E695DF00] date];
  isOrganDonorModifiedDate = self->_isOrganDonorModifiedDate;
  self->_isOrganDonorModifiedDate = v80;

  v79 = v203;
  if (!v203)
  {
    v82 = [MEMORY[0x1E695DF00] date];
    emergencyContactsModifiedDate = self->_emergencyContactsModifiedDate;
    self->_emergencyContactsModifiedDate = v82;
    goto LABEL_88;
  }

LABEL_65:
  emergencyContacts = self->_emergencyContacts;
  v85 = [v79 emergencyContacts];
  if (emergencyContacts != v85)
  {
    v86 = [v203 emergencyContacts];
    v87 = self->_emergencyContacts;
    if (v86)
    {
      v3 = [v203 emergencyContacts];
      if ([(NSArray *)v87 isEqual:v3])
      {

        goto LABEL_78;
      }

      if ([(NSArray *)self->_emergencyContacts count])
      {

        goto LABEL_73;
      }
    }

    else if ([(NSArray *)self->_emergencyContacts count])
    {
LABEL_73:

LABEL_77:
      v90 = [MEMORY[0x1E695DF00] date];
      v85 = self->_emergencyContactsModifiedDate;
      self->_emergencyContactsModifiedDate = v90;
      goto LABEL_78;
    }

    v88 = [v203 emergencyContacts];
    v89 = [v88 count];

    if (v86)
    {
    }

    if (!v89)
    {
      goto LABEL_79;
    }

    goto LABEL_77;
  }

LABEL_78:

LABEL_79:
  clinicalContacts = self->_clinicalContacts;
  emergencyContactsModifiedDate = [v203 clinicalContacts];
  if (clinicalContacts == emergencyContactsModifiedDate)
  {
LABEL_83:

    goto LABEL_90;
  }

  v92 = [v203 clinicalContacts];
  v93 = self->_clinicalContacts;
  if (v92)
  {
    v3 = [v203 clinicalContacts];
    if ([(NSArray *)v93 isEqual:v3])
    {

      goto LABEL_83;
    }

    if ([(NSArray *)self->_clinicalContacts count])
    {

      goto LABEL_88;
    }

LABEL_204:
    v201 = [v203 clinicalContacts];
    v202 = [v201 count];

    if (v92)
    {
    }

    if (!v202)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  if (![(NSArray *)self->_clinicalContacts count])
  {
    goto LABEL_204;
  }

LABEL_88:

LABEL_89:
  v94 = [MEMORY[0x1E695DF00] date];
  clinicalContactsModifiedDate = self->_clinicalContactsModifiedDate;
  self->_clinicalContactsModifiedDate = v94;

  if (!v203)
  {
    v111 = [MEMORY[0x1E695DF00] date];
    medicalConditionsModifiedDate = self->_medicalConditionsModifiedDate;
    self->_medicalConditionsModifiedDate = v111;
    goto LABEL_103;
  }

LABEL_90:
  medicalConditions = self->_medicalConditions;
  p_isa = [v203 medicalConditions];
  if (medicalConditions == p_isa)
  {
LABEL_96:

    goto LABEL_97;
  }

  v98 = [v203 medicalConditions];
  if (!v98)
  {

    goto LABEL_95;
  }

  v99 = v98;
  v100 = self->_medicalConditions;
  v101 = [v203 medicalConditions];
  v3 = [(NSString *)v100 isEqualToString:v101];

  if ((v3 & 1) == 0)
  {
LABEL_95:
    v102 = [MEMORY[0x1E695DF00] date];
    p_isa = &self->_medicalConditionsModifiedDate->super.isa;
    self->_medicalConditionsModifiedDate = v102;
    goto LABEL_96;
  }

LABEL_97:
  medicalNotes = self->_medicalNotes;
  v104 = [v203 medicalNotes];
  medicalConditionsModifiedDate = v104;
  if (medicalNotes == v104)
  {

    v110 = v203;
    goto LABEL_105;
  }

  v106 = [v203 medicalNotes];
  if (v106)
  {
    v107 = v106;
    v108 = self->_medicalNotes;
    v109 = [v203 medicalNotes];
    v3 = [(NSString *)v108 isEqualToString:v109];

    v110 = v203;
    if (v3)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_103:

LABEL_104:
  v112 = [MEMORY[0x1E695DF00] date];
  medicalNotesModifiedDate = self->_medicalNotesModifiedDate;
  self->_medicalNotesModifiedDate = v112;

  v110 = v203;
  if (!v203)
  {
    v120 = [MEMORY[0x1E695DF00] date];
    allergyInfoModifiedDate = self->_allergyInfoModifiedDate;
    self->_allergyInfoModifiedDate = v120;
    goto LABEL_117;
  }

LABEL_105:
  allergyInfo = self->_allergyInfo;
  v115 = [v110 allergyInfo];
  if (allergyInfo == v115)
  {
LABEL_112:

    goto LABEL_113;
  }

  v116 = [v203 allergyInfo];
  if (!v116)
  {

    goto LABEL_111;
  }

  v117 = v116;
  v118 = self->_allergyInfo;
  v119 = [v203 allergyInfo];
  v3 = [(NSString *)v118 isEqualToString:v119];

  if ((v3 & 1) == 0)
  {
LABEL_111:
    v122 = [MEMORY[0x1E695DF00] date];
    v115 = &self->_allergyInfoModifiedDate->super.isa;
    self->_allergyInfoModifiedDate = v122;
    goto LABEL_112;
  }

LABEL_113:
  medicationInfo = self->_medicationInfo;
  v124 = [v203 medicationInfo];
  allergyInfoModifiedDate = v124;
  if (medicationInfo == v124)
  {

    v129 = v203;
    goto LABEL_121;
  }

  v125 = [v203 medicationInfo];
  if (v125)
  {
    v126 = v125;
    v127 = self->_medicationInfo;
    v128 = [v203 medicationInfo];
    v3 = [(NSString *)v127 isEqualToString:v128];

    v129 = v203;
    if (v3)
    {
      goto LABEL_121;
    }

    goto LABEL_118;
  }

LABEL_117:

LABEL_118:
  v130 = [MEMORY[0x1E695DF00] date];
  medicationInfoModifiedDate = self->_medicationInfoModifiedDate;
  self->_medicationInfoModifiedDate = v130;

  v129 = v203;
  if (!v203)
  {
    v132 = [MEMORY[0x1E695DF00] date];
    pregnancyStartDateModifiedDate = self->_pregnancyStartDateModifiedDate;
    self->_pregnancyStartDateModifiedDate = v132;
    goto LABEL_132;
  }

LABEL_121:
  pregnancyStartDate = self->_pregnancyStartDate;
  v135 = [v129 pregnancyStartDate];
  if (pregnancyStartDate == v135)
  {
LABEL_127:

    goto LABEL_128;
  }

  v136 = [v203 pregnancyStartDate];
  if (!v136)
  {

    goto LABEL_126;
  }

  v137 = v136;
  v138 = self->_pregnancyStartDate;
  v139 = [v203 pregnancyStartDate];
  v3 = [(NSDate *)v138 isEqual:v139];

  if ((v3 & 1) == 0)
  {
LABEL_126:
    v140 = [MEMORY[0x1E695DF00] date];
    v135 = self->_pregnancyStartDateModifiedDate;
    self->_pregnancyStartDateModifiedDate = v140;
    goto LABEL_127;
  }

LABEL_128:
  pregnancyEstimatedDueDate = self->_pregnancyEstimatedDueDate;
  v142 = [v203 pregnancyEstimatedDueDate];
  pregnancyStartDateModifiedDate = v142;
  if (pregnancyEstimatedDueDate == v142)
  {

    v147 = v203;
    goto LABEL_136;
  }

  v143 = [v203 pregnancyEstimatedDueDate];
  if (v143)
  {
    v144 = v143;
    v145 = self->_pregnancyEstimatedDueDate;
    v146 = [v203 pregnancyEstimatedDueDate];
    v3 = [(NSDate *)v145 isEqual:v146];

    v147 = v203;
    if (v3)
    {
      goto LABEL_136;
    }

    goto LABEL_133;
  }

LABEL_132:

LABEL_133:
  v148 = [MEMORY[0x1E695DF00] date];
  pregnancyEstimatedDueDateModifiedDate = self->_pregnancyEstimatedDueDateModifiedDate;
  self->_pregnancyEstimatedDueDateModifiedDate = v148;

  v147 = v203;
  if (!v203)
  {
    v150 = [MEMORY[0x1E695DF00] date];
    medicationsListModifiedDate = self->_medicationsListModifiedDate;
    self->_medicationsListModifiedDate = v150;
    goto LABEL_154;
  }

LABEL_136:
  medicationsList = self->_medicationsList;
  v153 = [v147 medicationsList];
  if (medicationsList == v153)
  {
LABEL_149:

    goto LABEL_150;
  }

  v154 = [v203 medicationsList];
  v155 = self->_medicationsList;
  if (v154)
  {
    v3 = [v203 medicationsList];
    if ([(NSArray *)v155 isEqual:v3])
    {

      goto LABEL_149;
    }

    if ([(NSArray *)self->_medicationsList count])
    {

      goto LABEL_144;
    }
  }

  else if ([(NSArray *)self->_medicationsList count])
  {
LABEL_144:

LABEL_148:
    v158 = [MEMORY[0x1E695DF00] date];
    v153 = self->_medicationsListModifiedDate;
    self->_medicationsListModifiedDate = v158;
    goto LABEL_149;
  }

  v156 = [v203 medicationsList];
  v157 = [v156 count];

  if (v154)
  {
  }

  if (v157)
  {
    goto LABEL_148;
  }

LABEL_150:
  medicationsListVersion = self->_medicationsListVersion;
  v160 = [v203 medicationsListVersion];
  medicationsListModifiedDate = v160;
  if (medicationsListVersion == v160)
  {

    v165 = v203;
    goto LABEL_158;
  }

  v161 = [v203 medicationsListVersion];
  if (v161)
  {
    v162 = v161;
    v163 = self->_medicationsListVersion;
    v164 = [v203 medicationsListVersion];
    v3 = [(NSNumber *)v163 isEqual:v164];

    v165 = v203;
    if (v3)
    {
      goto LABEL_158;
    }

    goto LABEL_155;
  }

LABEL_154:

LABEL_155:
  v166 = [MEMORY[0x1E695DF00] date];
  medicationsListVersionModifiedDate = self->_medicationsListVersionModifiedDate;
  self->_medicationsListVersionModifiedDate = v166;

  v165 = v203;
  if (!v203)
  {
    v168 = [MEMORY[0x1E695DF00] date];
    allergiesListModifiedDate = self->_allergiesListModifiedDate;
    self->_allergiesListModifiedDate = v168;
    goto LABEL_176;
  }

LABEL_158:
  allergiesList = self->_allergiesList;
  v171 = [v165 allergiesList];
  if (allergiesList == v171)
  {
LABEL_171:

    goto LABEL_172;
  }

  v172 = [v203 allergiesList];
  v173 = self->_allergiesList;
  if (v172)
  {
    v3 = [v203 allergiesList];
    if ([(NSArray *)v173 isEqual:v3])
    {

      goto LABEL_171;
    }

    if ([(NSArray *)self->_allergiesList count])
    {

      goto LABEL_166;
    }
  }

  else if ([(NSArray *)self->_allergiesList count])
  {
LABEL_166:

LABEL_170:
    v176 = [MEMORY[0x1E695DF00] date];
    v171 = self->_allergiesListModifiedDate;
    self->_allergiesListModifiedDate = v176;
    goto LABEL_171;
  }

  v174 = [v203 allergiesList];
  v175 = [v174 count];

  if (v172)
  {
  }

  if (v175)
  {
    goto LABEL_170;
  }

LABEL_172:
  allergiesListVersion = self->_allergiesListVersion;
  v178 = [v203 allergiesListVersion];
  allergiesListModifiedDate = v178;
  if (allergiesListVersion == v178)
  {

    v183 = v203;
    goto LABEL_180;
  }

  v179 = [v203 allergiesListVersion];
  if (v179)
  {
    v180 = v179;
    v181 = self->_allergiesListVersion;
    v182 = [v203 allergiesListVersion];
    v3 = [(NSNumber *)v181 isEqual:v182];

    v183 = v203;
    if (v3)
    {
      goto LABEL_180;
    }

    goto LABEL_177;
  }

LABEL_176:

LABEL_177:
  v184 = [MEMORY[0x1E695DF00] date];
  allergiesListVersionModifiedDate = self->_allergiesListVersionModifiedDate;
  self->_allergiesListVersionModifiedDate = v184;

  v183 = v203;
  if (!v203)
  {
    v186 = [MEMORY[0x1E695DF00] date];
    conditionsListModifiedDate = self->_conditionsListModifiedDate;
    self->_conditionsListModifiedDate = v186;
LABEL_198:

    goto LABEL_199;
  }

LABEL_180:
  conditionsList = self->_conditionsList;
  v189 = [v183 conditionsList];
  if (conditionsList == v189)
  {
LABEL_193:

    goto LABEL_194;
  }

  v190 = [v203 conditionsList];
  v191 = self->_conditionsList;
  if (v190)
  {
    v3 = [v203 conditionsList];
    if ([(NSArray *)v191 isEqual:v3])
    {

      goto LABEL_193;
    }

    if ([(NSArray *)self->_conditionsList count])
    {

      goto LABEL_188;
    }
  }

  else if ([(NSArray *)self->_conditionsList count])
  {
LABEL_188:

LABEL_192:
    v194 = [MEMORY[0x1E695DF00] date];
    v189 = self->_conditionsListModifiedDate;
    self->_conditionsListModifiedDate = v194;
    goto LABEL_193;
  }

  v192 = [v203 conditionsList];
  v193 = [v192 count];

  if (v190)
  {
  }

  if (v193)
  {
    goto LABEL_192;
  }

LABEL_194:
  conditionsListVersion = self->_conditionsListVersion;
  conditionsListModifiedDate = [v203 conditionsListVersion];
  if (conditionsListVersion == conditionsListModifiedDate)
  {
LABEL_200:

    goto LABEL_201;
  }

  v196 = [v203 conditionsListVersion];
  if (!v196)
  {
    goto LABEL_198;
  }

  v197 = v196;
  v198 = self->_conditionsListVersion;
  v199 = [v203 conditionsListVersion];
  LOBYTE(v198) = [(NSNumber *)v198 isEqual:v199];

  if ((v198 & 1) == 0)
  {
LABEL_199:
    v200 = [MEMORY[0x1E695DF00] date];
    conditionsListModifiedDate = self->_conditionsListVersionModifiedDate;
    self->_conditionsListVersionModifiedDate = v200;
    goto LABEL_200;
  }

LABEL_201:
}

- (void)setModificationDatesToCurrentDate
{
  v3 = [MEMORY[0x1E695DF00] date];
  objc_storeStrong(&self->_isDisabledModifiedDate, v3);
  objc_storeStrong(&self->_shareDuringEmergencyModifiedDate, v3);
  objc_storeStrong(&self->_pictureDataModifiedDate, v3);
  objc_storeStrong(&self->_nameModifiedDate, v3);
  objc_storeStrong(&self->_gregorianBirthdayModifiedDate, v3);
  objc_storeStrong(&self->_primaryLanguageCodeModifiedDate, v3);
  objc_storeStrong(&self->_heightModifiedDate, v3);
  objc_storeStrong(&self->_weightModifiedDate, v3);
  objc_storeStrong(&self->_bloodTypeModifiedDate, v3);
  objc_storeStrong(&self->_isOrganDonorModifiedDate, v3);
  objc_storeStrong(&self->_emergencyContactsModifiedDate, v3);
  objc_storeStrong(&self->_clinicalContactsModifiedDate, v3);
  objc_storeStrong(&self->_medicalConditionsModifiedDate, v3);
  objc_storeStrong(&self->_medicalNotesModifiedDate, v3);
  objc_storeStrong(&self->_allergyInfoModifiedDate, v3);
  objc_storeStrong(&self->_medicationInfoModifiedDate, v3);
  objc_storeStrong(&self->_pregnancyStartDateModifiedDate, v3);
  objc_storeStrong(&self->_pregnancyEstimatedDueDateModifiedDate, v3);
  objc_storeStrong(&self->_medicationsListModifiedDate, v3);
  objc_storeStrong(&self->_medicationsListVersionModifiedDate, v3);
  objc_storeStrong(&self->_allergiesListModifiedDate, v3);
  objc_storeStrong(&self->_allergiesListVersionModifiedDate, v3);
  objc_storeStrong(&self->_conditionsListModifiedDate, v3);
  conditionsListVersionModifiedDate = self->_conditionsListVersionModifiedDate;
  self->_conditionsListVersionModifiedDate = v3;
}

- (id)_gregorianUtcCalendar
{
  if (_gregorianUtcCalendar_onceToken != -1)
  {
    [_HKMedicalIDData _gregorianUtcCalendar];
  }

  v3 = _gregorianUtcCalendar__calendar;

  return v3;
}

- (id)merge:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_HKMedicalIDData);
  v6 = [(_HKMedicalIDData *)self isDisabledModifiedDate];
  if (v6)
  {
  }

  else
  {
    v7 = [(_HKMedicalIDData *)v4 isDisabledModifiedDate];

    if (!v7)
    {
      v21 = [(_HKMedicalIDData *)self isDisabled];
      if (v21 != [(_HKMedicalIDData *)v4 isDisabled])
      {
        _HKInitializeLogging();
        v20 = HKLogMedicalID;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }

        goto LABEL_15;
      }

LABEL_16:
      v19 = [(_HKMedicalIDData *)self isDisabled];
      goto LABEL_17;
    }
  }

  v8 = [(_HKMedicalIDData *)self isDisabledModifiedDate];

  if (!v8)
  {
LABEL_7:
    v13 = [(_HKMedicalIDData *)v4 isDisabled];
    v14 = objc_opt_self();
    [v14 setIsDisabled:v13];

    v15 = v4;
    goto LABEL_18;
  }

  v9 = [(_HKMedicalIDData *)v4 isDisabledModifiedDate];

  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = [(_HKMedicalIDData *)self isDisabledModifiedDate];
  v11 = [(_HKMedicalIDData *)v4 isDisabledModifiedDate];
  v12 = [v10 hk_isBeforeDate:v11];

  if (v12)
  {
    goto LABEL_7;
  }

  v16 = [(_HKMedicalIDData *)self isDisabledModifiedDate];
  v17 = [(_HKMedicalIDData *)v4 isDisabledModifiedDate];
  v18 = [v16 hk_isAfterDate:v17];

  v19 = [(_HKMedicalIDData *)self isDisabled];
  if (!v18)
  {
    if (v19 != [(_HKMedicalIDData *)v4 isDisabled])
    {
      _HKInitializeLogging();
      v20 = HKLogMedicalID;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_HKMedicalIDData merge:];
      }

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_17:
  v22 = objc_opt_self();
  [v22 setIsDisabled:v19];

  v15 = self;
LABEL_18:
  v23 = [(_HKMedicalIDData *)v15 isDisabledModifiedDate];
  v24 = objc_opt_self();
  [v24 setIsDisabledModifiedDate:v23];

  v25 = [(_HKMedicalIDData *)self shareDuringEmergencyModifiedDate];
  if (v25)
  {

    goto LABEL_21;
  }

  v26 = [(_HKMedicalIDData *)v4 shareDuringEmergencyModifiedDate];

  if (v26)
  {
LABEL_21:
    v27 = [(_HKMedicalIDData *)self shareDuringEmergencyModifiedDate];

    v28 = v4;
    if (v27)
    {
      v29 = [(_HKMedicalIDData *)v4 shareDuringEmergencyModifiedDate];

      v28 = self;
      if (v29)
      {
        v30 = [(_HKMedicalIDData *)self shareDuringEmergencyModifiedDate];
        v31 = [(_HKMedicalIDData *)v4 shareDuringEmergencyModifiedDate];
        v32 = [v30 hk_isBeforeDate:v31];

        v28 = v4;
        if ((v32 & 1) == 0)
        {
          v33 = [(_HKMedicalIDData *)self shareDuringEmergencyModifiedDate];
          v34 = [(_HKMedicalIDData *)v4 shareDuringEmergencyModifiedDate];
          v35 = [v33 hk_isAfterDate:v34];

          v36 = [(_HKMedicalIDData *)self shareDuringEmergency];
          v28 = self;
          if (v35)
          {
            goto LABEL_33;
          }

          v28 = self;
          if (v36 != [(_HKMedicalIDData *)v4 shareDuringEmergency])
          {
            _HKInitializeLogging();
            v37 = HKLogMedicalID;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

LABEL_31:

            v28 = self;
            goto LABEL_32;
          }
        }
      }
    }

    goto LABEL_32;
  }

  v38 = [(_HKMedicalIDData *)self shareDuringEmergency];
  v28 = self;
  if (v38 != [(_HKMedicalIDData *)v4 shareDuringEmergency])
  {
    _HKInitializeLogging();
    v37 = HKLogMedicalID;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [_HKMedicalIDData merge:];
    }

    goto LABEL_31;
  }

LABEL_32:
  v36 = [(_HKMedicalIDData *)v28 shareDuringEmergency];
LABEL_33:
  v39 = objc_opt_self();
  [v39 setShareDuringEmergency:v36];

  v40 = [(_HKMedicalIDData *)v28 shareDuringEmergencyModifiedDate];
  v41 = objc_opt_self();
  [v41 setShareDuringEmergencyModifiedDate:v40];

  v42 = [(_HKMedicalIDData *)self pictureDataModifiedDate];
  if (v42)
  {
  }

  else
  {
    v43 = [(_HKMedicalIDData *)v4 pictureDataModifiedDate];

    if (!v43)
    {
      v54 = [(_HKMedicalIDData *)self pictureData];
      v55 = [(_HKMedicalIDData *)v4 pictureData];

      if (v54 != v55)
      {
        _HKInitializeLogging();
        v56 = HKLogMedicalID;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v57 = [(_HKMedicalIDData *)self pictureData];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = [(_HKMedicalIDData *)self pictureData];

        v45 = v4;
        if (!v58)
        {
          goto LABEL_50;
        }

        v59 = [(_HKMedicalIDData *)self pictureData];
        v60 = objc_opt_self();
        [v60 setPictureData:v59];

        v57 = [(_HKMedicalIDData *)self pictureDataModifiedDate];
        v61 = objc_opt_self();
        [v61 setPictureDataModifiedDate:v57];
      }

      v45 = v4;
LABEL_49:

      goto LABEL_50;
    }
  }

  v44 = [(_HKMedicalIDData *)self pictureDataModifiedDate];

  v45 = v4;
  if (v44)
  {
    v46 = [(_HKMedicalIDData *)v4 pictureDataModifiedDate];

    v45 = self;
    if (v46)
    {
      v47 = [(_HKMedicalIDData *)self pictureDataModifiedDate];
      v48 = [(_HKMedicalIDData *)v4 pictureDataModifiedDate];
      v49 = [v47 hk_isBeforeDate:v48];

      v45 = v4;
      if ((v49 & 1) == 0)
      {
        v50 = [(_HKMedicalIDData *)self pictureDataModifiedDate];
        v51 = [(_HKMedicalIDData *)v4 pictureDataModifiedDate];
        v52 = [v50 hk_isAfterDate:v51];

        v53 = [(_HKMedicalIDData *)self pictureData];
        if (v52)
        {
          v45 = self;
          goto LABEL_51;
        }

        v547 = [(_HKMedicalIDData *)v4 pictureData];

        v45 = self;
        if (v53 != v547)
        {
          _HKInitializeLogging();
          v548 = HKLogMedicalID;
          if (os_log_type_enabled(v548, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v549 = [(_HKMedicalIDData *)self pictureData];

          v45 = self;
          if (!v549)
          {
            _HKInitializeLogging();
            v57 = HKLogMedicalID;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v45 = self;
            goto LABEL_49;
          }
        }
      }
    }
  }

LABEL_50:
  v53 = [(_HKMedicalIDData *)v45 pictureData];
LABEL_51:
  v62 = objc_opt_self();
  [v62 setPictureData:v53];

  v63 = [(_HKMedicalIDData *)v45 pictureDataModifiedDate];
  v64 = objc_opt_self();
  [v64 setPictureDataModifiedDate:v63];

  v65 = [(_HKMedicalIDData *)self nameModifiedDate];
  if (v65)
  {
  }

  else
  {
    v66 = [(_HKMedicalIDData *)v4 nameModifiedDate];

    if (!v66)
    {
      v77 = [(_HKMedicalIDData *)self name];
      v78 = [(_HKMedicalIDData *)v4 name];

      if (v77 != v78)
      {
        _HKInitializeLogging();
        v79 = HKLogMedicalID;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v80 = [(_HKMedicalIDData *)self name];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v81 = [(_HKMedicalIDData *)self name];

        v68 = v4;
        if (!v81)
        {
          goto LABEL_68;
        }

        v82 = [(_HKMedicalIDData *)self name];
        v83 = objc_opt_self();
        [v83 setName:v82];

        v80 = [(_HKMedicalIDData *)self nameModifiedDate];
        v84 = objc_opt_self();
        [v84 setNameModifiedDate:v80];
      }

      v68 = v4;
LABEL_67:

      goto LABEL_68;
    }
  }

  v67 = [(_HKMedicalIDData *)self nameModifiedDate];

  v68 = v4;
  if (v67)
  {
    v69 = [(_HKMedicalIDData *)v4 nameModifiedDate];

    v68 = self;
    if (v69)
    {
      v70 = [(_HKMedicalIDData *)self nameModifiedDate];
      v71 = [(_HKMedicalIDData *)v4 nameModifiedDate];
      v72 = [v70 hk_isBeforeDate:v71];

      v68 = v4;
      if ((v72 & 1) == 0)
      {
        v73 = [(_HKMedicalIDData *)self nameModifiedDate];
        v74 = [(_HKMedicalIDData *)v4 nameModifiedDate];
        v75 = [v73 hk_isAfterDate:v74];

        v76 = [(_HKMedicalIDData *)self name];
        if (v75)
        {
          v68 = self;
          goto LABEL_69;
        }

        v550 = [(_HKMedicalIDData *)v4 name];

        v68 = self;
        if (v76 != v550)
        {
          _HKInitializeLogging();
          v551 = HKLogMedicalID;
          if (os_log_type_enabled(v551, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v552 = [(_HKMedicalIDData *)self name];

          v68 = self;
          if (!v552)
          {
            _HKInitializeLogging();
            v80 = HKLogMedicalID;
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v68 = self;
            goto LABEL_67;
          }
        }
      }
    }
  }

LABEL_68:
  v76 = [(_HKMedicalIDData *)v68 name];
LABEL_69:
  v85 = objc_opt_self();
  [v85 setName:v76];

  v86 = [(_HKMedicalIDData *)v68 nameModifiedDate];
  v87 = objc_opt_self();
  [v87 setNameModifiedDate:v86];

  v88 = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];
  if (v88)
  {
  }

  else
  {
    v89 = [(_HKMedicalIDData *)v4 gregorianBirthdayModifiedDate];

    if (!v89)
    {
      v100 = [(_HKMedicalIDData *)self gregorianBirthday];
      v101 = [(_HKMedicalIDData *)v4 gregorianBirthday];

      if (v100 != v101)
      {
        _HKInitializeLogging();
        v102 = HKLogMedicalID;
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v103 = [(_HKMedicalIDData *)self gregorianBirthday];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v104 = [(_HKMedicalIDData *)self gregorianBirthday];

        v91 = v4;
        if (!v104)
        {
          goto LABEL_86;
        }

        v105 = [(_HKMedicalIDData *)self gregorianBirthday];
        v106 = objc_opt_self();
        [v106 setGregorianBirthday:v105];

        v103 = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];
        v107 = objc_opt_self();
        [v107 setGregorianBirthdayModifiedDate:v103];
      }

      v91 = v4;
LABEL_85:

      goto LABEL_86;
    }
  }

  v90 = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];

  v91 = v4;
  if (v90)
  {
    v92 = [(_HKMedicalIDData *)v4 gregorianBirthdayModifiedDate];

    v91 = self;
    if (v92)
    {
      v93 = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];
      v94 = [(_HKMedicalIDData *)v4 gregorianBirthdayModifiedDate];
      v95 = [v93 hk_isBeforeDate:v94];

      v91 = v4;
      if ((v95 & 1) == 0)
      {
        v96 = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];
        v97 = [(_HKMedicalIDData *)v4 gregorianBirthdayModifiedDate];
        v98 = [v96 hk_isAfterDate:v97];

        v99 = [(_HKMedicalIDData *)self gregorianBirthday];
        if (v98)
        {
          v91 = self;
          goto LABEL_87;
        }

        v553 = [(_HKMedicalIDData *)v4 gregorianBirthday];

        v91 = self;
        if (v99 != v553)
        {
          _HKInitializeLogging();
          v554 = HKLogMedicalID;
          if (os_log_type_enabled(v554, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v555 = [(_HKMedicalIDData *)self gregorianBirthday];

          v91 = self;
          if (!v555)
          {
            _HKInitializeLogging();
            v103 = HKLogMedicalID;
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v91 = self;
            goto LABEL_85;
          }
        }
      }
    }
  }

LABEL_86:
  v99 = [(_HKMedicalIDData *)v91 gregorianBirthday];
LABEL_87:
  v108 = objc_opt_self();
  [v108 setGregorianBirthday:v99];

  v109 = [(_HKMedicalIDData *)v91 gregorianBirthdayModifiedDate];
  v110 = objc_opt_self();
  [v110 setGregorianBirthdayModifiedDate:v109];

  v111 = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];
  if (v111)
  {
  }

  else
  {
    v112 = [(_HKMedicalIDData *)v4 primaryLanguageCodeModifiedDate];

    if (!v112)
    {
      v123 = [(_HKMedicalIDData *)self primaryLanguageCode];
      v124 = [(_HKMedicalIDData *)v4 primaryLanguageCode];

      if (v123 != v124)
      {
        _HKInitializeLogging();
        v125 = HKLogMedicalID;
        if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v126 = [(_HKMedicalIDData *)self primaryLanguageCode];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v127 = [(_HKMedicalIDData *)self primaryLanguageCode];

        v114 = v4;
        if (!v127)
        {
          goto LABEL_104;
        }

        v128 = [(_HKMedicalIDData *)self primaryLanguageCode];
        v129 = objc_opt_self();
        [v129 setPrimaryLanguageCode:v128];

        v126 = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];
        v130 = objc_opt_self();
        [v130 setPrimaryLanguageCodeModifiedDate:v126];
      }

      v114 = v4;
LABEL_103:

      goto LABEL_104;
    }
  }

  v113 = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];

  v114 = v4;
  if (v113)
  {
    v115 = [(_HKMedicalIDData *)v4 primaryLanguageCodeModifiedDate];

    v114 = self;
    if (v115)
    {
      v116 = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];
      v117 = [(_HKMedicalIDData *)v4 primaryLanguageCodeModifiedDate];
      v118 = [v116 hk_isBeforeDate:v117];

      v114 = v4;
      if ((v118 & 1) == 0)
      {
        v119 = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];
        v120 = [(_HKMedicalIDData *)v4 primaryLanguageCodeModifiedDate];
        v121 = [v119 hk_isAfterDate:v120];

        v122 = [(_HKMedicalIDData *)self primaryLanguageCode];
        if (v121)
        {
          v114 = self;
          goto LABEL_105;
        }

        v556 = [(_HKMedicalIDData *)v4 primaryLanguageCode];

        v114 = self;
        if (v122 != v556)
        {
          _HKInitializeLogging();
          v557 = HKLogMedicalID;
          if (os_log_type_enabled(v557, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v558 = [(_HKMedicalIDData *)self primaryLanguageCode];

          v114 = self;
          if (!v558)
          {
            _HKInitializeLogging();
            v126 = HKLogMedicalID;
            if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v114 = self;
            goto LABEL_103;
          }
        }
      }
    }
  }

LABEL_104:
  v122 = [(_HKMedicalIDData *)v114 primaryLanguageCode];
LABEL_105:
  v131 = objc_opt_self();
  [v131 setPrimaryLanguageCode:v122];

  v132 = [(_HKMedicalIDData *)v114 primaryLanguageCodeModifiedDate];
  v133 = objc_opt_self();
  [v133 setPrimaryLanguageCodeModifiedDate:v132];

  v134 = [(_HKMedicalIDData *)self heightModifiedDate];
  if (v134)
  {
  }

  else
  {
    v135 = [(_HKMedicalIDData *)v4 heightModifiedDate];

    if (!v135)
    {
      v146 = [(_HKMedicalIDData *)self height];
      v147 = [(_HKMedicalIDData *)v4 height];

      if (v146 != v147)
      {
        _HKInitializeLogging();
        v148 = HKLogMedicalID;
        if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v149 = [(_HKMedicalIDData *)self height];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v150 = [(_HKMedicalIDData *)self height];

        v137 = v4;
        if (!v150)
        {
          goto LABEL_122;
        }

        v151 = [(_HKMedicalIDData *)self height];
        v152 = objc_opt_self();
        [v152 setHeight:v151];

        v149 = [(_HKMedicalIDData *)self heightModifiedDate];
        v153 = objc_opt_self();
        [v153 setHeightModifiedDate:v149];
      }

      v137 = v4;
LABEL_121:

      goto LABEL_122;
    }
  }

  v136 = [(_HKMedicalIDData *)self heightModifiedDate];

  v137 = v4;
  if (v136)
  {
    v138 = [(_HKMedicalIDData *)v4 heightModifiedDate];

    v137 = self;
    if (v138)
    {
      v139 = [(_HKMedicalIDData *)self heightModifiedDate];
      v140 = [(_HKMedicalIDData *)v4 heightModifiedDate];
      v141 = [v139 hk_isBeforeDate:v140];

      v137 = v4;
      if ((v141 & 1) == 0)
      {
        v142 = [(_HKMedicalIDData *)self heightModifiedDate];
        v143 = [(_HKMedicalIDData *)v4 heightModifiedDate];
        v144 = [v142 hk_isAfterDate:v143];

        v145 = [(_HKMedicalIDData *)self height];
        if (v144)
        {
          v137 = self;
          goto LABEL_123;
        }

        v559 = [(_HKMedicalIDData *)v4 height];

        v137 = self;
        if (v145 != v559)
        {
          _HKInitializeLogging();
          v560 = HKLogMedicalID;
          if (os_log_type_enabled(v560, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v561 = [(_HKMedicalIDData *)self height];

          v137 = self;
          if (!v561)
          {
            _HKInitializeLogging();
            v149 = HKLogMedicalID;
            if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v137 = self;
            goto LABEL_121;
          }
        }
      }
    }
  }

LABEL_122:
  v145 = [(_HKMedicalIDData *)v137 height];
LABEL_123:
  v154 = objc_opt_self();
  [v154 setHeight:v145];

  v155 = [(_HKMedicalIDData *)v137 heightModifiedDate];
  v156 = objc_opt_self();
  [v156 setHeightModifiedDate:v155];

  v157 = [(_HKMedicalIDData *)self weightModifiedDate];
  if (v157)
  {
  }

  else
  {
    v158 = [(_HKMedicalIDData *)v4 weightModifiedDate];

    if (!v158)
    {
      v169 = [(_HKMedicalIDData *)self weight];
      v170 = [(_HKMedicalIDData *)v4 weight];

      if (v169 != v170)
      {
        _HKInitializeLogging();
        v171 = HKLogMedicalID;
        if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v172 = [(_HKMedicalIDData *)self weight];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v173 = [(_HKMedicalIDData *)self weight];

        v160 = v4;
        if (!v173)
        {
          goto LABEL_140;
        }

        v174 = [(_HKMedicalIDData *)self weight];
        v175 = objc_opt_self();
        [v175 setWeight:v174];

        v172 = [(_HKMedicalIDData *)self weightModifiedDate];
        v176 = objc_opt_self();
        [v176 setWeightModifiedDate:v172];
      }

      v160 = v4;
LABEL_139:

      goto LABEL_140;
    }
  }

  v159 = [(_HKMedicalIDData *)self weightModifiedDate];

  v160 = v4;
  if (v159)
  {
    v161 = [(_HKMedicalIDData *)v4 weightModifiedDate];

    v160 = self;
    if (v161)
    {
      v162 = [(_HKMedicalIDData *)self weightModifiedDate];
      v163 = [(_HKMedicalIDData *)v4 weightModifiedDate];
      v164 = [v162 hk_isBeforeDate:v163];

      v160 = v4;
      if ((v164 & 1) == 0)
      {
        v165 = [(_HKMedicalIDData *)self weightModifiedDate];
        v166 = [(_HKMedicalIDData *)v4 weightModifiedDate];
        v167 = [v165 hk_isAfterDate:v166];

        v168 = [(_HKMedicalIDData *)self weight];
        if (v167)
        {
          v160 = self;
          goto LABEL_141;
        }

        v562 = [(_HKMedicalIDData *)v4 weight];

        v160 = self;
        if (v168 != v562)
        {
          _HKInitializeLogging();
          v563 = HKLogMedicalID;
          if (os_log_type_enabled(v563, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v564 = [(_HKMedicalIDData *)self weight];

          v160 = self;
          if (!v564)
          {
            _HKInitializeLogging();
            v172 = HKLogMedicalID;
            if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v160 = self;
            goto LABEL_139;
          }
        }
      }
    }
  }

LABEL_140:
  v168 = [(_HKMedicalIDData *)v160 weight];
LABEL_141:
  v177 = objc_opt_self();
  [v177 setWeight:v168];

  v178 = [(_HKMedicalIDData *)v160 weightModifiedDate];
  v179 = objc_opt_self();
  [v179 setWeightModifiedDate:v178];

  v180 = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];
  if (v180)
  {
  }

  else
  {
    v181 = [(_HKMedicalIDData *)v4 isOrganDonorModifiedDate];

    if (!v181)
    {
      v192 = [(_HKMedicalIDData *)self isOrganDonor];
      v193 = [(_HKMedicalIDData *)v4 isOrganDonor];

      if (v192 != v193)
      {
        _HKInitializeLogging();
        v194 = HKLogMedicalID;
        if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v195 = [(_HKMedicalIDData *)self isOrganDonor];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v196 = [(_HKMedicalIDData *)self isOrganDonor];

        v183 = v4;
        if (!v196)
        {
          goto LABEL_158;
        }

        v197 = [(_HKMedicalIDData *)self isOrganDonor];
        v198 = objc_opt_self();
        [v198 setIsOrganDonor:v197];

        v195 = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];
        v199 = objc_opt_self();
        [v199 setIsOrganDonorModifiedDate:v195];
      }

      v183 = v4;
LABEL_157:

      goto LABEL_158;
    }
  }

  v182 = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];

  v183 = v4;
  if (v182)
  {
    v184 = [(_HKMedicalIDData *)v4 isOrganDonorModifiedDate];

    v183 = self;
    if (v184)
    {
      v185 = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];
      v186 = [(_HKMedicalIDData *)v4 isOrganDonorModifiedDate];
      v187 = [v185 hk_isBeforeDate:v186];

      v183 = v4;
      if ((v187 & 1) == 0)
      {
        v188 = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];
        v189 = [(_HKMedicalIDData *)v4 isOrganDonorModifiedDate];
        v190 = [v188 hk_isAfterDate:v189];

        v191 = [(_HKMedicalIDData *)self isOrganDonor];
        if (v190)
        {
          v183 = self;
          goto LABEL_159;
        }

        v565 = [(_HKMedicalIDData *)v4 isOrganDonor];

        v183 = self;
        if (v191 != v565)
        {
          _HKInitializeLogging();
          v566 = HKLogMedicalID;
          if (os_log_type_enabled(v566, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v567 = [(_HKMedicalIDData *)self isOrganDonor];

          v183 = self;
          if (!v567)
          {
            _HKInitializeLogging();
            v195 = HKLogMedicalID;
            if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v183 = self;
            goto LABEL_157;
          }
        }
      }
    }
  }

LABEL_158:
  v191 = [(_HKMedicalIDData *)v183 isOrganDonor];
LABEL_159:
  v200 = objc_opt_self();
  [v200 setIsOrganDonor:v191];

  v201 = [(_HKMedicalIDData *)v183 isOrganDonorModifiedDate];
  v202 = objc_opt_self();
  [v202 setIsOrganDonorModifiedDate:v201];

  v203 = [(_HKMedicalIDData *)self bloodTypeModifiedDate];
  if (v203)
  {

    goto LABEL_162;
  }

  v204 = [(_HKMedicalIDData *)v4 bloodTypeModifiedDate];

  if (v204)
  {
LABEL_162:
    v205 = [(_HKMedicalIDData *)self bloodTypeModifiedDate];

    v206 = v4;
    if (v205)
    {
      v207 = [(_HKMedicalIDData *)v4 bloodTypeModifiedDate];

      v206 = self;
      if (v207)
      {
        v208 = [(_HKMedicalIDData *)self bloodTypeModifiedDate];
        v209 = [(_HKMedicalIDData *)v4 bloodTypeModifiedDate];
        v210 = [v208 hk_isBeforeDate:v209];

        v206 = v4;
        if ((v210 & 1) == 0)
        {
          v211 = [(_HKMedicalIDData *)self bloodTypeModifiedDate];
          v212 = [(_HKMedicalIDData *)v4 bloodTypeModifiedDate];
          v213 = [v211 hk_isAfterDate:v212];

          v214 = [(_HKMedicalIDData *)self bloodType];
          v206 = self;
          if (v213)
          {
            goto LABEL_174;
          }

          v206 = self;
          if (v214 != [(_HKMedicalIDData *)v4 bloodType])
          {
            _HKInitializeLogging();
            v215 = HKLogMedicalID;
            if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

LABEL_172:

            v206 = self;
            goto LABEL_173;
          }
        }
      }
    }

    goto LABEL_173;
  }

  v216 = [(_HKMedicalIDData *)self bloodType];
  v206 = self;
  if (v216 != [(_HKMedicalIDData *)v4 bloodType])
  {
    _HKInitializeLogging();
    v215 = HKLogMedicalID;
    if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
    {
      [_HKMedicalIDData merge:];
    }

    goto LABEL_172;
  }

LABEL_173:
  v214 = [(_HKMedicalIDData *)v206 bloodType];
LABEL_174:
  v217 = objc_opt_self();
  [v217 setBloodType:v214];

  v218 = [(_HKMedicalIDData *)v206 bloodTypeModifiedDate];
  v219 = objc_opt_self();
  [v219 setBloodTypeModifiedDate:v218];

  v220 = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];
  if (v220)
  {
  }

  else
  {
    v221 = [(_HKMedicalIDData *)v4 emergencyContactsModifiedDate];

    if (!v221)
    {
      v232 = [(_HKMedicalIDData *)self emergencyContacts];
      v233 = [(_HKMedicalIDData *)v4 emergencyContacts];

      if (v232 != v233)
      {
        _HKInitializeLogging();
        v234 = HKLogMedicalID;
        if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v235 = [(_HKMedicalIDData *)self emergencyContacts];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v236 = [(_HKMedicalIDData *)self emergencyContacts];

        v223 = v4;
        if (!v236)
        {
          goto LABEL_191;
        }

        v237 = [(_HKMedicalIDData *)self emergencyContacts];
        v238 = objc_opt_self();
        [v238 setEmergencyContacts:v237];

        v235 = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];
        v239 = objc_opt_self();
        [v239 setEmergencyContactsModifiedDate:v235];
      }

      v223 = v4;
LABEL_190:

      goto LABEL_191;
    }
  }

  v222 = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];

  v223 = v4;
  if (v222)
  {
    v224 = [(_HKMedicalIDData *)v4 emergencyContactsModifiedDate];

    v223 = self;
    if (v224)
    {
      v225 = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];
      v226 = [(_HKMedicalIDData *)v4 emergencyContactsModifiedDate];
      v227 = [v225 hk_isBeforeDate:v226];

      v223 = v4;
      if ((v227 & 1) == 0)
      {
        v228 = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];
        v229 = [(_HKMedicalIDData *)v4 emergencyContactsModifiedDate];
        v230 = [v228 hk_isAfterDate:v229];

        v231 = [(_HKMedicalIDData *)self emergencyContacts];
        if (v230)
        {
          v223 = self;
          goto LABEL_192;
        }

        v568 = [(_HKMedicalIDData *)v4 emergencyContacts];

        v223 = self;
        if (v231 != v568)
        {
          _HKInitializeLogging();
          v569 = HKLogMedicalID;
          if (os_log_type_enabled(v569, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v570 = [(_HKMedicalIDData *)self emergencyContacts];

          v223 = self;
          if (!v570)
          {
            _HKInitializeLogging();
            v235 = HKLogMedicalID;
            if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v223 = self;
            goto LABEL_190;
          }
        }
      }
    }
  }

LABEL_191:
  v231 = [(_HKMedicalIDData *)v223 emergencyContacts];
LABEL_192:
  v240 = objc_opt_self();
  [v240 setEmergencyContacts:v231];

  v241 = [(_HKMedicalIDData *)v223 emergencyContactsModifiedDate];
  v242 = objc_opt_self();
  [v242 setEmergencyContactsModifiedDate:v241];

  v243 = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];
  if (v243)
  {
  }

  else
  {
    v244 = [(_HKMedicalIDData *)v4 clinicalContactsModifiedDate];

    if (!v244)
    {
      v255 = [(_HKMedicalIDData *)self clinicalContacts];
      v256 = [(_HKMedicalIDData *)v4 clinicalContacts];

      if (v255 != v256)
      {
        _HKInitializeLogging();
        v257 = HKLogMedicalID;
        if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v258 = [(_HKMedicalIDData *)self clinicalContacts];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v259 = [(_HKMedicalIDData *)self clinicalContacts];

        v246 = v4;
        if (!v259)
        {
          goto LABEL_209;
        }

        v260 = [(_HKMedicalIDData *)self clinicalContacts];
        v261 = objc_opt_self();
        [v261 setClinicalContacts:v260];

        v258 = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];
        v262 = objc_opt_self();
        [v262 setClinicalContactsModifiedDate:v258];
      }

      v246 = v4;
LABEL_208:

      goto LABEL_209;
    }
  }

  v245 = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];

  v246 = v4;
  if (v245)
  {
    v247 = [(_HKMedicalIDData *)v4 clinicalContactsModifiedDate];

    v246 = self;
    if (v247)
    {
      v248 = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];
      v249 = [(_HKMedicalIDData *)v4 clinicalContactsModifiedDate];
      v250 = [v248 hk_isBeforeDate:v249];

      v246 = v4;
      if ((v250 & 1) == 0)
      {
        v251 = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];
        v252 = [(_HKMedicalIDData *)v4 clinicalContactsModifiedDate];
        v253 = [v251 hk_isAfterDate:v252];

        v254 = [(_HKMedicalIDData *)self clinicalContacts];
        if (v253)
        {
          v246 = self;
          goto LABEL_210;
        }

        v571 = [(_HKMedicalIDData *)v4 clinicalContacts];

        v246 = self;
        if (v254 != v571)
        {
          _HKInitializeLogging();
          v572 = HKLogMedicalID;
          if (os_log_type_enabled(v572, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v573 = [(_HKMedicalIDData *)self clinicalContacts];

          v246 = self;
          if (!v573)
          {
            _HKInitializeLogging();
            v258 = HKLogMedicalID;
            if (os_log_type_enabled(v258, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v246 = self;
            goto LABEL_208;
          }
        }
      }
    }
  }

LABEL_209:
  v254 = [(_HKMedicalIDData *)v246 clinicalContacts];
LABEL_210:
  v263 = objc_opt_self();
  [v263 setClinicalContacts:v254];

  v264 = [(_HKMedicalIDData *)v246 clinicalContactsModifiedDate];
  v265 = objc_opt_self();
  [v265 setClinicalContactsModifiedDate:v264];

  v266 = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];
  if (v266)
  {
  }

  else
  {
    v267 = [(_HKMedicalIDData *)v4 medicalConditionsModifiedDate];

    if (!v267)
    {
      v278 = [(_HKMedicalIDData *)self medicalConditions];
      v279 = [(_HKMedicalIDData *)v4 medicalConditions];

      if (v278 != v279)
      {
        _HKInitializeLogging();
        v280 = HKLogMedicalID;
        if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v281 = [(_HKMedicalIDData *)self medicalConditions];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v282 = [(_HKMedicalIDData *)self medicalConditions];

        v269 = v4;
        if (!v282)
        {
          goto LABEL_227;
        }

        v283 = [(_HKMedicalIDData *)self medicalConditions];
        v284 = objc_opt_self();
        [v284 setMedicalConditions:v283];

        v281 = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];
        v285 = objc_opt_self();
        [v285 setMedicalConditionsModifiedDate:v281];
      }

      v269 = v4;
LABEL_226:

      goto LABEL_227;
    }
  }

  v268 = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];

  v269 = v4;
  if (v268)
  {
    v270 = [(_HKMedicalIDData *)v4 medicalConditionsModifiedDate];

    v269 = self;
    if (v270)
    {
      v271 = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];
      v272 = [(_HKMedicalIDData *)v4 medicalConditionsModifiedDate];
      v273 = [v271 hk_isBeforeDate:v272];

      v269 = v4;
      if ((v273 & 1) == 0)
      {
        v274 = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];
        v275 = [(_HKMedicalIDData *)v4 medicalConditionsModifiedDate];
        v276 = [v274 hk_isAfterDate:v275];

        v277 = [(_HKMedicalIDData *)self medicalConditions];
        if (v276)
        {
          v269 = self;
          goto LABEL_228;
        }

        v574 = [(_HKMedicalIDData *)v4 medicalConditions];

        v269 = self;
        if (v277 != v574)
        {
          _HKInitializeLogging();
          v575 = HKLogMedicalID;
          if (os_log_type_enabled(v575, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v576 = [(_HKMedicalIDData *)self medicalConditions];

          v269 = self;
          if (!v576)
          {
            _HKInitializeLogging();
            v281 = HKLogMedicalID;
            if (os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v269 = self;
            goto LABEL_226;
          }
        }
      }
    }
  }

LABEL_227:
  v277 = [(_HKMedicalIDData *)v269 medicalConditions];
LABEL_228:
  v286 = objc_opt_self();
  [v286 setMedicalConditions:v277];

  v287 = [(_HKMedicalIDData *)v269 medicalConditionsModifiedDate];
  v288 = objc_opt_self();
  [v288 setMedicalConditionsModifiedDate:v287];

  v289 = [(_HKMedicalIDData *)self medicalNotesModifiedDate];
  if (v289)
  {
  }

  else
  {
    v290 = [(_HKMedicalIDData *)v4 medicalNotesModifiedDate];

    if (!v290)
    {
      v301 = [(_HKMedicalIDData *)self medicalNotes];
      v302 = [(_HKMedicalIDData *)v4 medicalNotes];

      if (v301 != v302)
      {
        _HKInitializeLogging();
        v303 = HKLogMedicalID;
        if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v304 = [(_HKMedicalIDData *)self medicalNotes];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v305 = [(_HKMedicalIDData *)self medicalNotes];

        v292 = v4;
        if (!v305)
        {
          goto LABEL_245;
        }

        v306 = [(_HKMedicalIDData *)self medicalNotes];
        v307 = objc_opt_self();
        [v307 setMedicalNotes:v306];

        v304 = [(_HKMedicalIDData *)self medicalNotesModifiedDate];
        v308 = objc_opt_self();
        [v308 setMedicalNotesModifiedDate:v304];
      }

      v292 = v4;
LABEL_244:

      goto LABEL_245;
    }
  }

  v291 = [(_HKMedicalIDData *)self medicalNotesModifiedDate];

  v292 = v4;
  if (v291)
  {
    v293 = [(_HKMedicalIDData *)v4 medicalNotesModifiedDate];

    v292 = self;
    if (v293)
    {
      v294 = [(_HKMedicalIDData *)self medicalNotesModifiedDate];
      v295 = [(_HKMedicalIDData *)v4 medicalNotesModifiedDate];
      v296 = [v294 hk_isBeforeDate:v295];

      v292 = v4;
      if ((v296 & 1) == 0)
      {
        v297 = [(_HKMedicalIDData *)self medicalNotesModifiedDate];
        v298 = [(_HKMedicalIDData *)v4 medicalNotesModifiedDate];
        v299 = [v297 hk_isAfterDate:v298];

        v300 = [(_HKMedicalIDData *)self medicalNotes];
        if (v299)
        {
          v292 = self;
          goto LABEL_246;
        }

        v577 = [(_HKMedicalIDData *)v4 medicalNotes];

        v292 = self;
        if (v300 != v577)
        {
          _HKInitializeLogging();
          v578 = HKLogMedicalID;
          if (os_log_type_enabled(v578, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v579 = [(_HKMedicalIDData *)self medicalNotes];

          v292 = self;
          if (!v579)
          {
            _HKInitializeLogging();
            v304 = HKLogMedicalID;
            if (os_log_type_enabled(v304, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v292 = self;
            goto LABEL_244;
          }
        }
      }
    }
  }

LABEL_245:
  v300 = [(_HKMedicalIDData *)v292 medicalNotes];
LABEL_246:
  v309 = objc_opt_self();
  [v309 setMedicalNotes:v300];

  v310 = [(_HKMedicalIDData *)v292 medicalNotesModifiedDate];
  v311 = objc_opt_self();
  [v311 setMedicalNotesModifiedDate:v310];

  v312 = [(_HKMedicalIDData *)self allergyInfoModifiedDate];
  if (v312)
  {
  }

  else
  {
    v313 = [(_HKMedicalIDData *)v4 allergyInfoModifiedDate];

    if (!v313)
    {
      v324 = [(_HKMedicalIDData *)self allergyInfo];
      v325 = [(_HKMedicalIDData *)v4 allergyInfo];

      if (v324 != v325)
      {
        _HKInitializeLogging();
        v326 = HKLogMedicalID;
        if (os_log_type_enabled(v326, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v327 = [(_HKMedicalIDData *)self allergyInfo];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v328 = [(_HKMedicalIDData *)self allergyInfo];

        v315 = v4;
        if (!v328)
        {
          goto LABEL_263;
        }

        v329 = [(_HKMedicalIDData *)self allergyInfo];
        v330 = objc_opt_self();
        [v330 setAllergyInfo:v329];

        v327 = [(_HKMedicalIDData *)self allergyInfoModifiedDate];
        v331 = objc_opt_self();
        [v331 setAllergyInfoModifiedDate:v327];
      }

      v315 = v4;
LABEL_262:

      goto LABEL_263;
    }
  }

  v314 = [(_HKMedicalIDData *)self allergyInfoModifiedDate];

  v315 = v4;
  if (v314)
  {
    v316 = [(_HKMedicalIDData *)v4 allergyInfoModifiedDate];

    v315 = self;
    if (v316)
    {
      v317 = [(_HKMedicalIDData *)self allergyInfoModifiedDate];
      v318 = [(_HKMedicalIDData *)v4 allergyInfoModifiedDate];
      v319 = [v317 hk_isBeforeDate:v318];

      v315 = v4;
      if ((v319 & 1) == 0)
      {
        v320 = [(_HKMedicalIDData *)self allergyInfoModifiedDate];
        v321 = [(_HKMedicalIDData *)v4 allergyInfoModifiedDate];
        v322 = [v320 hk_isAfterDate:v321];

        v323 = [(_HKMedicalIDData *)self allergyInfo];
        if (v322)
        {
          v315 = self;
          goto LABEL_264;
        }

        v580 = [(_HKMedicalIDData *)v4 allergyInfo];

        v315 = self;
        if (v323 != v580)
        {
          _HKInitializeLogging();
          v581 = HKLogMedicalID;
          if (os_log_type_enabled(v581, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v582 = [(_HKMedicalIDData *)self allergyInfo];

          v315 = self;
          if (!v582)
          {
            _HKInitializeLogging();
            v327 = HKLogMedicalID;
            if (os_log_type_enabled(v327, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v315 = self;
            goto LABEL_262;
          }
        }
      }
    }
  }

LABEL_263:
  v323 = [(_HKMedicalIDData *)v315 allergyInfo];
LABEL_264:
  v332 = objc_opt_self();
  [v332 setAllergyInfo:v323];

  v333 = [(_HKMedicalIDData *)v315 allergyInfoModifiedDate];
  v334 = objc_opt_self();
  [v334 setAllergyInfoModifiedDate:v333];

  v335 = [(_HKMedicalIDData *)self medicationInfoModifiedDate];
  if (v335)
  {
  }

  else
  {
    v336 = [(_HKMedicalIDData *)v4 medicationInfoModifiedDate];

    if (!v336)
    {
      v347 = [(_HKMedicalIDData *)self medicationInfo];
      v348 = [(_HKMedicalIDData *)v4 medicationInfo];

      if (v347 != v348)
      {
        _HKInitializeLogging();
        v349 = HKLogMedicalID;
        if (os_log_type_enabled(v349, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v350 = [(_HKMedicalIDData *)self medicationInfo];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v351 = [(_HKMedicalIDData *)self medicationInfo];

        v338 = v4;
        if (!v351)
        {
          goto LABEL_281;
        }

        v352 = [(_HKMedicalIDData *)self medicationInfo];
        v353 = objc_opt_self();
        [v353 setMedicationInfo:v352];

        v350 = [(_HKMedicalIDData *)self medicationInfoModifiedDate];
        v354 = objc_opt_self();
        [v354 setMedicationInfoModifiedDate:v350];
      }

      v338 = v4;
LABEL_280:

      goto LABEL_281;
    }
  }

  v337 = [(_HKMedicalIDData *)self medicationInfoModifiedDate];

  v338 = v4;
  if (v337)
  {
    v339 = [(_HKMedicalIDData *)v4 medicationInfoModifiedDate];

    v338 = self;
    if (v339)
    {
      v340 = [(_HKMedicalIDData *)self medicationInfoModifiedDate];
      v341 = [(_HKMedicalIDData *)v4 medicationInfoModifiedDate];
      v342 = [v340 hk_isBeforeDate:v341];

      v338 = v4;
      if ((v342 & 1) == 0)
      {
        v343 = [(_HKMedicalIDData *)self medicationInfoModifiedDate];
        v344 = [(_HKMedicalIDData *)v4 medicationInfoModifiedDate];
        v345 = [v343 hk_isAfterDate:v344];

        v346 = [(_HKMedicalIDData *)self medicationInfo];
        if (v345)
        {
          v338 = self;
          goto LABEL_282;
        }

        v583 = [(_HKMedicalIDData *)v4 medicationInfo];

        v338 = self;
        if (v346 != v583)
        {
          _HKInitializeLogging();
          v584 = HKLogMedicalID;
          if (os_log_type_enabled(v584, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v585 = [(_HKMedicalIDData *)self medicationInfo];

          v338 = self;
          if (!v585)
          {
            _HKInitializeLogging();
            v350 = HKLogMedicalID;
            if (os_log_type_enabled(v350, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v338 = self;
            goto LABEL_280;
          }
        }
      }
    }
  }

LABEL_281:
  v346 = [(_HKMedicalIDData *)v338 medicationInfo];
LABEL_282:
  v355 = objc_opt_self();
  [v355 setMedicationInfo:v346];

  v356 = [(_HKMedicalIDData *)v338 medicationInfoModifiedDate];
  v357 = objc_opt_self();
  [v357 setMedicationInfoModifiedDate:v356];

  v358 = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];
  if (v358)
  {
  }

  else
  {
    v359 = [(_HKMedicalIDData *)v4 pregnancyStartDateModifiedDate];

    if (!v359)
    {
      v370 = [(_HKMedicalIDData *)self pregnancyStartDate];
      v371 = [(_HKMedicalIDData *)v4 pregnancyStartDate];

      if (v370 != v371)
      {
        _HKInitializeLogging();
        v372 = HKLogMedicalID;
        if (os_log_type_enabled(v372, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v373 = [(_HKMedicalIDData *)self pregnancyStartDate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v374 = [(_HKMedicalIDData *)self pregnancyStartDate];

        v361 = v4;
        if (!v374)
        {
          goto LABEL_299;
        }

        v375 = [(_HKMedicalIDData *)self pregnancyStartDate];
        v376 = objc_opt_self();
        [v376 setPregnancyStartDate:v375];

        v373 = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];
        v377 = objc_opt_self();
        [v377 setPregnancyStartDateModifiedDate:v373];
      }

      v361 = v4;
LABEL_298:

      goto LABEL_299;
    }
  }

  v360 = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];

  v361 = v4;
  if (v360)
  {
    v362 = [(_HKMedicalIDData *)v4 pregnancyStartDateModifiedDate];

    v361 = self;
    if (v362)
    {
      v363 = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];
      v364 = [(_HKMedicalIDData *)v4 pregnancyStartDateModifiedDate];
      v365 = [v363 hk_isBeforeDate:v364];

      v361 = v4;
      if ((v365 & 1) == 0)
      {
        v366 = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];
        v367 = [(_HKMedicalIDData *)v4 pregnancyStartDateModifiedDate];
        v368 = [v366 hk_isAfterDate:v367];

        v369 = [(_HKMedicalIDData *)self pregnancyStartDate];
        if (v368)
        {
          v361 = self;
          goto LABEL_300;
        }

        v586 = [(_HKMedicalIDData *)v4 pregnancyStartDate];

        v361 = self;
        if (v369 != v586)
        {
          _HKInitializeLogging();
          v587 = HKLogMedicalID;
          if (os_log_type_enabled(v587, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v588 = [(_HKMedicalIDData *)self pregnancyStartDate];

          v361 = self;
          if (!v588)
          {
            _HKInitializeLogging();
            v373 = HKLogMedicalID;
            if (os_log_type_enabled(v373, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v361 = self;
            goto LABEL_298;
          }
        }
      }
    }
  }

LABEL_299:
  v369 = [(_HKMedicalIDData *)v361 pregnancyStartDate];
LABEL_300:
  v378 = objc_opt_self();
  [v378 setPregnancyStartDate:v369];

  v379 = [(_HKMedicalIDData *)v361 pregnancyStartDateModifiedDate];
  v380 = objc_opt_self();
  [v380 setPregnancyStartDateModifiedDate:v379];

  v381 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];
  if (v381)
  {
  }

  else
  {
    v382 = [(_HKMedicalIDData *)v4 pregnancyEstimatedDueDateModifiedDate];

    if (!v382)
    {
      v393 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
      v394 = [(_HKMedicalIDData *)v4 pregnancyEstimatedDueDate];

      if (v393 != v394)
      {
        _HKInitializeLogging();
        v395 = HKLogMedicalID;
        if (os_log_type_enabled(v395, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v396 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v397 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];

        v384 = v4;
        if (!v397)
        {
          goto LABEL_317;
        }

        v398 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
        v399 = objc_opt_self();
        [v399 setPregnancyEstimatedDueDate:v398];

        v396 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];
        v400 = objc_opt_self();
        [v400 setPregnancyEstimatedDueDateModifiedDate:v396];
      }

      v384 = v4;
LABEL_316:

      goto LABEL_317;
    }
  }

  v383 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];

  v384 = v4;
  if (v383)
  {
    v385 = [(_HKMedicalIDData *)v4 pregnancyEstimatedDueDateModifiedDate];

    v384 = self;
    if (v385)
    {
      v386 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];
      v387 = [(_HKMedicalIDData *)v4 pregnancyEstimatedDueDateModifiedDate];
      v388 = [v386 hk_isBeforeDate:v387];

      v384 = v4;
      if ((v388 & 1) == 0)
      {
        v389 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];
        v390 = [(_HKMedicalIDData *)v4 pregnancyEstimatedDueDateModifiedDate];
        v391 = [v389 hk_isAfterDate:v390];

        v392 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
        if (v391)
        {
          v384 = self;
          goto LABEL_318;
        }

        v589 = [(_HKMedicalIDData *)v4 pregnancyEstimatedDueDate];

        v384 = self;
        if (v392 != v589)
        {
          _HKInitializeLogging();
          v590 = HKLogMedicalID;
          if (os_log_type_enabled(v590, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v591 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];

          v384 = self;
          if (!v591)
          {
            _HKInitializeLogging();
            v396 = HKLogMedicalID;
            if (os_log_type_enabled(v396, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v384 = self;
            goto LABEL_316;
          }
        }
      }
    }
  }

LABEL_317:
  v392 = [(_HKMedicalIDData *)v384 pregnancyEstimatedDueDate];
LABEL_318:
  v401 = objc_opt_self();
  [v401 setPregnancyEstimatedDueDate:v392];

  v402 = [(_HKMedicalIDData *)v384 pregnancyEstimatedDueDateModifiedDate];
  v403 = objc_opt_self();
  [v403 setPregnancyEstimatedDueDateModifiedDate:v402];

  v404 = [(_HKMedicalIDData *)self medicationsListModifiedDate];
  if (v404)
  {
  }

  else
  {
    v405 = [(_HKMedicalIDData *)v4 medicationsListModifiedDate];

    if (!v405)
    {
      v416 = [(_HKMedicalIDData *)self medicationsList];
      v417 = [(_HKMedicalIDData *)v4 medicationsList];

      if (v416 != v417)
      {
        _HKInitializeLogging();
        v418 = HKLogMedicalID;
        if (os_log_type_enabled(v418, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v419 = [(_HKMedicalIDData *)self medicationsList];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v420 = [(_HKMedicalIDData *)self medicationsList];

        v407 = v4;
        if (!v420)
        {
          goto LABEL_335;
        }

        v421 = [(_HKMedicalIDData *)self medicationsList];
        v422 = objc_opt_self();
        [v422 setMedicationsList:v421];

        v419 = [(_HKMedicalIDData *)self medicationsListModifiedDate];
        v423 = objc_opt_self();
        [v423 setMedicationsListModifiedDate:v419];
      }

      v407 = v4;
LABEL_334:

      goto LABEL_335;
    }
  }

  v406 = [(_HKMedicalIDData *)self medicationsListModifiedDate];

  v407 = v4;
  if (v406)
  {
    v408 = [(_HKMedicalIDData *)v4 medicationsListModifiedDate];

    v407 = self;
    if (v408)
    {
      v409 = [(_HKMedicalIDData *)self medicationsListModifiedDate];
      v410 = [(_HKMedicalIDData *)v4 medicationsListModifiedDate];
      v411 = [v409 hk_isBeforeDate:v410];

      v407 = v4;
      if ((v411 & 1) == 0)
      {
        v412 = [(_HKMedicalIDData *)self medicationsListModifiedDate];
        v413 = [(_HKMedicalIDData *)v4 medicationsListModifiedDate];
        v414 = [v412 hk_isAfterDate:v413];

        v415 = [(_HKMedicalIDData *)self medicationsList];
        if (v414)
        {
          v407 = self;
          goto LABEL_336;
        }

        v592 = [(_HKMedicalIDData *)v4 medicationsList];

        v407 = self;
        if (v415 != v592)
        {
          _HKInitializeLogging();
          v593 = HKLogMedicalID;
          if (os_log_type_enabled(v593, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v594 = [(_HKMedicalIDData *)self medicationsList];

          v407 = self;
          if (!v594)
          {
            _HKInitializeLogging();
            v419 = HKLogMedicalID;
            if (os_log_type_enabled(v419, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v407 = self;
            goto LABEL_334;
          }
        }
      }
    }
  }

LABEL_335:
  v415 = [(_HKMedicalIDData *)v407 medicationsList];
LABEL_336:
  v424 = objc_opt_self();
  [v424 setMedicationsList:v415];

  v425 = [(_HKMedicalIDData *)v407 medicationsListModifiedDate];
  v426 = objc_opt_self();
  [v426 setMedicationsListModifiedDate:v425];

  v427 = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];
  if (v427)
  {
  }

  else
  {
    v428 = [(_HKMedicalIDData *)v4 medicationsListVersionModifiedDate];

    if (!v428)
    {
      v439 = [(_HKMedicalIDData *)self medicationsListVersion];
      v440 = [(_HKMedicalIDData *)v4 medicationsListVersion];

      if (v439 != v440)
      {
        _HKInitializeLogging();
        v441 = HKLogMedicalID;
        if (os_log_type_enabled(v441, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v442 = [(_HKMedicalIDData *)self medicationsListVersion];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v443 = [(_HKMedicalIDData *)self medicationsListVersion];

        v430 = v4;
        if (!v443)
        {
          goto LABEL_353;
        }

        v444 = [(_HKMedicalIDData *)self medicationsListVersion];
        v445 = objc_opt_self();
        [v445 setMedicationsListVersion:v444];

        v442 = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];
        v446 = objc_opt_self();
        [v446 setMedicationsListVersionModifiedDate:v442];
      }

      v430 = v4;
LABEL_352:

      goto LABEL_353;
    }
  }

  v429 = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];

  v430 = v4;
  if (v429)
  {
    v431 = [(_HKMedicalIDData *)v4 medicationsListVersionModifiedDate];

    v430 = self;
    if (v431)
    {
      v432 = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];
      v433 = [(_HKMedicalIDData *)v4 medicationsListVersionModifiedDate];
      v434 = [v432 hk_isBeforeDate:v433];

      v430 = v4;
      if ((v434 & 1) == 0)
      {
        v435 = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];
        v436 = [(_HKMedicalIDData *)v4 medicationsListVersionModifiedDate];
        v437 = [v435 hk_isAfterDate:v436];

        v438 = [(_HKMedicalIDData *)self medicationsListVersion];
        if (v437)
        {
          v430 = self;
          goto LABEL_354;
        }

        v595 = [(_HKMedicalIDData *)v4 medicationsListVersion];

        v430 = self;
        if (v438 != v595)
        {
          _HKInitializeLogging();
          v596 = HKLogMedicalID;
          if (os_log_type_enabled(v596, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v597 = [(_HKMedicalIDData *)self medicationsListVersion];

          v430 = self;
          if (!v597)
          {
            _HKInitializeLogging();
            v442 = HKLogMedicalID;
            if (os_log_type_enabled(v442, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v430 = self;
            goto LABEL_352;
          }
        }
      }
    }
  }

LABEL_353:
  v438 = [(_HKMedicalIDData *)v430 medicationsListVersion];
LABEL_354:
  v447 = objc_opt_self();
  [v447 setMedicationsListVersion:v438];

  v448 = [(_HKMedicalIDData *)v430 medicationsListVersionModifiedDate];
  v449 = objc_opt_self();
  [v449 setMedicationsListVersionModifiedDate:v448];

  v450 = [(_HKMedicalIDData *)self allergiesListModifiedDate];
  if (v450)
  {
  }

  else
  {
    v451 = [(_HKMedicalIDData *)v4 allergiesListModifiedDate];

    if (!v451)
    {
      v462 = [(_HKMedicalIDData *)self allergiesList];
      v463 = [(_HKMedicalIDData *)v4 allergiesList];

      if (v462 != v463)
      {
        _HKInitializeLogging();
        v464 = HKLogMedicalID;
        if (os_log_type_enabled(v464, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v465 = [(_HKMedicalIDData *)self allergiesList];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v466 = [(_HKMedicalIDData *)self allergiesList];

        v453 = v4;
        if (!v466)
        {
          goto LABEL_371;
        }

        v467 = [(_HKMedicalIDData *)self allergiesList];
        v468 = objc_opt_self();
        [v468 setAllergiesList:v467];

        v465 = [(_HKMedicalIDData *)self allergiesListModifiedDate];
        v469 = objc_opt_self();
        [v469 setAllergiesListModifiedDate:v465];
      }

      v453 = v4;
LABEL_370:

      goto LABEL_371;
    }
  }

  v452 = [(_HKMedicalIDData *)self allergiesListModifiedDate];

  v453 = v4;
  if (v452)
  {
    v454 = [(_HKMedicalIDData *)v4 allergiesListModifiedDate];

    v453 = self;
    if (v454)
    {
      v455 = [(_HKMedicalIDData *)self allergiesListModifiedDate];
      v456 = [(_HKMedicalIDData *)v4 allergiesListModifiedDate];
      v457 = [v455 hk_isBeforeDate:v456];

      v453 = v4;
      if ((v457 & 1) == 0)
      {
        v458 = [(_HKMedicalIDData *)self allergiesListModifiedDate];
        v459 = [(_HKMedicalIDData *)v4 allergiesListModifiedDate];
        v460 = [v458 hk_isAfterDate:v459];

        v461 = [(_HKMedicalIDData *)self allergiesList];
        if (v460)
        {
          v453 = self;
          goto LABEL_372;
        }

        v598 = [(_HKMedicalIDData *)v4 allergiesList];

        v453 = self;
        if (v461 != v598)
        {
          _HKInitializeLogging();
          v599 = HKLogMedicalID;
          if (os_log_type_enabled(v599, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v600 = [(_HKMedicalIDData *)self allergiesList];

          v453 = self;
          if (!v600)
          {
            _HKInitializeLogging();
            v465 = HKLogMedicalID;
            if (os_log_type_enabled(v465, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v453 = self;
            goto LABEL_370;
          }
        }
      }
    }
  }

LABEL_371:
  v461 = [(_HKMedicalIDData *)v453 allergiesList];
LABEL_372:
  v470 = objc_opt_self();
  [v470 setAllergiesList:v461];

  v471 = [(_HKMedicalIDData *)v453 allergiesListModifiedDate];
  v472 = objc_opt_self();
  [v472 setAllergiesListModifiedDate:v471];

  v473 = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];
  if (v473)
  {
  }

  else
  {
    v474 = [(_HKMedicalIDData *)v4 allergiesListVersionModifiedDate];

    if (!v474)
    {
      v485 = [(_HKMedicalIDData *)self allergiesListVersion];
      v486 = [(_HKMedicalIDData *)v4 allergiesListVersion];

      if (v485 != v486)
      {
        _HKInitializeLogging();
        v487 = HKLogMedicalID;
        if (os_log_type_enabled(v487, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v488 = [(_HKMedicalIDData *)self allergiesListVersion];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v489 = [(_HKMedicalIDData *)self allergiesListVersion];

        v476 = v4;
        if (!v489)
        {
          goto LABEL_389;
        }

        v490 = [(_HKMedicalIDData *)self allergiesListVersion];
        v491 = objc_opt_self();
        [v491 setAllergiesListVersion:v490];

        v488 = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];
        v492 = objc_opt_self();
        [v492 setAllergiesListVersionModifiedDate:v488];
      }

      v476 = v4;
LABEL_388:

      goto LABEL_389;
    }
  }

  v475 = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];

  v476 = v4;
  if (v475)
  {
    v477 = [(_HKMedicalIDData *)v4 allergiesListVersionModifiedDate];

    v476 = self;
    if (v477)
    {
      v478 = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];
      v479 = [(_HKMedicalIDData *)v4 allergiesListVersionModifiedDate];
      v480 = [v478 hk_isBeforeDate:v479];

      v476 = v4;
      if ((v480 & 1) == 0)
      {
        v481 = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];
        v482 = [(_HKMedicalIDData *)v4 allergiesListVersionModifiedDate];
        v483 = [v481 hk_isAfterDate:v482];

        v484 = [(_HKMedicalIDData *)self allergiesListVersion];
        if (v483)
        {
          v476 = self;
          goto LABEL_390;
        }

        v601 = [(_HKMedicalIDData *)v4 allergiesListVersion];

        v476 = self;
        if (v484 != v601)
        {
          _HKInitializeLogging();
          v602 = HKLogMedicalID;
          if (os_log_type_enabled(v602, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v603 = [(_HKMedicalIDData *)self allergiesListVersion];

          v476 = self;
          if (!v603)
          {
            _HKInitializeLogging();
            v488 = HKLogMedicalID;
            if (os_log_type_enabled(v488, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v476 = self;
            goto LABEL_388;
          }
        }
      }
    }
  }

LABEL_389:
  v484 = [(_HKMedicalIDData *)v476 allergiesListVersion];
LABEL_390:
  v493 = objc_opt_self();
  [v493 setAllergiesListVersion:v484];

  v494 = [(_HKMedicalIDData *)v476 allergiesListVersionModifiedDate];
  v495 = objc_opt_self();
  [v495 setAllergiesListVersionModifiedDate:v494];

  v496 = [(_HKMedicalIDData *)self conditionsListModifiedDate];
  if (v496)
  {
  }

  else
  {
    v497 = [(_HKMedicalIDData *)v4 conditionsListModifiedDate];

    if (!v497)
    {
      v508 = [(_HKMedicalIDData *)self conditionsList];
      v509 = [(_HKMedicalIDData *)v4 conditionsList];

      if (v508 != v509)
      {
        _HKInitializeLogging();
        v510 = HKLogMedicalID;
        if (os_log_type_enabled(v510, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v511 = [(_HKMedicalIDData *)self conditionsList];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v512 = [(_HKMedicalIDData *)self conditionsList];

        v499 = v4;
        if (!v512)
        {
          goto LABEL_407;
        }

        v513 = [(_HKMedicalIDData *)self conditionsList];
        v514 = objc_opt_self();
        [v514 setConditionsList:v513];

        v511 = [(_HKMedicalIDData *)self conditionsListModifiedDate];
        v515 = objc_opt_self();
        [v515 setConditionsListModifiedDate:v511];
      }

      v499 = v4;
LABEL_406:

      goto LABEL_407;
    }
  }

  v498 = [(_HKMedicalIDData *)self conditionsListModifiedDate];

  v499 = v4;
  if (v498)
  {
    v500 = [(_HKMedicalIDData *)v4 conditionsListModifiedDate];

    v499 = self;
    if (v500)
    {
      v501 = [(_HKMedicalIDData *)self conditionsListModifiedDate];
      v502 = [(_HKMedicalIDData *)v4 conditionsListModifiedDate];
      v503 = [v501 hk_isBeforeDate:v502];

      v499 = v4;
      if ((v503 & 1) == 0)
      {
        v504 = [(_HKMedicalIDData *)self conditionsListModifiedDate];
        v505 = [(_HKMedicalIDData *)v4 conditionsListModifiedDate];
        v506 = [v504 hk_isAfterDate:v505];

        v507 = [(_HKMedicalIDData *)self conditionsList];
        if (v506)
        {
          v499 = self;
          goto LABEL_408;
        }

        v604 = [(_HKMedicalIDData *)v4 conditionsList];

        v499 = self;
        if (v507 != v604)
        {
          _HKInitializeLogging();
          v605 = HKLogMedicalID;
          if (os_log_type_enabled(v605, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          v606 = [(_HKMedicalIDData *)self conditionsList];

          v499 = self;
          if (!v606)
          {
            _HKInitializeLogging();
            v511 = HKLogMedicalID;
            if (os_log_type_enabled(v511, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            v499 = self;
            goto LABEL_406;
          }
        }
      }
    }
  }

LABEL_407:
  v507 = [(_HKMedicalIDData *)v499 conditionsList];
LABEL_408:
  v516 = objc_opt_self();
  [v516 setConditionsList:v507];

  v517 = [(_HKMedicalIDData *)v499 conditionsListModifiedDate];
  v518 = objc_opt_self();
  [v518 setConditionsListModifiedDate:v517];

  v519 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
  if (v519)
  {
  }

  else
  {
    v520 = [(_HKMedicalIDData *)v4 conditionsListVersionModifiedDate];

    if (!v520)
    {
      v535 = [(_HKMedicalIDData *)self conditionsListVersion];
      v536 = [(_HKMedicalIDData *)v4 conditionsListVersion];

      if (v535 != v536)
      {
        _HKInitializeLogging();
        v537 = HKLogMedicalID;
        if (os_log_type_enabled(v537, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      v534 = [(_HKMedicalIDData *)self conditionsListVersion];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v538 = [(_HKMedicalIDData *)self conditionsListVersion];

        v522 = v4;
        if (!v538)
        {
          goto LABEL_431;
        }

        v539 = [(_HKMedicalIDData *)self conditionsListVersion];
        v540 = objc_opt_self();
        [v540 setConditionsListVersion:v539];

        v534 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
        v541 = objc_opt_self();
        [v541 setConditionsListVersionModifiedDate:v534];
      }

      self = v4;
LABEL_429:

      goto LABEL_430;
    }
  }

  v521 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];

  v522 = v4;
  if (!v521)
  {
    goto LABEL_431;
  }

  v523 = [(_HKMedicalIDData *)v4 conditionsListVersionModifiedDate];

  if (!v523)
  {
LABEL_430:
    v522 = self;
    goto LABEL_431;
  }

  v524 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
  v525 = [(_HKMedicalIDData *)v4 conditionsListVersionModifiedDate];
  v526 = [v524 hk_isBeforeDate:v525];

  v522 = v4;
  if (v526)
  {
LABEL_431:
    v530 = [(_HKMedicalIDData *)v522 conditionsListVersion];
    self = v522;
    goto LABEL_432;
  }

  v527 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
  v528 = [(_HKMedicalIDData *)v4 conditionsListVersionModifiedDate];
  v529 = [v527 hk_isAfterDate:v528];

  v530 = [(_HKMedicalIDData *)self conditionsListVersion];
  if ((v529 & 1) == 0)
  {
    v531 = [(_HKMedicalIDData *)v4 conditionsListVersion];

    if (v530 == v531)
    {
      goto LABEL_430;
    }

    _HKInitializeLogging();
    v532 = HKLogMedicalID;
    if (os_log_type_enabled(v532, OS_LOG_TYPE_ERROR))
    {
      [_HKMedicalIDData merge:];
    }

    v533 = [(_HKMedicalIDData *)self conditionsListVersion];

    if (v533)
    {
      goto LABEL_430;
    }

    _HKInitializeLogging();
    v534 = HKLogMedicalID;
    if (os_log_type_enabled(v534, OS_LOG_TYPE_ERROR))
    {
      [_HKMedicalIDData merge:];
    }

    goto LABEL_429;
  }

LABEL_432:
  v542 = objc_opt_self();
  [v542 setConditionsListVersion:v530];

  v543 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
  v544 = objc_opt_self();
  [v544 setConditionsListVersionModifiedDate:v543];

  v545 = v5;
  return v5;
}

- (id)consolidatedSOSContactsWithSOSContactsManager:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = [a3 legacyContactsManager];
  v33 = [v4 SOSLegacyContacts];
  v5 = [(_HKMedicalIDData *)self emergencyContacts];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
  }

  v34 = v8;

  v9 = [MEMORY[0x1E695DFA0] orderedSet];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = [(_HKMedicalIDData *)self emergencyContacts];
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        v16 = objc_alloc_init(_HKEmergencyContactWrapper);
        [(_HKEmergencyContactWrapper *)v16 setContact:v15];
        [v9 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v12);
  }

  v17 = v33;
  if ([v33 count])
  {
    v32 = v4;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = v33;
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v35 + 1) + 8 * j);
          v24 = objc_alloc_init(_HKEmergencyContact);
          v25 = [v23 name];
          [(_HKEmergencyContact *)v24 setName:v25];

          v26 = [v23 nameContactIdentifier];
          [(_HKEmergencyContact *)v24 setNameContactIdentifier:v26];

          v27 = [v23 phoneNumber];
          [(_HKEmergencyContact *)v24 setPhoneNumber:v27];

          v28 = [v23 phoneNumberContactIdentifier];
          [(_HKEmergencyContact *)v24 setPhoneNumberContactIdentifier:v28];

          v29 = objc_alloc_init(_HKEmergencyContactWrapper);
          [(_HKEmergencyContactWrapper *)v29 setContact:v24];
          if (([v9 containsObject:v29] & 1) == 0)
          {
            [v34 addObject:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v20);
    }

    v4 = v32;
    v17 = v33;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v34;
}

- (void)setGregorianBirthday:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"_HKMedicalIDData.m" lineNumber:639 description:@"Only date components with a gregorian calendar attached is accepted"];
}

- (void)merge:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Disabled");
  v2 = [OUTLINED_FUNCTION_4_2() isDisabledModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Disabled");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Share During Emergency");
  v2 = [OUTLINED_FUNCTION_4_2() shareDuringEmergencyModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Share During Emergency");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Picture");
  v2 = [OUTLINED_FUNCTION_4_2() pictureDataModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Picture");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Picture");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.8()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Name");
  v2 = [OUTLINED_FUNCTION_4_2() nameModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.9()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Name");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.10()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Name");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.11()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Gregorian Birthday");
  v2 = [OUTLINED_FUNCTION_4_2() gregorianBirthdayModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.12()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Gregorian Birthday");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.13()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Gregorian Birthday");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.14()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Primary Language Code");
  v2 = [OUTLINED_FUNCTION_4_2() primaryLanguageCodeModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.15()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Primary Language Code");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.16()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Primary Language Code");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.17()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Height");
  v2 = [OUTLINED_FUNCTION_4_2() heightModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.18()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Height");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.19()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Height");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.20()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Weight");
  v2 = [OUTLINED_FUNCTION_4_2() weightModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.21()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Weight");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.22()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Weight");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.23()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Organ Donor");
  v2 = [OUTLINED_FUNCTION_4_2() isOrganDonorModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.24()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Organ Donor");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.25()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Organ Donor");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.26()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Blood Type");
  v2 = [OUTLINED_FUNCTION_4_2() bloodTypeModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.27()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Blood Type");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.28()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Emergency Contacts");
  v2 = [OUTLINED_FUNCTION_4_2() emergencyContactsModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.29()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Emergency Contacts");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.30()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Emergency Contacts");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.31()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Clinical Contacts");
  v2 = [OUTLINED_FUNCTION_4_2() clinicalContactsModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.32()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Clinical Contacts");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.33()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Clinical Contacts");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.34()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Medical Conditions");
  v2 = [OUTLINED_FUNCTION_4_2() medicalConditionsModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.35()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Medical Conditions");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.36()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Medical Conditions");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.37()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Medical Notes");
  v2 = [OUTLINED_FUNCTION_4_2() medicalNotesModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.38()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Medical Notes");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.39()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Medical Notes");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.40()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Allergy");
  v2 = [OUTLINED_FUNCTION_4_2() allergyInfoModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.41()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Allergy");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.42()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Allergy");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.43()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Medication");
  v2 = [OUTLINED_FUNCTION_4_2() medicationInfoModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.44()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Medication");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.45()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Medication");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.46()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Pregnancy Start Date");
  v2 = [OUTLINED_FUNCTION_4_2() pregnancyStartDateModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.47()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Pregnancy Start Date");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.48()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Pregnancy Start Date");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.49()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Pregnancy Estimated Due Date");
  v2 = [OUTLINED_FUNCTION_4_2() pregnancyEstimatedDueDateModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.50()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Pregnancy Estimated Due Date");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.51()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Pregnancy Estimated Due Date");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.52()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Medications List");
  v2 = [OUTLINED_FUNCTION_4_2() medicationsListModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.53()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Medications List");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.54()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Medications List");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.55()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Medications List Version");
  v2 = [OUTLINED_FUNCTION_4_2() medicationsListVersionModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.56()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Medications List Version");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.57()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Medications List Version");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.58()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Allergies List");
  v2 = [OUTLINED_FUNCTION_4_2() allergiesListModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.59()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Allergies List");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.60()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Allergies List");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.61()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Allergies List Version");
  v2 = [OUTLINED_FUNCTION_4_2() allergiesListVersionModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.62()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Allergies List Version");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.63()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Allergies List Version");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.64()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Conditions List");
  v2 = [OUTLINED_FUNCTION_4_2() conditionsListModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.65()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Conditions List");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.66()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Conditions List");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.67()
{
  OUTLINED_FUNCTION_0_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = HKSensitiveLogItem(@"Conditions List Version");
  v2 = [OUTLINED_FUNCTION_4_2() conditionsListVersionModifiedDate];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.68()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Conditions List Version");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)merge:.cold.69()
{
  OUTLINED_FUNCTION_0_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = HKSensitiveLogItem(@"Conditions List Version");
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end