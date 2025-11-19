@interface ASCodableCloudKitDateComponents
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEra:(BOOL)a3;
- (void)setHasHour:(BOOL)a3;
- (void)setHasMonth:(BOOL)a3;
- (void)setHasYear:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableCloudKitDateComponents

- (void)setHasYear:(BOOL)a3
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

- (void)setHasMonth:(BOOL)a3
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

- (void)setHasHour:(BOOL)a3
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

- (void)setHasEra:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableCloudKitDateComponents;
  v4 = [(ASCodableCloudKitDateComponents *)&v8 description];
  v5 = [(ASCodableCloudKitDateComponents *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_year];
    [v3 setObject:v7 forKey:@"year"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_month];
  [v3 setObject:v8 forKey:@"month"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_day];
  [v3 setObject:v9 forKey:@"day"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_hour];
  [v3 setObject:v10 forKey:@"hour"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_era];
    [v3 setObject:v5 forKey:@"era"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    year = self->_year;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  month = self->_month;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  day = self->_day;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  hour = self->_hour;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    era = self->_era;
    PBDataWriterWriteInt64Field();
  }

LABEL_7:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[5] = self->_year;
    *(v4 + 48) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = self->_month;
  *(v4 + 48) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4[1] = self->_day;
  *(v4 + 48) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v4[3] = self->_hour;
  *(v4 + 48) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v4[2] = self->_era;
    *(v4 + 48) |= 2u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 5) = self->_year;
    *(result + 48) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_month;
  *(result + 48) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 1) = self->_day;
  *(result + 48) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 3) = self->_hour;
  *(result + 48) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 2) = self->_era;
  *(result + 48) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 48) & 0x10) == 0 || self->_year != *(v4 + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 0x10) != 0)
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_month != *(v4 + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_day != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_hour != *(v4 + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(v4 + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_era != *(v4 + 2))
    {
      goto LABEL_26;
    }

    v5 = 1;
  }

LABEL_27:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v2 = 2654435761 * self->_year;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_month;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if (*&self->_has)
  {
LABEL_4:
    v4 = 2654435761 * self->_day;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_hour;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_era;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if ((v5 & 0x10) != 0)
  {
    self->_year = *(v4 + 5);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 48);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 48) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_month = *(v4 + 4);
  *&self->_has |= 8u;
  v5 = *(v4 + 48);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_day = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 48);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_hour = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 48) & 2) != 0)
  {
LABEL_6:
    self->_era = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_7:
}

@end