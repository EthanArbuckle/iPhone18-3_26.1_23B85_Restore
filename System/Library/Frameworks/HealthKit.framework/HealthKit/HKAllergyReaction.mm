@interface HKAllergyReaction
+ (id)allergyReactionWithManifestationCodings:(id)a3 onsetDate:(id)a4 severityCoding:(id)a5;
+ (id)indexableKeyPathsWithPrefix:(id)a3;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (HKAllergyReaction)init;
- (HKAllergyReaction)initWithCoder:(id)a3;
- (HKAllergyReaction)initWithManifestationCodings:(id)a3 onsetDate:(id)a4 severityCoding:(id)a5;
- (HKConcept)severity;
- (HKMedicalCodingCollection)severityCodingCollection;
- (NSArray)manifestationCodingCollections;
- (NSArray)manifestations;
- (NSString)description;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKAllergyReaction

+ (id)indexableKeyPathsWithPrefix:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"manifestations";
  v9[1] = @"severity";
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v9 count:2];
  v6 = [HKConceptIndexUtilities keyPaths:v5 prefix:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)allergyReactionWithManifestationCodings:(id)a3 onsetDate:(id)a4 severityCoding:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithManifestationCodings:v10 onsetDate:v9 severityCoding:v8];

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

- (HKAllergyReaction)initWithManifestationCodings:(id)a3 onsetDate:(id)a4 severityCoding:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [HKAllergyReaction initWithManifestationCodings:a2 onsetDate:self severityCoding:?];
  }

  if (![v9 count])
  {
    [HKAllergyReaction initWithManifestationCodings:a2 onsetDate:self severityCoding:?];
  }

  v26.receiver = self;
  v26.super_class = HKAllergyReaction;
  v12 = [(HKAllergyReaction *)&v26 init];
  if (v12)
  {
    v13 = [v9 hk_map:&__block_literal_global_110];
    manifestationCodings = v12->_manifestationCodings;
    v12->_manifestationCodings = v13;

    v15 = [v10 copy];
    onsetDate = v12->_onsetDate;
    v12->_onsetDate = v15;

    v17 = [v11 copy];
    severityCoding = v12->_severityCoding;
    v12->_severityCoding = v17;

    v19 = [(HKAllergyReaction *)v12 manifestationCodingCollections];
    v20 = [v19 hk_map:&__block_literal_global_31];
    manifestations = v12->_manifestations;
    v12->_manifestations = v20;

    if (v12->_severityCoding)
    {
      v22 = [(HKAllergyReaction *)v12 severityCodingCollection];
      v23 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v22];
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
  v6 = [(HKAllergyReaction *)self manifestationCodings];
  v7 = [(HKAllergyReaction *)self manifestations];
  v8 = [(HKAllergyReaction *)self severityCoding];
  v9 = [(HKAllergyReaction *)self severity];
  v10 = [v3 stringWithFormat:@"<%@:%p manifestationCodings = %@, manifestations = %@, severityCoding = %@, severity = %@>", v5, self, v6, v7, v8, v9, 0];

  return v10;
}

- (HKAllergyReaction)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = HKAllergyReaction;
  v5 = [(HKAllergyReaction *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"ManifestationCodings"];
    manifestationCodings = v5->_manifestationCodings;
    v5->_manifestationCodings = v9;

    if (!v5->_manifestationCodings)
    {
      v20 = 0;
      goto LABEL_6;
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OnsetDate"];
    onsetDate = v5->_onsetDate;
    v5->_onsetDate = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SeverityCoding"];
    severityCoding = v5->_severityCoding;
    v5->_severityCoding = v13;

    v15 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"Manifestations"];
    manifestations = v5->_manifestations;
    v5->_manifestations = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Severity"];
    severity = v5->_severity;
    v5->_severity = v18;
  }

  v20 = v5;
LABEL_6:

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKAllergyReaction *)self manifestationCodings];
  [v4 encodeObject:v5 forKey:@"ManifestationCodings"];

  v6 = [(HKAllergyReaction *)self onsetDate];
  [v4 encodeObject:v6 forKey:@"OnsetDate"];

  v7 = [(HKAllergyReaction *)self severityCoding];
  [v4 encodeObject:v7 forKey:@"SeverityCoding"];

  v8 = [(HKAllergyReaction *)self manifestations];
  [v4 encodeObject:v8 forKey:@"Manifestations"];

  v9 = [(HKAllergyReaction *)self severity];
  [v4 encodeObject:v9 forKey:@"Severity"];
}

- (HKMedicalCodingCollection)severityCodingCollection
{
  v3 = [(HKAllergyReaction *)self severityCoding];

  if (v3)
  {
    v4 = [(HKAllergyReaction *)self severityCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)manifestationCodingCollections
{
  v2 = [(HKAllergyReaction *)self manifestationCodings];
  v3 = [v2 hk_map:&__block_literal_global_58];

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
    v4 = [(HKAllergyReaction *)self manifestationCodingCollections];
    v3 = [v4 hk_map:&__block_literal_global_60_1];
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
      v4 = [(HKAllergyReaction *)self severityCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
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
  v3 = [(HKAllergyReaction *)self manifestationCodings];
  v4 = [v3 hash];
  v5 = [(HKAllergyReaction *)self onsetDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(HKAllergyReaction *)self severityCoding];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKAllergyReaction *)self manifestationCodings];
      v7 = [(HKAllergyReaction *)v5 manifestationCodings];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKAllergyReaction *)v5 manifestationCodings];
        if (!v9)
        {
          goto LABEL_29;
        }

        v10 = v9;
        v11 = [(HKAllergyReaction *)self manifestationCodings];
        v12 = [(HKAllergyReaction *)v5 manifestationCodings];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_30;
        }
      }

      v6 = [(HKAllergyReaction *)self onsetDate];
      v15 = [(HKAllergyReaction *)v5 onsetDate];
      v8 = v15;
      if (v6 == v15)
      {
      }

      else
      {
        v16 = [(HKAllergyReaction *)v5 onsetDate];
        if (!v16)
        {
          goto LABEL_29;
        }

        v17 = v16;
        v18 = [(HKAllergyReaction *)self onsetDate];
        v19 = [(HKAllergyReaction *)v5 onsetDate];
        v20 = [v18 isEqual:v19];

        if (!v20)
        {
          goto LABEL_30;
        }
      }

      v6 = [(HKAllergyReaction *)self severityCoding];
      v21 = [(HKAllergyReaction *)v5 severityCoding];
      v8 = v21;
      if (v6 == v21)
      {
      }

      else
      {
        v22 = [(HKAllergyReaction *)v5 severityCoding];
        if (!v22)
        {
          goto LABEL_29;
        }

        v23 = v22;
        v24 = [(HKAllergyReaction *)self severityCoding];
        v25 = [(HKAllergyReaction *)v5 severityCoding];
        v26 = [v24 isEqual:v25];

        if (!v26)
        {
          goto LABEL_30;
        }
      }

      v6 = [(HKAllergyReaction *)self manifestations];
      v27 = [(HKAllergyReaction *)v5 manifestations];
      v8 = v27;
      if (v6 == v27)
      {
      }

      else
      {
        v28 = [(HKAllergyReaction *)v5 manifestations];
        if (!v28)
        {
          goto LABEL_29;
        }

        v29 = v28;
        v30 = [(HKAllergyReaction *)self manifestations];
        v31 = [(HKAllergyReaction *)v5 manifestations];
        v32 = [v30 isEqualToArray:v31];

        if (!v32)
        {
          goto LABEL_30;
        }
      }

      v6 = [(HKAllergyReaction *)self severity];
      v33 = [(HKAllergyReaction *)v5 severity];
      v8 = v33;
      if (v6 == v33)
      {

LABEL_34:
        v14 = 1;
        goto LABEL_31;
      }

      v34 = [(HKAllergyReaction *)v5 severity];
      if (v34)
      {
        v35 = v34;
        v36 = [(HKAllergyReaction *)self severity];
        v37 = [(HKAllergyReaction *)v5 severity];
        v38 = [v36 isEqual:v37];

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

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 isEqualToString:@"manifestations"])
  {
    v7 = [(HKAllergyReaction *)self manifestationCodingCollections];
    v8 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:v7 context:v6 error:a4];
LABEL_6:

    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"severity"])
  {
    if (self->_severityCoding)
    {
      v7 = [HKMedicalCodingCollection collectionWithCoding:?];
      v9 = [HKIndexableObject indexableObjectWithObject:v7];
      v12[0] = v9;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

      goto LABEL_6;
    }

    v8 = MEMORY[0x1E695E0F0];
  }

  else
  {
    [HKConceptIndexUtilities assignError:a4 forInvalidKeyPath:v6 inClass:objc_opt_class()];
    v8 = 0;
  }

LABEL_9:

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 isEqualToString:@"severity"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], self->_severityCoding != 0, v9, a5))
    {
      v10 = [v8 firstObject];
      v11 = [v10 object];
      v12 = [v11 copy];
      severity = self->_severity;
      self->_severity = v12;

      v14 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  if (![v9 isEqualToString:@"manifestations"])
  {
    [HKConceptIndexUtilities assignError:a5 forInvalidKeyPath:v9 inClass:objc_opt_class()];
    goto LABEL_9;
  }

  v15 = [HKConceptIndexUtilities conceptsForIndexedConcepts:v8 expectedCount:[(NSArray *)self->_manifestationCodings count] context:v9 error:a5];
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