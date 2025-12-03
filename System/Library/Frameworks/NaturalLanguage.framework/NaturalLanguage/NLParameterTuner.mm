@interface NLParameterTuner
+ (id)parameterTunerWithParameters:(id)parameters options:(id)options delegate:(id)delegate;
+ (id)tunedParameterBundleWithParameters:(id)parameters options:(id)options delegate:(id)delegate error:(id *)error;
- (NLParameterTuner)initWithParameters:(id)parameters options:(id)options delegate:(id)delegate;
- (NLParameterTuningDelegate)delegate;
- (id)_hyperTuneParameterArray;
- (id)tunedParameterBundleWithError:(id *)error;
@end

@implementation NLParameterTuner

+ (id)tunedParameterBundleWithParameters:(id)parameters options:(id)options delegate:(id)delegate error:(id *)error
{
  v7 = [self parameterTunerWithParameters:parameters options:options delegate:delegate];
  v8 = [v7 tunedParameterBundleWithError:error];

  return v8;
}

+ (id)parameterTunerWithParameters:(id)parameters options:(id)options delegate:(id)delegate
{
  delegateCopy = delegate;
  optionsCopy = options;
  parametersCopy = parameters;
  v11 = [[self alloc] initWithParameters:parametersCopy options:optionsCopy delegate:delegateCopy];

  return v11;
}

- (NLParameterTuner)initWithParameters:(id)parameters options:(id)options delegate:(id)delegate
{
  v38 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  optionsCopy = options;
  delegateCopy = delegate;
  v36.receiver = self;
  v36.super_class = NLParameterTuner;
  v11 = [(NLParameterTuner *)&v36 init];
  if (v11)
  {
    v30 = optionsCopy;
    array = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = parametersCopy;
    v13 = parametersCopy;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          name = [v18 name];
          v20 = [(NSArray *)array containsObject:name];

          if (!v20)
          {
            name2 = [v18 name];
            [(NSArray *)array addObject:name2];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v15);
    }

    v22 = [v13 copy];
    parameters = v11->_parameters;
    v11->_parameters = v22;

    parameterNames = v11->_parameterNames;
    v11->_parameterNames = array;
    v25 = array;

    optionsCopy = v30;
    v26 = [v30 copy];
    options = v11->_options;
    v11->_options = v26;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    parametersCopy = v31;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_hyperTuneParameterArray
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  parameters = [(NLParameterTuner *)self parameters];
  v5 = [parameters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(parameters);
        }

        _hyperTuneDictionary = [*(*(&v12 + 1) + 8 * i) _hyperTuneDictionary];
        [array addObject:_hyperTuneDictionary];
      }

      v6 = [parameters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)tunedParameterBundleWithError:(id *)error
{
  v51[5] = *MEMORY[0x1E69E9840];
  _hyperTuneParameterArray = [(NLParameterTuner *)self _hyperTuneParameterArray];
  options = [(NLParameterTuner *)self options];
  v39 = [options objectForKey:@"Metadata"];
  delegate = [(NLParameterTuner *)self delegate];
  objc_opt_respondsToSelector();
  v5 = options;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v51[0] = @"Algorithm";
  v51[1] = @"MaximumIterations";
  v51[2] = @"PreferLowerScore";
  v51[3] = @"RandomSeed";
  v51[4] = @"Metadata";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:5];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        if (([v7 containsObject:v13] & 1) == 0)
        {
          v14 = [v8 objectForKey:v13];
          [dictionary setObject:v14 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v10);
  }

  v15 = [v8 objectForKey:@"Algorithm"];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 isEqual:@"Random"];
    v18 = MEMORY[0x1E69B2770];
    if ((v17 & 1) == 0)
    {
      v18 = MEMORY[0x1E69B2760];
    }
  }

  else
  {
    v18 = MEMORY[0x1E69B2760];
  }

  [dictionary setObject:*v18 forKey:*MEMORY[0x1E69B2768]];
  v19 = BOOLForKey(v8, @"PreferLowerScore", 0);
  v20 = MEMORY[0x1E69B2790];
  if (!v19)
  {
    v20 = MEMORY[0x1E69B2788];
  }

  [dictionary setObject:*v20 forKey:*MEMORY[0x1E69B2780]];
  v21 = [v8 objectForKey:@"MaximumIterations"];
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = &unk_1F10D1358;
  }

  [dictionary setObject:v22 forKey:*MEMORY[0x1E69B27D8]];
  v23 = [v8 objectForKey:@"RandomSeed"];
  if (v23)
  {
    [dictionary setObject:v23 forKey:*MEMORY[0x1E69B27D0]];
  }

  v24 = [v8 objectForKey:@"InitialParameterValues"];
  if (v24)
  {
    [dictionary setObject:v24 forKey:*MEMORY[0x1E69B2778]];
  }

  v25 = dictionary;
  v42 = v39;
  v43 = delegate;
  v26 = v42;
  v27 = v43;
  v28 = HTTuneParameters();
  if (v28)
  {
    v29 = v28;
    parameters = [(NLParameterTuner *)self parameters];
    v31 = _parameterValuesForHyperTuneValues(v29);
    v32 = [NLParameterBundle parameterBundleWithParameters:parameters values:v31 metadata:v26];

    CFRelease(v29);
  }

  else
  {
    if (error)
    {
      v33 = MEMORY[0x1E696ABC0];
      v48 = *MEMORY[0x1E696A578];
      v49 = @"Failed to tune parameter bundle";
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v35 = [v33 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:9 userInfo:v34];
      *error = v35;
    }

    v32 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v32;
}

double __50__NLParameterTuner_tunedParameterBundleWithError___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) parameters];
  v5 = _parameterValuesForHyperTuneValues(a2);
  v6 = [NLParameterBundle parameterBundleWithParameters:v4 values:v5 metadata:*(a1 + 40)];

  [*(a1 + 48) parameterTuner:*(a1 + 32) scoreForBundle:v6];
  v8 = v7;

  return v8;
}

void __50__NLParameterTuner_tunedParameterBundleWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4, double a5)
{
  if (*(a1 + 56) == 1)
  {
    v10 = [*(a1 + 32) parameters];
    v11 = _parameterValuesForHyperTuneValues(a3);
    v12 = [NLParameterBundle parameterBundleWithParameters:v10 values:v11 metadata:*(a1 + 40)];

    LODWORD(a2) = [*(a1 + 48) parameterTuner:*(a1 + 32) shouldStopWithTunedBundle:v12 score:a2 iterationNumber:a5];
    if (a2)
    {
      *a4 = 1;
    }
  }
}

- (NLParameterTuningDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end