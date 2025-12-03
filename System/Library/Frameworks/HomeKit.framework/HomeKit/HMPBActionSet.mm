@interface HMPBActionSet
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActions:(id)actions;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMPBActionSet

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(HMPBActionSet *)self setName:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [(HMPBActionSet *)self addActions:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 1))
  {
    [(HMPBActionSet *)self setActionSetType:?];
  }

  if (*(fromCopy + 5))
  {
    [(HMPBActionSet *)self setUuid:?];
  }

  if (*(fromCopy + 3))
  {
    [(HMPBActionSet *)self setHomeUUID:?];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSMutableArray *)self->_actions hash]^ v3;
  v5 = [(NSString *)self->_actionSetType hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_uuid hash];
  return v6 ^ [(NSData *)self->_homeUUID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[4])) || -[NSString isEqual:](name, "isEqual:")) && ((actions = self->_actions, !(actions | equalCopy[2])) || -[NSMutableArray isEqual:](actions, "isEqual:")) && ((actionSetType = self->_actionSetType, !(actionSetType | equalCopy[1])) || -[NSString isEqual:](actionSetType, "isEqual:")) && ((uuid = self->_uuid, !(uuid | equalCopy[5])) || -[NSData isEqual:](uuid, "isEqual:")))
  {
    homeUUID = self->_homeUUID;
    if (homeUUID | equalCopy[3])
    {
      v10 = [(NSData *)homeUUID isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_actions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v22 + 1) + 8 * v12) copyWithZone:{zone, v22}];
        [v5 addActions:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_actionSetType copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(NSData *)self->_uuid copyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSData *)self->_homeUUID copyWithZone:zone];
  v19 = v5[3];
  v5[3] = v18;

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_name)
  {
    [toCopy setName:?];
  }

  if ([(HMPBActionSet *)self actionsCount])
  {
    [toCopy clearActions];
    actionsCount = [(HMPBActionSet *)self actionsCount];
    if (actionsCount)
    {
      v5 = actionsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMPBActionSet *)self actionsAtIndex:i];
        [toCopy addActions:v7];
      }
    }
  }

  if (self->_actionSetType)
  {
    [toCopy setActionSetType:?];
  }

  v8 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    v8 = toCopy;
  }

  if (self->_homeUUID)
  {
    [toCopy setHomeUUID:?];
    v8 = toCopy;
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_actions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_actionSetType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_homeUUID)
  {
    PBDataWriterWriteDataField();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  if ([(NSMutableArray *)self->_actions count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_actions, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_actions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"actions"];
  }

  actionSetType = self->_actionSetType;
  if (actionSetType)
  {
    [v4 setObject:actionSetType forKey:@"actionSetType"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v4 setObject:uuid forKey:@"uuid"];
  }

  homeUUID = self->_homeUUID;
  if (homeUUID)
  {
    [v4 setObject:homeUUID forKey:@"homeUUID"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBActionSet;
  v4 = [(HMPBActionSet *)&v8 description];
  dictionaryRepresentation = [(HMPBActionSet *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addActions:(id)actions
{
  actionsCopy = actions;
  actions = self->_actions;
  v8 = actionsCopy;
  if (!actions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_actions;
    self->_actions = v6;

    actionsCopy = v8;
    actions = self->_actions;
  }

  [(NSMutableArray *)actions addObject:actionsCopy];
}

@end