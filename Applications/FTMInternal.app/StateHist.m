@interface StateHist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRrcState:(id)a3;
- (int)rrcState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasInStateMs:(BOOL)a3;
- (void)setHasRrcState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation StateHist

- (int)rrcState
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_rrcState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRrcState:(BOOL)a3
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

- (int)StringAsRrcState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LTE_RRC_INACTIVE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_IDLE_NOT_CAMPED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_IDLE_CAMPED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_CONNECTING"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_CONNECTED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_SUSPENDED"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_IRAT_TO_LTE_STARTED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_CLOSING"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_MAX_STATE"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasInStateMs:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = StateHist;
  v3 = [(StateHist *)&v7 description];
  v4 = [(StateHist *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    rrcState = self->_rrcState;
    if (rrcState >= 9)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_rrcState];
    }

    else
    {
      v6 = off_100318E50[rrcState];
    }

    [v3 setObject:v6 forKey:@"rrc_state"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_inStateCount];
    [v3 setObject:v7 forKey:@"in_state_count"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_inStateMs];
    [v3 setObject:v8 forKey:@"in_state_ms"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 4) != 0)
  {
    rrcState = self->_rrcState;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  inStateCount = self->_inStateCount;
  PBDataWriterWriteUint32Field();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    inStateMs = self->_inStateMs;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[4] = self->_rrcState;
    *(v4 + 20) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = self->_inStateCount;
  *(v4 + 20) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4[3] = self->_inStateMs;
    *(v4 + 20) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 4) = self->_rrcState;
    *(result + 20) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_inStateCount;
  *(result + 20) |= 1u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 3) = self->_inStateMs;
  *(result + 20) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0 || self->_rrcState != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 20) & 4) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_inStateCount != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_inStateMs != *(v4 + 3))
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
  if ((*&self->_has & 4) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_rrcState;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_inStateCount;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_inStateMs;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 4) != 0)
  {
    self->_rrcState = *(v4 + 4);
    *&self->_has |= 4u;
    v5 = *(v4 + 20);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_inStateCount = *(v4 + 2);
  *&self->_has |= 1u;
  if ((*(v4 + 20) & 2) != 0)
  {
LABEL_4:
    self->_inStateMs = *(v4 + 3);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end