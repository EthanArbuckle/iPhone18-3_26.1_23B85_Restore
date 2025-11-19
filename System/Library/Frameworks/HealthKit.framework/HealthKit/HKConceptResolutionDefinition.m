@interface HKConceptResolutionDefinition
- (BOOL)isEqual:(id)a3;
- (HKConceptResolutionDefinition)init;
- (HKConceptResolutionDefinition)initWithCoder:(id)a3;
- (HKConceptResolutionDefinition)initWithCodingCollection:(id)a3 countryCode:(id)a4 recordCategoryType:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKConceptResolutionDefinition

- (HKConceptResolutionDefinition)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKConceptResolutionDefinition)initWithCodingCollection:(id)a3 countryCode:(id)a4 recordCategoryType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HKConceptResolutionDefinition;
  v10 = [(HKConceptResolutionDefinition *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    codingCollection = v10->_codingCollection;
    v10->_codingCollection = v11;

    v13 = [v9 copy];
    countryCode = v10->_countryCode;
    v10->_countryCode = v13;

    v10->_recordCategoryType = a5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  codingCollection = self->_codingCollection;
  v5 = a3;
  [v5 encodeObject:codingCollection forKey:@"ConceptResolutionDefinitionCodingCollectionKey"];
  [v5 encodeObject:self->_countryCode forKey:@"ConceptResolutionDefinitionCountryCodeKey"];
  [v5 encodeInteger:self->_recordCategoryType forKey:@"ConceptResolutionDefinitionCountryCategoryTypeKey"];
}

- (HKConceptResolutionDefinition)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKConceptResolutionDefinition;
  v5 = [(HKConceptResolutionDefinition *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ConceptResolutionDefinitionCodingCollectionKey"];
    codingCollection = v5->_codingCollection;
    v5->_codingCollection = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ConceptResolutionDefinitionCountryCodeKey"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v8;

    v5->_recordCategoryType = [v4 decodeIntegerForKey:@"ConceptResolutionDefinitionCountryCategoryTypeKey"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      codingCollection = self->_codingCollection;
      v7 = [(HKConceptResolutionDefinition *)v5 codingCollection];
      v8 = v7;
      if (codingCollection == v7)
      {
      }

      else
      {
        v9 = [(HKConceptResolutionDefinition *)v5 codingCollection];
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = v9;
        v11 = self->_codingCollection;
        v12 = [(HKConceptResolutionDefinition *)v5 codingCollection];
        LODWORD(v11) = [(HKMedicalCodingCollection *)v11 isEqual:v12];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      countryCode = self->_countryCode;
      v15 = [(HKConceptResolutionDefinition *)v5 countryCode];
      v8 = v15;
      if (countryCode == v15)
      {

LABEL_17:
        recordCategoryType = self->_recordCategoryType;
        v13 = recordCategoryType == [(HKConceptResolutionDefinition *)v5 recordCategoryType];
        goto LABEL_18;
      }

      v16 = [(HKConceptResolutionDefinition *)v5 countryCode];
      if (v16)
      {
        v17 = v16;
        v18 = self->_countryCode;
        v19 = [(HKConceptResolutionDefinition *)v5 countryCode];
        LODWORD(v18) = [(NSString *)v18 isEqual:v19];

        if (v18)
        {
          goto LABEL_17;
        }

LABEL_15:
        v13 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_14:

      goto LABEL_15;
    }

    v13 = 0;
  }

LABEL_19:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  codingCollection = self->_codingCollection;
  countryCode = self->_countryCode;
  v7 = HKStringFromMedicalRecordCategoryType(self->_recordCategoryType);
  v8 = [v3 stringWithFormat:@"<%@:%p %@ %@ /'%@/'>", v4, self, codingCollection, countryCode, v7];

  return v8;
}

@end