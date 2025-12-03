@interface HKCodedValueCollection
+ (id)codedValueCollectionWithCodedValues:(id)values;
+ (id)indexableKeyPathsWithPrefix:(id)prefix;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKCodedValueCollection)init;
- (HKCodedValueCollection)initWithCodedValues:(id)values;
- (HKCodedValueCollection)initWithCoder:(id)coder;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCodedValueCollection

+ (id)indexableKeyPathsWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  v4 = [HKCodedValue indexableKeyPathsWithPrefix:@"codedValues"];
  v5 = [HKConceptIndexUtilities keyPaths:v4 prefix:prefixCopy];

  return v5;
}

+ (id)codedValueCollectionWithCodedValues:(id)values
{
  valuesCopy = values;
  v5 = [[self alloc] initWithCodedValues:valuesCopy];

  return v5;
}

- (HKCodedValueCollection)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKCodedValueCollection)initWithCodedValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = HKCodedValueCollection;
  v5 = [(HKCodedValueCollection *)&v9 init];
  if (v5)
  {
    v6 = [valuesCopy copy];
    codedValues = v5->_codedValues;
    v5->_codedValues = v6;
  }

  return v5;
}

- (HKCodedValueCollection)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKCodedValueCollection;
  v5 = [(HKCodedValueCollection *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"CodedValues"];
    codedValues = v5->_codedValues;
    v5->_codedValues = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codedValues = [(HKCodedValueCollection *)self codedValues];
  [coderCopy encodeObject:codedValues forKey:@"CodedValues"];
}

- (unint64_t)hash
{
  codedValues = [(HKCodedValueCollection *)self codedValues];
  v3 = [codedValues hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      codedValues = [(HKCodedValueCollection *)self codedValues];
      codedValues2 = [(HKCodedValueCollection *)v5 codedValues];
      if (codedValues == codedValues2)
      {
        v11 = 1;
      }

      else
      {
        codedValues3 = [(HKCodedValueCollection *)v5 codedValues];
        if (codedValues3)
        {
          codedValues4 = [(HKCodedValueCollection *)self codedValues];
          codedValues5 = [(HKCodedValueCollection *)v5 codedValues];
          v11 = [codedValues4 isEqual:codedValues5];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v8 = v7;
  if (v7)
  {
    if ([v7 isEqualToString:@"codedValues"])
    {
      if (self->_codedValues)
      {
        v9 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:pathCopy error:error];
        if (v9)
        {
          v10 = [(NSArray *)self->_codedValues codingsForKeyPath:v9 error:error];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = MEMORY[0x1E695E0F0];
      }

      goto LABEL_11;
    }

    [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  pathCopy = path;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  if (![v10 isEqualToString:@"codedValues"])
  {
    [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
LABEL_7:
    v15 = 0;
    goto LABEL_12;
  }

  v12 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:pathCopy error:error];
  if (v12)
  {
    codedValues = self->_codedValues;
    if (codedValues)
    {
      v14 = [(NSArray *)codedValues applyConcepts:conceptsCopy forKeyPath:v12 error:error];
    }

    else
    {
      v14 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 0, pathCopy, error);
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_12:
  return v15;
}

@end