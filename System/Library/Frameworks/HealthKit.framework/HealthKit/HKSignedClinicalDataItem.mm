@interface HKSignedClinicalDataItem
+ (id)itemWithPrimaryConceptCodingCollection:(id)collection relevantDate:(id)date medicalRecordSampleID:(id)d;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKConcept)primaryConcept;
- (HKSignedClinicalDataItem)initWithCoder:(id)coder;
- (HKSignedClinicalDataItem)initWithPrimaryConceptCodingCollection:(id)collection relevantDate:(id)date medicalRecordSampleID:(id)d;
- (NSString)debugDescription;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSignedClinicalDataItem

- (HKSignedClinicalDataItem)initWithPrimaryConceptCodingCollection:(id)collection relevantDate:(id)date medicalRecordSampleID:(id)d
{
  collectionCopy = collection;
  dateCopy = date;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = HKSignedClinicalDataItem;
  v11 = [(HKSignedClinicalDataItem *)&v19 init];
  if (v11)
  {
    v12 = [collectionCopy copy];
    primaryConceptCodingCollection = v11->_primaryConceptCodingCollection;
    v11->_primaryConceptCodingCollection = v12;

    v14 = [dateCopy copy];
    relevantDate = v11->_relevantDate;
    v11->_relevantDate = v14;

    v16 = [dCopy copy];
    medicalRecordSampleID = v11->_medicalRecordSampleID;
    v11->_medicalRecordSampleID = v16;
  }

  return v11;
}

+ (id)itemWithPrimaryConceptCodingCollection:(id)collection relevantDate:(id)date medicalRecordSampleID:(id)d
{
  dCopy = d;
  dateCopy = date;
  collectionCopy = collection;
  v11 = [[self alloc] initWithPrimaryConceptCodingCollection:collectionCopy relevantDate:dateCopy medicalRecordSampleID:dCopy];

  return v11;
}

- (HKConcept)primaryConcept
{
  primaryConcept = self->_primaryConcept;
  if (!primaryConcept)
  {
    v4 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:self->_primaryConceptCodingCollection];
    v5 = self->_primaryConcept;
    self->_primaryConcept = v4;

    primaryConcept = self->_primaryConcept;
  }

  return primaryConcept;
}

- (unint64_t)hash
{
  v3 = [(HKMedicalCodingCollection *)self->_primaryConceptCodingCollection hash];
  v4 = [(NSDate *)self->_relevantDate hash]^ v3;
  return v4 ^ [(NSUUID *)self->_medicalRecordSampleID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(medicalRecordSampleID) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      primaryConceptCodingCollection = self->_primaryConceptCodingCollection;
      primaryConceptCodingCollection = [(HKSignedClinicalDataItem *)v5 primaryConceptCodingCollection];
      if (primaryConceptCodingCollection != primaryConceptCodingCollection)
      {
        primaryConceptCodingCollection2 = [(HKSignedClinicalDataItem *)v5 primaryConceptCodingCollection];
        if (!primaryConceptCodingCollection2)
        {
          LOBYTE(medicalRecordSampleID) = 0;
          goto LABEL_27;
        }

        v9 = primaryConceptCodingCollection2;
        v10 = self->_primaryConceptCodingCollection;
        primaryConceptCodingCollection3 = [(HKSignedClinicalDataItem *)v5 primaryConceptCodingCollection];
        if (![(HKMedicalCodingCollection *)v10 isEqual:primaryConceptCodingCollection3])
        {
          LOBYTE(medicalRecordSampleID) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v27 = primaryConceptCodingCollection3;
        v28 = v9;
      }

      relevantDate = self->_relevantDate;
      relevantDate = [(HKSignedClinicalDataItem *)v5 relevantDate];
      if (relevantDate != relevantDate)
      {
        medicalRecordSampleID = [(HKSignedClinicalDataItem *)v5 relevantDate];
        if (!medicalRecordSampleID)
        {
          goto LABEL_20;
        }

        v15 = self->_relevantDate;
        relevantDate2 = [(HKSignedClinicalDataItem *)v5 relevantDate];
        v17 = v15;
        v18 = relevantDate2;
        if (![(NSDate *)v17 isEqualToDate:relevantDate2])
        {

          LOBYTE(medicalRecordSampleID) = 0;
LABEL_25:
          primaryConceptCodingCollection3 = v27;
          v9 = v28;
          if (primaryConceptCodingCollection != primaryConceptCodingCollection)
          {
            goto LABEL_26;
          }

LABEL_27:

          goto LABEL_28;
        }

        v24 = v18;
        v26 = medicalRecordSampleID;
      }

      medicalRecordSampleID = self->_medicalRecordSampleID;
      medicalRecordSampleID = [(HKSignedClinicalDataItem *)v5 medicalRecordSampleID];
      LOBYTE(medicalRecordSampleID) = medicalRecordSampleID == medicalRecordSampleID;
      if (!medicalRecordSampleID)
      {
        medicalRecordSampleID2 = [(HKSignedClinicalDataItem *)v5 medicalRecordSampleID];
        if (medicalRecordSampleID2)
        {
          v21 = medicalRecordSampleID2;
          medicalRecordSampleID = self->_medicalRecordSampleID;
          medicalRecordSampleID3 = [(HKSignedClinicalDataItem *)v5 medicalRecordSampleID];
          LOBYTE(medicalRecordSampleID) = [medicalRecordSampleID isEqual:medicalRecordSampleID3];

          if (relevantDate != relevantDate)
          {
          }

          goto LABEL_22;
        }
      }

      if (relevantDate == relevantDate)
      {
LABEL_22:

        goto LABEL_25;
      }

LABEL_20:
      primaryConceptCodingCollection3 = v27;

      v9 = v28;
      if (primaryConceptCodingCollection == primaryConceptCodingCollection)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    LOBYTE(medicalRecordSampleID) = 0;
  }

LABEL_28:

  return medicalRecordSampleID;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HKMedicalCodingCollection *)self->_primaryConceptCodingCollection description];
  v5 = [(NSDate *)self->_relevantDate description];
  v6 = [(NSUUID *)self->_medicalRecordSampleID description];
  v7 = [v3 stringWithFormat:@"Primary concept coding collection: %@, relevantDate: %@, sample ID: %@", v4, v5, v6];

  return v7;
}

- (HKSignedClinicalDataItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HKSignedClinicalDataItem;
  v5 = [(HKSignedClinicalDataItem *)&v16 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrimaryConceptCodingCollection"];
  primaryConceptCodingCollection = v5->_primaryConceptCodingCollection;
  v5->_primaryConceptCodingCollection = v6;

  if (!v5->_primaryConceptCodingCollection)
  {
    goto LABEL_6;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrimaryConcept"];
  primaryConcept = v5->_primaryConcept;
  v5->_primaryConcept = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RelevantDate"];
  relevantDate = v5->_relevantDate;
  v5->_relevantDate = v10;

  if (!v5->_relevantDate)
  {
    goto LABEL_6;
  }

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicalRecordSampleID"];
  medicalRecordSampleID = v5->_medicalRecordSampleID;
  v5->_medicalRecordSampleID = v12;

  if (v5->_medicalRecordSampleID)
  {
LABEL_5:
    v14 = v5;
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  primaryConceptCodingCollection = self->_primaryConceptCodingCollection;
  coderCopy = coder;
  [coderCopy encodeObject:primaryConceptCodingCollection forKey:@"PrimaryConceptCodingCollection"];
  [coderCopy encodeObject:self->_primaryConcept forKey:@"PrimaryConcept"];
  [coderCopy encodeObject:self->_relevantDate forKey:@"RelevantDate"];
  [coderCopy encodeObject:self->_medicalRecordSampleID forKey:@"MedicalRecordSampleID"];
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  pathCopy = path;
  [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];

  return 0;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  pathCopy = path;
  [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];

  return 0;
}

@end