@interface HKConceptSynthesizer
+ (id)_popValueForString:(id)a3 startingFromSubstring:(id)a4 untilSubstring:(id)a5 outRemainderString:(id *)a6 outEndOfString:(BOOL *)a7 error:(id *)a8;
+ (id)_substringsInBetweenSequentialDelimiters:(id)a3 poppableString:(id)a4 outReachedEndOfString:(BOOL *)a5 outStringRemainder:(id *)a6 error:(id *)a7;
+ (id)_synthesizeConceptWithIdentifier:(id)a3 forCodingCollection:(id)a4 additionalAttributes:(id)a5;
+ (id)_synthesizeConceptWithIdentifier:(id)a3 forCodingCollection:(id)a4 prioritizedCodingSystems:(id)a5 addtionalAttributes:(id)a6;
+ (id)adHocCodingForCodingCollection:(id)a3;
+ (id)bestCodingSystemForDisplayForCodingCollection:(id)a3 prioritizedCodingSystems:(id)a4;
+ (id)bestDisplayNameForCodingCollection:(id)a3;
+ (id)bestDisplayNameForCodingCollection:(id)a3 prioritizedCodingSystems:(id)a4;
+ (id)codingCollectionFromAdHocCode:(id)a3 error:(id *)a4;
+ (id)enumerateCodingsBySystem:(id)a3 prioritizingCodingSystems:(id)a4 handler:(id)a5;
+ (id)prioritizedCodingSystemsForDisplay;
+ (id)privateCodeCreationCodingSortDescriptors;
+ (id)synthesizeInMemoryConceptForCodingCollection:(id)a3 additionalAttributes:(id)a4;
@end

@implementation HKConceptSynthesizer

+ (id)prioritizedCodingSystemsForDisplay
{
  if (prioritizedCodingSystemsForDisplay_onceToken != -1)
  {
    +[HKConceptSynthesizer prioritizedCodingSystemsForDisplay];
  }

  v3 = prioritizedCodingSystemsForDisplay_codingSystems;

  return v3;
}

void __58__HKConceptSynthesizer_prioritizedCodingSystemsForDisplay__block_invoke()
{
  v15 = MEMORY[0x1E695DFB8];
  v55 = +[HKMedicalCodingSystem textSystem];
  v54 = +[HKMedicalCodingSystem LOINCCodeSystem];
  v53 = +[HKMedicalCodingSystem RxNormCodeSystem];
  v52 = +[HKMedicalCodingSystem CVXSystem];
  v51 = +[HKMedicalCodingSystem SNOMEDCodeSystem];
  v50 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/allergy-intolerance-category"];
  v49 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/allergy-intolerance-criticality"];
  v48 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/allergy-intolerance-status"];
  v47 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/allergy-intolerance-type"];
  v46 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/condition-category"];
  v45 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/condition-clinical"];
  v44 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/condition-severity"];
  v43 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/condition-ver-status"];
  v42 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/diagnostic-report-status"];
  v41 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/diagnostic-service-sections"];
  v40 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/immunization-reason"];
  v39 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/immunization-route"];
  v38 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/immunization-site"];
  v37 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/medication-admin-status"];
  v36 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/medication-dispense-status"];
  v32 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/medication-order-status"];
  v34 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/medication-statement-status"];
  v35 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/no-immunization-reason"];
  v33 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/observation-category"];
  v29 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/observation-status"];
  v31 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/observation-valueabsentreason"];
  v24 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/procedure-category"];
  v30 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/procedure-followup"];
  v28 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/procedure-not-performed-reason"];
  v14 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/procedure-outcome"];
  v27 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/procedure-status"];
  v13 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/reaction-event-severity"];
  v26 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/reason-medication-not-given-codes"];
  v25 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/referencerange-meaning"];
  v23 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/CodeSystem/medication-statement-status"];
  v22 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/CodeSystem/medicationrequest-status"];
  v12 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/device-status"];
  v21 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/devicestatus"];
  v20 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/event-status"];
  v19 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://hl7.org/fhir/fm-status"];
  v18 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/condition-clinical"];
  v17 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/condition-ver-status"];
  v16 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/coverage-class"];
  v11 = +[HKMedicalCodingSystem FHIRCoverageClassification];
  v10 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/coverage-selfpay"];
  v0 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/medication-statement-category"];
  v1 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/medicationdispense-status"];
  v2 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/medicationrequest-category"];
  v9 = [HKMedicalCodingSystem codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason"];
  v3 = +[HKMedicalCodingSystem FHIRCoverageType];
  v4 = +[HKMedicalCodingSystem FHIRDocumentReferenceClinicalNoteStatus];
  v5 = +[HKMedicalCodingSystem FHIRDocumentReferenceClinicalNoteDocStatus];
  v6 = +[HKMedicalCodingSystem FHIRDocumentReferenceClinicalNoteCategorySystem];
  v7 = [v15 orderedSetWithObjects:{v55, v54, v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v37, v36, v32, v34, v35, v33, v29, v31, v24, v30, v28, v14, v27, v13, v26, v25, v23, v22, v12, v21, v20, v19, v18, v17, v16, v11, v10, v0, v1, v2, v9, v3, v4, v5, v6, 0}];
  v8 = prioritizedCodingSystemsForDisplay_codingSystems;
  prioritizedCodingSystemsForDisplay_codingSystems = v7;
}

+ (id)privateCodeCreationCodingSortDescriptors
{
  if (privateCodeCreationCodingSortDescriptors_onceToken != -1)
  {
    +[HKConceptSynthesizer privateCodeCreationCodingSortDescriptors];
  }

  v3 = privateCodeCreationCodingSortDescriptors_result;

  return v3;
}

void __64__HKConceptSynthesizer_privateCodeCreationCodingSortDescriptors__block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"codingSystem.identifier" ascending:1];
  v7[0] = v0;
  v1 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"codingVersion" ascending:1];
  v7[1] = v1;
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"code" ascending:1];
  v7[2] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"displayString" ascending:1];
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v5 = privateCodeCreationCodingSortDescriptors_result;
  privateCodeCreationCodingSortDescriptors_result = v4;

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)_synthesizeConceptWithIdentifier:(id)a3 forCodingCollection:(id)a4 additionalAttributes:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 prioritizedCodingSystemsForDisplay];
  v12 = [a1 _synthesizeConceptWithIdentifier:v10 forCodingCollection:v9 prioritizedCodingSystems:v11 addtionalAttributes:v8];

  return v12;
}

+ (id)bestDisplayNameForCodingCollection:(id)a3 prioritizedCodingSystems:(id)a4
{
  v4 = [a1 bestCodingSystemForDisplayForCodingCollection:a3 prioritizedCodingSystems:a4];
  v5 = [v4 displayString];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v4 displayString];
  }

  else
  {
    v8 = [v4 code];

    if (!v8)
    {
      goto LABEL_6;
    }

    v7 = [v4 code];
  }

  v8 = v7;
LABEL_6:

  return v8;
}

+ (id)synthesizeInMemoryConceptForCodingCollection:(id)a3 additionalAttributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HKConceptIdentifier inMemoryConceptIdentifier];
  v9 = [a1 _synthesizeConceptWithIdentifier:v8 forCodingCollection:v7 additionalAttributes:v6];

  return v9;
}

+ (id)bestDisplayNameForCodingCollection:(id)a3
{
  v4 = a3;
  v5 = [a1 prioritizedCodingSystemsForDisplay];
  v6 = [a1 bestDisplayNameForCodingCollection:v4 prioritizedCodingSystems:v5];

  return v6;
}

+ (id)bestCodingSystemForDisplayForCodingCollection:(id)a3 prioritizedCodingSystems:(id)a4
{
  v5 = a4;
  v6 = [a3 codingsBySystem];
  v7 = objc_opt_class();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__HKConceptSynthesizer_bestCodingSystemForDisplayForCodingCollection_prioritizedCodingSystems___block_invoke;
  v17[3] = &unk_1E7383D08;
  v8 = v6;
  v18 = v8;
  v9 = [v7 enumerateCodingsBySystem:v8 prioritizingCodingSystems:v5 handler:v17];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = objc_opt_class();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__HKConceptSynthesizer_bestCodingSystemForDisplayForCodingCollection_prioritizedCodingSystems___block_invoke_2;
    v15[3] = &unk_1E7383D08;
    v16 = v8;
    v12 = [v11 enumerateCodingsBySystem:v16 prioritizingCodingSystems:v5 handler:v15];
    v10 = v12;
    if (v12)
    {
      v13 = v12;
    }
  }

  return v10;
}

id __95__HKConceptSynthesizer_bestCodingSystemForDisplayForCodingCollection_prioritizedCodingSystems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 count];

  if (v5 <= 1)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v8 = [v7 anyObject];

    v9 = [v8 displayString];
    v10 = [v9 length];

    if (v10)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __95__HKConceptSynthesizer_bestCodingSystemForDisplayForCodingCollection_prioritizedCodingSystems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 count];

  if (v5 <= 1)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v8 = [v7 anyObject];

    v9 = [v8 code];
    v10 = [v9 length];

    if (v10)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)enumerateCodingsBySystem:(id)a3 prioritizingCodingSystems:(id)a4 handler:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v16 = [v7 objectForKeyedSubscript:v15];
        if (v16)
        {
          v17 = v16;
          v18 = v9[2](v9, v15, v16);

          if (v18)
          {
            v21 = v10;
            goto LABEL_22;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v19 = [v7 allKeys];
  v20 = [v19 sortedArrayUsingComparator:&__block_literal_global_176];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
LABEL_12:
    v25 = 0;
    while (1)
    {
      if (*v31 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v30 + 1) + 8 * v25);
      if (([v10 containsObject:{v26, v30}] & 1) == 0)
      {
        v27 = [v7 objectForKeyedSubscript:v26];
        v18 = v9[2](v9, v26, v27);

        if (v18)
        {
          break;
        }
      }

      if (v23 == ++v25)
      {
        v23 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v23)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    v18 = 0;
  }

LABEL_22:
  v28 = *MEMORY[0x1E69E9840];

  return v18;
}

uint64_t __83__HKConceptSynthesizer_enumerateCodingsBySystem_prioritizingCodingSystems_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)_synthesizeConceptWithIdentifier:(id)a3 forCodingCollection:(id)a4 prioritizedCodingSystems:(id)a5 addtionalAttributes:(id)a6
{
  v28[2] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [HKConceptAttribute alloc];
  v15 = [a1 adHocCodingForCodingCollection:v10];
  v16 = [v15 code];
  v17 = [(HKConceptAttribute *)v14 initWithType:2 stringValue:v16];
  v28[0] = v17;
  v18 = [[HKConceptAttribute alloc] initWithType:959 stringValue:@"CA, GB, US"];
  v28[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];

  if (v12)
  {
    v20 = [v19 arrayByAddingObjectsFromArray:v12];

    v19 = v20;
  }

  v21 = [a1 bestDisplayNameForCodingCollection:v10 prioritizedCodingSystems:v11];
  if (v21)
  {
    v22 = [[HKConceptAttribute alloc] initWithType:1012 stringValue:v21];
    v23 = [v19 arrayByAddingObject:v22];

    v19 = v23;
  }

  v24 = [HKConcept alloc];
  v25 = [(HKConcept *)v24 initWithIdentifier:v13 attributes:v19 relationships:MEMORY[0x1E695E0F0] version:0 deleted:0 options:0];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)adHocCodingForCodingCollection:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 privateCodeCreationCodingSortDescriptors];
  v32 = v4;
  v6 = [v4 codings];
  v31 = v5;
  v7 = [v6 sortedArrayUsingDescriptors:v5];

  v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        [v8 appendString:@"system="];
        v14 = [v13 codingSystem];
        v15 = [v14 identifier];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = @"none";
        }

        [v8 appendString:v17];

        [v8 appendString:@"version="];
        v18 = [v13 codingVersion];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = @"none";
        }

        [v8 appendString:v20];

        [v8 appendString:@"code="];
        v21 = [v13 code];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = @"none";
        }

        [v8 appendString:v23];

        [v8 appendString:@"display="];
        v24 = [v13 displayString];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = @"none";
        }

        [v8 appendString:v26];
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  v27 = +[HKMedicalCodingSystem adHocConceptSystem];
  v28 = [HKMedicalCoding medicalCodingWithSystem:v27 codingVersion:0 code:v8 displayString:0];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)codingCollectionFromAdHocCode:(id)a3 error:(id *)a4
{
  v37[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 length])
  {
    v23 = v5;
    v6 = [v5 copy];
    v36 = 0;
    v7 = @"none";
    v28 = a4;
    while (1)
    {
      v8 = v7;
      v9 = v6;
      v37[0] = @"system=";
      v37[1] = @"version=";
      v37[2] = @"code=";
      v37[3] = @"display=";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
      v35 = v6;
      v11 = [a1 _substringsInBetweenSequentialDelimiters:v10 poppableString:v6 outReachedEndOfString:&v36 outStringRemainder:&v35 error:a4];
      v6 = v35;

      if (!v11)
      {
        break;
      }

      v33 = [v11 objectAtIndexedSubscript:0];
      v7 = v8;
      v12 = 0;
      v32 = [v33 isEqualToString:v8];
      if ((v32 & 1) == 0)
      {
        v25 = [v11 objectAtIndexedSubscript:0];
        v12 = [HKMedicalCodingSystem codeSystemWithIdentifier:?];
        v24 = v12;
      }

      v31 = [v11 objectAtIndexedSubscript:1];
      v13 = [v31 isEqualToString:v8];
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = [v11 objectAtIndexedSubscript:1];
        v26 = v14;
      }

      v34 = v6;
      v15 = [v11 objectAtIndexedSubscript:2];
      v16 = [v15 isEqualToString:v8];
      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = [v11 objectAtIndexedSubscript:2];
        v27 = v17;
      }

      v18 = [v11 objectAtIndexedSubscript:3];
      if ([v18 isEqualToString:v8])
      {
        v19 = [HKMedicalCoding medicalCodingWithSystem:v12 codingVersion:v14 code:v17 displayString:0];
      }

      else
      {
        v20 = [v11 objectAtIndexedSubscript:3];
        v19 = [HKMedicalCoding medicalCodingWithSystem:v12 codingVersion:v14 code:v17 displayString:v20];

        v7 = v8;
      }

      v6 = v34;
      if ((v16 & 1) == 0)
      {
      }

      a4 = v28;
      if ((v13 & 1) == 0)
      {
      }

      if ((v32 & 1) == 0)
      {
      }

      [v30 addObject:v19];
      if (v36 == 1)
      {
        v11 = [HKMedicalCodingCollection collectionWithCodings:v30];
        break;
      }
    }

    v5 = v23;
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 description:@"Must supply a non-empty string for adhoc code decoding"];
    v11 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_substringsInBetweenSequentialDelimiters:(id)a3 poppableString:(id)a4 outReachedEndOfString:(BOOL *)a5 outStringRemainder:(id *)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__49;
  v37 = __Block_byref_object_dispose__49;
  v38 = [v12 copy];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__49;
  v31 = __Block_byref_object_dispose__49;
  v32 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __127__HKConceptSynthesizer__substringsInBetweenSequentialDelimiters_poppableString_outReachedEndOfString_outStringRemainder_error___block_invoke;
  v19[3] = &unk_1E7383D50;
  v14 = v11;
  v20 = v14;
  v22 = &v33;
  v23 = &v43;
  v24 = &v27;
  v25 = &v39;
  v26 = a1;
  v15 = v13;
  v21 = v15;
  [v14 enumerateObjectsUsingBlock:v19];
  if (v40[3])
  {
    if (a6)
    {
      *a6 = v34[5];
    }

    if (a5)
    {
      *a5 = *(v44 + 24);
    }

    v16 = [v15 copy];
  }

  else
  {
    v16 = 0;
    if (a7)
    {
      *a7 = v28[5];
    }
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  return v16;
}

void __127__HKConceptSynthesizer__substringsInBetweenSequentialDelimiters_poppableString_outReachedEndOfString_outStringRemainder_error___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) objectAtIndexedSubscript:0];
  if ([*(a1 + 32) count] - 1 > a3)
  {
    v9 = [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];

    v8 = v9;
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(*(a1 + 56) + 8);
  v12 = *(*(a1 + 64) + 8);
  obj = *(v10 + 40);
  v13 = [*(a1 + 80) _popValueForString:*(v12 + 40) startingFromSubstring:? untilSubstring:? outRemainderString:? outEndOfString:? error:?];
  objc_storeStrong((v10 + 40), obj);
  objc_storeStrong((v12 + 40), v17);
  if ([*(a1 + 32) count] - 1 > a3 && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v14 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Invalid order of delimiters. Reached end of string before full sequence was parsed."];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

LABEL_8:
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a4 = 1;
    goto LABEL_9;
  }

  if (!v13)
  {
    goto LABEL_8;
  }

  [*(a1 + 40) addObject:v13];
LABEL_9:
}

+ (id)_popValueForString:(id)a3 startingFromSubstring:(id)a4 untilSubstring:(id)a5 outRemainderString:(id *)a6 outEndOfString:(BOOL *)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a5;
  v15 = [v13 rangeOfString:a4];
  v17 = v16;
  v18 = [v13 rangeOfString:v14];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = @"Starting substring was not found in string when trying to unwrap adhoc code.";
    v21 = a8;
    v22 = 100;
LABEL_3:
    [v19 hk_assignError:v21 code:v22 description:v20];
    v23 = 0;
    goto LABEL_16;
  }

  v24 = v15 + v17;
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a6)
    {
      *a6 = 0;
    }

    if (a7)
    {
      *a7 = 1;
    }

    v23 = [v13 substringFromIndex:v24];
  }

  else
  {
    if (v18 <= v15)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = @"Starting substring has a location after or equal to the second one. The first substring must come before the first.";
      v21 = a8;
      v22 = 3;
      goto LABEL_3;
    }

    v23 = [v13 substringWithRange:{v24, v18 - v24}];
    v25 = [v13 substringFromIndex:v18];
    if (a6)
    {
      v25 = v25;
      *a6 = v25;
    }

    if (a7)
    {
      *a7 = 0;
    }
  }

LABEL_16:

  return v23;
}

@end