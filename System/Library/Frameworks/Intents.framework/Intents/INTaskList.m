@interface INTaskList
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INTaskList)init;
- (INTaskList)initWithCoder:(id)a3;
- (INTaskList)initWithTitle:(INSpeakableString *)title tasks:(NSArray *)tasks groupName:(INSpeakableString *)groupName createdDateComponents:(NSDateComponents *)createdDateComponents modifiedDateComponents:(NSDateComponents *)modifiedDateComponents identifier:(NSString *)identifier;
- (INTaskList)initWithTitle:(id)a3 tasks:(id)a4 groupName:(id)a5 taskListType:(int64_t)a6 createdDateComponents:(id)a7 modifiedDateComponents:(id)a8 identifier:(id)a9;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INTaskList

- (INTaskList)initWithTitle:(id)a3 tasks:(id)a4 groupName:(id)a5 taskListType:(int64_t)a6 createdDateComponents:(id)a7 modifiedDateComponents:(id)a8 identifier:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [[INSpeakableString alloc] initWithSpokenPhrase:v20];

  v22 = [[INSpeakableString alloc] initWithSpokenPhrase:v18];
  v23 = [(INTaskList *)self initWithTitle:v21 tasks:v19 groupName:v22 createdDateComponents:v17 modifiedDateComponents:v16 identifier:v15];

  return v23;
}

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = [(INTaskList *)self title];
  v7 = [v6 _intents_readableTitleWithLocalizer:v5];

  return v7;
}

- (id)_dictionaryRepresentation
{
  v28[6] = *MEMORY[0x1E69E9840];
  v22 = @"title";
  title = self->_title;
  v4 = title;
  if (!title)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v4;
  v28[0] = v4;
  v23 = @"tasks";
  tasks = self->_tasks;
  v6 = tasks;
  if (!tasks)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v6;
  v28[1] = v6;
  v24 = @"groupName";
  groupName = self->_groupName;
  v8 = groupName;
  if (!groupName)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v8;
  v28[2] = v8;
  v25 = @"createdDateComponents";
  createdDateComponents = self->_createdDateComponents;
  v10 = createdDateComponents;
  if (!createdDateComponents)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = v10;
  v26 = @"modifiedDateComponents";
  modifiedDateComponents = self->_modifiedDateComponents;
  v12 = modifiedDateComponents;
  if (!modifiedDateComponents)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = v12;
  v27 = @"identifier";
  identifier = self->_identifier;
  v14 = identifier;
  if (!identifier)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v22 count:{6, v18}];
  if (identifier)
  {
    if (modifiedDateComponents)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (modifiedDateComponents)
    {
LABEL_15:
      if (createdDateComponents)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  if (createdDateComponents)
  {
LABEL_16:
    if (groupName)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:

  if (groupName)
  {
LABEL_17:
    if (tasks)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (title)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (!tasks)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (title)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INTaskList;
  v6 = [(INTaskList *)&v11 description];
  v7 = [(INTaskList *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_title];
  [v7 if_setObjectIfNonNil:v8 forKey:@"title"];

  v9 = [v6 encodeObject:self->_tasks];
  [v7 if_setObjectIfNonNil:v9 forKey:@"tasks"];

  v10 = [v6 encodeObject:self->_groupName];
  [v7 if_setObjectIfNonNil:v10 forKey:@"groupName"];

  v11 = [v6 encodeObject:self->_createdDateComponents];
  [v7 if_setObjectIfNonNil:v11 forKey:@"createdDateComponents"];

  v12 = [v6 encodeObject:self->_modifiedDateComponents];
  [v7 if_setObjectIfNonNil:v12 forKey:@"modifiedDateComponents"];

  v13 = [v6 encodeObject:self->_identifier];

  [v7 if_setObjectIfNonNil:v13 forKey:@"identifier"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_tasks forKey:@"tasks"];
  [v5 encodeObject:self->_groupName forKey:@"groupName"];
  [v5 encodeObject:self->_createdDateComponents forKey:@"createdDateComponents"];
  [v5 encodeObject:self->_modifiedDateComponents forKey:@"modifiedDateComponents"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
}

- (INTaskList)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = MEMORY[0x1E695DFD8];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"tasks"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"createdDateComponents"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modifiedDateComponents"];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"identifier"];

  v17 = [(INTaskList *)self initWithTitle:v5 tasks:v9 groupName:v10 createdDateComponents:v11 modifiedDateComponents:v12 identifier:v16];
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      title = self->_title;
      v12 = 0;
      if (title == v5->_title || [(INSpeakableString *)title isEqual:?])
      {
        tasks = self->_tasks;
        if (tasks == v5->_tasks || [(NSArray *)tasks isEqual:?])
        {
          groupName = self->_groupName;
          if (groupName == v5->_groupName || [(INSpeakableString *)groupName isEqual:?])
          {
            createdDateComponents = self->_createdDateComponents;
            if (createdDateComponents == v5->_createdDateComponents || [(NSDateComponents *)createdDateComponents isEqual:?])
            {
              modifiedDateComponents = self->_modifiedDateComponents;
              if (modifiedDateComponents == v5->_modifiedDateComponents || [(NSDateComponents *)modifiedDateComponents isEqual:?])
              {
                identifier = self->_identifier;
                if (identifier == v5->_identifier || [(NSString *)identifier isEqual:?])
                {
                  v12 = 1;
                }
              }
            }
          }
        }
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
  v3 = [(INSpeakableString *)self->_title hash];
  v4 = [(NSArray *)self->_tasks hash]^ v3;
  v5 = [(INSpeakableString *)self->_groupName hash];
  v6 = v4 ^ v5 ^ [(NSDateComponents *)self->_createdDateComponents hash];
  v7 = [(NSDateComponents *)self->_modifiedDateComponents hash];
  return v6 ^ v7 ^ [(NSString *)self->_identifier hash];
}

- (INTaskList)initWithTitle:(INSpeakableString *)title tasks:(NSArray *)tasks groupName:(INSpeakableString *)groupName createdDateComponents:(NSDateComponents *)createdDateComponents modifiedDateComponents:(NSDateComponents *)modifiedDateComponents identifier:(NSString *)identifier
{
  v14 = title;
  v15 = tasks;
  v16 = groupName;
  v17 = createdDateComponents;
  v18 = modifiedDateComponents;
  v19 = identifier;
  v34.receiver = self;
  v34.super_class = INTaskList;
  v20 = [(INTaskList *)&v34 init];
  if (v20)
  {
    v21 = [(INSpeakableString *)v14 copy];
    v22 = v20->_title;
    v20->_title = v21;

    v23 = [(NSArray *)v15 copy];
    v24 = v20->_tasks;
    v20->_tasks = v23;

    v25 = [(INSpeakableString *)v16 copy];
    v26 = v20->_groupName;
    v20->_groupName = v25;

    v27 = [(NSDateComponents *)v17 copy];
    v28 = v20->_createdDateComponents;
    v20->_createdDateComponents = v27;

    v29 = [(NSDateComponents *)v18 copy];
    v30 = v20->_modifiedDateComponents;
    v20->_modifiedDateComponents = v29;

    v31 = [(NSString *)v19 copy];
    v32 = v20->_identifier;
    v20->_identifier = v31;
  }

  return v20;
}

- (INTaskList)init
{
  v3.receiver = self;
  v3.super_class = INTaskList;
  return [(INTaskList *)&v3 init];
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"title"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"tasks"];
    v14 = [v7 decodeObjectsOfClass:v12 from:v13];

    v15 = objc_opt_class();
    v16 = [v8 objectForKeyedSubscript:@"groupName"];
    v17 = [v7 decodeObjectOfClass:v15 from:v16];

    v18 = objc_opt_class();
    v19 = [v8 objectForKeyedSubscript:@"createdDateComponents"];
    v20 = [v7 decodeObjectOfClass:v18 from:v19];

    v21 = objc_opt_class();
    v22 = [v8 objectForKeyedSubscript:@"modifiedDateComponents"];
    v23 = [v7 decodeObjectOfClass:v21 from:v22];

    v24 = [v8 objectForKeyedSubscript:@"identifier"];
    v25 = [[a1 alloc] initWithTitle:v11 tasks:v14 groupName:v17 createdDateComponents:v20 modifiedDateComponents:v23 identifier:v24];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)_intents_updateContainerWithCache:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(INTaskList *)self tasks];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) _intents_updateContainerWithCache:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_intents_cacheableObjects
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(INTaskList *)self tasks];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) _intents_cacheableObjects];
        [v3 unionSet:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

@end