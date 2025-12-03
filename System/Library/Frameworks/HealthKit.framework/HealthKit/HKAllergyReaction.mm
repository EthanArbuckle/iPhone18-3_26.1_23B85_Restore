@interface HKAllergyReaction
+ (id)allergyReactionWithManifestationCodings:(id)codings onsetDate:(id)date severityCoding:(id)coding;
+ (id)indexableKeyPathsWithPrefix:(id)prefix;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKAllergyReaction)init;
- (HKAllergyReaction)initWithCoder:(id)coder;
- (HKAllergyReaction)initWithManifestationCodings:(id)codings onsetDate:(id)date severityCoding:(id)coding;
- (HKConcept)severity;
- (HKMedicalCodingCollection)severityCodingCollection;
- (NSArray)manifestationCodingCollections;
- (NSArray)manifestations;
- (NSString)description;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAllergyReaction

+ (id)indexableKeyPathsWithPrefix:(id)prefix
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"manifestations";
  v9[1] = @"severity";
  v3 = MEMORY[0x1E695DEC8];
  prefixCopy = prefix;
  v5 = [v3 arrayWithObjects:v9 count:2];
  v6 = [HKConceptIndexUtilities keyPaths:v5 prefix:prefixCopy];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)allergyReactionWithManifestationCodings:(id)codings onsetDate:(id)date severityCoding:(id)coding
{
  codingCopy = coding;
  dateCopy = date;
  codingsCopy = codings;
  v11 = [[self alloc] initWithManifestationCodings:codingsCopy onsetDate:dateCopy severityCoding:codingCopy];

  return v11;
}

- (HKAllergyReaction)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKAllergyReaction)initWithManifestationCodings:(id)codings onsetDate:(id)date severityCoding:(id)coding
{
  codingsCopy = codings;
  dateCopy = date;
  codingCopy = coding;
  if (!codingsCopy)
  {
    [HKAllergyReaction initWithManifestationCodings:a2 onsetDate:self severityCoding:?];
  }

  if (![codingsCopy count])
  {
    [HKAllergyReaction initWithManifestationCodings:a2 onsetDate:self severityCoding:?];
  }

  v26.receiver = self;
  v26.super_class = HKAllergyReaction;
  v12 = [(HKAllergyReaction *)&v26 init];
  if (v12)
  {
    v13 = [codingsCopy hk_map:&__block_literal_global_110];
    manifestationCodings = v12->_manifestationCodings;
    v12->_manifestationCodings = v13;

    v15 = [dateCopy copy];
    onsetDate = v12->_onsetDate;
    v12->_onsetDate = v15;

    v17 = [codingCopy copy];
    severityCoding = v12->_severityCoding;
    v12->_severityCoding = v17;

    manifestationCodingCollections = [(HKAllergyReaction *)v12 manifestationCodingCollections];
    v20 = [manifestationCodingCollections hk_map:&__block_literal_global_31];
    manifestations = v12->_manifestations;
    v12->_manifestations = v20;

    if (v12->_severityCoding)
    {
      severityCodingCollection = [(HKAllergyReaction *)v12 severityCodingCollection];
      v23 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:severityCodingCollection];
      severity = v12->_severity;
      v12->_severity = v23;
    }
  }

  return v12;
}

id __75__HKAllergyReaction_initWithManifestationCodings_onsetDate_severityCoding___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  manifestationCodings = [(HKAllergyReaction *)self manifestationCodings];
  manifestations = [(HKAllergyReaction *)self manifestations];
  severityCoding = [(HKAllergyReaction *)self severityCoding];
  severity = [(HKAllergyReaction *)self severity];
  v10 = [v3 stringWithFormat:@"<%@:%p manifestationCodings = %@, manifestations = %@, severityCoding = %@, severity = %@>", v5, self, manifestationCodings, manifestations, severityCoding, severity, 0];

  return v10;
}

- (HKAllergyReaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = HKAllergyReaction;
  v5 = [(HKAllergyReaction *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ManifestationCodings"];
    manifestationCodings = v5->_manifestationCodings;
    v5->_manifestationCodings = v9;

    if (!v5->_manifestationCodings)
    {
      v20 = 0;
      goto LABEL_6;
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OnsetDate"];
    onsetDate = v5->_onsetDate;
    v5->_onsetDate = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SeverityCoding"];
    severityCoding = v5->_severityCoding;
    v5->_severityCoding = v13;

    v15 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"Manifestations"];
    manifestations = v5->_manifestations;
    v5->_manifestations = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Severity"];
    severity = v5->_severity;
    v5->_severity = v18;
  }

  v20 = v5;
LABEL_6:

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  manifestationCodings = [(HKAllergyReaction *)self manifestationCodings];
  [coderCopy encodeObject:manifestationCodings forKey:@"ManifestationCodings"];

  onsetDate = [(HKAllergyReaction *)self onsetDate];
  [coderCopy encodeObject:onsetDate forKey:@"OnsetDate"];

  severityCoding = [(HKAllergyReaction *)self severityCoding];
  [coderCopy encodeObject:severityCoding forKey:@"SeverityCoding"];

  manifestations = [(HKAllergyReaction *)self manifestations];
  [coderCopy encodeObject:manifestations forKey:@"Manifestations"];

  severity = [(HKAllergyReaction *)self severity];
  [coderCopy encodeObject:severity forKey:@"Severity"];
}

- (HKMedicalCodingCollection)severityCodingCollection
{
  severityCoding = [(HKAllergyReaction *)self severityCoding];

  if (severityCoding)
  {
    severityCoding2 = [(HKAllergyReaction *)self severityCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:severityCoding2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)manifestationCodingCollections
{
  manifestationCodings = [(HKAllergyReaction *)self manifestationCodings];
  v3 = [manifestationCodings hk_map:&__block_literal_global_58];

  return v3;
}

- (NSArray)manifestations
{
  manifestations = self->_manifestations;
  if (manifestations)
  {
    v3 = manifestations;
  }

  else
  {
    manifestationCodingCollections = [(HKAllergyReaction *)self manifestationCodingCollections];
    v3 = [manifestationCodingCollections hk_map:&__block_literal_global_60_1];
  }

  return v3;
}

- (HKConcept)severity
{
  if (self->_severityCoding)
  {
    severity = self->_severity;
    if (severity)
    {
      v3 = severity;
    }

    else
    {
      severityCodingCollection = [(HKAllergyReaction *)self severityCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:severityCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)hash
{
  manifestationCodings = [(HKAllergyReaction *)self manifestationCodings];
  v4 = [manifestationCodings hash];
  onsetDate = [(HKAllergyReaction *)self onsetDate];
  v6 = [onsetDate hash] ^ v4;
  severityCoding = [(HKAllergyReaction *)self severityCoding];
  v8 = [severityCoding hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      manifestationCodings = [(HKAllergyReaction *)self manifestationCodings];
      manifestationCodings2 = [(HKAllergyReaction *)v5 manifestationCodings];
      v8 = manifestationCodings2;
      if (manifestationCodings == manifestationCodings2)
      {
      }

      else
      {
        manifestationCodings3 = [(HKAllergyReaction *)v5 manifestationCodings];
        if (!manifestationCodings3)
        {
          goto LABEL_29;
        }

        v10 = manifestationCodings3;
        manifestationCodings4 = [(HKAllergyReaction *)self manifestationCodings];
        manifestationCodings5 = [(HKAllergyReaction *)v5 manifestationCodings];
        v13 = [manifestationCodings4 isEqual:manifestationCodings5];

        if (!v13)
        {
          goto LABEL_30;
        }
      }

      manifestationCodings = [(HKAllergyReaction *)self onsetDate];
      onsetDate = [(HKAllergyReaction *)v5 onsetDate];
      v8 = onsetDate;
      if (manifestationCodings == onsetDate)
      {
      }

      else
      {
        onsetDate2 = [(HKAllergyReaction *)v5 onsetDate];
        if (!onsetDate2)
        {
          goto LABEL_29;
        }

        v17 = onsetDate2;
        onsetDate3 = [(HKAllergyReaction *)self onsetDate];
        onsetDate4 = [(HKAllergyReaction *)v5 onsetDate];
        v20 = [onsetDate3 isEqual:onsetDate4];

        if (!v20)
        {
          goto LABEL_30;
        }
      }

      manifestationCodings = [(HKAllergyReaction *)self severityCoding];
      severityCoding = [(HKAllergyReaction *)v5 severityCoding];
      v8 = severityCoding;
      if (manifestationCodings == severityCoding)
      {
      }

      else
      {
        severityCoding2 = [(HKAllergyReaction *)v5 severityCoding];
        if (!severityCoding2)
        {
          goto LABEL_29;
        }

        v23 = severityCoding2;
        severityCoding3 = [(HKAllergyReaction *)self severityCoding];
        severityCoding4 = [(HKAllergyReaction *)v5 severityCoding];
        v26 = [severityCoding3 isEqual:severityCoding4];

        if (!v26)
        {
          goto LABEL_30;
        }
      }

      manifestationCodings = [(HKAllergyReaction *)self manifestations];
      manifestations = [(HKAllergyReaction *)v5 manifestations];
      v8 = manifestations;
      if (manifestationCodings == manifestations)
      {
      }

      else
      {
        manifestations2 = [(HKAllergyReaction *)v5 manifestations];
        if (!manifestations2)
        {
          goto LABEL_29;
        }

        v29 = manifestations2;
        manifestations3 = [(HKAllergyReaction *)self manifestations];
        manifestations4 = [(HKAllergyReaction *)v5 manifestations];
        v32 = [manifestations3 isEqualToArray:manifestations4];

        if (!v32)
        {
          goto LABEL_30;
        }
      }

      manifestationCodings = [(HKAllergyReaction *)self severity];
      severity = [(HKAllergyReaction *)v5 severity];
      v8 = severity;
      if (manifestationCodings == severity)
      {

LABEL_34:
        v14 = 1;
        goto LABEL_31;
      }

      severity2 = [(HKAllergyReaction *)v5 severity];
      if (severity2)
      {
        v35 = severity2;
        severity3 = [(HKAllergyReaction *)self severity];
        severity4 = [(HKAllergyReaction *)v5 severity];
        v38 = [severity3 isEqual:severity4];

        if (v38)
        {
          goto LABEL_34;
        }

LABEL_30:
        v14 = 0;
LABEL_31:

        goto LABEL_32;
      }

LABEL_29:

      goto LABEL_30;
    }

    v14 = 0;
  }

LABEL_32:

  return v14;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy isEqualToString:@"manifestations"])
  {
    manifestationCodingCollections = [(HKAllergyReaction *)self manifestationCodingCollections];
    v8 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:manifestationCodingCollections context:pathCopy error:error];
LABEL_6:

    goto LABEL_9;
  }

  if ([pathCopy isEqualToString:@"severity"])
  {
    if (self->_severityCoding)
    {
      manifestationCodingCollections = [HKMedicalCodingCollection collectionWithCoding:?];
      v9 = [HKIndexableObject indexableObjectWithObject:manifestationCodingCollections];
      v12[0] = v9;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

      goto LABEL_6;
    }

    v8 = MEMORY[0x1E695E0F0];
  }

  else
  {
    [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
    v8 = 0;
  }

LABEL_9:

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  pathCopy = path;
  if ([pathCopy isEqualToString:@"severity"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], self->_severityCoding != 0, pathCopy, error))
    {
      firstObject = [conceptsCopy firstObject];
      object = [firstObject object];
      v12 = [object copy];
      severity = self->_severity;
      self->_severity = v12;

      v14 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  if (![pathCopy isEqualToString:@"manifestations"])
  {
    [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
    goto LABEL_9;
  }

  v15 = [HKConceptIndexUtilities conceptsForIndexedConcepts:conceptsCopy expectedCount:[(NSArray *)self->_manifestationCodings count] context:pathCopy error:error];
  v14 = v15 != 0;
  if (v15)
  {
    objc_storeStrong(&self->_manifestations, v15);
  }

LABEL_10:
  return v14;
}

- (void)initWithManifestationCodings:(uint64_t)a1 onsetDate:(uint64_t)a2 severityCoding:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKAllergyReaction.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"manifestationCodings"}];
}

- (void)initWithManifestationCodings:(uint64_t)a1 onsetDate:(uint64_t)a2 severityCoding:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKAllergyReaction.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"[manifestationCodings count] > 0"}];
}

@end