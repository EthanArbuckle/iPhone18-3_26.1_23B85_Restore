@interface HKMedicalCodingSystem
+ (id)CVXSystem;
+ (id)FHIRAllergyIntoleranceCategory;
+ (id)FHIRAllergyIntoleranceClinicalStatus;
+ (id)FHIRAllergyIntoleranceCriticality;
+ (id)FHIRAllergyIntoleranceSeverity;
+ (id)FHIRAllergyIntoleranceStatus;
+ (id)FHIRAllergyIntoleranceType;
+ (id)FHIRAllergyIntoleranceVerificationStatus;
+ (id)FHIRCarePlanStatus;
+ (id)FHIRConditionClinicalStatus;
+ (id)FHIRConditionVerificationStatus;
+ (id)FHIRCoverageClassification;
+ (id)FHIRCoverageStatus;
+ (id)FHIRCoverageType;
+ (id)FHIRDeviceStatus;
+ (id)FHIRDiagnosticReportStatus;
+ (id)FHIRDocumentReferenceClinicalNoteCategorySystem;
+ (id)FHIRDocumentReferenceClinicalNoteDocStatus;
+ (id)FHIRDocumentReferenceClinicalNoteStatus;
+ (id)FHIREventStatus;
+ (id)FHIRGoalStatus;
+ (id)FHIRImmunizationStatus;
+ (id)FHIRMedicationAdminStatus;
+ (id)FHIRMedicationDispenseStatus;
+ (id)FHIRMedicationDispenseStatusR4;
+ (id)FHIRMedicationOrderStatus;
+ (id)FHIRMedicationRequestStatus;
+ (id)FHIRMedicationStatementStatus;
+ (id)FHIRObservationStatus;
+ (id)FHIRProcedureStatus;
+ (id)FHIRQuantityComparatorSystem;
+ (id)ICD10System;
+ (id)ICD9System;
+ (id)LOINCCodeSystem;
+ (id)NDCSystem;
+ (id)RxNormCodeSystem;
+ (id)SNOMEDCodeSystem;
+ (id)UCUMSystem;
+ (id)adHocConceptSystem;
+ (id)appleHealthDataTypeSystem;
+ (id)appleOntologySystem;
+ (id)argonautHL7System;
+ (id)codeSystemWithIdentifier:(id)a3;
+ (id)externalCodeSystems;
+ (id)systemWithSystemDefinition:(id *)a3;
+ (id)textSystem;
+ (id)unknownSystem;
+ (void)FHIRAllergyIntoleranceCategory;
+ (void)FHIRAllergyIntoleranceClinicalStatus;
+ (void)FHIRAllergyIntoleranceCriticality;
+ (void)FHIRAllergyIntoleranceSeverity;
+ (void)FHIRAllergyIntoleranceStatus;
+ (void)FHIRAllergyIntoleranceType;
+ (void)FHIRAllergyIntoleranceVerificationStatus;
+ (void)FHIRConditionClinicalStatus;
+ (void)FHIRConditionVerificationStatus;
+ (void)FHIRDocumentReferenceClinicalNoteCategorySystem;
+ (void)FHIRDocumentReferenceClinicalNoteDocStatus;
+ (void)FHIRDocumentReferenceClinicalNoteStatus;
+ (void)FHIRMedicationDispenseStatus;
+ (void)FHIRMedicationDispenseStatusR4;
+ (void)FHIRProcedureStatus;
+ (void)FHIRQuantityComparatorSystem;
- (BOOL)isEqual:(id)a3;
- (HKMedicalCodingSystem)initWithCoder:(id)a3;
- (HKMedicalCodingSystem)initWithIdentifier:(id)a3 name:(id)a4 OID:(id)a5 type:(unint64_t)a6 synonyms:(id)a7 hasDisplayStrings:(BOOL)a8;
- (id)description;
- (id)ontology_hasCodingSystemAttributeIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicalCodingSystem

- (HKMedicalCodingSystem)initWithIdentifier:(id)a3 name:(id)a4 OID:(id)a5 type:(unint64_t)a6 synonyms:(id)a7 hasDisplayStrings:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v30.receiver = self;
  v30.super_class = HKMedicalCodingSystem;
  v18 = [(HKMedicalCodingSystem *)&v30 init];
  if (v18)
  {
    v19 = standardizeIdentifier(v14);
    v20 = [v19 copy];
    identifier = v18->_identifier;
    v18->_identifier = v20;

    v22 = [v15 copy];
    name = v18->_name;
    v18->_name = v22;

    v24 = [v16 copy];
    OID = v18->_OID;
    v18->_OID = v24;

    v18->_type = a6;
    v26 = [v17 copy];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v18->_synonyms, v28);

    v18->_hasDisplayStrings = a8;
  }

  return v18;
}

+ (id)codeSystemWithIdentifier:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = [a3 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F05FF230];
  v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];
  v7 = standardizeIdentifier(v6);

  if ([v7 isEqualToString:@"urn:apple:medicalrecords:text"])
  {
    v8 = [a1 textSystem];
LABEL_5:
    v9 = v8;
    goto LABEL_30;
  }

  if ([v7 isEqualToString:@"urn:apple:medicalrecords:unknown"])
  {
    v8 = [a1 unknownSystem];
    goto LABEL_5;
  }

  v10 = 0x1E695D000uLL;
  v11 = [MEMORY[0x1E695DFF8] URLWithString:v7 encodingInvalidCharacters:0];
  v12 = [v7 stringByReplacingOccurrencesOfString:@"urn:oid:" withString:&stru_1F05FF230];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v13 = +[HKMedicalCodingSystem externalCodeSystems];
  v14 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v14)
  {
    v15 = *v47;
    v37 = *v47;
    while (2)
    {
      v16 = 0;
      v38 = v14;
      do
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v39 = v16;
        v9 = *(*(&v46 + 1) + 8 * v16);
        v17 = objc_autoreleasePoolPush();
        v18 = objc_alloc(*(v10 + 4088));
        v19 = [(HKMedicalCodingSystem *)v9 identifier];
        v20 = [v18 initWithString:v19];

        if ([v20 isEqual:v11] || (-[HKMedicalCodingSystem OID](v9, "OID"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v12, "caseInsensitiveCompare:", v21), v21, !v22))
        {
          v35 = v9;
LABEL_28:

          objc_autoreleasePoolPop(v17);
          goto LABEL_29;
        }

        context = v17;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v23 = [(HKMedicalCodingSystem *)v9 synonyms];
        v24 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v43;
          v40 = v13;
          while (2)
          {
            v27 = v11;
            for (i = 0; i != v25; ++i)
            {
              if (*v43 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v29 = *(*(&v42 + 1) + 8 * i);
              if (![v7 caseInsensitiveCompare:v29] || !objc_msgSend(v12, "caseInsensitiveCompare:", v29))
              {
                v32 = v9;

                v11 = v27;
                v13 = v40;
                goto LABEL_27;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
            v11 = v27;
            v13 = v40;
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v30 = [(HKMedicalCodingSystem *)v9 name];
        v31 = [v7 caseInsensitiveCompare:v30];

        if (!v31)
        {
          v36 = v9;
LABEL_27:
          v17 = context;
          goto LABEL_28;
        }

        objc_autoreleasePoolPop(context);
        v16 = v39 + 1;
        v10 = 0x1E695D000;
        v15 = v37;
      }

      while (v39 + 1 != v38);
      v14 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v9 = [[HKMedicalCodingSystem alloc] initWithCustomIdentifier:v7];
LABEL_29:

LABEL_30:
  v33 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)systemWithSystemDefinition:(id *)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:a3->var0 length:strnlen(a3->var0 encoding:0x200uLL) freeWhenDone:{4, 0}];
  v5 = standardizeIdentifier(v4);

  v6 = HKHealthKitFrameworkBundle();
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:a3->var1 length:strlen(a3->var1) encoding:4 freeWhenDone:0];
  v8 = &stru_1F05FF230;
  v9 = [v6 localizedStringForKey:v7 value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:a3->var2 length:strlen(a3->var2) encoding:4 freeWhenDone:0];
  if (a3->var3)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:a3->var3 length:strlen(a3->var3) encoding:4 freeWhenDone:0];
  }

  v11 = [(__CFString *)v8 componentsSeparatedByString:@", "];
  v12 = [[HKMedicalCodingSystem alloc] initWithIdentifier:v5 name:v9 OID:v10 type:a3->var4 synonyms:v11 hasDisplayStrings:a3->var5];

  return v12;
}

+ (id)LOINCCodeSystem
{
  v4 = [a1 codeSystemWithIdentifier:@"http://loinc.org"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://loinc.org"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:154 description:v5];
  }

  return v4;
}

+ (id)SNOMEDCodeSystem
{
  v4 = [a1 codeSystemWithIdentifier:@"http://snomed.info/sct"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://snomed.info/sct"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:158 description:v5];
  }

  return v4;
}

+ (id)RxNormCodeSystem
{
  v4 = [a1 codeSystemWithIdentifier:@"http://www.nlm.nih.gov/research/umls/rxnorm"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://www.nlm.nih.gov/research/umls/rxnorm"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:162 description:v5];
  }

  return v4;
}

+ (id)UCUMSystem
{
  v4 = [a1 codeSystemWithIdentifier:@"http://unitsofmeasure.org"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://unitsofmeasure.org"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:166 description:v5];
  }

  return v4;
}

+ (id)CVXSystem
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/sid/cvx"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/sid/cvx"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:170 description:v5];
  }

  return v4;
}

+ (id)NDCSystem
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/sid/ndc"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/sid/ndc"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:174 description:v5];
  }

  return v4;
}

+ (id)ICD10System
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/sid/icd-10"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/sid/icd-10"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:178 description:v5];
  }

  return v4;
}

+ (id)ICD9System
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/sid/icd-9"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/sid/icd-9"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:182 description:v5];
  }

  return v4;
}

+ (id)argonautHL7System
{
  v4 = [a1 codeSystemWithIdentifier:@"http://argonaut.hl7.org"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://argonaut.hl7.org"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:186 description:v5];
  }

  return v4;
}

+ (id)FHIRDeviceStatus
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/devicestatus"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/devicestatus"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:190 description:v5];
  }

  return v4;
}

+ (id)FHIRDiagnosticReportStatus
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/diagnostic-report-status"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/ValueSet/diagnostic-report-status"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:194 description:v5];
  }

  return v4;
}

+ (id)FHIREventStatus
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/event-status"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/ValueSet/event-status"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:198 description:v5];
  }

  return v4;
}

+ (id)FHIRImmunizationStatus
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/event-status"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/ValueSet/event-status"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:202 description:v5];
  }

  return v4;
}

+ (id)FHIRObservationStatus
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/observation-status"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/ValueSet/observation-status"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:206 description:v5];
  }

  return v4;
}

+ (id)FHIRMedicationAdminStatus
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/medication-admin-status"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/ValueSet/medication-admin-status"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:210 description:v5];
  }

  return v4;
}

+ (id)FHIRMedicationOrderStatus
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/medication-order-status"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/ValueSet/medication-order-status"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:214 description:v5];
  }

  return v4;
}

+ (id)FHIRMedicationRequestStatus
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/medicationrequest-status"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/ValueSet/medicationrequest-status"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:218 description:v5];
  }

  return v4;
}

+ (id)FHIRMedicationStatementStatus
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/medication-statement-status"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/ValueSet/medication-statement-status"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:222 description:v5];
  }

  return v4;
}

+ (id)FHIRCarePlanStatus
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/care-plan-status"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/ValueSet/care-plan-status"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:226 description:v5];
  }

  return v4;
}

+ (id)FHIRGoalStatus
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/goal-status"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/ValueSet/goal-status"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:230 description:v5];
  }

  return v4;
}

+ (id)FHIRCoverageStatus
{
  v4 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/fm-status"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://hl7.org/fhir/fm-status"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:234 description:v5];
  }

  return v4;
}

+ (id)FHIRCoverageClassification
{
  v4 = [a1 codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/coverage-class"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://terminology.hl7.org/CodeSystem/coverage-class"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:238 description:v5];
  }

  return v4;
}

+ (id)FHIRCoverageType
{
  v4 = [a1 codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/v3-ActCode"];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ code system should never be nil", @"http://terminology.hl7.org/CodeSystem/v3-ActCode"];
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKMedicalCodingSystem.m" lineNumber:242 description:v5];
  }

  return v4;
}

+ (id)FHIRMedicationDispenseStatus
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/medication-dispense-status"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRMedicationDispenseStatus];
  }

  return v2;
}

+ (id)FHIRMedicationDispenseStatusR4
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/medicationdispense-status"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRMedicationDispenseStatusR4];
  }

  return v2;
}

+ (id)FHIRProcedureStatus
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/procedure-status"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRProcedureStatus];
  }

  return v2;
}

+ (id)FHIRAllergyIntoleranceStatus
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/allergy-intolerance-status"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRAllergyIntoleranceStatus];
  }

  return v2;
}

+ (id)FHIRAllergyIntoleranceCategory
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/allergy-intolerance-category"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRAllergyIntoleranceCategory];
  }

  return v2;
}

+ (id)FHIRAllergyIntoleranceCriticality
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRAllergyIntoleranceCriticality];
  }

  return v2;
}

+ (id)FHIRAllergyIntoleranceSeverity
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/reaction-event-severity"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRAllergyIntoleranceSeverity];
  }

  return v2;
}

+ (id)FHIRAllergyIntoleranceType
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/allergy-intolerance-type"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRAllergyIntoleranceType];
  }

  return v2;
}

+ (id)FHIRAllergyIntoleranceClinicalStatus
{
  v2 = [a1 codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRAllergyIntoleranceClinicalStatus];
  }

  return v2;
}

+ (id)FHIRAllergyIntoleranceVerificationStatus
{
  v2 = [a1 codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRAllergyIntoleranceVerificationStatus];
  }

  return v2;
}

+ (id)FHIRConditionClinicalStatus
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/condition-clinical"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRConditionClinicalStatus];
  }

  return v2;
}

+ (id)FHIRConditionVerificationStatus
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/condition-ver-status"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRConditionVerificationStatus];
  }

  return v2;
}

+ (id)FHIRQuantityComparatorSystem
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/ValueSet/quantity-comparator"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRQuantityComparatorSystem];
  }

  return v2;
}

+ (id)FHIRDocumentReferenceClinicalNoteStatus
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/document-reference-status"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRDocumentReferenceClinicalNoteStatus];
  }

  return v2;
}

+ (id)FHIRDocumentReferenceClinicalNoteDocStatus
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/composition-status"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRDocumentReferenceClinicalNoteDocStatus];
  }

  return v2;
}

+ (id)FHIRDocumentReferenceClinicalNoteCategorySystem
{
  v2 = [a1 codeSystemWithIdentifier:@"http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category"];
  if (!v2)
  {
    +[HKMedicalCodingSystem FHIRDocumentReferenceClinicalNoteCategorySystem];
  }

  return v2;
}

+ (id)textSystem
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__HKMedicalCodingSystem_textSystem__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = a1;
  if (textSystem_onceToken != -1)
  {
    dispatch_once(&textSystem_onceToken, v4);
  }

  v2 = textSystem_ret;

  return v2;
}

void __35__HKMedicalCodingSystem_textSystem__block_invoke(uint64_t a1)
{
  v2 = [HKMedicalCodingSystem alloc];
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"MEDICAL_CODING_SYSTEM_TEXT" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];
  v5 = [(HKMedicalCodingSystem *)v2 initWithIdentifier:@"urn:apple:medicalrecords:text" name:v4 OID:0 type:3 synonyms:0 hasDisplayStrings:0];
  v6 = textSystem_ret;
  textSystem_ret = v5;

  if (!textSystem_ret)
  {
    __35__HKMedicalCodingSystem_textSystem__block_invoke_cold_1(a1);
  }
}

+ (id)unknownSystem
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__HKMedicalCodingSystem_unknownSystem__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = a1;
  if (unknownSystem_onceToken != -1)
  {
    dispatch_once(&unknownSystem_onceToken, v4);
  }

  v2 = unknownSystem_ret;

  return v2;
}

void __38__HKMedicalCodingSystem_unknownSystem__block_invoke(uint64_t a1)
{
  v2 = [HKMedicalCodingSystem alloc];
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"MEDICAL_CODING_SYSTEM_UNKNOWN" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];
  v5 = [(HKMedicalCodingSystem *)v2 initWithIdentifier:@"urn:apple:medicalrecords:unknown" name:v4 OID:0 type:3 synonyms:0 hasDisplayStrings:0];
  v6 = unknownSystem_ret;
  unknownSystem_ret = v5;

  if (!unknownSystem_ret)
  {
    __38__HKMedicalCodingSystem_unknownSystem__block_invoke_cold_1(a1);
  }
}

+ (id)appleOntologySystem
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__HKMedicalCodingSystem_appleOntologySystem__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  if (appleOntologySystem_onceToken != -1)
  {
    dispatch_once(&appleOntologySystem_onceToken, v4);
  }

  v2 = appleOntologySystem_ret;

  return v2;
}

void __44__HKMedicalCodingSystem_appleOntologySystem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) codeSystemWithIdentifier:@"urn:apple:health:ontology"];
  v2 = appleOntologySystem_ret;
  appleOntologySystem_ret = v1;

  if (!appleOntologySystem_ret)
  {
    __44__HKMedicalCodingSystem_appleOntologySystem__block_invoke_cold_1();
  }
}

+ (id)adHocConceptSystem
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__HKMedicalCodingSystem_adHocConceptSystem__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  if (adHocConceptSystem_onceToken != -1)
  {
    dispatch_once(&adHocConceptSystem_onceToken, v4);
  }

  v2 = adHocConceptSystem_ret;

  return v2;
}

void __43__HKMedicalCodingSystem_adHocConceptSystem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) codeSystemWithIdentifier:@"urn:apple:health:ontology:ad-hoc"];
  v2 = adHocConceptSystem_ret;
  adHocConceptSystem_ret = v1;

  if (!adHocConceptSystem_ret)
  {
    __43__HKMedicalCodingSystem_adHocConceptSystem__block_invoke_cold_1();
  }
}

+ (id)appleHealthDataTypeSystem
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__HKMedicalCodingSystem_appleHealthDataTypeSystem__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  if (appleHealthDataTypeSystem_onceToken != -1)
  {
    dispatch_once(&appleHealthDataTypeSystem_onceToken, v4);
  }

  v2 = appleHealthDataTypeSystem_ret;

  return v2;
}

void __50__HKMedicalCodingSystem_appleHealthDataTypeSystem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) codeSystemWithIdentifier:@"urn:apple:health:data-type"];
  v2 = appleHealthDataTypeSystem_ret;
  appleHealthDataTypeSystem_ret = v1;

  if (!appleHealthDataTypeSystem_ret)
  {
    __50__HKMedicalCodingSystem_appleHealthDataTypeSystem__block_invoke_cold_1();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = [(HKMedicalCodingSystem *)v4 identifier];
      v8 = [(HKMedicalCodingSystem *)self identifier];
      v6 = [v7 isEqualToString:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HKMedicalCodingSystem *)self identifier];
  v5 = [(HKMedicalCodingSystem *)self name];
  v6 = [(HKMedicalCodingSystem *)self OID];
  v7 = [v3 stringWithFormat:@"Code System (Identifier: %@, Name: %@, OID: %@)", v4, v5, v6];

  return v7;
}

- (HKMedicalCodingSystem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v6 = [HKMedicalCodingSystem codeSystemWithIdentifier:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKMedicalCodingSystem *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

+ (id)externalCodeSystems
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__HKMedicalCodingSystem_externalCodeSystems__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (externalCodeSystems_onceToken != -1)
  {
    dispatch_once(&externalCodeSystems_onceToken, block);
  }

  v2 = externalCodeSystems_externalCodeSystems;

  return v2;
}

void __44__HKMedicalCodingSystem_externalCodeSystems__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 365; i += 5)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *&HKCodeSystemDefinitionsWithCount_systemDefinitions[i + 2];
    v9[0] = *&HKCodeSystemDefinitionsWithCount_systemDefinitions[i];
    v9[1] = v5;
    v10 = HKCodeSystemDefinitionsWithCount_systemDefinitions[i + 4];
    v6 = [*(a1 + 32) systemWithSystemDefinition:v9];
    [v2 addObject:v6];

    objc_autoreleasePoolPop(v4);
  }

  v7 = [v2 copy];
  v8 = externalCodeSystems_externalCodeSystems;
  externalCodeSystems_externalCodeSystems = v7;
}

- (id)ontology_hasCodingSystemAttributeIdentifier
{
  v2 = [(HKMedicalCodingSystem *)self identifier];
  v3 = [&unk_1F0686330 objectForKeyedSubscript:v2];

  return v3;
}

+ (void)FHIRMedicationDispenseStatus
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRMedicationDispenseStatusR4
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRProcedureStatus
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRAllergyIntoleranceStatus
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRAllergyIntoleranceCategory
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRAllergyIntoleranceCriticality
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRAllergyIntoleranceSeverity
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRAllergyIntoleranceType
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRAllergyIntoleranceClinicalStatus
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRAllergyIntoleranceVerificationStatus
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRConditionClinicalStatus
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRConditionVerificationStatus
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRQuantityComparatorSystem
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRDocumentReferenceClinicalNoteStatus
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRDocumentReferenceClinicalNoteDocStatus
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)FHIRDocumentReferenceClinicalNoteCategorySystem
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __35__HKMedicalCodingSystem_textSystem__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"HKMedicalCodingSystem.m" lineNumber:357 description:@"Apple Text System should never be nil"];
}

void __38__HKMedicalCodingSystem_unknownSystem__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"HKMedicalCodingSystem.m" lineNumber:374 description:@"Apple Text System should never be nil"];
}

void __44__HKMedicalCodingSystem_appleOntologySystem__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __43__HKMedicalCodingSystem_adHocConceptSystem__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __50__HKMedicalCodingSystem_appleHealthDataTypeSystem__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end