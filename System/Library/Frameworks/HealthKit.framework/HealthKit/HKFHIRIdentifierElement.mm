@interface HKFHIRIdentifierElement
+ (id)identifierWithTypeCodings:(id)codings value:(id)value;
+ (id)indexableKeyPathsWithPrefix:(id)prefix;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKConcept)type;
- (HKFHIRIdentifierElement)init;
- (HKFHIRIdentifierElement)initWithCoder:(id)coder;
- (HKFHIRIdentifierElement)initWithTypeCodings:(id)codings value:(id)value;
- (HKMedicalCodingCollection)typeCodingCollection;
- (NSString)description;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (unint64_t)hash;
- (void)_setType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFHIRIdentifierElement

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

+ (id)identifierWithTypeCodings:(id)codings value:(id)value
{
  valueCopy = value;
  codingsCopy = codings;
  v8 = [[self alloc] initWithTypeCodings:codingsCopy value:valueCopy];

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

- (HKFHIRIdentifierElement)initWithTypeCodings:(id)codings value:(id)value
{
  codingsCopy = codings;
  valueCopy = value;
  if (!codingsCopy)
  {
    [HKFHIRIdentifierElement initWithTypeCodings:a2 value:self];
  }

  if (![codingsCopy count])
  {
    [HKFHIRIdentifierElement initWithTypeCodings:a2 value:self];
  }

  v18.receiver = self;
  v18.super_class = HKFHIRIdentifierElement;
  v9 = [(HKFHIRIdentifierElement *)&v18 init];
  if (v9)
  {
    v10 = [codingsCopy copy];
    typeCodings = v9->_typeCodings;
    v9->_typeCodings = v10;

    v12 = [valueCopy copy];
    value = v9->_value;
    v9->_value = v12;

    if (v9->_typeCodings)
    {
      typeCodingCollection = [(HKFHIRIdentifierElement *)v9 typeCodingCollection];
      v15 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:typeCodingCollection];
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
  typeCodings = [(HKFHIRIdentifierElement *)self typeCodings];
  type = [(HKFHIRIdentifierElement *)self type];
  value = [(HKFHIRIdentifierElement *)self value];
  v9 = [v3 stringWithFormat:@"<%@:%p typeCoding = %@, type = %@, value = %@>", v5, self, typeCodings, type, value, 0];

  return v9;
}

- (HKFHIRIdentifierElement)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"TypeCodings"];
    typeCodings = v5->_typeCodings;
    v5->_typeCodings = v9;

    if (!v5->_typeCodings)
    {
      v15 = 0;
      goto LABEL_6;
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Type"];
    type = v5->_type;
    v5->_type = v13;
  }

  v15 = v5;
LABEL_6:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  typeCodings = [(HKFHIRIdentifierElement *)self typeCodings];
  [coderCopy encodeObject:typeCodings forKey:@"TypeCodings"];

  value = [(HKFHIRIdentifierElement *)self value];
  [coderCopy encodeObject:value forKey:@"Value"];

  type = [(HKFHIRIdentifierElement *)self type];
  [coderCopy encodeObject:type forKey:@"Type"];
}

- (HKMedicalCodingCollection)typeCodingCollection
{
  typeCodings = [(HKFHIRIdentifierElement *)self typeCodings];
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
    typeCodingCollection = [(HKFHIRIdentifierElement *)self typeCodingCollection];
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
  typeCodings = [(HKFHIRIdentifierElement *)self typeCodings];
  v4 = [typeCodings hash];
  value = [(HKFHIRIdentifierElement *)self value];
  v6 = [value hash];

  return v6 ^ v4;
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
      typeCodings = [(HKFHIRIdentifierElement *)self typeCodings];
      typeCodings2 = [(HKFHIRIdentifierElement *)v5 typeCodings];
      v8 = typeCodings2;
      if (typeCodings == typeCodings2)
      {
      }

      else
      {
        typeCodings3 = [(HKFHIRIdentifierElement *)v5 typeCodings];
        if (!typeCodings3)
        {
          goto LABEL_14;
        }

        v10 = typeCodings3;
        typeCodings4 = [(HKFHIRIdentifierElement *)self typeCodings];
        typeCodings5 = [(HKFHIRIdentifierElement *)v5 typeCodings];
        v13 = [typeCodings4 isEqual:typeCodings5];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      typeCodings = [(HKFHIRIdentifierElement *)self value];
      value = [(HKFHIRIdentifierElement *)v5 value];
      v8 = value;
      if (typeCodings == value)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      value2 = [(HKFHIRIdentifierElement *)v5 value];
      if (value2)
      {
        v17 = value2;
        value3 = [(HKFHIRIdentifierElement *)self value];
        value4 = [(HKFHIRIdentifierElement *)v5 value];
        v20 = [value3 isEqualToString:value4];

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