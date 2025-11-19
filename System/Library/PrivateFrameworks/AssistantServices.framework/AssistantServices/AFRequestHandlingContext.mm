@interface AFRequestHandlingContext
+ (id)newWithBuilder:(id)a3;
- (AFRequestHandlingContext)initWithBuilder:(id)a3;
- (AFRequestHandlingContext)initWithCoder:(id)a3;
- (AFRequestHandlingContext)initWithDictionaryRepresentation:(id)a3;
- (AFRequestHandlingContext)initWithRequestID:(id)a3 inputDeviceID:(id)a4 inputAssistantID:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFRequestHandlingContext

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  requestID = self->_requestID;
  if (requestID)
  {
    [v3 setObject:requestID forKey:@"requestID"];
  }

  inputDeviceID = self->_inputDeviceID;
  if (inputDeviceID)
  {
    [v4 setObject:inputDeviceID forKey:@"inputDeviceID"];
  }

  inputAssistantID = self->_inputAssistantID;
  if (inputAssistantID)
  {
    [v4 setObject:inputAssistantID forKey:@"inputAssistantID"];
  }

  v8 = [v4 copy];

  return v8;
}

- (AFRequestHandlingContext)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 objectForKey:@"inputDeviceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v5 objectForKey:@"inputAssistantID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(AFRequestHandlingContext *)self initWithRequestID:v7 inputDeviceID:v10 inputAssistantID:v12];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  requestID = self->_requestID;
  v5 = a3;
  [v5 encodeObject:requestID forKey:@"AFRequestHandlingContext::requestID"];
  [v5 encodeObject:self->_inputDeviceID forKey:@"AFRequestHandlingContext::inputDeviceID"];
  [v5 encodeObject:self->_inputAssistantID forKey:@"AFRequestHandlingContext::inputAssistantID"];
}

- (AFRequestHandlingContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFRequestHandlingContext::requestID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFRequestHandlingContext::inputDeviceID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFRequestHandlingContext::inputAssistantID"];

  v8 = [(AFRequestHandlingContext *)self initWithRequestID:v5 inputDeviceID:v6 inputAssistantID:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AFRequestHandlingContext *)v5 requestID];
      requestID = self->_requestID;
      if (requestID == v6 || [(NSString *)requestID isEqual:v6])
      {
        v8 = [(AFRequestHandlingContext *)v5 inputDeviceID];
        inputDeviceID = self->_inputDeviceID;
        if (inputDeviceID == v8 || [(NSString *)inputDeviceID isEqual:v8])
        {
          v10 = [(AFRequestHandlingContext *)v5 inputAssistantID];
          inputAssistantID = self->_inputAssistantID;
          v12 = inputAssistantID == v10 || [(NSString *)inputAssistantID isEqual:v10];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestID hash];
  v4 = [(NSString *)self->_inputDeviceID hash]^ v3;
  return v4 ^ [(NSString *)self->_inputAssistantID hash];
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFRequestHandlingContext;
  v5 = [(AFRequestHandlingContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {requestID = %@, inputDeviceID = %@, inputAssistantID = %@}", v5, self->_requestID, self->_inputDeviceID, self->_inputAssistantID];

  return v6;
}

- (AFRequestHandlingContext)initWithRequestID:(id)a3 inputDeviceID:(id)a4 inputAssistantID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__AFRequestHandlingContext_initWithRequestID_inputDeviceID_inputAssistantID___block_invoke;
  v16[3] = &unk_1E73451E0;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = [(AFRequestHandlingContext *)self initWithBuilder:v16];

  return v14;
}

void __77__AFRequestHandlingContext_initWithRequestID_inputDeviceID_inputAssistantID___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setRequestID:v3];
  [v4 setInputDeviceID:a1[5]];
  [v4 setInputAssistantID:a1[6]];
}

- (AFRequestHandlingContext)initWithBuilder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AFRequestHandlingContext;
  v5 = [(AFRequestHandlingContext *)&v18 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFRequestHandlingContextMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFRequestHandlingContextMutation *)v7 isDirty])
    {
      v8 = [(_AFRequestHandlingContextMutation *)v7 getRequestID];
      v9 = [v8 copy];
      requestID = v6->_requestID;
      v6->_requestID = v9;

      v11 = [(_AFRequestHandlingContextMutation *)v7 getInputDeviceID];
      v12 = [v11 copy];
      inputDeviceID = v6->_inputDeviceID;
      v6->_inputDeviceID = v12;

      v14 = [(_AFRequestHandlingContextMutation *)v7 getInputAssistantID];
      v15 = [v14 copy];
      inputAssistantID = v6->_inputAssistantID;
      v6->_inputAssistantID = v15;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFRequestHandlingContextMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFRequestHandlingContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFRequestHandlingContext);
      v7 = [(_AFRequestHandlingContextMutation *)v5 getRequestID];
      v8 = [v7 copy];
      requestID = v6->_requestID;
      v6->_requestID = v8;

      v10 = [(_AFRequestHandlingContextMutation *)v5 getInputDeviceID];
      v11 = [v10 copy];
      inputDeviceID = v6->_inputDeviceID;
      v6->_inputDeviceID = v11;

      v13 = [(_AFRequestHandlingContextMutation *)v5 getInputAssistantID];
      v14 = [v13 copy];
      inputAssistantID = v6->_inputAssistantID;
      v6->_inputAssistantID = v14;
    }

    else
    {
      v6 = [(AFRequestHandlingContext *)self copy];
    }
  }

  else
  {
    v6 = [(AFRequestHandlingContext *)self copy];
  }

  return v6;
}

@end