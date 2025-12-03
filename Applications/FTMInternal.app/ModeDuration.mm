@interface ModeDuration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMode:(id)mode;
- (int)mode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation ModeDuration

- (int)mode
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_mode;
  }

  else
  {
    return -1;
  }
}

- (void)setHasMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_NONE"])
  {
    v4 = -1;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_PWROFF"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_FTM"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_OFFLINE"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_OFFLINE_AMPS"])
  {
    v4 = 3;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_OFFLINE_CDMA"])
  {
    v4 = 4;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_ONLINE"])
  {
    v4 = 5;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_LPM"])
  {
    v4 = 6;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_RESET"])
  {
    v4 = 7;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_NET_TEST_GW"])
  {
    v4 = 8;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_OFFLINE_IF_NOT_FTM"])
  {
    v4 = 9;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_PSEUDO_ONLINE"])
  {
    v4 = 10;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_RESET_MODEM"])
  {
    v4 = 11;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ModeDuration;
  v3 = [(ModeDuration *)&v7 description];
  dictionaryRepresentation = [(ModeDuration *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = self->_mode + 1;
    if (v5 >= 0xD)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_mode];
    }

    else
    {
      v6 = off_100318EF0[v5];
    }

    [v3 setObject:v6 forKey:@"mode"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_durationMs];
    [v3 setObject:v7 forKey:@"duration_ms"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    mode = self->_mode;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_mode;
    *(toCopy + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[2] = self->_durationMs;
    *(toCopy + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_mode;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_durationMs;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0 || self->_mode != *(equalCopy + 3))
    {
      goto LABEL_11;
    }
  }

  else if ((*(equalCopy + 16) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_durationMs != *(equalCopy + 2))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_mode;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_durationMs;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if ((v5 & 2) != 0)
  {
    self->_mode = *(fromCopy + 3);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 16);
  }

  if (v5)
  {
    self->_durationMs = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end