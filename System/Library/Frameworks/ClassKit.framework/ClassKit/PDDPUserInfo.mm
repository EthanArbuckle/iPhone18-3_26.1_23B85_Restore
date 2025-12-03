@interface PDDPUserInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addRoles:(id)roles;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPUserInfo

- (void)addRoles:(id)roles
{
  rolesCopy = roles;
  roles = self->_roles;
  v8 = rolesCopy;
  if (!roles)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_roles;
    self->_roles = v6;

    rolesCopy = v8;
    roles = self->_roles;
  }

  [(NSMutableArray *)roles addObject:rolesCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPUserInfo;
  v3 = [(PDDPUserInfo *)&v7 description];
  dictionaryRepresentation = [(PDDPUserInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  person = self->_person;
  if (person)
  {
    dictionaryRepresentation = [(PDDPPerson *)person dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"person"];
  }

  roles = self->_roles;
  if (roles)
  {
    [v3 setObject:roles forKey:@"roles"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_person)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_roles;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_person)
  {
    [toCopy setPerson:?];
  }

  if ([(PDDPUserInfo *)self rolesCount])
  {
    [toCopy clearRoles];
    rolesCount = [(PDDPUserInfo *)self rolesCount];
    if (rolesCount)
    {
      v5 = rolesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPUserInfo *)self rolesAtIndex:i];
        [toCopy addRoles:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDDPPerson *)self->_person copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_roles;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addRoles:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((person = self->_person, !(person | equalCopy[1])) || -[PDDPPerson isEqual:](person, "isEqual:")))
  {
    roles = self->_roles;
    if (roles | equalCopy[2])
    {
      v7 = [(NSMutableArray *)roles isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  person = self->_person;
  v6 = *(fromCopy + 1);
  if (person)
  {
    if (v6)
    {
      [(PDDPPerson *)person mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPUserInfo *)self setPerson:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 2);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PDDPUserInfo *)self addRoles:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end