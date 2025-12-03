@interface NLParameterBundle
+ (id)parameterBundleWithContentsOfURL:(id)l error:(id *)error;
+ (id)parameterBundleWithParameters:(id)parameters values:(id)values metadata:(id)metadata;
- (BOOL)getContinuousParameterValueForName:(id)name value:(double *)value;
- (BOOL)getIntegralParameterValueForName:(id)name value:(int64_t *)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (NLParameterBundle)initWithCoder:(id)coder;
- (NLParameterBundle)initWithContentsOfURL:(id)l error:(id *)error;
- (NLParameterBundle)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (NLParameterBundle)initWithParameters:(id)parameters values:(id)values metadata:(id)metadata;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (id)parameterForName:(id)name;
- (id)parameterValueForName:(id)name;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NLParameterBundle

+ (id)parameterBundleWithParameters:(id)parameters values:(id)values metadata:(id)metadata
{
  metadataCopy = metadata;
  valuesCopy = values;
  parametersCopy = parameters;
  v11 = [[self alloc] initWithParameters:parametersCopy values:valuesCopy metadata:metadataCopy];

  return v11;
}

+ (id)parameterBundleWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [[self alloc] initWithContentsOfURL:lCopy error:error];

  return v7;
}

- (NLParameterBundle)initWithParameters:(id)parameters values:(id)values metadata:(id)metadata
{
  v40 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  valuesCopy = values;
  metadataCopy = metadata;
  v38.receiver = self;
  v38.super_class = NLParameterBundle;
  v11 = [(NLParameterBundle *)&v38 init];
  if (v11)
  {
    v32 = valuesCopy;
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = parametersCopy;
    v13 = parametersCopy;
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
          name = [v18 name];
          v20 = [(NSArray *)array containsObject:name];

          if (!v20)
          {
            name2 = [v18 name];
            [(NSArray *)array addObject:name2];
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
    v11->_parameterNames = array;
    v25 = array;

    valuesCopy = v32;
    v26 = [v32 copy];
    parameterValues = v11->_parameterValues;
    v11->_parameterValues = v26;

    v28 = [metadataCopy copy];
    metadata = v11->_metadata;
    v11->_metadata = v28;

    parametersCopy = v33;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v11;
}

- (NSDictionary)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  parameters = [(NLParameterBundle *)self parameters];
  v5 = [parameters countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(parameters);
        }

        _dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) _dictionaryRepresentation];
        [array addObject:_dictionaryRepresentation];
      }

      v6 = [parameters countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v20[0] = array;
  v19[0] = @"Parameters";
  v19[1] = @"ParameterValues";
  parameterValues = [(NLParameterBundle *)self parameterValues];
  v20[1] = parameterValues;
  v19[2] = @"Metadata";
  metadata = [(NLParameterBundle *)self metadata];
  v20[2] = metadata;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (NLParameterBundle)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [representationCopy objectForKey:@"Parameters"];
    v8 = [representationCopy objectForKey:@"ParameterValues"];
    v9 = [representationCopy objectForKey:@"Metadata"];
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
                array = [MEMORY[0x1E695DF70] array];
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
                      [array addObject:v15];

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

                self = [(NLParameterBundle *)self initWithParameters:array values:v8 metadata:v21];
                selfCopy = self;
                goto LABEL_21;
              }
            }
          }
        }
      }
    }

LABEL_18:
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_23;
  }

  v18 = MEMORY[0x1E696ABC0];
  v27 = *MEMORY[0x1E696A578];
  v28 = @"Invalid parameter bundle";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  [v18 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v10];
  *error = selfCopy = 0;
LABEL_21:

LABEL_23:
  v19 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NLParameterBundle)initWithContentsOfURL:(id)l error:(id *)error
{
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:0 error:error];
  if (v6 && ([MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:error], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    self = [(NLParameterBundle *)self initWithDictionaryRepresentation:v7 error:error];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  lCopy = l;
  dictionaryRepresentation = [(NLParameterBundle *)self dictionaryRepresentation];
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionaryRepresentation format:200 options:0 error:error];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 writeToURL:lCopy options:1 error:error];
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
  array = [MEMORY[0x1E695DF70] array];
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
        _shortDescription = [v8 _shortDescription];
        name = [v8 name];
        v12 = [(NLParameterBundle *)self parameterValueForName:name];
        v13 = [v9 stringWithFormat:@"%@ = %@", _shortDescription, v12];

        [array addObject:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v14 = MEMORY[0x1E696AEC0];
  v21.receiver = self;
  v21.super_class = NLParameterBundle;
  v15 = [(NLParameterBundle *)&v21 description];
  v16 = [array componentsJoinedByString:{@", "}];
  v17 = [v14 stringWithFormat:@"%@(%@)", v15, v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (unint64_t)hash
{
  parameters = [(NLParameterBundle *)self parameters];
  v4 = [parameters hash];
  parameterValues = [(NLParameterBundle *)self parameterValues];
  v6 = [parameterValues hash] ^ v4;
  metadata = [(NLParameterBundle *)self metadata];
  v8 = [metadata hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    goto LABEL_7;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  parameters = [(NLParameterBundle *)self parameters];
  parameters2 = [(NLParameterBundle *)v5 parameters];
  if (![parameters isEqual:parameters2])
  {
LABEL_9:

    goto LABEL_10;
  }

  parameterValues = [(NLParameterBundle *)self parameterValues];
  parameterValues2 = [(NLParameterBundle *)v5 parameterValues];
  if (![parameterValues isEqual:parameterValues2])
  {

    goto LABEL_9;
  }

  metadata = [(NLParameterBundle *)self metadata];
  metadata2 = [(NLParameterBundle *)v5 metadata];
  v12 = [metadata isEqual:metadata2];

  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v13 = 1;
LABEL_11:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLParameter requires keyed coding" userInfo:0];
    objc_exception_throw(v7);
  }

  parameters = [(NLParameterBundle *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"NLParameters"];

  parameterValues = [(NLParameterBundle *)self parameterValues];
  [coderCopy encodeObject:parameterValues forKey:@"NLParameterValues"];

  metadata = [(NLParameterBundle *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"NLMetadata"];
}

- (NLParameterBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLParameter requires keyed coding" userInfo:0];
    objc_exception_throw(v11);
  }

  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"NLParameters"];
  v6 = objc_opt_class();
  v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"NLParameterValues"];
  v8 = [coderCopy decodePropertyListForKey:@"NLMetadata"];
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

- (id)parameterForName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  parameters = [(NLParameterBundle *)self parameters];
  v6 = [parameters countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(parameters);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqual:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [parameters countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)parameterValueForName:(id)name
{
  nameCopy = name;
  v5 = [(NLParameterBundle *)self parameterForName:nameCopy];
  if (v5)
  {
    parameterValues = [(NLParameterBundle *)self parameterValues];
    v7 = [parameterValues objectForKey:nameCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)getContinuousParameterValueForName:(id)name value:(double *)value
{
  nameCopy = name;
  v7 = [(NLParameterBundle *)self parameterForName:nameCopy];
  v8 = v7;
  if (v7 && ![v7 parameterType])
  {
    v10 = [(NLParameterBundle *)self parameterValueForName:nameCopy];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (value)
      {
        [v10 doubleValue];
        *value = v11;
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

- (BOOL)getIntegralParameterValueForName:(id)name value:(int64_t *)value
{
  nameCopy = name;
  v7 = [(NLParameterBundle *)self parameterForName:nameCopy];
  v8 = v7;
  if (v7 && [v7 parameterType] == 1)
  {
    v9 = [(NLParameterBundle *)self parameterValueForName:nameCopy];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (value)
      {
        *value = [v9 integerValue];
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