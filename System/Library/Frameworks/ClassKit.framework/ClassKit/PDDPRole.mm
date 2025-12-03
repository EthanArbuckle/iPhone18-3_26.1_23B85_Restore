@interface PDDPRole
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRoleType:(id)type;
- (int)roleType;
- (unint64_t)hash;
- (void)addPrivileges:(id)privileges;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPRole

- (int)roleType
{
  if (*&self->_has)
  {
    return self->_roleType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRoleType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_ROLE_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ADMINISTRATOR"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SITE_MANAGER"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"MANAGER"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"INSTRUCTOR"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"STAFF"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"STUDENT"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"CUSTOM"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addPrivileges:(id)privileges
{
  privilegesCopy = privileges;
  privileges = self->_privileges;
  v8 = privilegesCopy;
  if (!privileges)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_privileges;
    self->_privileges = v6;

    privilegesCopy = v8;
    privileges = self->_privileges;
  }

  [(NSMutableArray *)privileges addObject:privilegesCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPRole;
  v3 = [(PDDPRole *)&v7 description];
  dictionaryRepresentation = [(PDDPRole *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  roleId = self->_roleId;
  if (roleId)
  {
    [v3 setObject:roleId forKey:@"role_id"];
  }

  if (*&self->_has)
  {
    roleType = self->_roleType;
    if (roleType >= 8)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_roleType];
    }

    else
    {
      v7 = off_100205760[roleType];
    }

    [v4 setObject:v7 forKey:@"role_type"];
  }

  if ([(NSMutableArray *)self->_privileges count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_privileges, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_privileges;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"privileges"];
  }

  entityMeta = self->_entityMeta;
  if (entityMeta)
  {
    dictionaryRepresentation2 = [(PDDPEntityMeta *)entityMeta dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"entity_meta"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_roleId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    roleType = self->_roleType;
    PBDataWriterWriteInt32Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_privileges;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (self->_entityMeta)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_roleId)
  {
    [toCopy setRoleId:?];
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_roleType;
    *(toCopy + 36) |= 1u;
  }

  if ([(PDDPRole *)self privilegesCount])
  {
    [v9 clearPrivileges];
    privilegesCount = [(PDDPRole *)self privilegesCount];
    if (privilegesCount)
    {
      v6 = privilegesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPRole *)self privilegesAtIndex:i];
        [v9 addPrivileges:v8];
      }
    }
  }

  if (self->_entityMeta)
  {
    [v9 setEntityMeta:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_roleId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_roleType;
    *(v5 + 36) |= 1u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_privileges;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{zone, v17}];
        [v5 addPrivileges:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(PDDPEntityMeta *)self->_entityMeta copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  roleId = self->_roleId;
  if (roleId | *(equalCopy + 3))
  {
    if (![(NSString *)roleId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_roleType != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  privileges = self->_privileges;
  if (privileges | *(equalCopy + 2) && ![(NSMutableArray *)privileges isEqual:?])
  {
    goto LABEL_13;
  }

  entityMeta = self->_entityMeta;
  if (entityMeta | *(equalCopy + 1))
  {
    v9 = [(PDDPEntityMeta *)entityMeta isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_roleId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_roleType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSMutableArray *)self->_privileges hash];
  return v5 ^ v6 ^ [(PDDPEntityMeta *)self->_entityMeta hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(PDDPRole *)self setRoleId:?];
  }

  if (*(fromCopy + 36))
  {
    self->_roleType = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PDDPRole *)self addPrivileges:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  entityMeta = self->_entityMeta;
  v11 = *(fromCopy + 1);
  if (entityMeta)
  {
    if (v11)
    {
      [(PDDPEntityMeta *)entityMeta mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(PDDPRole *)self setEntityMeta:?];
  }
}

@end