@interface SrvStatDuration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRat:(id)a3;
- (int)StringAsStat:(id)a3;
- (int)rat;
- (int)stat;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRat:(BOOL)a3;
- (void)setHasStat:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasRat:(BOOL)a3
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

- (int)StringAsRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AWD_SS_RAT_NO_SERVICE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AWD_SS_RAT_CDMA"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AWD_SS_RAT_GSM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AWD_SS_RAT_WCDMA"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AWD_SS_RAT_LTE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"AWD_SS_RAT_HDR"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"AWD_SS_RAT_LTE_V2"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AWD_SS_RAT_UMTS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AWD_SS_RAT_EHRPD"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"AWD_SS_RAT_MAX"])
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

- (void)setHasStat:(BOOL)a3
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

- (int)StringAsStat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AWD_SS_STAT_NO_SERVICE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AWD_SS_STAT_LIMITED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AWD_SS_STAT_CAMPED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AWD_SS_STAT_LIMITED_REGIONAL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AWD_SS_STAT_PWR_SAVE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"AWD_SS_STAT_CS_ONLY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"AWD_SS_STAT_PS_ONLY"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AWD_SS_STAT_CS_PS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AWD_SS_STAT_MAX"])
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
  v4 = [(SrvStatDuration *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    rat = self->_rat;
    PBDataWriterWriteInt32Field();
    v4 = v9;
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
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_rat;
    *(v4 + 20) |= 2u;
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

  v4[4] = self->_stat;
  *(v4 + 20) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    v4[2] = self->_durationMs;
    *(v4 + 20) |= 1u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_rat != *(v4 + 3))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0 || self->_stat != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 20) & 4) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_durationMs != *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 2) != 0)
  {
    self->_rat = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 20);
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

  else if ((*(v4 + 20) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_stat = *(v4 + 4);
  *&self->_has |= 4u;
  if (*(v4 + 20))
  {
LABEL_4:
    self->_durationMs = *(v4 + 2);
    *&self->_has |= 1u;
  }

LABEL_5:
}

@end