@interface NLParameter
+ (id)parameterWithName:(id)a3 type:(int64_t)a4 minimumValue:(double)a5 maximumValue:(double)a6;
- (BOOL)isEqual:(id)a3;
- (NLParameter)initWithCoder:(id)a3;
- (NLParameter)initWithName:(id)a3 type:(int64_t)a4 minimumValue:(double)a5 maximumValue:(double)a6;
- (id)_dictionaryRepresentation;
- (id)_hyperTuneDictionary;
- (id)_initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)_shortDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NLParameter

+ (id)parameterWithName:(id)a3 type:(int64_t)a4 minimumValue:(double)a5 maximumValue:(double)a6
{
  v10 = a3;
  v11 = [[a1 alloc] initWithName:v10 type:a4 minimumValue:a5 maximumValue:a6];

  return v11;
}

- (NLParameter)initWithName:(id)a3 type:(int64_t)a4 minimumValue:(double)a5 maximumValue:(double)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = NLParameter;
  v11 = [(NLParameter *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    name = v11->_name;
    v11->_name = v12;

    v11->_parameterType = a4;
    v11->_minimumValue = a5;
    v11->_maximumValue = a6;
  }

  return v11;
}

- (id)_shortDescription
{
  v3 = [(NLParameter *)self parameterType];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(NLParameter *)self name];
  [(NLParameter *)self minimumValue];
  v7 = v6;
  [(NLParameter *)self maximumValue];
  if (v3)
  {
    [v4 stringWithFormat:@"%@/integral(%lld - %lld)", v5, v7, v8];
  }

  else
  {
    [v4 stringWithFormat:@"%@/continuous(%.3g - %.3g)", v5, *&v7, *&v8];
  }
  v9 = ;

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NLParameter;
  v4 = [(NLParameter *)&v8 description];
  v5 = [(NLParameter *)self _shortDescription];
  v6 = [v3 stringWithFormat:@"%@(%@)", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NLParameter *)self name];
  v4 = [v3 hash];
  v5 = v4 ^ ([(NLParameter *)self parameterType]<< 16);
  [(NLParameter *)self minimumValue];
  v7 = v5 ^ (v6 * 1000.0);
  [(NLParameter *)self maximumValue];
  v9 = (v8 * 1000.0);

  return v7 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    goto LABEL_10;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v6 = [(NLParameter *)self name];
  v7 = [(NLParameter *)v5 name];
  if ([v6 isEqual:v7])
  {
    v8 = [(NLParameter *)self parameterType];
    if (v8 == [(NLParameter *)v5 parameterType])
    {
      [(NLParameter *)self minimumValue];
      v10 = v9;
      [(NLParameter *)v5 minimumValue];
      if (v10 == v11)
      {
        [(NLParameter *)self maximumValue];
        v14 = v13;
        [(NLParameter *)v5 maximumValue];
        v16 = v15;

        if (v14 != v16)
        {
          goto LABEL_8;
        }

LABEL_10:
        v12 = 1;
        goto LABEL_11;
      }
    }
  }

LABEL_8:
  v12 = 0;
LABEL_11:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if (([v6 allowsKeyedCoding] & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLParameter requires keyed coding" userInfo:0];
    objc_exception_throw(v5);
  }

  v4 = [(NLParameter *)self name];
  [v6 encodeObject:v4 forKey:@"NLName"];

  [v6 encodeInteger:-[NLParameter parameterType](self forKey:{"parameterType"), @"NLParameterType"}];
  [(NLParameter *)self minimumValue];
  [v6 encodeDouble:@"NLMinimumValue" forKey:?];
  [(NLParameter *)self maximumValue];
  [v6 encodeDouble:@"NLMaximumValue" forKey:?];
}

- (NLParameter)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLParameter requires keyed coding" userInfo:0];
    objc_exception_throw(v12);
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NLName"];
  v6 = [v4 decodeIntegerForKey:@"NLParameterType"];
  [v4 decodeDoubleForKey:@"NLMinimumValue"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"NLMaximumValue"];
  v10 = [(NLParameter *)self initWithName:v5 type:v6 minimumValue:v8 maximumValue:v9];

  return v10;
}

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [(NLParameter *)self parameterType];
  v4 = @"Integral";
  if (!v3)
  {
    v4 = @"Continuous";
  }

  v14[0] = @"Name";
  v5 = v4;
  v6 = [(NLParameter *)self name];
  v15[0] = v6;
  v15[1] = v5;
  v14[1] = @"ParameterType";
  v14[2] = @"MinimumValue";
  v7 = MEMORY[0x1E696AD98];
  [(NLParameter *)self minimumValue];
  v8 = [v7 numberWithDouble:?];
  v15[2] = v8;
  v14[3] = @"MaximumValue";
  v9 = MEMORY[0x1E696AD98];
  [(NLParameter *)self maximumValue];
  v10 = [v9 numberWithDouble:?];
  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = [v7 objectForKey:@"Name"];
  v9 = [v7 objectForKey:@"ParameterType"];
  v10 = [v7 objectForKey:@"MinimumValue"];
  v11 = [v7 objectForKey:@"MaximumValue"];
  if (v8)
  {
    v4 = 0x1E696A000;
    objc_opt_class();
    v12 = 1;
    if (objc_opt_isKindOfClass())
    {
      if (v9)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (([v9 isEqualToString:@"Continuous"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"Integral")))
        {
          if (v10)
          {
            v4 = 0x1E696A000;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (v11)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v13 = [v9 isEqualToString:@"Continuous"] ^ 1;
                  [v10 doubleValue];
                  v15 = v14;
                  [v11 doubleValue];
                  self = [(NLParameter *)self initWithName:v8 type:v13 minimumValue:v15 maximumValue:v16];
                  v12 = 0;
                  v4 = self;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_15:
    if (a4)
    {
      v17 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"Invalid parameter bundle";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *a4 = [v17 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v18];
    }

    v4 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)_hyperTuneDictionary
{
  v18[5] = *MEMORY[0x1E69E9840];
  v3 = [(NLParameter *)self parameterType];
  v4 = MEMORY[0x1E69B27B8];
  if (v3)
  {
    v4 = MEMORY[0x1E69B27C0];
  }

  v5 = *v4;
  v17[0] = *MEMORY[0x1E69B27B0];
  v6 = v5;
  v7 = [(NLParameter *)self name];
  v8 = *MEMORY[0x1E69B27C8];
  v18[0] = v7;
  v18[1] = v6;
  v9 = *MEMORY[0x1E69B27A8];
  v17[1] = v8;
  v17[2] = v9;
  v10 = MEMORY[0x1E696AD98];
  [(NLParameter *)self minimumValue];
  v11 = [v10 numberWithDouble:?];
  v18[2] = v11;
  v17[3] = *MEMORY[0x1E69B27A0];
  v12 = MEMORY[0x1E696AD98];
  [(NLParameter *)self maximumValue];
  v13 = [v12 numberWithDouble:?];
  v17[4] = *MEMORY[0x1E69B2798];
  v18[3] = v13;
  v18[4] = &unk_1F10D1340;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end