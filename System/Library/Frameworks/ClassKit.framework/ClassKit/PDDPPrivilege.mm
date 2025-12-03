@interface PDDPPrivilege
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addLocationIds:(id)ids;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPPrivilege

- (void)addLocationIds:(id)ids
{
  idsCopy = ids;
  locationIds = self->_locationIds;
  v8 = idsCopy;
  if (!locationIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_locationIds;
    self->_locationIds = v6;

    idsCopy = v8;
    locationIds = self->_locationIds;
  }

  [(NSMutableArray *)locationIds addObject:idsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPPrivilege;
  v3 = [(PDDPPrivilege *)&v7 description];
  dictionaryRepresentation = [(PDDPPrivilege *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  privilegeName = self->_privilegeName;
  if (privilegeName)
  {
    [v3 setObject:privilegeName forKey:@"privilege_name"];
  }

  locationIds = self->_locationIds;
  if (locationIds)
  {
    [v4 setObject:locationIds forKey:@"location_ids"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_privilegeName)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_locationIds;
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
  if (self->_privilegeName)
  {
    [toCopy setPrivilegeName:?];
  }

  if ([(PDDPPrivilege *)self locationIdsCount])
  {
    [toCopy clearLocationIds];
    locationIdsCount = [(PDDPPrivilege *)self locationIdsCount];
    if (locationIdsCount)
    {
      v5 = locationIdsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPPrivilege *)self locationIdsAtIndex:i];
        [toCopy addLocationIds:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_privilegeName copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_locationIds;
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
        [v5 addLocationIds:v13];

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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((privilegeName = self->_privilegeName, !(privilegeName | equalCopy[2])) || -[NSString isEqual:](privilegeName, "isEqual:")))
  {
    locationIds = self->_locationIds;
    if (locationIds | equalCopy[1])
    {
      v7 = [(NSMutableArray *)locationIds isEqual:?];
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
  if (*(fromCopy + 2))
  {
    [(PDDPPrivilege *)self setPrivilegeName:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PDDPPrivilege *)self addLocationIds:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end