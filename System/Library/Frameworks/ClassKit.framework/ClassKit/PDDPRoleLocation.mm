@interface PDDPRoleLocation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRoleType:(id)type;
- (int)roleType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPRoleLocation

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

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPRoleLocation;
  v3 = [(PDDPRoleLocation *)&v7 description];
  dictionaryRepresentation = [(PDDPRoleLocation *)self dictionaryRepresentation];
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

  locationId = self->_locationId;
  if (locationId)
  {
    [v4 setObject:locationId forKey:@"location_id"];
  }

  if (*&self->_has)
  {
    roleType = self->_roleType;
    if (roleType >= 8)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_roleType];
    }

    else
    {
      v8 = *(&off_100203F68 + roleType);
    }

    [v4 setObject:v8 forKey:@"role_type"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_roleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_locationId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    roleType = self->_roleType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_roleId)
  {
    [toCopy setRoleId:?];
    toCopy = v5;
  }

  if (self->_locationId)
  {
    [v5 setLocationId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_roleType;
    *(toCopy + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_roleId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_locationId copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  if (*&self->_has)
  {
    *(v5 + 6) = self->_roleType;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  roleId = self->_roleId;
  if (roleId | *(equalCopy + 2))
  {
    if (![(NSString *)roleId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  locationId = self->_locationId;
  if (locationId | *(equalCopy + 1))
  {
    if (![(NSString *)locationId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_roleType == *(equalCopy + 6))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_roleId hash];
  v4 = [(NSString *)self->_locationId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_roleType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PDDPRoleLocation *)self setRoleId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(PDDPRoleLocation *)self setLocationId:?];
    fromCopy = v5;
  }

  if (fromCopy[7])
  {
    self->_roleType = fromCopy[6];
    *&self->_has |= 1u;
  }
}

@end