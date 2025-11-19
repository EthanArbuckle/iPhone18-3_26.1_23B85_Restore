@interface ATXAnchorModelPBLaunchHistoryMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLaunchesInLast14Days:(BOOL)a3;
- (void)setHasLaunchesInLast24Hours:(BOOL)a3;
- (void)setHasLaunchesInLast28Days:(BOOL)a3;
- (void)setHasLaunchesInLast2Hours:(BOOL)a3;
- (void)setHasLaunchesInLast48Hours:(BOOL)a3;
- (void)setHasLaunchesInLast7Days:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXAnchorModelPBLaunchHistoryMetadata

- (void)setHasLaunchesInLast2Hours:(BOOL)a3
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

- (void)setHasLaunchesInLast7Days:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasLaunchesInLast14Days:(BOOL)a3
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

- (void)setHasLaunchesInLast28Days:(BOOL)a3
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

- (void)setHasLaunchesInLast24Hours:(BOOL)a3
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

- (void)setHasLaunchesInLast48Hours:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXAnchorModelPBLaunchHistoryMetadata;
  v4 = [(ATXAnchorModelPBLaunchHistoryMetadata *)&v8 description];
  v5 = [(ATXAnchorModelPBLaunchHistoryMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_launchesInLast2Hours];
    [v3 setObject:v7 forKey:@"launchesInLast2Hours"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_launchesInLast7Days];
  [v3 setObject:v8 forKey:@"launchesInLast7Days"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_launchesInLast14Days];
  [v3 setObject:v9 forKey:@"launchesInLast14Days"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_launchesInLast28Days];
  [v3 setObject:v10 forKey:@"launchesInLast28Days"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_launchesInLast12Hours];
  [v3 setObject:v11 forKey:@"launchesInLast12Hours"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_launchesInLast24Hours];
  [v3 setObject:v12 forKey:@"launchesInLast24Hours"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_launchesInLast48Hours];
    [v3 setObject:v5 forKey:@"launchesInLast48Hours"];
  }

LABEL_9:

  return v3;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    launchesInLast2Hours = self->_launchesInLast2Hours;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  launchesInLast7Days = self->_launchesInLast7Days;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  launchesInLast14Days = self->_launchesInLast14Days;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  launchesInLast28Days = self->_launchesInLast28Days;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  launchesInLast12Hours = self->_launchesInLast12Hours;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  launchesInLast24Hours = self->_launchesInLast24Hours;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    launchesInLast48Hours = self->_launchesInLast48Hours;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[6] = self->_launchesInLast2Hours;
    *(v4 + 36) |= 0x10u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v4[8] = self->_launchesInLast7Days;
  *(v4 + 36) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[3] = self->_launchesInLast14Days;
  *(v4 + 36) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4[5] = self->_launchesInLast28Days;
  *(v4 + 36) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4[2] = self->_launchesInLast12Hours;
  *(v4 + 36) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v4[4] = self->_launchesInLast24Hours;
  *(v4 + 36) |= 4u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    v4[7] = self->_launchesInLast48Hours;
    *(v4 + 36) |= 0x20u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 6) = self->_launchesInLast2Hours;
    *(result + 36) |= 0x10u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_launchesInLast7Days;
  *(result + 36) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 3) = self->_launchesInLast14Days;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 5) = self->_launchesInLast28Days;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 2) = self->_launchesInLast12Hours;
  *(result + 36) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 4) = self->_launchesInLast24Hours;
  *(result + 36) |= 4u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 7) = self->_launchesInLast48Hours;
  *(result + 36) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0 || self->_launchesInLast2Hours != *(v4 + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 36) & 0x40) == 0 || self->_launchesInLast7Days != *(v4 + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 0x40) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_launchesInLast14Days != *(v4 + 3))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_launchesInLast28Days != *(v4 + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_launchesInLast12Hours != *(v4 + 2))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_launchesInLast24Hours != *(v4 + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_36;
  }

  v5 = (*(v4 + 36) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 36) & 0x20) == 0 || self->_launchesInLast48Hours != *(v4 + 7))
    {
      goto LABEL_36;
    }

    v5 = 1;
  }

LABEL_37:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v2 = 2654435761 * self->_launchesInLast2Hours;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_launchesInLast7Days;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_launchesInLast14Days;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_launchesInLast28Days;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if (*&self->_has)
  {
LABEL_6:
    v6 = 2654435761 * self->_launchesInLast12Hours;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_launchesInLast24Hours;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_launchesInLast48Hours;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 0x10) != 0)
  {
    self->_launchesInLast2Hours = *(v4 + 6);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 36);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 36) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_launchesInLast7Days = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 36);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_launchesInLast14Days = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 36);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_launchesInLast28Days = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 36);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_launchesInLast12Hours = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_launchesInLast24Hours = *(v4 + 4);
  *&self->_has |= 4u;
  if ((*(v4 + 36) & 0x20) != 0)
  {
LABEL_8:
    self->_launchesInLast48Hours = *(v4 + 7);
    *&self->_has |= 0x20u;
  }

LABEL_9:
}

@end