@interface TxCapHist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsProxState:(id)a3;
- (int)proxState;
- (unint64_t)hash;
- (unsigned)pucchCounterAtIndex:(unint64_t)a3;
- (unsigned)puschCounterAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasPowerCap10thDbm:(BOOL)a3;
- (void)setHasProxState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation TxCapHist

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = TxCapHist;
  [(TxCapHist *)&v3 dealloc];
}

- (int)proxState
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_proxState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasProxState:(BOOL)a3
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

- (int)StringAsProxState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"INTERMIDIATE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PROX"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPowerCap10thDbm:(BOOL)a3
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

- (unsigned)pucchCounterAtIndex:(unint64_t)a3
{
  p_pucchCounters = &self->_pucchCounters;
  count = self->_pucchCounters.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_pucchCounters->list[a3];
}

- (unsigned)puschCounterAtIndex:(unint64_t)a3
{
  p_puschCounters = &self->_puschCounters;
  count = self->_puschCounters.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_puschCounters->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = TxCapHist;
  v3 = [(TxCapHist *)&v7 description];
  v4 = [(TxCapHist *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithInt:self->_band];
    [v3 setObject:v9 forKey:@"band"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  proxState = self->_proxState;
  if (proxState >= 3)
  {
    v11 = [NSString stringWithFormat:@"(unknown: %i)", self->_proxState];
  }

  else
  {
    v11 = *(&off_100317E68 + proxState);
  }

  [v3 setObject:v11 forKey:@"prox_state"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [NSNumber numberWithInt:self->_powerCap10thDbm];
  [v3 setObject:v5 forKey:@"power_cap_10th_dbm"];

LABEL_5:
  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"pucch_counter"];

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"pusch_counter"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    band = self->_band;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  proxState = self->_proxState;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    powerCap10thDbm = self->_powerCap10thDbm;
    PBDataWriterWriteSint32Field();
  }

LABEL_5:
  if (self->_pucchCounters.count)
  {
    PBDataWriterPlaceMark();
    if (self->_pucchCounters.count)
    {
      v7 = 0;
      do
      {
        v8 = self->_pucchCounters.list[v7];
        PBDataWriterWriteUint32Field();
        ++v7;
      }

      while (v7 < self->_pucchCounters.count);
    }

    PBDataWriterRecallMark();
  }

  p_puschCounters = &self->_puschCounters;
  if (p_puschCounters->count)
  {
    PBDataWriterPlaceMark();
    if (p_puschCounters->count)
    {
      v10 = 0;
      do
      {
        v11 = p_puschCounters->list[v10];
        PBDataWriterWriteUint32Field();
        ++v10;
      }

      while (v10 < p_puschCounters->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v4[16] = self->_proxState;
    *(v4 + 68) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4[14] = self->_band;
  *(v4 + 68) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    v4[15] = self->_powerCap10thDbm;
    *(v4 + 68) |= 2u;
  }

LABEL_5:
  v12 = v4;
  if ([(TxCapHist *)self pucchCountersCount])
  {
    [v12 clearPucchCounters];
    v6 = [(TxCapHist *)self pucchCountersCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v12 addPucchCounter:{-[TxCapHist pucchCounterAtIndex:](self, "pucchCounterAtIndex:", i)}];
      }
    }
  }

  if ([(TxCapHist *)self puschCountersCount])
  {
    [v12 clearPuschCounters];
    v9 = [(TxCapHist *)self puschCountersCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v12 addPuschCounter:{-[TxCapHist puschCounterAtIndex:](self, "puschCounterAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v4 + 16) = self->_proxState;
    *(v4 + 68) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v4 + 14) = self->_band;
  *(v4 + 68) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v4 + 15) = self->_powerCap10thDbm;
    *(v4 + 68) |= 2u;
  }

LABEL_5:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 68);
  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_band != *(v4 + 14))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 68) & 4) == 0 || self->_proxState != *(v4 + 16))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 68) & 4) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0 || self->_powerCap10thDbm != *(v4 + 15))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 68) & 2) != 0)
  {
    goto LABEL_19;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_19:
    IsEqual = 0;
    goto LABEL_20;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_20:

  return IsEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
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
    goto LABEL_8;
  }

  v2 = 2654435761 * self->_band;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_proxState;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_powerCap10thDbm;
LABEL_8:
  v5 = v3 ^ v2 ^ v4 ^ PBRepeatedUInt32Hash();
  return v5 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 68);
  if (v5)
  {
    self->_band = *(v4 + 14);
    *&self->_has |= 1u;
    v5 = *(v4 + 68);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 68) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_proxState = *(v4 + 16);
  *&self->_has |= 4u;
  if ((*(v4 + 68) & 2) != 0)
  {
LABEL_4:
    self->_powerCap10thDbm = *(v4 + 15);
    *&self->_has |= 2u;
  }

LABEL_5:
  v12 = v4;
  v6 = [v4 pucchCountersCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[TxCapHist addPucchCounter:](self, "addPucchCounter:", [v12 pucchCounterAtIndex:i]);
    }
  }

  v9 = [v12 puschCountersCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[TxCapHist addPuschCounter:](self, "addPuschCounter:", [v12 puschCounterAtIndex:j]);
    }
  }
}

@end