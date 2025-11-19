@interface NLModelImplML
- (NLModelImplML)initWithMLModel:(id)a3 configuration:(id)a4;
- (id)predictedLabelForString:(id)a3;
- (id)predictedLabelsForTokens:(id)a3;
@end

@implementation NLModelImplML

- (NLModelImplML)initWithMLModel:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 modelDescription];
  v10 = [v9 inputDescriptionsByName];
  v11 = [v10 allKeys];
  v12 = [v11 objectAtIndexedSubscript:0];

  v13 = [v9 outputDescriptionsByName];
  v14 = [v13 allKeys];
  v15 = [v14 objectAtIndexedSubscript:0];

  if (v7)
  {
    if (v8)
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
            objc_storeStrong(&v16->_mlModel, a3);
            v17 = [v8 copy];
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

- (id)predictedLabelForString:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_mlModel || !self->_inputName || !self->_outputName)
  {
    v14 = 0;
    v9 = 0;
    v8 = 0;
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v5 = objc_alloc(MEMORY[0x1E695FE48]);
  inputName = self->_inputName;
  v6 = [MEMORY[0x1E695FE60] featureValueWithString:v4];
  v21[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&inputName count:1];
  v19 = 0;
  v8 = [v5 initWithDictionary:v7 error:&v19];
  v9 = v19;

  if (!v8)
  {
    v14 = 0;
    goto LABEL_7;
  }

  mlModel = self->_mlModel;
  v18 = v9;
  v11 = [(MLModel *)mlModel predictionFromFeatures:v8 error:&v18];
  v12 = v18;

  v13 = [v11 featureValueForName:self->_outputName];
  v14 = [v13 stringValue];

  v9 = v12;
LABEL_8:
  v15 = v14;

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)predictedLabelsForTokens:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsJoinedByString:@" "];
  v6 = [(NLModelImplML *)self predictedLabelForString:v5];

  v7 = [MEMORY[0x1E695DF70] array];
  if ([v4 count])
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
      [v7 addObject:v9];
      ++v8;
    }

    while (v8 < [v4 count]);
  }

  return v7;
}

@end