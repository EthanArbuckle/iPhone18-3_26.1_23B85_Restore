@interface PDDPRoleLocation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRoleType:(id)a3;
- (int)roleType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsRoleType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_ROLE_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ADMINISTRATOR"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SITE_MANAGER"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MANAGER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"INSTRUCTOR"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"STAFF"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"STUDENT"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CUSTOM"])
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
  v4 = [(PDDPRoleLocation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_roleId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_locationId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    roleType = self->_roleType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_roleId)
  {
    [v4 setRoleId:?];
    v4 = v5;
  }

  if (self->_locationId)
  {
    [v5 setLocationId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_roleType;
    *(v4 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_roleId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_locationId copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  if (*&self->_has)
  {
    *(v5 + 6) = self->_roleType;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  roleId = self->_roleId;
  if (roleId | *(v4 + 2))
  {
    if (![(NSString *)roleId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  locationId = self->_locationId;
  if (locationId | *(v4 + 1))
  {
    if (![(NSString *)locationId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_roleType == *(v4 + 6))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(PDDPRoleLocation *)self setRoleId:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(PDDPRoleLocation *)self setLocationId:?];
    v4 = v5;
  }

  if (v4[7])
  {
    self->_roleType = v4[6];
    *&self->_has |= 1u;
  }
}

@end