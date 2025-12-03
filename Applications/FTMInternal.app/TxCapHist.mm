@interface TxCapHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsProxState:(id)state;
- (int)proxState;
- (unint64_t)hash;
- (unsigned)pucchCounterAtIndex:(unint64_t)index;
- (unsigned)puschCounterAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasPowerCap10thDbm:(BOOL)dbm;
- (void)setHasProxState:(BOOL)state;
- (void)writeTo:(id)to;
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

- (void)setHasProxState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsProxState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"INTERMIDIATE"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"PROX"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPowerCap10thDbm:(BOOL)dbm
{
  if (dbm)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)pucchCounterAtIndex:(unint64_t)index
{
  p_pucchCounters = &self->_pucchCounters;
  count = self->_pucchCounters.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_pucchCounters->list[index];
}

- (unsigned)puschCounterAtIndex:(unint64_t)index
{
  p_puschCounters = &self->_puschCounters;
  count = self->_puschCounters.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_puschCounters->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = TxCapHist;
  v3 = [(TxCapHist *)&v7 description];
  dictionaryRepresentation = [(TxCapHist *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    toCopy[16] = self->_proxState;
    *(toCopy + 68) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  toCopy[14] = self->_band;
  *(toCopy + 68) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    toCopy[15] = self->_powerCap10thDbm;
    *(toCopy + 68) |= 2u;
  }

LABEL_5:
  v12 = toCopy;
  if ([(TxCapHist *)self pucchCountersCount])
  {
    [v12 clearPucchCounters];
    pucchCountersCount = [(TxCapHist *)self pucchCountersCount];
    if (pucchCountersCount)
    {
      v7 = pucchCountersCount;
      for (i = 0; i != v7; ++i)
      {
        [v12 addPucchCounter:{-[TxCapHist pucchCounterAtIndex:](self, "pucchCounterAtIndex:", i)}];
      }
    }
  }

  if ([(TxCapHist *)self puschCountersCount])
  {
    [v12 clearPuschCounters];
    puschCountersCount = [(TxCapHist *)self puschCountersCount];
    if (puschCountersCount)
    {
      v10 = puschCountersCount;
      for (j = 0; j != v10; ++j)
      {
        [v12 addPuschCounter:{-[TxCapHist puschCounterAtIndex:](self, "puschCounterAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 68);
  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_band != *(equalCopy + 14))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 68) & 4) == 0 || self->_proxState != *(equalCopy + 16))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 68) & 4) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_powerCap10thDbm != *(equalCopy + 15))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 68) & 2) != 0)
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 68);
  if (v5)
  {
    self->_band = *(fromCopy + 14);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 68);
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

  else if ((*(fromCopy + 68) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_proxState = *(fromCopy + 16);
  *&self->_has |= 4u;
  if ((*(fromCopy + 68) & 2) != 0)
  {
LABEL_4:
    self->_powerCap10thDbm = *(fromCopy + 15);
    *&self->_has |= 2u;
  }

LABEL_5:
  v12 = fromCopy;
  pucchCountersCount = [fromCopy pucchCountersCount];
  if (pucchCountersCount)
  {
    v7 = pucchCountersCount;
    for (i = 0; i != v7; ++i)
    {
      -[TxCapHist addPucchCounter:](self, "addPucchCounter:", [v12 pucchCounterAtIndex:i]);
    }
  }

  puschCountersCount = [v12 puschCountersCount];
  if (puschCountersCount)
  {
    v10 = puschCountersCount;
    for (j = 0; j != v10; ++j)
    {
      -[TxCapHist addPuschCounter:](self, "addPuschCounter:", [v12 puschCounterAtIndex:j]);
    }
  }
}

@end