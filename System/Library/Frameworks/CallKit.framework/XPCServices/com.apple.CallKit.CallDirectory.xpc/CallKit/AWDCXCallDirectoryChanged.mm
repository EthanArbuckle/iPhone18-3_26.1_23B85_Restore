@interface AWDCXCallDirectoryChanged
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsEnabled:(BOOL)enabled;
- (void)setHasTotalBlockedHandles:(BOOL)handles;
- (void)setHasTotalIdentifiedHandles:(BOOL)handles;
- (void)writeTo:(id)to;
@end

@implementation AWDCXCallDirectoryChanged

- (void)setHasTotalBlockedHandles:(BOOL)handles
{
  if (handles)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTotalIdentifiedHandles:(BOOL)handles
{
  if (handles)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsEnabled:(BOOL)enabled
{
  if (enabled)
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
  dictionaryRepresentation = [(AWDCXCallDirectoryChanged *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v10 = toCopy;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v10;
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
  toCopy = v10;
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
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    isEnabled = self->_isEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

LABEL_6:
  if (self->_providerBundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 36) |= 1u;
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

  *(toCopy + 6) = self->_totalBlockedHandles;
  *(toCopy + 36) |= 2u;
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
  *(toCopy + 7) = self->_totalIdentifiedHandles;
  *(toCopy + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(toCopy + 32) = self->_isEnabled;
    *(toCopy + 36) |= 8u;
  }

LABEL_6:
  if (self->_providerBundleId)
  {
    v6 = toCopy;
    [toCopy setProviderBundleId:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(NSString *)self->_providerBundleId copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_totalBlockedHandles != *(equalCopy + 6))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_totalIdentifiedHandles != *(equalCopy + 7))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 36) & 8) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v7 = 0;
    goto LABEL_23;
  }

  if ((*(equalCopy + 36) & 8) == 0)
  {
    goto LABEL_22;
  }

  v9 = *(equalCopy + 32);
  if (self->_isEnabled)
  {
    if ((*(equalCopy + 32) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_22;
  }

LABEL_19:
  providerBundleId = self->_providerBundleId;
  if (providerBundleId | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
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

  else if ((*(fromCopy + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_totalBlockedHandles = *(fromCopy + 6);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 36);
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
  self->_totalIdentifiedHandles = *(fromCopy + 7);
  *&self->_has |= 4u;
  if ((*(fromCopy + 36) & 8) != 0)
  {
LABEL_5:
    self->_isEnabled = *(fromCopy + 32);
    *&self->_has |= 8u;
  }

LABEL_6:
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(AWDCXCallDirectoryChanged *)self setProviderBundleId:?];
    fromCopy = v6;
  }
}

@end