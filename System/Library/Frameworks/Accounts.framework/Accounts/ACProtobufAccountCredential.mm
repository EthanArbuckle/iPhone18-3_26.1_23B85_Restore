@interface ACProtobufAccountCredential
- (BOOL)isEqual:(id)equal;
- (NSDictionary)credentialItemsDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCredentialItems:(id)items;
- (void)addDirtyProperties:(id)properties;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setCredentialItemsDictionary:(id)dictionary;
- (void)writeTo:(id)to;
@end

@implementation ACProtobufAccountCredential

- (void)setCredentialItemsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(ACProtobufAccountCredential *)self clearCredentialItems];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__ACProtobufAccountCredential_Helpers__setCredentialItemsDictionary___block_invoke;
  v5[3] = &unk_1E7976BE8;
  v5[4] = self;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v5];
}

void __69__ACProtobufAccountCredential_Helpers__setCredentialItemsDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[ACProtobufKeyValuePair alloc] initWithValue:v5 forKey:v6];

  [*(a1 + 32) addCredentialItems:v7];
}

- (NSDictionary)credentialItemsDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[ACProtobufAccountCredential credentialItemsCount](self, "credentialItemsCount")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  credentialItems = [(ACProtobufAccountCredential *)self credentialItems];
  v5 = [credentialItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(credentialItems);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        value = [v9 value];
        v11 = [v9 key];
        [v3 setObject:value forKeyedSubscript:v11];
      }

      v6 = [credentialItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)addCredentialItems:(id)items
{
  itemsCopy = items;
  credentialItems = self->_credentialItems;
  v8 = itemsCopy;
  if (!credentialItems)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_credentialItems;
    self->_credentialItems = v6;

    itemsCopy = v8;
    credentialItems = self->_credentialItems;
  }

  [(NSMutableArray *)credentialItems addObject:itemsCopy];
}

- (void)addDirtyProperties:(id)properties
{
  propertiesCopy = properties;
  dirtyProperties = self->_dirtyProperties;
  v8 = propertiesCopy;
  if (!dirtyProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dirtyProperties;
    self->_dirtyProperties = v6;

    propertiesCopy = v8;
    dirtyProperties = self->_dirtyProperties;
  }

  [(NSMutableArray *)dirtyProperties addObject:propertiesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufAccountCredential;
  v4 = [(ACProtobufAccountCredential *)&v8 description];
  dictionaryRepresentation = [(ACProtobufAccountCredential *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_credentialItems count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_credentialItems, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_credentialItems;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"credentialItems"];
  }

  credentialType = self->_credentialType;
  if (credentialType)
  {
    [dictionary setObject:credentialType forKey:@"credentialType"];
  }

  dirtyProperties = self->_dirtyProperties;
  if (dirtyProperties)
  {
    [dictionary setObject:dirtyProperties forKey:@"dirtyProperties"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{self->_requiresTouchID, v16}];
  [dictionary setObject:v13 forKey:@"requiresTouchID"];

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_credentialItems;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  credentialType = self->_credentialType;
  PBDataWriterWriteStringField();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_dirtyProperties;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  requiresTouchID = self->_requiresTouchID;
  PBDataWriterWriteBOOLField();

  v19 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(ACProtobufAccountCredential *)self credentialItemsCount])
  {
    [toCopy clearCredentialItems];
    credentialItemsCount = [(ACProtobufAccountCredential *)self credentialItemsCount];
    if (credentialItemsCount)
    {
      v5 = credentialItemsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ACProtobufAccountCredential *)self credentialItemsAtIndex:i];
        [toCopy addCredentialItems:v7];
      }
    }
  }

  [toCopy setCredentialType:self->_credentialType];
  if ([(ACProtobufAccountCredential *)self dirtyPropertiesCount])
  {
    [toCopy clearDirtyProperties];
    dirtyPropertiesCount = [(ACProtobufAccountCredential *)self dirtyPropertiesCount];
    if (dirtyPropertiesCount)
    {
      v9 = dirtyPropertiesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ACProtobufAccountCredential *)self dirtyPropertiesAtIndex:j];
        [toCopy addDirtyProperties:v11];
      }
    }
  }

  toCopy[32] = self->_requiresTouchID;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_credentialItems;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v26 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addCredentialItems:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_credentialType copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_dirtyProperties;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) copyWithZone:{zone, v22}];
        [v5 addDirtyProperties:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  *(v5 + 32) = self->_requiresTouchID;
  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = [equalCopy isMemberOfClass:objc_opt_class()] && ((credentialItems = self->_credentialItems, !(credentialItems | *(equalCopy + 1))) || -[NSMutableArray isEqual:](credentialItems, "isEqual:")) && ((credentialType = self->_credentialType, !(credentialType | *(equalCopy + 2))) || -[NSString isEqual:](credentialType, "isEqual:")) && ((dirtyProperties = self->_dirtyProperties, !(dirtyProperties | *(equalCopy + 3))) || -[NSMutableArray isEqual:](dirtyProperties, "isEqual:")) && self->_requiresTouchID == equalCopy[32];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_credentialItems hash];
  v4 = [(NSString *)self->_credentialType hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_dirtyProperties hash]^ (2654435761 * self->_requiresTouchID);
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ACProtobufAccountCredential *)self addCredentialItems:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 2))
  {
    [(ACProtobufAccountCredential *)self setCredentialType:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(fromCopy + 3);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ACProtobufAccountCredential *)self addDirtyProperties:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  self->_requiresTouchID = *(fromCopy + 32);
  v15 = *MEMORY[0x1E69E9840];
}

@end