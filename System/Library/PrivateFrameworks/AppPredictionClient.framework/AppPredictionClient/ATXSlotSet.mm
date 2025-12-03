@interface ATXSlotSet
- (ATXSlotSet)initWithCoder:(id)coder;
- (ATXSlotSet)initWithOpaqueParametersUuid:(id)uuid;
- (ATXSlotSet)initWithParameters:(id)parameters uuid:(id)uuid;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSlotSet:(id)set;
- (id)description;
- (unint64_t)hash;
@end

@implementation ATXSlotSet

- (unint64_t)hash
{
  v16 = *MEMORY[0x1E69E9840];
  hash = self->_hash;
  if (!hash)
  {
    v4 = [(NSSet *)self->_parameters count];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_parameters;
    v6 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v4 += [*(*(&v11 + 1) + 8 * i) hash];
        }

        v7 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    if (HIDWORD(v4) == v4)
    {
      hash = 1;
    }

    else
    {
      hash = HIDWORD(v4) ^ v4;
    }

    self->_hash = hash;
  }

  return hash;
}

- (ATXSlotSet)initWithParameters:(id)parameters uuid:(id)uuid
{
  parametersCopy = parameters;
  uuidCopy = uuid;
  v12.receiver = self;
  v12.super_class = ATXSlotSet;
  v8 = [(ATXSlotSet *)&v12 init];
  if (v8)
  {
    v9 = [parametersCopy copy];
    parameters = v8->_parameters;
    v8->_parameters = v9;

    objc_storeStrong(&v8->_uuid, uuid);
  }

  return v8;
}

- (ATXSlotSet)initWithOpaqueParametersUuid:(id)uuid
{
  uuidCopy = uuid;
  v9.receiver = self;
  v9.super_class = ATXSlotSet;
  v6 = [(ATXSlotSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, uuid);
  }

  return v7;
}

- (ATXSlotSet)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"parameters"];

  if (v8)
  {
    initWithOpaqueParameters = [(ATXSlotSet *)self initWithParameters:v8];
  }

  else
  {
    initWithOpaqueParameters = [(ATXSlotSet *)self initWithOpaqueParameters];
  }

  v10 = initWithOpaqueParameters;

  return v10;
}

- (BOOL)isEqualToSlotSet:(id)set
{
  setCopy = set;
  v5 = [(ATXSlotSet *)self hash];
  if (v5 == [setCopy hash])
  {
    parameters = self->_parameters;
    v7 = setCopy[2];
    if (parameters == v7)
    {
      v8 = 1;
    }

    else if (v7)
    {
      v8 = [(NSSet *)parameters isEqualToSet:?];
    }

    else
    {
      v9 = objc_opt_new();
      v8 = [(NSSet *)parameters isEqualToSet:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSlotSet *)self isEqualToSlotSet:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<ATXSlotSet: %@>", self->_parameters];

  return v2;
}

@end