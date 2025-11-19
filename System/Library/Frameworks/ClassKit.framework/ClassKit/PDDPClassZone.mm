@interface PDDPClassZone
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMoreDataAvailable:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPClassZone

- (void)setHasMoreDataAvailable:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPClassZone;
  v3 = [(PDDPClassZone *)&v7 description];
  v4 = [(PDDPClassZone *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  zoneName = self->_zoneName;
  if (zoneName)
  {
    [v3 setObject:zoneName forKey:@"zone_name"];
  }

  classId = self->_classId;
  if (classId)
  {
    [v4 setObject:classId forKey:@"class_id"];
  }

  changeToken = self->_changeToken;
  if (changeToken)
  {
    [v4 setObject:changeToken forKey:@"change_token"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_moreDataAvailable];
    [v4 setObject:v9 forKey:@"more_data_available"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [NSNumber numberWithBool:self->_isAccessDenied];
    [v4 setObject:v10 forKey:@"is_access_denied"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_changeToken)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    moreDataAvailable = self->_moreDataAvailable;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    isAccessDenied = self->_isAccessDenied;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_zoneName)
  {
    [v4 setZoneName:?];
    v4 = v6;
  }

  if (self->_classId)
  {
    [v6 setClassId:?];
    v4 = v6;
  }

  if (self->_changeToken)
  {
    [v6 setChangeToken:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[33] = self->_moreDataAvailable;
    v4[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[32] = self->_isAccessDenied;
    v4[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_zoneName copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_classId copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_changeToken copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 33) = self->_moreDataAvailable;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 32) = self->_isAccessDenied;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  zoneName = self->_zoneName;
  if (zoneName | *(v4 + 3))
  {
    if (![(NSString *)zoneName isEqual:?])
    {
      goto LABEL_16;
    }
  }

  classId = self->_classId;
  if (classId | *(v4 + 2))
  {
    if (![(NSString *)classId isEqual:?])
    {
      goto LABEL_16;
    }
  }

  changeToken = self->_changeToken;
  if (changeToken | *(v4 + 1))
  {
    if (![(NSData *)changeToken isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(v4 + 33);
  if (self->_moreDataAvailable)
  {
    if ((*(v4 + 33) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 33))
  {
    goto LABEL_16;
  }

LABEL_10:
  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if (*(v4 + 36))
    {
      if (self->_isAccessDenied)
      {
        if (*(v4 + 32))
        {
          goto LABEL_24;
        }
      }

      else if (!*(v4 + 32))
      {
LABEL_24:
        v8 = 1;
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

LABEL_17:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_zoneName hash];
  v4 = [(NSString *)self->_classId hash];
  v5 = [(NSData *)self->_changeToken hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_moreDataAvailable;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_isAccessDenied;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(PDDPClassZone *)self setZoneName:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(PDDPClassZone *)self setClassId:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(PDDPClassZone *)self setChangeToken:?];
    v4 = v6;
  }

  v5 = v4[36];
  if ((v5 & 2) != 0)
  {
    self->_moreDataAvailable = v4[33];
    *&self->_has |= 2u;
    v5 = v4[36];
  }

  if (v5)
  {
    self->_isAccessDenied = v4[32];
    *&self->_has |= 1u;
  }
}

@end