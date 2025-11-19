@interface AWDCXCallDirectoryChanged
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsEnabled:(BOOL)a3;
- (void)setHasTotalBlockedHandles:(BOOL)a3;
- (void)setHasTotalIdentifiedHandles:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCXCallDirectoryChanged

- (void)setHasTotalBlockedHandles:(BOOL)a3
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

- (void)setHasTotalIdentifiedHandles:(BOOL)a3
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

- (void)setHasIsEnabled:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCXCallDirectoryChanged;
  v3 = [(AWDCXCallDirectoryChanged *)&v7 description];
  v4 = [(AWDCXCallDirectoryChanged *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v8 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [NSNumber numberWithUnsignedInt:self->_totalBlockedHandles];
  [v3 setObject:v9 forKey:@"totalBlockedHandles"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v10 = [NSNumber numberWithUnsignedInt:self->_totalIdentifiedHandles];
  [v3 setObject:v10 forKey:@"totalIdentifiedHandles"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [NSNumber numberWithBool:self->_isEnabled];
    [v3 setObject:v5 forKey:@"isEnabled"];
  }

LABEL_6:
  providerBundleId = self->_providerBundleId;
  if (providerBundleId)
  {
    [v3 setObject:providerBundleId forKey:@"providerBundleId"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v10 = v4;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  totalBlockedHandles = self->_totalBlockedHandles;
  PBDataWriterWriteUint32Field();
  v4 = v10;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  totalIdentifiedHandles = self->_totalIdentifiedHandles;
  PBDataWriterWriteUint32Field();
  v4 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    isEnabled = self->_isEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

LABEL_6:
  if (self->_providerBundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 6) = self->_totalBlockedHandles;
  *(v4 + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  *(v4 + 7) = self->_totalIdentifiedHandles;
  *(v4 + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(v4 + 32) = self->_isEnabled;
    *(v4 + 36) |= 8u;
  }

LABEL_6:
  if (self->_providerBundleId)
  {
    v6 = v4;
    [v4 setProviderBundleId:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 7) = self->_totalIdentifiedHandles;
      *(v5 + 36) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 6) = self->_totalBlockedHandles;
  *(v5 + 36) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 32) = self->_isEnabled;
    *(v5 + 36) |= 8u;
  }

LABEL_6:
  v8 = [(NSString *)self->_providerBundleId copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_totalBlockedHandles != *(v4 + 6))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_totalIdentifiedHandles != *(v4 + 7))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(v4 + 36) & 8) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v7 = 0;
    goto LABEL_23;
  }

  if ((*(v4 + 36) & 8) == 0)
  {
    goto LABEL_22;
  }

  v9 = *(v4 + 32);
  if (self->_isEnabled)
  {
    if ((*(v4 + 32) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_22;
  }

LABEL_19:
  providerBundleId = self->_providerBundleId;
  if (providerBundleId | *(v4 + 2))
  {
    v7 = [(NSString *)providerBundleId isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_23:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_totalBlockedHandles;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v7 ^ v6 ^ v8 ^ v9 ^ [(NSString *)self->_providerBundleId hash:v3];
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_totalIdentifiedHandles;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_isEnabled;
  return v7 ^ v6 ^ v8 ^ v9 ^ [(NSString *)self->_providerBundleId hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_totalBlockedHandles = *(v4 + 6);
  *&self->_has |= 2u;
  v5 = *(v4 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  self->_totalIdentifiedHandles = *(v4 + 7);
  *&self->_has |= 4u;
  if ((*(v4 + 36) & 8) != 0)
  {
LABEL_5:
    self->_isEnabled = *(v4 + 32);
    *&self->_has |= 8u;
  }

LABEL_6:
  if (*(v4 + 2))
  {
    v6 = v4;
    [(AWDCXCallDirectoryChanged *)self setProviderBundleId:?];
    v4 = v6;
  }
}

@end