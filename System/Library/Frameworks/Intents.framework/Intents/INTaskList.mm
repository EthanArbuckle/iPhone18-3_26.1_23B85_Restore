@interface INTaskList
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INTaskList)init;
- (INTaskList)initWithCoder:(id)coder;
- (INTaskList)initWithTitle:(INSpeakableString *)title tasks:(NSArray *)tasks groupName:(INSpeakableString *)groupName createdDateComponents:(NSDateComponents *)createdDateComponents modifiedDateComponents:(NSDateComponents *)modifiedDateComponents identifier:(NSString *)identifier;
- (INTaskList)initWithTitle:(id)title tasks:(id)tasks groupName:(id)name taskListType:(int64_t)type createdDateComponents:(id)components modifiedDateComponents:(id)dateComponents identifier:(id)identifier;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INTaskList

- (INTaskList)initWithTitle:(id)title tasks:(id)tasks groupName:(id)name taskListType:(int64_t)type createdDateComponents:(id)components modifiedDateComponents:(id)dateComponents identifier:(id)identifier
{
  identifierCopy = identifier;
  dateComponentsCopy = dateComponents;
  componentsCopy = components;
  nameCopy = name;
  tasksCopy = tasks;
  titleCopy = title;
  v21 = [[INSpeakableString alloc] initWithSpokenPhrase:titleCopy];

  v22 = [[INSpeakableString alloc] initWithSpokenPhrase:nameCopy];
  v23 = [(INTaskList *)self initWithTitle:v21 tasks:tasksCopy groupName:v22 createdDateComponents:componentsCopy modifiedDateComponents:dateComponentsCopy identifier:identifierCopy];

  return v23;
}

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  title = [(INTaskList *)self title];
  v7 = [title _intents_readableTitleWithLocalizer:localizerCopy];

  return v7;
}

- (id)_dictionaryRepresentation
{
  v28[6] = *MEMORY[0x1E69E9840];
  v22 = @"title";
  title = self->_title;
  null = title;
  if (!title)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v28[0] = null;
  v23 = @"tasks";
  tasks = self->_tasks;
  null2 = tasks;
  if (!tasks)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v28[1] = null2;
  v24 = @"groupName";
  groupName = self->_groupName;
  null3 = groupName;
  if (!groupName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null3;
  v28[2] = null3;
  v25 = @"createdDateComponents";
  createdDateComponents = self->_createdDateComponents;
  null4 = createdDateComponents;
  if (!createdDateComponents)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = null4;
  v26 = @"modifiedDateComponents";
  modifiedDateComponents = self->_modifiedDateComponents;
  null5 = modifiedDateComponents;
  if (!modifiedDateComponents)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = null5;
  v27 = @"identifier";
  identifier = self->_identifier;
  null6 = identifier;
  if (!identifier)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null6;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INTaskList;
  v6 = [(INTaskList *)&v11 description];
  _dictionaryRepresentation = [(INTaskList *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_title];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"title"];

  v9 = [encoderCopy encodeObject:self->_tasks];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"tasks"];

  v10 = [encoderCopy encodeObject:self->_groupName];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"groupName"];

  v11 = [encoderCopy encodeObject:self->_createdDateComponents];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"createdDateComponents"];

  v12 = [encoderCopy encodeObject:self->_modifiedDateComponents];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"modifiedDateComponents"];

  v13 = [encoderCopy encodeObject:self->_identifier];

  [dictionary if_setObjectIfNonNil:v13 forKey:@"identifier"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_tasks forKey:@"tasks"];
  [coderCopy encodeObject:self->_groupName forKey:@"groupName"];
  [coderCopy encodeObject:self->_createdDateComponents forKey:@"createdDateComponents"];
  [coderCopy encodeObject:self->_modifiedDateComponents forKey:@"modifiedDateComponents"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (INTaskList)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = MEMORY[0x1E695DFD8];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"tasks"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdDateComponents"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modifiedDateComponents"];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"identifier"];

  v17 = [(INTaskList *)self initWithTitle:v5 tasks:v9 groupName:v10 createdDateComponents:v11 modifiedDateComponents:v12 identifier:v16];
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"title"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"tasks"];
    v14 = [decoderCopy decodeObjectsOfClass:v12 from:v13];

    v15 = objc_opt_class();
    v16 = [fromCopy objectForKeyedSubscript:@"groupName"];
    v17 = [decoderCopy decodeObjectOfClass:v15 from:v16];

    v18 = objc_opt_class();
    v19 = [fromCopy objectForKeyedSubscript:@"createdDateComponents"];
    v20 = [decoderCopy decodeObjectOfClass:v18 from:v19];

    v21 = objc_opt_class();
    v22 = [fromCopy objectForKeyedSubscript:@"modifiedDateComponents"];
    v23 = [decoderCopy decodeObjectOfClass:v21 from:v22];

    v24 = [fromCopy objectForKeyedSubscript:@"identifier"];
    v25 = [[self alloc] initWithTitle:v11 tasks:v14 groupName:v17 createdDateComponents:v20 modifiedDateComponents:v23 identifier:v24];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)_intents_updateContainerWithCache:(id)cache
{
  v16 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tasks = [(INTaskList *)self tasks];
  v6 = [tasks countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(tasks);
        }

        [*(*(&v11 + 1) + 8 * v9++) _intents_updateContainerWithCache:cacheCopy];
      }

      while (v7 != v9);
      v7 = [tasks countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  tasks = [(INTaskList *)self tasks];
  v5 = [tasks countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(tasks);
        }

        _intents_cacheableObjects = [*(*(&v14 + 1) + 8 * v8) _intents_cacheableObjects];
        [v3 unionSet:_intents_cacheableObjects];

        ++v8;
      }

      while (v6 != v8);
      v6 = [tasks countByEnumeratingWithState:&v14 objects:v18 count:16];
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