@interface NLModel
+ (NLModel)modelWithContentsOfURL:(NSURL *)url error:(NSError *)error;
+ (NLModel)modelWithData:(id)data error:(id *)error;
+ (NLModel)modelWithMLModel:(MLModel *)mlModel error:(NSError *)error;
- (BOOL)writeMLModelToURL:(id)l options:(id)options error:(id *)error;
- (BOOL)writeToURL:(id)l atomically:(BOOL)atomically error:(id *)error;
- (NLModel)initWithClassifierMLModel:(id)model;
- (NLModel)initWithConfiguration:(id)configuration modelImpl:(id)impl;
- (NLModel)initWithContentsOfURL:(id)l error:(id *)error;
- (NLModel)initWithData:(id)data mlModel:(id)model error:(id *)error;
- (NLModel)initWithMLModel:(id)model error:(id *)error;
- (NSArray)predictedLabelHypothesesForTokens:(NSArray *)tokens maximumCount:(NSUInteger)maximumCount;
- (NSArray)predictedLabelsForTokens:(NSArray *)tokens;
- (NSDictionary)predictedLabelHypothesesForString:(NSString *)string maximumCount:(NSUInteger)maximumCount;
- (NSString)predictedLabelForString:(NSString *)string;
- (id)classifierTestResultsWithDataProvider:(id)provider;
- (id)data;
- (id)labelArray;
- (id)predictedLabelArraysForTokenArrays:(id)arrays;
- (id)sequenceTestResultsWithDataProvider:(id)provider;
- (id)testResultsWithDataProvider:(id)provider;
- (id)testResultsWithDataSet:(id)set;
- (void)dealloc;
@end

@implementation NLModel

+ (NLModel)modelWithContentsOfURL:(NSURL *)url error:(NSError *)error
{
  v6 = url;
  v7 = [[self alloc] initWithContentsOfURL:v6 error:error];

  return v7;
}

+ (NLModel)modelWithMLModel:(MLModel *)mlModel error:(NSError *)error
{
  v6 = mlModel;
  v7 = [[self alloc] initWithMLModel:v6 error:error];

  return v7;
}

+ (NLModel)modelWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [[self alloc] initWithData:dataCopy error:error];

  return v7;
}

- (NLModel)initWithConfiguration:(id)configuration modelImpl:(id)impl
{
  configurationCopy = configuration;
  implCopy = impl;
  v14.receiver = self;
  v14.super_class = NLModel;
  v8 = [(NLModel *)&v14 init];
  if (v8)
  {
    v9 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    objc_storeStrong(&v8->_modelImpl, impl);
    v11 = dispatch_queue_create("com.apple.NaturalLanguage.NLModel", 0);
    clientQueue = v8->_clientQueue;
    v8->_clientQueue = v11;
  }

  return v8;
}

- (NLModel)initWithData:(id)data mlModel:(id)model error:(id *)error
{
  v84[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  modelCopy = model;
  if (!dataCopy)
  {
    if (error)
    {
      v14 = MEMORY[0x1E696ABC0];
      v79 = *MEMORY[0x1E696A578];
      v80 = @"Failed to load model file, data is nil";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      *error = [v14 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v15];
    }

    goto LABEL_90;
  }

  modelCopy2 = model;
  obj = data;
  v9 = NLModelContainerCreateWithContainerData();
  if (!v9)
  {
    if (error)
    {
      v33 = MEMORY[0x1E696ABC0];
      v77 = *MEMORY[0x1E696A578];
      v78 = @"Failed to load model file, cannot read container";
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      *error = [v33 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v34];
    }

    goto LABEL_90;
  }

  if (NLModelContainerGetSubtype() != 7 && NLModelContainerGetSubtype() != 8)
  {
    if (!error)
    {
LABEL_89:
      CFRelease(v9);
LABEL_90:
      i = 0;
      goto LABEL_91;
    }

    v30 = MEMORY[0x1E696ABC0];
    v81 = *MEMORY[0x1E696A578];
    v82 = @"Failed to load model file, invalid container type";
    v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    *error = [v30 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v76];
LABEL_35:

    goto LABEL_89;
  }

  Type = NLModelContainerGetType();
  v11 = Type - 1;
  if (Type - 1) <= 8 && ((0x1EFu >> v11))
  {
    v12 = *off_1E7628F78[v11];
    v13 = objc_opt_class();
  }

  else
  {
    v13 = 0;
  }

  v72 = v13;
  Revision = NLModelContainerGetRevision();
  ModelDataCount = NLModelContainerGetModelDataCount();
  v76 = NLModelContainerCopyInfoDictionary();
  v18 = MEMORY[0x1E695DF90];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:Revision];
  v20 = [v18 dictionaryWithObject:v19 forKey:@"Revision"];

  v21 = unsignedIntegerForKey(v76, @"ModelType", Type == 1);
  v22 = stringForKey(v76, @"Language", 0);
  if (!v22)
  {
    v22 = stringForKey(v76, @"TrainingLanguage", 0);
  }

  i = stringForKeyWithDefault(v76, @"EmbeddingType", @"Static");
  v24 = BOOLForKeyWithDefault(v76, @"UseBidirectionalNeuralNetwork");
  if (v22)
  {
    [v20 setObject:v22 forKey:@"Language"];
  }

  if (i)
  {
    [v20 setObject:i forKey:@"EmbeddingType"];
  }

  if (v21)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  if (v25 == 1)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v20 setObject:v26 forKey:@"UseBidirectionalNeuralNetwork"];
  }

  v73 = [NLModelConfiguration defaultModelConfigurationForType:v21 options:v20 error:error];

  if (!v72 || !v73 || !ModelDataCount)
  {
    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v83 = *MEMORY[0x1E696A578];
      v84[0] = @"Failed to load model file, invalid configuration or data";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
      *error = [v28 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v29];
    }

    goto LABEL_35;
  }

  v65 = NLModelContainerCopyModelDataAtIndex();
  if (ModelDataCount >= 2)
  {
    v27 = NLModelContainerCopyModelDataAtIndex();
    if (ModelDataCount == 2)
    {
      v61 = 0;
      v62 = 0;
    }

    else
    {
      v62 = NLModelContainerCopyModelDataAtIndex();
      if (ModelDataCount >= 4)
      {
        v31 = NLModelContainerCopyModelDataAtIndex();
        if (ModelDataCount == 4)
        {
          v61 = 0;
        }

        else
        {
          v61 = NLModelContainerCopyModelDataAtIndex();
        }

        goto LABEL_42;
      }

      v61 = 0;
    }

    v31 = 0;
LABEL_42:
    v32 = v27;
    goto LABEL_43;
  }

  v61 = 0;
  v62 = 0;
  v31 = 0;
  v32 = 0;
LABEL_43:
  v60 = v32;
  v64 = stringArrayRepresentationFromData(v32);
  v66 = stringArrayRepresentationFromData(v62);
  v71 = v31;
  v35 = v71;
  bytes = [v71 bytes];
  if ([v71 length] >= 9 && !strncmp(bytes, "bplist00", 8uLL))
  {
    v63 = [MEMORY[0x1E696AE40] propertyListWithData:v71 options:0 format:0 error:0];
  }

  else
  {
    v63 = 0;
  }

  if (v64 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v37 = v64;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v38 = [v37 count];
    if (v38)
    {
      for (i = 0; i != v38; i = (i + 1))
      {
        v39 = [v37 objectAtIndex:i];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v39 length])
        {
          v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
          [dictionary setObject:v39 forKey:v40];
        }
      }
    }
  }

  else
  {
    dictionary = 0;
  }

  if (v66 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v41 = v66;
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v42 = [v41 count];
    if (v42)
    {
      for (i = 0; i != v42; i = (i + 1))
      {
        v43 = [v41 objectAtIndex:i];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v43 length])
        {
          v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
          [dictionary2 setObject:v44 forKey:v43];
        }
      }
    }
  }

  else
  {
    dictionary2 = 0;
  }

  if (v63 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v45 = [v66 count];
    v46 = v63;
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v48 = [v46 count];
    if (v45)
    {
      v49 = v48;
      for (i = 0; v45 != i; i = (i + 1))
      {
        if (i >= v49)
        {
          v50 = 0;
        }

        else
        {
          v50 = [v46 objectAtIndex:i];
          if (v50)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_76;
            }
          }
        }

        v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];

        v50 = v51;
LABEL_76:
        v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [dictionary3 setObject:v50 forKey:v52];
      }
    }
  }

  else
  {
    dictionary3 = 0;
  }

  if ([(objc_class *)v72 isEqual:objc_opt_class()])
  {
    if ([v65 length] >= 4)
    {
      v53 = v65;
      if (*[v65 bytes] == 12648430)
      {
        v72 = objc_opt_class();
      }
    }
  }

  v54 = [[v72 alloc] initWithModelData:v65 configuration:v73 labelMap:dictionary vocabularyMap:dictionary2 documentFrequencyMap:dictionary3 customEmbeddingData:v61 trainingInfo:v76 error:error];
  if (v54)
  {
    v55 = [(NLModel *)self initWithConfiguration:v73 modelImpl:v54];
    v56 = v55;
    if (v55)
    {
      objc_storeStrong(&v55->_data, obj);
      objc_storeStrong(&v56->_mlModel, modelCopy2);
      v56->_container = v9;
      i = v56;
      v57 = 0;
      self = i;
      goto LABEL_88;
    }

    self = 0;
  }

  v57 = 1;
LABEL_88:

  if (v57)
  {
    goto LABEL_89;
  }

LABEL_91:

  v58 = *MEMORY[0x1E69E9840];
  return i;
}

- (NLModel)initWithClassifierMLModel:(id)model
{
  modelCopy = model;
  v6 = [NLModelConfiguration defaultModelConfigurationForType:0];
  v7 = [[NLModelImplML alloc] initWithMLModel:modelCopy configuration:v6];
  if (v7)
  {
    v8 = [(NLModel *)self initWithConfiguration:v6 modelImpl:v7];
    self = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_mlModel, model);
    }
  }

  return self;
}

- (NLModel)initWithMLModel:(id)model error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    parameters = [modelCopy parameters];
    modelParameterData = [parameters modelParameterData];

    if (modelParameterData)
    {
      v9 = [(NLModel *)self initWithData:modelParameterData mlModel:modelCopy error:error];
LABEL_7:
      self = v9;
      selfCopy = self;
LABEL_23:

      goto LABEL_24;
    }
  }

  if (modelCopy)
  {
    modelParameterData = [modelCopy modelDescription];
    inputDescriptionsByName = [modelParameterData inputDescriptionsByName];
    if ([inputDescriptionsByName count] == 1)
    {
      inputDescriptionsByName2 = [modelParameterData inputDescriptionsByName];
      allValues = [inputDescriptionsByName2 allValues];
      v14 = [allValues objectAtIndexedSubscript:0];
      if ([v14 type] == 3)
      {
        outputDescriptionsByName = [modelParameterData outputDescriptionsByName];
        if ([outputDescriptionsByName count] == 1)
        {
          outputDescriptionsByName2 = [modelParameterData outputDescriptionsByName];
          allValues2 = [outputDescriptionsByName2 allValues];
          v16 = [allValues2 objectAtIndexedSubscript:0];
          type = [v16 type];

          if (type == 3)
          {
            v9 = [(NLModel *)self initWithClassifierMLModel:modelCopy];
            goto LABEL_7;
          }

LABEL_20:
          if (error)
          {
            v18 = MEMORY[0x1E696ABC0];
            v27 = *MEMORY[0x1E696A578];
            v28[0] = @"MLModel does not have supported input and output descriptions for use with NLModel";
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
            *error = [v18 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:2 userInfo:v19];
          }

          selfCopy = 0;
          goto LABEL_23;
        }
      }
    }

    goto LABEL_20;
  }

  if (error)
  {
    v17 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"MLModel is nil, cannot create NLModel";
    modelParameterData = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v17 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:2 userInfo:modelParameterData];
    *error = selfCopy = 0;
    goto LABEL_23;
  }

  selfCopy = 0;
LABEL_24:

  v20 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NLModel)initWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  if (![lCopy isFileURL])
  {
    goto LABEL_7;
  }

  path = [lCopy path];
  v8 = open([path fileSystemRepresentation], 0);

  if (v8 < 0)
  {
    goto LABEL_7;
  }

  v15 = 0;
  v9 = read(v8, &v15, 4uLL);
  v10 = v15;
  close(v8);
  if (v9 == 4 && v10 == 156685278)
  {
    v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:1 error:error];
    v12 = v11;
    if (v11)
    {
      v11 = [(NLModel *)self initWithData:v11 error:error];
LABEL_9:
      self = v11;
    }
  }

  else
  {
LABEL_7:
    v11 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:lCopy error:error];
    v12 = v11;
    if (v11)
    {
      v11 = [(NLModel *)self initWithMLModel:v11 error:error];
      goto LABEL_9;
    }
  }

  v13 = v11;

  return v13;
}

- (void)dealloc
{
  container = self->_container;
  if (container)
  {
    CFRelease(container);
  }

  v4.receiver = self;
  v4.super_class = NLModel;
  [(NLModel *)&v4 dealloc];
}

- (id)data
{
  v64[16] = *MEMORY[0x1E69E9840];
  labelMap = [(NLModel *)self labelMap];
  v57 = stringArrayRepresentationFromInverseMap(labelMap);

  selfCopy = self;
  vocabularyMap = [(NLModel *)self vocabularyMap];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v6 = vocabularyMap;
  v7 = [v6 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v61;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v61 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v60 + 1) + 8 * i);
        v12 = [v6 objectForKey:v11];
        [dictionary setObject:v11 forKey:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v8);
  }

  v58 = stringArrayRepresentationFromInverseMap(dictionary);

  documentFrequencyMap = [(NLModel *)selfCopy documentFrequencyMap];
  array = [MEMORY[0x1E695DF70] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  allKeys = [documentFrequencyMap allKeys];
  v16 = [allKeys countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v61;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v61 != v19)
        {
          objc_enumerationMutation(allKeys);
        }

        v21 = *(*(&v60 + 1) + 8 * j);
        v22 = [documentFrequencyMap objectForKey:v21];
        unsignedIntegerValue = [v22 unsignedIntegerValue];

        if (unsignedIntegerValue >= 2)
        {
          unsignedIntegerValue2 = [v21 unsignedIntegerValue];
          if (unsignedIntegerValue2 > v18)
          {
            v18 = unsignedIntegerValue2;
          }
        }
      }

      v17 = [allKeys countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  v25 = 0;
  do
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
    v27 = [documentFrequencyMap objectForKey:v26];

    if (v27)
    {
      [array addObject:v27];
    }

    else
    {
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      [array addObject:v28];
    }

    ++v25;
  }

  while (v25 <= v18);

  configuration = [(NLModel *)selfCopy configuration];
  [configuration revision];

  trainingInfo = [(NLModelImpl *)selfCopy->_modelImpl trainingInfo];
  configuration2 = [(NLModel *)selfCopy configuration];
  v32 = trainingInfo;
  v33 = MEMORY[0x1E695DF90];
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(configuration2, "type")}];
  v35 = [v33 dictionaryWithObject:v34 forKey:@"ModelType"];

  type = [configuration2 type];
  language = [configuration2 language];
  options = [configuration2 options];
  v39 = stringForKeyWithDefault(options, @"EmbeddingType", @"Static");
  v40 = BOOLForKeyWithDefault(options, @"UseBidirectionalNeuralNetwork");
  if (language)
  {
    [v35 setObject:language forKey:@"Language"];
  }

  if (v39)
  {
    [v35 setObject:v39 forKey:@"EmbeddingType"];
  }

  if (type)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40;
  }

  if (v41 == 1)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v35 setObject:v42 forKey:@"UseBidirectionalNeuralNetwork"];
  }

  [v35 addEntriesFromDictionary:v32];

  modelData = [(NLModelImpl *)selfCopy->_modelImpl modelData];
  v44 = v57;
  v45 = dataFromStringArrayRepresentation(v57);
  v46 = dataFromStringArrayRepresentation(v58);
  v47 = [MEMORY[0x1E696AE40] dataWithPropertyList:array format:200 options:0 error:0];
  customEmbeddingData = [(NLModelImpl *)selfCopy->_modelImpl customEmbeddingData];
  v49 = 0;
  if (v35 && modelData && v45)
  {
    modelImpl = selfCopy->_modelImpl;
    v51 = objc_opt_class();
    v52 = modelMethodTypeForImplClass(v51);
    v64[0] = 0;
    if (v52 && ([MEMORY[0x1E695DEC8] arrayWithObjects:{modelData, v45, v46, v47, customEmbeddingData, 0}], (v53 = NLModelContainerCreate()) != 0))
    {
      v54 = v53;
      v49 = NLModelContainerCopyContainerData();
      CFRelease(v54);
    }

    else
    {
      v49 = 0;
    }

    v44 = v57;
  }

  v55 = *MEMORY[0x1E69E9840];

  return v49;
}

- (BOOL)writeToURL:(id)l atomically:(BOOL)atomically error:(id *)error
{
  atomicallyCopy = atomically;
  lCopy = l;
  data = [(NLModel *)self data];
  v10 = data;
  if (data)
  {
    v11 = [data writeToURL:lCopy options:atomicallyCopy error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)writeMLModelToURL:(id)l options:(id)options error:(id *)error
{
  v69[5] = *MEMORY[0x1E69E9840];
  lCopy = l;
  optionsCopy = options;
  configuration = [(NLModel *)self configuration];
  type = [configuration type];

  modelImpl = self->_modelImpl;
  v11 = objc_opt_class();
  v50 = modelMethodTypeForImplClass(v11);
  systemVersion = [(NLModel *)self systemVersion];
  configuration2 = [(NLModel *)self configuration];
  language = [configuration2 language];

  labelArray = [(NLModel *)self labelArray];
  v13 = optionsCopy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = *MEMORY[0x1E695FDD0];
  v69[0] = *MEMORY[0x1E695FDB8];
  v69[1] = v15;
  v16 = *MEMORY[0x1E695FDC8];
  v69[2] = *MEMORY[0x1E695FDA8];
  v69[3] = v16;
  v69[4] = *MEMORY[0x1E695FDB0];
  [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:5];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v17 = v67 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v65;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v65 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v64 + 1) + 8 * i);
        v23 = [v13 objectForKey:v22];
        if (v23)
        {
          [dictionary setObject:v23 forKey:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v19);
  }

  if (type)
  {
    if (type != 1)
    {
      v31 = 0;
      v39 = 0;
      errorCopy5 = error;
      v32 = lCopy;
      if (!error)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v24 = stringForKey(v13, @"InputFeatureName", @"text");
    v25 = stringForKey(v13, @"OutputFeatureName", @"labels");
    v26 = objc_alloc(MEMORY[0x1E695FE20]);
    data = [(NLModel *)self data];
    v28 = [labelArray count];
    v29 = &unk_1F10D13A0;
    if (v28)
    {
      v29 = labelArray;
    }

    v63 = 0;
    v30 = [v26 initWithData:systemVersion language:language inputFeatureName:v24 tokensFeatureName:@"tokens" tokenTagsFeatureName:v25 tokenLocationsFeatureName:@"locations" tokenLengthsFeatureName:@"lengths" modelData:data tagNames:v29 metadata:dictionary error:&v63];
    v31 = v63;

    v32 = lCopy;
    if (v30)
    {
      v62 = v31;
      v33 = &v62;
      v34 = [MEMORY[0x1E695FE18] saveAppleWordTaggingModelToURL:lCopy wordTaggerParameters:v30 error:&v62];
LABEL_27:
      v39 = v34;
      errorCopy5 = error;
LABEL_35:
      v46 = *v33;

      v31 = v46;
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  v24 = stringForKey(v13, @"InputFeatureName", @"text");
  if (v50 == 7)
  {
    v25 = stringForKey(v13, @"OutputFeatureName", @"label");
    v40 = objc_alloc(MEMORY[0x1E695FDE0]);
    data2 = [(NLModel *)self data];
    if ([labelArray count])
    {
      v42 = labelArray;
    }

    else
    {
      v42 = &unk_1F10D13B8;
    }

    v59 = 0;
    v30 = [v40 initWithData:systemVersion language:language inputFeatureName:v24 outputFeatureName:v25 modelData:data2 labelNames:v42 metadata:dictionary error:&v59];
    v31 = v59;

    v32 = lCopy;
    if (v30)
    {
      v58 = v31;
      v33 = &v58;
      v34 = [MEMORY[0x1E695FDD8] saveAppleGazetteerModelToURL:lCopy gazetteerParameters:v30 error:&v58];
      goto LABEL_27;
    }

LABEL_28:
    v39 = 0;
    errorCopy5 = error;
    goto LABEL_36;
  }

  v32 = lCopy;
  if (v50 == 8)
  {
    v25 = stringForKey(v13, @"OutputFeatureName", @"vector");
    v35 = objc_alloc(MEMORY[0x1E695FE10]);
    data3 = [(NLModel *)self data];
    v61 = 0;
    v30 = [v35 initWithData:systemVersion language:language inputFeatureName:v24 outputFeatureName:v25 modelData:data3 metadata:dictionary error:&v61];
    v31 = v61;

    errorCopy5 = error;
    if (v30)
    {
      v60 = v31;
      v33 = &v60;
      v38 = [MEMORY[0x1E695FE08] saveAppleWordEmbeddingModelToURL:lCopy wordEmbeddingParameters:v30 error:&v60];
LABEL_34:
      v39 = v38;
      goto LABEL_35;
    }
  }

  else
  {
    v25 = stringForKey(v13, @"OutputFeatureName", @"label");
    v43 = objc_alloc(MEMORY[0x1E695FE00]);
    data4 = [(NLModel *)self data];
    if ([labelArray count])
    {
      v45 = labelArray;
    }

    else
    {
      v45 = &unk_1F10D13D0;
    }

    v57 = 0;
    v30 = [v43 initWithData:systemVersion language:language inputFeatureName:v24 outputFeatureName:v25 modelData:data4 labelNames:v45 metadata:dictionary error:&v57];
    v31 = v57;

    errorCopy5 = error;
    if (v30)
    {
      v56 = v31;
      v33 = &v56;
      v38 = [MEMORY[0x1E695FDF8] saveAppleTextClassifierModelToURL:lCopy textClassifierParameters:v30 error:&v56];
      goto LABEL_34;
    }
  }

  v39 = 0;
LABEL_36:

  if (errorCopy5)
  {
LABEL_37:
    v47 = v31;
    *errorCopy5 = v31;
  }

LABEL_38:

  v48 = *MEMORY[0x1E69E9840];
  return v39;
}

- (id)labelArray
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  labelMap = [(NLModel *)self labelMap];
  v5 = stringArrayRepresentationFromInverseMap(labelMap);

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 length] && (objc_msgSend(array, "containsObject:", v10) & 1) == 0)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return array;
}

- (NSString)predictedLabelForString:(NSString *)string
{
  v4 = string;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      clientQueue = self->_clientQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__NLModel_predictedLabelForString___block_invoke;
      block[3] = &unk_1E7628F30;
      v10 = &v11;
      block[4] = self;
      v9 = v4;
      dispatch_sync(clientQueue, block);
    }
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __35__NLModel_predictedLabelForString___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) predictedLabelForString:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)predictedLabelsForTokens:(NSArray *)tokens
{
  v4 = tokens;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = MEMORY[0x1E695E0F0];
  if (isAcceptableTokenArray(v4))
  {
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__NLModel_predictedLabelsForTokens___block_invoke;
    block[3] = &unk_1E7628F30;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(clientQueue, block);
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __36__NLModel_predictedLabelsForTokens___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) predictedLabelsForTokens:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)predictedLabelArraysForTokenArrays:(id)arrays
{
  v28 = *MEMORY[0x1E69E9840];
  arraysCopy = arrays;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = MEMORY[0x1E695E0F0];
  v5 = arraysCopy;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v5 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = *v24;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if (!isAcceptableTokenArray(*(*(&v23 + 1) + 8 * i)))
          {

            goto LABEL_14;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__NLModel_predictedLabelArraysForTokenArrays___block_invoke;
    block[3] = &unk_1E7628F30;
    v16 = &v17;
    block[4] = self;
    v15 = v6;
    dispatch_sync(clientQueue, block);
  }

  else
  {
  }

LABEL_14:
  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t __46__NLModel_predictedLabelArraysForTokenArrays___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) predictedLabelArraysForTokenArrays:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSDictionary)predictedLabelHypothesesForString:(NSString *)string maximumCount:(NSUInteger)maximumCount
{
  v6 = string;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = MEMORY[0x1E695E0F8];
  if (v6)
  {
    if (maximumCount)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        clientQueue = self->_clientQueue;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __58__NLModel_predictedLabelHypothesesForString_maximumCount___block_invoke;
        v10[3] = &unk_1E7628F58;
        v12 = &v14;
        v10[4] = self;
        v11 = v6;
        v13 = maximumCount;
        dispatch_sync(clientQueue, v10);
      }
    }
  }

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __58__NLModel_predictedLabelHypothesesForString_maximumCount___block_invoke(void *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 24) predictedLabelHypothesesForString:a1[5] maximumCount:a1[7]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (![*(*(a1[6] + 8) + 40) count])
  {
    v5 = [*(a1[4] + 24) predictedLabelForString:a1[5]];
    v6 = v5;
    if (v5)
    {
      v12 = v5;
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
      v13[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v9 = *(a1[6] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSArray)predictedLabelHypothesesForTokens:(NSArray *)tokens maximumCount:(NSUInteger)maximumCount
{
  v6 = tokens;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = MEMORY[0x1E695E0F0];
  if (isAcceptableTokenArray(v6))
  {
    clientQueue = self->_clientQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__NLModel_predictedLabelHypothesesForTokens_maximumCount___block_invoke;
    v10[3] = &unk_1E7628F58;
    v12 = &v14;
    v10[4] = self;
    v11 = v6;
    v13 = maximumCount;
    dispatch_sync(clientQueue, v10);
  }

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __58__NLModel_predictedLabelHypothesesForTokens_maximumCount___block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 24) predictedLabelHypothesesForTokens:a1[5] maximumCount:a1[7]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (![*(*(a1[6] + 8) + 40) count])
  {
    v5 = [*(a1[4] + 24) predictedLabelsForTokens:a1[5]];
    v6 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (a1[7])
          {
            v21 = *(*(&v17 + 1) + 8 * v11);
            v12 = [MEMORY[0x1E696AD98] numberWithDouble:{1.0, v17}];
            v22 = v12;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          }

          else
          {
            v13 = MEMORY[0x1E695E0F8];
          }

          [v6 addObject:{v13, v17}];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v9);
    }

    v14 = *(a1[6] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v6;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)classifierTestResultsWithDataProvider:(id)provider
{
  providerCopy = provider;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  numberOfInstances = [providerCopy numberOfInstances];
  Current = CFAbsoluteTimeGetCurrent();
  if (numberOfInstances)
  {
    v7 = 0;
    v8 = 0;
    for (i = 0; i != numberOfInstances; ++i)
    {
      v10 = [providerCopy instanceAtIndex:i];
      string = [v10 string];
      label = [v10 label];
      v13 = [(NLModel *)self predictedLabelForString:string];
      v14 = [label isEqualToString:v13];
      v8 += v14 ^ 1;
      v7 += v14;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v15 = CFAbsoluteTimeGetCurrent();
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:numberOfInstances];
  [dictionary setObject:v16 forKey:@"NumberOfInstances"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  [dictionary setObject:v17 forKey:@"NumberOfInstancesCorrect"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [dictionary setObject:v18 forKey:@"NumberOfInstancesIncorrect"];

  v19 = v15 - Current;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  [dictionary setObject:v20 forKey:@"OverallTestingTime"];

  if (numberOfInstances)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v7 / numberOfInstances];
    [dictionary setObject:v21 forKey:@"InstanceAccuracy"];

    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v19 / numberOfInstances];
    [dictionary setObject:v22 forKey:@"PerInstanceTestingTime"];
  }

  return dictionary;
}

- (id)sequenceTestResultsWithDataProvider:(id)provider
{
  providerCopy = provider;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v37 = providerCopy;
  numberOfInstances = [providerCopy numberOfInstances];
  Current = CFAbsoluteTimeGetCurrent();
  if (numberOfInstances)
  {
    v6 = 0;
    v42 = 0;
    v43 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    for (i = numberOfInstances; i != v9; numberOfInstances = i)
    {
      v40 = v6;
      v41 = v7;
      v10 = [v37 instanceAtIndex:v9];
      tokens = [v10 tokens];
      v39 = v10;
      labels = [v10 labels];
      v13 = [(NLModel *)self predictedLabelsForTokens:tokens];
      v38 = tokens;
      v14 = [tokens count];
      if (v14)
      {
        v15 = 0;
        v16 = 1;
        do
        {
          if (v15 < [labels count] && v15 < objc_msgSend(v13, "count") && (objc_msgSend(labels, "objectAtIndex:", v15), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectAtIndex:", v15), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToString:", v18), v18, v17, v19))
          {
            ++v43;
          }

          else
          {
            v16 = 0;
            ++v8;
          }

          ++v15;
        }

        while (v14 != v15);
      }

      else
      {
        v16 = 1;
      }

      v42 += (v16 & 1) == 0;
      v6 = v40 + (v16 & 1);
      v7 = v14 + v41;

      ++v9;
    }
  }

  else
  {
    v8 = 0;
    v42 = 0;
    v43 = 0;
    v7 = 0;
    v6 = 0;
  }

  v20 = CFAbsoluteTimeGetCurrent();
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:numberOfInstances];
  [dictionary setObject:v21 forKey:@"NumberOfInstances"];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  [dictionary setObject:v22 forKey:@"NumberOfInstancesCorrect"];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42];
  [dictionary setObject:v23 forKey:@"NumberOfInstancesIncorrect"];

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  [dictionary setObject:v24 forKey:@"NumberOfTokens"];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v43];
  [dictionary setObject:v25 forKey:@"NumberOfTokensCorrect"];

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [dictionary setObject:v26 forKey:@"NumberOfTokensIncorrect"];

  v27 = v20 - Current;
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
  [dictionary setObject:v28 forKey:@"OverallTestingTime"];

  if (numberOfInstances)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:v6 / numberOfInstances];
    [dictionary setObject:v29 forKey:@"InstanceAccuracy"];

    v30 = [MEMORY[0x1E696AD98] numberWithDouble:v27 / numberOfInstances];
    [dictionary setObject:v30 forKey:@"PerInstanceTestingTime"];
  }

  if (v7)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:v43 / v7];
    [dictionary setObject:v31 forKey:@"TokenAccuracy"];

    v32 = [MEMORY[0x1E696AD98] numberWithDouble:v27 / v7];
    [dictionary setObject:v32 forKey:@"PerTokenTestingTime"];
  }

  return dictionary;
}

- (id)testResultsWithDataProvider:(id)provider
{
  providerCopy = provider;
  configuration = [(NLModel *)self configuration];
  type = [configuration type];

  if (!type)
  {
    v7 = [(NLModel *)self classifierTestResultsWithDataProvider:providerCopy];
    goto LABEL_5;
  }

  if (type == 1)
  {
    v7 = [(NLModel *)self sequenceTestResultsWithDataProvider:providerCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)testResultsWithDataSet:(id)set
{
  v4 = [set dataProviderOfType:2];
  v5 = [(NLModel *)self testResultsWithDataProvider:v4];

  return v5;
}

@end