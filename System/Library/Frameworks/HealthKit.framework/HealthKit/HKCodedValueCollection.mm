@interface HKCodedValueCollection
+ (id)codedValueCollectionWithCodedValues:(id)a3;
+ (id)indexableKeyPathsWithPrefix:(id)a3;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (HKCodedValueCollection)init;
- (HKCodedValueCollection)initWithCodedValues:(id)a3;
- (HKCodedValueCollection)initWithCoder:(id)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCodedValueCollection

+ (id)indexableKeyPathsWithPrefix:(id)a3
{
  v3 = a3;
  v4 = [HKCodedValue indexableKeyPathsWithPrefix:@"codedValues"];
  v5 = [HKConceptIndexUtilities keyPaths:v4 prefix:v3];

  return v5;
}

+ (id)codedValueCollectionWithCodedValues:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCodedValues:v4];

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

- (HKCodedValueCollection)initWithCodedValues:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKCodedValueCollection;
  v5 = [(HKCodedValueCollection *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    codedValues = v5->_codedValues;
    v5->_codedValues = v6;
  }

  return v5;
}

- (HKCodedValueCollection)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"CodedValues"];
    codedValues = v5->_codedValues;
    v5->_codedValues = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKCodedValueCollection *)self codedValues];
  [v4 encodeObject:v5 forKey:@"CodedValues"];
}

- (unint64_t)hash
{
  v2 = [(HKCodedValueCollection *)self codedValues];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKCodedValueCollection *)self codedValues];
      v7 = [(HKCodedValueCollection *)v5 codedValues];
      if (v6 == v7)
      {
        v11 = 1;
      }

      else
      {
        v8 = [(HKCodedValueCollection *)v5 codedValues];
        if (v8)
        {
          v9 = [(HKCodedValueCollection *)self codedValues];
          v10 = [(HKCodedValueCollection *)v5 codedValues];
          v11 = [v9 isEqual:v10];
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

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    if ([v7 isEqualToString:@"codedValues"])
    {
      if (self->_codedValues)
      {
        v9 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:v6 error:a4];
        if (v9)
        {
          v10 = [(NSArray *)self->_codedValues codingsForKeyPath:v9 error:a4];
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

    [HKConceptIndexUtilities assignError:a4 forInvalidKeyPath:v6 inClass:objc_opt_class()];
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:v9 error:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  if (![v10 isEqualToString:@"codedValues"])
  {
    [HKConceptIndexUtilities assignError:a5 forInvalidKeyPath:v9 inClass:objc_opt_class()];
LABEL_7:
    v15 = 0;
    goto LABEL_12;
  }

  v12 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:v9 error:a5];
  if (v12)
  {
    codedValues = self->_codedValues;
    if (codedValues)
    {
      v14 = [(NSArray *)codedValues applyConcepts:v8 forKeyPath:v12 error:a5];
    }

    else
    {
      v14 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 0, v9, a5);
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