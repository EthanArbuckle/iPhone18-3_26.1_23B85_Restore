@interface NLPMLSequenceModel
- (NLPMLSequenceModel)initWithModelDescription:(id)a3 parameterDictionary:(id)a4 error:(id *)a5;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation NLPMLSequenceModel

- (NLPMLSequenceModel)initWithModelDescription:(id)a3 parameterDictionary:(id)a4 error:(id *)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 outputDescriptionsByName];
  v12 = [v11 allKeys];

  v13 = [v9 inputDescriptionsByName];
  if ([v13 count] != 1)
  {
    goto LABEL_11;
  }

  v14 = [v9 inputDescriptionsByName];
  v15 = [v14 allValues];
  v16 = [v15 objectAtIndexedSubscript:0];
  if ([v16 type] != 3 || objc_msgSend(v12, "count") != 3 || !objc_msgSend(v12, "containsObject:", @"labels") || !objc_msgSend(v12, "containsObject:", @"locations"))
  {

LABEL_11:
    goto LABEL_12;
  }

  v24 = [v12 containsObject:@"lengths"];

  if (v24)
  {
    v17 = [v10 objectForKey:@"modelData"];
    v25.receiver = self;
    v25.super_class = NLPMLSequenceModel;
    v18 = [(NLModel *)&v25 initWithData:v17 error:a5];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_modelDescription, a3);
    }

    self = v19;
    v20 = self;
    goto LABEL_14;
  }

LABEL_12:
  if (!a5)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v21 = MEMORY[0x1E696ABC0];
  v26 = *MEMORY[0x1E696A578];
  v27[0] = @"Failed to load model file";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [v21 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:2 userInfo:v17];
  *a5 = v20 = 0;
LABEL_14:

LABEL_16:
  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v41[1] = *MEMORY[0x1E69E9840];
  modelDescription = self->_modelDescription;
  v8 = a3;
  v9 = [(MLModelDescription *)modelDescription inputDescriptionsByName];
  v10 = [v9 allKeys];
  v11 = [v10 objectAtIndexedSubscript:0];

  v12 = [v8 featureValueForName:v11];

  v13 = [v12 stringValue];

  v14 = [MEMORY[0x1E695DF70] array];
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = [MEMORY[0x1E695DF70] array];
  if (v13)
  {
    v34 = a5;
    generateTokenSequence(v13, 0, v14, v15, v16);
    v17 = [(NLModel *)self predictedLabelsForTokens:v14];
    v18 = [v17 count];
    v19 = [v15 count];
    v20 = [v16 count];
    v21 = 0;
    if (v17 && v18)
    {
      v21 = [MEMORY[0x1E695FF10] sequenceWithStringArray:v17];
    }

    v22 = 0;
    if (v15 && v19)
    {
      v22 = [MEMORY[0x1E695FF10] sequenceWithInt64Array:v15];
    }

    v33 = v15;
    v23 = 0;
    v36 = v13;
    v37 = v11;
    v35 = v14;
    if (v16 && v20)
    {
      v23 = [MEMORY[0x1E695FF10] sequenceWithInt64Array:v16];
    }

    v24 = objc_alloc(MEMORY[0x1E695FE48]);
    v38[0] = @"labels";
    v25 = [MEMORY[0x1E695FE60] featureValueWithSequence:v21];
    v39[0] = v25;
    v38[1] = @"locations";
    v26 = [MEMORY[0x1E695FE60] featureValueWithSequence:v22];
    v39[1] = v26;
    v38[2] = @"lengths";
    v27 = [MEMORY[0x1E695FE60] featureValueWithSequence:v23];
    v39[2] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v29 = [v24 initWithDictionary:v28 error:v34];

    v13 = v36;
    v11 = v37;
    v14 = v35;
    v15 = v33;
    goto LABEL_14;
  }

  if (a5)
  {
    v30 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v41[0] = @"Prediction failed due to missing input";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [v30 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v21];
    *a5 = v29 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v29 = 0;
LABEL_15:

  v31 = *MEMORY[0x1E69E9840];

  return v29;
}

@end