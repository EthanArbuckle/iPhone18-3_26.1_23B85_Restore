@interface SrvStatDuration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRat:(id)rat;
- (int)StringAsStat:(id)stat;
- (int)rat;
- (int)stat;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRat:(BOOL)rat;
- (void)setHasStat:(BOOL)stat;
- (void)writeTo:(id)to;
@end

@implementation SrvStatDuration

- (int)rat
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_rat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRat:(BOOL)rat
{
  if (rat)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsRat:(id)rat
{
  ratCopy = rat;
  if ([ratCopy isEqualToString:@"AWD_SS_RAT_NO_SERVICE"])
  {
    v4 = 0;
  }

  else if ([ratCopy isEqualToString:@"AWD_SS_RAT_CDMA"])
  {
    v4 = 1;
  }

  else if ([ratCopy isEqualToString:@"AWD_SS_RAT_GSM"])
  {
    v4 = 2;
  }

  else if ([ratCopy isEqualToString:@"AWD_SS_RAT_WCDMA"])
  {
    v4 = 3;
  }

  else if ([ratCopy isEqualToString:@"AWD_SS_RAT_LTE"])
  {
    v4 = 4;
  }

  else if ([ratCopy isEqualToString:@"AWD_SS_RAT_HDR"])
  {
    v4 = 5;
  }

  else if ([ratCopy isEqualToString:@"AWD_SS_RAT_LTE_V2"])
  {
    v4 = 6;
  }

  else if ([ratCopy isEqualToString:@"AWD_SS_RAT_UMTS"])
  {
    v4 = 7;
  }

  else if ([ratCopy isEqualToString:@"AWD_SS_RAT_EHRPD"])
  {
    v4 = 8;
  }

  else if ([ratCopy isEqualToString:@"AWD_SS_RAT_MAX"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)stat
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_stat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStat:(BOOL)stat
{
  if (stat)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsStat:(id)stat
{
  statCopy = stat;
  if ([statCopy isEqualToString:@"AWD_SS_STAT_NO_SERVICE"])
  {
    v4 = 0;
  }

  else if ([statCopy isEqualToString:@"AWD_SS_STAT_LIMITED"])
  {
    v4 = 1;
  }

  else if ([statCopy isEqualToString:@"AWD_SS_STAT_CAMPED"])
  {
    v4 = 2;
  }

  else if ([statCopy isEqualToString:@"AWD_SS_STAT_LIMITED_REGIONAL"])
  {
    v4 = 3;
  }

  else if ([statCopy isEqualToString:@"AWD_SS_STAT_PWR_SAVE"])
  {
    v4 = 4;
  }

  else if ([statCopy isEqualToString:@"AWD_SS_STAT_CS_ONLY"])
  {
    v4 = 5;
  }

  else if ([statCopy isEqualToString:@"AWD_SS_STAT_PS_ONLY"])
  {
    v4 = 6;
  }

  else if ([statCopy isEqualToString:@"AWD_SS_STAT_CS_PS"])
  {
    v4 = 7;
  }

  else if ([statCopy isEqualToString:@"AWD_SS_STAT_MAX"])
  {
    v4 = 8;
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
  v7.super_class = SrvStatDuration;
  v3 = [(SrvStatDuration *)&v7 description];
  dictionaryRepresentation = [(SrvStatDuration *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    rat = self->_rat;
    if (rat >= 0xA)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_rat];
    }

    else
    {
      v8 = *(&off_100317BA0 + rat);
    }

    [v3 setObject:v8 forKey:@"rat"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  stat = self->_stat;
  if (stat >= 9)
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_stat];
  }

  else
  {
    v10 = *(&off_100317BF0 + stat);
  }

  [v3 setObject:v10 forKey:@"stat"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [NSNumber numberWithUnsignedInt:self->_durationMs];
  [v3 setObject:v5 forKey:@"duration_ms"];

LABEL_5:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    rat = self->_rat;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  stat = self->_stat;
  PBDataWriterWriteInt32Field();
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_4:
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_rat;
    *(toCopy + 20) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[4] = self->_stat;
  *(toCopy + 20) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    toCopy[2] = self->_durationMs;
    *(toCopy + 20) |= 1u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_rat;
    *(result + 20) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_stat;
  *(result + 20) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 2) = self->_durationMs;
  *(result + 20) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_rat != *(equalCopy + 3))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 20) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 20) & 4) == 0 || self->_stat != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 20) & 4) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_durationMs != *(equalCopy + 2))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_rat;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_stat;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_durationMs;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if ((v5 & 2) != 0)
  {
    self->_rat = *(fromCopy + 3);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 20);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 20) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_stat = *(fromCopy + 4);
  *&self->_has |= 4u;
  if (*(fromCopy + 20))
  {
LABEL_4:
    self->_durationMs = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

LABEL_5:
}

@end