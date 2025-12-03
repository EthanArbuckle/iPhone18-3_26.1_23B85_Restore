@interface NLPMLSequenceModel
- (NLPMLSequenceModel)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation NLPMLSequenceModel

- (NLPMLSequenceModel)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  dictionaryCopy = dictionary;
  outputDescriptionsByName = [descriptionCopy outputDescriptionsByName];
  allKeys = [outputDescriptionsByName allKeys];

  inputDescriptionsByName = [descriptionCopy inputDescriptionsByName];
  if ([inputDescriptionsByName count] != 1)
  {
    goto LABEL_11;
  }

  inputDescriptionsByName2 = [descriptionCopy inputDescriptionsByName];
  allValues = [inputDescriptionsByName2 allValues];
  v16 = [allValues objectAtIndexedSubscript:0];
  if ([v16 type] != 3 || objc_msgSend(allKeys, "count") != 3 || !objc_msgSend(allKeys, "containsObject:", @"labels") || !objc_msgSend(allKeys, "containsObject:", @"locations"))
  {

LABEL_11:
    goto LABEL_12;
  }

  v24 = [allKeys containsObject:@"lengths"];

  if (v24)
  {
    v17 = [dictionaryCopy objectForKey:@"modelData"];
    v25.receiver = self;
    v25.super_class = NLPMLSequenceModel;
    v18 = [(NLModel *)&v25 initWithData:v17 error:error];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_modelDescription, description);
    }

    self = v19;
    selfCopy = self;
    goto LABEL_14;
  }

LABEL_12:
  if (!error)
  {
    selfCopy = 0;
    goto LABEL_16;
  }

  v21 = MEMORY[0x1E696ABC0];
  v26 = *MEMORY[0x1E696A578];
  v27[0] = @"Failed to load model file";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [v21 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:2 userInfo:v17];
  *error = selfCopy = 0;
LABEL_14:

LABEL_16:
  v22 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  modelDescription = self->_modelDescription;
  featuresCopy = features;
  inputDescriptionsByName = [(MLModelDescription *)modelDescription inputDescriptionsByName];
  allKeys = [inputDescriptionsByName allKeys];
  v11 = [allKeys objectAtIndexedSubscript:0];

  v12 = [featuresCopy featureValueForName:v11];

  stringValue = [v12 stringValue];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  if (stringValue)
  {
    errorCopy = error;
    generateTokenSequence(stringValue, 0, array, array2, array3);
    v17 = [(NLModel *)self predictedLabelsForTokens:array];
    v18 = [v17 count];
    v19 = [array2 count];
    v20 = [array3 count];
    v21 = 0;
    if (v17 && v18)
    {
      v21 = [MEMORY[0x1E695FF10] sequenceWithStringArray:v17];
    }

    v22 = 0;
    if (array2 && v19)
    {
      v22 = [MEMORY[0x1E695FF10] sequenceWithInt64Array:array2];
    }

    v33 = array2;
    v23 = 0;
    v36 = stringValue;
    v37 = v11;
    v35 = array;
    if (array3 && v20)
    {
      v23 = [MEMORY[0x1E695FF10] sequenceWithInt64Array:array3];
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
    v29 = [v24 initWithDictionary:v28 error:errorCopy];

    stringValue = v36;
    v11 = v37;
    array = v35;
    array2 = v33;
    goto LABEL_14;
  }

  if (error)
  {
    v30 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v41[0] = @"Prediction failed due to missing input";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [v30 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v21];
    *error = v29 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v29 = 0;
LABEL_15:

  v31 = *MEMORY[0x1E69E9840];

  return v29;
}

@end