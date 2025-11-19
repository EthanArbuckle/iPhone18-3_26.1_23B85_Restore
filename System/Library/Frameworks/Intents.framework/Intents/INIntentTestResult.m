@interface INIntentTestResult
- (INIntentTestResult)initWithResolvedIntent:(id)a3 resolvedParameters:(id)a4 resolvedAllParametersSuccesfully:(BOOL)a5 confirmResponse:(id)a6 handleResponse:(id)a7;
- (id)descriptionAtIndent:(unint64_t)a3;
- (id)dictionaryRepresentation;
@end

@implementation INIntentTestResult

- (id)dictionaryRepresentation
{
  v16[5] = *MEMORY[0x1E69E9840];
  v15[0] = @"resolvedIntent";
  resolvedIntent = self->_resolvedIntent;
  v4 = resolvedIntent;
  if (!resolvedIntent)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v4;
  v15[1] = @"resolvedParameters";
  resolvedParameters = self->_resolvedParameters;
  v6 = resolvedParameters;
  if (!resolvedParameters)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v6;
  v15[2] = @"resolvedAllParametersSuccesfully";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_resolvedAllParametersSuccesfully];
  v16[2] = v7;
  v15[3] = @"confirmResponse";
  confirmResponse = self->_confirmResponse;
  v9 = confirmResponse;
  if (!confirmResponse)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = v9;
  v15[4] = @"handleResponse";
  handleResponse = self->_handleResponse;
  v11 = handleResponse;
  if (!handleResponse)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[4] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  if (handleResponse)
  {
    if (confirmResponse)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (confirmResponse)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  if (resolvedParameters)
  {
    if (resolvedIntent)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (resolvedIntent)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INIntentTestResult;
  v6 = [(INIntentTestResult *)&v11 description];
  v7 = [(INIntentTestResult *)self dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INIntentTestResult)initWithResolvedIntent:(id)a3 resolvedParameters:(id)a4 resolvedAllParametersSuccesfully:(BOOL)a5 confirmResponse:(id)a6 handleResponse:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = INIntentTestResult;
  v16 = [(INIntentTestResult *)&v22 init];
  if (v16)
  {
    v17 = [v12 copy];
    resolvedIntent = v16->_resolvedIntent;
    v16->_resolvedIntent = v17;

    v19 = [v13 copy];
    resolvedParameters = v16->_resolvedParameters;
    v16->_resolvedParameters = v19;

    v16->_resolvedAllParametersSuccesfully = a5;
    objc_storeStrong(&v16->_confirmResponse, a6);
    objc_storeStrong(&v16->_handleResponse, a7);
  }

  return v16;
}

@end