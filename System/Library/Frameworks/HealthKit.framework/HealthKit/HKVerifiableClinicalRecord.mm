@interface HKVerifiableClinicalRecord
+ (HKVerifiableClinicalRecord)verifiableClinicalRecordWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 recordTypes:(id)a8 issuedDate:(id)a9 relevantDate:(id)a10 expirationDate:(id)a11 issuerIdentifier:(id)a12 subject:(id)a13 itemNames:(id)a14 dataRepresentation:(id)a15 originIdentifier:(id)a16 sourceType:(int64_t)a17;
+ (id)sourceTypeForInternalType:(int64_t)a3;
+ (int64_t)_privateSourceTypeForExternalType:(id)a3;
- (BOOL)isEquivalent:(id)a3;
- (HKVerifiableClinicalRecord)init;
- (HKVerifiableClinicalRecord)initWithCoder:(id)a3;
- (NSString)recordIssuerDisplayName;
- (NSString)recordItemsDisplayName;
- (NSString)recordTypeDisplayName;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)description;
- (void)_setDataRepresentation:(id)a3;
- (void)_setExpirationDate:(id)a3;
- (void)_setIssuedDate:(id)a3;
- (void)_setIssuerIdentifier:(id)a3;
- (void)_setItemNames:(id)a3;
- (void)_setOriginIdentifier:(id)a3;
- (void)_setRecordTypes:(id)a3;
- (void)_setRelevantDate:(id)a3;
- (void)_setSourceType:(int64_t)a3;
- (void)_setSubject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKVerifiableClinicalRecord

+ (HKVerifiableClinicalRecord)verifiableClinicalRecordWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 recordTypes:(id)a8 issuedDate:(id)a9 relevantDate:(id)a10 expirationDate:(id)a11 issuerIdentifier:(id)a12 subject:(id)a13 itemNames:(id)a14 dataRepresentation:(id)a15 originIdentifier:(id)a16 sourceType:(int64_t)a17
{
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v26 = a16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __230__HKVerifiableClinicalRecord_verifiableClinicalRecordWithType_startDate_endDate_device_metadata_recordTypes_issuedDate_relevantDate_expirationDate_issuerIdentifier_subject_itemNames_dataRepresentation_originIdentifier_sourceType___block_invoke;
  aBlock[3] = &unk_1E7383060;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  v55 = v21;
  v56 = v22;
  v57 = v23;
  v58 = v24;
  v59 = v25;
  v60 = v26;
  v61 = a1;
  v27 = a1;
  v62 = a17;
  v47 = v26;
  v49 = v25;
  v48 = v24;
  v46 = v23;
  v45 = v22;
  v44 = v21;
  v43 = v20;
  v28 = v19;
  v29 = v18;
  v30 = a7;
  v31 = a6;
  v32 = a5;
  v33 = a4;
  v34 = a3;
  v35 = _Block_copy(aBlock);
  v50.receiver = v27;
  v50.super_class = &OBJC_METACLASS___HKVerifiableClinicalRecord;
  v36 = objc_msgSendSuper2(&v50, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, v34, v33, v32, v31, v30, v35);

  return v36;
}

void __230__HKVerifiableClinicalRecord_verifiableClinicalRecordWithType_startDate_endDate_device_metadata_recordTypes_issuedDate_relevantDate_expirationDate_issuerIdentifier_subject_itemNames_dataRepresentation_originIdentifier_sourceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 copy];
  v6 = v4[12];
  v4[12] = v5;

  v7 = [*(a1 + 40) copy];
  v8 = v4[15];
  v4[15] = v7;

  v9 = [*(a1 + 48) copy];
  v10 = v4[16];
  v4[16] = v9;

  v11 = [*(a1 + 56) copy];
  v12 = v4[17];
  v4[17] = v11;

  v13 = [*(a1 + 64) copy];
  v14 = v4[13];
  v4[13] = v13;

  v15 = [*(a1 + 72) copy];
  v16 = v4[14];
  v4[14] = v15;

  v17 = [*(a1 + 80) copy];
  v18 = v4[18];
  v4[18] = v17;

  v19 = [*(a1 + 88) copy];
  v20 = v4[21];
  v4[21] = v19;

  v21 = [*(a1 + 88) copy];
  v22 = v4[20];
  v4[20] = v21;

  v23 = [*(a1 + 96) copy];
  v24 = v4[22];
  v4[22] = v23;

  v25 = *(a1 + 104);
  v28 = [objc_opt_class() sourceTypeForInternalType:*(a1 + 112)];
  v26 = [v28 copy];
  v27 = v4[19];
  v4[19] = v26;
}

- (HKVerifiableClinicalRecord)init
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
  v9.super_class = HKVerifiableClinicalRecord;
  v6 = [(HKSample *)&v9 description];
  v7 = [v3 stringWithFormat:@"<%@:%p super=%@, recordTypes = %@, issuedDate = %@, relevantDate = %@, expirationDate = %@, issuerIdentifier = %@, subject = %@, itemNames = %@, dataRepresentation = %@, sourceType = %@, originIdentifier = %@>", v5, self, v6, self->_recordTypes, self->_issuedDate, self->_relevantDate, self->_expirationDate, self->_issuerIdentifier, self->_subject, self->_itemNames, self->_dataRepresentation, self->_sourceType, self->_originIdentifier, 0];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKVerifiableClinicalRecord;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_recordTypes forKey:{@"RecordTypes", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_issuedDate forKey:@"IssuedDate"];
  [v4 encodeObject:self->_relevantDate forKey:@"RelevantDate"];
  [v4 encodeObject:self->_expirationDate forKey:@"ExpirationDate"];
  [v4 encodeObject:self->_issuerIdentifier forKey:@"IssuerIdentifier"];
  [v4 encodeObject:self->_subject forKey:@"Subject"];
  [v4 encodeObject:self->_itemNames forKey:@"ItemNames"];
  [v4 encodeObject:self->_dataRepresentation forKey:@"DataRepresentation"];
  [v4 encodeObject:self->_sourceType forKey:@"SourceType"];
  [v4 encodeObject:self->_originIdentifier forKey:@"OriginIdentifier"];
}

- (HKVerifiableClinicalRecord)initWithCoder:(id)a3
{
  v41[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = HKVerifiableClinicalRecord;
  v5 = [(HKSample *)&v39 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"RecordTypes"];
    recordTypes = v5->_recordTypes;
    v5->_recordTypes = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IssuedDate"];
    issuedDate = v5->_issuedDate;
    v5->_issuedDate = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RelevantDate"];
    relevantDate = v5->_relevantDate;
    v5->_relevantDate = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExpirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IssuerIdentifier"];
    issuerIdentifier = v5->_issuerIdentifier;
    v5->_issuerIdentifier = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Subject"];
    subject = v5->_subject;
    v5->_subject = v19;

    v21 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"ItemNames"];
    itemNames = v5->_itemNames;
    v5->_itemNames = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataRepresentation"];
    dataRepresentation = v5->_dataRepresentation;
    v5->_dataRepresentation = v26;

    v28 = v5->_dataRepresentation;
    if (!v28)
    {
      v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"JWSRepresentation"];
      v30 = v5->_dataRepresentation;
      v5->_dataRepresentation = v29;

      v28 = v5->_dataRepresentation;
    }

    v31 = [(NSData *)v28 copy];
    JWSRepresentation = v5->_JWSRepresentation;
    v5->_JWSRepresentation = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceType"];
    sourceType = v5->_sourceType;
    v5->_sourceType = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OriginIdentifier"];
    originIdentifier = v5->_originIdentifier;
    v5->_originIdentifier = v35;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEquivalent:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    v103.receiver = self;
    v103.super_class = HKVerifiableClinicalRecord;
    if ([(HKSample *)&v103 isEquivalent:v5])
    {
      v6 = v5;
      recordTypes = self->_recordTypes;
      v8 = [(HKVerifiableClinicalRecord *)v6 recordTypes];
      if (recordTypes != v8)
      {
        v9 = [(HKVerifiableClinicalRecord *)v6 recordTypes];
        if (!v9)
        {
          v12 = 0;
LABEL_108:

          goto LABEL_109;
        }

        v10 = self->_recordTypes;
        v11 = [(HKVerifiableClinicalRecord *)v6 recordTypes];
        if (![(NSArray *)v10 isEqualToArray:v11])
        {
          v12 = 0;
LABEL_55:

          goto LABEL_108;
        }

        v3 = v9;
        v100 = v11;
      }

      v102 = recordTypes;
      issuedDate = self->_issuedDate;
      v14 = [(HKVerifiableClinicalRecord *)v6 issuedDate];
      v99 = issuedDate != v14;
      if (issuedDate != v14)
      {
        v15 = [(HKVerifiableClinicalRecord *)v6 issuedDate];
        if (!v15)
        {

          v12 = 0;
          v24 = v102;
          v11 = v100;
          v9 = v3;
          if (v102 == v8)
          {
LABEL_107:
            if (v24 != v8)
            {
              goto LABEL_108;
            }

            goto LABEL_109;
          }

LABEL_106:

          goto LABEL_107;
        }

        v16 = v15;
        v17 = self->_issuedDate;
        v98 = [(HKVerifiableClinicalRecord *)v6 issuedDate];
        if (![(NSDate *)v17 isEqual:?])
        {
          v12 = 0;
          v11 = v100;
          v23 = v14;
          v9 = v3;
          goto LABEL_54;
        }

        v95 = v16;
      }

      relevantDate = self->_relevantDate;
      v101 = [(HKVerifiableClinicalRecord *)v6 relevantDate];
      v97 = relevantDate;
      v19 = relevantDate != v101;
      if (relevantDate != v101)
      {
        v20 = [(HKVerifiableClinicalRecord *)v6 relevantDate];
        if (!v20)
        {

          v12 = 0;
          v26 = issuedDate == v14;
          v23 = v14;
          if (!v26)
          {
            LOBYTE(v30) = 1;
            v11 = v100;
            v31 = v95;
            v9 = v3;
            goto LABEL_103;
          }

          v30 = 0;
          v11 = v100;
          v31 = v95;
          v9 = v3;
LABEL_111:
          if (!v30)
          {
            goto LABEL_105;
          }

LABEL_104:

          goto LABEL_105;
        }

        v92 = v20;
        v21 = self->_relevantDate;
        v94 = [(HKVerifiableClinicalRecord *)v6 relevantDate];
        if (![(NSDate *)v21 isEqual:?])
        {
          v12 = 0;
          v22 = issuedDate;
          v23 = v14;
          v9 = v3;
          goto LABEL_53;
        }
      }

      expirationDate = self->_expirationDate;
      v96 = [(HKVerifiableClinicalRecord *)v6 expirationDate];
      v93 = expirationDate;
      v26 = expirationDate == v96;
      v27 = expirationDate != v96;
      if (v26)
      {
        v85 = v27;
      }

      else
      {
        v28 = [(HKVerifiableClinicalRecord *)v6 expirationDate];
        if (!v28)
        {

          v12 = 0;
          v22 = issuedDate;
          if (v97 != v101)
          {
            LOBYTE(v37) = 1;
            v30 = issuedDate != v14;
            v23 = v14;
            v9 = v3;
            goto LABEL_100;
          }

          v37 = 0;
          v30 = issuedDate != v14;
          v23 = v14;
          v9 = v3;
LABEL_113:
          if (!v37)
          {
            goto LABEL_102;
          }

LABEL_101:

          goto LABEL_102;
        }

        v86 = v28;
        v29 = self->_expirationDate;
        v88 = [(HKVerifiableClinicalRecord *)v6 expirationDate];
        if (![(NSDate *)v29 isEqual:?])
        {
          v12 = 0;
          v35 = v97;
          v22 = issuedDate;
          v23 = v14;
          v9 = v3;
          goto LABEL_52;
        }

        v85 = v27;
      }

      issuerIdentifier = self->_issuerIdentifier;
      v90 = [(HKVerifiableClinicalRecord *)v6 issuerIdentifier];
      v91 = issuedDate;
      v87 = issuerIdentifier;
      v84 = issuerIdentifier != v90;
      v89 = v19;
      if (issuerIdentifier == v90)
      {
        v23 = v14;
      }

      else
      {
        v33 = [(HKVerifiableClinicalRecord *)v6 issuerIdentifier];
        if (!v33)
        {

          v12 = 0;
          v35 = v97;
          v23 = v14;
          if (v93 != v96)
          {
            LOBYTE(v42) = 1;
            v9 = v3;
            v22 = v91;
            goto LABEL_97;
          }

          v42 = 0;
          v9 = v3;
          v22 = v91;
LABEL_115:
          if (!v42)
          {
            goto LABEL_99;
          }

LABEL_98:

          goto LABEL_99;
        }

        v81 = v33;
        v34 = self->_issuerIdentifier;
        v82 = [(HKVerifiableClinicalRecord *)v6 issuerIdentifier];
        v23 = v14;
        if (![(NSString *)v34 isEqualToString:?])
        {
          v12 = 0;
          v35 = v97;
          v9 = v3;
          v36 = v90;
          v22 = v91;
          goto LABEL_51;
        }
      }

      subject = self->_subject;
      v83 = [(HKVerifiableClinicalRecord *)v6 subject];
      v79 = subject != v83;
      if (subject == v83)
      {
        v9 = v3;
      }

      else
      {
        v39 = [(HKVerifiableClinicalRecord *)v6 subject];
        v9 = v3;
        if (!v39)
        {

          v12 = 0;
          v36 = v90;
          v35 = v97;
          if (issuerIdentifier != v90)
          {
            LOBYTE(v47) = 1;
            v22 = v91;
            goto LABEL_94;
          }

          v47 = 0;
          v22 = v91;
LABEL_117:
          if (!v47)
          {
            goto LABEL_96;
          }

LABEL_95:

          goto LABEL_96;
        }

        v77 = v39;
        v40 = self->_subject;
        v78 = [(HKVerifiableClinicalRecord *)v6 subject];
        if (![(HKVerifiableClinicalRecordSubject *)v40 isEqual:?])
        {
          v12 = 0;
          v35 = v97;
          v22 = v91;
          v41 = v83;
          goto LABEL_50;
        }
      }

      itemNames = self->_itemNames;
      v80 = [(HKVerifiableClinicalRecord *)v6 itemNames];
      v76 = itemNames;
      v44 = itemNames != v80;
      if (itemNames != v80)
      {
        v45 = [(HKVerifiableClinicalRecord *)v6 itemNames];
        if (!v45)
        {

          v12 = 0;
          v41 = v83;
          v26 = subject == v83;
          v35 = v97;
          v22 = v91;
          if (!v26)
          {
            LOBYTE(v51) = 1;
            goto LABEL_91;
          }

          v51 = 0;
LABEL_119:
          if (!v51)
          {
            goto LABEL_93;
          }

LABEL_92:

          goto LABEL_93;
        }

        v72 = v45;
        v46 = self->_itemNames;
        v73 = [(HKVerifiableClinicalRecord *)v6 itemNames];
        if (![(NSArray *)v46 isEqualToArray:?])
        {
          v75 = subject;
          v12 = 0;
          v35 = v97;
          v22 = v91;
          v41 = v83;
          goto LABEL_49;
        }
      }

      dataRepresentation = self->_dataRepresentation;
      v74 = [(HKVerifiableClinicalRecord *)v6 dataRepresentation];
      v75 = subject;
      v71 = dataRepresentation;
      if (dataRepresentation != v74)
      {
        v49 = [(HKVerifiableClinicalRecord *)v6 dataRepresentation];
        if (!v49)
        {
          v56 = v44;

          v12 = 0;
          v35 = v97;
          v22 = v91;
          v41 = v83;
          if (v76 != v80)
          {
            goto LABEL_85;
          }

          goto LABEL_88;
        }

        v69 = v49;
        v50 = self->_dataRepresentation;
        v68 = [(HKVerifiableClinicalRecord *)v6 dataRepresentation];
        if (![(NSData *)v50 isEqual:?])
        {
          v12 = 0;
          v35 = v97;
          v22 = v91;
          v41 = v83;
LABEL_83:

          if (v76 != v80)
          {
            LOBYTE(v56) = 1;
LABEL_85:

            if (!v56)
            {
              goto LABEL_90;
            }

LABEL_89:

            goto LABEL_90;
          }

          v56 = 0;
LABEL_88:
          if (!v56)
          {
            goto LABEL_90;
          }

          goto LABEL_89;
        }
      }

      sourceType = self->_sourceType;
      v70 = [(HKVerifiableClinicalRecord *)v6 sourceType];
      v67 = sourceType;
      if (sourceType != v70)
      {
        v53 = [(HKVerifiableClinicalRecord *)v6 sourceType];
        if (!v53)
        {
          v12 = 0;
          goto LABEL_82;
        }

        v66 = v53;
        v54 = self->_sourceType;
        v55 = [(HKVerifiableClinicalRecord *)v6 sourceType];
        if (![(NSString *)v54 isEqualToString:v55])
        {

          v12 = 0;
          goto LABEL_122;
        }

        v64 = v55;
      }

      originIdentifier = self->_originIdentifier;
      v58 = [(HKVerifiableClinicalRecord *)v6 originIdentifier];
      v12 = originIdentifier == v58;
      if (!v12)
      {
        v59 = [(HKVerifiableClinicalRecord *)v6 originIdentifier];
        if (v59)
        {
          v60 = self->_originIdentifier;
          v61 = v59;
          v62 = [(HKVerifiableClinicalRecord *)v6 originIdentifier];
          v12 = [(NSUUID *)v60 isEqual:v62];

          if (v67 != v70)
          {
          }

LABEL_122:
          if (v71 != v74)
          {
          }

          if (v76 != v80)
          {
          }

          if (v75 != v83)
          {
          }

          if (v87 != v90)
          {
          }

          if (v93 != v96)
          {
          }

          if (v97 != v101)
          {
          }

          if (v91 != v23)
          {
          }

          v11 = v100;
          if (v102 == v8)
          {
            goto LABEL_109;
          }

          goto LABEL_55;
        }
      }

      if (v67 == v70)
      {

        v35 = v97;
        v22 = v91;
        v41 = v83;
        if (v71 != v74)
        {
          goto LABEL_83;
        }

        goto LABEL_139;
      }

LABEL_82:
      v35 = v97;
      v22 = v91;
      v41 = v83;

      if (v71 != v74)
      {
        goto LABEL_83;
      }

LABEL_139:

      if (v76 != v80)
      {
LABEL_49:

        if (v75 != v41)
        {
LABEL_50:

          v36 = v90;
          if (v87 != v90)
          {
LABEL_51:

            if (v93 != v96)
            {
LABEL_52:

              v30 = v99;
              if (v35 != v101)
              {
LABEL_53:

                v26 = v22 == v23;
                v11 = v100;
                v16 = v95;
                if (!v26)
                {
LABEL_54:

                  if (v102 != v8)
                  {
                    goto LABEL_55;
                  }

LABEL_109:

                  goto LABEL_110;
                }

LABEL_105:

                v24 = v102;
                if (v102 == v8)
                {
                  goto LABEL_107;
                }

                goto LABEL_106;
              }

LABEL_102:

              v26 = v22 == v23;
              v11 = v100;
              v31 = v95;
              if (!v26)
              {
LABEL_103:

                if (!v30)
                {
                  goto LABEL_105;
                }

                goto LABEL_104;
              }

              goto LABEL_111;
            }

LABEL_99:

            v26 = v35 == v101;
            v30 = v99;
            v37 = v89;
            if (!v26)
            {
LABEL_100:

              if (!v37)
              {
                goto LABEL_102;
              }

              goto LABEL_101;
            }

            goto LABEL_113;
          }

LABEL_96:

          v42 = v85;
          if (v93 != v96)
          {
LABEL_97:

            if (!v42)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          }

          goto LABEL_115;
        }

LABEL_93:

        v36 = v90;
        v47 = v84;
        if (v87 != v90)
        {
LABEL_94:

          if (!v47)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        }

        goto LABEL_117;
      }

LABEL_90:

      v51 = v79;
      if (v75 != v41)
      {
LABEL_91:

        if (!v51)
        {
          goto LABEL_93;
        }

        goto LABEL_92;
      }

      goto LABEL_119;
    }

    v12 = 0;
  }

LABEL_110:

  return v12;
}

- (void)_setIssuedDate:(id)a3
{
  v4 = [a3 copy];
  issuedDate = self->_issuedDate;
  self->_issuedDate = v4;

  MEMORY[0x1EEE66BB8](v4, issuedDate);
}

- (void)_setExpirationDate:(id)a3
{
  v4 = [a3 copy];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v4;

  MEMORY[0x1EEE66BB8](v4, expirationDate);
}

- (void)_setIssuerIdentifier:(id)a3
{
  v4 = [a3 copy];
  issuerIdentifier = self->_issuerIdentifier;
  self->_issuerIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, issuerIdentifier);
}

- (void)_setItemNames:(id)a3
{
  v4 = [a3 copy];
  itemNames = self->_itemNames;
  self->_itemNames = v4;

  MEMORY[0x1EEE66BB8](v4, itemNames);
}

- (void)_setDataRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  dataRepresentation = self->_dataRepresentation;
  self->_dataRepresentation = v5;

  v7 = [v4 copy];
  JWSRepresentation = self->_JWSRepresentation;
  self->_JWSRepresentation = v7;
}

- (void)_setOriginIdentifier:(id)a3
{
  v4 = [a3 copy];
  originIdentifier = self->_originIdentifier;
  self->_originIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, originIdentifier);
}

- (void)_setRecordTypes:(id)a3
{
  v4 = [a3 copy];
  recordTypes = self->_recordTypes;
  self->_recordTypes = v4;

  MEMORY[0x1EEE66BB8](v4, recordTypes);
}

- (void)_setRelevantDate:(id)a3
{
  v4 = [a3 copy];
  relevantDate = self->_relevantDate;
  self->_relevantDate = v4;

  MEMORY[0x1EEE66BB8](v4, relevantDate);
}

- (void)_setSourceType:(int64_t)a3
{
  v6 = [objc_opt_class() sourceTypeForInternalType:a3];
  v4 = [v6 copy];
  sourceType = self->_sourceType;
  self->_sourceType = v4;
}

- (void)_setSubject:(id)a3
{
  v4 = [a3 copy];
  subject = self->_subject;
  self->_subject = v4;

  MEMORY[0x1EEE66BB8](v4, subject);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v13.receiver = self;
  v13.super_class = HKVerifiableClinicalRecord;
  v5 = [(HKSample *)&v13 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if ([(NSArray *)self->_recordTypes count])
    {
      if (self->_issuedDate)
      {
        if (self->_relevantDate)
        {
          if (self->_issuerIdentifier)
          {
            if (self->_subject)
            {
              if ([(NSArray *)self->_itemNames count])
              {
                if (self->_dataRepresentation)
                {
                  if (self->_originIdentifier)
                  {
                    v8 = 0;
                    goto LABEL_22;
                  }

                  v9 = MEMORY[0x1E696ABC0];
                  v10 = objc_opt_class();
                  v11 = @"%@: originIdentifier must not be nil";
                }

                else
                {
                  v9 = MEMORY[0x1E696ABC0];
                  v10 = objc_opt_class();
                  v11 = @"%@: dataRepresentation must not be nil";
                }
              }

              else
              {
                v9 = MEMORY[0x1E696ABC0];
                v10 = objc_opt_class();
                v11 = @"%@: itemNames must not be empty";
              }
            }

            else
            {
              v9 = MEMORY[0x1E696ABC0];
              v10 = objc_opt_class();
              v11 = @"%@: subject must not be nil";
            }
          }

          else
          {
            v9 = MEMORY[0x1E696ABC0];
            v10 = objc_opt_class();
            v11 = @"%@: issuerIdentifier must not be nil";
          }
        }

        else
        {
          v9 = MEMORY[0x1E696ABC0];
          v10 = objc_opt_class();
          v11 = @"%@: relevantDate must not be nil";
        }
      }

      else
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"%@: issuedDate must not be nil";
      }
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: recordTypes must not be empty";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_22:

  return v8;
}

+ (int64_t)_privateSourceTypeForExternalType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SMARTHealthCard"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EUDigitalCOVIDCertificate"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sourceTypeForInternalType:(int64_t)a3
{
  v3 = @"EUDigitalCOVIDCertificate";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"SMARTHealthCard";
  }

  else
  {
    return v3;
  }
}

- (NSString)recordTypeDisplayName
{
  v2 = [(HKVerifiableClinicalRecord *)self recordTypes];
  v3 = [HKSignedClinicalDataUtilities recordTypeDisplayNameWithTypes:v2];

  return v3;
}

- (NSString)recordItemsDisplayName
{
  v2 = [(HKVerifiableClinicalRecord *)self itemNames];
  v3 = [HKSignedClinicalDataUtilities recordItemsDisplayNameWithItems:v2];

  return v3;
}

- (NSString)recordIssuerDisplayName
{
  v3 = [(HKVerifiableClinicalRecord *)self issuerIdentifier];
  v4 = [HKSignedClinicalDataUtilities preferredRecordIssuerDisplayNameWithIssuerIdentifier:v3];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = [(HKObject *)self sourceRevision];
    v7 = [v6 source];
    v8 = [v7 name];

    if ([v8 length])
    {
      v5 = v8;
    }

    else
    {
      v9 = [(HKVerifiableClinicalRecord *)self issuerIdentifier];
      v5 = [HKSignedClinicalDataUtilities recordIssuerDisplayNameWithIssuerIdentifier:v9];
    }
  }

  return v5;
}

@end