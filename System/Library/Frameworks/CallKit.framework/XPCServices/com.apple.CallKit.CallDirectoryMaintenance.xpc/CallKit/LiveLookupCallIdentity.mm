@interface LiveLookupCallIdentity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsIdentityType:(id)type;
- (int)identityType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIdentityType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation LiveLookupCallIdentity

- (int)identityType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_identityType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIdentityType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsIdentityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"IDENTITY_CATEGORY_UNSPECIFIED"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"IDENTITY_CATEGORY_PERSON"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"IDENTITY_CATEGORY_BUSINESS"])
  {
    v4 = 2;
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
  v7.super_class = LiveLookupCallIdentity;
  v3 = [(LiveLookupCallIdentity *)&v7 description];
  dictionaryRepresentation = [(LiveLookupCallIdentity *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  icon = self->_icon;
  if (icon)
  {
    dictionaryRepresentation = [(LiveLookupIcon *)icon dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"icon"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_cacheExpiryMinutes];
    [v4 setObject:v9 forKey:@"cache_expiry_minutes"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    identityType = self->_identityType;
    if (identityType >= 3)
    {
      v11 = [NSString stringWithFormat:@"(unknown: %i)", self->_identityType];
    }

    else
    {
      v11 = off_100034A48[identityType];
    }

    [v4 setObject:v11 forKey:@"identityType"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_icon)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    cacheExpiryMinutes = self->_cacheExpiryMinutes;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    identityType = self->_identityType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v6;
  }

  if (self->_icon)
  {
    [v6 setIcon:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_cacheExpiryMinutes;
    *(toCopy + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 6) = self->_identityType;
    *(toCopy + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(LiveLookupIcon *)self->_icon copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 2) = self->_cacheExpiryMinutes;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 6) = self->_identityType;
    *(v5 + 40) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  name = self->_name;
  if (name | *(equalCopy + 4))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_15;
    }
  }

  icon = self->_icon;
  if (icon | *(equalCopy + 2))
  {
    if (![(LiveLookupIcon *)icon isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_cacheExpiryMinutes != *(equalCopy + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_identityType != *(equalCopy + 6))
    {
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(LiveLookupIcon *)self->_icon hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_cacheExpiryMinutes;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_identityType;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(LiveLookupCallIdentity *)self setName:?];
    fromCopy = v8;
  }

  icon = self->_icon;
  v6 = *(fromCopy + 2);
  if (icon)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(LiveLookupIcon *)icon mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(LiveLookupCallIdentity *)self setIcon:?];
  }

  fromCopy = v8;
LABEL_9:
  v7 = *(fromCopy + 40);
  if (v7)
  {
    self->_cacheExpiryMinutes = *(fromCopy + 2);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 40);
  }

  if ((v7 & 2) != 0)
  {
    self->_identityType = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  _objc_release_x1();
}

@end