@interface _HKMedicalIDData
- (BOOL)hasAnyData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSyncedData:(id)data;
- (NSDate)dateSaved;
- (NSDateComponents)gregorianBirthday;
- (_HKMedicalIDData)init;
- (_HKMedicalIDData)initWithCoder:(id)coder;
- (id)_gregorianUtcCalendar;
- (id)consolidatedSOSContactsWithSOSContactsManager:(id)manager;
- (id)copyWithZone:(_NSZone *)zone;
- (id)merge:(id)merge;
- (void)encodeWithCoder:(id)coder;
- (void)setGregorianBirthday:(id)birthday;
- (void)setModificationDatesForUpdatedFieldsWithMedicalIDData:(id)data;
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

- (_HKMedicalIDData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v69.receiver = self;
  v69.super_class = _HKMedicalIDData;
  v5 = [(_HKMedicalIDData *)&v69 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataDateSavedKey"];
    [(_HKMedicalIDData *)v5 setDateSaved:v6];

    -[_HKMedicalIDData setSchemaVersion:](v5, "setSchemaVersion:", [coderCopy decodeIntegerForKey:@"HKMedicalIDDataSchemaVersionKey"]);
    -[_HKMedicalIDData setIsDisabled:](v5, "setIsDisabled:", [coderCopy decodeBoolForKey:@"HKMedicalIDDataIsDisabledKey"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataIsDisabledModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setIsDisabledModifiedDate:v7];

    -[_HKMedicalIDData setShareDuringEmergency:](v5, "setShareDuringEmergency:", [coderCopy decodeBoolForKey:@"HKMedicalIDDataShareDuringEmergencyKey"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataShareDuringEmergencyModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setShareDuringEmergencyModifiedDate:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPictureDataKey"];
    [(_HKMedicalIDData *)v5 setPictureData:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPictureDataModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setPictureDataModifiedDate:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataNameKey"];
    [(_HKMedicalIDData *)v5 setName:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataNameModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setNameModifiedDate:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataBirthdateKey"];
    [(_HKMedicalIDData *)v5 setBirthdate:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataGmtBirthdateKey"];
    [(_HKMedicalIDData *)v5 setGmtBirthdate:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataGregorianBirthdateModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setGregorianBirthdayModifiedDate:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPrimaryLanguageCodeKey"];
    [(_HKMedicalIDData *)v5 setPrimaryLanguageCode:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPrimaryLanguageCodeModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setPrimaryLanguageCodeModifiedDate:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataHeightKey"];
    [(_HKMedicalIDData *)v5 setHeight:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataHeightModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setHeightModifiedDate:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataWeightKey"];
    [(_HKMedicalIDData *)v5 setWeight:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataWeightModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setWeightModifiedDate:v21];

    -[_HKMedicalIDData setBloodType:](v5, "setBloodType:", [coderCopy decodeIntegerForKey:@"HKMedicalIDDataBloodTypeKey"]);
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataBloodTypeModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setBloodTypeModifiedDate:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataIsOrganDonorKey"];
    [(_HKMedicalIDData *)v5 setIsOrganDonor:v23];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataIsOrganDonorModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setIsOrganDonorModifiedDate:v24];

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"HKMedicalIDDataEmergencyContactsKey"];
    [(_HKMedicalIDData *)v5 setEmergencyContacts:v28];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataEmergencyContactsModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setEmergencyContactsModifiedDate:v29];

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"HKMedicalIDDataClinicalContactsKey"];
    [(_HKMedicalIDData *)v5 setClinicalContacts:v33];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataClinicalContactsModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setClinicalContactsModifiedDate:v34];

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicalConditionsKey"];
    [(_HKMedicalIDData *)v5 setMedicalConditions:v35];

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicalConditionsModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setMedicalConditionsModifiedDate:v36];

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicalNotesKey"];
    [(_HKMedicalIDData *)v5 setMedicalNotes:v37];

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicalNotesModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setMedicalNotesModifiedDate:v38];

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataAllergyInfoKey"];
    [(_HKMedicalIDData *)v5 setAllergyInfo:v39];

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataAllergyInfoModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setAllergyInfoModifiedDate:v40];

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicationInfoKey"];
    [(_HKMedicalIDData *)v5 setMedicationInfo:v41];

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicationInfoModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setMedicationInfoModifiedDate:v42];

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPregnancyStartDateKey"];
    [(_HKMedicalIDData *)v5 setPregnancyStartDate:v43];

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPregnancyStartDateModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setPregnancyStartDateModifiedDate:v44];

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPregnancyEstimatedDueDateKey"];
    [(_HKMedicalIDData *)v5 setPregnancyEstimatedDueDate:v45];

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataPregnancyEstimatedDueDateModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setPregnancyEstimatedDueDateModifiedDate:v46];

    v47 = MEMORY[0x1E695DFD8];
    v48 = objc_opt_class();
    v49 = [v47 setWithObjects:{v48, objc_opt_class(), 0}];
    v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"HKMedicalIDDataMedicationsListKey"];
    [(_HKMedicalIDData *)v5 setMedicationsList:v50];

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicationsListModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setMedicationsListModifiedDate:v51];

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicationsListVersionKey"];
    [(_HKMedicalIDData *)v5 setMedicationsListVersion:v52];

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataMedicationsListVersionModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setMedicationsListVersionModifiedDate:v53];

    v54 = MEMORY[0x1E695DFD8];
    v55 = objc_opt_class();
    v56 = [v54 setWithObjects:{v55, objc_opt_class(), 0}];
    v57 = [coderCopy decodeObjectOfClasses:v56 forKey:@"HKMedicalIDDataAllergiesListKey"];
    [(_HKMedicalIDData *)v5 setAllergiesList:v57];

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataAllergiesListModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setAllergiesListModifiedDate:v58];

    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataAllergiesListVersionKey"];
    [(_HKMedicalIDData *)v5 setAllergiesListVersion:v59];

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataAllergiesListVersionModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setAllergiesListVersionModifiedDate:v60];

    v61 = MEMORY[0x1E695DFD8];
    v62 = objc_opt_class();
    v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
    v64 = [coderCopy decodeObjectOfClasses:v63 forKey:@"HKMedicalIDDataConditionsListKey"];
    [(_HKMedicalIDData *)v5 setConditionsList:v64];

    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataConditionsListModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setConditionsListModifiedDate:v65];

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataConditionsListVersionKey"];
    [(_HKMedicalIDData *)v5 setConditionsListVersion:v66];

    v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDDataConditionsListVersionModifiedDateKey"];
    [(_HKMedicalIDData *)v5 setConditionsListVersionModifiedDate:v67];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dateSaved = [(_HKMedicalIDData *)self dateSaved];
  [coderCopy encodeObject:dateSaved forKey:@"HKMedicalIDDataDateSavedKey"];

  [coderCopy encodeInteger:-[_HKMedicalIDData schemaVersion](self forKey:{"schemaVersion"), @"HKMedicalIDDataSchemaVersionKey"}];
  [coderCopy encodeBool:-[_HKMedicalIDData isDisabled](self forKey:{"isDisabled"), @"HKMedicalIDDataIsDisabledKey"}];
  isDisabledModifiedDate = [(_HKMedicalIDData *)self isDisabledModifiedDate];
  [coderCopy encodeObject:isDisabledModifiedDate forKey:@"HKMedicalIDDataIsDisabledModifiedDateKey"];

  [coderCopy encodeBool:-[_HKMedicalIDData shareDuringEmergency](self forKey:{"shareDuringEmergency"), @"HKMedicalIDDataShareDuringEmergencyKey"}];
  shareDuringEmergencyModifiedDate = [(_HKMedicalIDData *)self shareDuringEmergencyModifiedDate];
  [coderCopy encodeObject:shareDuringEmergencyModifiedDate forKey:@"HKMedicalIDDataShareDuringEmergencyModifiedDateKey"];

  pictureData = [(_HKMedicalIDData *)self pictureData];
  [coderCopy encodeObject:pictureData forKey:@"HKMedicalIDDataPictureDataKey"];

  pictureDataModifiedDate = [(_HKMedicalIDData *)self pictureDataModifiedDate];
  [coderCopy encodeObject:pictureDataModifiedDate forKey:@"HKMedicalIDDataPictureDataModifiedDateKey"];

  name = [(_HKMedicalIDData *)self name];
  [coderCopy encodeObject:name forKey:@"HKMedicalIDDataNameKey"];

  nameModifiedDate = [(_HKMedicalIDData *)self nameModifiedDate];
  [coderCopy encodeObject:nameModifiedDate forKey:@"HKMedicalIDDataNameModifiedDateKey"];

  birthdate = [(_HKMedicalIDData *)self birthdate];
  [coderCopy encodeObject:birthdate forKey:@"HKMedicalIDDataBirthdateKey"];

  gmtBirthdate = [(_HKMedicalIDData *)self gmtBirthdate];
  [coderCopy encodeObject:gmtBirthdate forKey:@"HKMedicalIDDataGmtBirthdateKey"];

  gregorianBirthday = [(_HKMedicalIDData *)self gregorianBirthday];
  [coderCopy encodeObject:gregorianBirthday forKey:@"HKMedicalIDDataGregorianBirthdateKey"];

  gregorianBirthdayModifiedDate = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];
  [coderCopy encodeObject:gregorianBirthdayModifiedDate forKey:@"HKMedicalIDDataGregorianBirthdateModifiedDateKey"];

  primaryLanguageCode = [(_HKMedicalIDData *)self primaryLanguageCode];
  [coderCopy encodeObject:primaryLanguageCode forKey:@"HKMedicalIDDataPrimaryLanguageCodeKey"];

  primaryLanguageCodeModifiedDate = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];
  [coderCopy encodeObject:primaryLanguageCodeModifiedDate forKey:@"HKMedicalIDDataPrimaryLanguageCodeModifiedDateKey"];

  height = [(_HKMedicalIDData *)self height];
  [coderCopy encodeObject:height forKey:@"HKMedicalIDDataHeightKey"];

  heightModifiedDate = [(_HKMedicalIDData *)self heightModifiedDate];
  [coderCopy encodeObject:heightModifiedDate forKey:@"HKMedicalIDDataHeightModifiedDateKey"];

  weight = [(_HKMedicalIDData *)self weight];
  [coderCopy encodeObject:weight forKey:@"HKMedicalIDDataWeightKey"];

  weightModifiedDate = [(_HKMedicalIDData *)self weightModifiedDate];
  [coderCopy encodeObject:weightModifiedDate forKey:@"HKMedicalIDDataWeightModifiedDateKey"];

  [coderCopy encodeInteger:-[_HKMedicalIDData bloodType](self forKey:{"bloodType"), @"HKMedicalIDDataBloodTypeKey"}];
  bloodTypeModifiedDate = [(_HKMedicalIDData *)self bloodTypeModifiedDate];
  [coderCopy encodeObject:bloodTypeModifiedDate forKey:@"HKMedicalIDDataBloodTypeModifiedDateKey"];

  isOrganDonor = [(_HKMedicalIDData *)self isOrganDonor];
  [coderCopy encodeObject:isOrganDonor forKey:@"HKMedicalIDDataIsOrganDonorKey"];

  isOrganDonorModifiedDate = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];
  [coderCopy encodeObject:isOrganDonorModifiedDate forKey:@"HKMedicalIDDataIsOrganDonorModifiedDateKey"];

  emergencyContacts = [(_HKMedicalIDData *)self emergencyContacts];
  [coderCopy encodeObject:emergencyContacts forKey:@"HKMedicalIDDataEmergencyContactsKey"];

  emergencyContactsModifiedDate = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];
  [coderCopy encodeObject:emergencyContactsModifiedDate forKey:@"HKMedicalIDDataEmergencyContactsModifiedDateKey"];

  clinicalContacts = [(_HKMedicalIDData *)self clinicalContacts];
  [coderCopy encodeObject:clinicalContacts forKey:@"HKMedicalIDDataClinicalContactsKey"];

  clinicalContactsModifiedDate = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];
  [coderCopy encodeObject:clinicalContactsModifiedDate forKey:@"HKMedicalIDDataClinicalContactsModifiedDateKey"];

  medicalConditions = [(_HKMedicalIDData *)self medicalConditions];
  [coderCopy encodeObject:medicalConditions forKey:@"HKMedicalIDDataMedicalConditionsKey"];

  medicalConditionsModifiedDate = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];
  [coderCopy encodeObject:medicalConditionsModifiedDate forKey:@"HKMedicalIDDataMedicalConditionsModifiedDateKey"];

  medicalNotes = [(_HKMedicalIDData *)self medicalNotes];
  [coderCopy encodeObject:medicalNotes forKey:@"HKMedicalIDDataMedicalNotesKey"];

  medicalNotesModifiedDate = [(_HKMedicalIDData *)self medicalNotesModifiedDate];
  [coderCopy encodeObject:medicalNotesModifiedDate forKey:@"HKMedicalIDDataMedicalNotesModifiedDateKey"];

  allergyInfo = [(_HKMedicalIDData *)self allergyInfo];
  [coderCopy encodeObject:allergyInfo forKey:@"HKMedicalIDDataAllergyInfoKey"];

  allergyInfoModifiedDate = [(_HKMedicalIDData *)self allergyInfoModifiedDate];
  [coderCopy encodeObject:allergyInfoModifiedDate forKey:@"HKMedicalIDDataAllergyInfoModifiedDateKey"];

  medicationInfo = [(_HKMedicalIDData *)self medicationInfo];
  [coderCopy encodeObject:medicationInfo forKey:@"HKMedicalIDDataMedicationInfoKey"];

  medicationInfoModifiedDate = [(_HKMedicalIDData *)self medicationInfoModifiedDate];
  [coderCopy encodeObject:medicationInfoModifiedDate forKey:@"HKMedicalIDDataMedicationInfoModifiedDateKey"];

  pregnancyStartDate = [(_HKMedicalIDData *)self pregnancyStartDate];
  [coderCopy encodeObject:pregnancyStartDate forKey:@"HKMedicalIDDataPregnancyStartDateKey"];

  pregnancyStartDateModifiedDate = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];
  [coderCopy encodeObject:pregnancyStartDateModifiedDate forKey:@"HKMedicalIDDataPregnancyStartDateModifiedDateKey"];

  pregnancyEstimatedDueDate = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
  [coderCopy encodeObject:pregnancyEstimatedDueDate forKey:@"HKMedicalIDDataPregnancyEstimatedDueDateKey"];

  pregnancyEstimatedDueDateModifiedDate = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];
  [coderCopy encodeObject:pregnancyEstimatedDueDateModifiedDate forKey:@"HKMedicalIDDataPregnancyEstimatedDueDateModifiedDateKey"];

  medicationsList = [(_HKMedicalIDData *)self medicationsList];
  [coderCopy encodeObject:medicationsList forKey:@"HKMedicalIDDataMedicationsListKey"];

  medicationsListModifiedDate = [(_HKMedicalIDData *)self medicationsListModifiedDate];
  [coderCopy encodeObject:medicationsListModifiedDate forKey:@"HKMedicalIDDataMedicationsListModifiedDateKey"];

  medicationsListVersion = [(_HKMedicalIDData *)self medicationsListVersion];
  [coderCopy encodeObject:medicationsListVersion forKey:@"HKMedicalIDDataMedicationsListVersionKey"];

  medicationsListVersionModifiedDate = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];
  [coderCopy encodeObject:medicationsListVersionModifiedDate forKey:@"HKMedicalIDDataMedicationsListVersionModifiedDateKey"];

  allergiesList = [(_HKMedicalIDData *)self allergiesList];
  [coderCopy encodeObject:allergiesList forKey:@"HKMedicalIDDataAllergiesListKey"];

  allergiesListModifiedDate = [(_HKMedicalIDData *)self allergiesListModifiedDate];
  [coderCopy encodeObject:allergiesListModifiedDate forKey:@"HKMedicalIDDataAllergiesListModifiedDateKey"];

  allergiesListVersion = [(_HKMedicalIDData *)self allergiesListVersion];
  [coderCopy encodeObject:allergiesListVersion forKey:@"HKMedicalIDDataAllergiesListVersionKey"];

  allergiesListVersionModifiedDate = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];
  [coderCopy encodeObject:allergiesListVersionModifiedDate forKey:@"HKMedicalIDDataAllergiesListVersionModifiedDateKey"];

  conditionsList = [(_HKMedicalIDData *)self conditionsList];
  [coderCopy encodeObject:conditionsList forKey:@"HKMedicalIDDataConditionsListKey"];

  conditionsListModifiedDate = [(_HKMedicalIDData *)self conditionsListModifiedDate];
  [coderCopy encodeObject:conditionsListModifiedDate forKey:@"HKMedicalIDDataConditionsListModifiedDateKey"];

  conditionsListVersion = [(_HKMedicalIDData *)self conditionsListVersion];
  [coderCopy encodeObject:conditionsListVersion forKey:@"HKMedicalIDDataConditionsListVersionKey"];

  conditionsListVersionModifiedDate = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
  [coderCopy encodeObject:conditionsListVersionModifiedDate forKey:@"HKMedicalIDDataConditionsListVersionModifiedDateKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_HKMedicalIDData allocWithZone:?]];
  dateSaved = [(_HKMedicalIDData *)self dateSaved];
  v6 = [dateSaved copy];
  [(_HKMedicalIDData *)v4 setDateSaved:v6];

  [(_HKMedicalIDData *)v4 setSchemaVersion:[(_HKMedicalIDData *)self schemaVersion]];
  [(_HKMedicalIDData *)v4 setIsDisabled:[(_HKMedicalIDData *)self isDisabled]];
  isDisabledModifiedDate = [(_HKMedicalIDData *)self isDisabledModifiedDate];
  v8 = [isDisabledModifiedDate copy];
  [(_HKMedicalIDData *)v4 setIsDisabledModifiedDate:v8];

  [(_HKMedicalIDData *)v4 setShareDuringEmergency:[(_HKMedicalIDData *)self shareDuringEmergency]];
  shareDuringEmergencyModifiedDate = [(_HKMedicalIDData *)self shareDuringEmergencyModifiedDate];
  v10 = [shareDuringEmergencyModifiedDate copy];
  [(_HKMedicalIDData *)v4 setShareDuringEmergencyModifiedDate:v10];

  pictureData = [(_HKMedicalIDData *)self pictureData];
  v12 = [pictureData copy];
  [(_HKMedicalIDData *)v4 setPictureData:v12];

  pictureDataModifiedDate = [(_HKMedicalIDData *)self pictureDataModifiedDate];
  v14 = [pictureDataModifiedDate copy];
  [(_HKMedicalIDData *)v4 setPictureDataModifiedDate:v14];

  name = [(_HKMedicalIDData *)self name];
  v16 = [name copy];
  [(_HKMedicalIDData *)v4 setName:v16];

  nameModifiedDate = [(_HKMedicalIDData *)self nameModifiedDate];
  v18 = [nameModifiedDate copy];
  [(_HKMedicalIDData *)v4 setNameModifiedDate:v18];

  birthdate = [(_HKMedicalIDData *)self birthdate];
  v20 = [birthdate copy];
  [(_HKMedicalIDData *)v4 setBirthdate:v20];

  gmtBirthdate = [(_HKMedicalIDData *)self gmtBirthdate];
  v22 = [gmtBirthdate copy];
  [(_HKMedicalIDData *)v4 setGmtBirthdate:v22];

  gregorianBirthday = [(_HKMedicalIDData *)self gregorianBirthday];
  v24 = [gregorianBirthday copy];
  [(_HKMedicalIDData *)v4 setGregorianBirthday:v24];

  gregorianBirthdayModifiedDate = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];
  v26 = [gregorianBirthdayModifiedDate copy];
  [(_HKMedicalIDData *)v4 setGregorianBirthdayModifiedDate:v26];

  primaryLanguageCode = [(_HKMedicalIDData *)self primaryLanguageCode];
  v28 = [primaryLanguageCode copy];
  [(_HKMedicalIDData *)v4 setPrimaryLanguageCode:v28];

  primaryLanguageCodeModifiedDate = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];
  v30 = [primaryLanguageCodeModifiedDate copy];
  [(_HKMedicalIDData *)v4 setPrimaryLanguageCodeModifiedDate:v30];

  height = [(_HKMedicalIDData *)self height];
  v32 = [height copy];
  [(_HKMedicalIDData *)v4 setHeight:v32];

  heightModifiedDate = [(_HKMedicalIDData *)self heightModifiedDate];
  v34 = [heightModifiedDate copy];
  [(_HKMedicalIDData *)v4 setHeightModifiedDate:v34];

  weight = [(_HKMedicalIDData *)self weight];
  v36 = [weight copy];
  [(_HKMedicalIDData *)v4 setWeight:v36];

  weightModifiedDate = [(_HKMedicalIDData *)self weightModifiedDate];
  v38 = [weightModifiedDate copy];
  [(_HKMedicalIDData *)v4 setWeightModifiedDate:v38];

  [(_HKMedicalIDData *)v4 setBloodType:[(_HKMedicalIDData *)self bloodType]];
  bloodTypeModifiedDate = [(_HKMedicalIDData *)self bloodTypeModifiedDate];
  v40 = [bloodTypeModifiedDate copy];
  [(_HKMedicalIDData *)v4 setBloodTypeModifiedDate:v40];

  isOrganDonor = [(_HKMedicalIDData *)self isOrganDonor];
  v42 = [isOrganDonor copy];
  [(_HKMedicalIDData *)v4 setIsOrganDonor:v42];

  isOrganDonorModifiedDate = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];
  v44 = [isOrganDonorModifiedDate copy];
  [(_HKMedicalIDData *)v4 setIsOrganDonorModifiedDate:v44];

  emergencyContacts = [(_HKMedicalIDData *)self emergencyContacts];
  v46 = [emergencyContacts copy];
  [(_HKMedicalIDData *)v4 setEmergencyContacts:v46];

  emergencyContactsModifiedDate = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];
  v48 = [emergencyContactsModifiedDate copy];
  [(_HKMedicalIDData *)v4 setEmergencyContactsModifiedDate:v48];

  clinicalContacts = [(_HKMedicalIDData *)self clinicalContacts];
  v50 = [clinicalContacts copy];
  [(_HKMedicalIDData *)v4 setClinicalContacts:v50];

  clinicalContactsModifiedDate = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];
  v52 = [clinicalContactsModifiedDate copy];
  [(_HKMedicalIDData *)v4 setClinicalContactsModifiedDate:v52];

  medicalConditions = [(_HKMedicalIDData *)self medicalConditions];
  v54 = [medicalConditions copy];
  [(_HKMedicalIDData *)v4 setMedicalConditions:v54];

  medicalConditionsModifiedDate = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];
  v56 = [medicalConditionsModifiedDate copy];
  [(_HKMedicalIDData *)v4 setMedicalConditionsModifiedDate:v56];

  medicalNotes = [(_HKMedicalIDData *)self medicalNotes];
  v58 = [medicalNotes copy];
  [(_HKMedicalIDData *)v4 setMedicalNotes:v58];

  medicalNotesModifiedDate = [(_HKMedicalIDData *)self medicalNotesModifiedDate];
  v60 = [medicalNotesModifiedDate copy];
  [(_HKMedicalIDData *)v4 setMedicalNotesModifiedDate:v60];

  allergyInfo = [(_HKMedicalIDData *)self allergyInfo];
  v62 = [allergyInfo copy];
  [(_HKMedicalIDData *)v4 setAllergyInfo:v62];

  allergyInfoModifiedDate = [(_HKMedicalIDData *)self allergyInfoModifiedDate];
  v64 = [allergyInfoModifiedDate copy];
  [(_HKMedicalIDData *)v4 setAllergyInfoModifiedDate:v64];

  medicationInfo = [(_HKMedicalIDData *)self medicationInfo];
  v66 = [medicationInfo copy];
  [(_HKMedicalIDData *)v4 setMedicationInfo:v66];

  medicationInfoModifiedDate = [(_HKMedicalIDData *)self medicationInfoModifiedDate];
  v68 = [medicationInfoModifiedDate copy];
  [(_HKMedicalIDData *)v4 setMedicationInfoModifiedDate:v68];

  pregnancyStartDate = [(_HKMedicalIDData *)self pregnancyStartDate];
  v70 = [pregnancyStartDate copy];
  [(_HKMedicalIDData *)v4 setPregnancyStartDate:v70];

  pregnancyStartDateModifiedDate = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];
  v72 = [pregnancyStartDateModifiedDate copy];
  [(_HKMedicalIDData *)v4 setPregnancyStartDateModifiedDate:v72];

  pregnancyEstimatedDueDate = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
  v74 = [pregnancyEstimatedDueDate copy];
  [(_HKMedicalIDData *)v4 setPregnancyEstimatedDueDate:v74];

  pregnancyEstimatedDueDateModifiedDate = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];
  v76 = [pregnancyEstimatedDueDateModifiedDate copy];
  [(_HKMedicalIDData *)v4 setPregnancyEstimatedDueDateModifiedDate:v76];

  medicationsList = [(_HKMedicalIDData *)self medicationsList];
  v78 = [medicationsList copy];
  [(_HKMedicalIDData *)v4 setMedicationsList:v78];

  medicationsListModifiedDate = [(_HKMedicalIDData *)self medicationsListModifiedDate];
  v80 = [medicationsListModifiedDate copy];
  [(_HKMedicalIDData *)v4 setMedicationsListModifiedDate:v80];

  medicationsListVersion = [(_HKMedicalIDData *)self medicationsListVersion];
  v82 = [medicationsListVersion copy];
  [(_HKMedicalIDData *)v4 setMedicationsListVersion:v82];

  medicationsListVersionModifiedDate = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];
  v84 = [medicationsListVersionModifiedDate copy];
  [(_HKMedicalIDData *)v4 setMedicationsListVersionModifiedDate:v84];

  allergiesList = [(_HKMedicalIDData *)self allergiesList];
  v86 = [allergiesList copy];
  [(_HKMedicalIDData *)v4 setAllergiesList:v86];

  allergiesListModifiedDate = [(_HKMedicalIDData *)self allergiesListModifiedDate];
  v88 = [allergiesListModifiedDate copy];
  [(_HKMedicalIDData *)v4 setAllergiesListModifiedDate:v88];

  allergiesListVersion = [(_HKMedicalIDData *)self allergiesListVersion];
  v90 = [allergiesListVersion copy];
  [(_HKMedicalIDData *)v4 setAllergiesListVersion:v90];

  allergiesListVersionModifiedDate = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];
  v92 = [allergiesListVersionModifiedDate copy];
  [(_HKMedicalIDData *)v4 setAllergiesListVersionModifiedDate:v92];

  conditionsList = [(_HKMedicalIDData *)self conditionsList];
  v94 = [conditionsList copy];
  [(_HKMedicalIDData *)v4 setConditionsList:v94];

  conditionsListModifiedDate = [(_HKMedicalIDData *)self conditionsListModifiedDate];
  v96 = [conditionsListModifiedDate copy];
  [(_HKMedicalIDData *)v4 setConditionsListModifiedDate:v96];

  conditionsListVersion = [(_HKMedicalIDData *)self conditionsListVersion];
  v98 = [conditionsListVersion copy];
  [(_HKMedicalIDData *)v4 setConditionsListVersion:v98];

  conditionsListVersionModifiedDate = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
  v100 = [conditionsListVersionModifiedDate copy];
  [(_HKMedicalIDData *)v4 setConditionsListVersionModifiedDate:v100];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_241;
  }

  pictureData = [(_HKMedicalIDData *)self pictureData];
  pictureData2 = [equalCopy pictureData];
  if (pictureData != pictureData2)
  {
    pictureData3 = [equalCopy pictureData];
    if (!pictureData3)
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

    v197 = pictureData3;
    pictureData4 = [(_HKMedicalIDData *)self pictureData];
    [equalCopy pictureData];
    v193 = v194 = pictureData4;
    if (![pictureData4 isEqual:?])
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

  name = [(_HKMedicalIDData *)self name];
  [equalCopy name];
  v195 = v196 = name;
  conditionsListVersion2 = name != v195;
  HIDWORD(v228[3]) = pictureData != pictureData2;
  if (name != v195)
  {
    name2 = [equalCopy name];
    if (!name2)
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

    v192 = name2;
    name3 = [(_HKMedicalIDData *)self name];
    [equalCopy name];
    v188 = v189 = name3;
    if (![name3 isEqualToString:?])
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

  birthdate = [(_HKMedicalIDData *)self birthdate];
  birthdate2 = [equalCopy birthdate];
  conditionsListVersion3 = birthdate != birthdate2;
  *&v242[8] = conditionsListVersion2;
  v191 = birthdate;
  if (birthdate != birthdate2)
  {
    birthdate3 = [equalCopy birthdate];
    if (!birthdate3)
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      goto LABEL_90;
    }

    v187 = birthdate3;
    birthdate4 = [(_HKMedicalIDData *)self birthdate];
    [equalCopy birthdate];
    v183 = v184 = birthdate4;
    if (![birthdate4 isEqual:?])
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      *(&v228[1] + 4) = 1;
      goto LABEL_90;
    }
  }

  gmtBirthdate = [(_HKMedicalIDData *)self gmtBirthdate];
  gmtBirthdate2 = [equalCopy gmtBirthdate];
  conditionsListVersion4 = gmtBirthdate != gmtBirthdate2;
  *&v242[4] = conditionsListVersion3;
  v186 = gmtBirthdate;
  if (gmtBirthdate != gmtBirthdate2)
  {
    gmtBirthdate3 = [equalCopy gmtBirthdate];
    if (!gmtBirthdate3)
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      *v242 = 1;
      goto LABEL_90;
    }

    v182 = gmtBirthdate3;
    gmtBirthdate4 = [(_HKMedicalIDData *)self gmtBirthdate];
    [equalCopy gmtBirthdate];
    v178 = v179 = gmtBirthdate4;
    if (![gmtBirthdate4 isEqual:?])
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      *v242 = 1;
      goto LABEL_90;
    }
  }

  primaryLanguageCode = [(_HKMedicalIDData *)self primaryLanguageCode];
  primaryLanguageCode2 = [equalCopy primaryLanguageCode];
  medicalConditions4 = primaryLanguageCode != primaryLanguageCode2;
  *v242 = conditionsListVersion4;
  v181 = primaryLanguageCode;
  if (primaryLanguageCode != primaryLanguageCode2)
  {
    primaryLanguageCode3 = [equalCopy primaryLanguageCode];
    if (!primaryLanguageCode3)
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
      LODWORD(v228[1]) = 1;
      v252 = 1;
      goto LABEL_90;
    }

    v177 = primaryLanguageCode3;
    primaryLanguageCode4 = [(_HKMedicalIDData *)self primaryLanguageCode];
    [equalCopy primaryLanguageCode];
    v173 = v174 = primaryLanguageCode4;
    if (![primaryLanguageCode4 isEqualToString:?])
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
      LODWORD(v228[1]) = 1;
      v252 = 1;
      v227 = 1;
      goto LABEL_90;
    }
  }

  height = [(_HKMedicalIDData *)self height];
  height2 = [equalCopy height];
  v31 = height;
  v175 = height2;
  v32 = height == height2;
  v33 = height != height2;
  v252 = medicalConditions4;
  v176 = v31;
  if (v32)
  {
    v256 = v33;
  }

  else
  {
    height3 = [equalCopy height];
    if (!height3)
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
      v227 = medicalConditions4;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
      LODWORD(v228[1]) = 1;
      LODWORD(v228[0]) = 1;
      v256 = 1;
      goto LABEL_90;
    }

    v256 = v33;
    v172 = height3;
    height4 = [(_HKMedicalIDData *)self height];
    [equalCopy height];
    v168 = v169 = height4;
    if (![height4 isEqual:?])
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
      v227 = medicalConditions4;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
      LODWORD(v228[1]) = 1;
      LODWORD(v228[0]) = 1;
      v256 = 1;
      v221 = 1;
      goto LABEL_90;
    }
  }

  weight = [(_HKMedicalIDData *)self weight];
  weight2 = [equalCopy weight];
  v255 = weight != weight2;
  v171 = weight;
  if (weight != weight2)
  {
    weight3 = [equalCopy weight];
    if (!weight3)
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
      v227 = medicalConditions4;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
      LODWORD(v228[1]) = 1;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v255 = 1;
      goto LABEL_90;
    }

    v167 = weight3;
    weight4 = [(_HKMedicalIDData *)self weight];
    [equalCopy weight];
    v163 = v164 = weight4;
    if (![weight4 isEqual:?])
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
      v227 = medicalConditions4;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
      LODWORD(v228[1]) = 1;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v255 = 1;
      v213 = 1;
      goto LABEL_90;
    }
  }

  isOrganDonor = [(_HKMedicalIDData *)self isOrganDonor];
  isOrganDonor2 = [equalCopy isOrganDonor];
  v254 = isOrganDonor != isOrganDonor2;
  v166 = isOrganDonor;
  if (isOrganDonor != isOrganDonor2)
  {
    isOrganDonor3 = [equalCopy isOrganDonor];
    if (!isOrganDonor3)
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
      v227 = medicalConditions4;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
      LODWORD(v228[1]) = 1;
      LODWORD(v228[0]) = 1;
      v221 = v256;
      v225 = 1;
      v213 = v255;
      v220 = 1;
      v254 = 1;
      goto LABEL_90;
    }

    v162 = isOrganDonor3;
    isOrganDonor4 = [(_HKMedicalIDData *)self isOrganDonor];
    [equalCopy isOrganDonor];
    v158 = v159 = isOrganDonor4;
    if (![isOrganDonor4 isEqual:?])
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
      v227 = medicalConditions4;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
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

  emergencyContacts = [(_HKMedicalIDData *)self emergencyContacts];
  emergencyContacts2 = [equalCopy emergencyContacts];
  v250 = emergencyContacts != emergencyContacts2;
  v161 = emergencyContacts;
  if (emergencyContacts == emergencyContacts2)
  {
    v247 = 0;
    v253 = 0;
  }

  else
  {
    emergencyContacts3 = [equalCopy emergencyContacts];
    v247 = emergencyContacts3 != 0;
    v155 = emergencyContacts3;
    if (emergencyContacts3 && (-[_HKMedicalIDData emergencyContacts](self, "emergencyContacts"), v44 = objc_claimAutoreleasedReturnValue(), [equalCopy emergencyContacts], v150 = v44, v149 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v44, "isEqual:") & 1) != 0))
    {
      v253 = 0;
      v247 = 1;
    }

    else
    {
      emergencyContacts4 = [(_HKMedicalIDData *)self emergencyContacts];
      if ([emergencyContacts4 count])
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
        v227 = medicalConditions4;
        v229 = 0;
        v226 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v231 = 0;
        v232 = 1;
        HIDWORD(v228[2]) = conditionsListVersion2;
        LODWORD(v228[3]) = 1;
        HIDWORD(v228[1]) = conditionsListVersion3;
        LODWORD(v228[2]) = 1;
        HIDWORD(v228[0]) = conditionsListVersion4;
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

      emergencyContacts5 = [equalCopy emergencyContacts];
      if ([emergencyContacts5 count])
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
        v227 = medicalConditions4;
        v229 = 0;
        v231 = 0;
        v226 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        HIDWORD(v228[2]) = conditionsListVersion2;
        LODWORD(v228[3]) = 1;
        HIDWORD(v228[1]) = conditionsListVersion3;
        LODWORD(v228[2]) = 1;
        HIDWORD(v228[0]) = conditionsListVersion4;
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

  clinicalContacts = [(_HKMedicalIDData *)self clinicalContacts];
  clinicalContacts2 = [equalCopy clinicalContacts];
  v249 = clinicalContacts != clinicalContacts2;
  v157 = clinicalContacts;
  if (clinicalContacts == clinicalContacts2)
  {
    v245 = 0;
    v251 = 0;
    goto LABEL_54;
  }

  clinicalContacts3 = [equalCopy clinicalContacts];
  v245 = clinicalContacts3 != 0;
  v151 = clinicalContacts3;
  if (clinicalContacts3)
  {
    clinicalContacts4 = [(_HKMedicalIDData *)self clinicalContacts];
    clinicalContacts5 = [equalCopy clinicalContacts];
    v146 = clinicalContacts4;
    if ([clinicalContacts4 isEqual:?])
    {
      v251 = 0;
      v245 = 1;
      medicalConditions4 = v252;
      goto LABEL_54;
    }

    medicalConditions4 = v252;
  }

  clinicalContacts6 = [(_HKMedicalIDData *)self clinicalContacts];
  if ([clinicalContacts6 count])
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
    v227 = medicalConditions4;
    v229 = 0;
    v226 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v231 = 0;
    v232 = 1;
    HIDWORD(v228[2]) = conditionsListVersion2;
    LODWORD(v228[3]) = 1;
    HIDWORD(v228[1]) = conditionsListVersion3;
    LODWORD(v228[2]) = 1;
    HIDWORD(v228[0]) = conditionsListVersion4;
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

  clinicalContacts7 = [equalCopy clinicalContacts];
  if ([clinicalContacts7 count])
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
    v227 = medicalConditions4;
    v229 = 0;
    v231 = 0;
    v226 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    HIDWORD(v228[2]) = conditionsListVersion2;
    LODWORD(v228[3]) = 1;
    HIDWORD(v228[1]) = conditionsListVersion3;
    LODWORD(v228[2]) = 1;
    HIDWORD(v228[0]) = conditionsListVersion4;
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
  medicalConditions = [(_HKMedicalIDData *)self medicalConditions];
  medicalConditions2 = [equalCopy medicalConditions];
  v50 = medicalConditions;
  v152 = medicalConditions2;
  v32 = medicalConditions == medicalConditions2;
  v51 = medicalConditions != medicalConditions2;
  v153 = v50;
  if (!v32)
  {
    medicalConditions3 = [equalCopy medicalConditions];
    if (!medicalConditions3)
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
      v227 = medicalConditions4;
      v229 = 0;
      v226 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v231 = 0;
      v232 = 1;
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
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

    v147 = medicalConditions3;
    medicalConditions4 = [(_HKMedicalIDData *)self medicalConditions];
    medicalConditions5 = [equalCopy medicalConditions];
    v141 = medicalConditions4;
    if (![medicalConditions4 isEqualToString:?])
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
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

  medicalConditions4 = [(_HKMedicalIDData *)self medicalNotes];
  medicalNotes = [equalCopy medicalNotes];
  v248 = medicalConditions4 != medicalNotes;
  v243 = v51;
  v143 = medicalNotes;
  v144 = medicalConditions4;
  if (medicalConditions4 != medicalNotes)
  {
    medicalNotes2 = [equalCopy medicalNotes];
    if (!medicalNotes2)
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
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

    v139 = medicalNotes2;
    medicalConditions4 = [(_HKMedicalIDData *)self medicalNotes];
    medicalNotes3 = [equalCopy medicalNotes];
    v135 = medicalConditions4;
    if (![medicalConditions4 isEqualToString:?])
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
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

  medicalConditions4 = [(_HKMedicalIDData *)self allergyInfo];
  allergyInfo = [equalCopy allergyInfo];
  v246 = medicalConditions4 != allergyInfo;
  v138 = medicalConditions4;
  if (medicalConditions4 != allergyInfo)
  {
    allergyInfo2 = [equalCopy allergyInfo];
    if (!allergyInfo2)
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
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

    v133 = allergyInfo2;
    medicalConditions4 = [(_HKMedicalIDData *)self allergyInfo];
    allergyInfo3 = [equalCopy allergyInfo];
    v129 = medicalConditions4;
    if (![medicalConditions4 isEqualToString:?])
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
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

  medicalConditions4 = [(_HKMedicalIDData *)self medicationInfo];
  medicationInfo = [equalCopy medicationInfo];
  v244 = medicalConditions4 != medicationInfo;
  v131 = medicationInfo;
  v132 = medicalConditions4;
  if (medicalConditions4 != medicationInfo)
  {
    medicationInfo2 = [equalCopy medicationInfo];
    if (!medicationInfo2)
    {
      medicationInfo2 = 0;
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
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

    medicalConditions4 = [(_HKMedicalIDData *)self medicationInfo];
    medicationInfo3 = [equalCopy medicationInfo];
    v127 = medicalConditions4;
    if (![medicalConditions4 isEqualToString:?])
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
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

  isDisabled = [(_HKMedicalIDData *)self isDisabled];
  if (isDisabled != [equalCopy isDisabled] || (v59 = -[_HKMedicalIDData shareDuringEmergency](self, "shareDuringEmergency"), v59 != objc_msgSend(equalCopy, "shareDuringEmergency")) || (v64 = -[_HKMedicalIDData bloodType](self, "bloodType"), v64 != objc_msgSend(equalCopy, "bloodType")))
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
    HIDWORD(v228[2]) = conditionsListVersion2;
    LODWORD(v228[3]) = 1;
    HIDWORD(v228[1]) = conditionsListVersion3;
    LODWORD(v228[2]) = 1;
    HIDWORD(v228[0]) = conditionsListVersion4;
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

  pregnancyStartDate = [(_HKMedicalIDData *)self pregnancyStartDate];
  pregnancyStartDate2 = [equalCopy pregnancyStartDate];
  v125 = pregnancyStartDate;
  v241 = pregnancyStartDate != pregnancyStartDate2;
  if (pregnancyStartDate == pregnancyStartDate2)
  {
    goto LABEL_248;
  }

  pregnancyStartDate3 = [equalCopy pregnancyStartDate];
  if (!pregnancyStartDate3)
  {
    pregnancyStartDate3 = 0;
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
    HIDWORD(v228[2]) = conditionsListVersion2;
    LODWORD(v228[3]) = 1;
    HIDWORD(v228[1]) = conditionsListVersion3;
    LODWORD(v228[2]) = 1;
    HIDWORD(v228[0]) = conditionsListVersion4;
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

  pregnancyStartDate4 = [(_HKMedicalIDData *)self pregnancyStartDate];
  pregnancyStartDate5 = [equalCopy pregnancyStartDate];
  v119 = pregnancyStartDate4;
  if ([pregnancyStartDate4 isEqual:?])
  {
LABEL_248:
    pregnancyEstimatedDueDate = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
    pregnancyEstimatedDueDate2 = [equalCopy pregnancyEstimatedDueDate];
    v122 = pregnancyEstimatedDueDate;
    v240 = pregnancyEstimatedDueDate != pregnancyEstimatedDueDate2;
    if (pregnancyEstimatedDueDate == pregnancyEstimatedDueDate2)
    {
      goto LABEL_253;
    }

    pregnancyEstimatedDueDate3 = [equalCopy pregnancyEstimatedDueDate];
    if (!pregnancyEstimatedDueDate3)
    {
      pregnancyEstimatedDueDate3 = 0;
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
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

    pregnancyEstimatedDueDate4 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
    pregnancyEstimatedDueDate5 = [equalCopy pregnancyEstimatedDueDate];
    v115 = pregnancyEstimatedDueDate4;
    if ([pregnancyEstimatedDueDate4 isEqual:?])
    {
LABEL_253:
      medicationsList = [(_HKMedicalIDData *)self medicationsList];
      medicationsList2 = [equalCopy medicationsList];
      v117 = medicationsList;
      v237 = medicationsList != medicationsList2;
      if (medicationsList == medicationsList2)
      {
        v234 = 0;
        v239 = 0;
      }

      else
      {
        medicationsList3 = [equalCopy medicationsList];
        v234 = medicationsList3 != 0;
        v111 = medicationsList3;
        if (medicationsList3 && (-[_HKMedicalIDData medicationsList](self, "medicationsList"), v71 = objc_claimAutoreleasedReturnValue(), [equalCopy medicationsList], v107 = objc_claimAutoreleasedReturnValue(), v108 = v71, (objc_msgSend(v71, "isEqual:") & 1) != 0))
        {
          v239 = 0;
          v234 = 1;
        }

        else
        {
          medicationsList4 = [(_HKMedicalIDData *)self medicationsList];
          if ([medicationsList4 count])
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
            HIDWORD(v228[2]) = conditionsListVersion2;
            LODWORD(v228[3]) = 1;
            HIDWORD(v228[1]) = conditionsListVersion3;
            LODWORD(v228[2]) = 1;
            HIDWORD(v228[0]) = conditionsListVersion4;
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

          medicationsList5 = [equalCopy medicationsList];
          v232 = 1;
          if ([medicationsList5 count])
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
            HIDWORD(v228[2]) = conditionsListVersion2;
            LODWORD(v228[3]) = 1;
            HIDWORD(v228[1]) = conditionsListVersion3;
            LODWORD(v228[2]) = 1;
            HIDWORD(v228[0]) = conditionsListVersion4;
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

      medicationsListVersion = [(_HKMedicalIDData *)self medicationsListVersion];
      medicationsListVersion2 = [equalCopy medicationsListVersion];
      v113 = medicationsListVersion;
      v238 = medicationsListVersion != medicationsListVersion2;
      if (medicationsListVersion == medicationsListVersion2)
      {
        goto LABEL_263;
      }

      medicationsListVersion3 = [equalCopy medicationsListVersion];
      if (!medicationsListVersion3)
      {
        medicationsListVersion3 = 0;
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
        HIDWORD(v228[2]) = conditionsListVersion2;
        LODWORD(v228[3]) = 1;
        HIDWORD(v228[1]) = conditionsListVersion3;
        LODWORD(v228[2]) = 1;
        HIDWORD(v228[0]) = conditionsListVersion4;
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

      medicationsListVersion4 = [(_HKMedicalIDData *)self medicationsListVersion];
      medicationsListVersion5 = [equalCopy medicationsListVersion];
      v104 = medicationsListVersion4;
      if ([medicationsListVersion4 isEqual:?])
      {
LABEL_263:
        allergiesList = [(_HKMedicalIDData *)self allergiesList];
        allergiesList2 = [equalCopy allergiesList];
        v106 = allergiesList;
        v233 = allergiesList != allergiesList2;
        if (allergiesList == allergiesList2)
        {
          v230 = 0;
          v236 = 0;
        }

        else
        {
          allergiesList3 = [equalCopy allergiesList];
          v230 = allergiesList3 != 0;
          v100 = allergiesList3;
          if (allergiesList3 && (-[_HKMedicalIDData allergiesList](self, "allergiesList"), v76 = objc_claimAutoreleasedReturnValue(), [equalCopy allergiesList], v95 = objc_claimAutoreleasedReturnValue(), v96 = v76, (objc_msgSend(v76, "isEqual:") & 1) != 0))
          {
            v236 = 0;
            v230 = 1;
          }

          else
          {
            allergiesList4 = [(_HKMedicalIDData *)self allergiesList];
            if ([allergiesList4 count])
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
              HIDWORD(v228[2]) = conditionsListVersion2;
              LODWORD(v228[3]) = 1;
              HIDWORD(v228[1]) = conditionsListVersion3;
              LODWORD(v228[2]) = 1;
              HIDWORD(v228[0]) = conditionsListVersion4;
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

            allergiesList5 = [equalCopy allergiesList];
            v232 = 1;
            if ([allergiesList5 count])
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
              HIDWORD(v228[2]) = conditionsListVersion2;
              LODWORD(v228[3]) = 1;
              HIDWORD(v228[1]) = conditionsListVersion3;
              LODWORD(v228[2]) = 1;
              HIDWORD(v228[0]) = conditionsListVersion4;
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

        allergiesListVersion = [(_HKMedicalIDData *)self allergiesListVersion];
        allergiesListVersion2 = [equalCopy allergiesListVersion];
        v102 = allergiesListVersion;
        v235 = allergiesListVersion != allergiesListVersion2;
        if (allergiesListVersion == allergiesListVersion2)
        {
          goto LABEL_277;
        }

        allergiesListVersion3 = [equalCopy allergiesListVersion];
        if (!allergiesListVersion3)
        {
          allergiesListVersion3 = 0;
          v224 = 0;
          v229 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v231 = 0;
          v232 = 1;
          HIDWORD(v228[2]) = conditionsListVersion2;
          LODWORD(v228[3]) = 1;
          HIDWORD(v228[1]) = conditionsListVersion3;
          LODWORD(v228[2]) = 1;
          HIDWORD(v228[0]) = conditionsListVersion4;
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

        allergiesListVersion4 = [(_HKMedicalIDData *)self allergiesListVersion];
        allergiesListVersion5 = [equalCopy allergiesListVersion];
        v92 = allergiesListVersion4;
        if ([allergiesListVersion4 isEqual:?])
        {
LABEL_277:
          conditionsList = [(_HKMedicalIDData *)self conditionsList];
          conditionsList2 = [equalCopy conditionsList];
          v94 = conditionsList;
          HIDWORD(v229) = conditionsList != conditionsList2;
          if (conditionsList == conditionsList2)
          {
            LODWORD(v229) = 0;
            v231 = 0;
          }

          else
          {
            conditionsList3 = [equalCopy conditionsList];
            LODWORD(v229) = conditionsList3 != 0;
            v90 = conditionsList3;
            if (conditionsList3 && (-[_HKMedicalIDData conditionsList](self, "conditionsList"), v81 = objc_claimAutoreleasedReturnValue(), [equalCopy conditionsList], v85 = objc_claimAutoreleasedReturnValue(), v86 = v81, (objc_msgSend(v81, "isEqual:") & 1) != 0))
            {
              v231 = 0;
              LODWORD(v229) = 1;
            }

            else
            {
              conditionsList4 = [(_HKMedicalIDData *)self conditionsList];
              if ([conditionsList4 count])
              {
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v232 = 1;
                HIDWORD(v228[2]) = conditionsListVersion2;
                LODWORD(v228[3]) = 1;
                HIDWORD(v228[1]) = conditionsListVersion3;
                LODWORD(v228[2]) = 1;
                HIDWORD(v228[0]) = conditionsListVersion4;
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

              conditionsList5 = [equalCopy conditionsList];
              v232 = 1;
              if ([conditionsList5 count])
              {
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                HIDWORD(v228[2]) = conditionsListVersion2;
                LODWORD(v228[3]) = 1;
                HIDWORD(v228[1]) = conditionsListVersion3;
                LODWORD(v228[2]) = 1;
                HIDWORD(v228[0]) = conditionsListVersion4;
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

          conditionsListVersion = [(_HKMedicalIDData *)self conditionsListVersion];
          medicalConditions4 = [equalCopy conditionsListVersion];
          v89 = conditionsListVersion;
          if (conditionsListVersion == medicalConditions4)
          {
            goto LABEL_292;
          }

          conditionsListVersion2 = [equalCopy conditionsListVersion];
          if (!conditionsListVersion2)
          {
            v15 = 0;
            v16 = 0;
            v232 = 1;
            HIDWORD(v228[2]) = *&v242[8];
            LODWORD(v228[3]) = 1;
            HIDWORD(v228[1]) = conditionsListVersion3;
            LODWORD(v228[2]) = 1;
            HIDWORD(v228[0]) = conditionsListVersion4;
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

          conditionsListVersion3 = [(_HKMedicalIDData *)self conditionsListVersion];
          conditionsListVersion4 = [equalCopy conditionsListVersion];
          if ([conditionsListVersion3 isEqual:conditionsListVersion4])
          {
LABEL_292:
            schemaVersion = [(_HKMedicalIDData *)self schemaVersion];
            v16 = schemaVersion == [equalCopy schemaVersion];
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
            v14 = conditionsListVersion != medicalConditions4;
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
          HIDWORD(v228[2]) = conditionsListVersion2;
          LODWORD(v228[3]) = 1;
          HIDWORD(v228[1]) = conditionsListVersion3;
          LODWORD(v228[2]) = 1;
          HIDWORD(v228[0]) = conditionsListVersion4;
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
        HIDWORD(v228[2]) = conditionsListVersion2;
        LODWORD(v228[3]) = 1;
        HIDWORD(v228[1]) = conditionsListVersion3;
        LODWORD(v228[2]) = 1;
        HIDWORD(v228[0]) = conditionsListVersion4;
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
      HIDWORD(v228[2]) = conditionsListVersion2;
      LODWORD(v228[3]) = 1;
      HIDWORD(v228[1]) = conditionsListVersion3;
      LODWORD(v228[2]) = 1;
      HIDWORD(v228[0]) = conditionsListVersion4;
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
    HIDWORD(v228[2]) = conditionsListVersion2;
    LODWORD(v228[3]) = 1;
    HIDWORD(v228[1]) = conditionsListVersion3;
    LODWORD(v228[2]) = 1;
    HIDWORD(v228[0]) = conditionsListVersion4;
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
    v60 = pictureData2;
    v61 = pictureData;
    v62 = v14;

    v14 = v62;
    pictureData = v61;
    pictureData2 = v60;
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

  if (pictureData != pictureData2)
  {
  }

LABEL_241:
  return v16;
}

- (BOOL)isEqualToSyncedData:(id)data
{
  dataCopy = data;
  pictureData = [(_HKMedicalIDData *)self pictureData];
  pictureData2 = [dataCopy pictureData];
  v11 = pictureData != pictureData2;
  v257 = pictureData2;
  v258 = pictureData;
  if (pictureData != pictureData2)
  {
    pictureData3 = [dataCopy pictureData];
    if (!pictureData3)
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

    v211 = pictureData3;
    pictureData4 = [(_HKMedicalIDData *)self pictureData];
    [dataCopy pictureData];
    v206 = v207 = pictureData4;
    if (![pictureData4 isEqual:?])
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

  pictureData4 = [(_HKMedicalIDData *)self name];
  name = [dataCopy name];
  conditionsListVersion = pictureData4 != name;
  v256 = v11;
  v210 = pictureData4;
  if (pictureData4 != name)
  {
    name2 = [dataCopy name];
    if (!name2)
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

    v205 = name2;
    name3 = [(_HKMedicalIDData *)self name];
    [dataCopy name];
    v201 = v202 = name3;
    if (![name3 isEqualToString:?])
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

  birthdate = [(_HKMedicalIDData *)self birthdate];
  birthdate2 = [dataCopy birthdate];
  v21 = birthdate;
  v203 = birthdate2;
  v22 = birthdate == birthdate2;
  v23 = birthdate != birthdate2;
  *&v265[8] = pictureData4 != name;
  v204 = v21;
  if (!v22)
  {
    birthdate3 = [dataCopy birthdate];
    if (!birthdate3)
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
      *&v249[4] = pictureData4 != name;
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

    v200 = birthdate3;
    birthdate4 = [(_HKMedicalIDData *)self birthdate];
    [dataCopy birthdate];
    v196 = v197 = birthdate4;
    if (![birthdate4 isEqual:?])
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
      *&v249[4] = pictureData4 != name;
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

  gmtBirthdate = [(_HKMedicalIDData *)self gmtBirthdate];
  gmtBirthdate2 = [dataCopy gmtBirthdate];
  v81 = gmtBirthdate;
  v198 = gmtBirthdate2;
  v22 = gmtBirthdate == gmtBirthdate2;
  birthdate4 = gmtBirthdate != gmtBirthdate2;
  *&v265[4] = v23;
  v199 = v81;
  if (!v22)
  {
    gmtBirthdate3 = [dataCopy gmtBirthdate];
    if (!gmtBirthdate3)
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
      *&v249[4] = pictureData4 != name;
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

    v195 = gmtBirthdate3;
    gmtBirthdate4 = [(_HKMedicalIDData *)self gmtBirthdate];
    [dataCopy gmtBirthdate];
    v191 = v192 = gmtBirthdate4;
    if (![gmtBirthdate4 isEqual:?])
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
      *&v249[4] = pictureData4 != name;
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

  primaryLanguageCode = [(_HKMedicalIDData *)self primaryLanguageCode];
  primaryLanguageCode2 = [dataCopy primaryLanguageCode];
  v85 = primaryLanguageCode;
  v193 = primaryLanguageCode2;
  v22 = primaryLanguageCode == primaryLanguageCode2;
  gmtBirthdate4 = primaryLanguageCode != primaryLanguageCode2;
  *v265 = birthdate4;
  v194 = v85;
  if (v22)
  {
    HIDWORD(v273) = gmtBirthdate4;
  }

  else
  {
    primaryLanguageCode3 = [dataCopy primaryLanguageCode];
    if (!primaryLanguageCode3)
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
      goto LABEL_15;
    }

    HIDWORD(v273) = gmtBirthdate4;
    v208 = primaryLanguageCode3;
    gmtBirthdate4 = [(_HKMedicalIDData *)self primaryLanguageCode];
    [dataCopy primaryLanguageCode];
    v187 = v188 = gmtBirthdate4;
    if (![gmtBirthdate4 isEqualToString:?])
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
      *v247 = 0x100000001;
      goto LABEL_15;
    }
  }

  gmtBirthdate4 = [(_HKMedicalIDData *)self height];
  height = [dataCopy height];
  LODWORD(v273) = gmtBirthdate4 != height;
  v190 = gmtBirthdate4;
  if (gmtBirthdate4 != height)
  {
    height2 = [dataCopy height];
    if (!height2)
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      LODWORD(v273) = 1;
      goto LABEL_15;
    }

    v186 = height2;
    gmtBirthdate4 = [(_HKMedicalIDData *)self height];
    [dataCopy height];
    v182 = v183 = gmtBirthdate4;
    if (![gmtBirthdate4 isEqual:?])
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      LODWORD(v273) = 1;
      v242 = 1;
      goto LABEL_15;
    }
  }

  gmtBirthdate4 = [(_HKMedicalIDData *)self weight];
  weight = [dataCopy weight];
  v272 = gmtBirthdate4 != weight;
  v185 = gmtBirthdate4;
  if (gmtBirthdate4 != weight)
  {
    weight2 = [dataCopy weight];
    if (!weight2)
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
      *v247 = HIDWORD(v273);
      v244 = 0;
      v245 = 1;
      v242 = v273;
      v241 = 1;
      v272 = 1;
      goto LABEL_15;
    }

    v181 = weight2;
    gmtBirthdate4 = [(_HKMedicalIDData *)self weight];
    [dataCopy weight];
    v177 = v178 = gmtBirthdate4;
    if (![gmtBirthdate4 isEqual:?])
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
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

  gmtBirthdate4 = [(_HKMedicalIDData *)self isOrganDonor];
  isOrganDonor = [dataCopy isOrganDonor];
  v271 = gmtBirthdate4 != isOrganDonor;
  v180 = gmtBirthdate4;
  if (gmtBirthdate4 != isOrganDonor)
  {
    isOrganDonor2 = [dataCopy isOrganDonor];
    if (!isOrganDonor2)
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
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

    v176 = isOrganDonor2;
    gmtBirthdate4 = [(_HKMedicalIDData *)self isOrganDonor];
    [dataCopy isOrganDonor];
    v172 = v173 = gmtBirthdate4;
    if (![gmtBirthdate4 isEqual:?])
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
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

  gmtBirthdate4 = [(_HKMedicalIDData *)self medicalConditions];
  medicalConditions = [dataCopy medicalConditions];
  v270 = gmtBirthdate4 != medicalConditions;
  v175 = gmtBirthdate4;
  if (gmtBirthdate4 != medicalConditions)
  {
    medicalConditions2 = [dataCopy medicalConditions];
    if (!medicalConditions2)
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
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

    v171 = medicalConditions2;
    gmtBirthdate4 = [(_HKMedicalIDData *)self medicalConditions];
    [dataCopy medicalConditions];
    v167 = v168 = gmtBirthdate4;
    if (![gmtBirthdate4 isEqualToString:?])
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
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

  gmtBirthdate4 = [(_HKMedicalIDData *)self medicalNotes];
  medicalNotes = [dataCopy medicalNotes];
  v269 = gmtBirthdate4 != medicalNotes;
  v170 = gmtBirthdate4;
  if (gmtBirthdate4 != medicalNotes)
  {
    medicalNotes2 = [dataCopy medicalNotes];
    if (!medicalNotes2)
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
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

    v166 = medicalNotes2;
    gmtBirthdate4 = [(_HKMedicalIDData *)self medicalNotes];
    medicalNotes3 = [dataCopy medicalNotes];
    v163 = gmtBirthdate4;
    if (![gmtBirthdate4 isEqualToString:?])
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
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

  allergyInfo = [(_HKMedicalIDData *)self allergyInfo];
  allergyInfo2 = [dataCopy allergyInfo];
  v165 = allergyInfo;
  v22 = allergyInfo == allergyInfo2;
  gmtBirthdate4 = allergyInfo != allergyInfo2;
  if (v22)
  {
    v268 = gmtBirthdate4;
  }

  else
  {
    allergyInfo3 = [dataCopy allergyInfo];
    if (!allergyInfo3)
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
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

    v268 = gmtBirthdate4;
    v161 = allergyInfo3;
    gmtBirthdate4 = [(_HKMedicalIDData *)self allergyInfo];
    allergyInfo4 = [dataCopy allergyInfo];
    v158 = gmtBirthdate4;
    if (![gmtBirthdate4 isEqualToString:?])
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
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

  gmtBirthdate4 = [(_HKMedicalIDData *)self medicationInfo];
  medicationInfo = [dataCopy medicationInfo];
  v267 = gmtBirthdate4 != medicationInfo;
  v160 = gmtBirthdate4;
  if (gmtBirthdate4 != medicationInfo)
  {
    medicationInfo2 = [dataCopy medicationInfo];
    if (!medicationInfo2)
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
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

    v156 = medicationInfo2;
    gmtBirthdate4 = [(_HKMedicalIDData *)self medicationInfo];
    medicationInfo3 = [dataCopy medicationInfo];
    v155 = gmtBirthdate4;
    if (![gmtBirthdate4 isEqualToString:?])
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
      *&v249[4] = pictureData4 != name;
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
      *&v247[8] = birthdate4;
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

  gmtBirthdate4 = HIDWORD(v273);
  pictureData4 = [(_HKMedicalIDData *)self isDisabled];
  if (pictureData4 != [dataCopy isDisabled] || (pictureData4 = -[_HKMedicalIDData shareDuringEmergency](self, "shareDuringEmergency"), pictureData4 != objc_msgSend(dataCopy, "shareDuringEmergency")) || (pictureData4 = -[_HKMedicalIDData bloodType](self, "bloodType"), pictureData4 != objc_msgSend(dataCopy, "bloodType")))
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
    *&v249[4] = conditionsListVersion;
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
    *&v247[8] = birthdate4;
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

  pictureData4 = [(_HKMedicalIDData *)self pregnancyStartDate];
  pregnancyStartDate = [dataCopy pregnancyStartDate];
  v153 = pictureData4;
  v266 = pictureData4 != pregnancyStartDate;
  if (pictureData4 != pregnancyStartDate)
  {
    pregnancyStartDate2 = [dataCopy pregnancyStartDate];
    if (!pregnancyStartDate2)
    {
      pregnancyStartDate2 = 0;
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
      *&v249[4] = conditionsListVersion;
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
      *&v247[8] = birthdate4;
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

    pictureData4 = [(_HKMedicalIDData *)self pregnancyStartDate];
    pregnancyStartDate3 = [dataCopy pregnancyStartDate];
    v147 = pictureData4;
    if (![pictureData4 isEqual:?])
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

  pictureData4 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
  pregnancyEstimatedDueDate = [dataCopy pregnancyEstimatedDueDate];
  v150 = pictureData4;
  v264 = pictureData4 != pregnancyEstimatedDueDate;
  if (pictureData4 != pregnancyEstimatedDueDate)
  {
    pregnancyEstimatedDueDate2 = [dataCopy pregnancyEstimatedDueDate];
    if (!pregnancyEstimatedDueDate2)
    {
      pregnancyEstimatedDueDate2 = 0;
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    pictureData4 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
    pregnancyEstimatedDueDate3 = [dataCopy pregnancyEstimatedDueDate];
    v142 = pictureData4;
    if (![pictureData4 isEqual:?])
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

  emergencyContacts = [(_HKMedicalIDData *)self emergencyContacts];
  v255 = emergencyContacts == 0;
  v144 = emergencyContacts;
  if (emergencyContacts || ([dataCopy emergencyContacts], (v140 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    emergencyContacts2 = [(_HKMedicalIDData *)self emergencyContacts];
    if (!emergencyContacts2)
    {
      emergencyContacts2 = 0;
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    emergencyContacts3 = [dataCopy emergencyContacts];
    if (!emergencyContacts3)
    {
      emergencyContacts3 = 0;
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    emergencyContacts4 = [(_HKMedicalIDData *)self emergencyContacts];
    pictureData4 = [emergencyContacts4 count];
    emergencyContacts5 = [dataCopy emergencyContacts];
    v262 = 1;
    if (pictureData4 != [emergencyContacts5 count])
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

  clinicalContacts = [(_HKMedicalIDData *)self clinicalContacts];
  v254 = clinicalContacts == 0;
  v136 = clinicalContacts;
  if (clinicalContacts || ([dataCopy clinicalContacts], (v134 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    clinicalContacts2 = [(_HKMedicalIDData *)self clinicalContacts];
    if (!clinicalContacts2)
    {
      clinicalContacts2 = 0;
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    clinicalContacts3 = [dataCopy clinicalContacts];
    if (!clinicalContacts3)
    {
      clinicalContacts3 = 0;
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    clinicalContacts4 = [(_HKMedicalIDData *)self clinicalContacts];
    pictureData4 = [clinicalContacts4 count];
    clinicalContacts5 = [dataCopy clinicalContacts];
    v262 = 1;
    if (pictureData4 != [clinicalContacts5 count])
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

  medicationsList = [(_HKMedicalIDData *)self medicationsList];
  v253 = medicationsList == 0;
  v130 = medicationsList;
  if (medicationsList || ([dataCopy medicationsList], (v128 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    medicationsList2 = [(_HKMedicalIDData *)self medicationsList];
    if (!medicationsList2)
    {
      medicationsList2 = 0;
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    medicationsList3 = [dataCopy medicationsList];
    if (!medicationsList3)
    {
      medicationsList3 = 0;
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    medicationsList4 = [(_HKMedicalIDData *)self medicationsList];
    pictureData4 = [medicationsList4 count];
    medicationsList5 = [dataCopy medicationsList];
    v262 = 1;
    if (pictureData4 != [medicationsList5 count])
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

  pictureData4 = [(_HKMedicalIDData *)self medicationsListVersion];
  medicationsListVersion = [dataCopy medicationsListVersion];
  v125 = pictureData4;
  v259 = pictureData4 != medicationsListVersion;
  if (pictureData4 != medicationsListVersion)
  {
    medicationsListVersion2 = [dataCopy medicationsListVersion];
    if (!medicationsListVersion2)
    {
      medicationsListVersion2 = 0;
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    pictureData4 = [(_HKMedicalIDData *)self medicationsListVersion];
    medicationsListVersion3 = [dataCopy medicationsListVersion];
    v119 = pictureData4;
    if (![pictureData4 isEqual:?])
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

  allergiesList = [(_HKMedicalIDData *)self allergiesList];
  v252 = allergiesList == 0;
  v121 = allergiesList;
  if (allergiesList || ([dataCopy allergiesList], (v117 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    allergiesList2 = [(_HKMedicalIDData *)self allergiesList];
    if (!allergiesList2)
    {
      allergiesList2 = 0;
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    allergiesList3 = [dataCopy allergiesList];
    if (!allergiesList3)
    {
      allergiesList3 = 0;
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
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    allergiesList4 = [(_HKMedicalIDData *)self allergiesList];
    pictureData4 = [allergiesList4 count];
    allergiesList5 = [dataCopy allergiesList];
    v262 = 1;
    if (pictureData4 != [allergiesList5 count])
    {
      v243 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v249[4] = conditionsListVersion;
      *&v249[8] = 0;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

  pictureData4 = [(_HKMedicalIDData *)self allergiesListVersion];
  allergiesListVersion = [dataCopy allergiesListVersion];
  v114 = pictureData4;
  *&v249[8] = pictureData4 != allergiesListVersion;
  if (pictureData4 != allergiesListVersion)
  {
    allergiesListVersion2 = [dataCopy allergiesListVersion];
    if (!allergiesListVersion2)
    {
      allergiesListVersion2 = 0;
      v244 = 0;
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = conditionsListVersion;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    pictureData4 = [(_HKMedicalIDData *)self allergiesListVersion];
    allergiesListVersion3 = [dataCopy allergiesListVersion];
    v110 = pictureData4;
    if (![pictureData4 isEqual:?])
    {
      v246 = 0;
      v251 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *&v249[4] = conditionsListVersion;
      v248 = 0;
      *v249 = 1;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

  conditionsList = [(_HKMedicalIDData *)self conditionsList];
  v251 = conditionsList == 0;
  v108 = conditionsList;
  if (conditionsList || ([dataCopy conditionsList], (v106 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    conditionsList2 = [(_HKMedicalIDData *)self conditionsList];
    if (!conditionsList2)
    {
      conditionsList2 = 0;
      v246 = 0x100000000;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *v249 = 1;
      *&v249[4] = conditionsListVersion;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    conditionsList3 = [dataCopy conditionsList];
    if (!conditionsList3)
    {
      conditionsList3 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v262 = 1;
      *v249 = 1;
      *&v249[4] = conditionsListVersion;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

    conditionsList4 = [(_HKMedicalIDData *)self conditionsList];
    pictureData4 = [conditionsList4 count];
    conditionsList5 = [dataCopy conditionsList];
    v262 = 1;
    if (pictureData4 != [conditionsList5 count])
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *v249 = 1;
      *&v249[4] = conditionsListVersion;
      *&v247[12] = 1;
      *&v247[16] = v23;
      *&v247[4] = 1;
      *&v247[8] = birthdate4;
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

  pictureData4 = [(_HKMedicalIDData *)self conditionsListVersion];
  birthdate4 = [dataCopy conditionsListVersion];
  v103 = pictureData4;
  v102 = pictureData4 != birthdate4;
  if (pictureData4 != birthdate4)
  {
    conditionsListVersion = [dataCopy conditionsListVersion];
    if (!conditionsListVersion)
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

    gmtBirthdate4 = [(_HKMedicalIDData *)self conditionsListVersion];
    pictureData4 = [dataCopy conditionsListVersion];
    if (![gmtBirthdate4 isEqual:pictureData4])
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

  schemaVersion = [(_HKMedicalIDData *)self schemaVersion];
  v25 = schemaVersion != [dataCopy schemaVersion];
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

  emergencyContacts6 = [(_HKMedicalIDData *)self emergencyContacts];
  v31 = [emergencyContacts6 count];

  if (v31)
  {
    v32 = 0;
    do
    {
      emergencyContacts7 = [(_HKMedicalIDData *)self emergencyContacts];
      v34 = [emergencyContacts7 objectAtIndexedSubscript:v32];
      emergencyContacts8 = [dataCopy emergencyContacts];
      v36 = [emergencyContacts8 objectAtIndexedSubscript:v32];
      v37 = [v34 isEqualToSyncedContact:v36];

      if ((v37 & 1) == 0)
      {
        goto LABEL_166;
      }

      ++v32;
      emergencyContacts9 = [(_HKMedicalIDData *)self emergencyContacts];
      v39 = [emergencyContacts9 count];
    }

    while (v32 < v39);
  }

  clinicalContacts6 = [(_HKMedicalIDData *)self clinicalContacts];
  v41 = [clinicalContacts6 count];

  if (v41)
  {
    v42 = 0;
    do
    {
      clinicalContacts7 = [(_HKMedicalIDData *)self clinicalContacts];
      v44 = [clinicalContacts7 objectAtIndexedSubscript:v42];
      clinicalContacts8 = [dataCopy clinicalContacts];
      v46 = [clinicalContacts8 objectAtIndexedSubscript:v42];
      v47 = [v44 isEqualToSyncedContact:v46];

      if ((v47 & 1) == 0)
      {
        goto LABEL_166;
      }

      ++v42;
      clinicalContacts9 = [(_HKMedicalIDData *)self clinicalContacts];
      v49 = [clinicalContacts9 count];
    }

    while (v42 < v49);
  }

  medicationsList6 = [(_HKMedicalIDData *)self medicationsList];
  v51 = [medicationsList6 count];

  if (v51)
  {
    v52 = 0;
    do
    {
      medicationsList7 = [(_HKMedicalIDData *)self medicationsList];
      v54 = [medicationsList7 objectAtIndexedSubscript:v52];
      medicationsList8 = [dataCopy medicationsList];
      v56 = [medicationsList8 objectAtIndexedSubscript:v52];
      v57 = [v54 isEqualToSyncedData:v56];

      if ((v57 & 1) == 0)
      {
        goto LABEL_166;
      }

      ++v52;
      medicationsList9 = [(_HKMedicalIDData *)self medicationsList];
      v59 = [medicationsList9 count];
    }

    while (v52 < v59);
  }

  allergiesList6 = [(_HKMedicalIDData *)self allergiesList];
  v61 = [allergiesList6 count];

  if (v61)
  {
    v62 = 0;
    do
    {
      allergiesList7 = [(_HKMedicalIDData *)self allergiesList];
      v64 = [allergiesList7 objectAtIndexedSubscript:v62];
      allergiesList8 = [dataCopy allergiesList];
      v66 = [allergiesList8 objectAtIndexedSubscript:v62];
      v67 = [v64 isEqualToSyncedData:v66];

      if ((v67 & 1) == 0)
      {
        goto LABEL_166;
      }

      ++v62;
      allergiesList9 = [(_HKMedicalIDData *)self allergiesList];
      v69 = [allergiesList9 count];
    }

    while (v62 < v69);
  }

  conditionsList6 = [(_HKMedicalIDData *)self conditionsList];
  v71 = [conditionsList6 count];

  if (v71)
  {
    v72 = 0;
    do
    {
      conditionsList7 = [(_HKMedicalIDData *)self conditionsList];
      v74 = [conditionsList7 objectAtIndexedSubscript:v72];
      conditionsList8 = [dataCopy conditionsList];
      v76 = [conditionsList8 objectAtIndexedSubscript:v72];
      v28 = [v74 isEqualToSyncedData:v76];

      if ((v28 & 1) == 0)
      {
        break;
      }

      ++v72;
      conditionsList9 = [(_HKMedicalIDData *)self conditionsList];
      v78 = [conditionsList9 count];
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

- (void)setGregorianBirthday:(id)birthday
{
  birthdayCopy = birthday;
  v10 = birthdayCopy;
  if (birthdayCopy)
  {
    calendar = [birthdayCopy calendar];
    calendarIdentifier = [calendar calendarIdentifier];
    v7 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

    if ((v7 & 1) == 0)
    {
      [_HKMedicalIDData setGregorianBirthday:];
    }

    _gregorianUtcCalendar = [(_HKMedicalIDData *)self _gregorianUtcCalendar];
    v9 = [_gregorianUtcCalendar dateFromComponents:v10];

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
    _gregorianUtcCalendar = [(_HKMedicalIDData *)self _gregorianUtcCalendar];
    v4 = [_gregorianUtcCalendar hk_dateOfBirthDateComponentsWithDate:self->_gmtBirthdate];

    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    [v4 setCalendar:hk_gregorianCalendar];
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

- (void)setModificationDatesForUpdatedFieldsWithMedicalIDData:(id)data
{
  dataCopy = data;
  v203 = dataCopy;
  if (dataCopy)
  {
    isDisabled = self->_isDisabled;
    if (isDisabled != [dataCopy isDisabled])
    {
      date = [MEMORY[0x1E695DF00] date];
      isDisabledModifiedDate = self->_isDisabledModifiedDate;
      self->_isDisabledModifiedDate = date;
    }

    shareDuringEmergency = self->_shareDuringEmergency;
    if (shareDuringEmergency == [v203 shareDuringEmergency])
    {
      goto LABEL_8;
    }
  }

  else
  {
    date2 = [MEMORY[0x1E695DF00] date];
    v11 = self->_isDisabledModifiedDate;
    self->_isDisabledModifiedDate = date2;
  }

  date3 = [MEMORY[0x1E695DF00] date];
  shareDuringEmergencyModifiedDate = self->_shareDuringEmergencyModifiedDate;
  self->_shareDuringEmergencyModifiedDate = date3;

  if (!v203)
  {
    date4 = [MEMORY[0x1E695DF00] date];
    pictureDataModifiedDate = self->_pictureDataModifiedDate;
    self->_pictureDataModifiedDate = date4;
    goto LABEL_20;
  }

LABEL_8:
  pictureData = self->_pictureData;
  pictureData = [v203 pictureData];
  if (pictureData == pictureData)
  {
LABEL_15:

    goto LABEL_16;
  }

  pictureData2 = [v203 pictureData];
  if (!pictureData2)
  {

    goto LABEL_14;
  }

  v17 = pictureData2;
  v18 = self->_pictureData;
  pictureData3 = [v203 pictureData];
  emergencyContacts3 = [(NSData *)v18 isEqual:pictureData3];

  if ((emergencyContacts3 & 1) == 0)
  {
LABEL_14:
    date5 = [MEMORY[0x1E695DF00] date];
    pictureData = self->_pictureDataModifiedDate;
    self->_pictureDataModifiedDate = date5;
    goto LABEL_15;
  }

LABEL_16:
  name = self->_name;
  name = [v203 name];
  pictureDataModifiedDate = name;
  if (name == name)
  {

    goto LABEL_24;
  }

  name2 = [v203 name];
  if (name2)
  {
    v26 = name2;
    v27 = self->_name;
    name3 = [v203 name];
    emergencyContacts3 = [(NSString *)v27 isEqualToString:name3];

    if (emergencyContacts3)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:

LABEL_21:
  date6 = [MEMORY[0x1E695DF00] date];
  nameModifiedDate = self->_nameModifiedDate;
  self->_nameModifiedDate = date6;

  if (!v203)
  {
    date7 = [MEMORY[0x1E695DF00] date];
    gregorianBirthdayModifiedDate = self->_gregorianBirthdayModifiedDate;
    self->_gregorianBirthdayModifiedDate = date7;
    goto LABEL_36;
  }

LABEL_24:
  gregorianBirthday = [(_HKMedicalIDData *)self gregorianBirthday];
  gregorianBirthday2 = [v203 gregorianBirthday];
  v35 = gregorianBirthday2;
  if (gregorianBirthday == gregorianBirthday2)
  {

LABEL_31:
    goto LABEL_32;
  }

  gregorianBirthday3 = [v203 gregorianBirthday];
  if (!gregorianBirthday3)
  {

    goto LABEL_30;
  }

  emergencyContacts3 = gregorianBirthday3;
  gregorianBirthday4 = [(_HKMedicalIDData *)self gregorianBirthday];
  gregorianBirthday5 = [v203 gregorianBirthday];
  v39 = [gregorianBirthday4 isEqual:gregorianBirthday5];

  if ((v39 & 1) == 0)
  {
LABEL_30:
    date8 = [MEMORY[0x1E695DF00] date];
    gregorianBirthday = self->_gregorianBirthdayModifiedDate;
    self->_gregorianBirthdayModifiedDate = date8;
    goto LABEL_31;
  }

LABEL_32:
  primaryLanguageCode = self->_primaryLanguageCode;
  primaryLanguageCode = [v203 primaryLanguageCode];
  gregorianBirthdayModifiedDate = primaryLanguageCode;
  if (primaryLanguageCode == primaryLanguageCode)
  {

    v47 = v203;
    goto LABEL_40;
  }

  primaryLanguageCode2 = [v203 primaryLanguageCode];
  if (primaryLanguageCode2)
  {
    v44 = primaryLanguageCode2;
    v45 = self->_primaryLanguageCode;
    primaryLanguageCode3 = [v203 primaryLanguageCode];
    emergencyContacts3 = [(NSString *)v45 isEqualToString:primaryLanguageCode3];

    v47 = v203;
    if (emergencyContacts3)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_36:

LABEL_37:
  date9 = [MEMORY[0x1E695DF00] date];
  primaryLanguageCodeModifiedDate = self->_primaryLanguageCodeModifiedDate;
  self->_primaryLanguageCodeModifiedDate = date9;

  v47 = v203;
  if (!v203)
  {
    date10 = [MEMORY[0x1E695DF00] date];
    heightModifiedDate = self->_heightModifiedDate;
    self->_heightModifiedDate = date10;
    goto LABEL_51;
  }

LABEL_40:
  height = self->_height;
  height = [v47 height];
  if (height == height)
  {
LABEL_46:

    goto LABEL_47;
  }

  height2 = [v203 height];
  if (!height2)
  {

    goto LABEL_45;
  }

  v55 = height2;
  v56 = self->_height;
  height3 = [v203 height];
  emergencyContacts3 = [(HKQuantity *)v56 isEqual:height3];

  if ((emergencyContacts3 & 1) == 0)
  {
LABEL_45:
    date11 = [MEMORY[0x1E695DF00] date];
    height = self->_heightModifiedDate;
    self->_heightModifiedDate = date11;
    goto LABEL_46;
  }

LABEL_47:
  weight = self->_weight;
  weight = [v203 weight];
  heightModifiedDate = weight;
  if (weight == weight)
  {

    v65 = v203;
    goto LABEL_55;
  }

  weight2 = [v203 weight];
  if (weight2)
  {
    v62 = weight2;
    v63 = self->_weight;
    weight3 = [v203 weight];
    emergencyContacts3 = [(HKQuantity *)v63 isEqual:weight3];

    v65 = v203;
    if (emergencyContacts3)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

LABEL_51:

LABEL_52:
  date12 = [MEMORY[0x1E695DF00] date];
  weightModifiedDate = self->_weightModifiedDate;
  self->_weightModifiedDate = date12;

  v65 = v203;
  if (!v203)
  {
    date13 = [MEMORY[0x1E695DF00] date];
    bloodTypeModifiedDate = self->_bloodTypeModifiedDate;
    self->_bloodTypeModifiedDate = date13;
    goto LABEL_61;
  }

LABEL_55:
  bloodType = self->_bloodType;
  if (bloodType != [v65 bloodType])
  {
    date14 = [MEMORY[0x1E695DF00] date];
    v72 = self->_bloodTypeModifiedDate;
    self->_bloodTypeModifiedDate = date14;
  }

  isOrganDonor = self->_isOrganDonor;
  isOrganDonor = [v203 isOrganDonor];
  bloodTypeModifiedDate = isOrganDonor;
  if (isOrganDonor == isOrganDonor)
  {

    v79 = v203;
    goto LABEL_65;
  }

  isOrganDonor2 = [v203 isOrganDonor];
  if (isOrganDonor2)
  {
    v76 = isOrganDonor2;
    v77 = self->_isOrganDonor;
    isOrganDonor3 = [v203 isOrganDonor];
    emergencyContacts3 = [(NSNumber *)v77 isEqual:isOrganDonor3];

    v79 = v203;
    if (emergencyContacts3)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

LABEL_61:

LABEL_62:
  date15 = [MEMORY[0x1E695DF00] date];
  isOrganDonorModifiedDate = self->_isOrganDonorModifiedDate;
  self->_isOrganDonorModifiedDate = date15;

  v79 = v203;
  if (!v203)
  {
    date16 = [MEMORY[0x1E695DF00] date];
    emergencyContactsModifiedDate = self->_emergencyContactsModifiedDate;
    self->_emergencyContactsModifiedDate = date16;
    goto LABEL_88;
  }

LABEL_65:
  emergencyContacts = self->_emergencyContacts;
  emergencyContacts = [v79 emergencyContacts];
  if (emergencyContacts != emergencyContacts)
  {
    emergencyContacts2 = [v203 emergencyContacts];
    v87 = self->_emergencyContacts;
    if (emergencyContacts2)
    {
      emergencyContacts3 = [v203 emergencyContacts];
      if ([(NSArray *)v87 isEqual:emergencyContacts3])
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
      date17 = [MEMORY[0x1E695DF00] date];
      emergencyContacts = self->_emergencyContactsModifiedDate;
      self->_emergencyContactsModifiedDate = date17;
      goto LABEL_78;
    }

    emergencyContacts4 = [v203 emergencyContacts];
    v89 = [emergencyContacts4 count];

    if (emergencyContacts2)
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

  clinicalContacts = [v203 clinicalContacts];
  v93 = self->_clinicalContacts;
  if (clinicalContacts)
  {
    emergencyContacts3 = [v203 clinicalContacts];
    if ([(NSArray *)v93 isEqual:emergencyContacts3])
    {

      goto LABEL_83;
    }

    if ([(NSArray *)self->_clinicalContacts count])
    {

      goto LABEL_88;
    }

LABEL_204:
    clinicalContacts2 = [v203 clinicalContacts];
    v202 = [clinicalContacts2 count];

    if (clinicalContacts)
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
  date18 = [MEMORY[0x1E695DF00] date];
  clinicalContactsModifiedDate = self->_clinicalContactsModifiedDate;
  self->_clinicalContactsModifiedDate = date18;

  if (!v203)
  {
    date19 = [MEMORY[0x1E695DF00] date];
    medicalConditionsModifiedDate = self->_medicalConditionsModifiedDate;
    self->_medicalConditionsModifiedDate = date19;
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

  medicalConditions = [v203 medicalConditions];
  if (!medicalConditions)
  {

    goto LABEL_95;
  }

  v99 = medicalConditions;
  v100 = self->_medicalConditions;
  medicalConditions2 = [v203 medicalConditions];
  emergencyContacts3 = [(NSString *)v100 isEqualToString:medicalConditions2];

  if ((emergencyContacts3 & 1) == 0)
  {
LABEL_95:
    date20 = [MEMORY[0x1E695DF00] date];
    p_isa = &self->_medicalConditionsModifiedDate->super.isa;
    self->_medicalConditionsModifiedDate = date20;
    goto LABEL_96;
  }

LABEL_97:
  medicalNotes = self->_medicalNotes;
  medicalNotes = [v203 medicalNotes];
  medicalConditionsModifiedDate = medicalNotes;
  if (medicalNotes == medicalNotes)
  {

    v110 = v203;
    goto LABEL_105;
  }

  medicalNotes2 = [v203 medicalNotes];
  if (medicalNotes2)
  {
    v107 = medicalNotes2;
    v108 = self->_medicalNotes;
    medicalNotes3 = [v203 medicalNotes];
    emergencyContacts3 = [(NSString *)v108 isEqualToString:medicalNotes3];

    v110 = v203;
    if (emergencyContacts3)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_103:

LABEL_104:
  date21 = [MEMORY[0x1E695DF00] date];
  medicalNotesModifiedDate = self->_medicalNotesModifiedDate;
  self->_medicalNotesModifiedDate = date21;

  v110 = v203;
  if (!v203)
  {
    date22 = [MEMORY[0x1E695DF00] date];
    allergyInfoModifiedDate = self->_allergyInfoModifiedDate;
    self->_allergyInfoModifiedDate = date22;
    goto LABEL_117;
  }

LABEL_105:
  allergyInfo = self->_allergyInfo;
  allergyInfo = [v110 allergyInfo];
  if (allergyInfo == allergyInfo)
  {
LABEL_112:

    goto LABEL_113;
  }

  allergyInfo2 = [v203 allergyInfo];
  if (!allergyInfo2)
  {

    goto LABEL_111;
  }

  v117 = allergyInfo2;
  v118 = self->_allergyInfo;
  allergyInfo3 = [v203 allergyInfo];
  emergencyContacts3 = [(NSString *)v118 isEqualToString:allergyInfo3];

  if ((emergencyContacts3 & 1) == 0)
  {
LABEL_111:
    date23 = [MEMORY[0x1E695DF00] date];
    allergyInfo = &self->_allergyInfoModifiedDate->super.isa;
    self->_allergyInfoModifiedDate = date23;
    goto LABEL_112;
  }

LABEL_113:
  medicationInfo = self->_medicationInfo;
  medicationInfo = [v203 medicationInfo];
  allergyInfoModifiedDate = medicationInfo;
  if (medicationInfo == medicationInfo)
  {

    v129 = v203;
    goto LABEL_121;
  }

  medicationInfo2 = [v203 medicationInfo];
  if (medicationInfo2)
  {
    v126 = medicationInfo2;
    v127 = self->_medicationInfo;
    medicationInfo3 = [v203 medicationInfo];
    emergencyContacts3 = [(NSString *)v127 isEqualToString:medicationInfo3];

    v129 = v203;
    if (emergencyContacts3)
    {
      goto LABEL_121;
    }

    goto LABEL_118;
  }

LABEL_117:

LABEL_118:
  date24 = [MEMORY[0x1E695DF00] date];
  medicationInfoModifiedDate = self->_medicationInfoModifiedDate;
  self->_medicationInfoModifiedDate = date24;

  v129 = v203;
  if (!v203)
  {
    date25 = [MEMORY[0x1E695DF00] date];
    pregnancyStartDateModifiedDate = self->_pregnancyStartDateModifiedDate;
    self->_pregnancyStartDateModifiedDate = date25;
    goto LABEL_132;
  }

LABEL_121:
  pregnancyStartDate = self->_pregnancyStartDate;
  pregnancyStartDate = [v129 pregnancyStartDate];
  if (pregnancyStartDate == pregnancyStartDate)
  {
LABEL_127:

    goto LABEL_128;
  }

  pregnancyStartDate2 = [v203 pregnancyStartDate];
  if (!pregnancyStartDate2)
  {

    goto LABEL_126;
  }

  v137 = pregnancyStartDate2;
  v138 = self->_pregnancyStartDate;
  pregnancyStartDate3 = [v203 pregnancyStartDate];
  emergencyContacts3 = [(NSDate *)v138 isEqual:pregnancyStartDate3];

  if ((emergencyContacts3 & 1) == 0)
  {
LABEL_126:
    date26 = [MEMORY[0x1E695DF00] date];
    pregnancyStartDate = self->_pregnancyStartDateModifiedDate;
    self->_pregnancyStartDateModifiedDate = date26;
    goto LABEL_127;
  }

LABEL_128:
  pregnancyEstimatedDueDate = self->_pregnancyEstimatedDueDate;
  pregnancyEstimatedDueDate = [v203 pregnancyEstimatedDueDate];
  pregnancyStartDateModifiedDate = pregnancyEstimatedDueDate;
  if (pregnancyEstimatedDueDate == pregnancyEstimatedDueDate)
  {

    v147 = v203;
    goto LABEL_136;
  }

  pregnancyEstimatedDueDate2 = [v203 pregnancyEstimatedDueDate];
  if (pregnancyEstimatedDueDate2)
  {
    v144 = pregnancyEstimatedDueDate2;
    v145 = self->_pregnancyEstimatedDueDate;
    pregnancyEstimatedDueDate3 = [v203 pregnancyEstimatedDueDate];
    emergencyContacts3 = [(NSDate *)v145 isEqual:pregnancyEstimatedDueDate3];

    v147 = v203;
    if (emergencyContacts3)
    {
      goto LABEL_136;
    }

    goto LABEL_133;
  }

LABEL_132:

LABEL_133:
  date27 = [MEMORY[0x1E695DF00] date];
  pregnancyEstimatedDueDateModifiedDate = self->_pregnancyEstimatedDueDateModifiedDate;
  self->_pregnancyEstimatedDueDateModifiedDate = date27;

  v147 = v203;
  if (!v203)
  {
    date28 = [MEMORY[0x1E695DF00] date];
    medicationsListModifiedDate = self->_medicationsListModifiedDate;
    self->_medicationsListModifiedDate = date28;
    goto LABEL_154;
  }

LABEL_136:
  medicationsList = self->_medicationsList;
  medicationsList = [v147 medicationsList];
  if (medicationsList == medicationsList)
  {
LABEL_149:

    goto LABEL_150;
  }

  medicationsList2 = [v203 medicationsList];
  v155 = self->_medicationsList;
  if (medicationsList2)
  {
    emergencyContacts3 = [v203 medicationsList];
    if ([(NSArray *)v155 isEqual:emergencyContacts3])
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
    date29 = [MEMORY[0x1E695DF00] date];
    medicationsList = self->_medicationsListModifiedDate;
    self->_medicationsListModifiedDate = date29;
    goto LABEL_149;
  }

  medicationsList3 = [v203 medicationsList];
  v157 = [medicationsList3 count];

  if (medicationsList2)
  {
  }

  if (v157)
  {
    goto LABEL_148;
  }

LABEL_150:
  medicationsListVersion = self->_medicationsListVersion;
  medicationsListVersion = [v203 medicationsListVersion];
  medicationsListModifiedDate = medicationsListVersion;
  if (medicationsListVersion == medicationsListVersion)
  {

    v165 = v203;
    goto LABEL_158;
  }

  medicationsListVersion2 = [v203 medicationsListVersion];
  if (medicationsListVersion2)
  {
    v162 = medicationsListVersion2;
    v163 = self->_medicationsListVersion;
    medicationsListVersion3 = [v203 medicationsListVersion];
    emergencyContacts3 = [(NSNumber *)v163 isEqual:medicationsListVersion3];

    v165 = v203;
    if (emergencyContacts3)
    {
      goto LABEL_158;
    }

    goto LABEL_155;
  }

LABEL_154:

LABEL_155:
  date30 = [MEMORY[0x1E695DF00] date];
  medicationsListVersionModifiedDate = self->_medicationsListVersionModifiedDate;
  self->_medicationsListVersionModifiedDate = date30;

  v165 = v203;
  if (!v203)
  {
    date31 = [MEMORY[0x1E695DF00] date];
    allergiesListModifiedDate = self->_allergiesListModifiedDate;
    self->_allergiesListModifiedDate = date31;
    goto LABEL_176;
  }

LABEL_158:
  allergiesList = self->_allergiesList;
  allergiesList = [v165 allergiesList];
  if (allergiesList == allergiesList)
  {
LABEL_171:

    goto LABEL_172;
  }

  allergiesList2 = [v203 allergiesList];
  v173 = self->_allergiesList;
  if (allergiesList2)
  {
    emergencyContacts3 = [v203 allergiesList];
    if ([(NSArray *)v173 isEqual:emergencyContacts3])
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
    date32 = [MEMORY[0x1E695DF00] date];
    allergiesList = self->_allergiesListModifiedDate;
    self->_allergiesListModifiedDate = date32;
    goto LABEL_171;
  }

  allergiesList3 = [v203 allergiesList];
  v175 = [allergiesList3 count];

  if (allergiesList2)
  {
  }

  if (v175)
  {
    goto LABEL_170;
  }

LABEL_172:
  allergiesListVersion = self->_allergiesListVersion;
  allergiesListVersion = [v203 allergiesListVersion];
  allergiesListModifiedDate = allergiesListVersion;
  if (allergiesListVersion == allergiesListVersion)
  {

    v183 = v203;
    goto LABEL_180;
  }

  allergiesListVersion2 = [v203 allergiesListVersion];
  if (allergiesListVersion2)
  {
    v180 = allergiesListVersion2;
    v181 = self->_allergiesListVersion;
    allergiesListVersion3 = [v203 allergiesListVersion];
    emergencyContacts3 = [(NSNumber *)v181 isEqual:allergiesListVersion3];

    v183 = v203;
    if (emergencyContacts3)
    {
      goto LABEL_180;
    }

    goto LABEL_177;
  }

LABEL_176:

LABEL_177:
  date33 = [MEMORY[0x1E695DF00] date];
  allergiesListVersionModifiedDate = self->_allergiesListVersionModifiedDate;
  self->_allergiesListVersionModifiedDate = date33;

  v183 = v203;
  if (!v203)
  {
    date34 = [MEMORY[0x1E695DF00] date];
    conditionsListModifiedDate = self->_conditionsListModifiedDate;
    self->_conditionsListModifiedDate = date34;
LABEL_198:

    goto LABEL_199;
  }

LABEL_180:
  conditionsList = self->_conditionsList;
  conditionsList = [v183 conditionsList];
  if (conditionsList == conditionsList)
  {
LABEL_193:

    goto LABEL_194;
  }

  conditionsList2 = [v203 conditionsList];
  v191 = self->_conditionsList;
  if (conditionsList2)
  {
    emergencyContacts3 = [v203 conditionsList];
    if ([(NSArray *)v191 isEqual:emergencyContacts3])
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
    date35 = [MEMORY[0x1E695DF00] date];
    conditionsList = self->_conditionsListModifiedDate;
    self->_conditionsListModifiedDate = date35;
    goto LABEL_193;
  }

  conditionsList3 = [v203 conditionsList];
  v193 = [conditionsList3 count];

  if (conditionsList2)
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

  conditionsListVersion = [v203 conditionsListVersion];
  if (!conditionsListVersion)
  {
    goto LABEL_198;
  }

  v197 = conditionsListVersion;
  v198 = self->_conditionsListVersion;
  conditionsListVersion2 = [v203 conditionsListVersion];
  LOBYTE(v198) = [(NSNumber *)v198 isEqual:conditionsListVersion2];

  if ((v198 & 1) == 0)
  {
LABEL_199:
    date36 = [MEMORY[0x1E695DF00] date];
    conditionsListModifiedDate = self->_conditionsListVersionModifiedDate;
    self->_conditionsListVersionModifiedDate = date36;
    goto LABEL_200;
  }

LABEL_201:
}

- (void)setModificationDatesToCurrentDate
{
  date = [MEMORY[0x1E695DF00] date];
  objc_storeStrong(&self->_isDisabledModifiedDate, date);
  objc_storeStrong(&self->_shareDuringEmergencyModifiedDate, date);
  objc_storeStrong(&self->_pictureDataModifiedDate, date);
  objc_storeStrong(&self->_nameModifiedDate, date);
  objc_storeStrong(&self->_gregorianBirthdayModifiedDate, date);
  objc_storeStrong(&self->_primaryLanguageCodeModifiedDate, date);
  objc_storeStrong(&self->_heightModifiedDate, date);
  objc_storeStrong(&self->_weightModifiedDate, date);
  objc_storeStrong(&self->_bloodTypeModifiedDate, date);
  objc_storeStrong(&self->_isOrganDonorModifiedDate, date);
  objc_storeStrong(&self->_emergencyContactsModifiedDate, date);
  objc_storeStrong(&self->_clinicalContactsModifiedDate, date);
  objc_storeStrong(&self->_medicalConditionsModifiedDate, date);
  objc_storeStrong(&self->_medicalNotesModifiedDate, date);
  objc_storeStrong(&self->_allergyInfoModifiedDate, date);
  objc_storeStrong(&self->_medicationInfoModifiedDate, date);
  objc_storeStrong(&self->_pregnancyStartDateModifiedDate, date);
  objc_storeStrong(&self->_pregnancyEstimatedDueDateModifiedDate, date);
  objc_storeStrong(&self->_medicationsListModifiedDate, date);
  objc_storeStrong(&self->_medicationsListVersionModifiedDate, date);
  objc_storeStrong(&self->_allergiesListModifiedDate, date);
  objc_storeStrong(&self->_allergiesListVersionModifiedDate, date);
  objc_storeStrong(&self->_conditionsListModifiedDate, date);
  conditionsListVersionModifiedDate = self->_conditionsListVersionModifiedDate;
  self->_conditionsListVersionModifiedDate = date;
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

- (id)merge:(id)merge
{
  mergeCopy = merge;
  v5 = objc_alloc_init(_HKMedicalIDData);
  isDisabledModifiedDate = [(_HKMedicalIDData *)self isDisabledModifiedDate];
  if (isDisabledModifiedDate)
  {
  }

  else
  {
    isDisabledModifiedDate2 = [(_HKMedicalIDData *)mergeCopy isDisabledModifiedDate];

    if (!isDisabledModifiedDate2)
    {
      isDisabled = [(_HKMedicalIDData *)self isDisabled];
      if (isDisabled != [(_HKMedicalIDData *)mergeCopy isDisabled])
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
      isDisabled2 = [(_HKMedicalIDData *)self isDisabled];
      goto LABEL_17;
    }
  }

  isDisabledModifiedDate3 = [(_HKMedicalIDData *)self isDisabledModifiedDate];

  if (!isDisabledModifiedDate3)
  {
LABEL_7:
    isDisabled3 = [(_HKMedicalIDData *)mergeCopy isDisabled];
    v14 = objc_opt_self();
    [v14 setIsDisabled:isDisabled3];

    selfCopy = mergeCopy;
    goto LABEL_18;
  }

  isDisabledModifiedDate4 = [(_HKMedicalIDData *)mergeCopy isDisabledModifiedDate];

  if (!isDisabledModifiedDate4)
  {
    goto LABEL_16;
  }

  isDisabledModifiedDate5 = [(_HKMedicalIDData *)self isDisabledModifiedDate];
  isDisabledModifiedDate6 = [(_HKMedicalIDData *)mergeCopy isDisabledModifiedDate];
  v12 = [isDisabledModifiedDate5 hk_isBeforeDate:isDisabledModifiedDate6];

  if (v12)
  {
    goto LABEL_7;
  }

  isDisabledModifiedDate7 = [(_HKMedicalIDData *)self isDisabledModifiedDate];
  isDisabledModifiedDate8 = [(_HKMedicalIDData *)mergeCopy isDisabledModifiedDate];
  v18 = [isDisabledModifiedDate7 hk_isAfterDate:isDisabledModifiedDate8];

  isDisabled2 = [(_HKMedicalIDData *)self isDisabled];
  if (!v18)
  {
    if (isDisabled2 != [(_HKMedicalIDData *)mergeCopy isDisabled])
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
  [v22 setIsDisabled:isDisabled2];

  selfCopy = self;
LABEL_18:
  isDisabledModifiedDate9 = [(_HKMedicalIDData *)selfCopy isDisabledModifiedDate];
  v24 = objc_opt_self();
  [v24 setIsDisabledModifiedDate:isDisabledModifiedDate9];

  shareDuringEmergencyModifiedDate = [(_HKMedicalIDData *)self shareDuringEmergencyModifiedDate];
  if (shareDuringEmergencyModifiedDate)
  {

    goto LABEL_21;
  }

  shareDuringEmergencyModifiedDate2 = [(_HKMedicalIDData *)mergeCopy shareDuringEmergencyModifiedDate];

  if (shareDuringEmergencyModifiedDate2)
  {
LABEL_21:
    shareDuringEmergencyModifiedDate3 = [(_HKMedicalIDData *)self shareDuringEmergencyModifiedDate];

    selfCopy6 = mergeCopy;
    if (shareDuringEmergencyModifiedDate3)
    {
      shareDuringEmergencyModifiedDate4 = [(_HKMedicalIDData *)mergeCopy shareDuringEmergencyModifiedDate];

      selfCopy6 = self;
      if (shareDuringEmergencyModifiedDate4)
      {
        shareDuringEmergencyModifiedDate5 = [(_HKMedicalIDData *)self shareDuringEmergencyModifiedDate];
        shareDuringEmergencyModifiedDate6 = [(_HKMedicalIDData *)mergeCopy shareDuringEmergencyModifiedDate];
        v32 = [shareDuringEmergencyModifiedDate5 hk_isBeforeDate:shareDuringEmergencyModifiedDate6];

        selfCopy6 = mergeCopy;
        if ((v32 & 1) == 0)
        {
          shareDuringEmergencyModifiedDate7 = [(_HKMedicalIDData *)self shareDuringEmergencyModifiedDate];
          shareDuringEmergencyModifiedDate8 = [(_HKMedicalIDData *)mergeCopy shareDuringEmergencyModifiedDate];
          v35 = [shareDuringEmergencyModifiedDate7 hk_isAfterDate:shareDuringEmergencyModifiedDate8];

          shareDuringEmergency = [(_HKMedicalIDData *)self shareDuringEmergency];
          selfCopy6 = self;
          if (v35)
          {
            goto LABEL_33;
          }

          selfCopy6 = self;
          if (shareDuringEmergency != [(_HKMedicalIDData *)mergeCopy shareDuringEmergency])
          {
            _HKInitializeLogging();
            v37 = HKLogMedicalID;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

LABEL_31:

            selfCopy6 = self;
            goto LABEL_32;
          }
        }
      }
    }

    goto LABEL_32;
  }

  shareDuringEmergency2 = [(_HKMedicalIDData *)self shareDuringEmergency];
  selfCopy6 = self;
  if (shareDuringEmergency2 != [(_HKMedicalIDData *)mergeCopy shareDuringEmergency])
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
  shareDuringEmergency = [(_HKMedicalIDData *)selfCopy6 shareDuringEmergency];
LABEL_33:
  v39 = objc_opt_self();
  [v39 setShareDuringEmergency:shareDuringEmergency];

  shareDuringEmergencyModifiedDate9 = [(_HKMedicalIDData *)selfCopy6 shareDuringEmergencyModifiedDate];
  v41 = objc_opt_self();
  [v41 setShareDuringEmergencyModifiedDate:shareDuringEmergencyModifiedDate9];

  pictureDataModifiedDate = [(_HKMedicalIDData *)self pictureDataModifiedDate];
  if (pictureDataModifiedDate)
  {
  }

  else
  {
    pictureDataModifiedDate2 = [(_HKMedicalIDData *)mergeCopy pictureDataModifiedDate];

    if (!pictureDataModifiedDate2)
    {
      pictureData = [(_HKMedicalIDData *)self pictureData];
      pictureData2 = [(_HKMedicalIDData *)mergeCopy pictureData];

      if (pictureData != pictureData2)
      {
        _HKInitializeLogging();
        v56 = HKLogMedicalID;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      pictureData3 = [(_HKMedicalIDData *)self pictureData];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        pictureData4 = [(_HKMedicalIDData *)self pictureData];

        selfCopy11 = mergeCopy;
        if (!pictureData4)
        {
          goto LABEL_50;
        }

        pictureData5 = [(_HKMedicalIDData *)self pictureData];
        v60 = objc_opt_self();
        [v60 setPictureData:pictureData5];

        pictureData3 = [(_HKMedicalIDData *)self pictureDataModifiedDate];
        v61 = objc_opt_self();
        [v61 setPictureDataModifiedDate:pictureData3];
      }

      selfCopy11 = mergeCopy;
LABEL_49:

      goto LABEL_50;
    }
  }

  pictureDataModifiedDate3 = [(_HKMedicalIDData *)self pictureDataModifiedDate];

  selfCopy11 = mergeCopy;
  if (pictureDataModifiedDate3)
  {
    pictureDataModifiedDate4 = [(_HKMedicalIDData *)mergeCopy pictureDataModifiedDate];

    selfCopy11 = self;
    if (pictureDataModifiedDate4)
    {
      pictureDataModifiedDate5 = [(_HKMedicalIDData *)self pictureDataModifiedDate];
      pictureDataModifiedDate6 = [(_HKMedicalIDData *)mergeCopy pictureDataModifiedDate];
      v49 = [pictureDataModifiedDate5 hk_isBeforeDate:pictureDataModifiedDate6];

      selfCopy11 = mergeCopy;
      if ((v49 & 1) == 0)
      {
        pictureDataModifiedDate7 = [(_HKMedicalIDData *)self pictureDataModifiedDate];
        pictureDataModifiedDate8 = [(_HKMedicalIDData *)mergeCopy pictureDataModifiedDate];
        v52 = [pictureDataModifiedDate7 hk_isAfterDate:pictureDataModifiedDate8];

        pictureData6 = [(_HKMedicalIDData *)self pictureData];
        if (v52)
        {
          selfCopy11 = self;
          goto LABEL_51;
        }

        pictureData7 = [(_HKMedicalIDData *)mergeCopy pictureData];

        selfCopy11 = self;
        if (pictureData6 != pictureData7)
        {
          _HKInitializeLogging();
          v548 = HKLogMedicalID;
          if (os_log_type_enabled(v548, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          pictureData8 = [(_HKMedicalIDData *)self pictureData];

          selfCopy11 = self;
          if (!pictureData8)
          {
            _HKInitializeLogging();
            pictureData3 = HKLogMedicalID;
            if (os_log_type_enabled(pictureData3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy11 = self;
            goto LABEL_49;
          }
        }
      }
    }
  }

LABEL_50:
  pictureData6 = [(_HKMedicalIDData *)selfCopy11 pictureData];
LABEL_51:
  v62 = objc_opt_self();
  [v62 setPictureData:pictureData6];

  pictureDataModifiedDate9 = [(_HKMedicalIDData *)selfCopy11 pictureDataModifiedDate];
  v64 = objc_opt_self();
  [v64 setPictureDataModifiedDate:pictureDataModifiedDate9];

  nameModifiedDate = [(_HKMedicalIDData *)self nameModifiedDate];
  if (nameModifiedDate)
  {
  }

  else
  {
    nameModifiedDate2 = [(_HKMedicalIDData *)mergeCopy nameModifiedDate];

    if (!nameModifiedDate2)
    {
      name = [(_HKMedicalIDData *)self name];
      name2 = [(_HKMedicalIDData *)mergeCopy name];

      if (name != name2)
      {
        _HKInitializeLogging();
        v79 = HKLogMedicalID;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      name3 = [(_HKMedicalIDData *)self name];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        name4 = [(_HKMedicalIDData *)self name];

        selfCopy16 = mergeCopy;
        if (!name4)
        {
          goto LABEL_68;
        }

        name5 = [(_HKMedicalIDData *)self name];
        v83 = objc_opt_self();
        [v83 setName:name5];

        name3 = [(_HKMedicalIDData *)self nameModifiedDate];
        v84 = objc_opt_self();
        [v84 setNameModifiedDate:name3];
      }

      selfCopy16 = mergeCopy;
LABEL_67:

      goto LABEL_68;
    }
  }

  nameModifiedDate3 = [(_HKMedicalIDData *)self nameModifiedDate];

  selfCopy16 = mergeCopy;
  if (nameModifiedDate3)
  {
    nameModifiedDate4 = [(_HKMedicalIDData *)mergeCopy nameModifiedDate];

    selfCopy16 = self;
    if (nameModifiedDate4)
    {
      nameModifiedDate5 = [(_HKMedicalIDData *)self nameModifiedDate];
      nameModifiedDate6 = [(_HKMedicalIDData *)mergeCopy nameModifiedDate];
      v72 = [nameModifiedDate5 hk_isBeforeDate:nameModifiedDate6];

      selfCopy16 = mergeCopy;
      if ((v72 & 1) == 0)
      {
        nameModifiedDate7 = [(_HKMedicalIDData *)self nameModifiedDate];
        nameModifiedDate8 = [(_HKMedicalIDData *)mergeCopy nameModifiedDate];
        v75 = [nameModifiedDate7 hk_isAfterDate:nameModifiedDate8];

        name6 = [(_HKMedicalIDData *)self name];
        if (v75)
        {
          selfCopy16 = self;
          goto LABEL_69;
        }

        name7 = [(_HKMedicalIDData *)mergeCopy name];

        selfCopy16 = self;
        if (name6 != name7)
        {
          _HKInitializeLogging();
          v551 = HKLogMedicalID;
          if (os_log_type_enabled(v551, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          name8 = [(_HKMedicalIDData *)self name];

          selfCopy16 = self;
          if (!name8)
          {
            _HKInitializeLogging();
            name3 = HKLogMedicalID;
            if (os_log_type_enabled(name3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy16 = self;
            goto LABEL_67;
          }
        }
      }
    }
  }

LABEL_68:
  name6 = [(_HKMedicalIDData *)selfCopy16 name];
LABEL_69:
  v85 = objc_opt_self();
  [v85 setName:name6];

  nameModifiedDate9 = [(_HKMedicalIDData *)selfCopy16 nameModifiedDate];
  v87 = objc_opt_self();
  [v87 setNameModifiedDate:nameModifiedDate9];

  gregorianBirthdayModifiedDate = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];
  if (gregorianBirthdayModifiedDate)
  {
  }

  else
  {
    gregorianBirthdayModifiedDate2 = [(_HKMedicalIDData *)mergeCopy gregorianBirthdayModifiedDate];

    if (!gregorianBirthdayModifiedDate2)
    {
      gregorianBirthday = [(_HKMedicalIDData *)self gregorianBirthday];
      gregorianBirthday2 = [(_HKMedicalIDData *)mergeCopy gregorianBirthday];

      if (gregorianBirthday != gregorianBirthday2)
      {
        _HKInitializeLogging();
        v102 = HKLogMedicalID;
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      gregorianBirthday3 = [(_HKMedicalIDData *)self gregorianBirthday];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        gregorianBirthday4 = [(_HKMedicalIDData *)self gregorianBirthday];

        selfCopy21 = mergeCopy;
        if (!gregorianBirthday4)
        {
          goto LABEL_86;
        }

        gregorianBirthday5 = [(_HKMedicalIDData *)self gregorianBirthday];
        v106 = objc_opt_self();
        [v106 setGregorianBirthday:gregorianBirthday5];

        gregorianBirthday3 = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];
        v107 = objc_opt_self();
        [v107 setGregorianBirthdayModifiedDate:gregorianBirthday3];
      }

      selfCopy21 = mergeCopy;
LABEL_85:

      goto LABEL_86;
    }
  }

  gregorianBirthdayModifiedDate3 = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];

  selfCopy21 = mergeCopy;
  if (gregorianBirthdayModifiedDate3)
  {
    gregorianBirthdayModifiedDate4 = [(_HKMedicalIDData *)mergeCopy gregorianBirthdayModifiedDate];

    selfCopy21 = self;
    if (gregorianBirthdayModifiedDate4)
    {
      gregorianBirthdayModifiedDate5 = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];
      gregorianBirthdayModifiedDate6 = [(_HKMedicalIDData *)mergeCopy gregorianBirthdayModifiedDate];
      v95 = [gregorianBirthdayModifiedDate5 hk_isBeforeDate:gregorianBirthdayModifiedDate6];

      selfCopy21 = mergeCopy;
      if ((v95 & 1) == 0)
      {
        gregorianBirthdayModifiedDate7 = [(_HKMedicalIDData *)self gregorianBirthdayModifiedDate];
        gregorianBirthdayModifiedDate8 = [(_HKMedicalIDData *)mergeCopy gregorianBirthdayModifiedDate];
        v98 = [gregorianBirthdayModifiedDate7 hk_isAfterDate:gregorianBirthdayModifiedDate8];

        gregorianBirthday6 = [(_HKMedicalIDData *)self gregorianBirthday];
        if (v98)
        {
          selfCopy21 = self;
          goto LABEL_87;
        }

        gregorianBirthday7 = [(_HKMedicalIDData *)mergeCopy gregorianBirthday];

        selfCopy21 = self;
        if (gregorianBirthday6 != gregorianBirthday7)
        {
          _HKInitializeLogging();
          v554 = HKLogMedicalID;
          if (os_log_type_enabled(v554, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          gregorianBirthday8 = [(_HKMedicalIDData *)self gregorianBirthday];

          selfCopy21 = self;
          if (!gregorianBirthday8)
          {
            _HKInitializeLogging();
            gregorianBirthday3 = HKLogMedicalID;
            if (os_log_type_enabled(gregorianBirthday3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy21 = self;
            goto LABEL_85;
          }
        }
      }
    }
  }

LABEL_86:
  gregorianBirthday6 = [(_HKMedicalIDData *)selfCopy21 gregorianBirthday];
LABEL_87:
  v108 = objc_opt_self();
  [v108 setGregorianBirthday:gregorianBirthday6];

  gregorianBirthdayModifiedDate9 = [(_HKMedicalIDData *)selfCopy21 gregorianBirthdayModifiedDate];
  v110 = objc_opt_self();
  [v110 setGregorianBirthdayModifiedDate:gregorianBirthdayModifiedDate9];

  primaryLanguageCodeModifiedDate = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];
  if (primaryLanguageCodeModifiedDate)
  {
  }

  else
  {
    primaryLanguageCodeModifiedDate2 = [(_HKMedicalIDData *)mergeCopy primaryLanguageCodeModifiedDate];

    if (!primaryLanguageCodeModifiedDate2)
    {
      primaryLanguageCode = [(_HKMedicalIDData *)self primaryLanguageCode];
      primaryLanguageCode2 = [(_HKMedicalIDData *)mergeCopy primaryLanguageCode];

      if (primaryLanguageCode != primaryLanguageCode2)
      {
        _HKInitializeLogging();
        v125 = HKLogMedicalID;
        if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      primaryLanguageCode3 = [(_HKMedicalIDData *)self primaryLanguageCode];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        primaryLanguageCode4 = [(_HKMedicalIDData *)self primaryLanguageCode];

        selfCopy26 = mergeCopy;
        if (!primaryLanguageCode4)
        {
          goto LABEL_104;
        }

        primaryLanguageCode5 = [(_HKMedicalIDData *)self primaryLanguageCode];
        v129 = objc_opt_self();
        [v129 setPrimaryLanguageCode:primaryLanguageCode5];

        primaryLanguageCode3 = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];
        v130 = objc_opt_self();
        [v130 setPrimaryLanguageCodeModifiedDate:primaryLanguageCode3];
      }

      selfCopy26 = mergeCopy;
LABEL_103:

      goto LABEL_104;
    }
  }

  primaryLanguageCodeModifiedDate3 = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];

  selfCopy26 = mergeCopy;
  if (primaryLanguageCodeModifiedDate3)
  {
    primaryLanguageCodeModifiedDate4 = [(_HKMedicalIDData *)mergeCopy primaryLanguageCodeModifiedDate];

    selfCopy26 = self;
    if (primaryLanguageCodeModifiedDate4)
    {
      primaryLanguageCodeModifiedDate5 = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];
      primaryLanguageCodeModifiedDate6 = [(_HKMedicalIDData *)mergeCopy primaryLanguageCodeModifiedDate];
      v118 = [primaryLanguageCodeModifiedDate5 hk_isBeforeDate:primaryLanguageCodeModifiedDate6];

      selfCopy26 = mergeCopy;
      if ((v118 & 1) == 0)
      {
        primaryLanguageCodeModifiedDate7 = [(_HKMedicalIDData *)self primaryLanguageCodeModifiedDate];
        primaryLanguageCodeModifiedDate8 = [(_HKMedicalIDData *)mergeCopy primaryLanguageCodeModifiedDate];
        v121 = [primaryLanguageCodeModifiedDate7 hk_isAfterDate:primaryLanguageCodeModifiedDate8];

        primaryLanguageCode6 = [(_HKMedicalIDData *)self primaryLanguageCode];
        if (v121)
        {
          selfCopy26 = self;
          goto LABEL_105;
        }

        primaryLanguageCode7 = [(_HKMedicalIDData *)mergeCopy primaryLanguageCode];

        selfCopy26 = self;
        if (primaryLanguageCode6 != primaryLanguageCode7)
        {
          _HKInitializeLogging();
          v557 = HKLogMedicalID;
          if (os_log_type_enabled(v557, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          primaryLanguageCode8 = [(_HKMedicalIDData *)self primaryLanguageCode];

          selfCopy26 = self;
          if (!primaryLanguageCode8)
          {
            _HKInitializeLogging();
            primaryLanguageCode3 = HKLogMedicalID;
            if (os_log_type_enabled(primaryLanguageCode3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy26 = self;
            goto LABEL_103;
          }
        }
      }
    }
  }

LABEL_104:
  primaryLanguageCode6 = [(_HKMedicalIDData *)selfCopy26 primaryLanguageCode];
LABEL_105:
  v131 = objc_opt_self();
  [v131 setPrimaryLanguageCode:primaryLanguageCode6];

  primaryLanguageCodeModifiedDate9 = [(_HKMedicalIDData *)selfCopy26 primaryLanguageCodeModifiedDate];
  v133 = objc_opt_self();
  [v133 setPrimaryLanguageCodeModifiedDate:primaryLanguageCodeModifiedDate9];

  heightModifiedDate = [(_HKMedicalIDData *)self heightModifiedDate];
  if (heightModifiedDate)
  {
  }

  else
  {
    heightModifiedDate2 = [(_HKMedicalIDData *)mergeCopy heightModifiedDate];

    if (!heightModifiedDate2)
    {
      height = [(_HKMedicalIDData *)self height];
      height2 = [(_HKMedicalIDData *)mergeCopy height];

      if (height != height2)
      {
        _HKInitializeLogging();
        v148 = HKLogMedicalID;
        if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      height3 = [(_HKMedicalIDData *)self height];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        height4 = [(_HKMedicalIDData *)self height];

        selfCopy31 = mergeCopy;
        if (!height4)
        {
          goto LABEL_122;
        }

        height5 = [(_HKMedicalIDData *)self height];
        v152 = objc_opt_self();
        [v152 setHeight:height5];

        height3 = [(_HKMedicalIDData *)self heightModifiedDate];
        v153 = objc_opt_self();
        [v153 setHeightModifiedDate:height3];
      }

      selfCopy31 = mergeCopy;
LABEL_121:

      goto LABEL_122;
    }
  }

  heightModifiedDate3 = [(_HKMedicalIDData *)self heightModifiedDate];

  selfCopy31 = mergeCopy;
  if (heightModifiedDate3)
  {
    heightModifiedDate4 = [(_HKMedicalIDData *)mergeCopy heightModifiedDate];

    selfCopy31 = self;
    if (heightModifiedDate4)
    {
      heightModifiedDate5 = [(_HKMedicalIDData *)self heightModifiedDate];
      heightModifiedDate6 = [(_HKMedicalIDData *)mergeCopy heightModifiedDate];
      v141 = [heightModifiedDate5 hk_isBeforeDate:heightModifiedDate6];

      selfCopy31 = mergeCopy;
      if ((v141 & 1) == 0)
      {
        heightModifiedDate7 = [(_HKMedicalIDData *)self heightModifiedDate];
        heightModifiedDate8 = [(_HKMedicalIDData *)mergeCopy heightModifiedDate];
        v144 = [heightModifiedDate7 hk_isAfterDate:heightModifiedDate8];

        height6 = [(_HKMedicalIDData *)self height];
        if (v144)
        {
          selfCopy31 = self;
          goto LABEL_123;
        }

        height7 = [(_HKMedicalIDData *)mergeCopy height];

        selfCopy31 = self;
        if (height6 != height7)
        {
          _HKInitializeLogging();
          v560 = HKLogMedicalID;
          if (os_log_type_enabled(v560, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          height8 = [(_HKMedicalIDData *)self height];

          selfCopy31 = self;
          if (!height8)
          {
            _HKInitializeLogging();
            height3 = HKLogMedicalID;
            if (os_log_type_enabled(height3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy31 = self;
            goto LABEL_121;
          }
        }
      }
    }
  }

LABEL_122:
  height6 = [(_HKMedicalIDData *)selfCopy31 height];
LABEL_123:
  v154 = objc_opt_self();
  [v154 setHeight:height6];

  heightModifiedDate9 = [(_HKMedicalIDData *)selfCopy31 heightModifiedDate];
  v156 = objc_opt_self();
  [v156 setHeightModifiedDate:heightModifiedDate9];

  weightModifiedDate = [(_HKMedicalIDData *)self weightModifiedDate];
  if (weightModifiedDate)
  {
  }

  else
  {
    weightModifiedDate2 = [(_HKMedicalIDData *)mergeCopy weightModifiedDate];

    if (!weightModifiedDate2)
    {
      weight = [(_HKMedicalIDData *)self weight];
      weight2 = [(_HKMedicalIDData *)mergeCopy weight];

      if (weight != weight2)
      {
        _HKInitializeLogging();
        v171 = HKLogMedicalID;
        if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      weight3 = [(_HKMedicalIDData *)self weight];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        weight4 = [(_HKMedicalIDData *)self weight];

        selfCopy36 = mergeCopy;
        if (!weight4)
        {
          goto LABEL_140;
        }

        weight5 = [(_HKMedicalIDData *)self weight];
        v175 = objc_opt_self();
        [v175 setWeight:weight5];

        weight3 = [(_HKMedicalIDData *)self weightModifiedDate];
        v176 = objc_opt_self();
        [v176 setWeightModifiedDate:weight3];
      }

      selfCopy36 = mergeCopy;
LABEL_139:

      goto LABEL_140;
    }
  }

  weightModifiedDate3 = [(_HKMedicalIDData *)self weightModifiedDate];

  selfCopy36 = mergeCopy;
  if (weightModifiedDate3)
  {
    weightModifiedDate4 = [(_HKMedicalIDData *)mergeCopy weightModifiedDate];

    selfCopy36 = self;
    if (weightModifiedDate4)
    {
      weightModifiedDate5 = [(_HKMedicalIDData *)self weightModifiedDate];
      weightModifiedDate6 = [(_HKMedicalIDData *)mergeCopy weightModifiedDate];
      v164 = [weightModifiedDate5 hk_isBeforeDate:weightModifiedDate6];

      selfCopy36 = mergeCopy;
      if ((v164 & 1) == 0)
      {
        weightModifiedDate7 = [(_HKMedicalIDData *)self weightModifiedDate];
        weightModifiedDate8 = [(_HKMedicalIDData *)mergeCopy weightModifiedDate];
        v167 = [weightModifiedDate7 hk_isAfterDate:weightModifiedDate8];

        weight6 = [(_HKMedicalIDData *)self weight];
        if (v167)
        {
          selfCopy36 = self;
          goto LABEL_141;
        }

        weight7 = [(_HKMedicalIDData *)mergeCopy weight];

        selfCopy36 = self;
        if (weight6 != weight7)
        {
          _HKInitializeLogging();
          v563 = HKLogMedicalID;
          if (os_log_type_enabled(v563, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          weight8 = [(_HKMedicalIDData *)self weight];

          selfCopy36 = self;
          if (!weight8)
          {
            _HKInitializeLogging();
            weight3 = HKLogMedicalID;
            if (os_log_type_enabled(weight3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy36 = self;
            goto LABEL_139;
          }
        }
      }
    }
  }

LABEL_140:
  weight6 = [(_HKMedicalIDData *)selfCopy36 weight];
LABEL_141:
  v177 = objc_opt_self();
  [v177 setWeight:weight6];

  weightModifiedDate9 = [(_HKMedicalIDData *)selfCopy36 weightModifiedDate];
  v179 = objc_opt_self();
  [v179 setWeightModifiedDate:weightModifiedDate9];

  isOrganDonorModifiedDate = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];
  if (isOrganDonorModifiedDate)
  {
  }

  else
  {
    isOrganDonorModifiedDate2 = [(_HKMedicalIDData *)mergeCopy isOrganDonorModifiedDate];

    if (!isOrganDonorModifiedDate2)
    {
      isOrganDonor = [(_HKMedicalIDData *)self isOrganDonor];
      isOrganDonor2 = [(_HKMedicalIDData *)mergeCopy isOrganDonor];

      if (isOrganDonor != isOrganDonor2)
      {
        _HKInitializeLogging();
        v194 = HKLogMedicalID;
        if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      isOrganDonor3 = [(_HKMedicalIDData *)self isOrganDonor];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isOrganDonor4 = [(_HKMedicalIDData *)self isOrganDonor];

        selfCopy41 = mergeCopy;
        if (!isOrganDonor4)
        {
          goto LABEL_158;
        }

        isOrganDonor5 = [(_HKMedicalIDData *)self isOrganDonor];
        v198 = objc_opt_self();
        [v198 setIsOrganDonor:isOrganDonor5];

        isOrganDonor3 = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];
        v199 = objc_opt_self();
        [v199 setIsOrganDonorModifiedDate:isOrganDonor3];
      }

      selfCopy41 = mergeCopy;
LABEL_157:

      goto LABEL_158;
    }
  }

  isOrganDonorModifiedDate3 = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];

  selfCopy41 = mergeCopy;
  if (isOrganDonorModifiedDate3)
  {
    isOrganDonorModifiedDate4 = [(_HKMedicalIDData *)mergeCopy isOrganDonorModifiedDate];

    selfCopy41 = self;
    if (isOrganDonorModifiedDate4)
    {
      isOrganDonorModifiedDate5 = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];
      isOrganDonorModifiedDate6 = [(_HKMedicalIDData *)mergeCopy isOrganDonorModifiedDate];
      v187 = [isOrganDonorModifiedDate5 hk_isBeforeDate:isOrganDonorModifiedDate6];

      selfCopy41 = mergeCopy;
      if ((v187 & 1) == 0)
      {
        isOrganDonorModifiedDate7 = [(_HKMedicalIDData *)self isOrganDonorModifiedDate];
        isOrganDonorModifiedDate8 = [(_HKMedicalIDData *)mergeCopy isOrganDonorModifiedDate];
        v190 = [isOrganDonorModifiedDate7 hk_isAfterDate:isOrganDonorModifiedDate8];

        isOrganDonor6 = [(_HKMedicalIDData *)self isOrganDonor];
        if (v190)
        {
          selfCopy41 = self;
          goto LABEL_159;
        }

        isOrganDonor7 = [(_HKMedicalIDData *)mergeCopy isOrganDonor];

        selfCopy41 = self;
        if (isOrganDonor6 != isOrganDonor7)
        {
          _HKInitializeLogging();
          v566 = HKLogMedicalID;
          if (os_log_type_enabled(v566, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          isOrganDonor8 = [(_HKMedicalIDData *)self isOrganDonor];

          selfCopy41 = self;
          if (!isOrganDonor8)
          {
            _HKInitializeLogging();
            isOrganDonor3 = HKLogMedicalID;
            if (os_log_type_enabled(isOrganDonor3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy41 = self;
            goto LABEL_157;
          }
        }
      }
    }
  }

LABEL_158:
  isOrganDonor6 = [(_HKMedicalIDData *)selfCopy41 isOrganDonor];
LABEL_159:
  v200 = objc_opt_self();
  [v200 setIsOrganDonor:isOrganDonor6];

  isOrganDonorModifiedDate9 = [(_HKMedicalIDData *)selfCopy41 isOrganDonorModifiedDate];
  v202 = objc_opt_self();
  [v202 setIsOrganDonorModifiedDate:isOrganDonorModifiedDate9];

  bloodTypeModifiedDate = [(_HKMedicalIDData *)self bloodTypeModifiedDate];
  if (bloodTypeModifiedDate)
  {

    goto LABEL_162;
  }

  bloodTypeModifiedDate2 = [(_HKMedicalIDData *)mergeCopy bloodTypeModifiedDate];

  if (bloodTypeModifiedDate2)
  {
LABEL_162:
    bloodTypeModifiedDate3 = [(_HKMedicalIDData *)self bloodTypeModifiedDate];

    selfCopy46 = mergeCopy;
    if (bloodTypeModifiedDate3)
    {
      bloodTypeModifiedDate4 = [(_HKMedicalIDData *)mergeCopy bloodTypeModifiedDate];

      selfCopy46 = self;
      if (bloodTypeModifiedDate4)
      {
        bloodTypeModifiedDate5 = [(_HKMedicalIDData *)self bloodTypeModifiedDate];
        bloodTypeModifiedDate6 = [(_HKMedicalIDData *)mergeCopy bloodTypeModifiedDate];
        v210 = [bloodTypeModifiedDate5 hk_isBeforeDate:bloodTypeModifiedDate6];

        selfCopy46 = mergeCopy;
        if ((v210 & 1) == 0)
        {
          bloodTypeModifiedDate7 = [(_HKMedicalIDData *)self bloodTypeModifiedDate];
          bloodTypeModifiedDate8 = [(_HKMedicalIDData *)mergeCopy bloodTypeModifiedDate];
          v213 = [bloodTypeModifiedDate7 hk_isAfterDate:bloodTypeModifiedDate8];

          bloodType = [(_HKMedicalIDData *)self bloodType];
          selfCopy46 = self;
          if (v213)
          {
            goto LABEL_174;
          }

          selfCopy46 = self;
          if (bloodType != [(_HKMedicalIDData *)mergeCopy bloodType])
          {
            _HKInitializeLogging();
            v215 = HKLogMedicalID;
            if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

LABEL_172:

            selfCopy46 = self;
            goto LABEL_173;
          }
        }
      }
    }

    goto LABEL_173;
  }

  bloodType2 = [(_HKMedicalIDData *)self bloodType];
  selfCopy46 = self;
  if (bloodType2 != [(_HKMedicalIDData *)mergeCopy bloodType])
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
  bloodType = [(_HKMedicalIDData *)selfCopy46 bloodType];
LABEL_174:
  v217 = objc_opt_self();
  [v217 setBloodType:bloodType];

  bloodTypeModifiedDate9 = [(_HKMedicalIDData *)selfCopy46 bloodTypeModifiedDate];
  v219 = objc_opt_self();
  [v219 setBloodTypeModifiedDate:bloodTypeModifiedDate9];

  emergencyContactsModifiedDate = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];
  if (emergencyContactsModifiedDate)
  {
  }

  else
  {
    emergencyContactsModifiedDate2 = [(_HKMedicalIDData *)mergeCopy emergencyContactsModifiedDate];

    if (!emergencyContactsModifiedDate2)
    {
      emergencyContacts = [(_HKMedicalIDData *)self emergencyContacts];
      emergencyContacts2 = [(_HKMedicalIDData *)mergeCopy emergencyContacts];

      if (emergencyContacts != emergencyContacts2)
      {
        _HKInitializeLogging();
        v234 = HKLogMedicalID;
        if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      emergencyContacts3 = [(_HKMedicalIDData *)self emergencyContacts];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        emergencyContacts4 = [(_HKMedicalIDData *)self emergencyContacts];

        selfCopy51 = mergeCopy;
        if (!emergencyContacts4)
        {
          goto LABEL_191;
        }

        emergencyContacts5 = [(_HKMedicalIDData *)self emergencyContacts];
        v238 = objc_opt_self();
        [v238 setEmergencyContacts:emergencyContacts5];

        emergencyContacts3 = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];
        v239 = objc_opt_self();
        [v239 setEmergencyContactsModifiedDate:emergencyContacts3];
      }

      selfCopy51 = mergeCopy;
LABEL_190:

      goto LABEL_191;
    }
  }

  emergencyContactsModifiedDate3 = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];

  selfCopy51 = mergeCopy;
  if (emergencyContactsModifiedDate3)
  {
    emergencyContactsModifiedDate4 = [(_HKMedicalIDData *)mergeCopy emergencyContactsModifiedDate];

    selfCopy51 = self;
    if (emergencyContactsModifiedDate4)
    {
      emergencyContactsModifiedDate5 = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];
      emergencyContactsModifiedDate6 = [(_HKMedicalIDData *)mergeCopy emergencyContactsModifiedDate];
      v227 = [emergencyContactsModifiedDate5 hk_isBeforeDate:emergencyContactsModifiedDate6];

      selfCopy51 = mergeCopy;
      if ((v227 & 1) == 0)
      {
        emergencyContactsModifiedDate7 = [(_HKMedicalIDData *)self emergencyContactsModifiedDate];
        emergencyContactsModifiedDate8 = [(_HKMedicalIDData *)mergeCopy emergencyContactsModifiedDate];
        v230 = [emergencyContactsModifiedDate7 hk_isAfterDate:emergencyContactsModifiedDate8];

        emergencyContacts6 = [(_HKMedicalIDData *)self emergencyContacts];
        if (v230)
        {
          selfCopy51 = self;
          goto LABEL_192;
        }

        emergencyContacts7 = [(_HKMedicalIDData *)mergeCopy emergencyContacts];

        selfCopy51 = self;
        if (emergencyContacts6 != emergencyContacts7)
        {
          _HKInitializeLogging();
          v569 = HKLogMedicalID;
          if (os_log_type_enabled(v569, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          emergencyContacts8 = [(_HKMedicalIDData *)self emergencyContacts];

          selfCopy51 = self;
          if (!emergencyContacts8)
          {
            _HKInitializeLogging();
            emergencyContacts3 = HKLogMedicalID;
            if (os_log_type_enabled(emergencyContacts3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy51 = self;
            goto LABEL_190;
          }
        }
      }
    }
  }

LABEL_191:
  emergencyContacts6 = [(_HKMedicalIDData *)selfCopy51 emergencyContacts];
LABEL_192:
  v240 = objc_opt_self();
  [v240 setEmergencyContacts:emergencyContacts6];

  emergencyContactsModifiedDate9 = [(_HKMedicalIDData *)selfCopy51 emergencyContactsModifiedDate];
  v242 = objc_opt_self();
  [v242 setEmergencyContactsModifiedDate:emergencyContactsModifiedDate9];

  clinicalContactsModifiedDate = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];
  if (clinicalContactsModifiedDate)
  {
  }

  else
  {
    clinicalContactsModifiedDate2 = [(_HKMedicalIDData *)mergeCopy clinicalContactsModifiedDate];

    if (!clinicalContactsModifiedDate2)
    {
      clinicalContacts = [(_HKMedicalIDData *)self clinicalContacts];
      clinicalContacts2 = [(_HKMedicalIDData *)mergeCopy clinicalContacts];

      if (clinicalContacts != clinicalContacts2)
      {
        _HKInitializeLogging();
        v257 = HKLogMedicalID;
        if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      clinicalContacts3 = [(_HKMedicalIDData *)self clinicalContacts];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        clinicalContacts4 = [(_HKMedicalIDData *)self clinicalContacts];

        selfCopy56 = mergeCopy;
        if (!clinicalContacts4)
        {
          goto LABEL_209;
        }

        clinicalContacts5 = [(_HKMedicalIDData *)self clinicalContacts];
        v261 = objc_opt_self();
        [v261 setClinicalContacts:clinicalContacts5];

        clinicalContacts3 = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];
        v262 = objc_opt_self();
        [v262 setClinicalContactsModifiedDate:clinicalContacts3];
      }

      selfCopy56 = mergeCopy;
LABEL_208:

      goto LABEL_209;
    }
  }

  clinicalContactsModifiedDate3 = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];

  selfCopy56 = mergeCopy;
  if (clinicalContactsModifiedDate3)
  {
    clinicalContactsModifiedDate4 = [(_HKMedicalIDData *)mergeCopy clinicalContactsModifiedDate];

    selfCopy56 = self;
    if (clinicalContactsModifiedDate4)
    {
      clinicalContactsModifiedDate5 = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];
      clinicalContactsModifiedDate6 = [(_HKMedicalIDData *)mergeCopy clinicalContactsModifiedDate];
      v250 = [clinicalContactsModifiedDate5 hk_isBeforeDate:clinicalContactsModifiedDate6];

      selfCopy56 = mergeCopy;
      if ((v250 & 1) == 0)
      {
        clinicalContactsModifiedDate7 = [(_HKMedicalIDData *)self clinicalContactsModifiedDate];
        clinicalContactsModifiedDate8 = [(_HKMedicalIDData *)mergeCopy clinicalContactsModifiedDate];
        v253 = [clinicalContactsModifiedDate7 hk_isAfterDate:clinicalContactsModifiedDate8];

        clinicalContacts6 = [(_HKMedicalIDData *)self clinicalContacts];
        if (v253)
        {
          selfCopy56 = self;
          goto LABEL_210;
        }

        clinicalContacts7 = [(_HKMedicalIDData *)mergeCopy clinicalContacts];

        selfCopy56 = self;
        if (clinicalContacts6 != clinicalContacts7)
        {
          _HKInitializeLogging();
          v572 = HKLogMedicalID;
          if (os_log_type_enabled(v572, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          clinicalContacts8 = [(_HKMedicalIDData *)self clinicalContacts];

          selfCopy56 = self;
          if (!clinicalContacts8)
          {
            _HKInitializeLogging();
            clinicalContacts3 = HKLogMedicalID;
            if (os_log_type_enabled(clinicalContacts3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy56 = self;
            goto LABEL_208;
          }
        }
      }
    }
  }

LABEL_209:
  clinicalContacts6 = [(_HKMedicalIDData *)selfCopy56 clinicalContacts];
LABEL_210:
  v263 = objc_opt_self();
  [v263 setClinicalContacts:clinicalContacts6];

  clinicalContactsModifiedDate9 = [(_HKMedicalIDData *)selfCopy56 clinicalContactsModifiedDate];
  v265 = objc_opt_self();
  [v265 setClinicalContactsModifiedDate:clinicalContactsModifiedDate9];

  medicalConditionsModifiedDate = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];
  if (medicalConditionsModifiedDate)
  {
  }

  else
  {
    medicalConditionsModifiedDate2 = [(_HKMedicalIDData *)mergeCopy medicalConditionsModifiedDate];

    if (!medicalConditionsModifiedDate2)
    {
      medicalConditions = [(_HKMedicalIDData *)self medicalConditions];
      medicalConditions2 = [(_HKMedicalIDData *)mergeCopy medicalConditions];

      if (medicalConditions != medicalConditions2)
      {
        _HKInitializeLogging();
        v280 = HKLogMedicalID;
        if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      medicalConditions3 = [(_HKMedicalIDData *)self medicalConditions];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        medicalConditions4 = [(_HKMedicalIDData *)self medicalConditions];

        selfCopy61 = mergeCopy;
        if (!medicalConditions4)
        {
          goto LABEL_227;
        }

        medicalConditions5 = [(_HKMedicalIDData *)self medicalConditions];
        v284 = objc_opt_self();
        [v284 setMedicalConditions:medicalConditions5];

        medicalConditions3 = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];
        v285 = objc_opt_self();
        [v285 setMedicalConditionsModifiedDate:medicalConditions3];
      }

      selfCopy61 = mergeCopy;
LABEL_226:

      goto LABEL_227;
    }
  }

  medicalConditionsModifiedDate3 = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];

  selfCopy61 = mergeCopy;
  if (medicalConditionsModifiedDate3)
  {
    medicalConditionsModifiedDate4 = [(_HKMedicalIDData *)mergeCopy medicalConditionsModifiedDate];

    selfCopy61 = self;
    if (medicalConditionsModifiedDate4)
    {
      medicalConditionsModifiedDate5 = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];
      medicalConditionsModifiedDate6 = [(_HKMedicalIDData *)mergeCopy medicalConditionsModifiedDate];
      v273 = [medicalConditionsModifiedDate5 hk_isBeforeDate:medicalConditionsModifiedDate6];

      selfCopy61 = mergeCopy;
      if ((v273 & 1) == 0)
      {
        medicalConditionsModifiedDate7 = [(_HKMedicalIDData *)self medicalConditionsModifiedDate];
        medicalConditionsModifiedDate8 = [(_HKMedicalIDData *)mergeCopy medicalConditionsModifiedDate];
        v276 = [medicalConditionsModifiedDate7 hk_isAfterDate:medicalConditionsModifiedDate8];

        medicalConditions6 = [(_HKMedicalIDData *)self medicalConditions];
        if (v276)
        {
          selfCopy61 = self;
          goto LABEL_228;
        }

        medicalConditions7 = [(_HKMedicalIDData *)mergeCopy medicalConditions];

        selfCopy61 = self;
        if (medicalConditions6 != medicalConditions7)
        {
          _HKInitializeLogging();
          v575 = HKLogMedicalID;
          if (os_log_type_enabled(v575, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          medicalConditions8 = [(_HKMedicalIDData *)self medicalConditions];

          selfCopy61 = self;
          if (!medicalConditions8)
          {
            _HKInitializeLogging();
            medicalConditions3 = HKLogMedicalID;
            if (os_log_type_enabled(medicalConditions3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy61 = self;
            goto LABEL_226;
          }
        }
      }
    }
  }

LABEL_227:
  medicalConditions6 = [(_HKMedicalIDData *)selfCopy61 medicalConditions];
LABEL_228:
  v286 = objc_opt_self();
  [v286 setMedicalConditions:medicalConditions6];

  medicalConditionsModifiedDate9 = [(_HKMedicalIDData *)selfCopy61 medicalConditionsModifiedDate];
  v288 = objc_opt_self();
  [v288 setMedicalConditionsModifiedDate:medicalConditionsModifiedDate9];

  medicalNotesModifiedDate = [(_HKMedicalIDData *)self medicalNotesModifiedDate];
  if (medicalNotesModifiedDate)
  {
  }

  else
  {
    medicalNotesModifiedDate2 = [(_HKMedicalIDData *)mergeCopy medicalNotesModifiedDate];

    if (!medicalNotesModifiedDate2)
    {
      medicalNotes = [(_HKMedicalIDData *)self medicalNotes];
      medicalNotes2 = [(_HKMedicalIDData *)mergeCopy medicalNotes];

      if (medicalNotes != medicalNotes2)
      {
        _HKInitializeLogging();
        v303 = HKLogMedicalID;
        if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      medicalNotes3 = [(_HKMedicalIDData *)self medicalNotes];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        medicalNotes4 = [(_HKMedicalIDData *)self medicalNotes];

        selfCopy66 = mergeCopy;
        if (!medicalNotes4)
        {
          goto LABEL_245;
        }

        medicalNotes5 = [(_HKMedicalIDData *)self medicalNotes];
        v307 = objc_opt_self();
        [v307 setMedicalNotes:medicalNotes5];

        medicalNotes3 = [(_HKMedicalIDData *)self medicalNotesModifiedDate];
        v308 = objc_opt_self();
        [v308 setMedicalNotesModifiedDate:medicalNotes3];
      }

      selfCopy66 = mergeCopy;
LABEL_244:

      goto LABEL_245;
    }
  }

  medicalNotesModifiedDate3 = [(_HKMedicalIDData *)self medicalNotesModifiedDate];

  selfCopy66 = mergeCopy;
  if (medicalNotesModifiedDate3)
  {
    medicalNotesModifiedDate4 = [(_HKMedicalIDData *)mergeCopy medicalNotesModifiedDate];

    selfCopy66 = self;
    if (medicalNotesModifiedDate4)
    {
      medicalNotesModifiedDate5 = [(_HKMedicalIDData *)self medicalNotesModifiedDate];
      medicalNotesModifiedDate6 = [(_HKMedicalIDData *)mergeCopy medicalNotesModifiedDate];
      v296 = [medicalNotesModifiedDate5 hk_isBeforeDate:medicalNotesModifiedDate6];

      selfCopy66 = mergeCopy;
      if ((v296 & 1) == 0)
      {
        medicalNotesModifiedDate7 = [(_HKMedicalIDData *)self medicalNotesModifiedDate];
        medicalNotesModifiedDate8 = [(_HKMedicalIDData *)mergeCopy medicalNotesModifiedDate];
        v299 = [medicalNotesModifiedDate7 hk_isAfterDate:medicalNotesModifiedDate8];

        medicalNotes6 = [(_HKMedicalIDData *)self medicalNotes];
        if (v299)
        {
          selfCopy66 = self;
          goto LABEL_246;
        }

        medicalNotes7 = [(_HKMedicalIDData *)mergeCopy medicalNotes];

        selfCopy66 = self;
        if (medicalNotes6 != medicalNotes7)
        {
          _HKInitializeLogging();
          v578 = HKLogMedicalID;
          if (os_log_type_enabled(v578, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          medicalNotes8 = [(_HKMedicalIDData *)self medicalNotes];

          selfCopy66 = self;
          if (!medicalNotes8)
          {
            _HKInitializeLogging();
            medicalNotes3 = HKLogMedicalID;
            if (os_log_type_enabled(medicalNotes3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy66 = self;
            goto LABEL_244;
          }
        }
      }
    }
  }

LABEL_245:
  medicalNotes6 = [(_HKMedicalIDData *)selfCopy66 medicalNotes];
LABEL_246:
  v309 = objc_opt_self();
  [v309 setMedicalNotes:medicalNotes6];

  medicalNotesModifiedDate9 = [(_HKMedicalIDData *)selfCopy66 medicalNotesModifiedDate];
  v311 = objc_opt_self();
  [v311 setMedicalNotesModifiedDate:medicalNotesModifiedDate9];

  allergyInfoModifiedDate = [(_HKMedicalIDData *)self allergyInfoModifiedDate];
  if (allergyInfoModifiedDate)
  {
  }

  else
  {
    allergyInfoModifiedDate2 = [(_HKMedicalIDData *)mergeCopy allergyInfoModifiedDate];

    if (!allergyInfoModifiedDate2)
    {
      allergyInfo = [(_HKMedicalIDData *)self allergyInfo];
      allergyInfo2 = [(_HKMedicalIDData *)mergeCopy allergyInfo];

      if (allergyInfo != allergyInfo2)
      {
        _HKInitializeLogging();
        v326 = HKLogMedicalID;
        if (os_log_type_enabled(v326, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      allergyInfo3 = [(_HKMedicalIDData *)self allergyInfo];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        allergyInfo4 = [(_HKMedicalIDData *)self allergyInfo];

        selfCopy71 = mergeCopy;
        if (!allergyInfo4)
        {
          goto LABEL_263;
        }

        allergyInfo5 = [(_HKMedicalIDData *)self allergyInfo];
        v330 = objc_opt_self();
        [v330 setAllergyInfo:allergyInfo5];

        allergyInfo3 = [(_HKMedicalIDData *)self allergyInfoModifiedDate];
        v331 = objc_opt_self();
        [v331 setAllergyInfoModifiedDate:allergyInfo3];
      }

      selfCopy71 = mergeCopy;
LABEL_262:

      goto LABEL_263;
    }
  }

  allergyInfoModifiedDate3 = [(_HKMedicalIDData *)self allergyInfoModifiedDate];

  selfCopy71 = mergeCopy;
  if (allergyInfoModifiedDate3)
  {
    allergyInfoModifiedDate4 = [(_HKMedicalIDData *)mergeCopy allergyInfoModifiedDate];

    selfCopy71 = self;
    if (allergyInfoModifiedDate4)
    {
      allergyInfoModifiedDate5 = [(_HKMedicalIDData *)self allergyInfoModifiedDate];
      allergyInfoModifiedDate6 = [(_HKMedicalIDData *)mergeCopy allergyInfoModifiedDate];
      v319 = [allergyInfoModifiedDate5 hk_isBeforeDate:allergyInfoModifiedDate6];

      selfCopy71 = mergeCopy;
      if ((v319 & 1) == 0)
      {
        allergyInfoModifiedDate7 = [(_HKMedicalIDData *)self allergyInfoModifiedDate];
        allergyInfoModifiedDate8 = [(_HKMedicalIDData *)mergeCopy allergyInfoModifiedDate];
        v322 = [allergyInfoModifiedDate7 hk_isAfterDate:allergyInfoModifiedDate8];

        allergyInfo6 = [(_HKMedicalIDData *)self allergyInfo];
        if (v322)
        {
          selfCopy71 = self;
          goto LABEL_264;
        }

        allergyInfo7 = [(_HKMedicalIDData *)mergeCopy allergyInfo];

        selfCopy71 = self;
        if (allergyInfo6 != allergyInfo7)
        {
          _HKInitializeLogging();
          v581 = HKLogMedicalID;
          if (os_log_type_enabled(v581, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          allergyInfo8 = [(_HKMedicalIDData *)self allergyInfo];

          selfCopy71 = self;
          if (!allergyInfo8)
          {
            _HKInitializeLogging();
            allergyInfo3 = HKLogMedicalID;
            if (os_log_type_enabled(allergyInfo3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy71 = self;
            goto LABEL_262;
          }
        }
      }
    }
  }

LABEL_263:
  allergyInfo6 = [(_HKMedicalIDData *)selfCopy71 allergyInfo];
LABEL_264:
  v332 = objc_opt_self();
  [v332 setAllergyInfo:allergyInfo6];

  allergyInfoModifiedDate9 = [(_HKMedicalIDData *)selfCopy71 allergyInfoModifiedDate];
  v334 = objc_opt_self();
  [v334 setAllergyInfoModifiedDate:allergyInfoModifiedDate9];

  medicationInfoModifiedDate = [(_HKMedicalIDData *)self medicationInfoModifiedDate];
  if (medicationInfoModifiedDate)
  {
  }

  else
  {
    medicationInfoModifiedDate2 = [(_HKMedicalIDData *)mergeCopy medicationInfoModifiedDate];

    if (!medicationInfoModifiedDate2)
    {
      medicationInfo = [(_HKMedicalIDData *)self medicationInfo];
      medicationInfo2 = [(_HKMedicalIDData *)mergeCopy medicationInfo];

      if (medicationInfo != medicationInfo2)
      {
        _HKInitializeLogging();
        v349 = HKLogMedicalID;
        if (os_log_type_enabled(v349, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      medicationInfo3 = [(_HKMedicalIDData *)self medicationInfo];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        medicationInfo4 = [(_HKMedicalIDData *)self medicationInfo];

        selfCopy76 = mergeCopy;
        if (!medicationInfo4)
        {
          goto LABEL_281;
        }

        medicationInfo5 = [(_HKMedicalIDData *)self medicationInfo];
        v353 = objc_opt_self();
        [v353 setMedicationInfo:medicationInfo5];

        medicationInfo3 = [(_HKMedicalIDData *)self medicationInfoModifiedDate];
        v354 = objc_opt_self();
        [v354 setMedicationInfoModifiedDate:medicationInfo3];
      }

      selfCopy76 = mergeCopy;
LABEL_280:

      goto LABEL_281;
    }
  }

  medicationInfoModifiedDate3 = [(_HKMedicalIDData *)self medicationInfoModifiedDate];

  selfCopy76 = mergeCopy;
  if (medicationInfoModifiedDate3)
  {
    medicationInfoModifiedDate4 = [(_HKMedicalIDData *)mergeCopy medicationInfoModifiedDate];

    selfCopy76 = self;
    if (medicationInfoModifiedDate4)
    {
      medicationInfoModifiedDate5 = [(_HKMedicalIDData *)self medicationInfoModifiedDate];
      medicationInfoModifiedDate6 = [(_HKMedicalIDData *)mergeCopy medicationInfoModifiedDate];
      v342 = [medicationInfoModifiedDate5 hk_isBeforeDate:medicationInfoModifiedDate6];

      selfCopy76 = mergeCopy;
      if ((v342 & 1) == 0)
      {
        medicationInfoModifiedDate7 = [(_HKMedicalIDData *)self medicationInfoModifiedDate];
        medicationInfoModifiedDate8 = [(_HKMedicalIDData *)mergeCopy medicationInfoModifiedDate];
        v345 = [medicationInfoModifiedDate7 hk_isAfterDate:medicationInfoModifiedDate8];

        medicationInfo6 = [(_HKMedicalIDData *)self medicationInfo];
        if (v345)
        {
          selfCopy76 = self;
          goto LABEL_282;
        }

        medicationInfo7 = [(_HKMedicalIDData *)mergeCopy medicationInfo];

        selfCopy76 = self;
        if (medicationInfo6 != medicationInfo7)
        {
          _HKInitializeLogging();
          v584 = HKLogMedicalID;
          if (os_log_type_enabled(v584, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          medicationInfo8 = [(_HKMedicalIDData *)self medicationInfo];

          selfCopy76 = self;
          if (!medicationInfo8)
          {
            _HKInitializeLogging();
            medicationInfo3 = HKLogMedicalID;
            if (os_log_type_enabled(medicationInfo3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy76 = self;
            goto LABEL_280;
          }
        }
      }
    }
  }

LABEL_281:
  medicationInfo6 = [(_HKMedicalIDData *)selfCopy76 medicationInfo];
LABEL_282:
  v355 = objc_opt_self();
  [v355 setMedicationInfo:medicationInfo6];

  medicationInfoModifiedDate9 = [(_HKMedicalIDData *)selfCopy76 medicationInfoModifiedDate];
  v357 = objc_opt_self();
  [v357 setMedicationInfoModifiedDate:medicationInfoModifiedDate9];

  pregnancyStartDateModifiedDate = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];
  if (pregnancyStartDateModifiedDate)
  {
  }

  else
  {
    pregnancyStartDateModifiedDate2 = [(_HKMedicalIDData *)mergeCopy pregnancyStartDateModifiedDate];

    if (!pregnancyStartDateModifiedDate2)
    {
      pregnancyStartDate = [(_HKMedicalIDData *)self pregnancyStartDate];
      pregnancyStartDate2 = [(_HKMedicalIDData *)mergeCopy pregnancyStartDate];

      if (pregnancyStartDate != pregnancyStartDate2)
      {
        _HKInitializeLogging();
        v372 = HKLogMedicalID;
        if (os_log_type_enabled(v372, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      pregnancyStartDate3 = [(_HKMedicalIDData *)self pregnancyStartDate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        pregnancyStartDate4 = [(_HKMedicalIDData *)self pregnancyStartDate];

        selfCopy81 = mergeCopy;
        if (!pregnancyStartDate4)
        {
          goto LABEL_299;
        }

        pregnancyStartDate5 = [(_HKMedicalIDData *)self pregnancyStartDate];
        v376 = objc_opt_self();
        [v376 setPregnancyStartDate:pregnancyStartDate5];

        pregnancyStartDate3 = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];
        v377 = objc_opt_self();
        [v377 setPregnancyStartDateModifiedDate:pregnancyStartDate3];
      }

      selfCopy81 = mergeCopy;
LABEL_298:

      goto LABEL_299;
    }
  }

  pregnancyStartDateModifiedDate3 = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];

  selfCopy81 = mergeCopy;
  if (pregnancyStartDateModifiedDate3)
  {
    pregnancyStartDateModifiedDate4 = [(_HKMedicalIDData *)mergeCopy pregnancyStartDateModifiedDate];

    selfCopy81 = self;
    if (pregnancyStartDateModifiedDate4)
    {
      pregnancyStartDateModifiedDate5 = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];
      pregnancyStartDateModifiedDate6 = [(_HKMedicalIDData *)mergeCopy pregnancyStartDateModifiedDate];
      v365 = [pregnancyStartDateModifiedDate5 hk_isBeforeDate:pregnancyStartDateModifiedDate6];

      selfCopy81 = mergeCopy;
      if ((v365 & 1) == 0)
      {
        pregnancyStartDateModifiedDate7 = [(_HKMedicalIDData *)self pregnancyStartDateModifiedDate];
        pregnancyStartDateModifiedDate8 = [(_HKMedicalIDData *)mergeCopy pregnancyStartDateModifiedDate];
        v368 = [pregnancyStartDateModifiedDate7 hk_isAfterDate:pregnancyStartDateModifiedDate8];

        pregnancyStartDate6 = [(_HKMedicalIDData *)self pregnancyStartDate];
        if (v368)
        {
          selfCopy81 = self;
          goto LABEL_300;
        }

        pregnancyStartDate7 = [(_HKMedicalIDData *)mergeCopy pregnancyStartDate];

        selfCopy81 = self;
        if (pregnancyStartDate6 != pregnancyStartDate7)
        {
          _HKInitializeLogging();
          v587 = HKLogMedicalID;
          if (os_log_type_enabled(v587, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          pregnancyStartDate8 = [(_HKMedicalIDData *)self pregnancyStartDate];

          selfCopy81 = self;
          if (!pregnancyStartDate8)
          {
            _HKInitializeLogging();
            pregnancyStartDate3 = HKLogMedicalID;
            if (os_log_type_enabled(pregnancyStartDate3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy81 = self;
            goto LABEL_298;
          }
        }
      }
    }
  }

LABEL_299:
  pregnancyStartDate6 = [(_HKMedicalIDData *)selfCopy81 pregnancyStartDate];
LABEL_300:
  v378 = objc_opt_self();
  [v378 setPregnancyStartDate:pregnancyStartDate6];

  pregnancyStartDateModifiedDate9 = [(_HKMedicalIDData *)selfCopy81 pregnancyStartDateModifiedDate];
  v380 = objc_opt_self();
  [v380 setPregnancyStartDateModifiedDate:pregnancyStartDateModifiedDate9];

  pregnancyEstimatedDueDateModifiedDate = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];
  if (pregnancyEstimatedDueDateModifiedDate)
  {
  }

  else
  {
    pregnancyEstimatedDueDateModifiedDate2 = [(_HKMedicalIDData *)mergeCopy pregnancyEstimatedDueDateModifiedDate];

    if (!pregnancyEstimatedDueDateModifiedDate2)
    {
      pregnancyEstimatedDueDate = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
      pregnancyEstimatedDueDate2 = [(_HKMedicalIDData *)mergeCopy pregnancyEstimatedDueDate];

      if (pregnancyEstimatedDueDate != pregnancyEstimatedDueDate2)
      {
        _HKInitializeLogging();
        v395 = HKLogMedicalID;
        if (os_log_type_enabled(v395, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      pregnancyEstimatedDueDate3 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        pregnancyEstimatedDueDate4 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];

        selfCopy86 = mergeCopy;
        if (!pregnancyEstimatedDueDate4)
        {
          goto LABEL_317;
        }

        pregnancyEstimatedDueDate5 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
        v399 = objc_opt_self();
        [v399 setPregnancyEstimatedDueDate:pregnancyEstimatedDueDate5];

        pregnancyEstimatedDueDate3 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];
        v400 = objc_opt_self();
        [v400 setPregnancyEstimatedDueDateModifiedDate:pregnancyEstimatedDueDate3];
      }

      selfCopy86 = mergeCopy;
LABEL_316:

      goto LABEL_317;
    }
  }

  pregnancyEstimatedDueDateModifiedDate3 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];

  selfCopy86 = mergeCopy;
  if (pregnancyEstimatedDueDateModifiedDate3)
  {
    pregnancyEstimatedDueDateModifiedDate4 = [(_HKMedicalIDData *)mergeCopy pregnancyEstimatedDueDateModifiedDate];

    selfCopy86 = self;
    if (pregnancyEstimatedDueDateModifiedDate4)
    {
      pregnancyEstimatedDueDateModifiedDate5 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];
      pregnancyEstimatedDueDateModifiedDate6 = [(_HKMedicalIDData *)mergeCopy pregnancyEstimatedDueDateModifiedDate];
      v388 = [pregnancyEstimatedDueDateModifiedDate5 hk_isBeforeDate:pregnancyEstimatedDueDateModifiedDate6];

      selfCopy86 = mergeCopy;
      if ((v388 & 1) == 0)
      {
        pregnancyEstimatedDueDateModifiedDate7 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDateModifiedDate];
        pregnancyEstimatedDueDateModifiedDate8 = [(_HKMedicalIDData *)mergeCopy pregnancyEstimatedDueDateModifiedDate];
        v391 = [pregnancyEstimatedDueDateModifiedDate7 hk_isAfterDate:pregnancyEstimatedDueDateModifiedDate8];

        pregnancyEstimatedDueDate6 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];
        if (v391)
        {
          selfCopy86 = self;
          goto LABEL_318;
        }

        pregnancyEstimatedDueDate7 = [(_HKMedicalIDData *)mergeCopy pregnancyEstimatedDueDate];

        selfCopy86 = self;
        if (pregnancyEstimatedDueDate6 != pregnancyEstimatedDueDate7)
        {
          _HKInitializeLogging();
          v590 = HKLogMedicalID;
          if (os_log_type_enabled(v590, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          pregnancyEstimatedDueDate8 = [(_HKMedicalIDData *)self pregnancyEstimatedDueDate];

          selfCopy86 = self;
          if (!pregnancyEstimatedDueDate8)
          {
            _HKInitializeLogging();
            pregnancyEstimatedDueDate3 = HKLogMedicalID;
            if (os_log_type_enabled(pregnancyEstimatedDueDate3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy86 = self;
            goto LABEL_316;
          }
        }
      }
    }
  }

LABEL_317:
  pregnancyEstimatedDueDate6 = [(_HKMedicalIDData *)selfCopy86 pregnancyEstimatedDueDate];
LABEL_318:
  v401 = objc_opt_self();
  [v401 setPregnancyEstimatedDueDate:pregnancyEstimatedDueDate6];

  pregnancyEstimatedDueDateModifiedDate9 = [(_HKMedicalIDData *)selfCopy86 pregnancyEstimatedDueDateModifiedDate];
  v403 = objc_opt_self();
  [v403 setPregnancyEstimatedDueDateModifiedDate:pregnancyEstimatedDueDateModifiedDate9];

  medicationsListModifiedDate = [(_HKMedicalIDData *)self medicationsListModifiedDate];
  if (medicationsListModifiedDate)
  {
  }

  else
  {
    medicationsListModifiedDate2 = [(_HKMedicalIDData *)mergeCopy medicationsListModifiedDate];

    if (!medicationsListModifiedDate2)
    {
      medicationsList = [(_HKMedicalIDData *)self medicationsList];
      medicationsList2 = [(_HKMedicalIDData *)mergeCopy medicationsList];

      if (medicationsList != medicationsList2)
      {
        _HKInitializeLogging();
        v418 = HKLogMedicalID;
        if (os_log_type_enabled(v418, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      medicationsList3 = [(_HKMedicalIDData *)self medicationsList];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        medicationsList4 = [(_HKMedicalIDData *)self medicationsList];

        selfCopy91 = mergeCopy;
        if (!medicationsList4)
        {
          goto LABEL_335;
        }

        medicationsList5 = [(_HKMedicalIDData *)self medicationsList];
        v422 = objc_opt_self();
        [v422 setMedicationsList:medicationsList5];

        medicationsList3 = [(_HKMedicalIDData *)self medicationsListModifiedDate];
        v423 = objc_opt_self();
        [v423 setMedicationsListModifiedDate:medicationsList3];
      }

      selfCopy91 = mergeCopy;
LABEL_334:

      goto LABEL_335;
    }
  }

  medicationsListModifiedDate3 = [(_HKMedicalIDData *)self medicationsListModifiedDate];

  selfCopy91 = mergeCopy;
  if (medicationsListModifiedDate3)
  {
    medicationsListModifiedDate4 = [(_HKMedicalIDData *)mergeCopy medicationsListModifiedDate];

    selfCopy91 = self;
    if (medicationsListModifiedDate4)
    {
      medicationsListModifiedDate5 = [(_HKMedicalIDData *)self medicationsListModifiedDate];
      medicationsListModifiedDate6 = [(_HKMedicalIDData *)mergeCopy medicationsListModifiedDate];
      v411 = [medicationsListModifiedDate5 hk_isBeforeDate:medicationsListModifiedDate6];

      selfCopy91 = mergeCopy;
      if ((v411 & 1) == 0)
      {
        medicationsListModifiedDate7 = [(_HKMedicalIDData *)self medicationsListModifiedDate];
        medicationsListModifiedDate8 = [(_HKMedicalIDData *)mergeCopy medicationsListModifiedDate];
        v414 = [medicationsListModifiedDate7 hk_isAfterDate:medicationsListModifiedDate8];

        medicationsList6 = [(_HKMedicalIDData *)self medicationsList];
        if (v414)
        {
          selfCopy91 = self;
          goto LABEL_336;
        }

        medicationsList7 = [(_HKMedicalIDData *)mergeCopy medicationsList];

        selfCopy91 = self;
        if (medicationsList6 != medicationsList7)
        {
          _HKInitializeLogging();
          v593 = HKLogMedicalID;
          if (os_log_type_enabled(v593, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          medicationsList8 = [(_HKMedicalIDData *)self medicationsList];

          selfCopy91 = self;
          if (!medicationsList8)
          {
            _HKInitializeLogging();
            medicationsList3 = HKLogMedicalID;
            if (os_log_type_enabled(medicationsList3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy91 = self;
            goto LABEL_334;
          }
        }
      }
    }
  }

LABEL_335:
  medicationsList6 = [(_HKMedicalIDData *)selfCopy91 medicationsList];
LABEL_336:
  v424 = objc_opt_self();
  [v424 setMedicationsList:medicationsList6];

  medicationsListModifiedDate9 = [(_HKMedicalIDData *)selfCopy91 medicationsListModifiedDate];
  v426 = objc_opt_self();
  [v426 setMedicationsListModifiedDate:medicationsListModifiedDate9];

  medicationsListVersionModifiedDate = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];
  if (medicationsListVersionModifiedDate)
  {
  }

  else
  {
    medicationsListVersionModifiedDate2 = [(_HKMedicalIDData *)mergeCopy medicationsListVersionModifiedDate];

    if (!medicationsListVersionModifiedDate2)
    {
      medicationsListVersion = [(_HKMedicalIDData *)self medicationsListVersion];
      medicationsListVersion2 = [(_HKMedicalIDData *)mergeCopy medicationsListVersion];

      if (medicationsListVersion != medicationsListVersion2)
      {
        _HKInitializeLogging();
        v441 = HKLogMedicalID;
        if (os_log_type_enabled(v441, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      medicationsListVersion3 = [(_HKMedicalIDData *)self medicationsListVersion];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        medicationsListVersion4 = [(_HKMedicalIDData *)self medicationsListVersion];

        selfCopy96 = mergeCopy;
        if (!medicationsListVersion4)
        {
          goto LABEL_353;
        }

        medicationsListVersion5 = [(_HKMedicalIDData *)self medicationsListVersion];
        v445 = objc_opt_self();
        [v445 setMedicationsListVersion:medicationsListVersion5];

        medicationsListVersion3 = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];
        v446 = objc_opt_self();
        [v446 setMedicationsListVersionModifiedDate:medicationsListVersion3];
      }

      selfCopy96 = mergeCopy;
LABEL_352:

      goto LABEL_353;
    }
  }

  medicationsListVersionModifiedDate3 = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];

  selfCopy96 = mergeCopy;
  if (medicationsListVersionModifiedDate3)
  {
    medicationsListVersionModifiedDate4 = [(_HKMedicalIDData *)mergeCopy medicationsListVersionModifiedDate];

    selfCopy96 = self;
    if (medicationsListVersionModifiedDate4)
    {
      medicationsListVersionModifiedDate5 = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];
      medicationsListVersionModifiedDate6 = [(_HKMedicalIDData *)mergeCopy medicationsListVersionModifiedDate];
      v434 = [medicationsListVersionModifiedDate5 hk_isBeforeDate:medicationsListVersionModifiedDate6];

      selfCopy96 = mergeCopy;
      if ((v434 & 1) == 0)
      {
        medicationsListVersionModifiedDate7 = [(_HKMedicalIDData *)self medicationsListVersionModifiedDate];
        medicationsListVersionModifiedDate8 = [(_HKMedicalIDData *)mergeCopy medicationsListVersionModifiedDate];
        v437 = [medicationsListVersionModifiedDate7 hk_isAfterDate:medicationsListVersionModifiedDate8];

        medicationsListVersion6 = [(_HKMedicalIDData *)self medicationsListVersion];
        if (v437)
        {
          selfCopy96 = self;
          goto LABEL_354;
        }

        medicationsListVersion7 = [(_HKMedicalIDData *)mergeCopy medicationsListVersion];

        selfCopy96 = self;
        if (medicationsListVersion6 != medicationsListVersion7)
        {
          _HKInitializeLogging();
          v596 = HKLogMedicalID;
          if (os_log_type_enabled(v596, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          medicationsListVersion8 = [(_HKMedicalIDData *)self medicationsListVersion];

          selfCopy96 = self;
          if (!medicationsListVersion8)
          {
            _HKInitializeLogging();
            medicationsListVersion3 = HKLogMedicalID;
            if (os_log_type_enabled(medicationsListVersion3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy96 = self;
            goto LABEL_352;
          }
        }
      }
    }
  }

LABEL_353:
  medicationsListVersion6 = [(_HKMedicalIDData *)selfCopy96 medicationsListVersion];
LABEL_354:
  v447 = objc_opt_self();
  [v447 setMedicationsListVersion:medicationsListVersion6];

  medicationsListVersionModifiedDate9 = [(_HKMedicalIDData *)selfCopy96 medicationsListVersionModifiedDate];
  v449 = objc_opt_self();
  [v449 setMedicationsListVersionModifiedDate:medicationsListVersionModifiedDate9];

  allergiesListModifiedDate = [(_HKMedicalIDData *)self allergiesListModifiedDate];
  if (allergiesListModifiedDate)
  {
  }

  else
  {
    allergiesListModifiedDate2 = [(_HKMedicalIDData *)mergeCopy allergiesListModifiedDate];

    if (!allergiesListModifiedDate2)
    {
      allergiesList = [(_HKMedicalIDData *)self allergiesList];
      allergiesList2 = [(_HKMedicalIDData *)mergeCopy allergiesList];

      if (allergiesList != allergiesList2)
      {
        _HKInitializeLogging();
        v464 = HKLogMedicalID;
        if (os_log_type_enabled(v464, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      allergiesList3 = [(_HKMedicalIDData *)self allergiesList];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        allergiesList4 = [(_HKMedicalIDData *)self allergiesList];

        selfCopy101 = mergeCopy;
        if (!allergiesList4)
        {
          goto LABEL_371;
        }

        allergiesList5 = [(_HKMedicalIDData *)self allergiesList];
        v468 = objc_opt_self();
        [v468 setAllergiesList:allergiesList5];

        allergiesList3 = [(_HKMedicalIDData *)self allergiesListModifiedDate];
        v469 = objc_opt_self();
        [v469 setAllergiesListModifiedDate:allergiesList3];
      }

      selfCopy101 = mergeCopy;
LABEL_370:

      goto LABEL_371;
    }
  }

  allergiesListModifiedDate3 = [(_HKMedicalIDData *)self allergiesListModifiedDate];

  selfCopy101 = mergeCopy;
  if (allergiesListModifiedDate3)
  {
    allergiesListModifiedDate4 = [(_HKMedicalIDData *)mergeCopy allergiesListModifiedDate];

    selfCopy101 = self;
    if (allergiesListModifiedDate4)
    {
      allergiesListModifiedDate5 = [(_HKMedicalIDData *)self allergiesListModifiedDate];
      allergiesListModifiedDate6 = [(_HKMedicalIDData *)mergeCopy allergiesListModifiedDate];
      v457 = [allergiesListModifiedDate5 hk_isBeforeDate:allergiesListModifiedDate6];

      selfCopy101 = mergeCopy;
      if ((v457 & 1) == 0)
      {
        allergiesListModifiedDate7 = [(_HKMedicalIDData *)self allergiesListModifiedDate];
        allergiesListModifiedDate8 = [(_HKMedicalIDData *)mergeCopy allergiesListModifiedDate];
        v460 = [allergiesListModifiedDate7 hk_isAfterDate:allergiesListModifiedDate8];

        allergiesList6 = [(_HKMedicalIDData *)self allergiesList];
        if (v460)
        {
          selfCopy101 = self;
          goto LABEL_372;
        }

        allergiesList7 = [(_HKMedicalIDData *)mergeCopy allergiesList];

        selfCopy101 = self;
        if (allergiesList6 != allergiesList7)
        {
          _HKInitializeLogging();
          v599 = HKLogMedicalID;
          if (os_log_type_enabled(v599, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          allergiesList8 = [(_HKMedicalIDData *)self allergiesList];

          selfCopy101 = self;
          if (!allergiesList8)
          {
            _HKInitializeLogging();
            allergiesList3 = HKLogMedicalID;
            if (os_log_type_enabled(allergiesList3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy101 = self;
            goto LABEL_370;
          }
        }
      }
    }
  }

LABEL_371:
  allergiesList6 = [(_HKMedicalIDData *)selfCopy101 allergiesList];
LABEL_372:
  v470 = objc_opt_self();
  [v470 setAllergiesList:allergiesList6];

  allergiesListModifiedDate9 = [(_HKMedicalIDData *)selfCopy101 allergiesListModifiedDate];
  v472 = objc_opt_self();
  [v472 setAllergiesListModifiedDate:allergiesListModifiedDate9];

  allergiesListVersionModifiedDate = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];
  if (allergiesListVersionModifiedDate)
  {
  }

  else
  {
    allergiesListVersionModifiedDate2 = [(_HKMedicalIDData *)mergeCopy allergiesListVersionModifiedDate];

    if (!allergiesListVersionModifiedDate2)
    {
      allergiesListVersion = [(_HKMedicalIDData *)self allergiesListVersion];
      allergiesListVersion2 = [(_HKMedicalIDData *)mergeCopy allergiesListVersion];

      if (allergiesListVersion != allergiesListVersion2)
      {
        _HKInitializeLogging();
        v487 = HKLogMedicalID;
        if (os_log_type_enabled(v487, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      allergiesListVersion3 = [(_HKMedicalIDData *)self allergiesListVersion];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        allergiesListVersion4 = [(_HKMedicalIDData *)self allergiesListVersion];

        selfCopy106 = mergeCopy;
        if (!allergiesListVersion4)
        {
          goto LABEL_389;
        }

        allergiesListVersion5 = [(_HKMedicalIDData *)self allergiesListVersion];
        v491 = objc_opt_self();
        [v491 setAllergiesListVersion:allergiesListVersion5];

        allergiesListVersion3 = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];
        v492 = objc_opt_self();
        [v492 setAllergiesListVersionModifiedDate:allergiesListVersion3];
      }

      selfCopy106 = mergeCopy;
LABEL_388:

      goto LABEL_389;
    }
  }

  allergiesListVersionModifiedDate3 = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];

  selfCopy106 = mergeCopy;
  if (allergiesListVersionModifiedDate3)
  {
    allergiesListVersionModifiedDate4 = [(_HKMedicalIDData *)mergeCopy allergiesListVersionModifiedDate];

    selfCopy106 = self;
    if (allergiesListVersionModifiedDate4)
    {
      allergiesListVersionModifiedDate5 = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];
      allergiesListVersionModifiedDate6 = [(_HKMedicalIDData *)mergeCopy allergiesListVersionModifiedDate];
      v480 = [allergiesListVersionModifiedDate5 hk_isBeforeDate:allergiesListVersionModifiedDate6];

      selfCopy106 = mergeCopy;
      if ((v480 & 1) == 0)
      {
        allergiesListVersionModifiedDate7 = [(_HKMedicalIDData *)self allergiesListVersionModifiedDate];
        allergiesListVersionModifiedDate8 = [(_HKMedicalIDData *)mergeCopy allergiesListVersionModifiedDate];
        v483 = [allergiesListVersionModifiedDate7 hk_isAfterDate:allergiesListVersionModifiedDate8];

        allergiesListVersion6 = [(_HKMedicalIDData *)self allergiesListVersion];
        if (v483)
        {
          selfCopy106 = self;
          goto LABEL_390;
        }

        allergiesListVersion7 = [(_HKMedicalIDData *)mergeCopy allergiesListVersion];

        selfCopy106 = self;
        if (allergiesListVersion6 != allergiesListVersion7)
        {
          _HKInitializeLogging();
          v602 = HKLogMedicalID;
          if (os_log_type_enabled(v602, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          allergiesListVersion8 = [(_HKMedicalIDData *)self allergiesListVersion];

          selfCopy106 = self;
          if (!allergiesListVersion8)
          {
            _HKInitializeLogging();
            allergiesListVersion3 = HKLogMedicalID;
            if (os_log_type_enabled(allergiesListVersion3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy106 = self;
            goto LABEL_388;
          }
        }
      }
    }
  }

LABEL_389:
  allergiesListVersion6 = [(_HKMedicalIDData *)selfCopy106 allergiesListVersion];
LABEL_390:
  v493 = objc_opt_self();
  [v493 setAllergiesListVersion:allergiesListVersion6];

  allergiesListVersionModifiedDate9 = [(_HKMedicalIDData *)selfCopy106 allergiesListVersionModifiedDate];
  v495 = objc_opt_self();
  [v495 setAllergiesListVersionModifiedDate:allergiesListVersionModifiedDate9];

  conditionsListModifiedDate = [(_HKMedicalIDData *)self conditionsListModifiedDate];
  if (conditionsListModifiedDate)
  {
  }

  else
  {
    conditionsListModifiedDate2 = [(_HKMedicalIDData *)mergeCopy conditionsListModifiedDate];

    if (!conditionsListModifiedDate2)
    {
      conditionsList = [(_HKMedicalIDData *)self conditionsList];
      conditionsList2 = [(_HKMedicalIDData *)mergeCopy conditionsList];

      if (conditionsList != conditionsList2)
      {
        _HKInitializeLogging();
        v510 = HKLogMedicalID;
        if (os_log_type_enabled(v510, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      conditionsList3 = [(_HKMedicalIDData *)self conditionsList];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        conditionsList4 = [(_HKMedicalIDData *)self conditionsList];

        selfCopy111 = mergeCopy;
        if (!conditionsList4)
        {
          goto LABEL_407;
        }

        conditionsList5 = [(_HKMedicalIDData *)self conditionsList];
        v514 = objc_opt_self();
        [v514 setConditionsList:conditionsList5];

        conditionsList3 = [(_HKMedicalIDData *)self conditionsListModifiedDate];
        v515 = objc_opt_self();
        [v515 setConditionsListModifiedDate:conditionsList3];
      }

      selfCopy111 = mergeCopy;
LABEL_406:

      goto LABEL_407;
    }
  }

  conditionsListModifiedDate3 = [(_HKMedicalIDData *)self conditionsListModifiedDate];

  selfCopy111 = mergeCopy;
  if (conditionsListModifiedDate3)
  {
    conditionsListModifiedDate4 = [(_HKMedicalIDData *)mergeCopy conditionsListModifiedDate];

    selfCopy111 = self;
    if (conditionsListModifiedDate4)
    {
      conditionsListModifiedDate5 = [(_HKMedicalIDData *)self conditionsListModifiedDate];
      conditionsListModifiedDate6 = [(_HKMedicalIDData *)mergeCopy conditionsListModifiedDate];
      v503 = [conditionsListModifiedDate5 hk_isBeforeDate:conditionsListModifiedDate6];

      selfCopy111 = mergeCopy;
      if ((v503 & 1) == 0)
      {
        conditionsListModifiedDate7 = [(_HKMedicalIDData *)self conditionsListModifiedDate];
        conditionsListModifiedDate8 = [(_HKMedicalIDData *)mergeCopy conditionsListModifiedDate];
        v506 = [conditionsListModifiedDate7 hk_isAfterDate:conditionsListModifiedDate8];

        conditionsList6 = [(_HKMedicalIDData *)self conditionsList];
        if (v506)
        {
          selfCopy111 = self;
          goto LABEL_408;
        }

        conditionsList7 = [(_HKMedicalIDData *)mergeCopy conditionsList];

        selfCopy111 = self;
        if (conditionsList6 != conditionsList7)
        {
          _HKInitializeLogging();
          v605 = HKLogMedicalID;
          if (os_log_type_enabled(v605, OS_LOG_TYPE_ERROR))
          {
            [_HKMedicalIDData merge:];
          }

          conditionsList8 = [(_HKMedicalIDData *)self conditionsList];

          selfCopy111 = self;
          if (!conditionsList8)
          {
            _HKInitializeLogging();
            conditionsList3 = HKLogMedicalID;
            if (os_log_type_enabled(conditionsList3, OS_LOG_TYPE_ERROR))
            {
              [_HKMedicalIDData merge:];
            }

            selfCopy111 = self;
            goto LABEL_406;
          }
        }
      }
    }
  }

LABEL_407:
  conditionsList6 = [(_HKMedicalIDData *)selfCopy111 conditionsList];
LABEL_408:
  v516 = objc_opt_self();
  [v516 setConditionsList:conditionsList6];

  conditionsListModifiedDate9 = [(_HKMedicalIDData *)selfCopy111 conditionsListModifiedDate];
  v518 = objc_opt_self();
  [v518 setConditionsListModifiedDate:conditionsListModifiedDate9];

  conditionsListVersionModifiedDate = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
  if (conditionsListVersionModifiedDate)
  {
  }

  else
  {
    conditionsListVersionModifiedDate2 = [(_HKMedicalIDData *)mergeCopy conditionsListVersionModifiedDate];

    if (!conditionsListVersionModifiedDate2)
    {
      conditionsListVersion = [(_HKMedicalIDData *)self conditionsListVersion];
      conditionsListVersion2 = [(_HKMedicalIDData *)mergeCopy conditionsListVersion];

      if (conditionsListVersion != conditionsListVersion2)
      {
        _HKInitializeLogging();
        v537 = HKLogMedicalID;
        if (os_log_type_enabled(v537, OS_LOG_TYPE_ERROR))
        {
          [_HKMedicalIDData merge:];
        }
      }

      conditionsListVersion3 = [(_HKMedicalIDData *)self conditionsListVersion];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        conditionsListVersion4 = [(_HKMedicalIDData *)self conditionsListVersion];

        selfCopy112 = mergeCopy;
        if (!conditionsListVersion4)
        {
          goto LABEL_431;
        }

        conditionsListVersion5 = [(_HKMedicalIDData *)self conditionsListVersion];
        v540 = objc_opt_self();
        [v540 setConditionsListVersion:conditionsListVersion5];

        conditionsListVersion3 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
        v541 = objc_opt_self();
        [v541 setConditionsListVersionModifiedDate:conditionsListVersion3];
      }

      self = mergeCopy;
LABEL_429:

      goto LABEL_430;
    }
  }

  conditionsListVersionModifiedDate3 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];

  selfCopy112 = mergeCopy;
  if (!conditionsListVersionModifiedDate3)
  {
    goto LABEL_431;
  }

  conditionsListVersionModifiedDate4 = [(_HKMedicalIDData *)mergeCopy conditionsListVersionModifiedDate];

  if (!conditionsListVersionModifiedDate4)
  {
LABEL_430:
    selfCopy112 = self;
    goto LABEL_431;
  }

  conditionsListVersionModifiedDate5 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
  conditionsListVersionModifiedDate6 = [(_HKMedicalIDData *)mergeCopy conditionsListVersionModifiedDate];
  v526 = [conditionsListVersionModifiedDate5 hk_isBeforeDate:conditionsListVersionModifiedDate6];

  selfCopy112 = mergeCopy;
  if (v526)
  {
LABEL_431:
    conditionsListVersion6 = [(_HKMedicalIDData *)selfCopy112 conditionsListVersion];
    self = selfCopy112;
    goto LABEL_432;
  }

  conditionsListVersionModifiedDate7 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
  conditionsListVersionModifiedDate8 = [(_HKMedicalIDData *)mergeCopy conditionsListVersionModifiedDate];
  v529 = [conditionsListVersionModifiedDate7 hk_isAfterDate:conditionsListVersionModifiedDate8];

  conditionsListVersion6 = [(_HKMedicalIDData *)self conditionsListVersion];
  if ((v529 & 1) == 0)
  {
    conditionsListVersion7 = [(_HKMedicalIDData *)mergeCopy conditionsListVersion];

    if (conditionsListVersion6 == conditionsListVersion7)
    {
      goto LABEL_430;
    }

    _HKInitializeLogging();
    v532 = HKLogMedicalID;
    if (os_log_type_enabled(v532, OS_LOG_TYPE_ERROR))
    {
      [_HKMedicalIDData merge:];
    }

    conditionsListVersion8 = [(_HKMedicalIDData *)self conditionsListVersion];

    if (conditionsListVersion8)
    {
      goto LABEL_430;
    }

    _HKInitializeLogging();
    conditionsListVersion3 = HKLogMedicalID;
    if (os_log_type_enabled(conditionsListVersion3, OS_LOG_TYPE_ERROR))
    {
      [_HKMedicalIDData merge:];
    }

    goto LABEL_429;
  }

LABEL_432:
  v542 = objc_opt_self();
  [v542 setConditionsListVersion:conditionsListVersion6];

  conditionsListVersionModifiedDate9 = [(_HKMedicalIDData *)self conditionsListVersionModifiedDate];
  v544 = objc_opt_self();
  [v544 setConditionsListVersionModifiedDate:conditionsListVersionModifiedDate9];

  v545 = v5;
  return v5;
}

- (id)consolidatedSOSContactsWithSOSContactsManager:(id)manager
{
  v45 = *MEMORY[0x1E69E9840];
  legacyContactsManager = [manager legacyContactsManager];
  sOSLegacyContacts = [legacyContactsManager SOSLegacyContacts];
  emergencyContacts = [(_HKMedicalIDData *)self emergencyContacts];
  v6 = [emergencyContacts mutableCopy];
  v7 = v6;
  if (v6)
  {
    array = v6;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  v34 = array;

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  emergencyContacts2 = [(_HKMedicalIDData *)self emergencyContacts];
  v11 = [emergencyContacts2 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
          objc_enumerationMutation(emergencyContacts2);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        v16 = objc_alloc_init(_HKEmergencyContactWrapper);
        [(_HKEmergencyContactWrapper *)v16 setContact:v15];
        [orderedSet addObject:v16];
      }

      v12 = [emergencyContacts2 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v12);
  }

  v17 = sOSLegacyContacts;
  if ([sOSLegacyContacts count])
  {
    v32 = legacyContactsManager;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = sOSLegacyContacts;
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
          name = [v23 name];
          [(_HKEmergencyContact *)v24 setName:name];

          nameContactIdentifier = [v23 nameContactIdentifier];
          [(_HKEmergencyContact *)v24 setNameContactIdentifier:nameContactIdentifier];

          phoneNumber = [v23 phoneNumber];
          [(_HKEmergencyContact *)v24 setPhoneNumber:phoneNumber];

          phoneNumberContactIdentifier = [v23 phoneNumberContactIdentifier];
          [(_HKEmergencyContact *)v24 setPhoneNumberContactIdentifier:phoneNumberContactIdentifier];

          v29 = objc_alloc_init(_HKEmergencyContactWrapper);
          [(_HKEmergencyContactWrapper *)v29 setContact:v24];
          if (([orderedSet containsObject:v29] & 1) == 0)
          {
            [v34 addObject:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v20);
    }

    legacyContactsManager = v32;
    v17 = sOSLegacyContacts;
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