@interface HKVaccinationRecord
+ (id)_newVaccinationRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 vaccinationCodings:(id)a15 expirationDate:(id)a16 doseNumber:(id)a17 doseQuantity:(id)a18 lotNumber:(id)a19 performer:(id)a20 bodySiteCodings:(id)a21 reaction:(id)a22 notGiven:(BOOL)a23 administrationDate:(id)a24 statusCoding:(id)a25 patientReported:(BOOL)a26 routeCodings:(id)a27 reasonsCodings:(id)a28 reasonsNotGivenCodings:(id)a29 config:(id)a30;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
+ (id)vaccinationRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 vaccinationCodings:(id)a14 expirationDate:(id)a15 doseNumber:(id)a16 doseQuantity:(id)a17 lotNumber:(id)a18 performer:(id)a19 bodySiteCodings:(id)a20 reaction:(id)a21 notGiven:(BOOL)a22 administrationDate:(id)a23 statusCoding:(id)a24 patientReported:(BOOL)a25 routeCodings:(id)a26 reasonsCodings:(id)a27 reasonsNotGivenCodings:(id)a28;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKConcept)bodySite;
- (HKConcept)route;
- (HKConcept)status;
- (HKConcept)vaccination;
- (HKVaccinationRecord)init;
- (HKVaccinationRecord)initWithCoder:(id)a3;
- (NSArray)reasons;
- (NSArray)reasonsNotGiven;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)bodySiteCodingsCollection;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)reasonsCodingsCollections;
- (id)reasonsNotGivenCodingsCollections;
- (id)routeCodingsCollection;
- (id)statusCodingCollection;
- (id)vaccinationCodingsCollection;
- (void)_setAdministrationDate:(id)a3;
- (void)_setBodySite:(id)a3;
- (void)_setBodySiteCodings:(id)a3;
- (void)_setDoseNumber:(id)a3;
- (void)_setDoseQuantity:(id)a3;
- (void)_setExpirationDate:(id)a3;
- (void)_setLotNumber:(id)a3;
- (void)_setPerformer:(id)a3;
- (void)_setReaction:(id)a3;
- (void)_setReasons:(id)a3;
- (void)_setReasonsCodings:(id)a3;
- (void)_setReasonsNotGiven:(id)a3;
- (void)_setReasonsNotGivenCodings:(id)a3;
- (void)_setRoute:(id)a3;
- (void)_setRouteCodings:(id)a3;
- (void)_setStatus:(id)a3;
- (void)_setStatusCoding:(id)a3;
- (void)_setVaccination:(id)a3;
- (void)_setVaccinationCodings:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKVaccinationRecord

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_VACCINATION" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)indexableConceptKeyPaths
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___HKVaccinationRecord;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"vaccination"];
  [v3 addObject:@"bodySite"];
  [v3 addObject:@"status"];
  [v3 addObject:@"route"];
  [v3 addObject:@"reasons"];
  [v3 addObject:@"reasonsNotGiven"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___HKVaccinationRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:v6 error:a4];
  v8 = v7;
  if (!v7)
  {
    v14 = 0;
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"vaccination"])
  {
    v9 = [(HKVaccinationRecord *)self vaccinationCodings];
    v10 = [HKMedicalCodingCollection collectionWithCodings:v9];
    v11 = [HKIndexableObject indexableObjectWithObject:v10];
    v27[0] = v11;
    v12 = MEMORY[0x1E695DEC8];
    v13 = v27;
LABEL_14:
    v14 = [v12 arrayWithObjects:v13 count:1];

LABEL_15:
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"bodySite"])
  {
    v15 = [(HKVaccinationRecord *)self bodySiteCodings];

    if (v15)
    {
      v9 = [(HKVaccinationRecord *)self bodySiteCodings];
      v10 = [HKMedicalCodingCollection collectionWithCodings:v9];
      v11 = [HKIndexableObject indexableObjectWithObject:v10];
      v26 = v11;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v26;
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"status"])
  {
    v16 = [(HKVaccinationRecord *)self statusCoding];

    if (v16)
    {
      v9 = [(HKVaccinationRecord *)self statusCoding];
      v10 = [HKMedicalCodingCollection collectionWithCoding:v9];
      v11 = [HKIndexableObject indexableObjectWithObject:v10];
      v25 = v11;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v25;
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"route"])
  {
    v17 = [(HKVaccinationRecord *)self routeCodings];

    if (v17)
    {
      v9 = [(HKVaccinationRecord *)self routeCodings];
      v10 = [HKMedicalCodingCollection collectionWithCodings:v9];
      v11 = [HKIndexableObject indexableObjectWithObject:v10];
      v24 = v11;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v24;
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"reasons"])
  {
    v20 = [(HKVaccinationRecord *)self reasonsCodings];

    if (v20)
    {
      v21 = [(HKVaccinationRecord *)self reasonsCodingsCollections];
LABEL_25:
      v9 = v21;
      v14 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:v21 context:v6 error:a4];
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"reasonsNotGiven"])
  {
    v22 = [(HKVaccinationRecord *)self reasonsNotGivenCodings];

    if (v22)
    {
      v21 = [(HKVaccinationRecord *)self reasonsNotGivenCodingsCollections];
      goto LABEL_25;
    }

LABEL_26:
    v14 = MEMORY[0x1E695E0F0];
    goto LABEL_16;
  }

  v23.receiver = self;
  v23.super_class = HKVaccinationRecord;
  v14 = [(HKMedicalRecord *)&v23 codingsForKeyPath:v6 error:a4];
LABEL_16:

  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:v9 error:a5];
  v11 = v10;
  if (!v10)
  {
LABEL_5:
    LOBYTE(a5) = 0;
    goto LABEL_16;
  }

  if ([v10 isEqualToString:@"vaccination"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
    {
      a5 = [v8 firstObject];
      v12 = [a5 object];
      [(HKVaccinationRecord *)self _setVaccination:v12];
LABEL_15:

      LOBYTE(a5) = 1;
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  if (![v11 isEqualToString:@"bodySite"])
  {
    if ([v11 isEqualToString:@"status"])
    {
      v15 = [v8 count];
      v16 = [(HKVaccinationRecord *)self statusCoding];
      LODWORD(a5) = HKIndexableObjectCheckCardinalityForIndexRestore(v15, v16 != 0, v9, a5);

      if (a5)
      {
        a5 = [v8 firstObject];
        v12 = [a5 object];
        [(HKVaccinationRecord *)self _setStatus:v12];
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if ([v11 isEqualToString:@"route"])
    {
      v17 = [v8 count];
      v18 = [(HKVaccinationRecord *)self routeCodings];
      LODWORD(a5) = HKIndexableObjectCheckCardinalityForIndexRestore(v17, v18 != 0, v9, a5);

      if (a5)
      {
        a5 = [v8 firstObject];
        v12 = [a5 object];
        [(HKVaccinationRecord *)self _setRoute:v12];
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if ([v11 isEqualToString:@"reasons"])
    {
      v20 = [(HKVaccinationRecord *)self reasonsCodings];

      if (v20)
      {
        v21 = [(HKVaccinationRecord *)self reasonsCodings];
        v22 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v21 count], v9, a5);

        LOBYTE(a5) = v22 != 0;
        if (v22)
        {
          [(HKVaccinationRecord *)self _setReasons:v22];
        }

LABEL_25:

        goto LABEL_16;
      }
    }

    else
    {
      if (![v11 isEqualToString:@"reasonsNotGiven"])
      {
        v26.receiver = self;
        v26.super_class = HKVaccinationRecord;
        v25 = [(HKMedicalRecord *)&v26 applyConcepts:v8 forKeyPath:v9 error:a5];
        goto LABEL_28;
      }

      v23 = [(HKVaccinationRecord *)self reasonsNotGivenCodings];

      if (v23)
      {
        v24 = [(HKVaccinationRecord *)self reasonsNotGivenCodings];
        v22 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v24 count], v9, a5);

        LOBYTE(a5) = v22 != 0;
        if (v22)
        {
          [(HKVaccinationRecord *)self _setReasonsNotGiven:v22];
        }

        goto LABEL_25;
      }
    }

    v25 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 0, v9, a5);
LABEL_28:
    LOBYTE(a5) = v25;
    goto LABEL_16;
  }

  v13 = [v8 count];
  v14 = [(HKVaccinationRecord *)self bodySiteCodings];
  LODWORD(a5) = HKIndexableObjectCheckCardinalityForIndexRestore(v13, v14 != 0, v9, a5);

  if (a5)
  {
    a5 = [v8 firstObject];
    v12 = [a5 object];
    [(HKVaccinationRecord *)self _setBodySite:v12];
    goto LABEL_15;
  }

LABEL_16:

  return a5;
}

+ (id)vaccinationRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 vaccinationCodings:(id)a14 expirationDate:(id)a15 doseNumber:(id)a16 doseQuantity:(id)a17 lotNumber:(id)a18 performer:(id)a19 bodySiteCodings:(id)a20 reaction:(id)a21 notGiven:(BOOL)a22 administrationDate:(id)a23 statusCoding:(id)a24 patientReported:(BOOL)a25 routeCodings:(id)a26 reasonsCodings:(id)a27 reasonsNotGivenCodings:(id)a28
{
  v49 = a5;
  v42 = a28;
  v28 = a27;
  v39 = a26;
  v29 = a24;
  v30 = a23;
  v38 = a21;
  v37 = a20;
  v36 = a19;
  v60 = a18;
  v59 = a17;
  v56 = a16;
  v54 = a15;
  v58 = a14;
  v57 = a12;
  v55 = a11;
  v53 = a10;
  v41 = a8;
  v52 = a7;
  v31 = a6;
  v44 = a4;
  v32 = a3;
  v48 = [v30 dateForUTC];
  v46 = [HKSemanticDate semanticDateWithKeyPath:@"administrationDate" date:v48];
  LOBYTE(v35) = a25;
  LOBYTE(v34) = a22;
  v50 = [HKVaccinationRecord vaccinationRecordWithType:v32 note:v44 enteredInError:v49 modifiedDate:v31 originIdentifier:v52 locale:v41 extractionVersion:a9 device:v53 metadata:v55 sortDate:v46 country:v57 state:a13 vaccinationCodings:v58 expirationDate:v54 doseNumber:v56 doseQuantity:v59 lotNumber:v60 performer:v36 bodySiteCodings:v37 reaction:v38 notGiven:v34 administrationDate:v30 statusCoding:v29 patientReported:v35 routeCodings:v39 reasonsCodings:v28 reasonsNotGivenCodings:v42];

  return v50;
}

+ (id)_newVaccinationRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 vaccinationCodings:(id)a15 expirationDate:(id)a16 doseNumber:(id)a17 doseQuantity:(id)a18 lotNumber:(id)a19 performer:(id)a20 bodySiteCodings:(id)a21 reaction:(id)a22 notGiven:(BOOL)a23 administrationDate:(id)a24 statusCoding:(id)a25 patientReported:(BOOL)a26 routeCodings:(id)a27 reasonsCodings:(id)a28 reasonsNotGivenCodings:(id)a29 config:(id)a30
{
  v69 = a5;
  v75 = a15;
  v73 = a16;
  v71 = a17;
  v57 = a18;
  v30 = a19;
  v31 = a20;
  v32 = a21;
  v33 = a22;
  v34 = a24;
  v35 = a25;
  v36 = a27;
  v37 = a28;
  v38 = a29;
  v39 = a30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __385__HKVaccinationRecord__newVaccinationRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_vaccinationCodings_expirationDate_doseNumber_doseQuantity_lotNumber_performer_bodySiteCodings_reaction_notGiven_administrationDate_statusCoding_patientReported_routeCodings_reasonsCodings_reasonsNotGivenCodings_config___block_invoke;
  aBlock[3] = &unk_1E7385420;
  v79 = v75;
  v80 = v73;
  v81 = v71;
  v82 = v57;
  v83 = v30;
  v84 = v31;
  v85 = v32;
  v86 = v33;
  v93 = a23;
  v87 = v34;
  v88 = v35;
  v94 = a26;
  v89 = v36;
  v90 = v37;
  v91 = v38;
  v92 = v39;
  v68 = v39;
  v67 = v38;
  v66 = v37;
  v65 = v36;
  v64 = v35;
  v63 = v34;
  v62 = v33;
  v61 = v32;
  v60 = v31;
  v59 = v30;
  v58 = v57;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v40 = a13;
  v41 = a12;
  v42 = a11;
  v43 = a10;
  v44 = a8;
  v45 = a7;
  v46 = a6;
  v47 = a4;
  v48 = a3;
  v49 = _Block_copy(aBlock);
  v77.receiver = a1;
  v77.super_class = &OBJC_METACLASS___HKVaccinationRecord;
  v70 = objc_msgSendSuper2(&v77, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v48, v47, v69, v46, v45, v44, a9, v43, v42, v41, v40, a14, v49);

  return v70;
}

void __385__HKVaccinationRecord__newVaccinationRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_vaccinationCodings_expirationDate_doseNumber_doseQuantity_lotNumber_performer_bodySiteCodings_reaction_notGiven_administrationDate_statusCoding_patientReported_routeCodings_reasonsCodings_reasonsNotGivenCodings_config___block_invoke(uint64_t a1, void *a2)
{
  v30 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v30[22];
  v30[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v30[23];
  v30[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v30[24];
  v30[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v30[25];
  v30[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v30[26];
  v30[26] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v30[27];
  v30[27] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v30[28];
  v30[28] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v30[29];
  v30[29] = v17;

  *(v30 + 240) = *(a1 + 144);
  v19 = [*(a1 + 96) copy];
  v20 = v30[31];
  v30[31] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v30[32];
  v30[32] = v21;

  *(v30 + 264) = *(a1 + 145);
  v23 = [*(a1 + 112) copy];
  v24 = v30[34];
  v30[34] = v23;

  v25 = [*(a1 + 120) copy];
  v26 = v30[35];
  v30[35] = v25;

  v27 = [*(a1 + 128) copy];
  v28 = v30[36];
  v30[36] = v27;

  v29 = *(a1 + 136);
  if (v29)
  {
    (*(v29 + 16))(v29, v30);
  }
}

- (HKVaccinationRecord)init
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
  v10.super_class = HKVaccinationRecord;
  v6 = [(HKSample *)&v10 description];
  reasonsCodings = self->_reasonsCodings;
  v8 = [v3 stringWithFormat:@"<%@:%p super=%@vaccinationCodings = %@expirationDate = %@doseNumber = %@doseQuantity = %@lotNumber = %@performer = %@bodySiteCodings = %@reaction = %@notGiven = %ldadministrationDate = %@statusCoding = %@patientReported = %ldrouteCodings = %@reasonsCodings = %@reasonsNotGivenCodings = %@>", v5, self, v6, self->_vaccinationCodings, self->_expirationDate, self->_doseNumber, self->_doseQuantity, self->_lotNumber, self->_performer, self->_bodySiteCodings, self->_reaction, self->_notGiven, self->_administrationDate, self->_statusCoding, self->_patientReported, self->_routeCodings, reasonsCodings, self->_reasonsNotGivenCodings];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKVaccinationRecord;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_vaccinationCodings forKey:{@"VaccinationCodings", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_expirationDate forKey:@"ExpirationDate"];
  [v4 encodeObject:self->_doseNumber forKey:@"DoseNumber"];
  [v4 encodeObject:self->_doseQuantity forKey:@"DoseQuantity"];
  [v4 encodeObject:self->_lotNumber forKey:@"LotNumber"];
  [v4 encodeObject:self->_performer forKey:@"Performer"];
  [v4 encodeObject:self->_bodySiteCodings forKey:@"BodySiteCodings"];
  [v4 encodeObject:self->_reaction forKey:@"Reaction"];
  [v4 encodeBool:self->_notGiven forKey:@"NotGiven"];
  [v4 encodeObject:self->_administrationDate forKey:@"AdministrationDate"];
  [v4 encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [v4 encodeBool:self->_patientReported forKey:@"PatientReported"];
  [v4 encodeObject:self->_routeCodings forKey:@"RouteCodings"];
  [v4 encodeObject:self->_reasonsCodings forKey:@"ReasonsCodings"];
  [v4 encodeObject:self->_reasonsNotGivenCodings forKey:@"ReasonsNotGivenCodings"];
  [v4 encodeObject:self->_vaccination forKey:@"Vaccination"];
  [v4 encodeObject:self->_bodySite forKey:@"BodySite"];
  [v4 encodeObject:self->_status forKey:@"Status"];
  [v4 encodeObject:self->_route forKey:@"Route"];
  [v4 encodeObject:self->_reasons forKey:@"Reasons"];
  [v4 encodeObject:self->_reasonsNotGiven forKey:@"ReasonsNotGiven"];
}

- (HKVaccinationRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = HKVaccinationRecord;
  v5 = [(HKMedicalRecord *)&v52 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"VaccinationCodings"];
    vaccinationCodings = v5->_vaccinationCodings;
    v5->_vaccinationCodings = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExpirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DoseNumber"];
    doseNumber = v5->_doseNumber;
    v5->_doseNumber = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DoseQuantity"];
    doseQuantity = v5->_doseQuantity;
    v5->_doseQuantity = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LotNumber"];
    lotNumber = v5->_lotNumber;
    v5->_lotNumber = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Performer"];
    performer = v5->_performer;
    v5->_performer = v17;

    v19 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"BodySiteCodings"];
    bodySiteCodings = v5->_bodySiteCodings;
    v5->_bodySiteCodings = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Reaction"];
    reaction = v5->_reaction;
    v5->_reaction = v22;

    v5->_notGiven = [v4 decodeBoolForKey:@"NotGiven"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AdministrationDate"];
    administrationDate = v5->_administrationDate;
    v5->_administrationDate = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v26;

    v5->_patientReported = [v4 decodeBoolForKey:@"PatientReported"];
    v28 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"RouteCodings"];
    routeCodings = v5->_routeCodings;
    v5->_routeCodings = v29;

    v31 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"ReasonsCodings"];
    reasonsCodings = v5->_reasonsCodings;
    v5->_reasonsCodings = v32;

    v34 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"ReasonsNotGivenCodings"];
    reasonsNotGivenCodings = v5->_reasonsNotGivenCodings;
    v5->_reasonsNotGivenCodings = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Vaccination"];
    vaccination = v5->_vaccination;
    v5->_vaccination = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BodySite"];
    bodySite = v5->_bodySite;
    v5->_bodySite = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Route"];
    route = v5->_route;
    v5->_route = v43;

    v45 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"Reasons"];
    reasons = v5->_reasons;
    v5->_reasons = v46;

    v48 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v49 = [v4 decodeObjectOfClasses:v48 forKey:@"ReasonsNotGiven"];
    reasonsNotGiven = v5->_reasonsNotGiven;
    v5->_reasonsNotGiven = v49;
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
    v126.receiver = self;
    v126.super_class = HKVaccinationRecord;
    if (![(HKMedicalRecord *)&v126 isEquivalent:v5])
    {
      goto LABEL_101;
    }

    v6 = [(HKVaccinationRecord *)self vaccinationCodings];
    v7 = [v5 vaccinationCodings];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 vaccinationCodings];
      if (!v9)
      {
        goto LABEL_100;
      }

      v10 = v9;
      v11 = [(HKVaccinationRecord *)self vaccinationCodings];
      v12 = [v5 vaccinationCodings];
      v13 = [v11 isEqualToArray:v12];

      if (!v13)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self expirationDate];
    v15 = [v5 expirationDate];
    v8 = v15;
    if (v6 == v15)
    {
    }

    else
    {
      v16 = [v5 expirationDate];
      if (!v16)
      {
        goto LABEL_100;
      }

      v17 = v16;
      v18 = [(HKVaccinationRecord *)self expirationDate];
      v19 = [v5 expirationDate];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self doseNumber];
    v21 = [v5 doseNumber];
    v8 = v21;
    if (v6 == v21)
    {
    }

    else
    {
      v22 = [v5 doseNumber];
      if (!v22)
      {
        goto LABEL_100;
      }

      v23 = v22;
      v24 = [(HKVaccinationRecord *)self doseNumber];
      v25 = [v5 doseNumber];
      v26 = [v24 isEqualToString:v25];

      if (!v26)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self doseQuantity];
    v27 = [v5 doseQuantity];
    v8 = v27;
    if (v6 == v27)
    {
    }

    else
    {
      v28 = [v5 doseQuantity];
      if (!v28)
      {
        goto LABEL_100;
      }

      v29 = v28;
      v30 = [(HKVaccinationRecord *)self doseQuantity];
      v31 = [v5 doseQuantity];
      v32 = [v30 isEqualToString:v31];

      if (!v32)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self lotNumber];
    v33 = [v5 lotNumber];
    v8 = v33;
    if (v6 == v33)
    {
    }

    else
    {
      v34 = [v5 lotNumber];
      if (!v34)
      {
        goto LABEL_100;
      }

      v35 = v34;
      v36 = [(HKVaccinationRecord *)self lotNumber];
      v37 = [v5 lotNumber];
      v38 = [v36 isEqualToString:v37];

      if (!v38)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self performer];
    v39 = [v5 performer];
    v8 = v39;
    if (v6 == v39)
    {
    }

    else
    {
      v40 = [v5 performer];
      if (!v40)
      {
        goto LABEL_100;
      }

      v41 = v40;
      v42 = [(HKVaccinationRecord *)self performer];
      v43 = [v5 performer];
      v44 = [v42 isEqualToString:v43];

      if (!v44)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self bodySiteCodings];
    v45 = [v5 bodySiteCodings];
    v8 = v45;
    if (v6 == v45)
    {
    }

    else
    {
      v46 = [v5 bodySiteCodings];
      if (!v46)
      {
        goto LABEL_100;
      }

      v47 = v46;
      v48 = [(HKVaccinationRecord *)self bodySiteCodings];
      v49 = [v5 bodySiteCodings];
      v50 = [v48 isEqualToArray:v49];

      if (!v50)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self reaction];
    v51 = [v5 reaction];
    v8 = v51;
    if (v6 == v51)
    {
    }

    else
    {
      v52 = [v5 reaction];
      if (!v52)
      {
        goto LABEL_100;
      }

      v53 = v52;
      v54 = [(HKVaccinationRecord *)self reaction];
      v55 = [v5 reaction];
      v56 = [v54 isEqualToString:v55];

      if (!v56)
      {
        goto LABEL_101;
      }
    }

    v57 = [(HKVaccinationRecord *)self notGiven];
    if (v57 != [v5 notGiven])
    {
      goto LABEL_101;
    }

    v6 = [(HKVaccinationRecord *)self administrationDate];
    v58 = [v5 administrationDate];
    v8 = v58;
    if (v6 == v58)
    {
    }

    else
    {
      v59 = [v5 administrationDate];
      if (!v59)
      {
        goto LABEL_100;
      }

      v60 = v59;
      v61 = [(HKVaccinationRecord *)self administrationDate];
      v62 = [v5 administrationDate];
      v63 = [v61 isEqual:v62];

      if (!v63)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self statusCoding];
    v64 = [v5 statusCoding];
    v8 = v64;
    if (v6 == v64)
    {
    }

    else
    {
      v65 = [v5 statusCoding];
      if (!v65)
      {
        goto LABEL_100;
      }

      v66 = v65;
      v67 = [(HKVaccinationRecord *)self statusCoding];
      v68 = [v5 statusCoding];
      v69 = [v67 isEqual:v68];

      if (!v69)
      {
        goto LABEL_101;
      }
    }

    v70 = [(HKVaccinationRecord *)self patientReported];
    if (v70 != [v5 patientReported])
    {
      goto LABEL_101;
    }

    v6 = [(HKVaccinationRecord *)self routeCodings];
    v71 = [v5 routeCodings];
    v8 = v71;
    if (v6 == v71)
    {
    }

    else
    {
      v72 = [v5 routeCodings];
      if (!v72)
      {
        goto LABEL_100;
      }

      v73 = v72;
      v74 = [(HKVaccinationRecord *)self routeCodings];
      v75 = [v5 routeCodings];
      v76 = [v74 isEqualToArray:v75];

      if (!v76)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self reasonsCodings];
    v77 = [v5 reasonsCodings];
    v8 = v77;
    if (v6 == v77)
    {
    }

    else
    {
      v78 = [v5 reasonsCodings];
      if (!v78)
      {
        goto LABEL_100;
      }

      v79 = v78;
      v80 = [(HKVaccinationRecord *)self reasonsCodings];
      v81 = [v5 reasonsCodings];
      v82 = [v80 isEqualToArray:v81];

      if (!v82)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self reasonsNotGivenCodings];
    v83 = [v5 reasonsNotGivenCodings];
    v8 = v83;
    if (v6 == v83)
    {
    }

    else
    {
      v84 = [v5 reasonsNotGivenCodings];
      if (!v84)
      {
        goto LABEL_100;
      }

      v85 = v84;
      v86 = [(HKVaccinationRecord *)self reasonsNotGivenCodings];
      v87 = [v5 reasonsNotGivenCodings];
      v88 = [v86 isEqualToArray:v87];

      if (!v88)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self vaccination];
    v89 = [v5 vaccination];
    v8 = v89;
    if (v6 == v89)
    {
    }

    else
    {
      v90 = [v5 vaccination];
      if (!v90)
      {
        goto LABEL_100;
      }

      v91 = v90;
      v92 = [(HKVaccinationRecord *)self vaccination];
      v93 = [v5 vaccination];
      v94 = [v92 isEqual:v93];

      if (!v94)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self bodySite];
    v95 = [v5 bodySite];
    v8 = v95;
    if (v6 == v95)
    {
    }

    else
    {
      v96 = [v5 bodySite];
      if (!v96)
      {
        goto LABEL_100;
      }

      v97 = v96;
      v98 = [(HKVaccinationRecord *)self bodySite];
      v99 = [v5 bodySite];
      v100 = [v98 isEqual:v99];

      if (!v100)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self status];
    v101 = [v5 status];
    v8 = v101;
    if (v6 == v101)
    {
    }

    else
    {
      v102 = [v5 status];
      if (!v102)
      {
        goto LABEL_100;
      }

      v103 = v102;
      v104 = [(HKVaccinationRecord *)self status];
      v105 = [v5 status];
      v106 = [v104 isEqual:v105];

      if (!v106)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self route];
    v107 = [v5 route];
    v8 = v107;
    if (v6 == v107)
    {
    }

    else
    {
      v108 = [v5 route];
      if (!v108)
      {
        goto LABEL_100;
      }

      v109 = v108;
      v110 = [(HKVaccinationRecord *)self route];
      v111 = [v5 route];
      v112 = [v110 isEqual:v111];

      if (!v112)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self reasons];
    v113 = [v5 reasons];
    v8 = v113;
    if (v6 == v113)
    {
    }

    else
    {
      v114 = [v5 reasons];
      if (!v114)
      {
        goto LABEL_100;
      }

      v115 = v114;
      v116 = [(HKVaccinationRecord *)self reasons];
      v117 = [v5 reasons];
      v118 = [v116 isEqualToArray:v117];

      if (!v118)
      {
        goto LABEL_101;
      }
    }

    v6 = [(HKVaccinationRecord *)self reasonsNotGiven];
    v119 = [v5 reasonsNotGiven];
    v8 = v119;
    if (v6 == v119)
    {

LABEL_105:
      v14 = 1;
      goto LABEL_102;
    }

    v120 = [v5 reasonsNotGiven];
    if (v120)
    {
      v121 = v120;
      v122 = [(HKVaccinationRecord *)self reasonsNotGiven];
      v123 = [v5 reasonsNotGiven];
      v124 = [v122 isEqualToArray:v123];

      if (v124)
      {
        goto LABEL_105;
      }

LABEL_101:
      v14 = 0;
LABEL_102:

      goto LABEL_103;
    }

LABEL_100:

    goto LABEL_101;
  }

  v14 = 0;
LABEL_103:

  return v14;
}

- (id)vaccinationCodingsCollection
{
  v2 = [(HKVaccinationRecord *)self vaccinationCodings];
  v3 = [HKMedicalCodingCollection collectionWithCodings:v2];

  return v3;
}

- (id)bodySiteCodingsCollection
{
  v3 = [(HKVaccinationRecord *)self bodySiteCodings];

  if (v3)
  {
    v4 = [(HKVaccinationRecord *)self bodySiteCodings];
    v5 = [HKMedicalCodingCollection collectionWithCodings:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)statusCodingCollection
{
  v3 = [(HKVaccinationRecord *)self statusCoding];

  if (v3)
  {
    v4 = [(HKVaccinationRecord *)self statusCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)routeCodingsCollection
{
  v3 = [(HKVaccinationRecord *)self routeCodings];

  if (v3)
  {
    v4 = [(HKVaccinationRecord *)self routeCodings];
    v5 = [HKMedicalCodingCollection collectionWithCodings:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)reasonsCodingsCollections
{
  v3 = [(HKVaccinationRecord *)self reasonsCodings];

  if (v3)
  {
    v4 = [(HKVaccinationRecord *)self reasonsCodings];
    v5 = [v4 hk_map:&__block_literal_global_140];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)reasonsNotGivenCodingsCollections
{
  v3 = [(HKVaccinationRecord *)self reasonsNotGivenCodings];

  if (v3)
  {
    v4 = [(HKVaccinationRecord *)self reasonsNotGivenCodings];
    v5 = [v4 hk_map:&__block_literal_global_154_0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setVaccinationCodings:(id)a3
{
  v4 = [a3 copy];
  vaccinationCodings = self->_vaccinationCodings;
  self->_vaccinationCodings = v4;

  v8 = [(HKVaccinationRecord *)self vaccinationCodingsCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  vaccination = self->_vaccination;
  self->_vaccination = v6;
}

- (void)_setExpirationDate:(id)a3
{
  v4 = [a3 copy];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v4;

  MEMORY[0x1EEE66BB8](v4, expirationDate);
}

- (void)_setDoseNumber:(id)a3
{
  v4 = [a3 copy];
  doseNumber = self->_doseNumber;
  self->_doseNumber = v4;

  MEMORY[0x1EEE66BB8](v4, doseNumber);
}

- (void)_setDoseQuantity:(id)a3
{
  v4 = [a3 copy];
  doseQuantity = self->_doseQuantity;
  self->_doseQuantity = v4;

  MEMORY[0x1EEE66BB8](v4, doseQuantity);
}

- (void)_setLotNumber:(id)a3
{
  v4 = [a3 copy];
  lotNumber = self->_lotNumber;
  self->_lotNumber = v4;

  MEMORY[0x1EEE66BB8](v4, lotNumber);
}

- (void)_setPerformer:(id)a3
{
  v4 = [a3 copy];
  performer = self->_performer;
  self->_performer = v4;

  MEMORY[0x1EEE66BB8](v4, performer);
}

- (void)_setBodySiteCodings:(id)a3
{
  v4 = [a3 copy];
  bodySiteCodings = self->_bodySiteCodings;
  self->_bodySiteCodings = v4;

  if (self->_bodySiteCodings)
  {
    v9 = [(HKVaccinationRecord *)self bodySiteCodingsCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    bodySite = self->_bodySite;
    self->_bodySite = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_bodySite;
    self->_bodySite = 0;
  }
}

- (void)_setReaction:(id)a3
{
  v4 = [a3 copy];
  reaction = self->_reaction;
  self->_reaction = v4;

  MEMORY[0x1EEE66BB8](v4, reaction);
}

- (void)_setAdministrationDate:(id)a3
{
  v4 = [a3 copy];
  administrationDate = self->_administrationDate;
  self->_administrationDate = v4;

  MEMORY[0x1EEE66BB8](v4, administrationDate);
}

- (void)_setStatusCoding:(id)a3
{
  v4 = [a3 copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  if (self->_statusCoding)
  {
    v9 = [(HKVaccinationRecord *)self statusCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    status = self->_status;
    self->_status = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_status;
    self->_status = 0;
  }
}

- (void)_setRouteCodings:(id)a3
{
  v4 = [a3 copy];
  routeCodings = self->_routeCodings;
  self->_routeCodings = v4;

  if (self->_routeCodings)
  {
    v9 = [(HKVaccinationRecord *)self routeCodingsCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    route = self->_route;
    self->_route = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_route;
    self->_route = 0;
  }
}

- (void)_setReasonsCodings:(id)a3
{
  v4 = [a3 copy];
  reasonsCodings = self->_reasonsCodings;
  self->_reasonsCodings = v4;

  if (self->_reasonsCodings)
  {
    v9 = [(HKVaccinationRecord *)self reasonsCodingsCollections];
    v6 = [(NSArray *)v9 hk_map:&__block_literal_global_158_0];
    reasons = self->_reasons;
    self->_reasons = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_reasons;
    self->_reasons = 0;
  }
}

- (void)_setReasonsNotGivenCodings:(id)a3
{
  v4 = [a3 copy];
  reasonsNotGivenCodings = self->_reasonsNotGivenCodings;
  self->_reasonsNotGivenCodings = v4;

  if (self->_reasonsNotGivenCodings)
  {
    v9 = [(HKVaccinationRecord *)self reasonsNotGivenCodingsCollections];
    v6 = [(NSArray *)v9 hk_map:&__block_literal_global_160_1];
    reasonsNotGiven = self->_reasonsNotGiven;
    self->_reasonsNotGiven = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_reasonsNotGiven;
    self->_reasonsNotGiven = 0;
  }
}

- (HKConcept)vaccination
{
  vaccination = self->_vaccination;
  if (vaccination)
  {
    v3 = vaccination;
  }

  else
  {
    v4 = [(HKVaccinationRecord *)self vaccinationCodingsCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
  }

  return v3;
}

- (void)_setVaccination:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKVaccinationRecord _setVaccination:v5];
    }
  }

  v6 = [v4 copy];
  vaccination = self->_vaccination;
  self->_vaccination = v6;
}

- (HKConcept)bodySite
{
  if (self->_bodySiteCodings)
  {
    bodySite = self->_bodySite;
    if (bodySite)
    {
      v3 = bodySite;
    }

    else
    {
      v4 = [(HKVaccinationRecord *)self bodySiteCodingsCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setBodySite:(id)a3
{
  v4 = [a3 copy];
  bodySite = self->_bodySite;
  self->_bodySite = v4;

  MEMORY[0x1EEE66BB8](v4, bodySite);
}

- (HKConcept)status
{
  if (self->_statusCoding)
  {
    status = self->_status;
    if (status)
    {
      v3 = status;
    }

    else
    {
      v4 = [(HKVaccinationRecord *)self statusCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setStatus:(id)a3
{
  v4 = [a3 copy];
  status = self->_status;
  self->_status = v4;

  MEMORY[0x1EEE66BB8](v4, status);
}

- (HKConcept)route
{
  if (self->_routeCodings)
  {
    route = self->_route;
    if (route)
    {
      v3 = route;
    }

    else
    {
      v4 = [(HKVaccinationRecord *)self routeCodingsCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setRoute:(id)a3
{
  v4 = [a3 copy];
  route = self->_route;
  self->_route = v4;

  MEMORY[0x1EEE66BB8](v4, route);
}

- (NSArray)reasons
{
  if (self->_reasonsCodings)
  {
    reasons = self->_reasons;
    if (reasons)
    {
      v3 = reasons;
    }

    else
    {
      v4 = [(HKVaccinationRecord *)self reasonsCodingsCollections];
      v3 = [v4 hk_map:&__block_literal_global_162];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReasons:(id)a3
{
  v4 = [a3 copy];
  reasons = self->_reasons;
  self->_reasons = v4;

  MEMORY[0x1EEE66BB8](v4, reasons);
}

- (NSArray)reasonsNotGiven
{
  if (self->_reasonsNotGivenCodings)
  {
    reasonsNotGiven = self->_reasonsNotGiven;
    if (reasonsNotGiven)
    {
      v3 = reasonsNotGiven;
    }

    else
    {
      v4 = [(HKVaccinationRecord *)self reasonsNotGivenCodingsCollections];
      v3 = [v4 hk_map:&__block_literal_global_164];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReasonsNotGiven:(id)a3
{
  v4 = [a3 copy];
  reasonsNotGiven = self->_reasonsNotGiven;
  self->_reasonsNotGiven = v4;

  MEMORY[0x1EEE66BB8](v4, reasonsNotGiven);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v13.receiver = self;
  v13.super_class = HKVaccinationRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_vaccinationCodings)
    {
      if (self->_administrationDate)
      {
        v8 = 0;
        goto LABEL_10;
      }

      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: administrationDate must not be nil";
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: vaccinationCodings must not be nil";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_10:

  return v8;
}

@end