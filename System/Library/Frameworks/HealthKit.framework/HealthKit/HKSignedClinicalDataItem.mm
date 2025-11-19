@interface HKSignedClinicalDataItem
+ (id)itemWithPrimaryConceptCodingCollection:(id)a3 relevantDate:(id)a4 medicalRecordSampleID:(id)a5;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (HKConcept)primaryConcept;
- (HKSignedClinicalDataItem)initWithCoder:(id)a3;
- (HKSignedClinicalDataItem)initWithPrimaryConceptCodingCollection:(id)a3 relevantDate:(id)a4 medicalRecordSampleID:(id)a5;
- (NSString)debugDescription;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSignedClinicalDataItem

- (HKSignedClinicalDataItem)initWithPrimaryConceptCodingCollection:(id)a3 relevantDate:(id)a4 medicalRecordSampleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKSignedClinicalDataItem;
  v11 = [(HKSignedClinicalDataItem *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    primaryConceptCodingCollection = v11->_primaryConceptCodingCollection;
    v11->_primaryConceptCodingCollection = v12;

    v14 = [v9 copy];
    relevantDate = v11->_relevantDate;
    v11->_relevantDate = v14;

    v16 = [v10 copy];
    medicalRecordSampleID = v11->_medicalRecordSampleID;
    v11->_medicalRecordSampleID = v16;
  }

  return v11;
}

+ (id)itemWithPrimaryConceptCodingCollection:(id)a3 relevantDate:(id)a4 medicalRecordSampleID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithPrimaryConceptCodingCollection:v10 relevantDate:v9 medicalRecordSampleID:v8];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(medicalRecordSampleID) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      primaryConceptCodingCollection = self->_primaryConceptCodingCollection;
      v7 = [(HKSignedClinicalDataItem *)v5 primaryConceptCodingCollection];
      if (primaryConceptCodingCollection != v7)
      {
        v8 = [(HKSignedClinicalDataItem *)v5 primaryConceptCodingCollection];
        if (!v8)
        {
          LOBYTE(medicalRecordSampleID) = 0;
          goto LABEL_27;
        }

        v9 = v8;
        v10 = self->_primaryConceptCodingCollection;
        v11 = [(HKSignedClinicalDataItem *)v5 primaryConceptCodingCollection];
        if (![(HKMedicalCodingCollection *)v10 isEqual:v11])
        {
          LOBYTE(medicalRecordSampleID) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v27 = v11;
        v28 = v9;
      }

      relevantDate = self->_relevantDate;
      v14 = [(HKSignedClinicalDataItem *)v5 relevantDate];
      if (relevantDate != v14)
      {
        medicalRecordSampleID = [(HKSignedClinicalDataItem *)v5 relevantDate];
        if (!medicalRecordSampleID)
        {
          goto LABEL_20;
        }

        v15 = self->_relevantDate;
        v16 = [(HKSignedClinicalDataItem *)v5 relevantDate];
        v17 = v15;
        v18 = v16;
        if (![(NSDate *)v17 isEqualToDate:v16])
        {

          LOBYTE(medicalRecordSampleID) = 0;
LABEL_25:
          v11 = v27;
          v9 = v28;
          if (primaryConceptCodingCollection != v7)
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
      v19 = [(HKSignedClinicalDataItem *)v5 medicalRecordSampleID];
      LOBYTE(medicalRecordSampleID) = medicalRecordSampleID == v19;
      if (!medicalRecordSampleID)
      {
        v20 = [(HKSignedClinicalDataItem *)v5 medicalRecordSampleID];
        if (v20)
        {
          v21 = v20;
          medicalRecordSampleID = self->_medicalRecordSampleID;
          v22 = [(HKSignedClinicalDataItem *)v5 medicalRecordSampleID];
          LOBYTE(medicalRecordSampleID) = [medicalRecordSampleID isEqual:v22];

          if (relevantDate != v14)
          {
          }

          goto LABEL_22;
        }
      }

      if (relevantDate == v14)
      {
LABEL_22:

        goto LABEL_25;
      }

LABEL_20:
      v11 = v27;

      v9 = v28;
      if (primaryConceptCodingCollection == v7)
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

- (HKSignedClinicalDataItem)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKSignedClinicalDataItem;
  v5 = [(HKSignedClinicalDataItem *)&v16 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrimaryConceptCodingCollection"];
  primaryConceptCodingCollection = v5->_primaryConceptCodingCollection;
  v5->_primaryConceptCodingCollection = v6;

  if (!v5->_primaryConceptCodingCollection)
  {
    goto LABEL_6;
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrimaryConcept"];
  primaryConcept = v5->_primaryConcept;
  v5->_primaryConcept = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RelevantDate"];
  relevantDate = v5->_relevantDate;
  v5->_relevantDate = v10;

  if (!v5->_relevantDate)
  {
    goto LABEL_6;
  }

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicalRecordSampleID"];
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

- (void)encodeWithCoder:(id)a3
{
  primaryConceptCodingCollection = self->_primaryConceptCodingCollection;
  v5 = a3;
  [v5 encodeObject:primaryConceptCodingCollection forKey:@"PrimaryConceptCodingCollection"];
  [v5 encodeObject:self->_primaryConcept forKey:@"PrimaryConcept"];
  [v5 encodeObject:self->_relevantDate forKey:@"RelevantDate"];
  [v5 encodeObject:self->_medicalRecordSampleID forKey:@"MedicalRecordSampleID"];
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v6 = a4;
  [HKConceptIndexUtilities assignError:a5 forInvalidKeyPath:v6 inClass:objc_opt_class()];

  return 0;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  [HKConceptIndexUtilities assignError:a4 forInvalidKeyPath:v5 inClass:objc_opt_class()];

  return 0;
}

@end