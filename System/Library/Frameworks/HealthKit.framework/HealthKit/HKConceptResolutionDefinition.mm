@interface HKConceptResolutionDefinition
- (BOOL)isEqual:(id)equal;
- (HKConceptResolutionDefinition)init;
- (HKConceptResolutionDefinition)initWithCoder:(id)coder;
- (HKConceptResolutionDefinition)initWithCodingCollection:(id)collection countryCode:(id)code recordCategoryType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (HKConceptResolutionDefinition)initWithCodingCollection:(id)collection countryCode:(id)code recordCategoryType:(int64_t)type
{
  collectionCopy = collection;
  codeCopy = code;
  v16.receiver = self;
  v16.super_class = HKConceptResolutionDefinition;
  v10 = [(HKConceptResolutionDefinition *)&v16 init];
  if (v10)
  {
    v11 = [collectionCopy copy];
    codingCollection = v10->_codingCollection;
    v10->_codingCollection = v11;

    v13 = [codeCopy copy];
    countryCode = v10->_countryCode;
    v10->_countryCode = v13;

    v10->_recordCategoryType = type;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  codingCollection = self->_codingCollection;
  coderCopy = coder;
  [coderCopy encodeObject:codingCollection forKey:@"ConceptResolutionDefinitionCodingCollectionKey"];
  [coderCopy encodeObject:self->_countryCode forKey:@"ConceptResolutionDefinitionCountryCodeKey"];
  [coderCopy encodeInteger:self->_recordCategoryType forKey:@"ConceptResolutionDefinitionCountryCategoryTypeKey"];
}

- (HKConceptResolutionDefinition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKConceptResolutionDefinition;
  v5 = [(HKConceptResolutionDefinition *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ConceptResolutionDefinitionCodingCollectionKey"];
    codingCollection = v5->_codingCollection;
    v5->_codingCollection = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ConceptResolutionDefinitionCountryCodeKey"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v8;

    v5->_recordCategoryType = [coderCopy decodeIntegerForKey:@"ConceptResolutionDefinitionCountryCategoryTypeKey"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      codingCollection = self->_codingCollection;
      codingCollection = [(HKConceptResolutionDefinition *)v5 codingCollection];
      v8 = codingCollection;
      if (codingCollection == codingCollection)
      {
      }

      else
      {
        codingCollection2 = [(HKConceptResolutionDefinition *)v5 codingCollection];
        if (!codingCollection2)
        {
          goto LABEL_14;
        }

        v10 = codingCollection2;
        v11 = self->_codingCollection;
        codingCollection3 = [(HKConceptResolutionDefinition *)v5 codingCollection];
        LODWORD(v11) = [(HKMedicalCodingCollection *)v11 isEqual:codingCollection3];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      countryCode = self->_countryCode;
      countryCode = [(HKConceptResolutionDefinition *)v5 countryCode];
      v8 = countryCode;
      if (countryCode == countryCode)
      {

LABEL_17:
        recordCategoryType = self->_recordCategoryType;
        v13 = recordCategoryType == [(HKConceptResolutionDefinition *)v5 recordCategoryType];
        goto LABEL_18;
      }

      countryCode2 = [(HKConceptResolutionDefinition *)v5 countryCode];
      if (countryCode2)
      {
        v17 = countryCode2;
        v18 = self->_countryCode;
        countryCode3 = [(HKConceptResolutionDefinition *)v5 countryCode];
        LODWORD(v18) = [(NSString *)v18 isEqual:countryCode3];

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