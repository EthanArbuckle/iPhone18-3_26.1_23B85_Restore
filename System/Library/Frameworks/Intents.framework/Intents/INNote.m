@interface INNote
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INNote)init;
- (INNote)initWithCoder:(id)a3;
- (INNote)initWithTitle:(INSpeakableString *)title contents:(NSArray *)contents groupName:(INSpeakableString *)groupName createdDateComponents:(NSDateComponents *)createdDateComponents modifiedDateComponents:(NSDateComponents *)modifiedDateComponents identifier:(NSString *)identifier;
- (INNote)initWithTitle:(id)a3 contents:(id)a4 groupName:(id)a5 createdDateComponents:(id)a6 modifiedDateComponents:(id)a7 identifier:(id)a8 accountIdentifier:(id)a9;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_injectProxiesForImages:(id)a3 completion:(id)a4;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INNote

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = [(INNote *)self title];
  v7 = [v6 _intents_readableTitleWithLocalizer:v5];

  return v7;
}

- (void)_injectProxiesForImages:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(INNote *)self copy];
    v9 = [(INNote *)self contents];
    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __68__INNote_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      v10[3] = &unk_1E72802F0;
      v10[4] = v8;
      v11 = v7;
      [v9 _injectProxiesForImages:v6 completion:v10];
    }

    else
    {
      (*(v7 + 2))(v7, v8);
    }
  }
}

uint64_t __68__INNote_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setContents:a2];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)_intents_updateContainerWithCache:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(INNote *)self contents];
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
  v4 = [(INNote *)self contents];
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

- (id)_dictionaryRepresentation
{
  v25[7] = *MEMORY[0x1E69E9840];
  title = self->_title;
  v23 = title;
  v24[0] = @"title";
  if (!title)
  {
    title = [MEMORY[0x1E695DFB0] null];
  }

  v22 = title;
  v25[0] = title;
  v24[1] = @"contents";
  contents = self->_contents;
  v5 = contents;
  if (!contents)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v5;
  v25[1] = v5;
  v24[2] = @"groupName";
  groupName = self->_groupName;
  v7 = groupName;
  if (!groupName)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v7;
  v25[2] = v7;
  v24[3] = @"createdDateComponents";
  createdDateComponents = self->_createdDateComponents;
  v9 = createdDateComponents;
  if (!createdDateComponents)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v9;
  v25[3] = v9;
  v24[4] = @"modifiedDateComponents";
  modifiedDateComponents = self->_modifiedDateComponents;
  v11 = modifiedDateComponents;
  if (!modifiedDateComponents)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v11;
  v24[5] = @"identifier";
  identifier = self->_identifier;
  v13 = identifier;
  if (!identifier)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = v13;
  v24[6] = @"accountIdentifier";
  accountIdentifier = self->_accountIdentifier;
  v15 = accountIdentifier;
  if (!accountIdentifier)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25[6] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:7];
  if (accountIdentifier)
  {
    if (identifier)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (identifier)
    {
LABEL_17:
      if (modifiedDateComponents)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }
  }

  if (modifiedDateComponents)
  {
LABEL_18:
    if (createdDateComponents)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:

  if (createdDateComponents)
  {
LABEL_19:
    if (groupName)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (contents)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_29:

  if (!groupName)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (contents)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!v23)
  {
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INNote;
  v6 = [(INNote *)&v11 description];
  v7 = [(INNote *)self _dictionaryRepresentation];
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

  v9 = [v6 encodeObject:self->_contents];
  [v7 if_setObjectIfNonNil:v9 forKey:@"contents"];

  v10 = [v6 encodeObject:self->_groupName];
  [v7 if_setObjectIfNonNil:v10 forKey:@"groupName"];

  v11 = [v6 encodeObject:self->_createdDateComponents];
  [v7 if_setObjectIfNonNil:v11 forKey:@"createdDateComponents"];

  v12 = [v6 encodeObject:self->_modifiedDateComponents];
  [v7 if_setObjectIfNonNil:v12 forKey:@"modifiedDateComponents"];

  v13 = [v6 encodeObject:self->_identifier];
  [v7 if_setObjectIfNonNil:v13 forKey:@"identifier"];

  v14 = [v6 encodeObject:self->_accountIdentifier];

  [v7 if_setObjectIfNonNil:v14 forKey:@"accountIdentifier"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_contents forKey:@"contents"];
  [v5 encodeObject:self->_groupName forKey:@"groupName"];
  [v5 encodeObject:self->_createdDateComponents forKey:@"createdDateComponents"];
  [v5 encodeObject:self->_modifiedDateComponents forKey:@"modifiedDateComponents"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
}

- (INNote)initWithCoder:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v4 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v6 = [v4 setWithArray:v5];
  v7 = [v3 decodeObjectOfClasses:v6 forKey:@"contents"];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"createdDateComponents"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"modifiedDateComponents"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"identifier"];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v3 decodeObjectOfClasses:v17 forKey:@"accountIdentifier"];

  v19 = [(INNote *)self initWithTitle:v22 contents:v7 groupName:v8 createdDateComponents:v9 modifiedDateComponents:v10 identifier:v14 accountIdentifier:v18];
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      title = self->_title;
      v13 = 0;
      if (title == v5->_title || [(INSpeakableString *)title isEqual:?])
      {
        contents = self->_contents;
        if (contents == v5->_contents || [(NSArray *)contents isEqual:?])
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
                  accountIdentifier = self->_accountIdentifier;
                  if (accountIdentifier == v5->_accountIdentifier || [(NSString *)accountIdentifier isEqual:?])
                  {
                    v13 = 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(INSpeakableString *)self->_title hash];
  v4 = [(NSArray *)self->_contents hash]^ v3;
  v5 = [(INSpeakableString *)self->_groupName hash];
  v6 = v4 ^ v5 ^ [(NSDateComponents *)self->_createdDateComponents hash];
  v7 = [(NSDateComponents *)self->_modifiedDateComponents hash];
  v8 = v7 ^ [(NSString *)self->_identifier hash];
  return v6 ^ v8 ^ [(NSString *)self->_accountIdentifier hash];
}

- (INNote)initWithTitle:(id)a3 contents:(id)a4 groupName:(id)a5 createdDateComponents:(id)a6 modifiedDateComponents:(id)a7 identifier:(id)a8 accountIdentifier:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v38.receiver = self;
  v38.super_class = INNote;
  v22 = [(INNote *)&v38 init];
  if (v22)
  {
    v23 = [v15 copy];
    title = v22->_title;
    v22->_title = v23;

    v25 = [v16 copy];
    contents = v22->_contents;
    v22->_contents = v25;

    v27 = [v17 copy];
    groupName = v22->_groupName;
    v22->_groupName = v27;

    v29 = [v18 copy];
    createdDateComponents = v22->_createdDateComponents;
    v22->_createdDateComponents = v29;

    v31 = [v19 copy];
    modifiedDateComponents = v22->_modifiedDateComponents;
    v22->_modifiedDateComponents = v31;

    v33 = [v20 copy];
    identifier = v22->_identifier;
    v22->_identifier = v33;

    v35 = [v21 copy];
    accountIdentifier = v22->_accountIdentifier;
    v22->_accountIdentifier = v35;
  }

  return v22;
}

- (INNote)initWithTitle:(INSpeakableString *)title contents:(NSArray *)contents groupName:(INSpeakableString *)groupName createdDateComponents:(NSDateComponents *)createdDateComponents modifiedDateComponents:(NSDateComponents *)modifiedDateComponents identifier:(NSString *)identifier
{
  v14 = title;
  v15 = contents;
  v16 = groupName;
  v17 = createdDateComponents;
  v18 = modifiedDateComponents;
  v19 = identifier;
  v34.receiver = self;
  v34.super_class = INNote;
  v20 = [(INNote *)&v34 init];
  if (v20)
  {
    v21 = [(INSpeakableString *)v14 copy];
    v22 = v20->_title;
    v20->_title = v21;

    v23 = [(NSArray *)v15 copy];
    v24 = v20->_contents;
    v20->_contents = v23;

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

- (INNote)init
{
  v3.receiver = self;
  v3.super_class = INNote;
  return [(INNote *)&v3 init];
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
    v13 = [v8 objectForKeyedSubscript:@"contents"];
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
    v25 = [v8 objectForKeyedSubscript:@"accountIdentifier"];
    v26 = [[a1 alloc] initWithTitle:v11 contents:v14 groupName:v17 createdDateComponents:v20 modifiedDateComponents:v23 identifier:v24 accountIdentifier:v25];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end