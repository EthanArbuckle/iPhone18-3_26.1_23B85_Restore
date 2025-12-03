@interface INIntentTestResolvedParameter
- (INIntentTestResolvedParameter)initWithParameter:(id)parameter forIntent:(id)intent extensionContextResolutionResult:(id)result;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)dictionaryRepresentation;
@end

@implementation INIntentTestResolvedParameter

- (id)dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"parameter";
  parameter = self->_parameter;
  null = parameter;
  if (!parameter)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"results";
  results = self->_results;
  null2 = results;
  if (!results)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v11[2] = @"resolveImplemented";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_resolveImplemented];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  if (results)
  {
    if (parameter)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (parameter)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INIntentTestResolvedParameter;
  v6 = [(INIntentTestResolvedParameter *)&v11 description];
  dictionaryRepresentation = [(INIntentTestResolvedParameter *)self dictionaryRepresentation];
  v8 = [dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INIntentTestResolvedParameter)initWithParameter:(id)parameter forIntent:(id)intent extensionContextResolutionResult:(id)result
{
  v28[1] = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  intentCopy = intent;
  resultCopy = result;
  v27.receiver = self;
  v27.super_class = INIntentTestResolvedParameter;
  v12 = [(INIntentTestResolvedParameter *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parameter, parameter);
    objc_storeStrong(&v13->_extensionContextResolutionResult, result);
    v14 = [intentCopy copy];
    intent = v13->_intent;
    v13->_intent = v14;

    v13->_resolveImplemented = [resultCopy result] != 2;
    _intentInstanceDescription = [intentCopy _intentInstanceDescription];
    v17 = [_intentInstanceDescription slotByName:parameterCopy];
    slotDescription = v13->_slotDescription;
    v13->_slotDescription = v17;

    data = [resultCopy data];
    if (!data)
    {
      goto LABEL_10;
    }

    v20 = v13->_slotDescription;

    if (!v20)
    {
      goto LABEL_10;
    }

    data2 = [resultCopy data];
    v22 = [INIntentResolutionResult _resolutionResultWithData:data2 slotDescription:v13->_slotDescription];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      if (!v22)
      {
LABEL_9:

LABEL_10:
        goto LABEL_11;
      }

      v28[0] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    }

    results = v13->_results;
    v13->_results = v23;

    goto LABEL_9;
  }

LABEL_11:

  v25 = *MEMORY[0x1E69E9840];
  return v13;
}

@end