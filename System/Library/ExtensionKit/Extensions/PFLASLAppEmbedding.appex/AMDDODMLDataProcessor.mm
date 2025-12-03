@interface AMDDODMLDataProcessor
- (AMDDODMLDataProcessor)initWithActionArray:(id)array withAttachmentProcessor:(id)processor;
- (id)aggregateArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)bindToBuffer:(id)buffer error:(id *)error errorDomain:(id)domain;
- (id)checkIfArrayEmptyAndThrowError:(id)error error:(id *)a4 errorDomain:(id)domain;
- (id)combineArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)constantValueMathFunction:(id)function error:(id *)error errorDomain:(id)domain;
- (id)destroyArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)downSampleData:(id)data error:(id *)error errorDomain:(id)domain;
- (id)filterArrayOnNumber:(id)number error:(id *)error errorDomain:(id)domain;
- (id)generateHashFromInputs:(id)inputs error:(id *)error errorDomain:(id)domain;
- (id)getCurrentTime:(id)time error:(id *)error errorDomain:(id)domain;
- (id)getElementInCoreDictionary:(id)dictionary;
- (id)getElementInInputDictionary:(id)dictionary;
- (id)getElementInNumberInputsBounds:(id)bounds;
- (id)hashAdamIdsToIndices:(id)indices error:(id *)error errorDomain:(id)domain;
- (id)hashFromCoreDictionary:(id)dictionary error:(id *)error errorDomain:(id)domain;
- (id)ifStatement:(id)statement error:(id *)error errorDomain:(id)domain;
- (id)insertArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)insertRawArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)padArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)parseAndCall:(id)call withInputs:(id)inputs error:(id *)error errorDomain:(id)domain;
- (id)processForLoop:(id)loop error:(id *)error errorDomain:(id)domain;
- (id)processForLoopHelper:(id)helper withNumber:(id)number withDictionary:(id)dictionary;
- (id)processRecipe:(id *)recipe errorDomain:(id)domain;
- (id)randomizeArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)replicateArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)requestData:(id)data withUseStubs:(int64_t)stubs error:(id *)error errorDomain:(id)domain;
- (id)sampleFromDistribution:(id)distribution error:(id *)error errorDomain:(id)domain;
- (id)sortArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)spliceArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)strideCopyAndSplitArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)strideCopyArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)twoArrayMathFunction:(id)function error:(id *)error errorDomain:(id)domain;
- (id)windowFunction:(id)function error:(id *)error errorDomain:(id)domain;
- (int64_t)getInputSize;
- (void)resetDataProcessorWithRecipe:(id)recipe;
- (void)setElementInCoreDictionary:(id)dictionary withKey:(id)key;
- (void)setElementsInCoreDictionary:(id)dictionary;
@end

@implementation AMDDODMLDataProcessor

- (AMDDODMLDataProcessor)initWithActionArray:(id)array withAttachmentProcessor:(id)processor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  v20 = 0;
  objc_storeStrong(&v20, processor);
  v4 = selfCopy;
  selfCopy = 0;
  v19.receiver = v4;
  v19.super_class = AMDDODMLDataProcessor;
  v18 = [(AMDDODMLDataProcessor *)&v19 init];
  selfCopy = v18;
  objc_storeStrong(&selfCopy, v18);
  if (v18)
  {
    objc_storeStrong(&selfCopy->_actionArray, location[0]);
    objc_storeStrong(&selfCopy->_attachmentsProcessor, v20);
    v5 = objc_alloc_init(NSMutableDictionary);
    coreDictionary = selfCopy->_coreDictionary;
    selfCopy->_coreDictionary = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    inputDictionary = selfCopy->_inputDictionary;
    selfCopy->_inputDictionary = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    numberInputsBound = selfCopy->_numberInputsBound;
    selfCopy->_numberInputsBound = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    elementsInSample = selfCopy->_elementsInSample;
    selfCopy->_elementsInSample = v11;

    v13 = objc_alloc_init(AMDClient);
    myAMDClient = selfCopy->_myAMDClient;
    selfCopy->_myAMDClient = v13;
  }

  v16 = selfCopy;
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v16;
}

- (void)resetDataProcessorWithRecipe:(id)recipe
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, recipe);
  objc_storeStrong(&selfCopy->_actionArray, location[0]);
  v3 = objc_alloc_init(NSMutableDictionary);
  inputDictionary = selfCopy->_inputDictionary;
  selfCopy->_inputDictionary = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  numberInputsBound = selfCopy->_numberInputsBound;
  selfCopy->_numberInputsBound = v5;

  v7 = objc_alloc_init(NSMutableDictionary);
  elementsInSample = selfCopy->_elementsInSample;
  selfCopy->_elementsInSample = v7;

  v9 = objc_alloc_init(AMDClient);
  myAMDClient = selfCopy->_myAMDClient;
  selfCopy->_myAMDClient = v9;

  objc_storeStrong(location, 0);
}

- (void)setElementInCoreDictionary:(id)dictionary withKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v5 = 0;
  objc_storeStrong(&v5, key);
  [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:location[0] forKey:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setElementsInCoreDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  memset(__b, 0, sizeof(__b));
  obj = location[0];
  v10 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v7);
      v4 = [location[0] objectForKey:{v12, selfCopy}];
      [v3 setElementInCoreDictionary:? withKey:?];

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (id)getElementInCoreDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v4 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)getElementInInputDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v4 = [(NSMutableDictionary *)selfCopy->_inputDictionary objectForKey:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)getElementInNumberInputsBounds:(id)bounds
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bounds);
  v4 = [(NSMutableDictionary *)selfCopy->_numberInputsBound objectForKey:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (int64_t)getInputSize
{
  selfCopy = self;
  v14 = a2;
  v13 = -1;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_numberInputsBound;
  v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v7);
      v3 = [(NSMutableDictionary *)selfCopy->_numberInputsBound objectForKey:v12];
      longValue = [v3 longValue];

      if (longValue < v13 || v13 == -1)
      {
        v13 = longValue;
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  return v13;
}

- (id)processRecipe:(id *)recipe errorDomain:(id)domain
{
  selfCopy = self;
  v14 = a2;
  recipeCopy = recipe;
  location = 0;
  objc_storeStrong(&location, domain);
  for (i = 0; ; ++i)
  {
    v6 = i;
    if (v6 >= [(NSArray *)selfCopy->_actionArray count])
    {
      break;
    }

    v10 = [(NSArray *)selfCopy->_actionArray objectAtIndex:i];
    v9 = [v10 objectForKey:FunctionName];
    v8 = [(AMDDODMLDataProcessor *)selfCopy parseAndCall:v9 withInputs:v10 error:recipeCopy errorDomain:location];
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v16 = 0;
      v7 = 1;
    }

    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  v16 = [NSNumber numberWithLong:1];
LABEL_9:
  objc_storeStrong(&location, 0);
  v4 = v16;

  return v4;
}

- (id)parseAndCall:(id)call withInputs:(id)inputs error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, call);
  v16 = 0;
  objc_storeStrong(&v16, inputs);
  errorCopy = error;
  v14 = 0;
  objc_storeStrong(&v14, domain);
  if ([location[0] isEqual:AggregateArray])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy aggregateArray:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:BindToBuffer])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy bindToBuffer:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:CheckIfArrayEmptyAndThrowError])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy checkIfArrayEmptyAndThrowError:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:CombineArray])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy combineArray:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:ConstantValueMathFunction])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy constantValueMathFunction:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:DownSampleData])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy downSampleData:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:DestroyArray])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy destroyArray:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:FilterArrayOnNumber])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy filterArrayOnNumber:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:IfStatement])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy ifStatement:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:GenerateHashFromInputs])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy generateHashFromInputs:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:GetCurrentTime])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy getCurrentTime:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:HashAdamIdsToIndices])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy hashAdamIdsToIndices:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:HashFromCoreDictionary])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy hashFromCoreDictionary:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:InsertArray])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy insertArray:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:InsertRawArray])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy insertRawArray:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:PadArray])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy padArray:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:ProcessForLoop])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy processForLoop:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:RandomizeArray])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy randomizeArray:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:ReplicateArray])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy replicateArray:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:RequestData])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy requestData:v16 withUseStubs:0 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:RequestDummyData])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy requestData:v16 withUseStubs:1 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:SampleFromDistribution])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy sampleFromDistribution:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:SortArray])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy sortArray:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:SpliceArray])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy spliceArray:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:StrideCopyAndSplitArray])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy strideCopyAndSplitArray:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:StrideArrayCopy])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy strideCopyArray:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:TwoArrayMathFunction])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy twoArrayMathFunction:v16 error:errorCopy errorDomain:v14];
  }

  else if ([location[0] isEqual:WindowFunction])
  {
    v19 = [(AMDDODMLDataProcessor *)selfCopy windowFunction:v16 error:errorCopy errorDomain:v14];
  }

  else
  {
    v6 = [NSError alloc];
    v10 = [v6 initWithDomain:v14 code:24 userInfo:0];
    v7 = v10;
    *errorCopy = v10;
    v19 = 0;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v8 = v19;

  return v8;
}

- (id)processForLoopHelper:(id)helper withNumber:(id)number withDictionary:(id)dictionary
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v32 = 0;
  objc_storeStrong(&v32, number);
  v31 = 0;
  objc_storeStrong(&v31, dictionary);
  memset(__b, 0, sizeof(__b));
  v24 = v31;
  v25 = [v24 countByEnumeratingWithState:__b objects:v34 count:16];
  if (v25)
  {
    v19 = *__b[2];
    v20 = 0;
    v21 = v25;
    while (1)
    {
      v18 = v20;
      if (*__b[2] != v19)
      {
        objc_enumerationMutation(v24);
      }

      v30 = *(__b[1] + 8 * v20);
      v28 = [v31 objectForKey:v30];
      v27 = [v28 objectForKey:Multiplier];
      v26 = [v28 objectForKey:Adder];
      [v32 doubleValue];
      v13 = v5;
      [v27 doubleValue];
      v12 = v6;
      [v26 doubleValue];
      v15 = location[0];
      v14 = v30;
      v17 = [NSNumber numberWithDouble:v7 + v13 * v12];
      stringValue = [(NSNumber *)v17 stringValue];
      v8 = [v15 stringByReplacingOccurrencesOfString:v14 withString:?];
      v9 = location[0];
      location[0] = v8;

      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
      ++v20;
      if (v18 + 1 >= v21)
      {
        v20 = 0;
        v21 = [v24 countByEnumeratingWithState:__b objects:v34 count:16];
        if (!v21)
        {
          break;
        }
      }
    }
  }

  v11 = location[0];
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)processForLoop:(id)loop error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, loop);
  errorCopy = error;
  v93 = 0;
  objc_storeStrong(&v93, domain);
  v92 = [location[0] objectForKey:Starting];
  v91 = [location[0] objectForKey:Ending];
  v90 = [location[0] objectForKey:StartingLikeOtherArray];
  v89 = [location[0] objectForKey:EndingLikeOtherArray];
  if (!v90)
  {
    goto LABEL_75;
  }

  v88 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v90];
  v87 = [location[0] objectForKey:StartingLikeOtherArrayMultiplier];
  v86 = [location[0] objectForKey:StartingLikeOtherArrayOffset];
  if (v88 && v87 && v86)
  {
    v7 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v86 longValue] + objc_msgSend(v88, "count") * objc_msgSend(v87, "longValue"));
    v8 = v92;
    v92 = v7;

    v85 = 0;
  }

  else
  {
    v5 = [NSError alloc];
    v50 = [v5 initWithDomain:v93 code:47 userInfo:0];
    v6 = v50;
    *errorCopy = v50;
    v97 = 0;
    v85 = 1;
  }

  objc_storeStrong(&v86, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v88, 0);
  if (!v85)
  {
LABEL_75:
    if (!v89)
    {
      goto LABEL_15;
    }

    v84 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v89];
    v83 = [location[0] objectForKey:EndingLikeOtherArrayMultiplier];
    v82 = [location[0] objectForKey:EndingLikeOtherArrayOffset];
    if (v84 && v83 && v82)
    {
      v11 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v82 longValue] + objc_msgSend(v84, "count") * objc_msgSend(v83, "longValue"));
      v12 = v91;
      v91 = v11;

      v85 = 0;
    }

    else
    {
      v9 = [NSError alloc];
      v49 = [v9 initWithDomain:v93 code:146 userInfo:0];
      v10 = v49;
      *errorCopy = v49;
      v97 = 0;
      v85 = 1;
    }

    objc_storeStrong(&v82, 0);
    objc_storeStrong(&v83, 0);
    objc_storeStrong(&v84, 0);
    if (!v85)
    {
LABEL_15:
      v81 = [location[0] objectForKey:InsideLoop];
      for (i = [v92 intValue]; ; ++i)
      {
        v48 = i;
        if (v48 >= [v91 intValue])
        {
          break;
        }

        v79 = [NSNumber numberWithLong:i];
        for (j = 0; ; ++j)
        {
          v47 = j;
          if (v47 >= [v81 count])
          {
            break;
          }

          v77 = [v81 objectAtIndex:j];
          v76 = [v77 objectForKey:OverrideKey];
          v75 = [v77 objectForKey:OverrideNumberKeys];
          if (!v76)
          {
            v13 = objc_alloc_init(NSDictionary);
            v14 = v76;
            v76 = v13;
          }

          if (!v75)
          {
            v15 = objc_alloc_init(NSDictionary);
            v16 = v75;
            v75 = v15;
          }

          v74 = objc_alloc_init(NSMutableDictionary);
          memset(__b, 0, sizeof(__b));
          v45 = v77;
          v46 = [v45 countByEnumeratingWithState:__b objects:v100 count:16];
          if (v46)
          {
            v42 = *__b[2];
            v43 = 0;
            v44 = v46;
            while (1)
            {
              v41 = v43;
              if (*__b[2] != v42)
              {
                objc_enumerationMutation(v45);
              }

              v73 = *(__b[1] + 8 * v43);
              v71 = [v77 objectForKey:v73];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                break;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v68 = v71;
                memset(v66, 0, sizeof(v66));
                v39 = v75;
                v40 = [v39 countByEnumeratingWithState:v66 objects:v99 count:16];
                if (v40)
                {
                  v36 = *v66[2];
                  v37 = 0;
                  v38 = v40;
                  while (1)
                  {
                    v35 = v37;
                    if (*v66[2] != v36)
                    {
                      objc_enumerationMutation(v39);
                    }

                    v67 = *(v66[1] + 8 * v37);
                    if ([v67 isEqual:v73])
                    {
                      v65 = [v75 objectForKey:v67];
                      v64 = [v65 objectForKey:Multiplier];
                      v63 = [v65 objectForKey:Adder];
                      [v79 doubleValue];
                      v62 = v17;
                      v34 = v17;
                      [v64 doubleValue];
                      v33 = v18;
                      [v63 doubleValue];
                      v62 = v19 + v34 * v33;
                      v20 = [NSNumber numberWithDouble:v62];
                      v21 = v68;
                      v68 = v20;

                      objc_storeStrong(&v63, 0);
                      objc_storeStrong(&v64, 0);
                      objc_storeStrong(&v65, 0);
                    }

                    ++v37;
                    if (v35 + 1 >= v38)
                    {
                      v37 = 0;
                      v38 = [v39 countByEnumeratingWithState:v66 objects:v99 count:16];
                      if (!v38)
                      {
                        break;
                      }
                    }
                  }
                }

                [v74 setObject:v68 forKey:v73];
                objc_storeStrong(&v68, 0);
                goto LABEL_53;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v61 = v71;
                v60 = objc_alloc_init(NSMutableDictionary);
                memset(v58, 0, sizeof(v58));
                v31 = v61;
                v32 = [v31 countByEnumeratingWithState:v58 objects:v98 count:16];
                if (v32)
                {
                  v28 = *v58[2];
                  v29 = 0;
                  v30 = v32;
                  while (1)
                  {
                    v27 = v29;
                    if (*v58[2] != v28)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v59 = *(v58[1] + 8 * v29);
                    v57 = [(AMDDODMLDataProcessor *)selfCopy processForLoopHelper:v59 withNumber:v79 withDictionary:v76];
                    v56 = [v61 objectForKey:v59];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v55 = [(AMDDODMLDataProcessor *)selfCopy processForLoopHelper:v56 withNumber:v79 withDictionary:v76];
                      [v60 setObject:v55 forKey:v57];
                      objc_storeStrong(&v55, 0);
                    }

                    else
                    {
                      [v60 setObject:v56 forKey:v57];
                    }

                    objc_storeStrong(&v56, 0);
                    objc_storeStrong(&v57, 0);
                    ++v29;
                    if (v27 + 1 >= v30)
                    {
                      v29 = 0;
                      v30 = [v31 countByEnumeratingWithState:v58 objects:v98 count:16];
                      if (!v30)
                      {
                        break;
                      }
                    }
                  }
                }

                [v74 setObject:v60 forKey:v73];
                objc_storeStrong(&v60, 0);
                objc_storeStrong(&v61, 0);
                goto LABEL_53;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v74 setObject:v71 forKey:v73];
                goto LABEL_53;
              }

              v22 = [NSError alloc];
              v26 = [v22 initWithDomain:v93 code:147 userInfo:0];
              v23 = v26;
              *errorCopy = v26;
              v97 = 0;
              v85 = 1;
LABEL_54:
              objc_storeStrong(&v71, 0);
              if (v85)
              {
                goto LABEL_58;
              }

              ++v43;
              if (v41 + 1 >= v44)
              {
                v43 = 0;
                v44 = [v45 countByEnumeratingWithState:__b objects:v100 count:16];
                if (!v44)
                {
                  goto LABEL_57;
                }
              }
            }

            v70 = v71;
            v69 = [(AMDDODMLDataProcessor *)selfCopy processForLoopHelper:v70 withNumber:v79 withDictionary:v76];
            [v74 setObject:v69 forKey:v73];
            objc_storeStrong(&v69, 0);
            objc_storeStrong(&v70, 0);
LABEL_53:
            v85 = 0;
            goto LABEL_54;
          }

LABEL_57:
          v85 = 0;
LABEL_58:

          if (!v85)
          {
            v54 = [v74 objectForKey:FunctionName];
            v53 = [(AMDDODMLDataProcessor *)selfCopy parseAndCall:v54 withInputs:v74 error:errorCopy errorDomain:v93];
            if (v53)
            {
              v85 = 0;
            }

            else
            {
              v97 = 0;
              v85 = 1;
            }

            objc_storeStrong(&v53, 0);
            objc_storeStrong(&v54, 0);
          }

          objc_storeStrong(&v74, 0);
          objc_storeStrong(&v75, 0);
          objc_storeStrong(&v76, 0);
          objc_storeStrong(&v77, 0);
          if (v85)
          {
            goto LABEL_66;
          }
        }

        v85 = 0;
LABEL_66:
        objc_storeStrong(&v79, 0);
        if (v85)
        {
          goto LABEL_69;
        }
      }

      v97 = [NSNumber numberWithLong:1];
      v85 = 1;
LABEL_69:
      objc_storeStrong(&v81, 0);
    }
  }

  objc_storeStrong(&v89, 0);
  objc_storeStrong(&v90, 0);
  objc_storeStrong(&v91, 0);
  objc_storeStrong(&v92, 0);
  objc_storeStrong(&v93, 0);
  objc_storeStrong(location, 0);
  v24 = v97;

  return v24;
}

- (id)aggregateArray:(id)array error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v31 = 0;
  objc_storeStrong(&v31, domain);
  v30 = [location[0] objectForKey:InputArray];
  v29 = [location[0] objectForKey:OutputArray];
  v28 = [location[0] objectForKey:AggregationMethod];
  if (v30 && v29 && v28)
  {
    v26 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v30];
    if (v26)
    {
      v25 = objc_alloc_init(NSMutableArray);
      if ([v28 isEqual:AggregateSum])
      {
        v24 = 0.0;
        for (i = 0; i < [v26 count]; ++i)
        {
          v16 = [v26 objectAtIndex:i];
          [v16 doubleValue];
          v24 = v24 + v9;
        }

        v15 = [NSNumber numberWithDouble:v24];
        [v25 addObject:?];
      }

      else if ([v28 isEqual:AggregateAverage])
      {
        v22 = 0.0;
        for (j = 0; j < [v26 count]; ++j)
        {
          v14 = [v26 objectAtIndex:j];
          [v14 doubleValue];
          v22 = v22 + v10;
        }

        v13 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v22 / [v26 count]);
        [v25 addObject:?];
      }

      [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v25 forKey:v29];
      v35 = [NSNumber numberWithLong:1];
      v27 = 1;
      objc_storeStrong(&v25, 0);
    }

    else
    {
      v7 = [NSError alloc];
      v17 = [v7 initWithDomain:v31 code:142 userInfo:0];
      v8 = v17;
      *errorCopy = v17;
      v35 = 0;
      v27 = 1;
    }

    objc_storeStrong(&v26, 0);
  }

  else
  {
    v5 = [NSError alloc];
    v18 = [v5 initWithDomain:v31 code:141 userInfo:0];
    v6 = v18;
    *errorCopy = v18;
    v35 = 0;
    v27 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  v11 = v35;

  return v11;
}

- (id)bindToBuffer:(id)buffer error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buffer);
  errorCopy = error;
  v34 = 0;
  objc_storeStrong(&v34, domain);
  v33 = [location[0] objectForKey:InputArray];
  v32 = [location[0] objectForKey:OutputArray];
  v31 = [location[0] objectForKey:ElementsInSample];
  if (v33 && v32 && v31)
  {
    v29 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v33];
    if (v29)
    {
      v17 = [v29 count];
      if (v17 >= [v31 longValue])
      {
        v28 = objc_alloc_init(NSMutableData);
        v27 = [v29 count];
        v26 = v27 % [v31 longValue];
        v25 = (v27 - v26) / [v31 longValue];
        for (i = 0; i < v27 - v26; ++i)
        {
          v23 = [v29 objectAtIndex:i];
          [v23 floatValue];
          v22 = v11;
          [v28 appendBytes:&v22 length:4];
          objc_storeStrong(&v23, 0);
        }

        numberInputsBound = selfCopy->_numberInputsBound;
        v15 = [NSNumber numberWithLong:v25];
        [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];

        [(NSMutableDictionary *)selfCopy->_elementsInSample setObject:v31 forKey:v32];
        [(NSMutableDictionary *)selfCopy->_inputDictionary setObject:v28 forKey:v32];
        v38 = [NSNumber numberWithLong:1];
        v30 = 1;
        objc_storeStrong(&v28, 0);
      }

      else
      {
        v9 = [NSError alloc];
        v16 = [v9 initWithDomain:v34 code:92 userInfo:0];
        v10 = v16;
        *errorCopy = v16;
        v38 = 0;
        v30 = 1;
      }
    }

    else
    {
      v7 = [NSError alloc];
      v18 = [v7 initWithDomain:v34 code:27 userInfo:0];
      v8 = v18;
      *errorCopy = v18;
      v38 = 0;
      v30 = 1;
    }

    objc_storeStrong(&v29, 0);
  }

  else
  {
    v5 = [NSError alloc];
    v19 = [v5 initWithDomain:v34 code:38 userInfo:0];
    v6 = v19;
    *errorCopy = v19;
    v38 = 0;
    v30 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  v12 = v38;

  return v12;
}

- (id)checkIfArrayEmptyAndThrowError:(id)error error:(id *)a4 errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v22 = a4;
  v21 = 0;
  objc_storeStrong(&v21, domain);
  v20 = [location[0] objectForKey:InputArray];
  if (v20)
  {
    v18 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v20];
    if (v18)
    {
      if ([v18 count])
      {
        v25 = [NSNumber numberWithLong:1];
      }

      else
      {
        v9 = [NSError alloc];
        v13 = [v9 initWithDomain:v21 code:97 userInfo:0];
        v10 = v13;
        *v22 = v13;
        v25 = 0;
      }

      v19 = 1;
    }

    else
    {
      v7 = [NSError alloc];
      v14 = [v7 initWithDomain:v21 code:98 userInfo:0];
      v8 = v14;
      *v22 = v14;
      v25 = 0;
      v19 = 1;
    }

    objc_storeStrong(&v18, 0);
  }

  else
  {
    v5 = [NSError alloc];
    v15 = [v5 initWithDomain:v21 code:99 userInfo:0];
    v6 = v15;
    *v22 = v15;
    v25 = 0;
    v19 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  v11 = v25;

  return v11;
}

- (id)combineArray:(id)array error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v26 = 0;
  objc_storeStrong(&v26, domain);
  v25 = [location[0] objectForKey:InputArray];
  v24 = [location[0] objectForKey:SecondArray];
  v23 = [location[0] objectForKey:OutputArray];
  if (v25 && v23 && v24)
  {
    v21 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v25];
    v20 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v24];
    if (v21 && v20)
    {
      v19 = objc_alloc_init(NSMutableArray);
      for (i = 0; i < [v21 count]; ++i)
      {
        v12 = [v21 objectAtIndex:i];
        [v19 addObject:?];
      }

      for (j = 0; j < [v20 count]; ++j)
      {
        v11 = [v20 objectAtIndex:j];
        [v19 addObject:?];
      }

      [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v19 forKey:v23];
      v30 = [NSNumber numberWithLong:1];
      v22 = 1;
      objc_storeStrong(&v19, 0);
    }

    else
    {
      v7 = [NSError alloc];
      v13 = [v7 initWithDomain:v26 code:28 userInfo:0];
      v8 = v13;
      *errorCopy = v13;
      v30 = 0;
      v22 = 1;
    }

    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  else
  {
    v5 = [NSError alloc];
    v14 = [v5 initWithDomain:v26 code:39 userInfo:0];
    v6 = v14;
    *errorCopy = v14;
    v30 = 0;
    v22 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  v9 = v30;

  return v9;
}

- (id)destroyArray:(id)array error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v18 = 0;
  objc_storeStrong(&v18, domain);
  v17 = [location[0] objectForKey:InputArray];
  if (v17)
  {
    v15 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v17];
    if (v15)
    {
      [(NSMutableDictionary *)selfCopy->_coreDictionary removeObjectForKey:v17];
      v22 = [NSNumber numberWithLong:1];
    }

    else
    {
      v7 = [NSError alloc];
      v11 = [v7 initWithDomain:v18 code:37 userInfo:0];
      v8 = v11;
      *errorCopy = v11;
      v22 = 0;
    }

    v16 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v5 = [NSError alloc];
    v12 = [v5 initWithDomain:v18 code:57 userInfo:0];
    v6 = v12;
    *errorCopy = v12;
    v22 = 0;
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  v9 = v22;

  return v9;
}

- (id)downSampleData:(id)data error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  errorCopy = error;
  v114 = 0;
  objc_storeStrong(&v114, domain);
  v113 = [location[0] objectForKey:InputArray];
  v112 = [location[0] objectForKey:OutputArray];
  v111 = [location[0] objectForKey:DefaultRatio];
  v110 = [location[0] objectForKey:Mapping];
  *(&v109 + 1) = [location[0] objectForKey:OtherAffectedVectorsOutputKeys];
  *&v109 = [location[0] objectForKey:OtherAffectedVectors];
  if (v109 == 0)
  {
    *(&v109 + 1) = objc_alloc_init(NSDictionary);

    *&v109 = objc_alloc_init(NSDictionary);
LABEL_32:
    if (v113 && v112 && v110 && v111 && *(&v109 + 1) && v109)
    {
      v102 = [(AMDDODMLAttachmentProcessor *)selfCopy->_attachmentsProcessor downSampleDictionaryForKey:v110];
      if (v102)
      {
        v101 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v113];
        if (v101)
        {
          v100 = objc_alloc_init(NSMutableDictionary);
          memset(v98, 0, sizeof(v98));
          v52 = *(&v109 + 1);
          v53 = [v52 countByEnumeratingWithState:v98 objects:v121 count:16];
          if (v53)
          {
            v49 = *v98[2];
            v50 = 0;
            v51 = v53;
            while (1)
            {
              v48 = v50;
              if (*v98[2] != v49)
              {
                objc_enumerationMutation(v52);
              }

              v99 = *(v98[1] + 8 * v50);
              v97 = [*(&v109 + 1) objectForKey:v99];
              v46 = v100;
              v47 = objc_alloc_init(NSMutableArray);
              [v46 setObject:? forKey:?];

              objc_storeStrong(&v97, 0);
              ++v50;
              if (v48 + 1 >= v51)
              {
                v50 = 0;
                v51 = [v52 countByEnumeratingWithState:v98 objects:v121 count:16];
                if (!v51)
                {
                  break;
                }
              }
            }
          }

          v96 = objc_alloc_init(NSMutableArray);
          for (i = 0; ; ++i)
          {
            v45 = i;
            if (v45 >= [v101 count])
            {
              break;
            }

            v94 = [v101 objectAtIndex:i];
            v93 = [v102 objectForKey:v94];
            if (!v93)
            {
              objc_storeStrong(&v93, v111);
            }

            [v93 doubleValue];
            v92 = v21;
            v91 = (arc4random() % 0x80000000) / 2147483650.0;
            if (v91 >= v92)
            {
              goto LABEL_71;
            }

            [v96 addObject:v94];
            memset(v89, 0, sizeof(v89));
            v43 = *(&v109 + 1);
            v44 = [v43 countByEnumeratingWithState:v89 objects:v120 count:16];
            if (v44)
            {
              v40 = *v89[2];
              v41 = 0;
              v42 = v44;
              while (1)
              {
                v39 = v41;
                if (*v89[2] != v40)
                {
                  objc_enumerationMutation(v43);
                }

                v90 = *(v89[1] + 8 * v41);
                v88 = [v109 objectForKey:v90];
                v87 = [*(&v109 + 1) objectForKey:v90];
                v86 = [v100 objectForKey:v87];
                for (j = 0; ; ++j)
                {
                  v38 = j;
                  if (v38 >= [v88 longValue])
                  {
                    break;
                  }

                  v36 = i;
                  longValue = [v88 longValue];
                  v84 = v36 * longValue + j;
                  v83 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v90];
                  v37 = v84;
                  if (v37 < [v83 count])
                  {
                    v82 = [v83 objectAtIndex:v84];
                    [v86 addObject:v82];
                    objc_storeStrong(&v82, 0);
                    v108 = 0;
                  }

                  else
                  {
                    v23 = [NSError alloc];
                    v35 = [v23 initWithDomain:v114 code:25 userInfo:0];
                    v24 = v35;
                    *errorCopy = v35;
                    v118 = 0;
                    v108 = 1;
                  }

                  objc_storeStrong(&v83, 0);
                  if (v108)
                  {
                    goto LABEL_66;
                  }
                }

                v108 = 0;
LABEL_66:
                objc_storeStrong(&v86, 0);
                objc_storeStrong(&v87, 0);
                objc_storeStrong(&v88, 0);
                if (v108)
                {
                  break;
                }

                ++v41;
                if (v39 + 1 >= v42)
                {
                  v41 = 0;
                  v42 = [v43 countByEnumeratingWithState:v89 objects:v120 count:16];
                  if (!v42)
                  {
                    goto LABEL_69;
                  }
                }
              }
            }

            else
            {
LABEL_69:
              v108 = 0;
            }

            if (!v108)
            {
LABEL_71:
              v108 = 0;
            }

            objc_storeStrong(&v93, 0);
            objc_storeStrong(&v94, 0);
            if (v108)
            {
              goto LABEL_81;
            }
          }

          memset(v80, 0, sizeof(v80));
          v33 = v100;
          v34 = [v33 countByEnumeratingWithState:v80 objects:v119 count:16];
          if (v34)
          {
            v30 = *v80[2];
            v31 = 0;
            v32 = v34;
            while (1)
            {
              v29 = v31;
              if (*v80[2] != v30)
              {
                objc_enumerationMutation(v33);
              }

              v81 = *(v80[1] + 8 * v31);
              coreDictionary = selfCopy->_coreDictionary;
              v28 = [v100 objectForKey:v81];
              [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];

              ++v31;
              if (v29 + 1 >= v32)
              {
                v31 = 0;
                v32 = [v33 countByEnumeratingWithState:v80 objects:v119 count:16];
                if (!v32)
                {
                  break;
                }
              }
            }
          }

          [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v96 forKey:v112];
          v118 = [NSNumber numberWithLong:1];
          v108 = 1;
LABEL_81:
          objc_storeStrong(&v96, 0);
          objc_storeStrong(&v100, 0);
        }

        else
        {
          v19 = [NSError alloc];
          v54 = [v19 initWithDomain:v114 code:29 userInfo:0];
          v20 = v54;
          *errorCopy = v54;
          v118 = 0;
          v108 = 1;
        }

        objc_storeStrong(&v101, 0);
      }

      else
      {
        v17 = [NSError alloc];
        v55 = [v17 initWithDomain:v114 code:21 userInfo:0];
        v18 = v55;
        *errorCopy = v55;
        v118 = 0;
        v108 = 1;
      }

      objc_storeStrong(&v102, 0);
    }

    else
    {
      v15 = [NSError alloc];
      v56 = [v15 initWithDomain:v114 code:40 userInfo:0];
      v16 = v56;
      *errorCopy = v56;
      v118 = 0;
      v108 = 1;
    }

    goto LABEL_84;
  }

  if (!*(&v109 + 1) || !v109)
  {
    v5 = [NSError alloc];
    v77 = [v5 initWithDomain:v114 code:40 userInfo:0];
    v6 = v77;
    *errorCopy = v77;
    v118 = 0;
    v108 = 1;
    goto LABEL_84;
  }

  memset(__b, 0, sizeof(__b));
  v75 = *(&v109 + 1);
  v76 = [v75 countByEnumeratingWithState:__b objects:v123 count:16];
  if (v76)
  {
    v72 = *__b[2];
    v73 = 0;
    v74 = v76;
    while (1)
    {
      v71 = v73;
      if (*__b[2] != v72)
      {
        objc_enumerationMutation(v75);
      }

      v107 = *(__b[1] + 8 * v73);
      v70 = [v109 objectForKey:v107];

      if (!v70)
      {
        v7 = [NSError alloc];
        v69 = [v7 initWithDomain:v114 code:40 userInfo:0];
        v8 = v69;
        *errorCopy = v69;
        v118 = 0;
        v108 = 1;
        goto LABEL_17;
      }

      v67 = [v109 objectForKey:v107];
      longValue2 = [v67 longValue];

      if (longValue2 < 1)
      {
        break;
      }

      ++v73;
      if (v71 + 1 >= v74)
      {
        v73 = 0;
        v74 = [v75 countByEnumeratingWithState:__b objects:v123 count:16];
        if (!v74)
        {
          goto LABEL_16;
        }
      }
    }

    v9 = [NSError alloc];
    v66 = [v9 initWithDomain:v114 code:40 userInfo:0];
    v10 = v66;
    *errorCopy = v66;
    v118 = 0;
    v108 = 1;
  }

  else
  {
LABEL_16:
    v108 = 0;
  }

LABEL_17:

  if (!v108)
  {
    memset(v104, 0, sizeof(v104));
    v64 = v109;
    v65 = [v64 countByEnumeratingWithState:v104 objects:v122 count:16];
    if (v65)
    {
      v61 = *v104[2];
      v62 = 0;
      v63 = v65;
      while (1)
      {
        v60 = v62;
        if (*v104[2] != v61)
        {
          objc_enumerationMutation(v64);
        }

        v105 = *(v104[1] + 8 * v62);
        v59 = [*(&v109 + 1) objectForKey:v105];

        if (!v59)
        {
          break;
        }

        v103 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v105];
        if (v103)
        {
          v108 = 0;
        }

        else
        {
          v13 = [NSError alloc];
          v57 = [v13 initWithDomain:v114 code:29 userInfo:0];
          v14 = v57;
          *errorCopy = v57;
          v118 = 0;
          v108 = 1;
        }

        objc_storeStrong(&v103, 0);
        if (v108)
        {
          goto LABEL_31;
        }

        ++v62;
        if (v60 + 1 >= v63)
        {
          v62 = 0;
          v63 = [v64 countByEnumeratingWithState:v104 objects:v122 count:16];
          if (!v63)
          {
            goto LABEL_30;
          }
        }
      }

      v11 = [NSError alloc];
      v58 = [v11 initWithDomain:v114 code:40 userInfo:0];
      v12 = v58;
      *errorCopy = v58;
      v118 = 0;
      v108 = 1;
    }

    else
    {
LABEL_30:
      v108 = 0;
    }

LABEL_31:

    if (!v108)
    {
      goto LABEL_32;
    }
  }

LABEL_84:
  objc_storeStrong(&v109, 0);
  objc_storeStrong(&v109 + 1, 0);
  objc_storeStrong(&v110, 0);
  objc_storeStrong(&v111, 0);
  objc_storeStrong(&v112, 0);
  objc_storeStrong(&v113, 0);
  objc_storeStrong(&v114, 0);
  objc_storeStrong(location, 0);
  v25 = v118;

  return v25;
}

- (id)constantValueMathFunction:(id)function error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, function);
  errorCopy = error;
  v56 = 0;
  objc_storeStrong(&v56, domain);
  v55 = [location[0] objectForKey:InputArray];
  v54 = [location[0] objectForKey:OutputArray];
  v53 = [location[0] objectForKey:ConstantValue];
  v52 = [location[0] objectForKey:Operation];
  if (!v55 || !v54 || !v53 || !v52)
  {
    v5 = [NSError alloc];
    v43 = [v5 initWithDomain:v56 code:86 userInfo:0];
    v6 = v43;
    *errorCopy = v43;
    v60 = 0;
    v51 = 1;
    goto LABEL_31;
  }

  [v53 doubleValue];
  if (v7 == 0.0 && (([v52 isEqual:Modulo] & 1) != 0 || (objc_msgSend(v52, "isEqual:", Division) & 1) != 0))
  {
    v8 = [NSError alloc];
    v42 = [v8 initWithDomain:v56 code:86 userInfo:0];
    v9 = v42;
    *errorCopy = v42;
    v60 = 0;
    v51 = 1;
    goto LABEL_31;
  }

  v50 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v55];
  if (!v50)
  {
    v10 = [NSError alloc];
    v41 = [v10 initWithDomain:v56 code:85 userInfo:0];
    v11 = v41;
    *errorCopy = v41;
    v60 = 0;
    v51 = 1;
    goto LABEL_30;
  }

  v49 = objc_alloc_init(NSMutableArray);
  for (i = 0; ; ++i)
  {
    v40 = i;
    if (v40 >= [v50 count])
    {
      break;
    }

    v47 = [v50 objectAtIndex:i];
    v46 = 0;
    if ([v52 isEqual:Modulo])
    {
      longValue = [v47 longValue];
      v12 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", longValue % [v53 longValue]);
      v13 = v46;
      v46 = v12;
    }

    else if ([v52 isEqual:Division])
    {
      [v47 doubleValue];
      v38 = v14;
      [v53 doubleValue];
      v16 = [NSNumber numberWithDouble:v38 / v15];
      v17 = v46;
      v46 = v16;
    }

    else if ([v52 isEqual:Multiplication])
    {
      [v47 doubleValue];
      v37 = v18;
      [v53 doubleValue];
      v20 = [NSNumber numberWithDouble:v37 * v19];
      v21 = v46;
      v46 = v20;
    }

    else if ([v52 isEqual:Addition])
    {
      [v47 doubleValue];
      v36 = v22;
      [v53 doubleValue];
      v24 = [NSNumber numberWithDouble:v36 + v23];
      v25 = v46;
      v46 = v24;
    }

    else
    {
      if (([v52 isEqual:Subtraction] & 1) == 0)
      {
        v30 = [NSError alloc];
        v34 = [v30 initWithDomain:v56 code:83 userInfo:0];
        v31 = v34;
        *errorCopy = v34;
        v60 = 0;
        v51 = 1;
        goto LABEL_26;
      }

      [v47 doubleValue];
      v35 = v26;
      [v53 doubleValue];
      v28 = [NSNumber numberWithDouble:v35 - v27];
      v29 = v46;
      v46 = v28;
    }

    [v49 addObject:v46];
    v51 = 0;
LABEL_26:
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v47, 0);
    if (v51)
    {
      goto LABEL_29;
    }
  }

  [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v49 forKey:v54];
  v60 = [NSNumber numberWithLong:1];
  v51 = 1;
LABEL_29:
  objc_storeStrong(&v49, 0);
LABEL_30:
  objc_storeStrong(&v50, 0);
LABEL_31:
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(location, 0);
  v32 = v60;

  return v32;
}

- (id)filterArrayOnNumber:(id)number error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, number);
  errorCopy = error;
  v127 = 0;
  objc_storeStrong(&v127, domain);
  v126 = [location[0] objectForKey:InputArray];
  v125 = [location[0] objectForKey:OutputArray];
  v124 = [location[0] objectForKey:FilterOperation];
  v123 = [location[0] objectForKey:ConstantValue];
  *(&v122 + 1) = [location[0] objectForKey:OtherAffectedVectorsOutputKeys];
  *&v122 = [location[0] objectForKey:OtherAffectedVectors];
  if (v122 == 0)
  {
    *(&v122 + 1) = objc_alloc_init(NSDictionary);

    *&v122 = objc_alloc_init(NSDictionary);
  }

  else
  {
    if (!*(&v122 + 1) || !v122)
    {
      v5 = [NSError alloc];
      v93 = [v5 initWithDomain:v127 code:102 userInfo:0];
      v6 = v93;
      *errorCopy = v93;
      v131 = 0;
      v121 = 1;
      goto LABEL_96;
    }

    memset(__b, 0, sizeof(__b));
    v91 = *(&v122 + 1);
    v92 = [v91 countByEnumeratingWithState:__b objects:v136 count:16];
    if (v92)
    {
      v88 = *__b[2];
      v89 = 0;
      v90 = v92;
      while (1)
      {
        v87 = v89;
        if (*__b[2] != v88)
        {
          objc_enumerationMutation(v91);
        }

        v120 = *(__b[1] + 8 * v89);
        v86 = [v122 objectForKey:v120];

        if (!v86)
        {
          v7 = [NSError alloc];
          v85 = [v7 initWithDomain:v127 code:102 userInfo:0];
          v8 = v85;
          *errorCopy = v85;
          v131 = 0;
          v121 = 1;
          goto LABEL_17;
        }

        v83 = [v122 objectForKey:v120];
        longValue = [v83 longValue];

        if (longValue < 1)
        {
          break;
        }

        ++v89;
        if (v87 + 1 >= v90)
        {
          v89 = 0;
          v90 = [v91 countByEnumeratingWithState:__b objects:v136 count:16];
          if (!v90)
          {
            goto LABEL_16;
          }
        }
      }

      v9 = [NSError alloc];
      v82 = [v9 initWithDomain:v127 code:102 userInfo:0];
      v10 = v82;
      *errorCopy = v82;
      v131 = 0;
      v121 = 1;
    }

    else
    {
LABEL_16:
      v121 = 0;
    }

LABEL_17:

    if (v121)
    {
      goto LABEL_96;
    }

    memset(v117, 0, sizeof(v117));
    v80 = v122;
    v81 = [v80 countByEnumeratingWithState:v117 objects:v135 count:16];
    if (v81)
    {
      v77 = *v117[2];
      v78 = 0;
      v79 = v81;
      while (1)
      {
        v76 = v78;
        if (*v117[2] != v77)
        {
          objc_enumerationMutation(v80);
        }

        v118 = *(v117[1] + 8 * v78);
        v75 = [*(&v122 + 1) objectForKey:v118];

        if (!v75)
        {
          break;
        }

        v116 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v118];
        if (v116)
        {
          v121 = 0;
        }

        else
        {
          v13 = [NSError alloc];
          v73 = [v13 initWithDomain:v127 code:101 userInfo:0];
          v14 = v73;
          *errorCopy = v73;
          v131 = 0;
          v121 = 1;
        }

        objc_storeStrong(&v116, 0);
        if (v121)
        {
          goto LABEL_31;
        }

        ++v78;
        if (v76 + 1 >= v79)
        {
          v78 = 0;
          v79 = [v80 countByEnumeratingWithState:v117 objects:v135 count:16];
          if (!v79)
          {
            goto LABEL_30;
          }
        }
      }

      v11 = [NSError alloc];
      v74 = [v11 initWithDomain:v127 code:102 userInfo:0];
      v12 = v74;
      *errorCopy = v74;
      v131 = 0;
      v121 = 1;
    }

    else
    {
LABEL_30:
      v121 = 0;
    }

LABEL_31:

    if (v121)
    {
      goto LABEL_96;
    }
  }

  if (!v126 || !v125 || !v124 || !v123 || !*(&v122 + 1) || !v122)
  {
    v15 = [NSError alloc];
    v72 = [v15 initWithDomain:v127 code:102 userInfo:0];
    v16 = v72;
    *errorCopy = v72;
    v131 = 0;
    v121 = 1;
    goto LABEL_96;
  }

  v115 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v126];
  if (!v115)
  {
    v17 = [NSError alloc];
    v71 = [v17 initWithDomain:v127 code:101 userInfo:0];
    v18 = v71;
    *errorCopy = v71;
    v131 = 0;
    v121 = 1;
    goto LABEL_95;
  }

  v114 = objc_alloc_init(NSMutableDictionary);
  memset(v112, 0, sizeof(v112));
  v69 = *(&v122 + 1);
  v70 = [v69 countByEnumeratingWithState:v112 objects:v134 count:16];
  if (v70)
  {
    v66 = *v112[2];
    v67 = 0;
    v68 = v70;
    while (1)
    {
      v65 = v67;
      if (*v112[2] != v66)
      {
        objc_enumerationMutation(v69);
      }

      v113 = *(v112[1] + 8 * v67);
      v111 = [*(&v122 + 1) objectForKey:v113];
      v63 = v114;
      v64 = objc_alloc_init(NSMutableArray);
      [v63 setObject:? forKey:?];

      objc_storeStrong(&v111, 0);
      ++v67;
      if (v65 + 1 >= v68)
      {
        v67 = 0;
        v68 = [v69 countByEnumeratingWithState:v112 objects:v134 count:16];
        if (!v68)
        {
          break;
        }
      }
    }
  }

  v110 = objc_alloc_init(NSMutableArray);
  for (i = 0; ; ++i)
  {
    v62 = i;
    if (v62 >= [v115 count])
    {
      break;
    }

    v108 = [v115 objectAtIndex:i];
    v107 = 0;
    if ([v124 isEqual:GreaterThan])
    {
      [v108 doubleValue];
      v61 = v19;
      [v123 doubleValue];
      v21 = v20;
      v22 = v61;
      if (v61 > v21)
      {
        v107 = 1;
      }
    }

    else if ([v124 isEqual:LessThan])
    {
      [v108 doubleValue];
      v60 = v23;
      [v123 doubleValue];
      v25 = v24;
      v22 = v60;
      if (v60 < v25)
      {
        v107 = 1;
      }
    }

    else if ([v124 isEqual:NotEqualTo])
    {
      [v108 doubleValue];
      v59 = v26;
      [v123 doubleValue];
      v28 = v27;
      v22 = v59;
      if (v59 != v28)
      {
        v107 = 1;
      }
    }

    else
    {
      if (([v124 isEqual:IsEqualTo] & 1) == 0)
      {
        v32 = [NSError alloc];
        v57 = [v32 initWithDomain:v127 code:100 userInfo:0];
        v33 = v57;
        *errorCopy = v57;
        v131 = 0;
        v121 = 1;
        goto LABEL_85;
      }

      [v108 doubleValue];
      v58 = v29;
      [v123 doubleValue];
      v31 = v30;
      v22 = v58;
      if (v58 == v31)
      {
        v107 = 1;
      }
    }

    if (!v107)
    {
      goto LABEL_84;
    }

    [v110 addObject:{v108, v22}];
    memset(v105, 0, sizeof(v105));
    v55 = *(&v122 + 1);
    v56 = [v55 countByEnumeratingWithState:v105 objects:v133 count:16];
    if (v56)
    {
      v52 = *v105[2];
      v53 = 0;
      v54 = v56;
      while (1)
      {
        v51 = v53;
        if (*v105[2] != v52)
        {
          objc_enumerationMutation(v55);
        }

        v106 = *(v105[1] + 8 * v53);
        v104 = [v122 objectForKey:v106];
        v103 = [*(&v122 + 1) objectForKey:v106];
        v102 = [v114 objectForKey:v103];
        for (j = 0; ; ++j)
        {
          v50 = j;
          if (v50 >= [v104 longValue])
          {
            break;
          }

          v48 = i;
          longValue2 = [v104 longValue];
          v100 = v48 * longValue2 + j;
          v99 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v106];
          v49 = v100;
          if (v49 < [v99 count])
          {
            v98 = [v99 objectAtIndex:v100];
            [v102 addObject:v98];
            objc_storeStrong(&v98, 0);
            v121 = 0;
          }

          else
          {
            v35 = [NSError alloc];
            v47 = [v35 initWithDomain:v127 code:105 userInfo:0];
            v36 = v47;
            *errorCopy = v47;
            v131 = 0;
            v121 = 1;
          }

          objc_storeStrong(&v99, 0);
          if (v121)
          {
            goto LABEL_79;
          }
        }

        v121 = 0;
LABEL_79:
        objc_storeStrong(&v102, 0);
        objc_storeStrong(&v103, 0);
        objc_storeStrong(&v104, 0);
        if (v121)
        {
          break;
        }

        ++v53;
        if (v51 + 1 >= v54)
        {
          v53 = 0;
          v54 = [v55 countByEnumeratingWithState:v105 objects:v133 count:16];
          if (!v54)
          {
            goto LABEL_82;
          }
        }
      }
    }

    else
    {
LABEL_82:
      v121 = 0;
    }

    if (!v121)
    {
LABEL_84:
      v121 = 0;
    }

LABEL_85:
    objc_storeStrong(&v108, 0);
    if (v121)
    {
      goto LABEL_94;
    }
  }

  memset(v96, 0, sizeof(v96));
  v45 = v114;
  v46 = [v45 countByEnumeratingWithState:v96 objects:v132 count:16];
  if (v46)
  {
    v42 = *v96[2];
    v43 = 0;
    v44 = v46;
    while (1)
    {
      v41 = v43;
      if (*v96[2] != v42)
      {
        objc_enumerationMutation(v45);
      }

      v97 = *(v96[1] + 8 * v43);
      coreDictionary = selfCopy->_coreDictionary;
      v40 = [v114 objectForKey:v97];
      [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];

      ++v43;
      if (v41 + 1 >= v44)
      {
        v43 = 0;
        v44 = [v45 countByEnumeratingWithState:v96 objects:v132 count:16];
        if (!v44)
        {
          break;
        }
      }
    }
  }

  [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v110 forKey:v125];
  v131 = [NSNumber numberWithLong:1];
  v121 = 1;
LABEL_94:
  objc_storeStrong(&v110, 0);
  objc_storeStrong(&v114, 0);
LABEL_95:
  objc_storeStrong(&v115, 0);
LABEL_96:
  objc_storeStrong(&v122, 0);
  objc_storeStrong(&v122 + 1, 0);
  objc_storeStrong(&v123, 0);
  objc_storeStrong(&v124, 0);
  objc_storeStrong(&v125, 0);
  objc_storeStrong(&v126, 0);
  objc_storeStrong(&v127, 0);
  objc_storeStrong(location, 0);
  v37 = v131;

  return v37;
}

- (id)getCurrentTime:(id)time error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, time);
  v18[1] = error;
  v18[0] = 0;
  objc_storeStrong(v18, domain);
  v17 = [location[0] objectForKey:OutputArray];
  info = 0;
  mach_timebase_info(&info);
  v5 = mach_absolute_time();
  LODWORD(v7) = info.denom;
  LODWORD(v6) = info.numer;
  v15 = v5 * (v6 / (1000000000.0 * v7));
  v14 = objc_alloc_init(NSMutableArray);
  v11 = v14;
  v12 = [NSNumber numberWithDouble:v15];
  [v11 addObject:?];

  [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v14 forKey:v17];
  v13 = [NSNumber numberWithLong:1];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
  objc_storeStrong(location, 0);

  return v13;
}

- (id)hashFromCoreDictionary:(id)dictionary error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  errorCopy = error;
  v37 = 0;
  objc_storeStrong(&v37, domain);
  v36 = [location[0] objectForKey:InputArray];
  v35 = [location[0] objectForKey:OutputArray];
  v34 = [location[0] objectForKey:InputArrayMappingKey];
  v33 = [location[0] objectForKey:InputArrayMappingValue];
  v32 = [location[0] objectForKey:DefaultValue];
  if (v36 && v35 && v34 && v33)
  {
    v30 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v36];
    v29 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v34];
    v28 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v33];
    if (v30 && v29 && v28)
    {
      v17 = [v29 count];
      if (v17 == [v28 count])
      {
        v27 = objc_alloc_init(NSMutableDictionary);
        for (i = 0; i < [v29 count]; ++i)
        {
          v15 = [v28 objectAtIndex:i];
          v14 = [v29 objectAtIndex:i];
          [v27 setObject:v15 forKey:?];
        }

        v25 = objc_alloc_init(NSMutableArray);
        for (j = 0; ; ++j)
        {
          v13 = j;
          if (v13 >= [v30 count])
          {
            break;
          }

          v23 = [v30 objectAtIndex:j];
          v22 = [v27 objectForKey:v23];
          if (v22)
          {
            [v25 addObject:v22];
          }

          else if (v32)
          {
            [v25 addObject:v32];
          }

          objc_storeStrong(&v22, 0);
          objc_storeStrong(&v23, 0);
        }

        [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v25 forKey:v35];
        v41 = [NSNumber numberWithLong:1];
        v31 = 1;
        objc_storeStrong(&v25, 0);
        objc_storeStrong(&v27, 0);
      }

      else
      {
        v9 = [NSError alloc];
        v16 = [v9 initWithDomain:v37 code:130 userInfo:0];
        v10 = v16;
        *errorCopy = v16;
        v41 = 0;
        v31 = 1;
      }
    }

    else
    {
      v7 = [NSError alloc];
      v18 = [v7 initWithDomain:v37 code:129 userInfo:0];
      v8 = v18;
      *errorCopy = v18;
      v41 = 0;
      v31 = 1;
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  else
  {
    v5 = [NSError alloc];
    v19 = [v5 initWithDomain:v37 code:128 userInfo:0];
    v6 = v19;
    *errorCopy = v19;
    v41 = 0;
    v31 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  v11 = v41;

  return v11;
}

- (id)hashAdamIdsToIndices:(id)indices error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, indices);
  errorCopy = error;
  v30 = 0;
  objc_storeStrong(&v30, domain);
  v29 = [location[0] objectForKey:InputArray];
  v28 = [location[0] objectForKey:OutputArray];
  v27 = [location[0] objectForKey:Mapping];
  v26 = [location[0] objectForKey:DefaultValue];
  if (v29 && v28 && v27)
  {
    v24 = [(AMDDODMLAttachmentProcessor *)selfCopy->_attachmentsProcessor hashMapForKey:v27];
    if (v24)
    {
      v23 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v29];
      if (v23)
      {
        v22 = objc_alloc_init(NSMutableArray);
        for (i = 0; ; ++i)
        {
          v13 = i;
          if (v13 >= [v23 count])
          {
            break;
          }

          v20 = [v23 objectAtIndex:i];
          v19 = [v24 objectForKey:v20];
          if (v19)
          {
            [v22 addObject:v19];
          }

          else if (v26)
          {
            [v22 addObject:v26];
          }

          objc_storeStrong(&v19, 0);
          objc_storeStrong(&v20, 0);
        }

        [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v22 forKey:v28];
        v34 = [NSNumber numberWithLong:1];
        v25 = 1;
        objc_storeStrong(&v22, 0);
      }

      else
      {
        v9 = [NSError alloc];
        v14 = [v9 initWithDomain:v30 code:30 userInfo:0];
        v10 = v14;
        *errorCopy = v14;
        v34 = 0;
        v25 = 1;
      }

      objc_storeStrong(&v23, 0);
    }

    else
    {
      v7 = [NSError alloc];
      v15 = [v7 initWithDomain:v30 code:22 userInfo:0];
      v8 = v15;
      *errorCopy = v15;
      v34 = 0;
      v25 = 1;
    }

    objc_storeStrong(&v24, 0);
  }

  else
  {
    v5 = [NSError alloc];
    v16 = [v5 initWithDomain:v30 code:41 userInfo:0];
    v6 = v16;
    *errorCopy = v16;
    v34 = 0;
    v25 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  v11 = v34;

  return v11;
}

- (id)ifStatement:(id)statement error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statement);
  errorCopy = error;
  v111 = 0;
  objc_storeStrong(&v111, domain);
  v110 = [location[0] objectForKey:IfStatement];
  v109 = [location[0] objectForKey:OutputArray];
  v108 = [location[0] objectForKey:AllowedIterationNumber];
  v107 = objc_alloc_init(NSMutableArray);
  v106 = objc_alloc_init(NSMutableArray);
  v105 = objc_alloc_init(NSMutableArray);
  if (!v110 || !v109)
  {
    v5 = [NSError alloc];
    v64 = [v5 initWithDomain:v111 code:151 userInfo:0];
    v6 = v64;
    *errorCopy = v64;
    v115 = 0;
    v104 = 1;
    goto LABEL_100;
  }

  if (!v108)
  {
    v108 = [NSNumber numberWithLong:10000];
  }

  v103 = 0;
  v102 = 0;
  while (1)
  {
    if ([v105 count] || (v63 = 0, !v103))
    {
      v62 = v102;
      v63 = v62 < [v108 longValue];
    }

    if (!v63)
    {
      break;
    }

    ++v102;
    v101 = [v110 copy];
    v100 = [v107 count] - 1;
    for (i = 0; i < v100; ++i)
    {
      v98 = [v107 objectAtIndex:i];
      v97 = [v101 objectForKey:Statements];
      v7 = [v97 objectAtIndex:{objc_msgSend(v98, "intValue")}];
      v8 = v101;
      v101 = v7;

      objc_storeStrong(&v97, 0);
      objc_storeStrong(&v98, 0);
    }

    v96 = [v107 count];
    if (v96 <= 0)
    {
      goto LABEL_30;
    }

    lastObject = [v107 lastObject];
    intValue = [lastObject intValue];

    v95 = intValue;
    v94 = [v101 objectForKey:Statements];
    v93 = [v94 count];
    if (v95 < v93)
    {
      v9 = [v94 objectAtIndex:v95];
      v10 = v101;
      v101 = v9;

      v104 = 0;
    }

    else
    {
      [v107 removeLastObject];
      [v106 removeLastObject];
      lastObject2 = [v105 lastObject];
      [v105 removeLastObject];
      v91 = [v105 count];
      if (v91 <= 0)
      {
        objc_storeStrong(&v103, lastObject2);
      }

      else
      {
        lastObject3 = [v105 lastObject];
        bOOLValue = [lastObject3 BOOLValue];

        v90 = bOOLValue;
        lastObject4 = [v106 lastObject];
        [v105 removeLastObject];
        if ([lastObject4 isEqual:andKey])
        {
          bOOLValue2 = 0;
          if (v90)
          {
            bOOLValue2 = [lastObject2 BOOLValue];
          }

          v90 = bOOLValue2 & 1;
        }

        else if ([lastObject4 isEqual:orKey])
        {
          bOOLValue3 = 1;
          if ((v90 & 1) == 0)
          {
            bOOLValue3 = [lastObject2 BOOLValue];
          }

          v90 = bOOLValue3 & 1;
        }

        v50 = v105;
        v51 = [NSNumber numberWithBool:v90 & 1];
        [v50 addObject:?];

        lastObject5 = [v107 lastObject];
        v53 = [lastObject5 intValue] + 1;

        v88 = v53;
        [v107 removeLastObject];
        v54 = v107;
        v55 = [NSNumber numberWithInt:v88];
        [v54 addObject:?];

        objc_storeStrong(&lastObject4, 0);
      }

      v104 = 2;
      objc_storeStrong(&lastObject2, 0);
    }

    objc_storeStrong(&v94, 0);
    if (!v104)
    {
LABEL_30:
      v87 = [v101 objectForKey:Operation];
      if (([v87 isEqual:NAKey] & 1) == 0)
      {
        if ([v87 isEqual:andKey])
        {
          [v105 addObject:&off_10002E110];
        }

        else if ([v87 isEqual:orKey])
        {
          [v105 addObject:&off_10002E128];
        }

        [v106 addObject:v87];
        [v107 addObject:&off_10002E128];
        goto LABEL_67;
      }

      v86 = [v101 objectForKey:Statement];
      v85 = [v86 objectForKey:InputArray];
      v84 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v85];
      v83 = [v86 objectForKey:ComparisonOp];
      v82 = [v86 objectForKey:ComparisonNumber];
      v81 = 0;
      if ([v83 isEqual:HasLengthEqualTo])
      {
        v49 = [v84 count];
        if (v49 == [v82 intValue])
        {
          objc_storeStrong(&v81, &off_10002E110);
        }

        else
        {
          objc_storeStrong(&v81, &off_10002E128);
        }

LABEL_50:
        if ([v105 count])
        {
          lastObject6 = [v105 lastObject];
          bOOLValue4 = [lastObject6 BOOLValue];

          v79 = bOOLValue4;
          lastObject7 = [v106 lastObject];
          [v105 removeLastObject];
          if ([lastObject7 isEqual:andKey])
          {
            bOOLValue5 = 0;
            if (v79)
            {
              bOOLValue5 = [v81 BOOLValue];
            }

            v79 = bOOLValue5 & 1;
          }

          else if ([lastObject7 isEqual:orKey])
          {
            bOOLValue6 = 1;
            if ((v79 & 1) == 0)
            {
              bOOLValue6 = [v81 BOOLValue];
            }

            v79 = bOOLValue6 & 1;
          }

          v35 = v105;
          v36 = [NSNumber numberWithBool:v79 & 1];
          [v35 addObject:?];

          lastObject8 = [v107 lastObject];
          v38 = [lastObject8 intValue] + 1;

          v77 = v38;
          [v107 removeLastObject];
          v39 = v107;
          v40 = [NSNumber numberWithInt:v38];
          [v39 addObject:?];

          objc_storeStrong(&lastObject7, 0);
        }

        else
        {
          objc_storeStrong(&v103, v81);
        }

        objc_storeStrong(&v81, 0);
        objc_storeStrong(&v82, 0);
        objc_storeStrong(&v83, 0);
        objc_storeStrong(&v84, 0);
        objc_storeStrong(&v85, 0);
        objc_storeStrong(&v86, 0);
LABEL_67:
        objc_storeStrong(&v87, 0);
        v104 = 0;
        goto LABEL_68;
      }

      firstObject = [v84 firstObject];
      if ([v83 isEqual:IsEqualTo])
      {
        [firstObject doubleValue];
        v48 = v11;
        [v82 doubleValue];
        if (v48 == v12)
        {
          goto LABEL_47;
        }

LABEL_48:
        objc_storeStrong(&v81, &off_10002E128);
      }

      else if ([v83 isEqual:GreaterThan])
      {
        [firstObject doubleValue];
        v47 = v13;
        [v82 doubleValue];
        if (v47 <= v14)
        {
          goto LABEL_48;
        }

LABEL_47:
        objc_storeStrong(&v81, &off_10002E110);
      }

      else
      {
        if ([v83 isEqual:LessThan])
        {
          [firstObject doubleValue];
          v46 = v15;
          [v82 doubleValue];
          if (v46 < v16)
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        }

        if ([v83 isEqual:NotEqualTo])
        {
          [firstObject doubleValue];
          v45 = v17;
          [v82 doubleValue];
          if (v45 != v18)
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        }
      }

      objc_storeStrong(&firstObject, 0);
      goto LABEL_50;
    }

LABEL_68:
    objc_storeStrong(&v101, 0);
  }

  v76 = [location[0] objectForKey:IfEffect];
  v75 = [location[0] objectForKey:ElseEffect];
  if (([v103 BOOLValue] & 1) != 0 && v76)
  {
    memset(__b, 0, sizeof(__b));
    v33 = v76;
    v34 = [v33 countByEnumeratingWithState:__b objects:v118 count:16];
    if (v34)
    {
      v30 = *__b[2];
      v31 = 0;
      v32 = v34;
      while (1)
      {
        v29 = v31;
        if (*__b[2] != v30)
        {
          objc_enumerationMutation(v33);
        }

        v74 = *(__b[1] + 8 * v31);
        v72 = [v74 objectForKey:FunctionName];
        v71 = [(AMDDODMLDataProcessor *)selfCopy parseAndCall:v72 withInputs:v74 error:errorCopy errorDomain:v111];
        if (v71)
        {
          v104 = 0;
        }

        else
        {
          v115 = 0;
          v104 = 1;
        }

        objc_storeStrong(&v71, 0);
        objc_storeStrong(&v72, 0);
        if (v104)
        {
          break;
        }

        ++v31;
        if (v29 + 1 >= v32)
        {
          v31 = 0;
          v32 = [v33 countByEnumeratingWithState:__b objects:v118 count:16];
          if (!v32)
          {
            goto LABEL_81;
          }
        }
      }
    }

    else
    {
LABEL_81:
      v104 = 0;
    }

    if (!v104)
    {
      goto LABEL_98;
    }
  }

  else
  {
    if (([v103 BOOLValue] & 1) != 0 || !v75)
    {
      goto LABEL_98;
    }

    memset(v69, 0, sizeof(v69));
    v27 = v75;
    v28 = [v27 countByEnumeratingWithState:v69 objects:v117 count:16];
    if (v28)
    {
      v24 = *v69[2];
      v25 = 0;
      v26 = v28;
      while (1)
      {
        v23 = v25;
        if (*v69[2] != v24)
        {
          objc_enumerationMutation(v27);
        }

        v70 = *(v69[1] + 8 * v25);
        v68 = [v70 objectForKey:FunctionName];
        v67 = [(AMDDODMLDataProcessor *)selfCopy parseAndCall:v68 withInputs:v70 error:errorCopy errorDomain:v111];
        if (v67)
        {
          v104 = 0;
        }

        else
        {
          v115 = 0;
          v104 = 1;
        }

        objc_storeStrong(&v67, 0);
        objc_storeStrong(&v68, 0);
        if (v104)
        {
          break;
        }

        ++v25;
        if (v23 + 1 >= v26)
        {
          v25 = 0;
          v26 = [v27 countByEnumeratingWithState:v69 objects:v117 count:16];
          if (!v26)
          {
            goto LABEL_96;
          }
        }
      }
    }

    else
    {
LABEL_96:
      v104 = 0;
    }

    if (!v104)
    {
LABEL_98:
      coreDictionary = selfCopy->_coreDictionary;
      v116 = v103;
      v22 = [NSArray arrayWithObjects:&v116 count:1];
      [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];

      v115 = [NSNumber numberWithLong:1];
      v104 = 1;
    }
  }

  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v103, 0);
LABEL_100:
  objc_storeStrong(&v105, 0);
  objc_storeStrong(&v106, 0);
  objc_storeStrong(&v107, 0);
  objc_storeStrong(&v108, 0);
  objc_storeStrong(&v109, 0);
  objc_storeStrong(&v110, 0);
  objc_storeStrong(&v111, 0);
  objc_storeStrong(location, 0);
  v19 = v115;

  return v19;
}

- (id)generateHashFromInputs:(id)inputs error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, inputs);
  errorCopy = error;
  v40 = 0;
  objc_storeStrong(&v40, domain);
  v39 = [location[0] objectForKey:InputArray];
  v38 = [location[0] objectForKey:Mapping];
  v37 = [location[0] objectForKey:MaxHashValue];
  if (v39 && v38 && v37)
  {
    v35 = objc_alloc_init(NSMutableSet);
    for (i = 0; ; ++i)
    {
      v25 = i;
      if (v25 >= [v39 count])
      {
        break;
      }

      v33 = [v39 objectAtIndex:i];
      v32 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v33];
      if (v32)
      {
        [v35 addObjectsFromArray:v32];
        v36 = 0;
      }

      else
      {
        v7 = [NSError alloc];
        v24 = [v7 initWithDomain:v40 code:110 userInfo:0];
        v8 = v24;
        *errorCopy = v24;
        v44 = 0;
        v36 = 1;
      }

      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
      if (v36)
      {
        goto LABEL_22;
      }
    }

    v23 = [v35 count];
    if (v23 > [v37 longValue])
    {
      v9 = [NSError alloc];
      v22 = [v9 initWithDomain:v40 code:112 userInfo:0];
      v10 = v22;
      *errorCopy = v22;
      v44 = 0;
      v36 = 1;
    }

    else
    {
      v31 = 0;
      v30 = objc_alloc_init(NSMutableDictionary);
      memset(__b, 0, 0x40uLL);
      v21 = v35;
      v11 = [v21 countByEnumeratingWithState:__b objects:v45 count:16];
      if (v11)
      {
        v18 = *__b[2];
        v19 = 0;
        v20 = v11;
        while (1)
        {
          v17 = v19;
          if (*__b[2] != v18)
          {
            objc_enumerationMutation(v21);
          }

          __b[8] = *(__b[1] + 8 * v19);
          v15 = v30;
          v16 = [NSNumber numberWithLong:v31];
          [v15 setObject:? forKey:?];

          ++v31;
          ++v19;
          if (v17 + 1 >= v20)
          {
            v19 = 0;
            v20 = [v21 countByEnumeratingWithState:__b objects:v45 count:16];
            if (!v20)
            {
              break;
            }
          }
        }
      }

      v12 = [(AMDDODMLAttachmentProcessor *)selfCopy->_attachmentsProcessor setHashMap:v30 forKey:v38];
      v44 = [NSNumber numberWithLong:1];
      v36 = 1;
      objc_storeStrong(&v30, 0);
    }

LABEL_22:
    objc_storeStrong(&v35, 0);
  }

  else
  {
    v5 = [NSError alloc];
    v26 = [v5 initWithDomain:v40 code:111 userInfo:0];
    v6 = v26;
    *errorCopy = v26;
    v44 = 0;
    v36 = 1;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  v13 = v44;

  return v13;
}

- (id)insertArray:(id)array error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v27 = 0;
  objc_storeStrong(&v27, domain);
  v26 = [location[0] objectForKey:ConstantValue];
  v25 = [location[0] objectForKey:FinalLength];
  v24 = [location[0] objectForKey:OutputArray];
  v23 = [location[0] objectForKey:FinalLengthLikeOtherArray];
  if (!v23)
  {
    goto LABEL_10;
  }

  v22 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v23];
  v21 = [location[0] objectForKey:FinalLengthLikeOtherArrayMultiplier];
  v20 = [location[0] objectForKey:FinalLengthLikeOtherArrayOffset];
  if (v22 && v21 && v20)
  {
    v7 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v20 longValue] + objc_msgSend(v22, "count") * objc_msgSend(v21, "longValue"));
    v8 = v25;
    v25 = v7;

    v19 = 0;
  }

  else
  {
    v5 = [NSError alloc];
    v14 = [v5 initWithDomain:v27 code:42 userInfo:0];
    v6 = v14;
    *errorCopy = v14;
    v31 = 0;
    v19 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  if (!v19)
  {
LABEL_10:
    if (v24 && v25 && v26)
    {
      v18 = objc_alloc_init(NSMutableArray);
      for (i = 0; i < [v25 longValue]; ++i)
      {
        [v18 addObject:v26];
      }

      [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v18 forKey:v24];
      v31 = [NSNumber numberWithLong:1];
      v19 = 1;
      objc_storeStrong(&v18, 0);
    }

    else
    {
      v9 = [NSError alloc];
      v13 = [v9 initWithDomain:v27 code:42 userInfo:0];
      v10 = v13;
      *errorCopy = v13;
      v31 = 0;
      v19 = 1;
    }
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  v11 = v31;

  return v11;
}

- (id)insertRawArray:(id)array error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v14 = 0;
  objc_storeStrong(&v14, domain);
  v13 = [location[0] objectForKey:InputArray];
  v12 = [location[0] objectForKey:OutputArray];
  if (v12 && v13)
  {
    [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v13 forKey:v12];
    v18 = [NSNumber numberWithLong:1];
  }

  else
  {
    v5 = [NSError alloc];
    v9 = [v5 initWithDomain:v14 code:150 userInfo:0];
    v6 = v9;
    *errorCopy = v9;
    v18 = 0;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  v7 = v18;

  return v7;
}

- (id)padArray:(id)array error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v41 = 0;
  objc_storeStrong(&v41, domain);
  v40 = [location[0] objectForKey:InputArray];
  v39 = [location[0] objectForKey:OutputArray];
  v38 = [location[0] objectForKey:PaddingValue];
  v37 = [location[0] objectForKey:PadEnd];
  v36 = [location[0] objectForKey:FinalLength];
  v35 = [location[0] objectForKey:FinalLengthLikeOtherArray];
  if (!v35)
  {
    goto LABEL_12;
  }

  v34 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v35];
  v33 = [location[0] objectForKey:FinalLengthLikeOtherArrayMultiplier];
  v32 = [location[0] objectForKey:FinalLengthLikeOtherArrayOffset];
  if (v34 && v33 && v32)
  {
    v7 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v32 longValue] + objc_msgSend(v34, "count") * objc_msgSend(v33, "longValue"));
    v8 = v36;
    v36 = v7;

    v31 = 0;
  }

  else
  {
    v5 = [NSError alloc];
    v22 = [v5 initWithDomain:v41 code:43 userInfo:0];
    v6 = v22;
    *errorCopy = v22;
    v45 = 0;
    v31 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  if (!v31)
  {
LABEL_12:
    if (v40 && v39 && v38 && v37 && v36)
    {
      if ([v37 isEqual:&off_10002E128] & 1) != 0 || (objc_msgSend(v37, "isEqual:", &off_10002E110))
      {
        v30 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v40];
        if (v30)
        {
          v29 = objc_alloc_init(NSMutableArray);
          longValue = [v36 longValue];
          v28 = longValue - [v30 count];
          if ([v37 isEqual:&off_10002E128])
          {
            for (i = 0; i < v28; ++i)
            {
              [v29 addObject:v38];
            }
          }

          for (j = 0; j < [v30 count]; ++j)
          {
            v17 = [v30 objectAtIndex:j];
            [v29 addObject:?];
          }

          if ([v37 isEqual:&off_10002E110])
          {
            for (k = 0; k < v28; ++k)
            {
              [v29 addObject:v38];
            }
          }

          [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v29 forKey:v39];
          v45 = [NSNumber numberWithLong:1];
          v31 = 1;
          objc_storeStrong(&v29, 0);
        }

        else
        {
          v13 = [NSError alloc];
          v19 = [v13 initWithDomain:v41 code:31 userInfo:0];
          v14 = v19;
          *errorCopy = v19;
          v45 = 0;
          v31 = 1;
        }

        objc_storeStrong(&v30, 0);
      }

      else
      {
        v11 = [NSError alloc];
        v20 = [v11 initWithDomain:v41 code:43 userInfo:0];
        v12 = v20;
        *errorCopy = v20;
        v45 = 0;
        v31 = 1;
      }
    }

    else
    {
      v9 = [NSError alloc];
      v21 = [v9 initWithDomain:v41 code:43 userInfo:0];
      v10 = v21;
      *errorCopy = v21;
      v45 = 0;
      v31 = 1;
    }
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  v15 = v45;

  return v15;
}

- (id)randomizeArray:(id)array error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v115 = 0;
  objc_storeStrong(&v115, domain);
  v114 = [location[0] objectForKey:InputArray];
  v113 = [location[0] objectForKey:OutputArray];
  *(&v112 + 1) = [location[0] objectForKey:OtherAffectedVectorsOutputKeys];
  *&v112 = [location[0] objectForKey:OtherAffectedVectors];
  if (v112 == 0)
  {
    *(&v112 + 1) = objc_alloc_init(NSDictionary);

    *&v112 = objc_alloc_init(NSDictionary);
LABEL_32:
    if (v114 && v113)
    {
      v105 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v114];
      if (v105)
      {
        v104 = objc_alloc_init(NSMutableDictionary);
        memset(v102, 0, sizeof(v102));
        v54 = *(&v112 + 1);
        v55 = [v54 countByEnumeratingWithState:v102 objects:v122 count:16];
        if (v55)
        {
          v51 = *v102[2];
          v52 = 0;
          v53 = v55;
          while (1)
          {
            v50 = v52;
            if (*v102[2] != v51)
            {
              objc_enumerationMutation(v54);
            }

            v103 = *(v102[1] + 8 * v52);
            v101 = [*(&v112 + 1) objectForKey:v103];
            v48 = v104;
            v49 = objc_alloc_init(NSMutableArray);
            [v48 setObject:? forKey:?];

            objc_storeStrong(&v101, 0);
            ++v52;
            if (v50 + 1 >= v53)
            {
              v52 = 0;
              v53 = [v54 countByEnumeratingWithState:v102 objects:v122 count:16];
              if (!v53)
              {
                break;
              }
            }
          }
        }

        v100 = objc_alloc_init(NSMutableArray);
        for (i = 0; i < [v105 count]; ++i)
        {
          v47 = [NSNumber numberWithLong:i];
          [v100 addObject:?];
        }

        v98 = [v100 count];
        for (j = 0; j < v98; ++j)
        {
          v96 = &v98[-j];
          v95 = arc4random() % &v98[-j] + j;
          [v100 exchangeObjectAtIndex:j withObjectAtIndex:v95];
        }

        v94 = objc_alloc_init(NSMutableArray);
        for (k = 0; ; ++k)
        {
          v46 = k;
          if (v46 >= [v105 count])
          {
            break;
          }

          v40 = [v100 objectAtIndex:k];
          longValue = [v40 longValue];

          v92 = longValue;
          v42 = v94;
          v43 = [v105 objectAtIndex:longValue];
          [v42 addObject:?];

          memset(v90, 0, sizeof(v90));
          v44 = *(&v112 + 1);
          v45 = [v44 countByEnumeratingWithState:v90 objects:v121 count:16];
          if (v45)
          {
            v37 = *v90[2];
            v38 = 0;
            v39 = v45;
            while (1)
            {
              v36 = v38;
              if (*v90[2] != v37)
              {
                objc_enumerationMutation(v44);
              }

              v91 = *(v90[1] + 8 * v38);
              v89 = [v112 objectForKey:v91];
              v88 = [*(&v112 + 1) objectForKey:v91];
              v87 = [v104 objectForKey:v88];
              for (m = 0; ; ++m)
              {
                v35 = m;
                if (v35 >= [v89 longValue])
                {
                  break;
                }

                v33 = v92;
                longValue2 = [v89 longValue];
                v85 = v33 * longValue2 + m;
                v84 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v91];
                v34 = v85;
                if (v34 < [v84 count])
                {
                  v83 = [v84 objectAtIndex:v85];
                  [v87 addObject:v83];
                  objc_storeStrong(&v83, 0);
                  v111 = 0;
                }

                else
                {
                  v20 = [NSError alloc];
                  v32 = [v20 initWithDomain:v115 code:26 userInfo:0];
                  v21 = v32;
                  *errorCopy = v32;
                  v119 = 0;
                  v111 = 1;
                }

                objc_storeStrong(&v84, 0);
                if (v111)
                {
                  goto LABEL_63;
                }
              }

              v111 = 0;
LABEL_63:
              objc_storeStrong(&v87, 0);
              objc_storeStrong(&v88, 0);
              objc_storeStrong(&v89, 0);
              if (v111)
              {
                break;
              }

              ++v38;
              if (v36 + 1 >= v39)
              {
                v38 = 0;
                v39 = [v44 countByEnumeratingWithState:v90 objects:v121 count:16];
                if (!v39)
                {
                  goto LABEL_66;
                }
              }
            }
          }

          else
          {
LABEL_66:
            v111 = 0;
          }

          if (v111)
          {
            goto LABEL_76;
          }
        }

        memset(v81, 0, sizeof(v81));
        v30 = v104;
        v31 = [v30 countByEnumeratingWithState:v81 objects:v120 count:16];
        if (v31)
        {
          v27 = *v81[2];
          v28 = 0;
          v29 = v31;
          while (1)
          {
            v26 = v28;
            if (*v81[2] != v27)
            {
              objc_enumerationMutation(v30);
            }

            v82 = *(v81[1] + 8 * v28);
            coreDictionary = selfCopy->_coreDictionary;
            v25 = [v104 objectForKey:v82];
            [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];

            ++v28;
            if (v26 + 1 >= v29)
            {
              v28 = 0;
              v29 = [v30 countByEnumeratingWithState:v81 objects:v120 count:16];
              if (!v29)
              {
                break;
              }
            }
          }
        }

        [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v94 forKey:v113];
        v119 = [NSNumber numberWithLong:1];
        v111 = 1;
LABEL_76:
        objc_storeStrong(&v94, 0);
        objc_storeStrong(&v100, 0);
        objc_storeStrong(&v104, 0);
      }

      else
      {
        v17 = [NSError alloc];
        v56 = [v17 initWithDomain:v115 code:32 userInfo:0];
        v18 = v56;
        *errorCopy = v56;
        v119 = 0;
        v111 = 1;
      }

      objc_storeStrong(&v105, 0);
    }

    else
    {
      v15 = [NSError alloc];
      v57 = [v15 initWithDomain:v115 code:44 userInfo:0];
      v16 = v57;
      *errorCopy = v57;
      v119 = 0;
      v111 = 1;
    }

    goto LABEL_78;
  }

  if (!*(&v112 + 1) || !v112)
  {
    v5 = [NSError alloc];
    v78 = [v5 initWithDomain:v115 code:44 userInfo:0];
    v6 = v78;
    *errorCopy = v78;
    v119 = 0;
    v111 = 1;
    goto LABEL_78;
  }

  memset(__b, 0, sizeof(__b));
  v76 = *(&v112 + 1);
  v77 = [v76 countByEnumeratingWithState:__b objects:v124 count:16];
  if (v77)
  {
    v73 = *__b[2];
    v74 = 0;
    v75 = v77;
    while (1)
    {
      v72 = v74;
      if (*__b[2] != v73)
      {
        objc_enumerationMutation(v76);
      }

      v110 = *(__b[1] + 8 * v74);
      v71 = [v112 objectForKey:v110];

      if (!v71)
      {
        v7 = [NSError alloc];
        v70 = [v7 initWithDomain:v115 code:44 userInfo:0];
        v8 = v70;
        *errorCopy = v70;
        v119 = 0;
        v111 = 1;
        goto LABEL_17;
      }

      v68 = [v112 objectForKey:v110];
      longValue3 = [v68 longValue];

      if (longValue3 < 1)
      {
        break;
      }

      ++v74;
      if (v72 + 1 >= v75)
      {
        v74 = 0;
        v75 = [v76 countByEnumeratingWithState:__b objects:v124 count:16];
        if (!v75)
        {
          goto LABEL_16;
        }
      }
    }

    v9 = [NSError alloc];
    v67 = [v9 initWithDomain:v115 code:44 userInfo:0];
    v10 = v67;
    *errorCopy = v67;
    v119 = 0;
    v111 = 1;
  }

  else
  {
LABEL_16:
    v111 = 0;
  }

LABEL_17:

  if (!v111)
  {
    memset(v107, 0, sizeof(v107));
    v65 = v112;
    v66 = [v65 countByEnumeratingWithState:v107 objects:v123 count:16];
    if (v66)
    {
      v62 = *v107[2];
      v63 = 0;
      v64 = v66;
      while (1)
      {
        v61 = v63;
        if (*v107[2] != v62)
        {
          objc_enumerationMutation(v65);
        }

        v108 = *(v107[1] + 8 * v63);
        v60 = [*(&v112 + 1) objectForKey:v108];

        if (!v60)
        {
          break;
        }

        v106 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v108];
        if (v106)
        {
          v111 = 0;
        }

        else
        {
          v13 = [NSError alloc];
          v58 = [v13 initWithDomain:v115 code:44 userInfo:0];
          v14 = v58;
          *errorCopy = v58;
          v119 = 0;
          v111 = 1;
        }

        objc_storeStrong(&v106, 0);
        if (v111)
        {
          goto LABEL_31;
        }

        ++v63;
        if (v61 + 1 >= v64)
        {
          v63 = 0;
          v64 = [v65 countByEnumeratingWithState:v107 objects:v123 count:16];
          if (!v64)
          {
            goto LABEL_30;
          }
        }
      }

      v11 = [NSError alloc];
      v59 = [v11 initWithDomain:v115 code:44 userInfo:0];
      v12 = v59;
      *errorCopy = v59;
      v119 = 0;
      v111 = 1;
    }

    else
    {
LABEL_30:
      v111 = 0;
    }

LABEL_31:

    if (!v111)
    {
      goto LABEL_32;
    }
  }

LABEL_78:
  objc_storeStrong(&v112, 0);
  objc_storeStrong(&v112 + 1, 0);
  objc_storeStrong(&v113, 0);
  objc_storeStrong(&v114, 0);
  objc_storeStrong(&v115, 0);
  objc_storeStrong(location, 0);
  v22 = v119;

  return v22;
}

- (id)replicateArray:(id)array error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v24 = 0;
  objc_storeStrong(&v24, domain);
  v23 = [location[0] objectForKey:InputArray];
  v22 = [location[0] objectForKey:NumberOfCopies];
  v21 = [location[0] objectForKey:OutputArray];
  if (v23 && v21 && v22)
  {
    v19 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v23];
    if (v19)
    {
      v18 = objc_alloc_init(NSMutableArray);
      for (i = 0; i < [v22 longValue]; ++i)
      {
        for (j = 0; j < [v19 count]; ++j)
        {
          v11 = [v19 objectAtIndex:j];
          [v18 addObject:?];
        }
      }

      [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v18 forKey:v21];
      v28 = [NSNumber numberWithLong:1];
      v20 = 1;
      objc_storeStrong(&v18, 0);
    }

    else
    {
      v7 = [NSError alloc];
      v12 = [v7 initWithDomain:v24 code:33 userInfo:0];
      v8 = v12;
      *errorCopy = v12;
      v28 = 0;
      v20 = 1;
    }

    objc_storeStrong(&v19, 0);
  }

  else
  {
    v5 = [NSError alloc];
    v13 = [v5 initWithDomain:v24 code:45 userInfo:0];
    v6 = v13;
    *errorCopy = v13;
    v28 = 0;
    v20 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  v9 = v28;

  return v9;
}

- (id)requestData:(id)data withUseStubs:(int64_t)stubs error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  stubsCopy = stubs;
  errorCopy = error;
  v137 = 0;
  objc_storeStrong(&v137, domain);
  v136 = [location[0] objectForKey:FeatureName];
  v135 = [location[0] objectForKey:OutputArray];
  v134 = [location[0] objectForKey:Domain];
  v133 = [location[0] objectForKey:CustomDescriptor];
  v132 = [location[0] objectForKey:SchemaVersion];
  v131 = [location[0] objectForKey:KeySuffix];
  v130 = [location[0] objectForKey:ValueSuffix];
  v129 = [location[0] objectForKey:DictOfArraysPrefix];
  v128 = [location[0] objectForKey:IterateOverNumbers];
  if (!v136 || !v135 || !v134)
  {
    v6 = [NSError alloc];
    v88 = [v6 initWithDomain:v137 code:62 userInfo:0];
    v7 = v88;
    *errorCopy = v88;
    v142 = 0;
    v127 = 1;
    goto LABEL_121;
  }

  if (!v131 || !v130)
  {
    objc_storeStrong(&v131, DefaultKeySuffix);
    objc_storeStrong(&v130, DefaultValueSuffix);
  }

  if (!v129)
  {
    v129 = [v135 stringByAppendingString:Underscore];
  }

  v8 = [AMDClientRequestEvent alloc];
  v126 = [v8 initWithFeatureName:v136 withAccountDSID:0 andAccountStoreFrontId:0 inDomain:v134 withCustomDescriptor:v133 andSchemaVersion:v132];
  if (v126)
  {
    v125 = 0;
    if (stubsCopy)
    {
      v11 = [selfCopy->_myAMDClient getFeatureStub:v126];
      v12 = v125;
      v125 = v11;
    }

    else
    {
      for (i = 0; i < 3; ++i)
      {
        v13 = [selfCopy->_myAMDClient getFeature:v126];
        v14 = v125;
        v125 = v13;

        v122 = 0;
        v86 = 0;
        if (v125)
        {
          v123 = [v125 objectForKey:AMD_CLIENT_STATUS];
          v122 = 1;
          v86 = [v123 isEqual:AMD_CLIENT_STATUS_OK];
        }

        if (v122)
        {
        }

        if (v86)
        {
          break;
        }
      }
    }

    if (!v125)
    {
      v15 = [NSError alloc];
      v85 = [v15 initWithDomain:v137 code:64 userInfo:0];
      v16 = v85;
      *errorCopy = v85;
      v142 = 0;
      v127 = 1;
LABEL_119:
      objc_storeStrong(&v125, 0);
      goto LABEL_120;
    }

    v121 = [v125 objectForKey:AMD_CLIENT_STATUS];
    if (([v121 isEqual:AMD_CLIENT_STATUS_OK] & 1) == 0)
    {
      v17 = [NSError alloc];
      v84 = [v17 initWithDomain:v137 code:65 userInfo:0];
      v18 = v84;
      *errorCopy = v84;
      v142 = 0;
      v127 = 1;
LABEL_118:
      objc_storeStrong(&v121, 0);
      goto LABEL_119;
    }

    v120 = [v125 objectForKey:AMD_CLIENT_DATA];
    if (!v120)
    {
      v19 = [NSError alloc];
      v83 = [v19 initWithDomain:v137 code:66 userInfo:0];
      v20 = v83;
      *errorCopy = v83;
      v142 = 0;
      v127 = 1;
LABEL_117:
      objc_storeStrong(&v120, 0);
      goto LABEL_118;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v119 = v120;
      [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v119 forKey:v135];
      v142 = [NSNumber numberWithLong:1];
      v127 = 1;
      objc_storeStrong(&v119, 0);
      goto LABEL_117;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = [NSError alloc];
      v39 = [v35 initWithDomain:v137 code:108 userInfo:0];
      v36 = v39;
      *errorCopy = v39;
      v142 = 0;
      v127 = 1;
      goto LABEL_117;
    }

    v118 = v120;
    v117 = 0;
    memset(__b, 0, sizeof(__b));
    v81 = v118;
    v82 = [v81 countByEnumeratingWithState:__b objects:v147 count:16];
    if (v82)
    {
      v78 = *__b[2];
      v79 = 0;
      v80 = v82;
      while (1)
      {
        v77 = v79;
        if (*__b[2] != v78)
        {
          objc_enumerationMutation(v81);
        }

        v116 = *(__b[1] + 8 * v79);
        v114 = [v118 objectForKey:v116];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v117)
          {
            objc_storeStrong(&v117, IsAnArray);
LABEL_54:
            v127 = 0;
            goto LABEL_55;
          }

          if ([v117 isEqual:IsAnArray])
          {
            goto LABEL_54;
          }

          v21 = [NSError alloc];
          v76 = [v21 initWithDomain:v137 code:107 userInfo:0];
          v22 = v76;
          *errorCopy = v76;
          v142 = 0;
          v127 = 1;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!v117)
            {
              objc_storeStrong(&v117, IsANumber);
              goto LABEL_54;
            }

            if ([v117 isEqual:IsANumber])
            {
              goto LABEL_54;
            }

            v23 = [NSError alloc];
            v75 = [v23 initWithDomain:v137 code:107 userInfo:0];
            v24 = v75;
            *errorCopy = v75;
            v142 = 0;
            v127 = 1;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (!v117)
              {
                objc_storeStrong(&v117, IsADictionary);
                goto LABEL_54;
              }

              if ([v117 isEqual:IsADictionary])
              {
                goto LABEL_54;
              }

              v25 = [NSError alloc];
              v74 = [v25 initWithDomain:v137 code:107 userInfo:0];
              v26 = v74;
              *errorCopy = v74;
              v142 = 0;
              v127 = 1;
            }

            else
            {
              v27 = [NSError alloc];
              v73 = [v27 initWithDomain:v137 code:108 userInfo:0];
              v28 = v73;
              *errorCopy = v73;
              v142 = 0;
              v127 = 1;
            }
          }
        }

LABEL_55:
        objc_storeStrong(&v114, 0);
        if (v127)
        {
          goto LABEL_59;
        }

        ++v79;
        if (v77 + 1 >= v80)
        {
          v79 = 0;
          v80 = [v81 countByEnumeratingWithState:__b objects:v147 count:16];
          if (!v80)
          {
            break;
          }
        }
      }
    }

    v127 = 0;
LABEL_59:

    if (v127)
    {
LABEL_114:
      objc_storeStrong(&v117, 0);
      objc_storeStrong(&v118, 0);
      if (!v127)
      {
        v142 = [NSNumber numberWithLong:1];
        v127 = 1;
      }

      goto LABEL_117;
    }

    if ([v117 isEqual:IsANumber])
    {
      v113 = objc_alloc_init(NSMutableArray);
      v112 = objc_alloc_init(NSMutableArray);
      if (v128 && ([v128 isEqual:IterateOverNumbers] & 1) != 0)
      {
        memset(v110, 0, sizeof(v110));
        v71 = v118;
        v72 = [v71 countByEnumeratingWithState:v110 objects:v146 count:16];
        if (v72)
        {
          v68 = *v110[2];
          v69 = 0;
          v70 = v72;
          while (1)
          {
            v67 = v69;
            if (*v110[2] != v68)
            {
              objc_enumerationMutation(v71);
            }

            v111 = *(v110[1] + 8 * v69);
            [v113 addObject:v111];
            v109 = [v118 objectForKey:v111];
            [v112 addObject:v109];
            objc_storeStrong(&v109, 0);
            ++v69;
            if (v67 + 1 >= v70)
            {
              v69 = 0;
              v70 = [v71 countByEnumeratingWithState:v110 objects:v146 count:16];
              if (!v70)
              {
                break;
              }
            }
          }
        }
      }

      else
      {
        memset(v107, 0, sizeof(v107));
        v65 = v118;
        v66 = [v65 countByEnumeratingWithState:v107 objects:v145 count:16];
        if (v66)
        {
          v62 = *v107[2];
          v63 = 0;
          v64 = v66;
          while (1)
          {
            v61 = v63;
            if (*v107[2] != v62)
            {
              objc_enumerationMutation(v65);
            }

            v108 = *(v107[1] + 8 * v63);
            [v113 addObject:v108];
            v106 = [v118 objectForKey:v108];
            [v112 addObject:v106];
            objc_storeStrong(&v106, 0);
            ++v63;
            if (v61 + 1 >= v64)
            {
              v63 = 0;
              v64 = [v65 countByEnumeratingWithState:v107 objects:v145 count:16];
              if (!v64)
              {
                break;
              }
            }
          }
        }
      }

      v105 = [v135 stringByAppendingString:v131];
      v104 = [v135 stringByAppendingString:v130];
      [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v113 forKey:v105];
      [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v112 forKey:v104];
      objc_storeStrong(&v104, 0);
      objc_storeStrong(&v105, 0);
      objc_storeStrong(&v112, 0);
      objc_storeStrong(&v113, 0);
LABEL_113:
      v127 = 0;
      goto LABEL_114;
    }

    if ([v117 isEqual:IsAnArray])
    {
      memset(v102, 0, sizeof(v102));
      v59 = v118;
      v60 = [v59 countByEnumeratingWithState:v102 objects:v144 count:16];
      if (v60)
      {
        v56 = *v102[2];
        v57 = 0;
        v58 = v60;
        while (1)
        {
          v55 = v57;
          if (*v102[2] != v56)
          {
            objc_enumerationMutation(v59);
          }

          v103 = *(v102[1] + 8 * v57);
          v101 = [v129 stringByAppendingString:v103];
          coreDictionary = selfCopy->_coreDictionary;
          v54 = [v118 objectForKey:v103];
          [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];

          objc_storeStrong(&v101, 0);
          ++v57;
          if (v55 + 1 >= v58)
          {
            v57 = 0;
            v58 = [v59 countByEnumeratingWithState:v102 objects:v144 count:16];
            if (!v58)
            {
              break;
            }
          }
        }
      }

      goto LABEL_113;
    }

    if (([v117 isEqual:IsADictionary] & 1) == 0)
    {
      v33 = [NSError alloc];
      v40 = [v33 initWithDomain:v137 code:108 userInfo:0];
      v34 = v40;
      *errorCopy = v40;
      v142 = 0;
      v127 = 1;
      goto LABEL_114;
    }

    v100 = [location[0] objectForKey:SubKeyDictOfDicts];
    if (!v100)
    {
      v29 = [NSError alloc];
      v52 = [v29 initWithDomain:v137 code:62 userInfo:0];
      v30 = v52;
      *errorCopy = v52;
      v142 = 0;
      v127 = 1;
      goto LABEL_110;
    }

    v99 = [location[0] objectForKey:SubKeyForSkippingTypes];
    v98 = [location[0] objectForKey:TypesToSkip];
    memset(v96, 0, sizeof(v96));
    v50 = v118;
    v51 = [v50 countByEnumeratingWithState:v96 objects:v143 count:16];
    if (!v51)
    {
LABEL_106:
      v127 = 0;
LABEL_107:

      if (!v127)
      {
        v127 = 0;
      }

      objc_storeStrong(&v98, 0);
      objc_storeStrong(&v99, 0);
LABEL_110:
      objc_storeStrong(&v100, 0);
      if (v127)
      {
        goto LABEL_114;
      }

      goto LABEL_113;
    }

    v47 = *v96[2];
    v48 = 0;
    v49 = v51;
    while (1)
    {
      v46 = v48;
      if (*v96[2] != v47)
      {
        objc_enumerationMutation(v50);
      }

      v97 = *(v96[1] + 8 * v48);
      v95 = [v118 objectForKey:v97];
      if (!v99 && !v98)
      {
        break;
      }

      if (v99 && v98)
      {
        v93 = [v95 objectForKey:v99];
        if (([v98 containsObject:v93] & 1) == 0)
        {
          v92 = [v129 stringByAppendingString:v97];
          v42 = selfCopy->_coreDictionary;
          v43 = [v95 objectForKey:v100];
          [NSMutableDictionary setObject:v42 forKey:"setObject:forKey:"];

          objc_storeStrong(&v92, 0);
        }

        objc_storeStrong(&v93, 0);
        goto LABEL_102;
      }

      v31 = [NSError alloc];
      v41 = [v31 initWithDomain:v137 code:62 userInfo:0];
      v32 = v41;
      *errorCopy = v41;
      v142 = 0;
      v127 = 1;
LABEL_103:
      objc_storeStrong(&v95, 0);
      if (v127)
      {
        goto LABEL_107;
      }

      ++v48;
      if (v46 + 1 >= v49)
      {
        v48 = 0;
        v49 = [v50 countByEnumeratingWithState:v96 objects:v143 count:16];
        if (!v49)
        {
          goto LABEL_106;
        }
      }
    }

    v94 = [v129 stringByAppendingString:v97];
    v44 = selfCopy->_coreDictionary;
    v45 = [v95 objectForKey:v100];
    [NSMutableDictionary setObject:v44 forKey:"setObject:forKey:"];

    objc_storeStrong(&v94, 0);
LABEL_102:
    v127 = 0;
    goto LABEL_103;
  }

  v9 = [NSError alloc];
  v87 = [v9 initWithDomain:v137 code:63 userInfo:0];
  v10 = v87;
  *errorCopy = v87;
  v142 = 0;
  v127 = 1;
LABEL_120:
  objc_storeStrong(&v126, 0);
LABEL_121:
  objc_storeStrong(&v128, 0);
  objc_storeStrong(&v129, 0);
  objc_storeStrong(&v130, 0);
  objc_storeStrong(&v131, 0);
  objc_storeStrong(&v132, 0);
  objc_storeStrong(&v133, 0);
  objc_storeStrong(&v134, 0);
  objc_storeStrong(&v135, 0);
  objc_storeStrong(&v136, 0);
  objc_storeStrong(&v137, 0);
  objc_storeStrong(location, 0);
  v37 = v142;

  return v37;
}

- (id)sampleFromDistribution:(id)distribution error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, distribution);
  errorCopy = error;
  v47 = 0;
  objc_storeStrong(&v47, domain);
  v46 = [location[0] objectForKey:OutputArray];
  v45 = [location[0] objectForKey:Mapping];
  v44 = [location[0] objectForKey:NumNegSamps];
  v43 = [location[0] objectForKey:NumNegSampsLikeOtherArray];
  if (!v43)
  {
    goto LABEL_10;
  }

  v42 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v43];
  v41 = [location[0] objectForKey:NumNegSampsLikeOtherArrayMultiplier];
  v40 = [location[0] objectForKey:NumNegSampsLikeOtherArrayOffset];
  if (v42 && v41 && v40)
  {
    v7 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v40 longValue] + objc_msgSend(v42, "count") * objc_msgSend(v41, "longValue"));
    v8 = v44;
    v44 = v7;

    v39 = 0;
  }

  else
  {
    v5 = [NSError alloc];
    v26 = [v5 initWithDomain:v47 code:46 userInfo:0];
    v6 = v26;
    *errorCopy = v26;
    v51 = 0;
    v39 = 1;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  if (!v39)
  {
LABEL_10:
    if (v46 && v45 && v44)
    {
      v38 = [(AMDDODMLAttachmentProcessor *)selfCopy->_attachmentsProcessor negSampleArrayForKey:v45];
      if (v38)
      {
        v37 = objc_alloc_init(NSMutableArray);
        for (i = 0; i < [v44 longValue]; ++i)
        {
          v35 = (arc4random() % 0x80000000) / 2147483650.0;
          v23 = [NSNumber numberWithDouble:v35];
          [v37 addObject:?];
        }

        v34 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:1];
        v52 = v34;
        v22 = [NSArray arrayWithObjects:&v52 count:1];
        v33 = [v37 sortedArrayUsingDescriptors:?];

        v32 = 0;
        v31 = 0;
        v30 = [v33 count];
        v29 = objc_alloc_init(NSMutableArray);
        while (v31 < v30)
        {
          v19 = [v33 objectAtIndexedSubscript:v31];
          [v19 doubleValue];
          v21 = v13;
          v18 = [v38 objectAtIndexedSubscript:v32];
          [v18 doubleValue];
          v20 = v14;

          if (v21 > v20)
          {
            ++v32;
          }

          else
          {
            v17 = [NSNumber numberWithLong:v32, v21];
            [v29 addObject:?];

            ++v31;
          }
        }

        [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v29 forKey:v46];
        v51 = [NSNumber numberWithLong:1];
        v39 = 1;
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v33, 0);
        objc_storeStrong(&v34, 0);
        objc_storeStrong(&v37, 0);
      }

      else
      {
        v11 = [NSError alloc];
        v24 = [v11 initWithDomain:v47 code:23 userInfo:0];
        v12 = v24;
        *errorCopy = v24;
        v51 = 0;
        v39 = 1;
      }

      objc_storeStrong(&v38, 0);
    }

    else
    {
      v9 = [NSError alloc];
      v25 = [v9 initWithDomain:v47 code:46 userInfo:0];
      v10 = v25;
      *errorCopy = v25;
      v51 = 0;
      v39 = 1;
    }
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
  v15 = v51;

  return v15;
}

- (id)sortArray:(id)array error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v121 = 0;
  objc_storeStrong(&v121, domain);
  v120 = [location[0] objectForKey:InputArray];
  v119 = [location[0] objectForKey:OutputArray];
  *(&v118 + 1) = [location[0] objectForKey:OtherAffectedVectorsOutputKeys];
  *&v118 = [location[0] objectForKey:OtherAffectedVectors];
  if (v118 == 0)
  {
    *(&v118 + 1) = objc_alloc_init(NSDictionary);

    *&v118 = objc_alloc_init(NSDictionary);
LABEL_32:
    if (v120 && v119)
    {
      v111 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v120];
      if (v111)
      {
        v110 = objc_alloc_init(NSMutableDictionary);
        memset(v108, 0, sizeof(v108));
        v59 = *(&v118 + 1);
        v60 = [v59 countByEnumeratingWithState:v108 objects:v129 count:16];
        if (v60)
        {
          v56 = *v108[2];
          v57 = 0;
          v58 = v60;
          while (1)
          {
            v55 = v57;
            if (*v108[2] != v56)
            {
              objc_enumerationMutation(v59);
            }

            v109 = *(v108[1] + 8 * v57);
            v107 = [*(&v118 + 1) objectForKey:v109];
            v53 = v110;
            v54 = objc_alloc_init(NSMutableArray);
            [v53 setObject:? forKey:?];

            objc_storeStrong(&v107, 0);
            ++v57;
            if (v55 + 1 >= v58)
            {
              v57 = 0;
              v58 = [v59 countByEnumeratingWithState:v108 objects:v129 count:16];
              if (!v58)
              {
                break;
              }
            }
          }
        }

        v106 = objc_alloc_init(NSMutableArray);
        for (i = 0; ; ++i)
        {
          v52 = i;
          if (v52 >= [v111 count])
          {
            break;
          }

          v51 = [v111 objectAtIndex:i];
          v128[0] = v51;
          v50 = [NSNumber numberWithLong:i];
          v128[1] = v50;
          v104 = [NSArray arrayWithObjects:v128 count:2];

          [v106 addObject:v104];
          objc_storeStrong(&v104, 0);
        }

        v103 = [v106 sortedArrayUsingComparator:&stru_10002C718];
        v102 = objc_alloc_init(NSMutableArray);
        for (j = 0; ; ++j)
        {
          v49 = j;
          if (v49 >= [v103 count])
          {
            break;
          }

          v100 = [v103 objectAtIndex:j];
          v47 = v102;
          lastObject = [v100 lastObject];
          [v47 addObject:?];

          objc_storeStrong(&v100, 0);
        }

        v99 = objc_alloc_init(NSMutableArray);
        for (k = 0; ; ++k)
        {
          v46 = k;
          if (v46 >= [v111 count])
          {
            break;
          }

          v40 = [v102 objectAtIndex:k];
          longValue = [v40 longValue];

          v97 = longValue;
          v42 = v99;
          v43 = [v111 objectAtIndex:longValue];
          [v42 addObject:?];

          memset(v95, 0, sizeof(v95));
          v44 = *(&v118 + 1);
          v45 = [v44 countByEnumeratingWithState:v95 objects:v127 count:16];
          if (v45)
          {
            v37 = *v95[2];
            v38 = 0;
            v39 = v45;
            while (1)
            {
              v36 = v38;
              if (*v95[2] != v37)
              {
                objc_enumerationMutation(v44);
              }

              v96 = *(v95[1] + 8 * v38);
              v94 = [v118 objectForKey:v96];
              v93 = [*(&v118 + 1) objectForKey:v96];
              v92 = [v110 objectForKey:v93];
              for (m = 0; ; ++m)
              {
                v35 = m;
                if (v35 >= [v94 longValue])
                {
                  break;
                }

                v33 = v97;
                longValue2 = [v94 longValue];
                v90 = v33 * longValue2 + m;
                v89 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v96];
                v34 = v90;
                if (v34 < [v89 count])
                {
                  v88 = [v89 objectAtIndex:v90];
                  [v92 addObject:v88];
                  objc_storeStrong(&v88, 0);
                  v117 = 0;
                }

                else
                {
                  v20 = [NSError alloc];
                  v32 = [v20 initWithDomain:v121 code:26 userInfo:0];
                  v21 = v32;
                  *errorCopy = v32;
                  v125 = 0;
                  v117 = 1;
                }

                objc_storeStrong(&v89, 0);
                if (v117)
                {
                  goto LABEL_63;
                }
              }

              v117 = 0;
LABEL_63:
              objc_storeStrong(&v92, 0);
              objc_storeStrong(&v93, 0);
              objc_storeStrong(&v94, 0);
              if (v117)
              {
                break;
              }

              ++v38;
              if (v36 + 1 >= v39)
              {
                v38 = 0;
                v39 = [v44 countByEnumeratingWithState:v95 objects:v127 count:16];
                if (!v39)
                {
                  goto LABEL_66;
                }
              }
            }
          }

          else
          {
LABEL_66:
            v117 = 0;
          }

          if (v117)
          {
            goto LABEL_76;
          }
        }

        memset(v86, 0, sizeof(v86));
        v30 = v110;
        v31 = [v30 countByEnumeratingWithState:v86 objects:v126 count:16];
        if (v31)
        {
          v27 = *v86[2];
          v28 = 0;
          v29 = v31;
          while (1)
          {
            v26 = v28;
            if (*v86[2] != v27)
            {
              objc_enumerationMutation(v30);
            }

            v87 = *(v86[1] + 8 * v28);
            coreDictionary = selfCopy->_coreDictionary;
            v25 = [v110 objectForKey:v87];
            [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];

            ++v28;
            if (v26 + 1 >= v29)
            {
              v28 = 0;
              v29 = [v30 countByEnumeratingWithState:v86 objects:v126 count:16];
              if (!v29)
              {
                break;
              }
            }
          }
        }

        [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v99 forKey:v119];
        v125 = [NSNumber numberWithLong:1];
        v117 = 1;
LABEL_76:
        objc_storeStrong(&v99, 0);
        objc_storeStrong(&v102, 0);
        objc_storeStrong(&v103, 0);
        objc_storeStrong(&v106, 0);
        objc_storeStrong(&v110, 0);
      }

      else
      {
        v17 = [NSError alloc];
        v61 = [v17 initWithDomain:v121 code:104 userInfo:0];
        v18 = v61;
        *errorCopy = v61;
        v125 = 0;
        v117 = 1;
      }

      objc_storeStrong(&v111, 0);
    }

    else
    {
      v15 = [NSError alloc];
      v62 = [v15 initWithDomain:v121 code:103 userInfo:0];
      v16 = v62;
      *errorCopy = v62;
      v125 = 0;
      v117 = 1;
    }

    goto LABEL_78;
  }

  if (!*(&v118 + 1) || !v118)
  {
    v5 = [NSError alloc];
    v83 = [v5 initWithDomain:v121 code:103 userInfo:0];
    v6 = v83;
    *errorCopy = v83;
    v125 = 0;
    v117 = 1;
    goto LABEL_78;
  }

  memset(__b, 0, sizeof(__b));
  v81 = *(&v118 + 1);
  v82 = [v81 countByEnumeratingWithState:__b objects:v131 count:16];
  if (v82)
  {
    v78 = *__b[2];
    v79 = 0;
    v80 = v82;
    while (1)
    {
      v77 = v79;
      if (*__b[2] != v78)
      {
        objc_enumerationMutation(v81);
      }

      v116 = *(__b[1] + 8 * v79);
      v76 = [v118 objectForKey:v116];

      if (!v76)
      {
        v7 = [NSError alloc];
        v75 = [v7 initWithDomain:v121 code:103 userInfo:0];
        v8 = v75;
        *errorCopy = v75;
        v125 = 0;
        v117 = 1;
        goto LABEL_17;
      }

      v73 = [v118 objectForKey:v116];
      longValue3 = [v73 longValue];

      if (longValue3 < 1)
      {
        break;
      }

      ++v79;
      if (v77 + 1 >= v80)
      {
        v79 = 0;
        v80 = [v81 countByEnumeratingWithState:__b objects:v131 count:16];
        if (!v80)
        {
          goto LABEL_16;
        }
      }
    }

    v9 = [NSError alloc];
    v72 = [v9 initWithDomain:v121 code:103 userInfo:0];
    v10 = v72;
    *errorCopy = v72;
    v125 = 0;
    v117 = 1;
  }

  else
  {
LABEL_16:
    v117 = 0;
  }

LABEL_17:

  if (!v117)
  {
    memset(v113, 0, sizeof(v113));
    v70 = v118;
    v71 = [v70 countByEnumeratingWithState:v113 objects:v130 count:16];
    if (v71)
    {
      v67 = *v113[2];
      v68 = 0;
      v69 = v71;
      while (1)
      {
        v66 = v68;
        if (*v113[2] != v67)
        {
          objc_enumerationMutation(v70);
        }

        v114 = *(v113[1] + 8 * v68);
        v65 = [*(&v118 + 1) objectForKey:v114];

        if (!v65)
        {
          break;
        }

        v112 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v114];
        if (v112)
        {
          v117 = 0;
        }

        else
        {
          v13 = [NSError alloc];
          v63 = [v13 initWithDomain:v121 code:103 userInfo:0];
          v14 = v63;
          *errorCopy = v63;
          v125 = 0;
          v117 = 1;
        }

        objc_storeStrong(&v112, 0);
        if (v117)
        {
          goto LABEL_31;
        }

        ++v68;
        if (v66 + 1 >= v69)
        {
          v68 = 0;
          v69 = [v70 countByEnumeratingWithState:v113 objects:v130 count:16];
          if (!v69)
          {
            goto LABEL_30;
          }
        }
      }

      v11 = [NSError alloc];
      v64 = [v11 initWithDomain:v121 code:103 userInfo:0];
      v12 = v64;
      *errorCopy = v64;
      v125 = 0;
      v117 = 1;
    }

    else
    {
LABEL_30:
      v117 = 0;
    }

LABEL_31:

    if (!v117)
    {
      goto LABEL_32;
    }
  }

LABEL_78:
  objc_storeStrong(&v118, 0);
  objc_storeStrong(&v118 + 1, 0);
  objc_storeStrong(&v119, 0);
  objc_storeStrong(&v120, 0);
  objc_storeStrong(&v121, 0);
  objc_storeStrong(location, 0);
  v22 = v125;

  return v22;
}

- (id)spliceArray:(id)array error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v42 = 0;
  objc_storeStrong(&v42, domain);
  v41 = [location[0] objectForKey:Starting];
  v40 = [location[0] objectForKey:Ending];
  v39 = [location[0] objectForKey:InputArray];
  v38 = [location[0] objectForKey:OutputArray];
  v37 = [location[0] objectForKey:StartingLikeOtherArray];
  v36 = [location[0] objectForKey:EndingLikeOtherArray];
  if (!v37)
  {
    goto LABEL_36;
  }

  v35 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v37];
  v34 = [location[0] objectForKey:StartingLikeOtherArrayMultiplier];
  v33 = [location[0] objectForKey:StartingLikeOtherArrayOffset];
  if (v35 && v34 && v33)
  {
    v7 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v33 longValue] + objc_msgSend(v35, "count") * objc_msgSend(v34, "longValue"));
    v8 = v41;
    v41 = v7;

    v32 = 0;
  }

  else
  {
    v5 = [NSError alloc];
    v23 = [v5 initWithDomain:v42 code:47 userInfo:0];
    v6 = v23;
    *errorCopy = v23;
    v46 = 0;
    v32 = 1;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  if (!v32)
  {
LABEL_36:
    if (!v36)
    {
      goto LABEL_18;
    }

    v31 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v36];
    v30 = [location[0] objectForKey:EndingLikeOtherArrayMultiplier];
    v29 = [location[0] objectForKey:EndingLikeOtherArrayOffset];
    if (v31 && v30 && v29)
    {
      v11 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v29 longValue] + objc_msgSend(v31, "count") * objc_msgSend(v30, "longValue"));
      v12 = v40;
      v40 = v11;

      v32 = 0;
    }

    else
    {
      v9 = [NSError alloc];
      v22 = [v9 initWithDomain:v42 code:47 userInfo:0];
      v10 = v22;
      *errorCopy = v22;
      v46 = 0;
      v32 = 1;
    }

    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    if (!v32)
    {
LABEL_18:
      if (v39 && v38 && v41 && v40)
      {
        v28 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v39];
        if (v28)
        {
          v27 = objc_alloc_init(NSMutableArray);
          for (i = 0; i < [v28 count]; ++i)
          {
            if (i >= [v41 longValue] && i < objc_msgSend(v40, "longValue"))
            {
              v19 = [v28 objectAtIndex:i];
              [v27 addObject:?];
            }
          }

          [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v27 forKey:v38];
          v46 = [NSNumber numberWithLong:1];
          v32 = 1;
          objc_storeStrong(&v27, 0);
        }

        else
        {
          v15 = [NSError alloc];
          v20 = [v15 initWithDomain:v42 code:34 userInfo:0];
          v16 = v20;
          *errorCopy = v20;
          v46 = 0;
          v32 = 1;
        }

        objc_storeStrong(&v28, 0);
      }

      else
      {
        v13 = [NSError alloc];
        v21 = [v13 initWithDomain:v42 code:47 userInfo:0];
        v14 = v21;
        *errorCopy = v21;
        v46 = 0;
        v32 = 1;
      }
    }
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  v17 = v46;

  return v17;
}

- (id)strideCopyArray:(id)array error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v30 = 0;
  objc_storeStrong(&v30, domain);
  v29 = [location[0] objectForKey:StridesForSample];
  v28 = [location[0] objectForKey:ElementsInSample];
  v27 = [location[0] objectForKey:InputArray];
  v26 = [location[0] objectForKey:OutputArray];
  v25 = [location[0] objectForKey:Starting];
  if (!v25)
  {
    objc_storeStrong(&v25, &off_10002E128);
  }

  if (v27 && v26 && v28 && v29)
  {
    v23 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v27];
    if (v23)
    {
      v22 = objc_alloc_init(NSMutableArray);
      v13 = [v23 count];
      v21 = v13 - [v28 longValue];
      for (i = [v25 longValue]; i <= v21; i += longValue)
      {
        for (j = 0; ; ++j)
        {
          v12 = j;
          if (v12 >= [v28 longValue])
          {
            break;
          }

          v18 = [v23 objectAtIndex:i + j];
          [v22 addObject:v18];
          objc_storeStrong(&v18, 0);
        }

        longValue = [v29 longValue];
      }

      [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v22 forKey:v26];
      v34 = [NSNumber numberWithLong:1];
      v24 = 1;
      objc_storeStrong(&v22, 0);
    }

    else
    {
      v7 = [NSError alloc];
      v14 = [v7 initWithDomain:v30 code:35 userInfo:0];
      v8 = v14;
      *errorCopy = v14;
      v34 = 0;
      v24 = 1;
    }

    objc_storeStrong(&v23, 0);
  }

  else
  {
    v5 = [NSError alloc];
    v15 = [v5 initWithDomain:v30 code:48 userInfo:0];
    v6 = v15;
    *errorCopy = v15;
    v34 = 0;
    v24 = 1;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  v10 = v34;

  return v10;
}

- (id)strideCopyAndSplitArray:(id)array error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v69 = 0;
  objc_storeStrong(&v69, domain);
  v68 = [location[0] objectForKey:StridesForSample];
  v67 = [location[0] objectForKey:ElementsInSample];
  v66 = [location[0] objectForKey:InputArray];
  v65 = [location[0] objectForKey:Starting];
  if (!v65)
  {
    objc_storeStrong(&v65, &off_10002E128);
  }

  v64 = [location[0] objectForKey:SplitArrayInstructions];
  if (v64 && v66 && v67 && v68)
  {
    v62 = 0;
    for (i = 0; ; ++i)
    {
      v38 = i;
      if (v38 >= [v64 count])
      {
        break;
      }

      v60 = [v64 objectAtIndex:i];
      if ([v60 count] == 2)
      {
        v59 = [v60 objectAtIndex:1];
        if ([v59 longValue] >= 1)
        {
          longValue = [v59 longValue];
          v62 = &longValue[v62];
          v63 = 0;
        }

        else
        {
          v9 = [NSError alloc];
          v36 = [v9 initWithDomain:v69 code:87 userInfo:0];
          v10 = v36;
          *errorCopy = v36;
          v73 = 0;
          v63 = 1;
        }

        objc_storeStrong(&v59, 0);
      }

      else
      {
        v7 = [NSError alloc];
        v37 = [v7 initWithDomain:v69 code:87 userInfo:0];
        v8 = v37;
        *errorCopy = v37;
        v73 = 0;
        v63 = 1;
      }

      objc_storeStrong(&v60, 0);
      if (v63)
      {
        goto LABEL_42;
      }
    }

    v35 = v62;
    if (v35 == [v67 longValue])
    {
      v58 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v66];
      if (v58)
      {
        v57 = objc_alloc_init(NSMutableDictionary);
        for (j = 0; ; ++j)
        {
          v32 = j;
          if (v32 >= [v64 count])
          {
            break;
          }

          v55 = [v64 objectAtIndex:j];
          v54 = [v55 objectAtIndex:0];
          v30 = v57;
          v31 = objc_alloc_init(NSMutableArray);
          [v30 setObject:? forKey:?];

          objc_storeStrong(&v54, 0);
          objc_storeStrong(&v55, 0);
        }

        v29 = [v58 count];
        v53 = &v29[-[v67 intValue]];
        for (k = [v65 longValue]; k <= v53; k = &longValue2[k])
        {
          v51 = k;
          for (m = 0; ; ++m)
          {
            v28 = m;
            if (v28 >= [v64 count])
            {
              break;
            }

            v49 = [v64 objectAtIndex:m];
            v48 = [v49 objectAtIndex:0];
            v47 = [v49 objectAtIndex:1];
            v46 = [v57 objectForKey:v48];
            for (n = 0; ; ++n)
            {
              v27 = n;
              if (v27 >= [v47 longValue])
              {
                break;
              }

              v44 = [v58 objectAtIndex:v51];
              [v46 addObject:v44];
              ++v51;
              objc_storeStrong(&v44, 0);
            }

            objc_storeStrong(&v46, 0);
            objc_storeStrong(&v47, 0);
            objc_storeStrong(&v48, 0);
            objc_storeStrong(&v49, 0);
          }

          longValue2 = [v68 longValue];
        }

        memset(__b, 0, sizeof(__b));
        v25 = v57;
        v26 = [v25 countByEnumeratingWithState:__b objects:v74 count:16];
        if (v26)
        {
          v22 = *__b[2];
          v23 = 0;
          v24 = v26;
          while (1)
          {
            v21 = v23;
            if (*__b[2] != v22)
            {
              objc_enumerationMutation(v25);
            }

            v43 = *(__b[1] + 8 * v23);
            coreDictionary = selfCopy->_coreDictionary;
            v20 = [v57 objectForKey:v43];
            [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];

            ++v23;
            if (v21 + 1 >= v24)
            {
              v23 = 0;
              v24 = [v25 countByEnumeratingWithState:__b objects:v74 count:16];
              if (!v24)
              {
                break;
              }
            }
          }
        }

        v73 = [NSNumber numberWithLong:1];
        v63 = 1;
        objc_storeStrong(&v57, 0);
      }

      else
      {
        v14 = [NSError alloc];
        v33 = [v14 initWithDomain:v69 code:84 userInfo:0];
        v15 = v33;
        *errorCopy = v33;
        v73 = 0;
        v63 = 1;
      }

      objc_storeStrong(&v58, 0);
    }

    else
    {
      v12 = [NSError alloc];
      v34 = [v12 initWithDomain:v69 code:87 userInfo:0];
      v13 = v34;
      *errorCopy = v34;
      v73 = 0;
      v63 = 1;
    }
  }

  else
  {
    v5 = [NSError alloc];
    v39 = [v5 initWithDomain:v69 code:87 userInfo:0];
    v6 = v39;
    *errorCopy = v39;
    v73 = 0;
    v63 = 1;
  }

LABEL_42:
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(location, 0);
  v17 = v73;

  return v17;
}

- (id)twoArrayMathFunction:(id)function error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, function);
  errorCopy = error;
  v62 = 0;
  objc_storeStrong(&v62, domain);
  v61 = [location[0] objectForKey:InputArray];
  v60 = [location[0] objectForKey:OutputArray];
  v59 = [location[0] objectForKey:SecondArray];
  v58 = [location[0] objectForKey:Operation];
  if (!v61 || !v60 || !v59 || !v58)
  {
    v5 = [NSError alloc];
    v47 = [v5 initWithDomain:v62 code:88 userInfo:0];
    v6 = v47;
    *errorCopy = v47;
    v66 = 0;
    v57 = 1;
    goto LABEL_35;
  }

  v56 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v61];
  v55 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v59];
  if (!v56 || !v55)
  {
    v7 = [NSError alloc];
    v46 = [v7 initWithDomain:v62 code:89 userInfo:0];
    v8 = v46;
    *errorCopy = v46;
    v66 = 0;
    v57 = 1;
    goto LABEL_34;
  }

  v45 = [v56 count];
  if (v45 != [v55 count])
  {
    v9 = [NSError alloc];
    v44 = [v9 initWithDomain:v62 code:93 userInfo:0];
    v10 = v44;
    *errorCopy = v44;
    v66 = 0;
    v57 = 1;
    goto LABEL_34;
  }

  v54 = objc_alloc_init(NSMutableArray);
  for (i = 0; ; ++i)
  {
    v43 = i;
    if (v43 >= [v56 count])
    {
      break;
    }

    v52 = [v56 objectAtIndex:i];
    v51 = [v55 objectAtIndex:i];
    [v51 doubleValue];
    if (v11 == 0.0 && (([v58 isEqual:Modulo] & 1) != 0 || (objc_msgSend(v58, "isEqual:", Division) & 1) != 0))
    {
      v12 = [NSError alloc];
      v42 = [v12 initWithDomain:v62 code:90 userInfo:0];
      v13 = v42;
      *errorCopy = v42;
      v66 = 0;
      v57 = 1;
      goto LABEL_30;
    }

    v50 = 0;
    if ([v58 isEqual:Modulo])
    {
      longValue = [v52 longValue];
      v14 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", longValue % [v51 longValue]);
      v15 = v50;
      v50 = v14;

LABEL_28:
      [v54 addObject:v50];
      v57 = 0;
      goto LABEL_29;
    }

    if ([v58 isEqual:Division])
    {
      [v52 doubleValue];
      v40 = v16;
      [v51 doubleValue];
      v18 = [NSNumber numberWithDouble:v40 / v17];
      v19 = v50;
      v50 = v18;

      goto LABEL_28;
    }

    if ([v58 isEqual:Multiplication])
    {
      [v52 doubleValue];
      v39 = v20;
      [v51 doubleValue];
      v22 = [NSNumber numberWithDouble:v39 * v21];
      v23 = v50;
      v50 = v22;

      goto LABEL_28;
    }

    if ([v58 isEqual:Addition])
    {
      [v52 doubleValue];
      v38 = v24;
      [v51 doubleValue];
      v26 = [NSNumber numberWithDouble:v38 + v25];
      v27 = v50;
      v50 = v26;

      goto LABEL_28;
    }

    if ([v58 isEqual:Subtraction])
    {
      [v52 doubleValue];
      v37 = v28;
      [v51 doubleValue];
      v30 = [NSNumber numberWithDouble:v37 - v29];
      v31 = v50;
      v50 = v30;

      goto LABEL_28;
    }

    v32 = [NSError alloc];
    v36 = [v32 initWithDomain:v62 code:83 userInfo:0];
    v33 = v36;
    *errorCopy = v36;
    v66 = 0;
    v57 = 1;
LABEL_29:
    objc_storeStrong(&v50, 0);
LABEL_30:
    objc_storeStrong(&v51, 0);
    objc_storeStrong(&v52, 0);
    if (v57)
    {
      goto LABEL_33;
    }
  }

  [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v54 forKey:v60];
  v66 = [NSNumber numberWithLong:1];
  v57 = 1;
LABEL_33:
  objc_storeStrong(&v54, 0);
LABEL_34:
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v56, 0);
LABEL_35:
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(location, 0);
  v34 = v66;

  return v34;
}

- (id)windowFunction:(id)function error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, function);
  errorCopy = error;
  v72 = 0;
  objc_storeStrong(&v72, domain);
  v71 = [location[0] objectForKey:WindowSize];
  v70 = [location[0] objectForKey:InputArray];
  v69 = [location[0] objectForKey:FeatureOutput];
  v68 = [location[0] objectForKey:ContextOutput];
  v67 = [location[0] objectForKey:LabelOutput];
  v66 = [location[0] objectForKey:TimeStampArrayKey];
  v65 = [location[0] objectForKey:TimeStampMaxDistKey];
  if (!v71 || !v70 || !v69 || !v68 || !v67)
  {
    v5 = [NSError alloc];
    v43 = [v5 initWithDomain:v72 code:49 userInfo:0];
    v6 = v43;
    *errorCopy = v43;
    v76 = 0;
    v64 = 1;
    goto LABEL_41;
  }

  v63 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v70];
  if (v63)
  {
    v62 = 0;
    if (v66)
    {
      if (!v65)
      {
        v9 = [NSError alloc];
        v41 = [v9 initWithDomain:v72 code:49 userInfo:0];
        v10 = v41;
        *errorCopy = v41;
        v76 = 0;
        v64 = 1;
LABEL_39:
        objc_storeStrong(&v62, 0);
        goto LABEL_40;
      }

      [v65 doubleValue];
      if (v11 <= 0.0)
      {
        v12 = [NSError alloc];
        v40 = [v12 initWithDomain:v72 code:49 userInfo:0];
        v13 = v40;
        *errorCopy = v40;
        v76 = 0;
        v64 = 1;
        goto LABEL_39;
      }

      v14 = [(NSMutableDictionary *)selfCopy->_coreDictionary objectForKey:v66];
      v15 = v62;
      v62 = v14;

      if (!v62)
      {
        v16 = [NSError alloc];
        v39 = [v16 initWithDomain:v72 code:36 userInfo:0];
        v17 = v39;
        *errorCopy = v39;
        v76 = 0;
        v64 = 1;
        goto LABEL_39;
      }

      v38 = [v62 count];
      if (v38 != [v63 count])
      {
        v18 = [NSError alloc];
        v37 = [v18 initWithDomain:v72 code:96 userInfo:0];
        v19 = v37;
        *errorCopy = v37;
        v76 = 0;
        v64 = 1;
        goto LABEL_39;
      }
    }

    v61 = objc_alloc_init(NSMutableArray);
    v60 = objc_alloc_init(NSMutableArray);
    v59 = objc_alloc_init(NSMutableArray);
    for (i = 0; ; ++i)
    {
      v36 = i;
      if (v36 >= [v63 count])
      {
        break;
      }

      v57 = [v63 objectAtIndex:i];
      for (j = 1; ; ++j)
      {
        v35 = j;
        if (v35 > [v71 longValue])
        {
          break;
        }

        if (((i - j) & 0x8000000000000000) == 0)
        {
          v55 = 1;
          if (v62)
          {
            v54 = [v62 objectAtIndex:i];
            v53 = [v62 objectAtIndex:i - j];
            [v54 doubleValue];
            v34 = v20;
            [v53 doubleValue];
            v52 = vabdd_f64(v34, v21);
            [v65 doubleValue];
            if (v22 < v52)
            {
              v55 = 0;
            }

            objc_storeStrong(&v53, 0);
            objc_storeStrong(&v54, 0);
          }

          if (v55 == 1)
          {
            v51 = [v63 objectAtIndex:i - j];
            [v59 addObject:v57];
            [v61 addObject:v51];
            v32 = v60;
            v33 = [NSNumber numberWithInt:1];
            [v32 addObject:?];

            objc_storeStrong(&v51, 0);
          }
        }

        v31 = i + j;
        if (v31 < [v63 count])
        {
          v50 = 1;
          if (v62)
          {
            v49 = [v62 objectAtIndex:i];
            v48 = [v62 objectAtIndex:i + j];
            [v49 doubleValue];
            v30 = v23;
            [v48 doubleValue];
            v47 = vabdd_f64(v30, v24);
            [v65 doubleValue];
            if (v25 < v47)
            {
              v50 = 0;
            }

            objc_storeStrong(&v48, 0);
            objc_storeStrong(&v49, 0);
          }

          if (v50 == 1)
          {
            v46 = [v63 objectAtIndex:i + j];
            [v59 addObject:v57];
            [v61 addObject:v46];
            v28 = v60;
            v29 = [NSNumber numberWithInt:1];
            [v28 addObject:?];

            objc_storeStrong(&v46, 0);
          }
        }
      }

      objc_storeStrong(&v57, 0);
    }

    [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v59 forKey:v69];
    [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v61 forKey:v68];
    [(NSMutableDictionary *)selfCopy->_coreDictionary setObject:v60 forKey:v67];
    v76 = [NSNumber numberWithLong:1];
    v64 = 1;
    objc_storeStrong(&v59, 0);
    objc_storeStrong(&v60, 0);
    objc_storeStrong(&v61, 0);
    goto LABEL_39;
  }

  v7 = [NSError alloc];
  v42 = [v7 initWithDomain:v72 code:36 userInfo:0];
  v8 = v42;
  *errorCopy = v42;
  v76 = 0;
  v64 = 1;
LABEL_40:
  objc_storeStrong(&v63, 0);
LABEL_41:
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(location, 0);
  v26 = v76;

  return v26;
}

@end