@interface HKCoverageClassification
+ (id)coverageClassificationWithTypeCodings:(id)a3 value:(id)a4 name:(id)a5;
+ (id)indexableKeyPathsWithPrefix:(id)a3;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (HKConcept)type;
- (HKCoverageClassification)init;
- (HKCoverageClassification)initWithCoder:(id)a3;
- (HKCoverageClassification)initWithTypeCodings:(id)a3 value:(id)a4 name:(id)a5;
- (HKMedicalCodingCollection)typeCodingCollection;
- (NSString)description;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)_setType:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCoverageClassification

+ (id)indexableKeyPathsWithPrefix:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = @"type";
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [HKConceptIndexUtilities keyPaths:v5 prefix:v4, v9, v10];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)coverageClassificationWithTypeCodings:(id)a3 value:(id)a4 name:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithTypeCodings:v10 value:v9 name:v8];

  return v11;
}

- (HKCoverageClassification)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKCoverageClassification)initWithTypeCodings:(id)a3 value:(id)a4 name:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [HKCoverageClassification initWithTypeCodings:a2 value:self name:?];
  }

  if (![v9 count])
  {
    [HKCoverageClassification initWithTypeCodings:a2 value:self name:?];
  }

  v23.receiver = self;
  v23.super_class = HKCoverageClassification;
  v12 = [(HKCoverageClassification *)&v23 init];
  if (v12)
  {
    v13 = [v9 copy];
    typeCodings = v12->_typeCodings;
    v12->_typeCodings = v13;

    v15 = [v10 copy];
    value = v12->_value;
    v12->_value = v15;

    v17 = [v11 copy];
    name = v12->_name;
    v12->_name = v17;

    if (v12->_typeCodings)
    {
      v19 = [(HKCoverageClassification *)v12 typeCodingCollection];
      v20 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v19];
      type = v12->_type;
      v12->_type = v20;
    }
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HKCoverageClassification *)self typeCodings];
  v7 = [(HKCoverageClassification *)self type];
  v8 = [(HKCoverageClassification *)self value];
  v9 = [(HKCoverageClassification *)self name];
  v10 = [v3 stringWithFormat:@"<%@:%p typeCoding = %@, type = %@, value = %@, name = %@>", v5, self, v6, v7, v8, v9, 0];

  return v10;
}

- (HKCoverageClassification)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HKCoverageClassification;
  v5 = [(HKCoverageClassification *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"TypeCodings"];
    typeCodings = v5->_typeCodings;
    v5->_typeCodings = v9;

    if (!v5->_typeCodings)
    {
      v17 = 0;
      goto LABEL_6;
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v5->_name;
    v5->_name = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Type"];
    type = v5->_type;
    v5->_type = v15;
  }

  v17 = v5;
LABEL_6:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKCoverageClassification *)self typeCodings];
  [v4 encodeObject:v5 forKey:@"TypeCodings"];

  v6 = [(HKCoverageClassification *)self value];
  [v4 encodeObject:v6 forKey:@"Value"];

  v7 = [(HKCoverageClassification *)self name];
  [v4 encodeObject:v7 forKey:@"Name"];

  v8 = [(HKCoverageClassification *)self type];
  [v4 encodeObject:v8 forKey:@"Type"];
}

- (HKMedicalCodingCollection)typeCodingCollection
{
  v2 = [(HKCoverageClassification *)self typeCodings];
  v3 = [HKMedicalCodingCollection collectionWithCodings:v2];

  return v3;
}

- (HKConcept)type
{
  type = self->_type;
  if (type)
  {
    v3 = type;
  }

  else
  {
    v4 = [(HKCoverageClassification *)self typeCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
  }

  return v3;
}

- (void)_setType:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKFHIRIdentifierElement _setType:v5];
    }
  }

  v6 = [v4 copy];
  type = self->_type;
  self->_type = v6;
}

- (unint64_t)hash
{
  v3 = [(HKCoverageClassification *)self typeCodings];
  v4 = [v3 hash];
  v5 = [(HKCoverageClassification *)self value];
  v6 = [v5 hash] ^ v4;
  v7 = [(HKCoverageClassification *)self name];
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
      v6 = [(HKCoverageClassification *)self typeCodings];
      v7 = [(HKCoverageClassification *)v5 typeCodings];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKCoverageClassification *)v5 typeCodings];
        if (!v9)
        {
          goto LABEL_19;
        }

        v10 = v9;
        v11 = [(HKCoverageClassification *)self typeCodings];
        v12 = [(HKCoverageClassification *)v5 typeCodings];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_20;
        }
      }

      v6 = [(HKCoverageClassification *)self value];
      v15 = [(HKCoverageClassification *)v5 value];
      v8 = v15;
      if (v6 == v15)
      {
      }

      else
      {
        v16 = [(HKCoverageClassification *)v5 value];
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = v16;
        v18 = [(HKCoverageClassification *)self value];
        v19 = [(HKCoverageClassification *)v5 value];
        v20 = [v18 isEqualToString:v19];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      v6 = [(HKCoverageClassification *)self name];
      v21 = [(HKCoverageClassification *)v5 name];
      v8 = v21;
      if (v6 == v21)
      {

LABEL_24:
        v14 = 1;
        goto LABEL_21;
      }

      v22 = [(HKCoverageClassification *)v5 name];
      if (v22)
      {
        v23 = v22;
        v24 = [(HKCoverageClassification *)self name];
        v25 = [(HKCoverageClassification *)v5 name];
        v26 = [v24 isEqualToString:v25];

        if (v26)
        {
          goto LABEL_24;
        }

LABEL_20:
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }

LABEL_19:

      goto LABEL_20;
    }

    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 isEqualToString:@"type"])
  {
    v7 = [HKMedicalCodingCollection collectionWithCodings:self->_typeCodings];
    v8 = [HKIndexableObject indexableObjectWithObject:v7];
    v15[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 hk_assignError:a4 code:3 format:{@"%@ does not support codings for key path %@", v12, v6}];

    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 isEqualToString:@"type"];
  if (v10)
  {
    v11 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], self->_typeCodings != 0, v9, a5);

    if (!v11)
    {
      LOBYTE(v10) = 0;
      goto LABEL_7;
    }

    v12 = [v8 firstObject];
    v9 = [v12 object];
    v13 = [v9 copy];
    type = self->_type;
    self->_type = v13;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = objc_opt_class();
    v12 = NSStringFromClass(v16);
    [v15 hk_assignError:a5 code:3 format:{@"%@ does not support restoring concepts for key path %@", v12, v9}];
  }

LABEL_7:
  return v10;
}

- (void)initWithTypeCodings:(uint64_t)a1 value:(uint64_t)a2 name:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCoverageClassification.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"typeCodings"}];
}

- (void)initWithTypeCodings:(uint64_t)a1 value:(uint64_t)a2 name:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCoverageClassification.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"[typeCodings count] > 0"}];
}

@end