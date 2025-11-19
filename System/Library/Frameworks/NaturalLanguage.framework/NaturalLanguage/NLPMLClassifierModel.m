@interface NLPMLClassifierModel
- (NLPMLClassifierModel)initWithModelDescription:(id)a3 parameterDictionary:(id)a4 error:(id *)a5;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation NLPMLClassifierModel

- (NLPMLClassifierModel)initWithModelDescription:(id)a3 parameterDictionary:(id)a4 error:(id *)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 inputDescriptionsByName];
  if ([v11 count] != 1)
  {
    goto LABEL_10;
  }

  v28 = self;
  v12 = [v9 inputDescriptionsByName];
  v13 = [v12 allValues];
  v14 = [v13 objectAtIndexedSubscript:0];
  if ([v14 type] != 3)
  {
LABEL_9:

    self = v28;
LABEL_10:

    goto LABEL_11;
  }

  v27 = v10;
  v15 = [v9 outputDescriptionsByName];
  if ([v15 count] != 1)
  {

    v10 = v27;
    goto LABEL_9;
  }

  v25 = [v9 outputDescriptionsByName];
  v16 = [v25 allValues];
  v17 = [v16 objectAtIndexedSubscript:0];
  v26 = [v17 type];

  v10 = v27;
  self = v28;
  if (v26 == 3)
  {
    v18 = [v27 objectForKey:@"modelData"];
    v29.receiver = v28;
    v29.super_class = NLPMLClassifierModel;
    v19 = [(NLModel *)&v29 initWithData:v18 error:a5];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_modelDescription, a3);
    }

    self = v20;
    v21 = self;
    goto LABEL_13;
  }

LABEL_11:
  if (!a5)
  {
    v21 = 0;
    goto LABEL_15;
  }

  v22 = MEMORY[0x1E696ABC0];
  v30 = *MEMORY[0x1E696A578];
  v31[0] = @"Failed to load model file";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [v22 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:2 userInfo:v18];
  *a5 = v21 = 0;
LABEL_13:

LABEL_15:
  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  modelDescription = self->_modelDescription;
  v8 = a3;
  v9 = [(MLModelDescription *)modelDescription inputDescriptionsByName];
  v10 = [v9 allKeys];
  v11 = [v10 objectAtIndexedSubscript:0];

  v12 = [(MLModelDescription *)self->_modelDescription outputDescriptionsByName];
  v13 = [v12 allKeys];
  v14 = [v13 objectAtIndexedSubscript:0];

  v15 = [v8 featureValueForName:v11];

  v16 = [v15 stringValue];

  if (v16)
  {
    v17 = [(NLModel *)self predictedLabelForString:v16];
    v18 = objc_alloc(MEMORY[0x1E695FE48]);
    v25 = v14;
    v19 = [MEMORY[0x1E695FE60] featureValueWithString:v17];
    v26 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v21 = [v18 initWithDictionary:v20 error:a5];

LABEL_5:
    goto LABEL_6;
  }

  if (a5)
  {
    v22 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"Prediction failed due to missing input";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    [v22 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v17];
    *a5 = v21 = 0;
    goto LABEL_5;
  }

  v21 = 0;
LABEL_6:

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

@end