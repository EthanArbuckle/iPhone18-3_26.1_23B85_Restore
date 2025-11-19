@interface HKFHIRIdentifierElement
+ (id)identifierWithTypeCodings:(id)a3 value:(id)a4;
+ (id)indexableKeyPathsWithPrefix:(id)a3;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (HKConcept)type;
- (HKFHIRIdentifierElement)init;
- (HKFHIRIdentifierElement)initWithCoder:(id)a3;
- (HKFHIRIdentifierElement)initWithTypeCodings:(id)a3 value:(id)a4;
- (HKMedicalCodingCollection)typeCodingCollection;
- (NSString)description;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)_setType:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFHIRIdentifierElement

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

+ (id)identifierWithTypeCodings:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTypeCodings:v7 value:v6];

  return v8;
}

- (HKFHIRIdentifierElement)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKFHIRIdentifierElement)initWithTypeCodings:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [HKFHIRIdentifierElement initWithTypeCodings:a2 value:self];
  }

  if (![v7 count])
  {
    [HKFHIRIdentifierElement initWithTypeCodings:a2 value:self];
  }

  v18.receiver = self;
  v18.super_class = HKFHIRIdentifierElement;
  v9 = [(HKFHIRIdentifierElement *)&v18 init];
  if (v9)
  {
    v10 = [v7 copy];
    typeCodings = v9->_typeCodings;
    v9->_typeCodings = v10;

    v12 = [v8 copy];
    value = v9->_value;
    v9->_value = v12;

    if (v9->_typeCodings)
    {
      v14 = [(HKFHIRIdentifierElement *)v9 typeCodingCollection];
      v15 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v14];
      type = v9->_type;
      v9->_type = v15;
    }
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HKFHIRIdentifierElement *)self typeCodings];
  v7 = [(HKFHIRIdentifierElement *)self type];
  v8 = [(HKFHIRIdentifierElement *)self value];
  v9 = [v3 stringWithFormat:@"<%@:%p typeCoding = %@, type = %@, value = %@>", v5, self, v6, v7, v8, 0];

  return v9;
}

- (HKFHIRIdentifierElement)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HKFHIRIdentifierElement;
  v5 = [(HKFHIRIdentifierElement *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"TypeCodings"];
    typeCodings = v5->_typeCodings;
    v5->_typeCodings = v9;

    if (!v5->_typeCodings)
    {
      v15 = 0;
      goto LABEL_6;
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Type"];
    type = v5->_type;
    v5->_type = v13;
  }

  v15 = v5;
LABEL_6:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKFHIRIdentifierElement *)self typeCodings];
  [v4 encodeObject:v5 forKey:@"TypeCodings"];

  v6 = [(HKFHIRIdentifierElement *)self value];
  [v4 encodeObject:v6 forKey:@"Value"];

  v7 = [(HKFHIRIdentifierElement *)self type];
  [v4 encodeObject:v7 forKey:@"Type"];
}

- (HKMedicalCodingCollection)typeCodingCollection
{
  v2 = [(HKFHIRIdentifierElement *)self typeCodings];
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
    v4 = [(HKFHIRIdentifierElement *)self typeCodingCollection];
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
  v3 = [(HKFHIRIdentifierElement *)self typeCodings];
  v4 = [v3 hash];
  v5 = [(HKFHIRIdentifierElement *)self value];
  v6 = [v5 hash];

  return v6 ^ v4;
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
      v6 = [(HKFHIRIdentifierElement *)self typeCodings];
      v7 = [(HKFHIRIdentifierElement *)v5 typeCodings];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKFHIRIdentifierElement *)v5 typeCodings];
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = v9;
        v11 = [(HKFHIRIdentifierElement *)self typeCodings];
        v12 = [(HKFHIRIdentifierElement *)v5 typeCodings];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      v6 = [(HKFHIRIdentifierElement *)self value];
      v15 = [(HKFHIRIdentifierElement *)v5 value];
      v8 = v15;
      if (v6 == v15)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      v16 = [(HKFHIRIdentifierElement *)v5 value];
      if (v16)
      {
        v17 = v16;
        v18 = [(HKFHIRIdentifierElement *)self value];
        v19 = [(HKFHIRIdentifierElement *)v5 value];
        v20 = [v18 isEqualToString:v19];

        if (v20)
        {
          goto LABEL_17;
        }

LABEL_15:
        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_14:

      goto LABEL_15;
    }

    v14 = 0;
  }

LABEL_19:

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

- (void)initWithTypeCodings:(uint64_t)a1 value:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFHIRIdentifierElement.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"typeCodings"}];
}

- (void)initWithTypeCodings:(uint64_t)a1 value:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFHIRIdentifierElement.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"[typeCodings count] > 0"}];
}

@end