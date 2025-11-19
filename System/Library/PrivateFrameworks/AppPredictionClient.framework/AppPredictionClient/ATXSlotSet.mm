@interface ATXSlotSet
- (ATXSlotSet)initWithCoder:(id)a3;
- (ATXSlotSet)initWithOpaqueParametersUuid:(id)a3;
- (ATXSlotSet)initWithParameters:(id)a3 uuid:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSlotSet:(id)a3;
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

- (ATXSlotSet)initWithParameters:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ATXSlotSet;
  v8 = [(ATXSlotSet *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    parameters = v8->_parameters;
    v8->_parameters = v9;

    objc_storeStrong(&v8->_uuid, a4);
  }

  return v8;
}

- (ATXSlotSet)initWithOpaqueParametersUuid:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXSlotSet;
  v6 = [(ATXSlotSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
  }

  return v7;
}

- (ATXSlotSet)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"parameters"];

  if (v8)
  {
    v9 = [(ATXSlotSet *)self initWithParameters:v8];
  }

  else
  {
    v9 = [(ATXSlotSet *)self initWithOpaqueParameters];
  }

  v10 = v9;

  return v10;
}

- (BOOL)isEqualToSlotSet:(id)a3
{
  v4 = a3;
  v5 = [(ATXSlotSet *)self hash];
  if (v5 == [v4 hash])
  {
    parameters = self->_parameters;
    v7 = v4[2];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSlotSet *)self isEqualToSlotSet:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<ATXSlotSet: %@>", self->_parameters];

  return v2;
}

@end