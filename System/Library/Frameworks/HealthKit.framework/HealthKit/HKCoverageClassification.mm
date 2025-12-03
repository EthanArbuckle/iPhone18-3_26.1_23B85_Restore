@interface HKCoverageClassification
+ (id)coverageClassificationWithTypeCodings:(id)codings value:(id)value name:(id)name;
+ (id)indexableKeyPathsWithPrefix:(id)prefix;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKConcept)type;
- (HKCoverageClassification)init;
- (HKCoverageClassification)initWithCoder:(id)coder;
- (HKCoverageClassification)initWithTypeCodings:(id)codings value:(id)value name:(id)name;
- (HKMedicalCodingCollection)typeCodingCollection;
- (NSString)description;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (unint64_t)hash;
- (void)_setType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCoverageClassification

+ (id)indexableKeyPathsWithPrefix:(id)prefix
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = @"type";
  v3 = MEMORY[0x1E695DEC8];
  prefixCopy = prefix;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [HKConceptIndexUtilities keyPaths:v5 prefix:prefixCopy, v9, v10];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)coverageClassificationWithTypeCodings:(id)codings value:(id)value name:(id)name
{
  nameCopy = name;
  valueCopy = value;
  codingsCopy = codings;
  v11 = [[self alloc] initWithTypeCodings:codingsCopy value:valueCopy name:nameCopy];

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

- (HKCoverageClassification)initWithTypeCodings:(id)codings value:(id)value name:(id)name
{
  codingsCopy = codings;
  valueCopy = value;
  nameCopy = name;
  if (!codingsCopy)
  {
    [HKCoverageClassification initWithTypeCodings:a2 value:self name:?];
  }

  if (![codingsCopy count])
  {
    [HKCoverageClassification initWithTypeCodings:a2 value:self name:?];
  }

  v23.receiver = self;
  v23.super_class = HKCoverageClassification;
  v12 = [(HKCoverageClassification *)&v23 init];
  if (v12)
  {
    v13 = [codingsCopy copy];
    typeCodings = v12->_typeCodings;
    v12->_typeCodings = v13;

    v15 = [valueCopy copy];
    value = v12->_value;
    v12->_value = v15;

    v17 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v17;

    if (v12->_typeCodings)
    {
      typeCodingCollection = [(HKCoverageClassification *)v12 typeCodingCollection];
      v20 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:typeCodingCollection];
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
  typeCodings = [(HKCoverageClassification *)self typeCodings];
  type = [(HKCoverageClassification *)self type];
  value = [(HKCoverageClassification *)self value];
  name = [(HKCoverageClassification *)self name];
  v10 = [v3 stringWithFormat:@"<%@:%p typeCoding = %@, type = %@, value = %@, name = %@>", v5, self, typeCodings, type, value, name, 0];

  return v10;
}

- (HKCoverageClassification)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"TypeCodings"];
    typeCodings = v5->_typeCodings;
    v5->_typeCodings = v9;

    if (!v5->_typeCodings)
    {
      v17 = 0;
      goto LABEL_6;
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v5->_name;
    v5->_name = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Type"];
    type = v5->_type;
    v5->_type = v15;
  }

  v17 = v5;
LABEL_6:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  typeCodings = [(HKCoverageClassification *)self typeCodings];
  [coderCopy encodeObject:typeCodings forKey:@"TypeCodings"];

  value = [(HKCoverageClassification *)self value];
  [coderCopy encodeObject:value forKey:@"Value"];

  name = [(HKCoverageClassification *)self name];
  [coderCopy encodeObject:name forKey:@"Name"];

  type = [(HKCoverageClassification *)self type];
  [coderCopy encodeObject:type forKey:@"Type"];
}

- (HKMedicalCodingCollection)typeCodingCollection
{
  typeCodings = [(HKCoverageClassification *)self typeCodings];
  v3 = [HKMedicalCodingCollection collectionWithCodings:typeCodings];

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
    typeCodingCollection = [(HKCoverageClassification *)self typeCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:typeCodingCollection];
  }

  return v3;
}

- (void)_setType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKFHIRIdentifierElement _setType:v5];
    }
  }

  v6 = [typeCopy copy];
  type = self->_type;
  self->_type = v6;
}

- (unint64_t)hash
{
  typeCodings = [(HKCoverageClassification *)self typeCodings];
  v4 = [typeCodings hash];
  value = [(HKCoverageClassification *)self value];
  v6 = [value hash] ^ v4;
  name = [(HKCoverageClassification *)self name];
  v8 = [name hash];

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
      typeCodings = [(HKCoverageClassification *)self typeCodings];
      typeCodings2 = [(HKCoverageClassification *)v5 typeCodings];
      v8 = typeCodings2;
      if (typeCodings == typeCodings2)
      {
      }

      else
      {
        typeCodings3 = [(HKCoverageClassification *)v5 typeCodings];
        if (!typeCodings3)
        {
          goto LABEL_19;
        }

        v10 = typeCodings3;
        typeCodings4 = [(HKCoverageClassification *)self typeCodings];
        typeCodings5 = [(HKCoverageClassification *)v5 typeCodings];
        v13 = [typeCodings4 isEqual:typeCodings5];

        if (!v13)
        {
          goto LABEL_20;
        }
      }

      typeCodings = [(HKCoverageClassification *)self value];
      value = [(HKCoverageClassification *)v5 value];
      v8 = value;
      if (typeCodings == value)
      {
      }

      else
      {
        value2 = [(HKCoverageClassification *)v5 value];
        if (!value2)
        {
          goto LABEL_19;
        }

        v17 = value2;
        value3 = [(HKCoverageClassification *)self value];
        value4 = [(HKCoverageClassification *)v5 value];
        v20 = [value3 isEqualToString:value4];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      typeCodings = [(HKCoverageClassification *)self name];
      name = [(HKCoverageClassification *)v5 name];
      v8 = name;
      if (typeCodings == name)
      {

LABEL_24:
        v14 = 1;
        goto LABEL_21;
      }

      name2 = [(HKCoverageClassification *)v5 name];
      if (name2)
      {
        v23 = name2;
        name3 = [(HKCoverageClassification *)self name];
        name4 = [(HKCoverageClassification *)v5 name];
        v26 = [name3 isEqualToString:name4];

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

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy isEqualToString:@"type"])
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
    [v10 hk_assignError:error code:3 format:{@"%@ does not support codings for key path %@", v12, pathCopy}];

    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  pathCopy = path;
  v10 = [pathCopy isEqualToString:@"type"];
  if (v10)
  {
    v11 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], self->_typeCodings != 0, pathCopy, error);

    if (!v11)
    {
      LOBYTE(v10) = 0;
      goto LABEL_7;
    }

    firstObject = [conceptsCopy firstObject];
    pathCopy = [firstObject object];
    v13 = [pathCopy copy];
    type = self->_type;
    self->_type = v13;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = objc_opt_class();
    firstObject = NSStringFromClass(v16);
    [v15 hk_assignError:error code:3 format:{@"%@ does not support restoring concepts for key path %@", firstObject, pathCopy}];
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