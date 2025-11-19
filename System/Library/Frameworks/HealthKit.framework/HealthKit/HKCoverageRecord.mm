@interface HKCoverageRecord
+ (id)_newCoverageRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 statusCoding:(id)a15 coverageTypeCodingCollection:(id)a16 subscriber:(id)a17 subscriberId:(id)a18 beneficiary:(id)a19 policyHolder:(id)a20 payor:(id)a21 relationshipCodingCollection:(id)a22 classification:(id)a23 network:(id)a24 periodStartDate:(id)a25 periodEndDate:(id)a26 subscriberIdentifier:(id)a27 beneficiaryIdentifier:(id)a28 config:(id)a29;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)coverageRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 statusCoding:(id)a14 coverageTypeCodingCollection:(id)a15 subscriber:(id)a16 subscriberId:(id)a17 beneficiary:(id)a18 policyHolder:(id)a19 payor:(id)a20 relationshipCodingCollection:(id)a21 classification:(id)a22 network:(id)a23 periodStartDate:(id)a24 periodEndDate:(id)a25 subscriberIdentifier:(id)a26 beneficiaryIdentifier:(id)a27;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKConcept)coverageType;
- (HKConcept)relationship;
- (HKConcept)status;
- (HKCoverageRecord)init;
- (HKCoverageRecord)initWithCoder:(id)a3;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (void)_setBeneficiary:(id)a3;
- (void)_setBeneficiaryIdentifier:(id)a3;
- (void)_setClassification:(id)a3;
- (void)_setCoverageType:(id)a3;
- (void)_setCoverageTypeCodingCollection:(id)a3;
- (void)_setNetwork:(id)a3;
- (void)_setPayor:(id)a3;
- (void)_setPeriodEndDate:(id)a3;
- (void)_setPeriodStartDate:(id)a3;
- (void)_setPolicyHolder:(id)a3;
- (void)_setRelationship:(id)a3;
- (void)_setRelationshipCodingCollection:(id)a3;
- (void)_setStatus:(id)a3;
- (void)_setStatusCoding:(id)a3;
- (void)_setSubscriber:(id)a3;
- (void)_setSubscriberId:(id)a3;
- (void)_setSubscriberIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCoverageRecord

- (id)medicalRecordCodings
{
  v2 = [(HKCoverageRecord *)self coverageTypeCodingCollection];
  v3 = [v2 codings];

  return v3;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_COVERAGE" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)indexableConceptKeyPaths
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKCoverageRecord;
  v2 = objc_msgSendSuper2(&v6, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"status"];
  [v3 addObject:@"coverageType"];
  [v3 addObject:@"relationship"];
  v4 = [HKCoverageClassification indexableKeyPathsWithPrefix:@"classification"];
  [v3 addObjectsFromArray:v4];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___HKCoverageRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:v6 error:a4];
  v8 = v7;
  if (!v7)
  {
    v12 = 0;
    goto LABEL_12;
  }

  if ([v7 isEqualToString:@"status"])
  {
    v9 = [(HKCoverageRecord *)self statusCoding];
    v10 = [HKMedicalCodingCollection collectionWithCoding:v9];
    v11 = [HKIndexableObject indexableObjectWithObject:v10];
    v25[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"coverageType"])
  {
    v13 = [(HKCoverageRecord *)self coverageTypeCodingCollection];
    v14 = [HKIndexableObject indexableObjectWithObject:v13];
    v24 = v14;
    v15 = MEMORY[0x1E695DEC8];
    v16 = &v24;
LABEL_10:
    v12 = [v15 arrayWithObjects:v16 count:1];

LABEL_11:
    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"relationship"])
  {
    v17 = [(HKCoverageRecord *)self relationshipCodingCollection];

    if (v17)
    {
      v13 = [(HKCoverageRecord *)self relationshipCodingCollection];
      v14 = [HKIndexableObject indexableObjectWithObject:v13];
      v23 = v14;
      v15 = MEMORY[0x1E695DEC8];
      v16 = &v23;
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if ([v8 isEqualToString:@"classification"])
  {
    v20 = [(HKCoverageRecord *)self classification];

    if (v20)
    {
      v13 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:v6 error:a4];
      if (v13)
      {
        v21 = [(HKCoverageRecord *)self classification];
        v12 = [v21 codingsForKeyPath:v13 error:a4];
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_11;
    }

LABEL_19:
    v12 = MEMORY[0x1E695E0F0];
    goto LABEL_12;
  }

  v22.receiver = self;
  v22.super_class = HKCoverageRecord;
  v12 = [(HKMedicalRecord *)&v22 codingsForKeyPath:v6 error:a4];
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:v9 error:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  if ([v10 isEqualToString:@"status"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
    {
      v12 = [v8 firstObject];
      v13 = [v12 object];
      [(HKCoverageRecord *)self _setStatus:v13];
LABEL_11:

      v17 = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ([v11 isEqualToString:@"coverageType"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
    {
      v12 = [v8 firstObject];
      v13 = [v12 object];
      [(HKCoverageRecord *)self _setCoverageType:v13];
      goto LABEL_11;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  if ([v11 isEqualToString:@"relationship"])
  {
    v14 = [v8 count];
    v15 = [(HKCoverageRecord *)self relationshipCodingCollection];
    v16 = HKIndexableObjectCheckCardinalityForIndexRestore(v14, v15 != 0, v9, a5);

    if (v16)
    {
      v12 = [v8 firstObject];
      v13 = [v12 object];
      [(HKCoverageRecord *)self _setRelationship:v13];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if ([v11 isEqualToString:@"classification"])
  {
    v19 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:v9 error:a5];
    if (v19)
    {
      v20 = [(HKCoverageRecord *)self classification];

      if (v20)
      {
        v21 = [(HKCoverageRecord *)self classification];
        v17 = [v21 applyConcepts:v8 forKeyPath:v19 error:a5];
      }

      else
      {
        v17 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 0, v9, a5);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = HKCoverageRecord;
    v17 = [(HKMedicalRecord *)&v22 applyConcepts:v8 forKeyPath:v9 error:a5];
  }

LABEL_13:

  return v17;
}

+ (id)coverageRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 statusCoding:(id)a14 coverageTypeCodingCollection:(id)a15 subscriber:(id)a16 subscriberId:(id)a17 beneficiary:(id)a18 policyHolder:(id)a19 payor:(id)a20 relationshipCodingCollection:(id)a21 classification:(id)a22 network:(id)a23 periodStartDate:(id)a24 periodEndDate:(id)a25 subscriberIdentifier:(id)a26 beneficiaryIdentifier:(id)a27
{
  v52 = a5;
  v65 = a3;
  v64 = a4;
  v31 = a6;
  v63 = a7;
  v62 = a8;
  v59 = a10;
  v58 = a11;
  v57 = a12;
  v61 = a14;
  v60 = a15;
  v56 = a16;
  v51 = a17;
  v55 = a18;
  v50 = a19;
  v54 = a20;
  v49 = a21;
  v32 = a22;
  v33 = a23;
  v34 = a24;
  v35 = a25;
  v48 = a26;
  v47 = a27;
  v36 = @"modifiedDate";
  v66 = v31;
  if (v34)
  {
    v37 = @"periodStartDate";

    v38 = [v34 dateForUTC];

    v36 = v37;
    if (!v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v38 = v66;
    if (!v35)
    {
      goto LABEL_7;
    }
  }

  v39 = [v35 dateForUTC];
  [v39 timeIntervalSinceNow];
  v41 = v40;

  if (v41 < 0.0)
  {
    v42 = @"periodEndDate";

    v43 = v35;
    v44 = [v35 dateForUTC];

    v38 = v44;
    v36 = v42;
    goto LABEL_8;
  }

LABEL_7:
  v43 = v35;
LABEL_8:
  v45 = [HKSemanticDate semanticDateWithKeyPath:v36 date:v38];
  v53 = [HKCoverageRecord coverageRecordWithType:v65 note:v64 enteredInError:v52 modifiedDate:v66 originIdentifier:v63 locale:v62 extractionVersion:a9 device:v59 metadata:v58 sortDate:v45 country:v57 state:a13 statusCoding:v61 coverageTypeCodingCollection:v60 subscriber:v56 subscriberId:v51 beneficiary:v55 policyHolder:v50 payor:v54 relationshipCodingCollection:v49 classification:v32 network:v33 periodStartDate:v34 periodEndDate:v43 subscriberIdentifier:v48 beneficiaryIdentifier:v47];

  return v53;
}

+ (id)_newCoverageRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 statusCoding:(id)a15 coverageTypeCodingCollection:(id)a16 subscriber:(id)a17 subscriberId:(id)a18 beneficiary:(id)a19 policyHolder:(id)a20 payor:(id)a21 relationshipCodingCollection:(id)a22 classification:(id)a23 network:(id)a24 periodStartDate:(id)a25 periodEndDate:(id)a26 subscriberIdentifier:(id)a27 beneficiaryIdentifier:(id)a28 config:(id)a29
{
  v68 = a5;
  v76 = a15;
  v74 = a16;
  v72 = a17;
  v70 = a18;
  v56 = a19;
  v29 = a20;
  v30 = a21;
  v31 = a22;
  v32 = a23;
  v33 = a24;
  v34 = a25;
  v35 = a26;
  v36 = a27;
  v37 = a28;
  v38 = a29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __390__HKCoverageRecord__newCoverageRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_statusCoding_coverageTypeCodingCollection_subscriber_subscriberId_beneficiary_policyHolder_payor_relationshipCodingCollection_classification_network_periodStartDate_periodEndDate_subscriberIdentifier_beneficiaryIdentifier_config___block_invoke;
  aBlock[3] = &unk_1E7380FA0;
  v80 = v76;
  v81 = v74;
  v82 = v72;
  v83 = v70;
  v84 = v56;
  v85 = v29;
  v86 = v30;
  v87 = v31;
  v88 = v32;
  v89 = v33;
  v90 = v34;
  v91 = v35;
  v92 = v36;
  v93 = v37;
  v94 = v38;
  v67 = v38;
  v66 = v37;
  v65 = v36;
  v64 = v35;
  v63 = v34;
  v62 = v33;
  v61 = v32;
  v60 = v31;
  v59 = v30;
  v58 = v29;
  v57 = v56;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v39 = a13;
  v40 = a12;
  v41 = a11;
  v42 = a10;
  v43 = a8;
  v44 = a7;
  v45 = a6;
  v46 = a4;
  v47 = a3;
  v48 = _Block_copy(aBlock);
  v78.receiver = a1;
  v78.super_class = &OBJC_METACLASS___HKCoverageRecord;
  v69 = objc_msgSendSuper2(&v78, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v47, v46, v68, v45, v44, v43, a9, v42, v41, v40, v39, a14, v48);

  return v69;
}

void __390__HKCoverageRecord__newCoverageRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_statusCoding_coverageTypeCodingCollection_subscriber_subscriberId_beneficiary_policyHolder_payor_relationshipCodingCollection_classification_network_periodStartDate_periodEndDate_subscriberIdentifier_beneficiaryIdentifier_config___block_invoke(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v32[22];
  v32[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v32[23];
  v32[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v32[24];
  v32[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v32[25];
  v32[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v32[26];
  v32[26] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v32[27];
  v32[27] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v32[28];
  v32[28] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v32[29];
  v32[29] = v17;

  v19 = [*(a1 + 96) copy];
  v20 = v32[30];
  v32[30] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v32[31];
  v32[31] = v21;

  v23 = [*(a1 + 112) copy];
  v24 = v32[32];
  v32[32] = v23;

  v25 = [*(a1 + 120) copy];
  v26 = v32[33];
  v32[33] = v25;

  v27 = [*(a1 + 128) copy];
  v28 = v32[34];
  v32[34] = v27;

  v29 = [*(a1 + 136) copy];
  v30 = v32[35];
  v32[35] = v29;

  v31 = *(a1 + 144);
  if (v31)
  {
    (*(v31 + 16))(v31, v32);
  }
}

- (HKCoverageRecord)init
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
  v10.super_class = HKCoverageRecord;
  v6 = [(HKSample *)&v10 description];
  statusCoding = self->_statusCoding;
  v8 = [v3 stringWithFormat:@"<%@:%p super=%@statusCoding = %@coverageTypeCodingCollection = %@subscriber = %@subscriberId = %@beneficiary = %@policyHolder = %@payor = %@relationshipCodingCollection = %@classification = %@network = %@periodStartDate = %@periodEndDate = %@subscriberIdentifier = %@beneficiaryIdentifier = %@>", v5, self, v6, statusCoding, self->_coverageTypeCodingCollection, self->_subscriber, self->_subscriberId, self->_beneficiary, self->_policyHolder, self->_payor, self->_relationshipCodingCollection, self->_classification, self->_network, self->_periodStartDate, self->_periodEndDate, self->_subscriberIdentifier, self->_beneficiaryIdentifier];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKCoverageRecord;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_statusCoding forKey:{@"StatusCoding", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_coverageTypeCodingCollection forKey:@"CoverageTypeCodingCollection"];
  [v4 encodeObject:self->_subscriber forKey:@"Subscriber"];
  [v4 encodeObject:self->_subscriberId forKey:@"SubscriberId"];
  [v4 encodeObject:self->_beneficiary forKey:@"Beneficiary"];
  [v4 encodeObject:self->_policyHolder forKey:@"PolicyHolder"];
  [v4 encodeObject:self->_payor forKey:@"Payor"];
  [v4 encodeObject:self->_relationshipCodingCollection forKey:@"RelationshipCodingCollection"];
  [v4 encodeObject:self->_classification forKey:@"Classification"];
  [v4 encodeObject:self->_network forKey:@"Network"];
  [v4 encodeObject:self->_periodStartDate forKey:@"PeriodStartDate"];
  [v4 encodeObject:self->_periodEndDate forKey:@"PeriodEndDate"];
  [v4 encodeObject:self->_subscriberIdentifier forKey:@"SubscriberIdentifier"];
  [v4 encodeObject:self->_beneficiaryIdentifier forKey:@"BeneficiaryIdentifier"];
  [v4 encodeObject:self->_status forKey:@"Status"];
  [v4 encodeObject:self->_coverageType forKey:@"CoverageType"];
  [v4 encodeObject:self->_relationship forKey:@"Relationship"];
}

- (HKCoverageRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = HKCoverageRecord;
  v5 = [(HKMedicalRecord *)&v43 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CoverageTypeCodingCollection"];
    coverageTypeCodingCollection = v5->_coverageTypeCodingCollection;
    v5->_coverageTypeCodingCollection = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Subscriber"];
    subscriber = v5->_subscriber;
    v5->_subscriber = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SubscriberId"];
    subscriberId = v5->_subscriberId;
    v5->_subscriberId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Beneficiary"];
    beneficiary = v5->_beneficiary;
    v5->_beneficiary = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PolicyHolder"];
    policyHolder = v5->_policyHolder;
    v5->_policyHolder = v16;

    v18 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"Payor"];
    payor = v5->_payor;
    v5->_payor = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RelationshipCodingCollection"];
    relationshipCodingCollection = v5->_relationshipCodingCollection;
    v5->_relationshipCodingCollection = v21;

    v23 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"Classification"];
    classification = v5->_classification;
    v5->_classification = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Network"];
    network = v5->_network;
    v5->_network = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PeriodStartDate"];
    periodStartDate = v5->_periodStartDate;
    v5->_periodStartDate = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PeriodEndDate"];
    periodEndDate = v5->_periodEndDate;
    v5->_periodEndDate = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SubscriberIdentifier"];
    subscriberIdentifier = v5->_subscriberIdentifier;
    v5->_subscriberIdentifier = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BeneficiaryIdentifier"];
    beneficiaryIdentifier = v5->_beneficiaryIdentifier;
    v5->_beneficiaryIdentifier = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CoverageType"];
    coverageType = v5->_coverageType;
    v5->_coverageType = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Relationship"];
    relationship = v5->_relationship;
    v5->_relationship = v40;
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
    v112.receiver = self;
    v112.super_class = HKCoverageRecord;
    if (![(HKMedicalRecord *)&v112 isEquivalent:v5])
    {
      goto LABEL_89;
    }

    v6 = [(HKCoverageRecord *)self statusCoding];
    v7 = [v5 statusCoding];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 statusCoding];
      if (!v9)
      {
        goto LABEL_88;
      }

      v10 = v9;
      v11 = [(HKCoverageRecord *)self statusCoding];
      v12 = [v5 statusCoding];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self coverageTypeCodingCollection];
    v15 = [v5 coverageTypeCodingCollection];
    v8 = v15;
    if (v6 == v15)
    {
    }

    else
    {
      v16 = [v5 coverageTypeCodingCollection];
      if (!v16)
      {
        goto LABEL_88;
      }

      v17 = v16;
      v18 = [(HKCoverageRecord *)self coverageTypeCodingCollection];
      v19 = [v5 coverageTypeCodingCollection];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self subscriber];
    v21 = [v5 subscriber];
    v8 = v21;
    if (v6 == v21)
    {
    }

    else
    {
      v22 = [v5 subscriber];
      if (!v22)
      {
        goto LABEL_88;
      }

      v23 = v22;
      v24 = [(HKCoverageRecord *)self subscriber];
      v25 = [v5 subscriber];
      v26 = [v24 isEqualToString:v25];

      if (!v26)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self subscriberId];
    v27 = [v5 subscriberId];
    v8 = v27;
    if (v6 == v27)
    {
    }

    else
    {
      v28 = [v5 subscriberId];
      if (!v28)
      {
        goto LABEL_88;
      }

      v29 = v28;
      v30 = [(HKCoverageRecord *)self subscriberId];
      v31 = [v5 subscriberId];
      v32 = [v30 isEqualToString:v31];

      if (!v32)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self beneficiary];
    v33 = [v5 beneficiary];
    v8 = v33;
    if (v6 == v33)
    {
    }

    else
    {
      v34 = [v5 beneficiary];
      if (!v34)
      {
        goto LABEL_88;
      }

      v35 = v34;
      v36 = [(HKCoverageRecord *)self beneficiary];
      v37 = [v5 beneficiary];
      v38 = [v36 isEqualToString:v37];

      if (!v38)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self policyHolder];
    v39 = [v5 policyHolder];
    v8 = v39;
    if (v6 == v39)
    {
    }

    else
    {
      v40 = [v5 policyHolder];
      if (!v40)
      {
        goto LABEL_88;
      }

      v41 = v40;
      v42 = [(HKCoverageRecord *)self policyHolder];
      v43 = [v5 policyHolder];
      v44 = [v42 isEqualToString:v43];

      if (!v44)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self payor];
    v45 = [v5 payor];
    v8 = v45;
    if (v6 == v45)
    {
    }

    else
    {
      v46 = [v5 payor];
      if (!v46)
      {
        goto LABEL_88;
      }

      v47 = v46;
      v48 = [(HKCoverageRecord *)self payor];
      v49 = [v5 payor];
      v50 = [v48 isEqualToArray:v49];

      if (!v50)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self relationshipCodingCollection];
    v51 = [v5 relationshipCodingCollection];
    v8 = v51;
    if (v6 == v51)
    {
    }

    else
    {
      v52 = [v5 relationshipCodingCollection];
      if (!v52)
      {
        goto LABEL_88;
      }

      v53 = v52;
      v54 = [(HKCoverageRecord *)self relationshipCodingCollection];
      v55 = [v5 relationshipCodingCollection];
      v56 = [v54 isEqual:v55];

      if (!v56)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self classification];
    v57 = [v5 classification];
    v8 = v57;
    if (v6 == v57)
    {
    }

    else
    {
      v58 = [v5 classification];
      if (!v58)
      {
        goto LABEL_88;
      }

      v59 = v58;
      v60 = [(HKCoverageRecord *)self classification];
      v61 = [v5 classification];
      v62 = [v60 isEqualToArray:v61];

      if (!v62)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self network];
    v63 = [v5 network];
    v8 = v63;
    if (v6 == v63)
    {
    }

    else
    {
      v64 = [v5 network];
      if (!v64)
      {
        goto LABEL_88;
      }

      v65 = v64;
      v66 = [(HKCoverageRecord *)self network];
      v67 = [v5 network];
      v68 = [v66 isEqualToString:v67];

      if (!v68)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self periodStartDate];
    v69 = [v5 periodStartDate];
    v8 = v69;
    if (v6 == v69)
    {
    }

    else
    {
      v70 = [v5 periodStartDate];
      if (!v70)
      {
        goto LABEL_88;
      }

      v71 = v70;
      v72 = [(HKCoverageRecord *)self periodStartDate];
      v73 = [v5 periodStartDate];
      v74 = [v72 isEqual:v73];

      if (!v74)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self periodEndDate];
    v75 = [v5 periodEndDate];
    v8 = v75;
    if (v6 == v75)
    {
    }

    else
    {
      v76 = [v5 periodEndDate];
      if (!v76)
      {
        goto LABEL_88;
      }

      v77 = v76;
      v78 = [(HKCoverageRecord *)self periodEndDate];
      v79 = [v5 periodEndDate];
      v80 = [v78 isEqual:v79];

      if (!v80)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self subscriberIdentifier];
    v81 = [v5 subscriberIdentifier];
    v8 = v81;
    if (v6 == v81)
    {
    }

    else
    {
      v82 = [v5 subscriberIdentifier];
      if (!v82)
      {
        goto LABEL_88;
      }

      v83 = v82;
      v84 = [(HKCoverageRecord *)self subscriberIdentifier];
      v85 = [v5 subscriberIdentifier];
      v86 = [v84 isEqual:v85];

      if (!v86)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self beneficiaryIdentifier];
    v87 = [v5 beneficiaryIdentifier];
    v8 = v87;
    if (v6 == v87)
    {
    }

    else
    {
      v88 = [v5 beneficiaryIdentifier];
      if (!v88)
      {
        goto LABEL_88;
      }

      v89 = v88;
      v90 = [(HKCoverageRecord *)self beneficiaryIdentifier];
      v91 = [v5 beneficiaryIdentifier];
      v92 = [v90 isEqual:v91];

      if (!v92)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self status];
    v93 = [v5 status];
    v8 = v93;
    if (v6 == v93)
    {
    }

    else
    {
      v94 = [v5 status];
      if (!v94)
      {
        goto LABEL_88;
      }

      v95 = v94;
      v96 = [(HKCoverageRecord *)self status];
      v97 = [v5 status];
      v98 = [v96 isEqual:v97];

      if (!v98)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self coverageType];
    v99 = [v5 coverageType];
    v8 = v99;
    if (v6 == v99)
    {
    }

    else
    {
      v100 = [v5 coverageType];
      if (!v100)
      {
        goto LABEL_88;
      }

      v101 = v100;
      v102 = [(HKCoverageRecord *)self coverageType];
      v103 = [v5 coverageType];
      v104 = [v102 isEqual:v103];

      if (!v104)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKCoverageRecord *)self relationship];
    v105 = [v5 relationship];
    v8 = v105;
    if (v6 == v105)
    {

LABEL_93:
      v14 = 1;
      goto LABEL_90;
    }

    v106 = [v5 relationship];
    if (v106)
    {
      v107 = v106;
      v108 = [(HKCoverageRecord *)self relationship];
      v109 = [v5 relationship];
      v110 = [v108 isEqual:v109];

      if (v110)
      {
        goto LABEL_93;
      }

LABEL_89:
      v14 = 0;
LABEL_90:

      goto LABEL_91;
    }

LABEL_88:

    goto LABEL_89;
  }

  v14 = 0;
LABEL_91:

  return v14;
}

- (id)statusCodingCollection
{
  v2 = [(HKCoverageRecord *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:v2];

  return v3;
}

- (void)_setStatusCoding:(id)a3
{
  v4 = [a3 copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  v8 = [(HKCoverageRecord *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  status = self->_status;
  self->_status = v6;
}

- (void)_setCoverageTypeCodingCollection:(id)a3
{
  v4 = [a3 copy];
  coverageTypeCodingCollection = self->_coverageTypeCodingCollection;
  self->_coverageTypeCodingCollection = v4;

  v8 = [(HKCoverageRecord *)self coverageTypeCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  coverageType = self->_coverageType;
  self->_coverageType = v6;
}

- (void)_setSubscriber:(id)a3
{
  v4 = [a3 copy];
  subscriber = self->_subscriber;
  self->_subscriber = v4;

  MEMORY[0x1EEE66BB8](v4, subscriber);
}

- (void)_setSubscriberId:(id)a3
{
  v4 = [a3 copy];
  subscriberId = self->_subscriberId;
  self->_subscriberId = v4;

  MEMORY[0x1EEE66BB8](v4, subscriberId);
}

- (void)_setBeneficiary:(id)a3
{
  v4 = [a3 copy];
  beneficiary = self->_beneficiary;
  self->_beneficiary = v4;

  MEMORY[0x1EEE66BB8](v4, beneficiary);
}

- (void)_setPolicyHolder:(id)a3
{
  v4 = [a3 copy];
  policyHolder = self->_policyHolder;
  self->_policyHolder = v4;

  MEMORY[0x1EEE66BB8](v4, policyHolder);
}

- (void)_setPayor:(id)a3
{
  v4 = [a3 copy];
  payor = self->_payor;
  self->_payor = v4;

  MEMORY[0x1EEE66BB8](v4, payor);
}

- (void)_setRelationshipCodingCollection:(id)a3
{
  v4 = [a3 copy];
  relationshipCodingCollection = self->_relationshipCodingCollection;
  self->_relationshipCodingCollection = v4;

  if (self->_relationshipCodingCollection)
  {
    v9 = [(HKCoverageRecord *)self relationshipCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    relationship = self->_relationship;
    self->_relationship = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_relationship;
    self->_relationship = 0;
  }
}

- (void)_setClassification:(id)a3
{
  v4 = [a3 copy];
  classification = self->_classification;
  self->_classification = v4;

  MEMORY[0x1EEE66BB8](v4, classification);
}

- (void)_setNetwork:(id)a3
{
  v4 = [a3 copy];
  network = self->_network;
  self->_network = v4;

  MEMORY[0x1EEE66BB8](v4, network);
}

- (void)_setPeriodStartDate:(id)a3
{
  v4 = [a3 copy];
  periodStartDate = self->_periodStartDate;
  self->_periodStartDate = v4;

  MEMORY[0x1EEE66BB8](v4, periodStartDate);
}

- (void)_setPeriodEndDate:(id)a3
{
  v4 = [a3 copy];
  periodEndDate = self->_periodEndDate;
  self->_periodEndDate = v4;

  MEMORY[0x1EEE66BB8](v4, periodEndDate);
}

- (void)_setSubscriberIdentifier:(id)a3
{
  v4 = [a3 copy];
  subscriberIdentifier = self->_subscriberIdentifier;
  self->_subscriberIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, subscriberIdentifier);
}

- (void)_setBeneficiaryIdentifier:(id)a3
{
  v4 = [a3 copy];
  beneficiaryIdentifier = self->_beneficiaryIdentifier;
  self->_beneficiaryIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, beneficiaryIdentifier);
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
    v4 = [(HKCoverageRecord *)self statusCodingCollection];
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
      [HKCoverageRecord _setStatus:v5];
    }
  }

  v6 = [v4 copy];
  status = self->_status;
  self->_status = v6;
}

- (HKConcept)coverageType
{
  coverageType = self->_coverageType;
  if (coverageType)
  {
    v3 = coverageType;
  }

  else
  {
    v4 = [(HKCoverageRecord *)self coverageTypeCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
  }

  return v3;
}

- (void)_setCoverageType:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKCoverageRecord _setCoverageType:v5];
    }
  }

  v6 = [v4 copy];
  coverageType = self->_coverageType;
  self->_coverageType = v6;
}

- (HKConcept)relationship
{
  if (self->_relationshipCodingCollection)
  {
    relationship = self->_relationship;
    if (relationship)
    {
      v3 = relationship;
    }

    else
    {
      v4 = [(HKCoverageRecord *)self relationshipCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setRelationship:(id)a3
{
  v4 = [a3 copy];
  relationship = self->_relationship;
  self->_relationship = v4;

  MEMORY[0x1EEE66BB8](v4, relationship);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v13.receiver = self;
  v13.super_class = HKCoverageRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_statusCoding)
    {
      if (self->_coverageTypeCodingCollection)
      {
        if (self->_subscriberId)
        {
          v8 = 0;
          goto LABEL_12;
        }

        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"%@: subscriberId must not be nil";
      }

      else
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"%@: coverageTypeCodingCollection must not be nil";
      }
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: statusCoding must not be nil";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_12:

  return v8;
}

@end