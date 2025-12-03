@interface INIntentExecutionResult
- (BOOL)isEqual:(id)equal;
- (INIntentExecutionResult)initWithCoder:(id)coder;
- (INIntentExecutionResult)initWithIntent:(id)intent response:(id)response;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INIntentExecutionResult

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"intent";
  intent = self->_intent;
  null = intent;
  if (!intent)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"intentResponse";
  v11[0] = null;
  intentResponse = self->_intentResponse;
  null2 = intentResponse;
  if (!intentResponse)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INIntentExecutionResult;
  v6 = [(INIntentExecutionResult *)&v11 description];
  _dictionaryRepresentation = [(INIntentExecutionResult *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  intent = self->_intent;
  coderCopy = coder;
  [coderCopy encodeObject:intent forKey:@"intent"];
  [coderCopy encodeObject:self->_intentResponse forKey:@"intentResponse"];
}

- (INIntentExecutionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentResponse"];

  v7 = [objc_alloc(objc_opt_class()) initWithIntent:v5 response:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (INIntentExecutionResult)initWithIntent:(id)intent response:(id)response
{
  intentCopy = intent;
  responseCopy = response;
  v12.receiver = self;
  v12.super_class = INIntentExecutionResult;
  v9 = [(INIntentExecutionResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_intent, intent);
    objc_storeStrong(&v10->_intentResponse, response);
  }

  return v10;
}

@end