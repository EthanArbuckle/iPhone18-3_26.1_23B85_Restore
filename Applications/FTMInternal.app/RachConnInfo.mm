@interface RachConnInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFailRachAttempts:(BOOL)a3;
- (void)setHasTotalMoRrcConn:(BOOL)a3;
- (void)setHasTotalMtRrcConn:(BOOL)a3;
- (void)setHasTotalRachAttempts:(BOOL)a3;
- (void)setHasTotalSigRrcConn:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RachConnInfo

- (void)setHasFailRachAttempts:(BOOL)a3
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

- (void)setHasTotalRachAttempts:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTotalMoRrcConn:(BOOL)a3
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

- (void)setHasTotalMtRrcConn:(BOOL)a3
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

- (void)setHasTotalSigRrcConn:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RachConnInfo;
  v3 = [(RachConnInfo *)&v7 description];
  v4 = [(RachConnInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_failRachAttempts];
    [v3 setObject:v7 forKey:@"fail_rach_attempts"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_totalRachAttempts];
  [v3 setObject:v8 forKey:@"total_rach_attempts"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = [NSNumber numberWithUnsignedInt:self->_totalMoRrcConn];
  [v3 setObject:v9 forKey:@"total_mo_rrc_conn"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = [NSNumber numberWithUnsignedInt:self->_totalMtRrcConn];
  [v3 setObject:v10 forKey:@"total_mt_rrc_conn"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = [NSNumber numberWithUnsignedInt:self->_totalSigRrcConn];
  [v3 setObject:v11 forKey:@"total_sig_rrc_conn"];

  if (*&self->_has)
  {
LABEL_7:
    v5 = [NSNumber numberWithUnsignedInt:self->_avgInterRrcConnDuration];
    [v3 setObject:v5 forKey:@"avg_inter_rrc_conn_duration"];
  }

LABEL_8:

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    failRachAttempts = self->_failRachAttempts;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  totalRachAttempts = self->_totalRachAttempts;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  totalMoRrcConn = self->_totalMoRrcConn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  totalMtRrcConn = self->_totalMtRrcConn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  totalSigRrcConn = self->_totalSigRrcConn;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_7:
    avgInterRrcConnDuration = self->_avgInterRrcConnDuration;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_failRachAttempts;
    *(v4 + 32) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v4[6] = self->_totalRachAttempts;
  *(v4 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4[4] = self->_totalMoRrcConn;
  *(v4 + 32) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[5] = self->_totalMtRrcConn;
  *(v4 + 32) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v4[7] = self->_totalSigRrcConn;
  *(v4 + 32) |= 0x20u;
  if (*&self->_has)
  {
LABEL_7:
    v4[2] = self->_avgInterRrcConnDuration;
    *(v4 + 32) |= 1u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_failRachAttempts;
    *(result + 32) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_totalRachAttempts;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 4) = self->_totalMoRrcConn;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 5) = self->_totalMtRrcConn;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 7) = self->_totalSigRrcConn;
  *(result + 32) |= 0x20u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 2) = self->_avgInterRrcConnDuration;
  *(result + 32) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_failRachAttempts != *(v4 + 3))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 32) & 0x10) == 0 || self->_totalRachAttempts != *(v4 + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_totalMoRrcConn != *(v4 + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0 || self->_totalMtRrcConn != *(v4 + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 32) & 0x20) == 0 || self->_totalSigRrcConn != *(v4 + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 0x20) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_avgInterRrcConnDuration != *(v4 + 2))
    {
      goto LABEL_31;
    }

    v5 = 1;
  }

LABEL_32:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_failRachAttempts;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_totalRachAttempts;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_totalMoRrcConn;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_totalMtRrcConn;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_totalSigRrcConn;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_avgInterRrcConnDuration;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_failRachAttempts = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_totalRachAttempts = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_totalMoRrcConn = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_totalMtRrcConn = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_totalSigRrcConn = *(v4 + 7);
  *&self->_has |= 0x20u;
  if (*(v4 + 32))
  {
LABEL_7:
    self->_avgInterRrcConnDuration = *(v4 + 2);
    *&self->_has |= 1u;
  }

LABEL_8:
}

@end