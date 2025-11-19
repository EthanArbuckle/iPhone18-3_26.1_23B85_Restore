@interface ModeDuration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMode:(id)a3;
- (int)mode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMode:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasMode:(BOOL)a3
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

- (int)StringAsMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_OPRT_MODE_NONE"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"SYS_OPRT_MODE_PWROFF"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_OPRT_MODE_FTM"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_OPRT_MODE_OFFLINE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_OPRT_MODE_OFFLINE_AMPS"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_OPRT_MODE_OFFLINE_CDMA"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_OPRT_MODE_ONLINE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_OPRT_MODE_LPM"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SYS_OPRT_MODE_RESET"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_OPRT_MODE_NET_TEST_GW"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SYS_OPRT_MODE_OFFLINE_IF_NOT_FTM"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_OPRT_MODE_PSEUDO_ONLINE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SYS_OPRT_MODE_RESET_MODEM"])
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
  v4 = [(ModeDuration *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    mode = self->_mode;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_mode;
    *(v4 + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[2] = self->_durationMs;
    *(v4 + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0 || self->_mode != *(v4 + 3))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 16) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_durationMs != *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if ((v5 & 2) != 0)
  {
    self->_mode = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 16);
  }

  if (v5)
  {
    self->_durationMs = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end