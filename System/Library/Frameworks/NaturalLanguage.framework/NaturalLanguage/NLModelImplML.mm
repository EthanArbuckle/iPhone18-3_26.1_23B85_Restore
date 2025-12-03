@interface NLModelImplML
- (NLModelImplML)initWithMLModel:(id)model configuration:(id)configuration;
- (id)predictedLabelForString:(id)string;
- (id)predictedLabelsForTokens:(id)tokens;
@end

@implementation NLModelImplML

- (NLModelImplML)initWithMLModel:(id)model configuration:(id)configuration
{
  modelCopy = model;
  configurationCopy = configuration;
  modelDescription = [modelCopy modelDescription];
  inputDescriptionsByName = [modelDescription inputDescriptionsByName];
  allKeys = [inputDescriptionsByName allKeys];
  v12 = [allKeys objectAtIndexedSubscript:0];

  outputDescriptionsByName = [modelDescription outputDescriptionsByName];
  allKeys2 = [outputDescriptionsByName allKeys];
  v15 = [allKeys2 objectAtIndexedSubscript:0];

  if (modelCopy)
  {
    if (configurationCopy)
    {
      if (v12)
      {
        if (v15)
        {
          v24.receiver = self;
          v24.super_class = NLModelImplML;
          v16 = [(NLModelImplML *)&v24 init];
          self = v16;
          if (v16)
          {
            objc_storeStrong(&v16->_mlModel, model);
            v17 = [configurationCopy copy];
            configuration = self->_configuration;
            self->_configuration = v17;

            v19 = [v12 copy];
            inputName = self->_inputName;
            self->_inputName = v19;

            v21 = [v15 copy];
            outputName = self->_outputName;
            self->_outputName = v21;
          }
        }
      }
    }
  }

  return self;
}

- (id)predictedLabelForString:(id)string
{
  v21[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (!self->_mlModel || !self->_inputName || !self->_outputName)
  {
    stringValue = 0;
    v9 = 0;
    v8 = 0;
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v5 = objc_alloc(MEMORY[0x1E695FE48]);
  inputName = self->_inputName;
  v6 = [MEMORY[0x1E695FE60] featureValueWithString:stringCopy];
  v21[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&inputName count:1];
  v19 = 0;
  v8 = [v5 initWithDictionary:v7 error:&v19];
  v9 = v19;

  if (!v8)
  {
    stringValue = 0;
    goto LABEL_7;
  }

  mlModel = self->_mlModel;
  v18 = v9;
  v11 = [(MLModel *)mlModel predictionFromFeatures:v8 error:&v18];
  v12 = v18;

  v13 = [v11 featureValueForName:self->_outputName];
  stringValue = [v13 stringValue];

  v9 = v12;
LABEL_8:
  v15 = stringValue;

  v16 = *MEMORY[0x1E69E9840];
  return stringValue;
}

- (id)predictedLabelsForTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = [tokensCopy componentsJoinedByString:@" "];
  v6 = [(NLModelImplML *)self predictedLabelForString:v5];

  array = [MEMORY[0x1E695DF70] array];
  if ([tokensCopy count])
  {
    v8 = 0;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &stru_1F10C6540;
    }

    do
    {
      [array addObject:v9];
      ++v8;
    }

    while (v8 < [tokensCopy count]);
  }

  return array;
}

@end