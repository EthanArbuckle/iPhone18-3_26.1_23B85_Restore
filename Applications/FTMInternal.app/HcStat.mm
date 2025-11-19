@interface HcStat
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFailureFoOrScStatePpt:(BOOL)a3;
- (void)setHasFailureIrStatePpt:(BOOL)a3;
- (void)setHasFailureSoOrFcStatePpt:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HcStat

- (void)setHasFailureIrStatePpt:(BOOL)a3
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

- (void)setHasFailureFoOrScStatePpt:(BOOL)a3
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

- (void)setHasFailureSoOrFcStatePpt:(BOOL)a3
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
  v7.super_class = HcStat;
  v3 = [(HcStat *)&v7 description];
  v4 = [(HcStat *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_compType];
    [v3 setObject:v7 forKey:@"comp_type"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_failureIrStatePpt];
  [v3 setObject:v8 forKey:@"failure_ir_state_ppt"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [NSNumber numberWithUnsignedInt:self->_failureFoOrScStatePpt];
  [v3 setObject:v9 forKey:@"failure_fo_or_sc_state_ppt"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [NSNumber numberWithUnsignedInt:self->_failureSoOrFcStatePpt];
    [v3 setObject:v5 forKey:@"failure_so_or_fc_state_ppt"];
  }

LABEL_6:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if (has)
  {
    compType = self->_compType;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  failureIrStatePpt = self->_failureIrStatePpt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  failureFoOrScStatePpt = self->_failureFoOrScStatePpt;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    failureSoOrFcStatePpt = self->_failureSoOrFcStatePpt;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_compType;
    *(v4 + 24) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = self->_failureIrStatePpt;
  *(v4 + 24) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v4[3] = self->_failureFoOrScStatePpt;
  *(v4 + 24) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v4[5] = self->_failureSoOrFcStatePpt;
    *(v4 + 24) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_compType;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_failureIrStatePpt;
  *(result + 24) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 3) = self->_failureFoOrScStatePpt;
  *(result + 24) |= 2u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 5) = self->_failureSoOrFcStatePpt;
  *(result + 24) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_compType != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_failureIrStatePpt != *(v4 + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_failureFoOrScStatePpt != *(v4 + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(v4 + 24) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 24) & 8) == 0 || self->_failureSoOrFcStatePpt != *(v4 + 5))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_compType;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_failureIrStatePpt;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_failureFoOrScStatePpt;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_failureSoOrFcStatePpt;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_compType = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_failureIrStatePpt = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 24);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_failureFoOrScStatePpt = *(v4 + 3);
  *&self->_has |= 2u;
  if ((*(v4 + 24) & 8) != 0)
  {
LABEL_5:
    self->_failureSoOrFcStatePpt = *(v4 + 5);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end