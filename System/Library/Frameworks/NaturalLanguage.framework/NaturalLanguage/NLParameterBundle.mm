@interface NLParameterBundle
+ (id)parameterBundleWithContentsOfURL:(id)a3 error:(id *)a4;
+ (id)parameterBundleWithParameters:(id)a3 values:(id)a4 metadata:(id)a5;
- (BOOL)getContinuousParameterValueForName:(id)a3 value:(double *)a4;
- (BOOL)getIntegralParameterValueForName:(id)a3 value:(int64_t *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (NLParameterBundle)initWithCoder:(id)a3;
- (NLParameterBundle)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (NLParameterBundle)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (NLParameterBundle)initWithParameters:(id)a3 values:(id)a4 metadata:(id)a5;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (id)parameterForName:(id)a3;
- (id)parameterValueForName:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NLParameterBundle

+ (id)parameterBundleWithParameters:(id)a3 values:(id)a4 metadata:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithParameters:v10 values:v9 metadata:v8];

  return v11;
}

+ (id)parameterBundleWithContentsOfURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithContentsOfURL:v6 error:a4];

  return v7;
}

- (NLParameterBundle)initWithParameters:(id)a3 values:(id)a4 metadata:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38.receiver = self;
  v38.super_class = NLParameterBundle;
  v11 = [(NLParameterBundle *)&v38 init];
  if (v11)
  {
    v32 = v9;
    v12 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = v8;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          v19 = [v18 name];
          v20 = [(NSArray *)v12 containsObject:v19];

          if (!v20)
          {
            v21 = [v18 name];
            [(NSArray *)v12 addObject:v21];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }

    v22 = [v13 copy];
    parameters = v11->_parameters;
    v11->_parameters = v22;

    parameterNames = v11->_parameterNames;
    v11->_parameterNames = v12;
    v25 = v12;

    v9 = v32;
    v26 = [v32 copy];
    parameterValues = v11->_parameterValues;
    v11->_parameterValues = v26;

    v28 = [v10 copy];
    metadata = v11->_metadata;
    v11->_metadata = v28;

    v8 = v33;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v11;
}

- (NSDictionary)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NLParameterBundle *)self parameters];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) _dictionaryRepresentation];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v20[0] = v3;
  v19[0] = @"Parameters";
  v19[1] = @"ParameterValues";
  v10 = [(NLParameterBundle *)self parameterValues];
  v20[1] = v10;
  v19[2] = @"Metadata";
  v11 = [(NLParameterBundle *)self metadata];
  v20[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (NLParameterBundle)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKey:@"Parameters"];
    v8 = [v6 objectForKey:@"ParameterValues"];
    v9 = [v6 objectForKey:@"Metadata"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v9)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = v9;
                v22 = [MEMORY[0x1E695DF70] array];
                v23 = 0u;
                v24 = 0u;
                v25 = 0u;
                v26 = 0u;
                v10 = v7;
                v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
                if (v11)
                {
                  v12 = v11;
                  v13 = *v24;
                  while (2)
                  {
                    v14 = 0;
                    do
                    {
                      if (*v24 != v13)
                      {
                        objc_enumerationMutation(v10);
                      }

                      v15 = [[NLParameter alloc] _initWithDictionaryRepresentation:*(*(&v23 + 1) + 8 * v14) error:0];
                      if (!v15)
                      {

                        v9 = v21;
                        goto LABEL_18;
                      }

                      v16 = v15;
                      [v22 addObject:v15];

                      ++v14;
                    }

                    while (v12 != v14);
                    v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
                    if (v12)
                    {
                      continue;
                    }

                    break;
                  }
                }

                self = [(NLParameterBundle *)self initWithParameters:v22 values:v8 metadata:v21];
                v17 = self;
                goto LABEL_21;
              }
            }
          }
        }
      }
    }

LABEL_18:
  }

  if (!a4)
  {
    v17 = 0;
    goto LABEL_23;
  }

  v18 = MEMORY[0x1E696ABC0];
  v27 = *MEMORY[0x1E696A578];
  v28 = @"Invalid parameter bundle";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  [v18 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v10];
  *a4 = v17 = 0;
LABEL_21:

LABEL_23:
  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (NLParameterBundle)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:0 error:a4];
  if (v6 && ([MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:a4], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    self = [(NLParameterBundle *)self initWithDictionaryRepresentation:v7 error:a4];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NLParameterBundle *)self dictionaryRepresentation];
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 writeToURL:v6 options:1 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(NLParameterBundle *)self parameters];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = MEMORY[0x1E696AEC0];
        v10 = [v8 _shortDescription];
        v11 = [v8 name];
        v12 = [(NLParameterBundle *)self parameterValueForName:v11];
        v13 = [v9 stringWithFormat:@"%@ = %@", v10, v12];

        [v3 addObject:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v14 = MEMORY[0x1E696AEC0];
  v21.receiver = self;
  v21.super_class = NLParameterBundle;
  v15 = [(NLParameterBundle *)&v21 description];
  v16 = [v3 componentsJoinedByString:{@", "}];
  v17 = [v14 stringWithFormat:@"%@(%@)", v15, v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NLParameterBundle *)self parameters];
  v4 = [v3 hash];
  v5 = [(NLParameterBundle *)self parameterValues];
  v6 = [v5 hash] ^ v4;
  v7 = [(NLParameterBundle *)self metadata];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    goto LABEL_7;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v6 = [(NLParameterBundle *)self parameters];
  v7 = [(NLParameterBundle *)v5 parameters];
  if (![v6 isEqual:v7])
  {
LABEL_9:

    goto LABEL_10;
  }

  v8 = [(NLParameterBundle *)self parameterValues];
  v9 = [(NLParameterBundle *)v5 parameterValues];
  if (![v8 isEqual:v9])
  {

    goto LABEL_9;
  }

  v10 = [(NLParameterBundle *)self metadata];
  v11 = [(NLParameterBundle *)v5 metadata];
  v12 = [v10 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v13 = 1;
LABEL_11:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  if (([v8 allowsKeyedCoding] & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLParameter requires keyed coding" userInfo:0];
    objc_exception_throw(v7);
  }

  v4 = [(NLParameterBundle *)self parameters];
  [v8 encodeObject:v4 forKey:@"NLParameters"];

  v5 = [(NLParameterBundle *)self parameterValues];
  [v8 encodeObject:v5 forKey:@"NLParameterValues"];

  v6 = [(NLParameterBundle *)self metadata];
  [v8 encodeObject:v6 forKey:@"NLMetadata"];
}

- (NLParameterBundle)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLParameter requires keyed coding" userInfo:0];
    objc_exception_throw(v11);
  }

  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"NLParameters"];
  v6 = objc_opt_class();
  v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"NLParameterValues"];
  v8 = [v4 decodePropertyListForKey:@"NLMetadata"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v8 = 0;
    }
  }

  v9 = [(NLParameterBundle *)self initWithParameters:v5 values:v7 metadata:v8];

  return v9;
}

- (id)parameterForName:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NLParameterBundle *)self parameters];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)parameterValueForName:(id)a3
{
  v4 = a3;
  v5 = [(NLParameterBundle *)self parameterForName:v4];
  if (v5)
  {
    v6 = [(NLParameterBundle *)self parameterValues];
    v7 = [v6 objectForKey:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)getContinuousParameterValueForName:(id)a3 value:(double *)a4
{
  v6 = a3;
  v7 = [(NLParameterBundle *)self parameterForName:v6];
  v8 = v7;
  if (v7 && ![v7 parameterType])
  {
    v10 = [(NLParameterBundle *)self parameterValueForName:v6];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (a4)
      {
        [v10 doubleValue];
        *a4 = v11;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)getIntegralParameterValueForName:(id)a3 value:(int64_t *)a4
{
  v6 = a3;
  v7 = [(NLParameterBundle *)self parameterForName:v6];
  v8 = v7;
  if (v7 && [v7 parameterType] == 1)
  {
    v9 = [(NLParameterBundle *)self parameterValueForName:v6];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (a4)
      {
        *a4 = [v9 integerValue];
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end