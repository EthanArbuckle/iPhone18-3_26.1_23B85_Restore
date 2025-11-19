@interface INIntentTestResolvedParameter
- (INIntentTestResolvedParameter)initWithParameter:(id)a3 forIntent:(id)a4 extensionContextResolutionResult:(id)a5;
- (id)descriptionAtIndent:(unint64_t)a3;
- (id)dictionaryRepresentation;
@end

@implementation INIntentTestResolvedParameter

- (id)dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"parameter";
  parameter = self->_parameter;
  v4 = parameter;
  if (!parameter)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v4;
  v11[1] = @"results";
  results = self->_results;
  v6 = results;
  if (!results)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v6;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INIntentTestResolvedParameter;
  v6 = [(INIntentTestResolvedParameter *)&v11 description];
  v7 = [(INIntentTestResolvedParameter *)self dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INIntentTestResolvedParameter)initWithParameter:(id)a3 forIntent:(id)a4 extensionContextResolutionResult:(id)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27.receiver = self;
  v27.super_class = INIntentTestResolvedParameter;
  v12 = [(INIntentTestResolvedParameter *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parameter, a3);
    objc_storeStrong(&v13->_extensionContextResolutionResult, a5);
    v14 = [v10 copy];
    intent = v13->_intent;
    v13->_intent = v14;

    v13->_resolveImplemented = [v11 result] != 2;
    v16 = [v10 _intentInstanceDescription];
    v17 = [v16 slotByName:v9];
    slotDescription = v13->_slotDescription;
    v13->_slotDescription = v17;

    v19 = [v11 data];
    if (!v19)
    {
      goto LABEL_10;
    }

    v20 = v13->_slotDescription;

    if (!v20)
    {
      goto LABEL_10;
    }

    v21 = [v11 data];
    v22 = [INIntentResolutionResult _resolutionResultWithData:v21 slotDescription:v13->_slotDescription];
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