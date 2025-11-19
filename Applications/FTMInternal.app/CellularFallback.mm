@interface CellularFallback
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFbAccepted:(BOOL)a3;
- (void)setHasServiceType:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularFallback

- (void)setHasServiceType:(BOOL)a3
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

- (void)setHasFbAccepted:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularFallback;
  v3 = [(CellularFallback *)&v7 description];
  v4 = [(CellularFallback *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_serviceType];
  [v3 setObject:v8 forKey:@"service_type"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [NSNumber numberWithBool:self->_fbAccepted];
  [v3 setObject:v9 forKey:@"fb_accepted"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_6:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  serviceType = self->_serviceType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  fbAccepted = self->_fbAccepted;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 4) = self->_serviceType;
  *(v4 + 28) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(v4 + 24) = self->_fbAccepted;
  *(v4 + 28) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    *(v4 + 5) = self->_subsId;
    *(v4 + 28) |= 4u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_serviceType;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 24) = self->_fbAccepted;
  *(result + 28) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 5) = self->_subsId;
  *(result + 28) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_serviceType != *(v4 + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(v4 + 28) & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v5 = 0;
    goto LABEL_20;
  }

  if ((*(v4 + 28) & 8) == 0)
  {
    goto LABEL_19;
  }

  v7 = *(v4 + 24);
  if (self->_fbAccepted)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_19;
  }

LABEL_14:
  v5 = (*(v4 + 28) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_subsId != *(v4 + 5))
    {
      goto LABEL_19;
    }

    v5 = 1;
  }

LABEL_20:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_serviceType;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_fbAccepted;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_subsId;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_serviceType = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_fbAccepted = *(v4 + 24);
  *&self->_has |= 8u;
  if ((*(v4 + 28) & 4) != 0)
  {
LABEL_5:
    self->_subsId = *(v4 + 5);
    *&self->_has |= 4u;
  }

LABEL_6:
}

@end