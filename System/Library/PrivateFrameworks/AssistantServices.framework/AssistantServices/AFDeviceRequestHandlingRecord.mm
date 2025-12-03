@interface AFDeviceRequestHandlingRecord
+ (id)newWithBuilder:(id)builder;
- (AFDeviceRequestHandlingRecord)initWithBuilder:(id)builder;
- (AFDeviceRequestHandlingRecord)initWithCoder:(id)coder;
- (AFDeviceRequestHandlingRecord)initWithDictionaryRepresentation:(id)representation;
- (AFDeviceRequestHandlingRecord)initWithRequestID:(id)d deviceRoles:(unint64_t)roles;
- (AFDeviceRequestHandlingRecord)initWithSerializedBackingStore:(id)store;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFDeviceRequestHandlingRecord

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  requestID = self->_requestID;
  if (requestID)
  {
    [v3 setObject:requestID forKey:@"requestID"];
  }

  v6 = AFDeviceRequestHandlingRolesGetNames(self->_deviceRoles);
  [v4 setObject:v6 forKey:@"deviceRoles"];

  v7 = [v4 copy];

  return v7;
}

- (AFDeviceRequestHandlingRecord)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    v5 = [representationCopy objectForKey:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = [representationCopy objectForKey:@"deviceRoles"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = AFDeviceRequestHandlingRolesGetFromNames(v8);
    }

    else
    {
      v9 = 0;
    }

    self = [(AFDeviceRequestHandlingRecord *)self initWithRequestID:v6 deviceRoles:v9];
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
  [coderCopy encodeObject:requestID forKey:@"AFDeviceRequestHandlingRecord::requestID"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_deviceRoles];
  [coderCopy encodeObject:v6 forKey:@"AFDeviceRequestHandlingRecord::deviceRoles"];
}

- (AFDeviceRequestHandlingRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFDeviceRequestHandlingRecord::requestID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFDeviceRequestHandlingRecord::deviceRoles"];

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v8 = [(AFDeviceRequestHandlingRecord *)self initWithRequestID:v5 deviceRoles:unsignedIntegerValue];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      deviceRoles = self->_deviceRoles;
      if (deviceRoles == [(AFDeviceRequestHandlingRecord *)v5 deviceRoles])
      {
        requestID = [(AFDeviceRequestHandlingRecord *)v5 requestID];
        requestID = self->_requestID;
        v9 = requestID == requestID || [(NSString *)requestID isEqual:requestID];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestID hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_deviceRoles];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = AFDeviceRequestHandlingRecord;
  v5 = [(AFDeviceRequestHandlingRecord *)&v11 description];
  requestID = self->_requestID;
  v7 = AFDeviceRequestHandlingRolesGetNames(self->_deviceRoles);
  v8 = [v7 componentsJoinedByString:@"|"];
  v9 = [v4 initWithFormat:@"%@ {requestID = %@, deviceRoles = %@}", v5, requestID, v8];

  return v9;
}

- (AFDeviceRequestHandlingRecord)initWithRequestID:(id)d deviceRoles:(unint64_t)roles
{
  dCopy = d;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__AFDeviceRequestHandlingRecord_initWithRequestID_deviceRoles___block_invoke;
  v10[3] = &unk_1E73437F0;
  v11 = dCopy;
  rolesCopy = roles;
  v7 = dCopy;
  v8 = [(AFDeviceRequestHandlingRecord *)self initWithBuilder:v10];

  return v8;
}

void __63__AFDeviceRequestHandlingRecord_initWithRequestID_deviceRoles___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setRequestID:v3];
  [v4 setDeviceRoles:*(a1 + 40)];
}

- (AFDeviceRequestHandlingRecord)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = AFDeviceRequestHandlingRecord;
  v5 = [(AFDeviceRequestHandlingRecord *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFDeviceRequestHandlingRecordMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFDeviceRequestHandlingRecordMutation *)v7 isDirty])
    {
      getRequestID = [(_AFDeviceRequestHandlingRecordMutation *)v7 getRequestID];
      v9 = [getRequestID copy];
      requestID = v6->_requestID;
      v6->_requestID = v9;

      v6->_deviceRoles = [(_AFDeviceRequestHandlingRecordMutation *)v7 getDeviceRoles];
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
    v5 = [[_AFDeviceRequestHandlingRecordMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFDeviceRequestHandlingRecordMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFDeviceRequestHandlingRecord);
      getRequestID = [(_AFDeviceRequestHandlingRecordMutation *)v5 getRequestID];
      v8 = [getRequestID copy];
      requestID = v6->_requestID;
      v6->_requestID = v8;

      v6->_deviceRoles = [(_AFDeviceRequestHandlingRecordMutation *)v5 getDeviceRoles];
    }

    else
    {
      v6 = [(AFDeviceRequestHandlingRecord *)self copy];
    }
  }

  else
  {
    v6 = [(AFDeviceRequestHandlingRecord *)self copy];
  }

  return v6;
}

- (AFDeviceRequestHandlingRecord)initWithSerializedBackingStore:(id)store
{
  v13 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(AFDeviceRequestHandlingRecord *)self initWithDictionaryRepresentation:storeCopy];
    selfCopy = self;
  }

  else
  {
    v6 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[AFDeviceRequestHandlingRecord(ContextSnapshot) initWithSerializedBackingStore:]";
      v11 = 2112;
      v12 = storeCopy;
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s #hal serializedBackingStore is of unexpected type or is nil: %@", &v9, 0x16u);
    }

    selfCopy = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end