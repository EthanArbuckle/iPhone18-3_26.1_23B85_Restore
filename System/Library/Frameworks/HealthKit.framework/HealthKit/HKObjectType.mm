@interface HKObjectType
+ (BOOL)_allowAuthorizationForSharing:(BOOL)a3 types:(id)a4 entitlements:(id)a5 disallowedTypes:(id)a6;
+ (HKCategoryType)categoryTypeForIdentifier:(HKCategoryTypeIdentifier)identifier;
+ (HKCharacteristicType)characteristicTypeForIdentifier:(HKCharacteristicTypeIdentifier)identifier;
+ (HKClinicalType)clinicalTypeForIdentifier:(HKClinicalTypeIdentifier)identifier;
+ (HKCorrelationType)correlationTypeForIdentifier:(HKCorrelationTypeIdentifier)identifier;
+ (HKDocumentType)documentTypeForIdentifier:(HKDocumentTypeIdentifier)identifier;
+ (HKQuantityType)quantityTypeForIdentifier:(HKQuantityTypeIdentifier)identifier;
+ (HKSeriesType)seriesTypeForIdentifier:(NSString *)identifier;
+ (id)GAD7AssessmentType;
+ (id)PHQ9AssessmentType;
+ (id)_allBinarySampleTypes;
+ (id)_allDataTypeIdentifiers;
+ (id)_allScoredAssessmentTypes;
+ (id)_allTypesOfClass:(Class)a3;
+ (id)_dataTypeWithCode:(int64_t)a3 expectedClass:(Class)a4;
+ (id)_lock_dataTypeWithCode:(int64_t)a3 expectedClass:(Class)a4;
+ (id)_objectTypesFromIdentifierArray:(id)a3 error:(id *)a4;
+ (id)_typeWithIdentifier:(id)a3 expectedClass:(Class)a4;
+ (id)_typesIncludingParentTypes:(id)a3;
+ (id)accountOwnerTypeForIdentifier:(id)a3;
+ (id)allergyRecordTypeForIdentifier:(id)a3;
+ (id)clinicalNoteRecordTypeForIdentifier:(id)a3;
+ (id)conditionRecordTypeForIdentifier:(id)a3;
+ (id)coverageRecordTypeForIdentifier:(id)a3;
+ (id)dataTypeWithNumber:(id)a3;
+ (id)diagnosticTestReportTypeForIdentifier:(id)a3;
+ (id)diagnosticTestResultTypeForIdentifier:(id)a3;
+ (id)medicalTypeForIdentifier:(id)a3;
+ (id)medicationDispenseRecordTypeForIdentifier:(id)a3;
+ (id)medicationOrderTypeForIdentifier:(id)a3;
+ (id)medicationRecordTypeForIdentifier:(id)a3;
+ (id)objectTypeForWorkoutMetric:(unint64_t)a3 fitnessMachineType:(unint64_t)a4;
+ (id)procedureRecordTypeForIdentifier:(id)a3;
+ (id)scoredAssessmentTypeForIdentifier:(id)a3;
+ (id)signedClinicalDataRecordTypeForIdentifier:(id)a3;
+ (id)unknownRecordTypeForIdentifier:(id)a3;
+ (id)userTrackedConceptTypeForIdentifier:(id)a3;
+ (id)vaccinationRecordTypeForIdentifier:(id)a3;
+ (id)verifiableClinicalRecordTypeForIdentifier:(id)a3;
+ (id)workoutZonesTypeForIdentifier:(id)a3;
+ (int64_t)_typeCodeForIdentifier:(id)a3;
+ (void)_enumerateDataTypeCodesWithHandler:(id)a3;
+ (void)_enumerateObjectTypesWithHandler:(id)a3;
- ($E8A27014057A1F053A0599C3679047E8)_definition;
- (BOOL)isAbleToWriteHealthSensitiveLogs;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHealthRecordsType;
- (BOOL)requiresSensitiveHealthLogs;
- (Class)dataObjectClass;
- (HKObjectType)init;
- (HKObjectType)initWithCoder:(id)a3;
- (NSString)identifier;
- (id)_initWithCode:(int64_t)a3;
- (id)attachmentSchemaIdentifier;
- (id)hk_localizedName;
- (id)hk_localizedNameForAuthSheet;
- (id)sensitiveLoggingIdentifier;
- (int64_t)logPrivacyLevel;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKObjectType

- (unint64_t)hash
{
  v2 = [(HKObjectType *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (NSString)identifier
{
  if ([(HKObjectType *)self _definition])
  {
    v3 = *[(HKObjectType *)self _definition];
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKDataTypeIdentifierUnknown%d", self->_code];
  }

  return v3;
}

- (Class)dataObjectClass
{
  v2 = [(HKObjectType *)self _definition][16];

  return NSClassFromString(v2);
}

+ (id)unknownRecordTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)medicationOrderTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)allergyRecordTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)accountOwnerTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)hk_localizedName
{
  v2 = 0;
  switch([(HKObjectType *)self code])
  {
    case 0:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BODY_MASS_INDEX";
      goto LABEL_222;
    case 1:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BODY_FAT_PERCENTAGE";
      goto LABEL_222;
    case 2:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"HEIGHT";
      goto LABEL_222;
    case 3:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BODY_MASS";
      goto LABEL_222;
    case 4:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"LEAN_BODY_MASS";
      goto LABEL_222;
    case 5:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"HEART_RATE";
      goto LABEL_222;
    case 7:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"STEPS";
      goto LABEL_222;
    case 8:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"DISTANCE";
      goto LABEL_222;
    case 9:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BASAL_ENERGY";
      goto LABEL_222;
    case 10:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"ACTIVE_ENERGY";
      goto LABEL_222;
    case 12:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"FLIGHTS_CLIMBED";
      goto LABEL_222;
    case 13:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"NIKE_FUEL";
      goto LABEL_222;
    case 14:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"OXYGEN_SATURATION";
      goto LABEL_222;
    case 15:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BLOOD_GLUCOSE";
      goto LABEL_222;
    case 16:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BLOOD_PRESSURE_SYSTOLIC";
      goto LABEL_222;
    case 17:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BLOOD_PRESSURE_DIASTOLIC";
      goto LABEL_222;
    case 18:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BLOOD_ALCOHOL_CONTENT";
      goto LABEL_222;
    case 19:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"PERFUSION_INDEX";
      goto LABEL_222;
    case 20:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"TOTAL_FAT";
      goto LABEL_222;
    case 21:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"POLYUNSATURATED_FAT";
      goto LABEL_222;
    case 22:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"MONOUNSATURATED_FAT";
      goto LABEL_222;
    case 23:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SATURATED_FAT";
      goto LABEL_222;
    case 24:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CHOLESTEROL";
      goto LABEL_222;
    case 25:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SODIUM";
      goto LABEL_222;
    case 26:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CARBOHYDRATES";
      goto LABEL_222;
    case 27:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"FIBER";
      goto LABEL_222;
    case 28:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SUGAR";
      goto LABEL_222;
    case 29:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"DIETARY_ENERGY";
      goto LABEL_222;
    case 30:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"PROTEIN";
      goto LABEL_222;
    case 31:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"VITAMIN_A";
      goto LABEL_222;
    case 32:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"VITAMIN_B6";
      goto LABEL_222;
    case 33:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"VITAMIN_B12";
      goto LABEL_222;
    case 34:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"VITAMIN_C";
      goto LABEL_222;
    case 35:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"VITAMIN_D";
      goto LABEL_222;
    case 36:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"VITAMIN_E";
      goto LABEL_222;
    case 37:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"VITAMIN_K";
      goto LABEL_222;
    case 38:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CALCIUM";
      goto LABEL_222;
    case 39:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"IRON";
      goto LABEL_222;
    case 40:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"THIAMIN";
      goto LABEL_222;
    case 41:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"RIBOFLAVIN";
      goto LABEL_222;
    case 42:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"NIACIN";
      goto LABEL_222;
    case 43:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"FOLATE";
      goto LABEL_222;
    case 44:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BIOTIN";
      goto LABEL_222;
    case 45:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"PANTOTHENIC_ACID";
      goto LABEL_222;
    case 46:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"PHOSPHORUS";
      goto LABEL_222;
    case 47:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"IODINE";
      goto LABEL_222;
    case 48:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"MAGNESIUM";
      goto LABEL_222;
    case 49:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"ZINC";
      goto LABEL_222;
    case 50:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SELENIUM";
      goto LABEL_222;
    case 51:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"COPPER";
      goto LABEL_222;
    case 52:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"MANGANESE";
      goto LABEL_222;
    case 53:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CHROMIUM";
      goto LABEL_222;
    case 54:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"MOLYBDENUM";
      goto LABEL_222;
    case 55:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CHLORIDE";
      goto LABEL_222;
    case 56:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"POTASSIUM";
      goto LABEL_222;
    case 57:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"NUMBER_OF_TIMES_FALLEN";
      goto LABEL_222;
    case 58:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"ELECTRODERMAL_ACTIVITY";
      goto LABEL_222;
    case 60:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"INHALER_USAGE";
      goto LABEL_222;
    case 61:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"RESPIRATORY_RATE";
      goto LABEL_222;
    case 62:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BODY_TEMPERATURE";
      goto LABEL_222;
    case 63:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SLEEP_ANALYSIS";
      goto LABEL_222;
    case 64:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BIOLOGICAL_SEX";
      goto LABEL_222;
    case 65:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"DATE_OF_BIRTH";
      goto LABEL_222;
    case 66:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BLOOD_TYPE";
      goto LABEL_222;
    case 70:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"STAND_HOUR";
      goto LABEL_222;
    case 71:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SPIROMETRY_FVC";
      goto LABEL_222;
    case 72:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SPIROMETRY_FEV1";
      goto LABEL_222;
    case 73:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SPIROMETRY_PEFR";
      goto LABEL_222;
    case 75:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"EXERCISE_MINUTE";
      goto LABEL_222;
    case 78:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CAFFEINE";
      goto LABEL_222;
    case 79:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WORKOUT";
      goto LABEL_222;
    case 80:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BLOOD_PRESSURE";
      goto LABEL_222;
    case 83:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CYCLING_DISTANCE";
      goto LABEL_222;
    case 87:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WATER";
      goto LABEL_222;
    case 88:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"FITZPATRICK_SKIN_TYPE";
      goto LABEL_222;
    case 89:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"UV_EXPOSURE";
      goto LABEL_222;
    case 90:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BASAL_BODY_TEMPERATURE";
      goto LABEL_222;
    case 91:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CERVICAL_MUCUS_QUALITY";
      goto LABEL_222;
    case 92:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"OVULATION_TEST_RESULT";
      goto LABEL_222;
    case 95:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"MENSTRUATION";
      goto LABEL_222;
    case 96:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"INTERMENSTRUAL_BLEEDING";
      goto LABEL_222;
    case 97:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SEXUAL_ACTIVITY";
      goto LABEL_222;
    case 99:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"MINDFUL_MINUTES";
      goto LABEL_222;
    case 100:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"ACTIVITY_SUMMARY";
      goto LABEL_222;
    case 101:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"PUSH_COUNT";
      goto LABEL_222;
    case 102:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WORKOUT_ROUTE";
      goto LABEL_222;
    case 103:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WHEELCHAIR_USE";
      goto LABEL_222;
    case 107:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CLINICAL_DOCUMENTS";
      goto LABEL_222;
    case 110:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SWIMMING_DISTANCE";
      goto LABEL_222;
    case 111:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SWIMMING_STROKES";
      goto LABEL_222;
    case 113:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WHEELCHAIR_DISTANCE";
      goto LABEL_222;
    case 114:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WAIST_CIRCUMFERENCE";
      goto LABEL_222;
    case 118:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"RESTING_HEART_RATE";
      goto LABEL_222;
    case 119:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"TACHOGRAM";
      goto LABEL_222;
    case 124:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"CARDIO_FITNESS";
      goto LABEL_166;
    case 125:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"INSULIN_DELIVERY";
      goto LABEL_222;
    case 137:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WALKING_HEART_RATE_AVERAGE";
      goto LABEL_222;
    case 138:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"DOWNHILL_SNOW_SPORTS_DISTANCE";
      goto LABEL_222;
    case 139:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"HEART_RATE_VARIABILITY";
      goto LABEL_222;
    case 140:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"TACHYCARDIA";
      goto LABEL_222;
    case 144:
      v4 = HKHealthKitFrameworkBundle();
      v7 = [v4 localizedStringForKey:@"ELECTROCARDIOGRAM" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
      v2 = HKConditionallyRedactedHeartRhythmString(v7);

      goto LABEL_223;
    case 145:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"AUDIOGRAM";
      v5 = @"Localizable-Yodel";
      goto LABEL_222;
    case 147:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BRADYCARDIA";
      goto LABEL_222;
    case 156:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"ATRIAL_FIBRILLATION_EVENT";
      goto LABEL_222;
    case 157:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_ABDOMINAL_CRAMPS";
      goto LABEL_222;
    case 158:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_BREAST_PAIN";
      goto LABEL_222;
    case 159:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_BLOATING";
      goto LABEL_222;
    case 160:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_HEADACHE";
      goto LABEL_222;
    case 161:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_ACNE";
      goto LABEL_222;
    case 162:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_LOWER_BACK_PAIN";
      goto LABEL_222;
    case 163:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_PELVIC_PAIN";
      goto LABEL_222;
    case 164:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_MOOD_CHANGES";
      goto LABEL_222;
    case 165:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_CONSTIPATION";
      goto LABEL_222;
    case 166:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_DIARRHEA";
      goto LABEL_222;
    case 167:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_FATIGUE";
      goto LABEL_222;
    case 168:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_NAUSEA";
      goto LABEL_222;
    case 169:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_SLEEP_CHANGES";
      goto LABEL_222;
    case 170:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_APPETITE_CHANGES";
      goto LABEL_222;
    case 171:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_HOT_FLASHES";
      goto LABEL_222;
    case 172:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"ENVIRONMENTAL_AUDIO_EXPOSURE";
      goto LABEL_222;
    case 173:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"HEADPHONE_AUDIO_EXPOSURE";
      goto LABEL_222;
    case 177:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"ACTIVITY_MOVE_MODE";
      goto LABEL_222;
    case 178:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"AUDIO_EXPOSURE_EVENT";
      goto LABEL_222;
    case 179:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"MOVE_MINUTE";
      v5 = @"Localizable-tinker";
      goto LABEL_222;
    case 182:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WALKING_DOUBLE_SUPPORT_PERCENTAGE";
      goto LABEL_222;
    case 183:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SIX_MINUTE_WALK_TEST_DISTANCE";
      goto LABEL_222;
    case 186:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"STAND_MINUTE";
      goto LABEL_222;
    case 187:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WALKING_SPEED";
      goto LABEL_222;
    case 188:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WALKING_STEP_LENGTH";
      goto LABEL_222;
    case 189:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"TOOTHBRUSHING_EVENT";
      goto LABEL_222;
    case 191:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"PREGNANCY";
      goto LABEL_222;
    case 192:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"LACTATION";
      goto LABEL_222;
    case 193:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CONTRACEPTIVE";
      goto LABEL_222;
    case 194:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WALKING_ASYMMETRY_PERCENTAGE";
      goto LABEL_222;
    case 195:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"STAIR_ASCENT_SPEED";
      goto LABEL_222;
    case 196:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"STAIR_DESCENT_SPEED";
      goto LABEL_222;
    case 197:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SLEEP_DURATION_GOAL";
      goto LABEL_222;
    case 198:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SLEEP_SCHEDULE";
      goto LABEL_222;
    case 199:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"HEADPHONE_AUDIO_EXPOSURE_EVENT";
      goto LABEL_222;
    case 201:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_RAPID_POUNDING_OR_FLUTTERING_HEARTBEAT";
      goto LABEL_222;
    case 202:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_SKIPPED_HEARTBEAT";
      goto LABEL_222;
    case 203:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_FEVER";
      goto LABEL_222;
    case 204:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_SHORTNESS_OF_BREATH";
      goto LABEL_222;
    case 205:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_CHEST_TIGHTNESS_OR_PAIN";
      goto LABEL_222;
    case 206:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_FAINTING";
      goto LABEL_222;
    case 207:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_DIZZINESS";
      goto LABEL_222;
    case 218:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CARDIO_FITNESS_MEDICATIONS_USE";
      goto LABEL_222;
    case 220:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_VOMITING";
      goto LABEL_222;
    case 221:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_HEARTBURN";
      goto LABEL_222;
    case 222:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_COUGHING";
      goto LABEL_222;
    case 223:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_WHEEZING";
      goto LABEL_222;
    case 224:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_SORE_THROAT";
      goto LABEL_222;
    case 225:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_CONGESTION";
      goto LABEL_222;
    case 226:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_RUNNY_NOSE";
      goto LABEL_222;
    case 229:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_VAGINAL_DRYNESS";
      goto LABEL_222;
    case 230:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_NIGHT_SWEATS";
      goto LABEL_222;
    case 231:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_CHILLS";
      goto LABEL_222;
    case 232:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_HAIR_LOSS";
      goto LABEL_222;
    case 233:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_DRY_SKIN";
      goto LABEL_222;
    case 234:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_BLADDER_INCONTINENCE";
      goto LABEL_222;
    case 235:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_MEMORY_LAPSE";
      goto LABEL_222;
    case 236:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"CARDIO_FITNESS_EVENT";
LABEL_166:
      v5 = @"Localizable-CardioFitness";
      goto LABEL_222;
    case 237:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"HANDWASHING_EVENT";
      goto LABEL_222;
    case 240:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_BODY_ACHE";
      goto LABEL_222;
    case 241:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_LOSS_OF_SMELL";
      goto LABEL_222;
    case 242:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SYMPTOM_LOSS_OF_TASTE";
      goto LABEL_222;
    case 243:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"PREGNANCY_TEST_RESULT";
      goto LABEL_222;
    case 244:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"PROGESTERONE_TEST_RESULT";
      goto LABEL_222;
    case 248:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"ATRIAL_FIBRILLATION_BURDEN";
      v5 = @"Localizable-AFibBurden";
      goto LABEL_222;
    case 249:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WALKING_STEADINESS";
      goto LABEL_222;
    case 250:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WALKING_STEADINESS_EVENT";
      goto LABEL_222;
    case 251:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"NUMBER_OF_ALCOHOLIC_BEVERAGES";
      goto LABEL_222;
    case 254:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"HYPERTENSION_EVENT";
      goto LABEL_135;
    case 256:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"SLEEPING_WRIST_TEMPERATURE";
      v5 = @"Localizable-Kali";
      goto LABEL_222;
    case 257:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"VISION_PRESCRIPTION";
      v5 = @"Localizable-VRX";
      goto LABEL_222;
    case 258:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"RUNNING_STRIDE_LENGTH";
      goto LABEL_222;
    case 259:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"RUNNING_VERTICAL_OSCILLATION";
      goto LABEL_222;
    case 260:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"RUNNING_GROUND_CONTACT_TIME";
      goto LABEL_222;
    case 262:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"MENSTRUAL_CYCLE_DEVIATION_SPOTTING";
      goto LABEL_78;
    case 263:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"MENSTRUAL_CYCLE_DEVIATION_PROLONGED";
      goto LABEL_78;
    case 264:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"MENSTRUAL_CYCLE_DEVIATION_IRREGULAR";
      goto LABEL_78;
    case 265:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"MENSTRUAL_CYCLE_DEVIATION_INFREQUENT";
LABEL_78:
      v5 = @"Localizable-Selene";
      goto LABEL_222;
    case 266:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"HEART_RATE_RECOVERY";
      goto LABEL_222;
    case 269:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"UNDERWATER_DEPTH";
      goto LABEL_222;
    case 270:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"RUNNING_POWER";
      goto LABEL_222;
    case 272:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"ENVIRONMENTAL_SOUND_REDUCTION";
      goto LABEL_222;
    case 273:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"MEDICATION_DOSE_EVENT";
      goto LABEL_222;
    case 274:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"RUNNING_SPEED";
      goto LABEL_222;
    case 275:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"SLEEP_BREATHING_DISTURBANCES";
      goto LABEL_164;
    case 276:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"SLEEP_APNEA_EVENT";
LABEL_164:
      v5 = @"Localizable-Nebula";
      goto LABEL_222;
    case 277:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WATER_TEMPERATURE";
      goto LABEL_222;
    case 279:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"TIME_IN_DAYLIGHT";
      goto LABEL_222;
    case 280:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CYCLING_POWER";
      goto LABEL_222;
    case 281:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CYCLING_SPEED";
      goto LABEL_222;
    case 282:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CYCLING_CADENCE";
      goto LABEL_222;
    case 283:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CYCLING_FUNCTIONAL_THRESHOLD_POWER";
      goto LABEL_222;
    case 284:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"STATE_OF_MIND";
      goto LABEL_222;
    case 285:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"HYPERTENSIVE_PATTERN_MEASUREMENT";
LABEL_135:
      v5 = @"Localizable-Hermit";
      goto LABEL_222;
    case 286:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"PHYSICAL_EFFORT";
      goto LABEL_222;
    case 287:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"GAD7";
      goto LABEL_222;
    case 288:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"PHQ9";
      goto LABEL_222;
    case 291:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"USER_TRACKED_MEDICATIONS";
      goto LABEL_222;
    case 294:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"PADDLE_SPORTS_DISTANCE";
      goto LABEL_222;
    case 295:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"ROWING_DISTANCE";
      goto LABEL_222;
    case 296:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CROSS_COUNTRY_SKIING_DISTANCE";
      goto LABEL_222;
    case 297:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"SKATING_SPORTS_DISTANCE";
      goto LABEL_222;
    case 298:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"ESTIMATED_WORKOUT_EFFORT_SCORE";
      goto LABEL_222;
    case 301:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"ROWING_SPEED";
      goto LABEL_222;
    case 302:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"CROSS_COUNTRY_SKIING_SPEED";
      goto LABEL_222;
    case 303:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"PADDLE_SPORTS_SPEED";
      goto LABEL_222;
    case 304:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"WORKOUT_EFFORT_SCORE";
      goto LABEL_222;
    case 305:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"APPLE_BALANCE_METRICS";
      v5 = @"Localizable-Balance";
      goto LABEL_222;
    case 306:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"USER_ANNOTATED_MEDICATIONS";
      goto LABEL_222;
    case 313:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BLEEDING_DURING_PREGNANCY";
      goto LABEL_222;
    case 314:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v5 = @"Localizable-DataTypes";
      v6 = @"BLEEDING_AFTER_PREGNANCY";
      goto LABEL_222;
    case 341:
      v3 = HKHealthKitFrameworkBundle();
      v4 = v3;
      v6 = @"APPLE_SLEEP_SCORE";
      v5 = @"Localizable-SleepDetails";
LABEL_222:
      v2 = [v3 localizedStringForKey:v6 value:&stru_1F05FF230 table:v5];
LABEL_223:

      break;
    default:
      break;
  }

  return v2;
}

- (id)hk_localizedNameForAuthSheet
{
  v2 = 0;
  v3 = [(HKObjectType *)self code];
  v4 = @"SYMPTOM_ABDOMINAL_CRAMPS";
  switch(v3)
  {
    case 0:
      v4 = @"BODY_MASS_INDEX";
      goto LABEL_217;
    case 1:
      v4 = @"BODY_FAT_PERCENTAGE";
      goto LABEL_217;
    case 2:
      v4 = @"HEIGHT";
      goto LABEL_217;
    case 3:
      v4 = @"BODY_MASS";
      goto LABEL_217;
    case 4:
      v4 = @"LEAN_BODY_MASS";
      goto LABEL_217;
    case 5:
      v4 = @"HEART_RATE";
      goto LABEL_217;
    case 7:
      v4 = @"STEPS";
      goto LABEL_217;
    case 8:
      v4 = @"DISTANCE";
      goto LABEL_217;
    case 9:
      v4 = @"BASAL_ENERGY";
      goto LABEL_217;
    case 10:
      v4 = @"ACTIVE_ENERGY";
      goto LABEL_217;
    case 12:
      v4 = @"FLIGHTS_CLIMBED";
      goto LABEL_217;
    case 13:
      v4 = @"NIKE_FUEL";
      goto LABEL_217;
    case 14:
      v4 = @"OXYGEN_SATURATION";
      goto LABEL_217;
    case 15:
      v4 = @"BLOOD_GLUCOSE";
      goto LABEL_217;
    case 16:
      v4 = @"BLOOD_PRESSURE_SYSTOLIC";
      goto LABEL_217;
    case 17:
      v4 = @"BLOOD_PRESSURE_DIASTOLIC";
      goto LABEL_217;
    case 18:
      v4 = @"BLOOD_ALCOHOL_CONTENT";
      goto LABEL_217;
    case 19:
      v4 = @"PERFUSION_INDEX";
      goto LABEL_217;
    case 20:
      v4 = @"TOTAL_FAT";
      goto LABEL_217;
    case 21:
      v4 = @"POLYUNSATURATED_FAT";
      goto LABEL_217;
    case 22:
      v4 = @"MONOUNSATURATED_FAT";
      goto LABEL_217;
    case 23:
      v4 = @"SATURATED_FAT";
      goto LABEL_217;
    case 24:
      v4 = @"CHOLESTEROL";
      goto LABEL_217;
    case 25:
      v4 = @"SODIUM";
      goto LABEL_217;
    case 26:
      v4 = @"CARBOHYDRATES";
      goto LABEL_217;
    case 27:
      v4 = @"FIBER";
      goto LABEL_217;
    case 28:
      v4 = @"SUGAR";
      goto LABEL_217;
    case 29:
      v4 = @"DIETARY_ENERGY";
      goto LABEL_217;
    case 30:
      v4 = @"PROTEIN";
      goto LABEL_217;
    case 31:
      v4 = @"VITAMIN_A";
      goto LABEL_217;
    case 32:
      v4 = @"VITAMIN_B6";
      goto LABEL_217;
    case 33:
      v4 = @"VITAMIN_B12";
      goto LABEL_217;
    case 34:
      v4 = @"VITAMIN_C";
      goto LABEL_217;
    case 35:
      v4 = @"VITAMIN_D";
      goto LABEL_217;
    case 36:
      v4 = @"VITAMIN_E";
      goto LABEL_217;
    case 37:
      v4 = @"VITAMIN_K";
      goto LABEL_217;
    case 38:
      v4 = @"CALCIUM";
      goto LABEL_217;
    case 39:
      v4 = @"IRON";
      goto LABEL_217;
    case 40:
      v4 = @"THIAMIN";
      goto LABEL_217;
    case 41:
      v4 = @"RIBOFLAVIN";
      goto LABEL_217;
    case 42:
      v4 = @"NIACIN";
      goto LABEL_217;
    case 43:
      v4 = @"FOLATE";
      goto LABEL_217;
    case 44:
      v4 = @"BIOTIN";
      goto LABEL_217;
    case 45:
      v4 = @"PANTOTHENIC_ACID";
      goto LABEL_217;
    case 46:
      v4 = @"PHOSPHORUS";
      goto LABEL_217;
    case 47:
      v4 = @"IODINE";
      goto LABEL_217;
    case 48:
      v4 = @"MAGNESIUM";
      goto LABEL_217;
    case 49:
      v4 = @"ZINC";
      goto LABEL_217;
    case 50:
      v4 = @"SELENIUM";
      goto LABEL_217;
    case 51:
      v4 = @"COPPER";
      goto LABEL_217;
    case 52:
      v4 = @"MANGANESE";
      goto LABEL_217;
    case 53:
      v4 = @"CHROMIUM";
      goto LABEL_217;
    case 54:
      v4 = @"MOLYBDENUM";
      goto LABEL_217;
    case 55:
      v4 = @"CHLORIDE";
      goto LABEL_217;
    case 56:
      v4 = @"POTASSIUM";
      goto LABEL_217;
    case 57:
      v4 = @"NUMBER_OF_TIMES_FALLEN";
      goto LABEL_217;
    case 58:
      v4 = @"ELECTRODERMAL_ACTIVITY";
      goto LABEL_217;
    case 60:
      v4 = @"INHALER_USAGE";
      goto LABEL_217;
    case 61:
      v4 = @"RESPIRATORY_RATE";
      goto LABEL_217;
    case 62:
      v4 = @"BODY_TEMPERATURE";
      goto LABEL_217;
    case 63:
      v4 = @"SLEEP_ANALYSIS";
      goto LABEL_217;
    case 64:
      v4 = @"BIOLOGICAL_SEX";
      goto LABEL_217;
    case 65:
      v4 = @"DATE_OF_BIRTH";
      goto LABEL_217;
    case 66:
      v4 = @"BLOOD_TYPE";
      goto LABEL_217;
    case 70:
      v4 = @"STAND_HOUR";
      goto LABEL_217;
    case 71:
      v4 = @"SPIROMETRY_FVC";
      goto LABEL_217;
    case 72:
      v4 = @"SPIROMETRY_FEV1";
      goto LABEL_217;
    case 73:
      v4 = @"SPIROMETRY_PEFR";
      goto LABEL_217;
    case 75:
      v4 = @"EXERCISE_MINUTE";
      goto LABEL_217;
    case 78:
      v4 = @"CAFFEINE";
      goto LABEL_217;
    case 79:
      v4 = @"WORKOUT";
      goto LABEL_217;
    case 80:
      v4 = @"BLOOD_PRESSURE";
      goto LABEL_217;
    case 83:
      v4 = @"CYCLING_DISTANCE";
      goto LABEL_217;
    case 87:
      v4 = @"WATER";
      goto LABEL_217;
    case 88:
      v4 = @"FITZPATRICK_SKIN_TYPE";
      goto LABEL_217;
    case 89:
      v4 = @"UV_EXPOSURE";
      goto LABEL_217;
    case 90:
      v4 = @"BASAL_BODY_TEMPERATURE";
      goto LABEL_217;
    case 91:
      v4 = @"CERVICAL_MUCUS_QUALITY";
      goto LABEL_217;
    case 92:
      v4 = @"OVULATION_TEST_RESULT";
      goto LABEL_217;
    case 95:
      v4 = @"MENSTRUATION";
      goto LABEL_217;
    case 96:
      v4 = @"INTERMENSTRUAL_BLEEDING";
      goto LABEL_217;
    case 97:
      v4 = @"SEXUAL_ACTIVITY";
      goto LABEL_217;
    case 99:
      v4 = @"MINDFUL_MINUTES";
      goto LABEL_217;
    case 100:
      v4 = @"ACTIVITY_SUMMARY";
      goto LABEL_217;
    case 101:
      v4 = @"PUSH_COUNT";
      goto LABEL_217;
    case 102:
      v4 = @"WORKOUT_ROUTE";
      goto LABEL_217;
    case 103:
      v4 = @"WHEELCHAIR_USE";
      goto LABEL_217;
    case 107:
      v4 = @"CLINICAL_DOCUMENTS";
      goto LABEL_217;
    case 110:
      v4 = @"SWIMMING_DISTANCE";
      goto LABEL_217;
    case 111:
      v4 = @"SWIMMING_STROKES";
      goto LABEL_217;
    case 113:
      v4 = @"WHEELCHAIR_DISTANCE";
      goto LABEL_217;
    case 114:
      v4 = @"WAIST_CIRCUMFERENCE";
      goto LABEL_217;
    case 118:
      v4 = @"RESTING_HEART_RATE";
      goto LABEL_217;
    case 119:
      v4 = @"TACHOGRAM";
      goto LABEL_217;
    case 124:
      v4 = @"CARDIO_FITNESS";
      goto LABEL_217;
    case 125:
      v4 = @"INSULIN_DELIVERY";
      goto LABEL_217;
    case 137:
      v4 = @"WALKING_HEART_RATE_AVERAGE";
      goto LABEL_217;
    case 138:
      v4 = @"DOWNHILL_SNOW_SPORTS_DISTANCE";
      goto LABEL_217;
    case 139:
      v4 = @"HEART_RATE_VARIABILITY";
      goto LABEL_217;
    case 140:
      v4 = @"TACHYCARDIA";
      goto LABEL_217;
    case 144:
      v4 = @"ELECTROCARDIOGRAM";
      goto LABEL_217;
    case 145:
      v4 = @"AUDIOGRAM";
      goto LABEL_217;
    case 147:
      v4 = @"BRADYCARDIA";
      goto LABEL_217;
    case 156:
      v4 = @"ATRIAL_FIBRILLATION_EVENT";
      goto LABEL_217;
    case 157:
      goto LABEL_217;
    case 158:
      v4 = @"SYMPTOM_BREAST_PAIN";
      goto LABEL_217;
    case 159:
      v4 = @"SYMPTOM_BLOATING";
      goto LABEL_217;
    case 160:
      v4 = @"SYMPTOM_HEADACHE";
      goto LABEL_217;
    case 161:
      v4 = @"SYMPTOM_ACNE";
      goto LABEL_217;
    case 162:
      v4 = @"SYMPTOM_LOWER_BACK_PAIN";
      goto LABEL_217;
    case 163:
      v4 = @"SYMPTOM_PELVIC_PAIN";
      goto LABEL_217;
    case 164:
      v4 = @"SYMPTOM_MOOD_CHANGES";
      goto LABEL_217;
    case 165:
      v4 = @"SYMPTOM_CONSTIPATION";
      goto LABEL_217;
    case 166:
      v4 = @"SYMPTOM_DIARRHEA";
      goto LABEL_217;
    case 167:
      v4 = @"SYMPTOM_FATIGUE";
      goto LABEL_217;
    case 168:
      v4 = @"SYMPTOM_NAUSEA";
      goto LABEL_217;
    case 169:
      v4 = @"SYMPTOM_SLEEP_CHANGES";
      goto LABEL_217;
    case 170:
      v4 = @"SYMPTOM_APPETITE_CHANGES";
      goto LABEL_217;
    case 171:
      v4 = @"SYMPTOM_HOT_FLASHES";
      goto LABEL_217;
    case 172:
      v4 = @"ENVIRONMENTAL_AUDIO_EXPOSURE";
      goto LABEL_217;
    case 173:
      v4 = @"HEADPHONE_AUDIO_EXPOSURE";
      goto LABEL_217;
    case 177:
      v4 = @"ACTIVITY_MOVE_MODE";
      goto LABEL_217;
    case 178:
      v4 = @"AUDIO_EXPOSURE_EVENT";
      goto LABEL_217;
    case 179:
      v4 = @"MOVE_MINUTE";
      goto LABEL_217;
    case 182:
      v4 = @"WALKING_DOUBLE_SUPPORT_PERCENTAGE";
      goto LABEL_217;
    case 183:
      v4 = @"SIX_MINUTE_WALK_TEST_DISTANCE";
      goto LABEL_217;
    case 186:
      v4 = @"STAND_MINUTE";
      goto LABEL_217;
    case 187:
      v4 = @"WALKING_SPEED";
      goto LABEL_217;
    case 188:
      v4 = @"WALKING_STEP_LENGTH";
      goto LABEL_217;
    case 189:
      v4 = @"TOOTHBRUSHING_EVENT";
      goto LABEL_217;
    case 191:
      v4 = @"PREGNANCY";
      goto LABEL_217;
    case 192:
      v4 = @"LACTATION";
      goto LABEL_217;
    case 193:
      v4 = @"CONTRACEPTIVE";
      goto LABEL_217;
    case 194:
      v4 = @"WALKING_ASYMMETRY_PERCENTAGE";
      goto LABEL_217;
    case 195:
      v4 = @"STAIR_ASCENT_SPEED";
      goto LABEL_217;
    case 196:
      v4 = @"STAIR_DESCENT_SPEED";
      goto LABEL_217;
    case 197:
      v4 = @"SLEEP_DURATION_GOAL";
      goto LABEL_217;
    case 198:
      v4 = @"SLEEP_SCHEDULE";
      goto LABEL_217;
    case 199:
      v4 = @"HEADPHONE_AUDIO_EXPOSURE_EVENT";
      goto LABEL_217;
    case 201:
      v4 = @"SYMPTOM_RAPID_POUNDING_OR_FLUTTERING_HEARTBEAT";
      goto LABEL_217;
    case 202:
      v4 = @"SYMPTOM_SKIPPED_HEARTBEAT";
      goto LABEL_217;
    case 203:
      v4 = @"SYMPTOM_FEVER";
      goto LABEL_217;
    case 204:
      v4 = @"SYMPTOM_SHORTNESS_OF_BREATH";
      goto LABEL_217;
    case 205:
      v4 = @"SYMPTOM_CHEST_TIGHTNESS_OR_PAIN";
      goto LABEL_217;
    case 206:
      v4 = @"SYMPTOM_FAINTING";
      goto LABEL_217;
    case 207:
      v4 = @"SYMPTOM_DIZZINESS";
      goto LABEL_217;
    case 218:
      v4 = @"CARDIO_FITNESS_MEDICATIONS_USE";
      goto LABEL_217;
    case 220:
      v4 = @"SYMPTOM_VOMITING";
      goto LABEL_217;
    case 221:
      v4 = @"SYMPTOM_HEARTBURN";
      goto LABEL_217;
    case 222:
      v4 = @"SYMPTOM_COUGHING";
      goto LABEL_217;
    case 223:
      v4 = @"SYMPTOM_WHEEZING";
      goto LABEL_217;
    case 224:
      v4 = @"SYMPTOM_SORE_THROAT";
      goto LABEL_217;
    case 225:
      v4 = @"SYMPTOM_CONGESTION";
      goto LABEL_217;
    case 226:
      v4 = @"SYMPTOM_RUNNY_NOSE";
      goto LABEL_217;
    case 229:
      v4 = @"SYMPTOM_VAGINAL_DRYNESS";
      goto LABEL_217;
    case 230:
      v4 = @"SYMPTOM_NIGHT_SWEATS";
      goto LABEL_217;
    case 231:
      v4 = @"SYMPTOM_CHILLS";
      goto LABEL_217;
    case 232:
      v4 = @"SYMPTOM_HAIR_LOSS";
      goto LABEL_217;
    case 233:
      v4 = @"SYMPTOM_DRY_SKIN";
      goto LABEL_217;
    case 234:
      v4 = @"SYMPTOM_BLADDER_INCONTINENCE";
      goto LABEL_217;
    case 235:
      v4 = @"SYMPTOM_MEMORY_LAPSE";
      goto LABEL_217;
    case 236:
      v4 = @"CARDIO_FITNESS_EVENT";
      goto LABEL_217;
    case 237:
      v4 = @"HANDWASHING_EVENT";
      goto LABEL_217;
    case 240:
      v4 = @"SYMPTOM_BODY_ACHE";
      goto LABEL_217;
    case 241:
      v4 = @"SYMPTOM_LOSS_OF_SMELL";
      goto LABEL_217;
    case 242:
      v4 = @"SYMPTOM_LOSS_OF_TASTE";
      goto LABEL_217;
    case 243:
      v4 = @"PREGNANCY_TEST_RESULT";
      goto LABEL_217;
    case 244:
      v4 = @"PROGESTERONE_TEST_RESULT";
      goto LABEL_217;
    case 248:
      v4 = @"ATRIAL_FIBRILLATION_BURDEN";
      goto LABEL_217;
    case 249:
      v4 = @"WALKING_STEADINESS";
      goto LABEL_217;
    case 250:
      v4 = @"WALKING_STEADINESS_EVENT";
      goto LABEL_217;
    case 251:
      v4 = @"NUMBER_OF_ALCOHOLIC_BEVERAGES";
      goto LABEL_217;
    case 254:
      v4 = @"HYPERTENSION_EVENT";
      goto LABEL_217;
    case 256:
      v4 = @"SLEEPING_WRIST_TEMPERATURE";
      goto LABEL_217;
    case 257:
      v4 = @"VISION_PRESCRIPTION";
      goto LABEL_217;
    case 258:
      v4 = @"RUNNING_STRIDE_LENGTH";
      goto LABEL_217;
    case 259:
      v4 = @"RUNNING_VERTICAL_OSCILLATION";
      goto LABEL_217;
    case 260:
      v4 = @"RUNNING_GROUND_CONTACT_TIME";
      goto LABEL_217;
    case 262:
      v4 = @"MENSTRUAL_CYCLE_DEVIATION_SPOTTING";
      goto LABEL_217;
    case 263:
      v4 = @"MENSTRUAL_CYCLE_DEVIATION_PROLONGED";
      goto LABEL_217;
    case 264:
      v4 = @"MENSTRUAL_CYCLE_DEVIATION_IRREGULAR";
      goto LABEL_217;
    case 265:
      v4 = @"MENSTRUAL_CYCLE_DEVIATION_INFREQUENT";
      goto LABEL_217;
    case 266:
      v4 = @"HEART_RATE_RECOVERY";
      goto LABEL_217;
    case 269:
      v4 = @"UNDERWATER_DEPTH";
      goto LABEL_217;
    case 270:
      v4 = @"RUNNING_POWER";
      goto LABEL_217;
    case 272:
      v4 = @"ENVIRONMENTAL_SOUND_REDUCTION";
      goto LABEL_217;
    case 273:
      v4 = @"MEDICATION_DOSE_EVENT";
      goto LABEL_217;
    case 274:
      v4 = @"RUNNING_SPEED";
      goto LABEL_217;
    case 275:
      v4 = @"SLEEP_BREATHING_DISTURBANCES";
      goto LABEL_217;
    case 276:
      v4 = @"SLEEP_APNEA_EVENT";
      goto LABEL_217;
    case 277:
      v4 = @"WATER_TEMPERATURE";
      goto LABEL_217;
    case 279:
      v4 = @"TIME_IN_DAYLIGHT";
      goto LABEL_217;
    case 280:
      v4 = @"CYCLING_POWER";
      goto LABEL_217;
    case 281:
      v4 = @"CYCLING_SPEED";
      goto LABEL_217;
    case 282:
      v4 = @"CYCLING_CADENCE";
      goto LABEL_217;
    case 283:
      v4 = @"CYCLING_FUNCTIONAL_THRESHOLD_POWER";
      goto LABEL_217;
    case 284:
      v4 = @"STATE_OF_MIND";
      goto LABEL_217;
    case 285:
      v4 = @"HYPERTENSIVE_PATTERN_MEASUREMENT";
      goto LABEL_217;
    case 286:
      v4 = @"PHYSICAL_EFFORT";
      goto LABEL_217;
    case 287:
      v4 = @"GAD7";
      goto LABEL_217;
    case 288:
      v4 = @"PHQ9";
      goto LABEL_217;
    case 291:
      v4 = @"USER_TRACKED_MEDICATIONS";
      goto LABEL_217;
    case 294:
      v4 = @"PADDLE_SPORTS_DISTANCE";
      goto LABEL_217;
    case 295:
      v4 = @"ROWING_DISTANCE";
      goto LABEL_217;
    case 296:
      v4 = @"CROSS_COUNTRY_SKIING_DISTANCE";
      goto LABEL_217;
    case 297:
      v4 = @"SKATING_SPORTS_DISTANCE";
      goto LABEL_217;
    case 298:
      v4 = @"ESTIMATED_WORKOUT_EFFORT_SCORE";
      goto LABEL_217;
    case 301:
      v4 = @"ROWING_SPEED";
      goto LABEL_217;
    case 302:
      v4 = @"CROSS_COUNTRY_SKIING_SPEED";
      goto LABEL_217;
    case 303:
      v4 = @"PADDLE_SPORTS_SPEED";
      goto LABEL_217;
    case 304:
      v4 = @"WORKOUT_EFFORT_SCORE";
      goto LABEL_217;
    case 305:
      v4 = @"APPLE_BALANCE_METRICS";
      goto LABEL_217;
    case 306:
      v4 = @"USER_ANNOTATED_MEDICATIONS";
      goto LABEL_217;
    case 313:
      v4 = @"BLEEDING_DURING_PREGNANCY";
      goto LABEL_217;
    case 314:
      v4 = @"BLEEDING_AFTER_PREGNANCY";
      goto LABEL_217;
    case 341:
      v4 = @"APPLE_SLEEP_SCORE";
LABEL_217:
      v5 = [(__CFString *)v4 stringByAppendingString:@"_EMBEDDED_AUTH"];
      v6 = HKHealthKitFrameworkBundle();
      v2 = [v6 localizedStringForKey:v5 value:&stru_1F05FF230 table:@"Localizable-DataTypes"];

      break;
    default:
      break;
  }

  return v2;
}

+ (id)objectTypeForWorkoutMetric:(unint64_t)a3 fitnessMachineType:(unint64_t)a4
{
  v6 = 0;
  if (a3 <= 6)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v7 = &HKQuantityTypeIdentifierAppleExerciseTime;
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_28;
        }

        v7 = &HKQuantityTypeIdentifierActiveEnergyBurned;
      }
    }

    else
    {
      switch(a3)
      {
        case 3uLL:
          v7 = &HKQuantityTypeIdentifierDistanceWalkingRunning;
          break;
        case 4uLL:
          v7 = &HKQuantityTypeIdentifierDistanceCycling;
          break;
        case 6uLL:
          v7 = &HKQuantityTypeIdentifierFlightsClimbed;
          break;
        default:
          goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  if (a3 <= 15)
  {
    if (a3 == 7)
    {
      v7 = &HKQuantityTypeIdentifierStepCount;
    }

    else
    {
      if (a3 != 9)
      {
        goto LABEL_28;
      }

      if (a4 != 6)
      {
        goto LABEL_31;
      }

      v7 = &HKQuantityTypeIdentifierCyclingSpeed;
    }

LABEL_27:
    v6 = [(HKObjectType *)HKSampleType quantityTypeForIdentifier:*v7, a4, v4];
LABEL_28:

    return v6;
  }

  if (a3 == 16)
  {
    if (a4 != 6)
    {
      goto LABEL_31;
    }

    v7 = &HKQuantityTypeIdentifierCyclingPower;
    goto LABEL_27;
  }

  if (a3 != 18)
  {
    if (a3 != 20)
    {
      goto LABEL_28;
    }

    v7 = &HKQuantityTypeIdentifierHeartRate;
    goto LABEL_27;
  }

  if (a4 == 6)
  {
    v7 = &HKQuantityTypeIdentifierCyclingCadence;
    goto LABEL_27;
  }

LABEL_31:
  v6 = 0;

  return v6;
}

+ (id)signedClinicalDataRecordTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)procedureRecordTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)diagnosticTestResultTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)conditionRecordTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)medicationDispenseRecordTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)diagnosticTestReportTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)coverageRecordTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (HKObjectType)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (void)_enumerateDataTypeCodesWithHandler:(id)a3
{
  v3 = a3;
  v4 = 0;
  v5 = HKDataTypeDefinitions;
  do
  {
    memset(v7, 0, sizeof(v7));
    __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w4(v7, v5);
    v6 = *&v7[0];
    __destructor_8_s0_s8_s16_s24_s32(v7);
    if (v6)
    {
      v3[2](v3, v4);
    }

    ++v4;
    v5 += 6;
  }

  while (v4 != 342);
}

+ (void)_enumerateObjectTypesWithHandler:(id)a3
{
  v4 = 0;
  v6 = a3;
  do
  {
    v5 = [a1 dataTypeWithCode:v4];
    if (v5)
    {
      v6[2](v6, v5);
    }

    ++v4;
  }

  while (v4 != 342);
}

+ (id)_allDataTypeIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__HKObjectType__allDataTypeIdentifiers__block_invoke;
  v7[3] = &unk_1E7380460;
  v8 = v3;
  v4 = v3;
  [a1 _enumerateDataTypeCodesWithHandler:v7];
  v5 = [v4 copy];

  return v5;
}

void __39__HKObjectType__allDataTypeIdentifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w4(v4, &HKDataTypeDefinitions[6 * a2]);
  v3 = *&v4[0];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  __destructor_8_s0_s8_s16_s24_s32(v4);
}

+ (id)_allTypesOfClass:(Class)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__HKObjectType__allTypesOfClass___block_invoke;
  v9[3] = &unk_1E7380488;
  v11 = a1;
  v12 = a3;
  v10 = v5;
  v6 = v5;
  [a1 _enumerateDataTypeCodesWithHandler:v9];
  v7 = [v6 copy];

  return v7;
}

uint64_t __33__HKObjectType__allTypesOfClass___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _dataTypeWithCode:a2 expectedClass:*(a1 + 48)];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_allBinarySampleTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = &unk_1F0697FD8;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __37__HKObjectType__allBinarySampleTypes__block_invoke;
  v12 = &unk_1E73804B0;
  v13 = v4;
  v14 = v3;
  v5 = v3;
  v6 = v4;
  [a1 _enumerateObjectTypesWithHandler:&v9];
  v7 = [v5 copy];

  return v7;
}

void __37__HKObjectType__allBinarySampleTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([objc_msgSend(v3 "dataObjectClass")])
  {
    [*(a1 + 40) addObject:v3];
  }
}

+ (id)_allScoredAssessmentTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = &unk_1F0698F28;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __41__HKObjectType__allScoredAssessmentTypes__block_invoke;
  v12 = &unk_1E73804B0;
  v13 = v4;
  v14 = v3;
  v5 = v3;
  v6 = v4;
  [a1 _enumerateObjectTypesWithHandler:&v9];
  v7 = [v5 copy];

  return v7;
}

void __41__HKObjectType__allScoredAssessmentTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([objc_msgSend(v3 "dataObjectClass")])
  {
    [*(a1 + 40) addObject:v3];
  }
}

+ (id)_typesIncludingParentTypes:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] setWithSet:v3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 parentType];

        if (v11)
        {
          v12 = [v10 parentType];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_lock_dataTypeWithCode:(int64_t)a3 expectedClass:(Class)a4
{
  v8 = (&_lock_dataTypeWithCode_expectedClass__uniquedDataTypes + 8 * a3);
  v9 = *v8;
  if (v9)
  {
    v10 = v9;
    if (a4 && ([objc_opt_class() isSubclassOfClass:a4] & 1) == 0)
    {

      v10 = 0;
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    *aClassName = 0u;
    __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w4(aClassName, &HKDataTypeDefinitions[6 * a3]);
    if (SWORD4(v19) != a3)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:a1 file:@"HKObjectType.m" lineNumber:177 description:{@"definition for wrong code (%d) at index %d", SWORD4(v19), a3}];
    }

    v11 = NSClassFromString(aClassName[1]);
    v12 = v11;
    if (a4 && ![(objc_class *)v11 isSubclassOfClass:a4])
    {
      v10 = 0;
    }

    else
    {
      v13 = [v12 alloc];
      v10 = [v13 _initWithCode:SWORD4(v19)];
      if (v19)
      {
        v14 = [a1 _lock_dataTypeWithCode:objc_msgSend(v19 expectedClass:{"longLongValue"), 0}];
        [v10 setParentType:v14];
      }

      objc_storeStrong(v8, v10);
    }

    __destructor_8_s0_s8_s16_s24_s32(aClassName);
  }

  return v10;
}

+ (id)_dataTypeWithCode:(int64_t)a3 expectedClass:(Class)a4
{
  if (a3 >= 0x156)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"invalid data type code (%ld)", a3}];
  }

  os_unfair_lock_lock(&_dataTypeWithCode_expectedClass__lock);
  v7 = [a1 _lock_dataTypeWithCode:a3 expectedClass:a4];
  os_unfair_lock_unlock(&_dataTypeWithCode_expectedClass__lock);

  return v7;
}

+ (id)dataTypeWithNumber:(id)a3
{
  v4 = [a3 integerValue];

  return [a1 dataTypeWithCode:v4];
}

+ (HKQuantityType)quantityTypeForIdentifier:(HKQuantityTypeIdentifier)identifier
{
  v4 = identifier;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (HKCategoryType)categoryTypeForIdentifier:(HKCategoryTypeIdentifier)identifier
{
  v4 = identifier;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (HKCharacteristicType)characteristicTypeForIdentifier:(HKCharacteristicTypeIdentifier)identifier
{
  v4 = identifier;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (HKCorrelationType)correlationTypeForIdentifier:(HKCorrelationTypeIdentifier)identifier
{
  v4 = identifier;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (HKDocumentType)documentTypeForIdentifier:(HKDocumentTypeIdentifier)identifier
{
  v4 = identifier;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)scoredAssessmentTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (HKSeriesType)seriesTypeForIdentifier:(NSString *)identifier
{
  v4 = identifier;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)userTrackedConceptTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)workoutZonesTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)GAD7AssessmentType
{
  v2 = [[HKScoredAssessmentType alloc] initWithIdentifier:@"HKScoredAssessmentTypeIdentifierGAD7"];

  return v2;
}

+ (id)PHQ9AssessmentType
{
  v2 = [[HKScoredAssessmentType alloc] initWithIdentifier:@"HKScoredAssessmentTypeIdentifierPHQ9"];

  return v2;
}

+ (int64_t)_typeCodeForIdentifier:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = HKDataTypeCodeFromTypeIdentifier(v3);
  if (v4 || ([&unk_1F0686308 objectForKeyedSubscript:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 unsignedIntValue];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "Failed to resolve data type code for identifier %@", &v10, 0xCu);
    }

    v6 = -1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)_typeWithIdentifier:(id)a3 expectedClass:(Class)a4
{
  v6 = [a1 _typeCodeForIdentifier:a3];
  if (v6 > 0x155)
  {
    v7 = 0;
  }

  else
  {
    v7 = [a1 _dataTypeWithCode:v6 expectedClass:a4];
  }

  return v7;
}

+ (id)_objectTypesFromIdentifierArray:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = a4;
    v6 = v5;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v14 = v13;
        v15 = [HKObjectType _typeWithIdentifier:v14];
        if (!v15)
        {
          [MEMORY[0x1E696ABC0] hk_assignError:v24 code:3 format:{@"Invalid type identifier %@", v14}];

          goto LABEL_15;
        }

        v16 = v15;
        [v7 addObject:v15];

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      v20 = MEMORY[0x1E696ABC0];
      v21 = objc_opt_class();
      [v20 hk_assignError:v24 code:3 format:{@"Type identifier %@ has invalid class (expected %@, found %@)", v13, v21, objc_opt_class()}];
LABEL_15:

      v17 = 0;
      goto LABEL_16;
    }

LABEL_11:

    v17 = [v7 copy];
LABEL_16:
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = objc_opt_class();
    [v18 hk_assignError:a4 code:3 format:{@"Invalid type identifier array (expected %@, found %@)", v19, objc_opt_class()}];
    v17 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)isHealthRecordsType
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)attachmentSchemaIdentifier
{
  v2 = [(HKObjectType *)self isHealthRecordsType];
  v3 = &HKAttachmentClinicalRecordSchemaIdentifier;
  if (!v2)
  {
    v3 = HKAttachmentObjectSchemaIdentifier;
  }

  v4 = *v3;

  return v4;
}

- (id)_initWithCode:(int64_t)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = HKObjectType;
  result = [(HKObjectType *)&v5 init];
  if (result)
  {
    *(result + 4) = v3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_code == v4[4];

  return v5;
}

- ($E8A27014057A1F053A0599C3679047E8)_definition
{
  if (self->_code >= 0x156)
  {
    return 0;
  }

  else
  {
    return &HKDataTypeDefinitions[6 * self->_code];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HKObjectType code](self forKey:{"code"), @"Code"}];
}

- (HKObjectType)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"Code"];
  if (v4 >= 0x156)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"invalid data type code (%ld)", v4}];
  }

  v5 = [HKObjectType dataTypeWithCode:v4];

  return v5;
}

+ (id)medicalTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (BOOL)_allowAuthorizationForSharing:(BOOL)a3 types:(id)a4 entitlements:(id)a5 disallowedTypes:(id)a6
{
  v8 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    v15 = 1;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (v8)
        {
          if ([v17 sharingAuthorizationAllowed] && (HKAllowShareAuthorizationForTypeWithEntitlements(objc_msgSend(v17, "code"), v10) & 1) != 0)
          {
            goto LABEL_12;
          }
        }

        else if ([v17 readingAuthorizationAllowed] && (HKAllowReadAuthorizationForTypeWithEntitlements(objc_msgSend(v17, "code"), v10) & 1) != 0)
        {
LABEL_12:
          v18 = 1;
          goto LABEL_14;
        }

        [v11 addObject:v17];
        v18 = 0;
LABEL_14:
        v15 &= v18;
      }

      v13 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v13)
      {
        goto LABEL_18;
      }
    }
  }

  v15 = 1;
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (HKClinicalType)clinicalTypeForIdentifier:(HKClinicalTypeIdentifier)identifier
{
  v4 = identifier;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)vaccinationRecordTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)verifiableClinicalRecordTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)medicationRecordTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

+ (id)clinicalNoteRecordTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeWithIdentifier:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (int64_t)logPrivacyLevel
{
  v2 = [(HKObjectType *)self code];
  result = 3;
  v4 = (v2 - 262) > 0x34 || ((1 << (v2 - 6)) & 0x1800000000000FLL) == 0;
  if (v4 && ((v2 - 191) > 0x3F || ((1 << (v2 + 65)) & 0x8010000000000003) == 0) && (v2 - 95) >= 2)
  {
    return 0;
  }

  return result;
}

- (BOOL)requiresSensitiveHealthLogs
{
  v2 = [(HKObjectType *)self code];
  result = 1;
  v4 = (v2 - 262) > 0x34 || ((1 << (v2 - 6)) & 0x1800000000000FLL) == 0;
  if (v4 && ((v2 - 191) > 0x3F || ((1 << (v2 + 65)) & 0x8010000000000003) == 0))
  {
    return (v2 - 95) < 2;
  }

  return result;
}

- (id)sensitiveLoggingIdentifier
{
  if ([(HKObjectType *)self requiresSensitiveHealthLogs])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = HKSensitiveLogItem(self);
    v5 = [v3 stringWithFormat:@"%@", v4];
  }

  else
  {
    v5 = [(HKObjectType *)self identifier];
  }

  return v5;
}

- (BOOL)isAbleToWriteHealthSensitiveLogs
{
  if (![(HKObjectType *)self requiresSensitiveHealthLogs])
  {
    return 1;
  }

  return HKShowSensitiveLogItems();
}

@end