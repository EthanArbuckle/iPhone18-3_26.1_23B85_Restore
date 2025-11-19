@interface ATXMPBDonationRatioTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActionType:(id)a3;
- (int)actionType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasActionType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBDonationRatioTracker

- (int)actionType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_actionType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasActionType:(BOOL)a3
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

- (int)StringAsActionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NSUA"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Intent"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBDonationRatioTracker;
  v4 = [(ATXMPBDonationRatioTracker *)&v8 description];
  v5 = [(ATXMPBDonationRatioTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    actionType = self->_actionType;
    if (actionType)
    {
      if (actionType == 1)
      {
        v6 = @"Intent";
      }

      else
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_actionType];
      }
    }

    else
    {
      v6 = @"NSUA";
    }

    [v3 setObject:v6 forKey:@"actionType"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ratio];
    [v3 setObject:v7 forKey:@"ratio"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v3 setObject:abGroup forKey:@"abGroup"];
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
    actionType = self->_actionType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    ratio = self->_ratio;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[6] = self->_actionType;
    *(v4 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_ratio;
    *(v4 + 28) |= 1u;
  }

  if (self->_abGroup)
  {
    v6 = v4;
    [v4 setAbGroup:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_actionType;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_ratio;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSString *)self->_abGroup copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 28);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_actionType != *(v4 + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_ratio != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_14;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 2))
  {
    v7 = [(NSString *)abGroup isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_actionType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    return v12 ^ v8 ^ [(NSString *)self->_abGroup hash:v3];
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  ratio = self->_ratio;
  if (ratio < 0.0)
  {
    ratio = -ratio;
  }

  *v6.i64 = floor(ratio + 0.5);
  v10 = (ratio - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v12 ^ v8 ^ [(NSString *)self->_abGroup hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_actionType = *(v4 + 6);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
  }

  if (v5)
  {
    self->_ratio = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v6 = v4;
    [(ATXMPBDonationRatioTracker *)self setAbGroup:?];
    v4 = v6;
  }
}

@end