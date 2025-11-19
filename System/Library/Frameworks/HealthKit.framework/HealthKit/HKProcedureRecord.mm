@interface HKProcedureRecord
+ (id)_newProcedureRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 procedureCodingCollection:(id)a15 performers:(id)a16 executionStartDate:(id)a17 executionEndDate:(id)a18 notPerformed:(BOOL)a19 statusCoding:(id)a20 categoryCodingCollection:(id)a21 reasonCodingCollections:(id)a22 reasonsNotPerformedCodingCollections:(id)a23 outcomeCodingCollection:(id)a24 complicationsCodingCollections:(id)a25 followUpsCodingCollections:(id)a26 bodySitesCodingCollections:(id)a27 config:(id)a28;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
+ (id)procedureRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 procedureCodingCollection:(id)a14 performers:(id)a15 executionStartDate:(id)a16 executionEndDate:(id)a17 notPerformed:(BOOL)a18 statusCoding:(id)a19 categoryCodingCollection:(id)a20 reasonCodingCollections:(id)a21 reasonsNotPerformedCodingCollections:(id)a22 outcomeCodingCollection:(id)a23 complicationsCodingCollections:(id)a24 followUpsCodingCollections:(id)a25 bodySitesCodingCollections:(id)a26;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKConcept)category;
- (HKConcept)outcome;
- (HKConcept)procedure;
- (HKConcept)status;
- (HKProcedureRecord)init;
- (HKProcedureRecord)initWithCoder:(id)a3;
- (NSArray)bodySites;
- (NSArray)complications;
- (NSArray)followUps;
- (NSArray)reason;
- (NSArray)reasonsNotPerformed;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (void)_setBodySites:(id)a3;
- (void)_setBodySitesCodingCollections:(id)a3;
- (void)_setCategory:(id)a3;
- (void)_setCategoryCodingCollection:(id)a3;
- (void)_setComplications:(id)a3;
- (void)_setComplicationsCodingCollections:(id)a3;
- (void)_setExecutionEndDate:(id)a3;
- (void)_setExecutionStartDate:(id)a3;
- (void)_setFollowUps:(id)a3;
- (void)_setFollowUpsCodingCollections:(id)a3;
- (void)_setOutcome:(id)a3;
- (void)_setOutcomeCodingCollection:(id)a3;
- (void)_setPerformers:(id)a3;
- (void)_setProcedure:(id)a3;
- (void)_setProcedureCodingCollection:(id)a3;
- (void)_setReason:(id)a3;
- (void)_setReasonCodingCollections:(id)a3;
- (void)_setReasonsNotPerformed:(id)a3;
- (void)_setReasonsNotPerformedCodingCollections:(id)a3;
- (void)_setStatus:(id)a3;
- (void)_setStatusCoding:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKProcedureRecord

- (id)medicalRecordCodings
{
  v2 = [(HKProcedureRecord *)self procedureCodingCollection];
  v3 = [v2 codings];

  return v3;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_PROCEDURE" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)indexableConceptKeyPaths
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___HKProcedureRecord;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"procedure"];
  [v3 addObject:@"status"];
  [v3 addObject:@"category"];
  [v3 addObject:@"reason"];
  [v3 addObject:@"reasonsNotPerformed"];
  [v3 addObject:@"outcome"];
  [v3 addObject:@"complications"];
  [v3 addObject:@"followUps"];
  [v3 addObject:@"bodySites"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___HKProcedureRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:v6 error:a4];
  v8 = v7;
  if (!v7)
  {
    v13 = 0;
    goto LABEL_10;
  }

  if ([v7 isEqualToString:@"procedure"])
  {
    v9 = [(HKProcedureRecord *)self procedureCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:v9];
    v29[0] = v10;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v29;
LABEL_4:
    v13 = [v11 arrayWithObjects:v12 count:1];
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  if ([v8 isEqualToString:@"status"])
  {
    v9 = [(HKProcedureRecord *)self statusCoding];
    v10 = [HKMedicalCodingCollection collectionWithCoding:v9];
    v14 = [HKIndexableObject indexableObjectWithObject:v10];
    v28 = v14;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];

    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"category"])
  {
    v17 = [(HKProcedureRecord *)self categoryCodingCollection];

    if (v17)
    {
      v9 = [(HKProcedureRecord *)self categoryCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:v9];
      v27 = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v27;
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"reason"])
  {
    v18 = [(HKProcedureRecord *)self reasonCodingCollections];

    if (v18)
    {
      v19 = [(HKProcedureRecord *)self reasonCodingCollections];
LABEL_22:
      v9 = v19;
      v13 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:v19 context:v6 error:a4];
      goto LABEL_9;
    }

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"reasonsNotPerformed"])
  {
    v20 = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];

    if (v20)
    {
      v19 = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];
      goto LABEL_22;
    }

LABEL_35:
    v13 = MEMORY[0x1E695E0F0];
    goto LABEL_10;
  }

  if ([v8 isEqualToString:@"outcome"])
  {
    v21 = [(HKProcedureRecord *)self outcomeCodingCollection];

    if (v21)
    {
      v9 = [(HKProcedureRecord *)self outcomeCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:v9];
      v26 = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v26;
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"complications"])
  {
    v22 = [(HKProcedureRecord *)self complicationsCodingCollections];

    if (v22)
    {
      v19 = [(HKProcedureRecord *)self complicationsCodingCollections];
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"followUps"])
  {
    v23 = [(HKProcedureRecord *)self followUpsCodingCollections];

    if (v23)
    {
      v19 = [(HKProcedureRecord *)self followUpsCodingCollections];
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"bodySites"])
  {
    v24 = [(HKProcedureRecord *)self bodySitesCodingCollections];

    if (v24)
    {
      v19 = [(HKProcedureRecord *)self bodySitesCodingCollections];
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  v25.receiver = self;
  v25.super_class = HKProcedureRecord;
  v13 = [(HKMedicalRecord *)&v25 codingsForKeyPath:v6 error:a4];
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:v9 error:a5];
  v11 = v10;
  if (!v10)
  {
LABEL_8:
    LOBYTE(a5) = 0;
    goto LABEL_13;
  }

  if ([v10 isEqualToString:@"procedure"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
    {
      a5 = [v8 firstObject];
      v12 = [a5 object];
      [(HKProcedureRecord *)self _setProcedure:v12];
LABEL_12:

      LOBYTE(a5) = 1;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if ([v11 isEqualToString:@"status"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
    {
      a5 = [v8 firstObject];
      v12 = [a5 object];
      [(HKProcedureRecord *)self _setStatus:v12];
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (![v11 isEqualToString:@"category"])
  {
    if ([v11 isEqualToString:@"reason"])
    {
      v16 = [(HKProcedureRecord *)self reasonCodingCollections];

      if (v16)
      {
        v17 = [(HKProcedureRecord *)self reasonCodingCollections];
        v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v17 count], v9, a5);

        LOBYTE(a5) = v18 != 0;
        if (v18)
        {
          [(HKProcedureRecord *)self _setReason:v18];
        }

LABEL_22:

        goto LABEL_13;
      }
    }

    else if ([v11 isEqualToString:@"reasonsNotPerformed"])
    {
      v19 = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];

      if (v19)
      {
        v20 = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];
        v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v20 count], v9, a5);

        LOBYTE(a5) = v18 != 0;
        if (v18)
        {
          [(HKProcedureRecord *)self _setReasonsNotPerformed:v18];
        }

        goto LABEL_22;
      }
    }

    else
    {
      if ([v11 isEqualToString:@"outcome"])
      {
        v21 = [v8 count];
        v22 = [(HKProcedureRecord *)self outcomeCodingCollection];
        LODWORD(a5) = HKIndexableObjectCheckCardinalityForIndexRestore(v21, v22 != 0, v9, a5);

        if (!a5)
        {
          goto LABEL_13;
        }

        a5 = [v8 firstObject];
        v12 = [a5 object];
        [(HKProcedureRecord *)self _setOutcome:v12];
        goto LABEL_12;
      }

      if ([v11 isEqualToString:@"complications"])
      {
        v23 = [(HKProcedureRecord *)self complicationsCodingCollections];

        if (v23)
        {
          v24 = [(HKProcedureRecord *)self complicationsCodingCollections];
          v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v24 count], v9, a5);

          LOBYTE(a5) = v18 != 0;
          if (v18)
          {
            [(HKProcedureRecord *)self _setComplications:v18];
          }

          goto LABEL_22;
        }
      }

      else if ([v11 isEqualToString:@"followUps"])
      {
        v25 = [(HKProcedureRecord *)self followUpsCodingCollections];

        if (v25)
        {
          v26 = [(HKProcedureRecord *)self followUpsCodingCollections];
          v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v26 count], v9, a5);

          LOBYTE(a5) = v18 != 0;
          if (v18)
          {
            [(HKProcedureRecord *)self _setFollowUps:v18];
          }

          goto LABEL_22;
        }
      }

      else
      {
        if (![v11 isEqualToString:@"bodySites"])
        {
          v30.receiver = self;
          v30.super_class = HKProcedureRecord;
          v29 = [(HKMedicalRecord *)&v30 applyConcepts:v8 forKeyPath:v9 error:a5];
          goto LABEL_39;
        }

        v27 = [(HKProcedureRecord *)self bodySitesCodingCollections];

        if (v27)
        {
          v28 = [(HKProcedureRecord *)self bodySitesCodingCollections];
          v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v28 count], v9, a5);

          LOBYTE(a5) = v18 != 0;
          if (v18)
          {
            [(HKProcedureRecord *)self _setBodySites:v18];
          }

          goto LABEL_22;
        }
      }
    }

    v29 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 0, v9, a5);
LABEL_39:
    LOBYTE(a5) = v29;
    goto LABEL_13;
  }

  v13 = [v8 count];
  v14 = [(HKProcedureRecord *)self categoryCodingCollection];
  LODWORD(a5) = HKIndexableObjectCheckCardinalityForIndexRestore(v13, v14 != 0, v9, a5);

  if (a5)
  {
    a5 = [v8 firstObject];
    v12 = [a5 object];
    [(HKProcedureRecord *)self _setCategory:v12];
    goto LABEL_12;
  }

LABEL_13:

  return a5;
}

+ (id)procedureRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 procedureCodingCollection:(id)a14 performers:(id)a15 executionStartDate:(id)a16 executionEndDate:(id)a17 notPerformed:(BOOL)a18 statusCoding:(id)a19 categoryCodingCollection:(id)a20 reasonCodingCollections:(id)a21 reasonsNotPerformedCodingCollections:(id)a22 outcomeCodingCollection:(id)a23 complicationsCodingCollections:(id)a24 followUpsCodingCollections:(id)a25 bodySitesCodingCollections:(id)a26
{
  v51 = a5;
  v61 = a3;
  v60 = a4;
  v30 = a6;
  v59 = a7;
  v54 = a8;
  v58 = a10;
  v57 = a11;
  v53 = a12;
  v56 = a14;
  v55 = a15;
  v31 = a16;
  v32 = a17;
  v50 = a19;
  v49 = a20;
  v33 = a21;
  v48 = a22;
  v34 = a23;
  v47 = a24;
  v35 = a25;
  v46 = a26;
  v36 = @"modifiedDate";
  v37 = v30;
  v38 = v37;
  if (v32)
  {
    v39 = @"executionEndDate";

    v40 = [v32 dateForUTC];

    v36 = v39;
  }

  else
  {
    v40 = v37;
  }

  if (v31)
  {
    v41 = @"executionStartDate";

    v42 = [v31 dateForUTC];

    v40 = v42;
    v36 = v41;
  }

  v43 = [HKSemanticDate semanticDateWithKeyPath:v36 date:v40];
  LOBYTE(v45) = a18;
  v52 = [HKProcedureRecord procedureRecordWithType:v61 note:v60 enteredInError:v51 modifiedDate:v38 originIdentifier:v59 locale:v54 extractionVersion:a9 device:v58 metadata:v57 sortDate:v43 country:v53 state:a13 procedureCodingCollection:v56 performers:v55 executionStartDate:v31 executionEndDate:v32 notPerformed:v45 statusCoding:v50 categoryCodingCollection:v49 reasonCodingCollections:v33 reasonsNotPerformedCodingCollections:v48 outcomeCodingCollection:v34 complicationsCodingCollections:v47 followUpsCodingCollections:v35 bodySitesCodingCollections:v46];

  return v52;
}

+ (id)_newProcedureRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 procedureCodingCollection:(id)a15 performers:(id)a16 executionStartDate:(id)a17 executionEndDate:(id)a18 notPerformed:(BOOL)a19 statusCoding:(id)a20 categoryCodingCollection:(id)a21 reasonCodingCollections:(id)a22 reasonsNotPerformedCodingCollections:(id)a23 outcomeCodingCollection:(id)a24 complicationsCodingCollections:(id)a25 followUpsCodingCollections:(id)a26 bodySitesCodingCollections:(id)a27 config:(id)a28
{
  v67 = a5;
  v71 = a15;
  v69 = a16;
  v28 = a17;
  v29 = a18;
  v54 = a20;
  v30 = a21;
  v57 = a22;
  v59 = a23;
  v61 = a24;
  v31 = a25;
  v32 = a26;
  v33 = a27;
  v34 = a28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __464__HKProcedureRecord__newProcedureRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_procedureCodingCollection_performers_executionStartDate_executionEndDate_notPerformed_statusCoding_categoryCodingCollection_reasonCodingCollections_reasonsNotPerformedCodingCollections_outcomeCodingCollection_complicationsCodingCollections_followUpsCodingCollections_bodySitesCodingCollections_config___block_invoke;
  aBlock[3] = &unk_1E7384FC0;
  v75 = v71;
  v76 = v69;
  v77 = v28;
  v78 = v29;
  v88 = a19;
  v79 = v54;
  v80 = v30;
  v81 = v57;
  v82 = v59;
  v83 = v61;
  v84 = v31;
  v85 = v32;
  v86 = v33;
  v87 = v34;
  v66 = v34;
  v65 = v33;
  v64 = v32;
  v63 = v31;
  v62 = v61;
  v60 = v59;
  v58 = v57;
  v56 = v30;
  v55 = v54;
  v53 = v29;
  v52 = v28;
  v70 = v69;
  v72 = v71;
  v35 = a13;
  v36 = a12;
  v37 = a11;
  v38 = a10;
  v39 = a8;
  v40 = a7;
  v41 = a6;
  v42 = a4;
  v43 = a3;
  v44 = _Block_copy(aBlock);
  v73.receiver = a1;
  v73.super_class = &OBJC_METACLASS___HKProcedureRecord;
  v68 = objc_msgSendSuper2(&v73, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v43, v42, v67, v41, v40, v39, a9, v38, v37, v36, v35, a14, v44);

  return v68;
}

void __464__HKProcedureRecord__newProcedureRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_procedureCodingCollection_performers_executionStartDate_executionEndDate_notPerformed_statusCoding_categoryCodingCollection_reasonCodingCollections_reasonsNotPerformedCodingCollections_outcomeCodingCollection_complicationsCodingCollections_followUpsCodingCollections_bodySitesCodingCollections_config___block_invoke(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v28[22];
  v28[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v28[23];
  v28[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v28[24];
  v28[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v28[25];
  v28[25] = v9;

  *(v28 + 208) = *(a1 + 136);
  v11 = [*(a1 + 64) copy];
  v12 = v28[27];
  v28[27] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v28[28];
  v28[28] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v28[29];
  v28[29] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v28[30];
  v28[30] = v17;

  v19 = [*(a1 + 96) copy];
  v20 = v28[31];
  v28[31] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v28[32];
  v28[32] = v21;

  v23 = [*(a1 + 112) copy];
  v24 = v28[33];
  v28[33] = v23;

  v25 = [*(a1 + 120) copy];
  v26 = v28[34];
  v28[34] = v25;

  v27 = *(a1 + 128);
  if (v27)
  {
    (*(v27 + 16))(v27, v28);
  }
}

- (HKProcedureRecord)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10.receiver = self;
  v10.super_class = HKProcedureRecord;
  v6 = [(HKSample *)&v10 description];
  followUpsCodingCollections = self->_followUpsCodingCollections;
  v8 = [v3 stringWithFormat:@"<%@:%p super=%@procedureCodingCollection = %@performers = %@executionStartDate = %@executionEndDate = %@notPerformed = %ldstatusCoding = %@categoryCodingCollection = %@reasonCodingCollections = %@reasonsNotPerformedCodingCollections = %@outcomeCodingCollection = %@complicationsCodingCollections = %@followUpsCodingCollections = %@bodySitesCodingCollections = %@>", v5, self, v6, self->_procedureCodingCollection, self->_performers, self->_executionStartDate, self->_executionEndDate, self->_notPerformed, self->_statusCoding, self->_categoryCodingCollection, self->_reasonCodingCollections, self->_reasonsNotPerformedCodingCollections, self->_outcomeCodingCollection, self->_complicationsCodingCollections, followUpsCodingCollections, self->_bodySitesCodingCollections];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKProcedureRecord;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_procedureCodingCollection forKey:{@"ProcedureCodingCollection", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_performers forKey:@"Performers"];
  [v4 encodeObject:self->_executionStartDate forKey:@"ExecutionStartDate"];
  [v4 encodeObject:self->_executionEndDate forKey:@"ExecutionEndDate"];
  [v4 encodeBool:self->_notPerformed forKey:@"NotPerformed"];
  [v4 encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [v4 encodeObject:self->_categoryCodingCollection forKey:@"CategoryCodingCollection"];
  [v4 encodeObject:self->_reasonCodingCollections forKey:@"ReasonCodingCollections"];
  [v4 encodeObject:self->_reasonsNotPerformedCodingCollections forKey:@"ReasonsNotPerformedCodingCollections"];
  [v4 encodeObject:self->_outcomeCodingCollection forKey:@"OutcomeCodingCollection"];
  [v4 encodeObject:self->_complicationsCodingCollections forKey:@"ComplicationsCodingCollections"];
  [v4 encodeObject:self->_followUpsCodingCollections forKey:@"FollowUpsCodingCollections"];
  [v4 encodeObject:self->_bodySitesCodingCollections forKey:@"BodySitesCodingCollections"];
  [v4 encodeObject:self->_procedure forKey:@"Procedure"];
  [v4 encodeObject:self->_status forKey:@"Status"];
  [v4 encodeObject:self->_category forKey:@"Category"];
  [v4 encodeObject:self->_reason forKey:@"Reason"];
  [v4 encodeObject:self->_reasonsNotPerformed forKey:@"ReasonsNotPerformed"];
  [v4 encodeObject:self->_outcome forKey:@"Outcome"];
  [v4 encodeObject:self->_complications forKey:@"Complications"];
  [v4 encodeObject:self->_followUps forKey:@"FollowUps"];
  [v4 encodeObject:self->_bodySites forKey:@"BodySites"];
}

- (HKProcedureRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v60.receiver = self;
  v60.super_class = HKProcedureRecord;
  v5 = [(HKMedicalRecord *)&v60 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProcedureCodingCollection"];
    procedureCodingCollection = v5->_procedureCodingCollection;
    v5->_procedureCodingCollection = v6;

    v8 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Performers"];
    performers = v5->_performers;
    v5->_performers = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExecutionStartDate"];
    executionStartDate = v5->_executionStartDate;
    v5->_executionStartDate = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExecutionEndDate"];
    executionEndDate = v5->_executionEndDate;
    v5->_executionEndDate = v13;

    v5->_notPerformed = [v4 decodeBoolForKey:@"NotPerformed"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CategoryCodingCollection"];
    categoryCodingCollection = v5->_categoryCodingCollection;
    v5->_categoryCodingCollection = v17;

    v19 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"ReasonCodingCollections"];
    reasonCodingCollections = v5->_reasonCodingCollections;
    v5->_reasonCodingCollections = v20;

    v22 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"ReasonsNotPerformedCodingCollections"];
    reasonsNotPerformedCodingCollections = v5->_reasonsNotPerformedCodingCollections;
    v5->_reasonsNotPerformedCodingCollections = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OutcomeCodingCollection"];
    outcomeCodingCollection = v5->_outcomeCodingCollection;
    v5->_outcomeCodingCollection = v25;

    v27 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"ComplicationsCodingCollections"];
    complicationsCodingCollections = v5->_complicationsCodingCollections;
    v5->_complicationsCodingCollections = v28;

    v30 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"FollowUpsCodingCollections"];
    followUpsCodingCollections = v5->_followUpsCodingCollections;
    v5->_followUpsCodingCollections = v31;

    v33 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"BodySitesCodingCollections"];
    bodySitesCodingCollections = v5->_bodySitesCodingCollections;
    v5->_bodySitesCodingCollections = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Procedure"];
    procedure = v5->_procedure;
    v5->_procedure = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Category"];
    category = v5->_category;
    v5->_category = v40;

    v42 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"Reason"];
    reason = v5->_reason;
    v5->_reason = v43;

    v45 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"ReasonsNotPerformed"];
    reasonsNotPerformed = v5->_reasonsNotPerformed;
    v5->_reasonsNotPerformed = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Outcome"];
    outcome = v5->_outcome;
    v5->_outcome = v48;

    v50 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v51 = [v4 decodeObjectOfClasses:v50 forKey:@"Complications"];
    complications = v5->_complications;
    v5->_complications = v51;

    v53 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v54 = [v4 decodeObjectOfClasses:v53 forKey:@"FollowUps"];
    followUps = v5->_followUps;
    v5->_followUps = v54;

    v56 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v57 = [v4 decodeObjectOfClasses:v56 forKey:@"BodySites"];
    bodySites = v5->_bodySites;
    v5->_bodySites = v57;
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
    v137.receiver = self;
    v137.super_class = HKProcedureRecord;
    if (![(HKMedicalRecord *)&v137 isEquivalent:v5])
    {
      goto LABEL_110;
    }

    v6 = [(HKProcedureRecord *)self procedureCodingCollection];
    v7 = [v5 procedureCodingCollection];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 procedureCodingCollection];
      if (!v9)
      {
        goto LABEL_109;
      }

      v10 = v9;
      v11 = [(HKProcedureRecord *)self procedureCodingCollection];
      v12 = [v5 procedureCodingCollection];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self performers];
    v15 = [v5 performers];
    v8 = v15;
    if (v6 == v15)
    {
    }

    else
    {
      v16 = [v5 performers];
      if (!v16)
      {
        goto LABEL_109;
      }

      v17 = v16;
      v18 = [(HKProcedureRecord *)self performers];
      v19 = [v5 performers];
      v20 = [v18 isEqualToArray:v19];

      if (!v20)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self executionStartDate];
    v21 = [v5 executionStartDate];
    v8 = v21;
    if (v6 == v21)
    {
    }

    else
    {
      v22 = [v5 executionStartDate];
      if (!v22)
      {
        goto LABEL_109;
      }

      v23 = v22;
      v24 = [(HKProcedureRecord *)self executionStartDate];
      v25 = [v5 executionStartDate];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self executionEndDate];
    v27 = [v5 executionEndDate];
    v8 = v27;
    if (v6 == v27)
    {
    }

    else
    {
      v28 = [v5 executionEndDate];
      if (!v28)
      {
        goto LABEL_109;
      }

      v29 = v28;
      v30 = [(HKProcedureRecord *)self executionEndDate];
      v31 = [v5 executionEndDate];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
        goto LABEL_110;
      }
    }

    v33 = [(HKProcedureRecord *)self notPerformed];
    if (v33 != [v5 notPerformed])
    {
      goto LABEL_110;
    }

    v6 = [(HKProcedureRecord *)self statusCoding];
    v34 = [v5 statusCoding];
    v8 = v34;
    if (v6 == v34)
    {
    }

    else
    {
      v35 = [v5 statusCoding];
      if (!v35)
      {
        goto LABEL_109;
      }

      v36 = v35;
      v37 = [(HKProcedureRecord *)self statusCoding];
      v38 = [v5 statusCoding];
      v39 = [v37 isEqual:v38];

      if (!v39)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self categoryCodingCollection];
    v40 = [v5 categoryCodingCollection];
    v8 = v40;
    if (v6 == v40)
    {
    }

    else
    {
      v41 = [v5 categoryCodingCollection];
      if (!v41)
      {
        goto LABEL_109;
      }

      v42 = v41;
      v43 = [(HKProcedureRecord *)self categoryCodingCollection];
      v44 = [v5 categoryCodingCollection];
      v45 = [v43 isEqual:v44];

      if (!v45)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self reasonCodingCollections];
    v46 = [v5 reasonCodingCollections];
    v8 = v46;
    if (v6 == v46)
    {
    }

    else
    {
      v47 = [v5 reasonCodingCollections];
      if (!v47)
      {
        goto LABEL_109;
      }

      v48 = v47;
      v49 = [(HKProcedureRecord *)self reasonCodingCollections];
      v50 = [v5 reasonCodingCollections];
      v51 = [v49 isEqualToArray:v50];

      if (!v51)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];
    v52 = [v5 reasonsNotPerformedCodingCollections];
    v8 = v52;
    if (v6 == v52)
    {
    }

    else
    {
      v53 = [v5 reasonsNotPerformedCodingCollections];
      if (!v53)
      {
        goto LABEL_109;
      }

      v54 = v53;
      v55 = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];
      v56 = [v5 reasonsNotPerformedCodingCollections];
      v57 = [v55 isEqualToArray:v56];

      if (!v57)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self outcomeCodingCollection];
    v58 = [v5 outcomeCodingCollection];
    v8 = v58;
    if (v6 == v58)
    {
    }

    else
    {
      v59 = [v5 outcomeCodingCollection];
      if (!v59)
      {
        goto LABEL_109;
      }

      v60 = v59;
      v61 = [(HKProcedureRecord *)self outcomeCodingCollection];
      v62 = [v5 outcomeCodingCollection];
      v63 = [v61 isEqual:v62];

      if (!v63)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self complicationsCodingCollections];
    v64 = [v5 complicationsCodingCollections];
    v8 = v64;
    if (v6 == v64)
    {
    }

    else
    {
      v65 = [v5 complicationsCodingCollections];
      if (!v65)
      {
        goto LABEL_109;
      }

      v66 = v65;
      v67 = [(HKProcedureRecord *)self complicationsCodingCollections];
      v68 = [v5 complicationsCodingCollections];
      v69 = [v67 isEqualToArray:v68];

      if (!v69)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self followUpsCodingCollections];
    v70 = [v5 followUpsCodingCollections];
    v8 = v70;
    if (v6 == v70)
    {
    }

    else
    {
      v71 = [v5 followUpsCodingCollections];
      if (!v71)
      {
        goto LABEL_109;
      }

      v72 = v71;
      v73 = [(HKProcedureRecord *)self followUpsCodingCollections];
      v74 = [v5 followUpsCodingCollections];
      v75 = [v73 isEqualToArray:v74];

      if (!v75)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self bodySitesCodingCollections];
    v76 = [v5 bodySitesCodingCollections];
    v8 = v76;
    if (v6 == v76)
    {
    }

    else
    {
      v77 = [v5 bodySitesCodingCollections];
      if (!v77)
      {
        goto LABEL_109;
      }

      v78 = v77;
      v79 = [(HKProcedureRecord *)self bodySitesCodingCollections];
      v80 = [v5 bodySitesCodingCollections];
      v81 = [v79 isEqualToArray:v80];

      if (!v81)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self procedure];
    v82 = [v5 procedure];
    v8 = v82;
    if (v6 == v82)
    {
    }

    else
    {
      v83 = [v5 procedure];
      if (!v83)
      {
        goto LABEL_109;
      }

      v84 = v83;
      v85 = [(HKProcedureRecord *)self procedure];
      v86 = [v5 procedure];
      v87 = [v85 isEqual:v86];

      if (!v87)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self status];
    v88 = [v5 status];
    v8 = v88;
    if (v6 == v88)
    {
    }

    else
    {
      v89 = [v5 status];
      if (!v89)
      {
        goto LABEL_109;
      }

      v90 = v89;
      v91 = [(HKProcedureRecord *)self status];
      v92 = [v5 status];
      v93 = [v91 isEqual:v92];

      if (!v93)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self category];
    v94 = [v5 category];
    v8 = v94;
    if (v6 == v94)
    {
    }

    else
    {
      v95 = [v5 category];
      if (!v95)
      {
        goto LABEL_109;
      }

      v96 = v95;
      v97 = [(HKProcedureRecord *)self category];
      v98 = [v5 category];
      v99 = [v97 isEqual:v98];

      if (!v99)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self reason];
    v100 = [v5 reason];
    v8 = v100;
    if (v6 == v100)
    {
    }

    else
    {
      v101 = [v5 reason];
      if (!v101)
      {
        goto LABEL_109;
      }

      v102 = v101;
      v103 = [(HKProcedureRecord *)self reason];
      v104 = [v5 reason];
      v105 = [v103 isEqualToArray:v104];

      if (!v105)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self reasonsNotPerformed];
    v106 = [v5 reasonsNotPerformed];
    v8 = v106;
    if (v6 == v106)
    {
    }

    else
    {
      v107 = [v5 reasonsNotPerformed];
      if (!v107)
      {
        goto LABEL_109;
      }

      v108 = v107;
      v109 = [(HKProcedureRecord *)self reasonsNotPerformed];
      v110 = [v5 reasonsNotPerformed];
      v111 = [v109 isEqualToArray:v110];

      if (!v111)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self outcome];
    v112 = [v5 outcome];
    v8 = v112;
    if (v6 == v112)
    {
    }

    else
    {
      v113 = [v5 outcome];
      if (!v113)
      {
        goto LABEL_109;
      }

      v114 = v113;
      v115 = [(HKProcedureRecord *)self outcome];
      v116 = [v5 outcome];
      v117 = [v115 isEqual:v116];

      if (!v117)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self complications];
    v118 = [v5 complications];
    v8 = v118;
    if (v6 == v118)
    {
    }

    else
    {
      v119 = [v5 complications];
      if (!v119)
      {
        goto LABEL_109;
      }

      v120 = v119;
      v121 = [(HKProcedureRecord *)self complications];
      v122 = [v5 complications];
      v123 = [v121 isEqualToArray:v122];

      if (!v123)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self followUps];
    v124 = [v5 followUps];
    v8 = v124;
    if (v6 == v124)
    {
    }

    else
    {
      v125 = [v5 followUps];
      if (!v125)
      {
        goto LABEL_109;
      }

      v126 = v125;
      v127 = [(HKProcedureRecord *)self followUps];
      v128 = [v5 followUps];
      v129 = [v127 isEqualToArray:v128];

      if (!v129)
      {
        goto LABEL_110;
      }
    }

    v6 = [(HKProcedureRecord *)self bodySites];
    v130 = [v5 bodySites];
    v8 = v130;
    if (v6 == v130)
    {

LABEL_114:
      v14 = 1;
      goto LABEL_111;
    }

    v131 = [v5 bodySites];
    if (v131)
    {
      v132 = v131;
      v133 = [(HKProcedureRecord *)self bodySites];
      v134 = [v5 bodySites];
      v135 = [v133 isEqualToArray:v134];

      if (v135)
      {
        goto LABEL_114;
      }

LABEL_110:
      v14 = 0;
LABEL_111:

      goto LABEL_112;
    }

LABEL_109:

    goto LABEL_110;
  }

  v14 = 0;
LABEL_112:

  return v14;
}

- (id)statusCodingCollection
{
  v2 = [(HKProcedureRecord *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:v2];

  return v3;
}

- (void)_setProcedureCodingCollection:(id)a3
{
  v4 = [a3 copy];
  procedureCodingCollection = self->_procedureCodingCollection;
  self->_procedureCodingCollection = v4;

  v8 = [(HKProcedureRecord *)self procedureCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  procedure = self->_procedure;
  self->_procedure = v6;
}

- (void)_setPerformers:(id)a3
{
  v4 = [a3 copy];
  performers = self->_performers;
  self->_performers = v4;

  MEMORY[0x1EEE66BB8](v4, performers);
}

- (void)_setExecutionStartDate:(id)a3
{
  v4 = [a3 copy];
  executionStartDate = self->_executionStartDate;
  self->_executionStartDate = v4;

  MEMORY[0x1EEE66BB8](v4, executionStartDate);
}

- (void)_setExecutionEndDate:(id)a3
{
  v4 = [a3 copy];
  executionEndDate = self->_executionEndDate;
  self->_executionEndDate = v4;

  MEMORY[0x1EEE66BB8](v4, executionEndDate);
}

- (void)_setStatusCoding:(id)a3
{
  v4 = [a3 copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  v8 = [(HKProcedureRecord *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  status = self->_status;
  self->_status = v6;
}

- (void)_setCategoryCodingCollection:(id)a3
{
  v4 = [a3 copy];
  categoryCodingCollection = self->_categoryCodingCollection;
  self->_categoryCodingCollection = v4;

  if (self->_categoryCodingCollection)
  {
    v9 = [(HKProcedureRecord *)self categoryCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    category = self->_category;
    self->_category = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_category;
    self->_category = 0;
  }
}

- (void)_setReasonCodingCollections:(id)a3
{
  v4 = [a3 copy];
  reasonCodingCollections = self->_reasonCodingCollections;
  self->_reasonCodingCollections = v4;

  if (self->_reasonCodingCollections)
  {
    v9 = [(HKProcedureRecord *)self reasonCodingCollections];
    v6 = [(NSArray *)v9 hk_map:&__block_literal_global_133];
    reason = self->_reason;
    self->_reason = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_reason;
    self->_reason = 0;
  }
}

- (void)_setReasonsNotPerformedCodingCollections:(id)a3
{
  v4 = [a3 copy];
  reasonsNotPerformedCodingCollections = self->_reasonsNotPerformedCodingCollections;
  self->_reasonsNotPerformedCodingCollections = v4;

  if (self->_reasonsNotPerformedCodingCollections)
  {
    v9 = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];
    v6 = [(NSArray *)v9 hk_map:&__block_literal_global_161_1];
    reasonsNotPerformed = self->_reasonsNotPerformed;
    self->_reasonsNotPerformed = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_reasonsNotPerformed;
    self->_reasonsNotPerformed = 0;
  }
}

- (void)_setOutcomeCodingCollection:(id)a3
{
  v4 = [a3 copy];
  outcomeCodingCollection = self->_outcomeCodingCollection;
  self->_outcomeCodingCollection = v4;

  if (self->_outcomeCodingCollection)
  {
    v9 = [(HKProcedureRecord *)self outcomeCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    outcome = self->_outcome;
    self->_outcome = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_outcome;
    self->_outcome = 0;
  }
}

- (void)_setComplicationsCodingCollections:(id)a3
{
  v4 = [a3 copy];
  complicationsCodingCollections = self->_complicationsCodingCollections;
  self->_complicationsCodingCollections = v4;

  if (self->_complicationsCodingCollections)
  {
    v9 = [(HKProcedureRecord *)self complicationsCodingCollections];
    v6 = [(NSArray *)v9 hk_map:&__block_literal_global_163_0];
    complications = self->_complications;
    self->_complications = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_complications;
    self->_complications = 0;
  }
}

- (void)_setFollowUpsCodingCollections:(id)a3
{
  v4 = [a3 copy];
  followUpsCodingCollections = self->_followUpsCodingCollections;
  self->_followUpsCodingCollections = v4;

  if (self->_followUpsCodingCollections)
  {
    v9 = [(HKProcedureRecord *)self followUpsCodingCollections];
    v6 = [(NSArray *)v9 hk_map:&__block_literal_global_165_0];
    followUps = self->_followUps;
    self->_followUps = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_followUps;
    self->_followUps = 0;
  }
}

- (void)_setBodySitesCodingCollections:(id)a3
{
  v4 = [a3 copy];
  bodySitesCodingCollections = self->_bodySitesCodingCollections;
  self->_bodySitesCodingCollections = v4;

  if (self->_bodySitesCodingCollections)
  {
    v9 = [(HKProcedureRecord *)self bodySitesCodingCollections];
    v6 = [(NSArray *)v9 hk_map:&__block_literal_global_167];
    bodySites = self->_bodySites;
    self->_bodySites = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_bodySites;
    self->_bodySites = 0;
  }
}

- (HKConcept)procedure
{
  procedure = self->_procedure;
  if (procedure)
  {
    v3 = procedure;
  }

  else
  {
    v4 = [(HKProcedureRecord *)self procedureCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
  }

  return v3;
}

- (void)_setProcedure:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKProcedureRecord _setProcedure:v5];
    }
  }

  v6 = [v4 copy];
  procedure = self->_procedure;
  self->_procedure = v6;
}

- (HKConcept)status
{
  status = self->_status;
  if (status)
  {
    v3 = status;
  }

  else
  {
    v4 = [(HKProcedureRecord *)self statusCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
  }

  return v3;
}

- (void)_setStatus:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKProcedureRecord _setStatus:v5];
    }
  }

  v6 = [v4 copy];
  status = self->_status;
  self->_status = v6;
}

- (HKConcept)category
{
  if (self->_categoryCodingCollection)
  {
    category = self->_category;
    if (category)
    {
      v3 = category;
    }

    else
    {
      v4 = [(HKProcedureRecord *)self categoryCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setCategory:(id)a3
{
  v4 = [a3 copy];
  category = self->_category;
  self->_category = v4;

  MEMORY[0x1EEE66BB8](v4, category);
}

- (NSArray)reason
{
  if (self->_reasonCodingCollections)
  {
    reason = self->_reason;
    if (reason)
    {
      v3 = reason;
    }

    else
    {
      v4 = [(HKProcedureRecord *)self reasonCodingCollections];
      v3 = [v4 hk_map:&__block_literal_global_169_1];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReason:(id)a3
{
  v4 = [a3 copy];
  reason = self->_reason;
  self->_reason = v4;

  MEMORY[0x1EEE66BB8](v4, reason);
}

- (NSArray)reasonsNotPerformed
{
  if (self->_reasonsNotPerformedCodingCollections)
  {
    reasonsNotPerformed = self->_reasonsNotPerformed;
    if (reasonsNotPerformed)
    {
      v3 = reasonsNotPerformed;
    }

    else
    {
      v4 = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];
      v3 = [v4 hk_map:&__block_literal_global_171];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReasonsNotPerformed:(id)a3
{
  v4 = [a3 copy];
  reasonsNotPerformed = self->_reasonsNotPerformed;
  self->_reasonsNotPerformed = v4;

  MEMORY[0x1EEE66BB8](v4, reasonsNotPerformed);
}

- (HKConcept)outcome
{
  if (self->_outcomeCodingCollection)
  {
    outcome = self->_outcome;
    if (outcome)
    {
      v3 = outcome;
    }

    else
    {
      v4 = [(HKProcedureRecord *)self outcomeCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setOutcome:(id)a3
{
  v4 = [a3 copy];
  outcome = self->_outcome;
  self->_outcome = v4;

  MEMORY[0x1EEE66BB8](v4, outcome);
}

- (NSArray)complications
{
  if (self->_complicationsCodingCollections)
  {
    complications = self->_complications;
    if (complications)
    {
      v3 = complications;
    }

    else
    {
      v4 = [(HKProcedureRecord *)self complicationsCodingCollections];
      v3 = [v4 hk_map:&__block_literal_global_173_0];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setComplications:(id)a3
{
  v4 = [a3 copy];
  complications = self->_complications;
  self->_complications = v4;

  MEMORY[0x1EEE66BB8](v4, complications);
}

- (NSArray)followUps
{
  if (self->_followUpsCodingCollections)
  {
    followUps = self->_followUps;
    if (followUps)
    {
      v3 = followUps;
    }

    else
    {
      v4 = [(HKProcedureRecord *)self followUpsCodingCollections];
      v3 = [v4 hk_map:&__block_literal_global_175];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setFollowUps:(id)a3
{
  v4 = [a3 copy];
  followUps = self->_followUps;
  self->_followUps = v4;

  MEMORY[0x1EEE66BB8](v4, followUps);
}

- (NSArray)bodySites
{
  if (self->_bodySitesCodingCollections)
  {
    bodySites = self->_bodySites;
    if (bodySites)
    {
      v3 = bodySites;
    }

    else
    {
      v4 = [(HKProcedureRecord *)self bodySitesCodingCollections];
      v3 = [v4 hk_map:&__block_literal_global_177_0];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setBodySites:(id)a3
{
  v4 = [a3 copy];
  bodySites = self->_bodySites;
  self->_bodySites = v4;

  MEMORY[0x1EEE66BB8](v4, bodySites);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v13.receiver = self;
  v13.super_class = HKProcedureRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_procedureCodingCollection)
    {
      if (self->_statusCoding)
      {
        v8 = 0;
        goto LABEL_10;
      }

      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: statusCoding must not be nil";
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: procedureCodingCollection must not be nil";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_10:

  return v8;
}

@end