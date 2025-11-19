@interface INIntentExecutionResult
- (BOOL)isEqual:(id)a3;
- (INIntentExecutionResult)initWithCoder:(id)a3;
- (INIntentExecutionResult)initWithIntent:(id)a3 response:(id)a4;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INIntentExecutionResult

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"intent";
  intent = self->_intent;
  v4 = intent;
  if (!intent)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"intentResponse";
  v11[0] = v4;
  intentResponse = self->_intentResponse;
  v6 = intentResponse;
  if (!intentResponse)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (intentResponse)
  {
    if (intent)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (intent)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INIntentExecutionResult;
  v6 = [(INIntentExecutionResult *)&v11 description];
  v7 = [(INIntentExecutionResult *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  intent = self->_intent;
  v5 = a3;
  [v5 encodeObject:intent forKey:@"intent"];
  [v5 encodeObject:self->_intentResponse forKey:@"intentResponse"];
}

- (INIntentExecutionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentResponse"];

  v7 = [objc_alloc(objc_opt_class()) initWithIntent:v5 response:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    intent = self->_intent;
    v8 = 0;
    if (intent == v5[1] || [(INIntent *)intent isEqual:?])
    {
      intentResponse = self->_intentResponse;
      if (intentResponse == v5[2] || [(INIntentResponse *)intentResponse isEqual:?])
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (INIntentExecutionResult)initWithIntent:(id)a3 response:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = INIntentExecutionResult;
  v9 = [(INIntentExecutionResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_intent, a3);
    objc_storeStrong(&v10->_intentResponse, a4);
  }

  return v10;
}

@end