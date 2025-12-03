@interface HKVerifiableClinicalRecord
+ (HKVerifiableClinicalRecord)verifiableClinicalRecordWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata recordTypes:(id)types issuedDate:(id)issuedDate relevantDate:(id)self0 expirationDate:(id)self1 issuerIdentifier:(id)self2 subject:(id)self3 itemNames:(id)self4 dataRepresentation:(id)self5 originIdentifier:(id)self6 sourceType:(int64_t)self7;
+ (id)sourceTypeForInternalType:(int64_t)type;
+ (int64_t)_privateSourceTypeForExternalType:(id)type;
- (BOOL)isEquivalent:(id)equivalent;
- (HKVerifiableClinicalRecord)init;
- (HKVerifiableClinicalRecord)initWithCoder:(id)coder;
- (NSString)recordIssuerDisplayName;
- (NSString)recordItemsDisplayName;
- (NSString)recordTypeDisplayName;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)description;
- (void)_setDataRepresentation:(id)representation;
- (void)_setExpirationDate:(id)date;
- (void)_setIssuedDate:(id)date;
- (void)_setIssuerIdentifier:(id)identifier;
- (void)_setItemNames:(id)names;
- (void)_setOriginIdentifier:(id)identifier;
- (void)_setRecordTypes:(id)types;
- (void)_setRelevantDate:(id)date;
- (void)_setSourceType:(int64_t)type;
- (void)_setSubject:(id)subject;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKVerifiableClinicalRecord

+ (HKVerifiableClinicalRecord)verifiableClinicalRecordWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata recordTypes:(id)types issuedDate:(id)issuedDate relevantDate:(id)self0 expirationDate:(id)self1 issuerIdentifier:(id)self2 subject:(id)self3 itemNames:(id)self4 dataRepresentation:(id)self5 originIdentifier:(id)self6 sourceType:(int64_t)self7
{
  typesCopy = types;
  issuedDateCopy = issuedDate;
  relevantDateCopy = relevantDate;
  expirationDateCopy = expirationDate;
  identifierCopy = identifier;
  subjectCopy = subject;
  namesCopy = names;
  representationCopy = representation;
  originIdentifierCopy = originIdentifier;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __230__HKVerifiableClinicalRecord_verifiableClinicalRecordWithType_startDate_endDate_device_metadata_recordTypes_issuedDate_relevantDate_expirationDate_issuerIdentifier_subject_itemNames_dataRepresentation_originIdentifier_sourceType___block_invoke;
  aBlock[3] = &unk_1E7383060;
  v52 = typesCopy;
  v53 = issuedDateCopy;
  v54 = relevantDateCopy;
  v55 = expirationDateCopy;
  v56 = identifierCopy;
  v57 = subjectCopy;
  v58 = namesCopy;
  v59 = representationCopy;
  v60 = originIdentifierCopy;
  selfCopy = self;
  selfCopy2 = self;
  sourceTypeCopy = sourceType;
  v47 = originIdentifierCopy;
  v49 = representationCopy;
  v48 = namesCopy;
  v46 = subjectCopy;
  v45 = identifierCopy;
  v44 = expirationDateCopy;
  v43 = relevantDateCopy;
  v28 = issuedDateCopy;
  v29 = typesCopy;
  metadataCopy = metadata;
  deviceCopy = device;
  endDateCopy = endDate;
  dateCopy = date;
  typeCopy = type;
  v35 = _Block_copy(aBlock);
  v50.receiver = selfCopy2;
  v50.super_class = &OBJC_METACLASS___HKVerifiableClinicalRecord;
  v36 = objc_msgSendSuper2(&v50, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, typeCopy, dateCopy, endDateCopy, deviceCopy, metadataCopy, v35);

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKVerifiableClinicalRecord;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_recordTypes forKey:{@"RecordTypes", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_issuedDate forKey:@"IssuedDate"];
  [coderCopy encodeObject:self->_relevantDate forKey:@"RelevantDate"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"ExpirationDate"];
  [coderCopy encodeObject:self->_issuerIdentifier forKey:@"IssuerIdentifier"];
  [coderCopy encodeObject:self->_subject forKey:@"Subject"];
  [coderCopy encodeObject:self->_itemNames forKey:@"ItemNames"];
  [coderCopy encodeObject:self->_dataRepresentation forKey:@"DataRepresentation"];
  [coderCopy encodeObject:self->_sourceType forKey:@"SourceType"];
  [coderCopy encodeObject:self->_originIdentifier forKey:@"OriginIdentifier"];
}

- (HKVerifiableClinicalRecord)initWithCoder:(id)coder
{
  v41[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = HKVerifiableClinicalRecord;
  v5 = [(HKSample *)&v39 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"RecordTypes"];
    recordTypes = v5->_recordTypes;
    v5->_recordTypes = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IssuedDate"];
    issuedDate = v5->_issuedDate;
    v5->_issuedDate = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RelevantDate"];
    relevantDate = v5->_relevantDate;
    v5->_relevantDate = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExpirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IssuerIdentifier"];
    issuerIdentifier = v5->_issuerIdentifier;
    v5->_issuerIdentifier = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Subject"];
    subject = v5->_subject;
    v5->_subject = v19;

    v21 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"ItemNames"];
    itemNames = v5->_itemNames;
    v5->_itemNames = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataRepresentation"];
    dataRepresentation = v5->_dataRepresentation;
    v5->_dataRepresentation = v26;

    v28 = v5->_dataRepresentation;
    if (!v28)
    {
      v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"JWSRepresentation"];
      v30 = v5->_dataRepresentation;
      v5->_dataRepresentation = v29;

      v28 = v5->_dataRepresentation;
    }

    v31 = [(NSData *)v28 copy];
    JWSRepresentation = v5->_JWSRepresentation;
    v5->_JWSRepresentation = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceType"];
    sourceType = v5->_sourceType;
    v5->_sourceType = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OriginIdentifier"];
    originIdentifier = v5->_originIdentifier;
    v5->_originIdentifier = v35;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  if (self == equivalentCopy)
  {
    v12 = 1;
  }

  else
  {
    v103.receiver = self;
    v103.super_class = HKVerifiableClinicalRecord;
    if ([(HKSample *)&v103 isEquivalent:equivalentCopy])
    {
      v6 = equivalentCopy;
      recordTypes = self->_recordTypes;
      recordTypes = [(HKVerifiableClinicalRecord *)v6 recordTypes];
      if (recordTypes != recordTypes)
      {
        recordTypes2 = [(HKVerifiableClinicalRecord *)v6 recordTypes];
        if (!recordTypes2)
        {
          v12 = 0;
LABEL_108:

          goto LABEL_109;
        }

        v10 = self->_recordTypes;
        recordTypes3 = [(HKVerifiableClinicalRecord *)v6 recordTypes];
        if (![(NSArray *)v10 isEqualToArray:recordTypes3])
        {
          v12 = 0;
LABEL_55:

          goto LABEL_108;
        }

        v3 = recordTypes2;
        v100 = recordTypes3;
      }

      v102 = recordTypes;
      issuedDate = self->_issuedDate;
      issuedDate = [(HKVerifiableClinicalRecord *)v6 issuedDate];
      v99 = issuedDate != issuedDate;
      if (issuedDate != issuedDate)
      {
        issuedDate2 = [(HKVerifiableClinicalRecord *)v6 issuedDate];
        if (!issuedDate2)
        {

          v12 = 0;
          v24 = v102;
          recordTypes3 = v100;
          recordTypes2 = v3;
          if (v102 == recordTypes)
          {
LABEL_107:
            if (v24 != recordTypes)
            {
              goto LABEL_108;
            }

            goto LABEL_109;
          }

LABEL_106:

          goto LABEL_107;
        }

        v16 = issuedDate2;
        v17 = self->_issuedDate;
        issuedDate3 = [(HKVerifiableClinicalRecord *)v6 issuedDate];
        if (![(NSDate *)v17 isEqual:?])
        {
          v12 = 0;
          recordTypes3 = v100;
          v23 = issuedDate;
          recordTypes2 = v3;
          goto LABEL_54;
        }

        v95 = v16;
      }

      relevantDate = self->_relevantDate;
      relevantDate = [(HKVerifiableClinicalRecord *)v6 relevantDate];
      v97 = relevantDate;
      v19 = relevantDate != relevantDate;
      if (relevantDate != relevantDate)
      {
        relevantDate2 = [(HKVerifiableClinicalRecord *)v6 relevantDate];
        if (!relevantDate2)
        {

          v12 = 0;
          v26 = issuedDate == issuedDate;
          v23 = issuedDate;
          if (!v26)
          {
            LOBYTE(v30) = 1;
            recordTypes3 = v100;
            v31 = v95;
            recordTypes2 = v3;
            goto LABEL_103;
          }

          v30 = 0;
          recordTypes3 = v100;
          v31 = v95;
          recordTypes2 = v3;
LABEL_111:
          if (!v30)
          {
            goto LABEL_105;
          }

LABEL_104:

          goto LABEL_105;
        }

        v92 = relevantDate2;
        v21 = self->_relevantDate;
        relevantDate3 = [(HKVerifiableClinicalRecord *)v6 relevantDate];
        if (![(NSDate *)v21 isEqual:?])
        {
          v12 = 0;
          v22 = issuedDate;
          v23 = issuedDate;
          recordTypes2 = v3;
          goto LABEL_53;
        }
      }

      expirationDate = self->_expirationDate;
      expirationDate = [(HKVerifiableClinicalRecord *)v6 expirationDate];
      v93 = expirationDate;
      v26 = expirationDate == expirationDate;
      v27 = expirationDate != expirationDate;
      if (v26)
      {
        v85 = v27;
      }

      else
      {
        expirationDate2 = [(HKVerifiableClinicalRecord *)v6 expirationDate];
        if (!expirationDate2)
        {

          v12 = 0;
          v22 = issuedDate;
          if (v97 != relevantDate)
          {
            LOBYTE(v37) = 1;
            v30 = issuedDate != issuedDate;
            v23 = issuedDate;
            recordTypes2 = v3;
            goto LABEL_100;
          }

          v37 = 0;
          v30 = issuedDate != issuedDate;
          v23 = issuedDate;
          recordTypes2 = v3;
LABEL_113:
          if (!v37)
          {
            goto LABEL_102;
          }

LABEL_101:

          goto LABEL_102;
        }

        v86 = expirationDate2;
        v29 = self->_expirationDate;
        expirationDate3 = [(HKVerifiableClinicalRecord *)v6 expirationDate];
        if (![(NSDate *)v29 isEqual:?])
        {
          v12 = 0;
          v35 = v97;
          v22 = issuedDate;
          v23 = issuedDate;
          recordTypes2 = v3;
          goto LABEL_52;
        }

        v85 = v27;
      }

      issuerIdentifier = self->_issuerIdentifier;
      issuerIdentifier = [(HKVerifiableClinicalRecord *)v6 issuerIdentifier];
      v91 = issuedDate;
      v87 = issuerIdentifier;
      v84 = issuerIdentifier != issuerIdentifier;
      v89 = v19;
      if (issuerIdentifier == issuerIdentifier)
      {
        v23 = issuedDate;
      }

      else
      {
        issuerIdentifier2 = [(HKVerifiableClinicalRecord *)v6 issuerIdentifier];
        if (!issuerIdentifier2)
        {

          v12 = 0;
          v35 = v97;
          v23 = issuedDate;
          if (v93 != expirationDate)
          {
            LOBYTE(v42) = 1;
            recordTypes2 = v3;
            v22 = v91;
            goto LABEL_97;
          }

          v42 = 0;
          recordTypes2 = v3;
          v22 = v91;
LABEL_115:
          if (!v42)
          {
            goto LABEL_99;
          }

LABEL_98:

          goto LABEL_99;
        }

        v81 = issuerIdentifier2;
        v34 = self->_issuerIdentifier;
        issuerIdentifier3 = [(HKVerifiableClinicalRecord *)v6 issuerIdentifier];
        v23 = issuedDate;
        if (![(NSString *)v34 isEqualToString:?])
        {
          v12 = 0;
          v35 = v97;
          recordTypes2 = v3;
          v36 = issuerIdentifier;
          v22 = v91;
          goto LABEL_51;
        }
      }

      subject = self->_subject;
      subject = [(HKVerifiableClinicalRecord *)v6 subject];
      v79 = subject != subject;
      if (subject == subject)
      {
        recordTypes2 = v3;
      }

      else
      {
        subject2 = [(HKVerifiableClinicalRecord *)v6 subject];
        recordTypes2 = v3;
        if (!subject2)
        {

          v12 = 0;
          v36 = issuerIdentifier;
          v35 = v97;
          if (issuerIdentifier != issuerIdentifier)
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

        v77 = subject2;
        v40 = self->_subject;
        subject3 = [(HKVerifiableClinicalRecord *)v6 subject];
        if (![(HKVerifiableClinicalRecordSubject *)v40 isEqual:?])
        {
          v12 = 0;
          v35 = v97;
          v22 = v91;
          v41 = subject;
          goto LABEL_50;
        }
      }

      itemNames = self->_itemNames;
      itemNames = [(HKVerifiableClinicalRecord *)v6 itemNames];
      v76 = itemNames;
      v44 = itemNames != itemNames;
      if (itemNames != itemNames)
      {
        itemNames2 = [(HKVerifiableClinicalRecord *)v6 itemNames];
        if (!itemNames2)
        {

          v12 = 0;
          v41 = subject;
          v26 = subject == subject;
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

        v72 = itemNames2;
        v46 = self->_itemNames;
        itemNames3 = [(HKVerifiableClinicalRecord *)v6 itemNames];
        if (![(NSArray *)v46 isEqualToArray:?])
        {
          v75 = subject;
          v12 = 0;
          v35 = v97;
          v22 = v91;
          v41 = subject;
          goto LABEL_49;
        }
      }

      dataRepresentation = self->_dataRepresentation;
      dataRepresentation = [(HKVerifiableClinicalRecord *)v6 dataRepresentation];
      v75 = subject;
      v71 = dataRepresentation;
      if (dataRepresentation != dataRepresentation)
      {
        dataRepresentation2 = [(HKVerifiableClinicalRecord *)v6 dataRepresentation];
        if (!dataRepresentation2)
        {
          v56 = v44;

          v12 = 0;
          v35 = v97;
          v22 = v91;
          v41 = subject;
          if (v76 != itemNames)
          {
            goto LABEL_85;
          }

          goto LABEL_88;
        }

        v69 = dataRepresentation2;
        v50 = self->_dataRepresentation;
        dataRepresentation3 = [(HKVerifiableClinicalRecord *)v6 dataRepresentation];
        if (![(NSData *)v50 isEqual:?])
        {
          v12 = 0;
          v35 = v97;
          v22 = v91;
          v41 = subject;
LABEL_83:

          if (v76 != itemNames)
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
      sourceType = [(HKVerifiableClinicalRecord *)v6 sourceType];
      v67 = sourceType;
      if (sourceType != sourceType)
      {
        sourceType2 = [(HKVerifiableClinicalRecord *)v6 sourceType];
        if (!sourceType2)
        {
          v12 = 0;
          goto LABEL_82;
        }

        v66 = sourceType2;
        v54 = self->_sourceType;
        sourceType3 = [(HKVerifiableClinicalRecord *)v6 sourceType];
        if (![(NSString *)v54 isEqualToString:sourceType3])
        {

          v12 = 0;
          goto LABEL_122;
        }

        v64 = sourceType3;
      }

      originIdentifier = self->_originIdentifier;
      originIdentifier = [(HKVerifiableClinicalRecord *)v6 originIdentifier];
      v12 = originIdentifier == originIdentifier;
      if (!v12)
      {
        originIdentifier2 = [(HKVerifiableClinicalRecord *)v6 originIdentifier];
        if (originIdentifier2)
        {
          v60 = self->_originIdentifier;
          v61 = originIdentifier2;
          originIdentifier3 = [(HKVerifiableClinicalRecord *)v6 originIdentifier];
          v12 = [(NSUUID *)v60 isEqual:originIdentifier3];

          if (v67 != sourceType)
          {
          }

LABEL_122:
          if (v71 != dataRepresentation)
          {
          }

          if (v76 != itemNames)
          {
          }

          if (v75 != subject)
          {
          }

          if (v87 != issuerIdentifier)
          {
          }

          if (v93 != expirationDate)
          {
          }

          if (v97 != relevantDate)
          {
          }

          if (v91 != v23)
          {
          }

          recordTypes3 = v100;
          if (v102 == recordTypes)
          {
            goto LABEL_109;
          }

          goto LABEL_55;
        }
      }

      if (v67 == sourceType)
      {

        v35 = v97;
        v22 = v91;
        v41 = subject;
        if (v71 != dataRepresentation)
        {
          goto LABEL_83;
        }

        goto LABEL_139;
      }

LABEL_82:
      v35 = v97;
      v22 = v91;
      v41 = subject;

      if (v71 != dataRepresentation)
      {
        goto LABEL_83;
      }

LABEL_139:

      if (v76 != itemNames)
      {
LABEL_49:

        if (v75 != v41)
        {
LABEL_50:

          v36 = issuerIdentifier;
          if (v87 != issuerIdentifier)
          {
LABEL_51:

            if (v93 != expirationDate)
            {
LABEL_52:

              v30 = v99;
              if (v35 != relevantDate)
              {
LABEL_53:

                v26 = v22 == v23;
                recordTypes3 = v100;
                v16 = v95;
                if (!v26)
                {
LABEL_54:

                  if (v102 != recordTypes)
                  {
                    goto LABEL_55;
                  }

LABEL_109:

                  goto LABEL_110;
                }

LABEL_105:

                v24 = v102;
                if (v102 == recordTypes)
                {
                  goto LABEL_107;
                }

                goto LABEL_106;
              }

LABEL_102:

              v26 = v22 == v23;
              recordTypes3 = v100;
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

            v26 = v35 == relevantDate;
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
          if (v93 != expirationDate)
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

        v36 = issuerIdentifier;
        v47 = v84;
        if (v87 != issuerIdentifier)
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

- (void)_setIssuedDate:(id)date
{
  v4 = [date copy];
  issuedDate = self->_issuedDate;
  self->_issuedDate = v4;

  MEMORY[0x1EEE66BB8](v4, issuedDate);
}

- (void)_setExpirationDate:(id)date
{
  v4 = [date copy];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v4;

  MEMORY[0x1EEE66BB8](v4, expirationDate);
}

- (void)_setIssuerIdentifier:(id)identifier
{
  v4 = [identifier copy];
  issuerIdentifier = self->_issuerIdentifier;
  self->_issuerIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, issuerIdentifier);
}

- (void)_setItemNames:(id)names
{
  v4 = [names copy];
  itemNames = self->_itemNames;
  self->_itemNames = v4;

  MEMORY[0x1EEE66BB8](v4, itemNames);
}

- (void)_setDataRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy copy];
  dataRepresentation = self->_dataRepresentation;
  self->_dataRepresentation = v5;

  v7 = [representationCopy copy];
  JWSRepresentation = self->_JWSRepresentation;
  self->_JWSRepresentation = v7;
}

- (void)_setOriginIdentifier:(id)identifier
{
  v4 = [identifier copy];
  originIdentifier = self->_originIdentifier;
  self->_originIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, originIdentifier);
}

- (void)_setRecordTypes:(id)types
{
  v4 = [types copy];
  recordTypes = self->_recordTypes;
  self->_recordTypes = v4;

  MEMORY[0x1EEE66BB8](v4, recordTypes);
}

- (void)_setRelevantDate:(id)date
{
  v4 = [date copy];
  relevantDate = self->_relevantDate;
  self->_relevantDate = v4;

  MEMORY[0x1EEE66BB8](v4, relevantDate);
}

- (void)_setSourceType:(int64_t)type
{
  v6 = [objc_opt_class() sourceTypeForInternalType:type];
  v4 = [v6 copy];
  sourceType = self->_sourceType;
  self->_sourceType = v4;
}

- (void)_setSubject:(id)subject
{
  v4 = [subject copy];
  subject = self->_subject;
  self->_subject = v4;

  MEMORY[0x1EEE66BB8](v4, subject);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v13.receiver = self;
  v13.super_class = HKVerifiableClinicalRecord;
  v5 = [(HKSample *)&v13 _validateWithConfiguration:configuration.var0, configuration.var1];
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

+ (int64_t)_privateSourceTypeForExternalType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"SMARTHealthCard"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"EUDigitalCOVIDCertificate"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sourceTypeForInternalType:(int64_t)type
{
  v3 = @"EUDigitalCOVIDCertificate";
  if (type != 2)
  {
    v3 = 0;
  }

  if (type == 1)
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
  recordTypes = [(HKVerifiableClinicalRecord *)self recordTypes];
  v3 = [HKSignedClinicalDataUtilities recordTypeDisplayNameWithTypes:recordTypes];

  return v3;
}

- (NSString)recordItemsDisplayName
{
  itemNames = [(HKVerifiableClinicalRecord *)self itemNames];
  v3 = [HKSignedClinicalDataUtilities recordItemsDisplayNameWithItems:itemNames];

  return v3;
}

- (NSString)recordIssuerDisplayName
{
  issuerIdentifier = [(HKVerifiableClinicalRecord *)self issuerIdentifier];
  v4 = [HKSignedClinicalDataUtilities preferredRecordIssuerDisplayNameWithIssuerIdentifier:issuerIdentifier];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    sourceRevision = [(HKObject *)self sourceRevision];
    source = [sourceRevision source];
    name = [source name];

    if ([name length])
    {
      v5 = name;
    }

    else
    {
      issuerIdentifier2 = [(HKVerifiableClinicalRecord *)self issuerIdentifier];
      v5 = [HKSignedClinicalDataUtilities recordIssuerDisplayNameWithIssuerIdentifier:issuerIdentifier2];
    }
  }

  return v5;
}

@end