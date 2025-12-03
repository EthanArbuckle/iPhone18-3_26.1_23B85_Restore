@interface AFRequestHandlingContext
+ (id)newWithBuilder:(id)builder;
- (AFRequestHandlingContext)initWithBuilder:(id)builder;
- (AFRequestHandlingContext)initWithCoder:(id)coder;
- (AFRequestHandlingContext)initWithDictionaryRepresentation:(id)representation;
- (AFRequestHandlingContext)initWithRequestID:(id)d inputDeviceID:(id)iD inputAssistantID:(id)assistantID;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (AFRequestHandlingContext)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"requestID"];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  requestID = self->_requestID;
  coderCopy = coder;
  [coderCopy encodeObject:requestID forKey:@"AFRequestHandlingContext::requestID"];
  [coderCopy encodeObject:self->_inputDeviceID forKey:@"AFRequestHandlingContext::inputDeviceID"];
  [coderCopy encodeObject:self->_inputAssistantID forKey:@"AFRequestHandlingContext::inputAssistantID"];
}

- (AFRequestHandlingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFRequestHandlingContext::requestID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFRequestHandlingContext::inputDeviceID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFRequestHandlingContext::inputAssistantID"];

  v8 = [(AFRequestHandlingContext *)self initWithRequestID:v5 inputDeviceID:v6 inputAssistantID:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestID = [(AFRequestHandlingContext *)v5 requestID];
      requestID = self->_requestID;
      if (requestID == requestID || [(NSString *)requestID isEqual:requestID])
      {
        inputDeviceID = [(AFRequestHandlingContext *)v5 inputDeviceID];
        inputDeviceID = self->_inputDeviceID;
        if (inputDeviceID == inputDeviceID || [(NSString *)inputDeviceID isEqual:inputDeviceID])
        {
          inputAssistantID = [(AFRequestHandlingContext *)v5 inputAssistantID];
          inputAssistantID = self->_inputAssistantID;
          v12 = inputAssistantID == inputAssistantID || [(NSString *)inputAssistantID isEqual:inputAssistantID];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFRequestHandlingContext;
  v5 = [(AFRequestHandlingContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {requestID = %@, inputDeviceID = %@, inputAssistantID = %@}", v5, self->_requestID, self->_inputDeviceID, self->_inputAssistantID];

  return v6;
}

- (AFRequestHandlingContext)initWithRequestID:(id)d inputDeviceID:(id)iD inputAssistantID:(id)assistantID
{
  dCopy = d;
  iDCopy = iD;
  assistantIDCopy = assistantID;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__AFRequestHandlingContext_initWithRequestID_inputDeviceID_inputAssistantID___block_invoke;
  v16[3] = &unk_1E73451E0;
  v17 = dCopy;
  v18 = iDCopy;
  v19 = assistantIDCopy;
  v11 = assistantIDCopy;
  v12 = iDCopy;
  v13 = dCopy;
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

- (AFRequestHandlingContext)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v18.receiver = self;
  v18.super_class = AFRequestHandlingContext;
  v5 = [(AFRequestHandlingContext *)&v18 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFRequestHandlingContextMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFRequestHandlingContextMutation *)v7 isDirty])
    {
      getRequestID = [(_AFRequestHandlingContextMutation *)v7 getRequestID];
      v9 = [getRequestID copy];
      requestID = v6->_requestID;
      v6->_requestID = v9;

      getInputDeviceID = [(_AFRequestHandlingContextMutation *)v7 getInputDeviceID];
      v12 = [getInputDeviceID copy];
      inputDeviceID = v6->_inputDeviceID;
      v6->_inputDeviceID = v12;

      getInputAssistantID = [(_AFRequestHandlingContextMutation *)v7 getInputAssistantID];
      v15 = [getInputAssistantID copy];
      inputAssistantID = v6->_inputAssistantID;
      v6->_inputAssistantID = v15;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFRequestHandlingContextMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFRequestHandlingContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFRequestHandlingContext);
      getRequestID = [(_AFRequestHandlingContextMutation *)v5 getRequestID];
      v8 = [getRequestID copy];
      requestID = v6->_requestID;
      v6->_requestID = v8;

      getInputDeviceID = [(_AFRequestHandlingContextMutation *)v5 getInputDeviceID];
      v11 = [getInputDeviceID copy];
      inputDeviceID = v6->_inputDeviceID;
      v6->_inputDeviceID = v11;

      getInputAssistantID = [(_AFRequestHandlingContextMutation *)v5 getInputAssistantID];
      v14 = [getInputAssistantID copy];
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