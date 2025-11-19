@interface LiveLookupCallIdentity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsIdentityType:(id)a3;
- (int)identityType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIdentityType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasIdentityType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsIdentityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IDENTITY_CATEGORY_UNSPECIFIED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"IDENTITY_CATEGORY_PERSON"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"IDENTITY_CATEGORY_BUSINESS"])
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
  v4 = [(LiveLookupCallIdentity *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v7 = [(LiveLookupIcon *)icon dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"icon"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_icon)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    cacheExpiryMinutes = self->_cacheExpiryMinutes;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    identityType = self->_identityType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v6;
  }

  if (self->_icon)
  {
    [v6 setIcon:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = self->_cacheExpiryMinutes;
    *(v4 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_identityType;
    *(v4 + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(LiveLookupIcon *)self->_icon copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  name = self->_name;
  if (name | *(v4 + 4))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_15;
    }
  }

  icon = self->_icon;
  if (icon | *(v4 + 2))
  {
    if (![(LiveLookupIcon *)icon isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_cacheExpiryMinutes != *(v4 + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(v4 + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_identityType != *(v4 + 6))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 4))
  {
    [(LiveLookupCallIdentity *)self setName:?];
    v4 = v8;
  }

  icon = self->_icon;
  v6 = *(v4 + 2);
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

  v4 = v8;
LABEL_9:
  v7 = *(v4 + 40);
  if (v7)
  {
    self->_cacheExpiryMinutes = *(v4 + 2);
    *&self->_has |= 1u;
    v7 = *(v4 + 40);
  }

  if ((v7 & 2) != 0)
  {
    self->_identityType = *(v4 + 6);
    *&self->_has |= 2u;
  }

  _objc_release_x1();
}

@end