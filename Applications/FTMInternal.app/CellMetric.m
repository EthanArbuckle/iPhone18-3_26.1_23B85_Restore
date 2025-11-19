@interface CellMetric
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)sizeTbTotalByStateAtIndex:(unint64_t)a3;
- (unint64_t)sizeTbTotalByTypeAtIndex:(unint64_t)a3;
- (unint64_t)ulSizeTbTotalByStateAtIndex:(unint64_t)a3;
- (unint64_t)ulSizeTbTotalByTypeAtIndex:(unint64_t)a3;
- (unsigned)sfScheduledByStateAtIndex:(unint64_t)a3;
- (unsigned)sfScheduledByTypeAtIndex:(unint64_t)a3;
- (unsigned)ulSfScheduledByStateAtIndex:(unint64_t)a3;
- (unsigned)ulSfScheduledByTypeAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasWakeupMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellMetric

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = CellMetric;
  [(CellMetric *)&v3 dealloc];
}

- (void)setHasWakeupMs:(BOOL)a3
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

- (unsigned)sfScheduledByStateAtIndex:(unint64_t)a3
{
  p_sfScheduledByStates = &self->_sfScheduledByStates;
  count = self->_sfScheduledByStates.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sfScheduledByStates->list[a3];
}

- (unint64_t)sizeTbTotalByStateAtIndex:(unint64_t)a3
{
  p_sizeTbTotalByStates = &self->_sizeTbTotalByStates;
  count = self->_sizeTbTotalByStates.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sizeTbTotalByStates->list[a3];
}

- (unsigned)sfScheduledByTypeAtIndex:(unint64_t)a3
{
  p_sfScheduledByTypes = &self->_sfScheduledByTypes;
  count = self->_sfScheduledByTypes.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sfScheduledByTypes->list[a3];
}

- (unint64_t)sizeTbTotalByTypeAtIndex:(unint64_t)a3
{
  p_sizeTbTotalByTypes = &self->_sizeTbTotalByTypes;
  count = self->_sizeTbTotalByTypes.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sizeTbTotalByTypes->list[a3];
}

- (unsigned)ulSfScheduledByStateAtIndex:(unint64_t)a3
{
  p_ulSfScheduledByStates = &self->_ulSfScheduledByStates;
  count = self->_ulSfScheduledByStates.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_ulSfScheduledByStates->list[a3];
}

- (unint64_t)ulSizeTbTotalByStateAtIndex:(unint64_t)a3
{
  p_ulSizeTbTotalByStates = &self->_ulSizeTbTotalByStates;
  count = self->_ulSizeTbTotalByStates.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_ulSizeTbTotalByStates->list[a3];
}

- (unsigned)ulSfScheduledByTypeAtIndex:(unint64_t)a3
{
  p_ulSfScheduledByTypes = &self->_ulSfScheduledByTypes;
  count = self->_ulSfScheduledByTypes.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_ulSfScheduledByTypes->list[a3];
}

- (unint64_t)ulSizeTbTotalByTypeAtIndex:(unint64_t)a3
{
  p_ulSizeTbTotalByTypes = &self->_ulSizeTbTotalByTypes;
  count = self->_ulSizeTbTotalByTypes.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_ulSizeTbTotalByTypes->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellMetric;
  v3 = [(CellMetric *)&v7 description];
  v4 = [(CellMetric *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_elapsedMs];
    [v3 setObject:v5 forKey:@"elapsed_ms"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_wakeupMs];
    [v3 setObject:v6 forKey:@"wakeup_ms"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"sf_scheduled_by_state"];

  v8 = PBRepeatedUInt64NSArray();
  [v3 setObject:v8 forKey:@"size_tb_total_by_state"];

  v9 = PBRepeatedUInt32NSArray();
  [v3 setObject:v9 forKey:@"sf_scheduled_by_type"];

  v10 = PBRepeatedUInt64NSArray();
  [v3 setObject:v10 forKey:@"size_tb_total_by_type"];

  v11 = PBRepeatedUInt32NSArray();
  [v3 setObject:v11 forKey:@"ul_sf_scheduled_by_state"];

  v12 = PBRepeatedUInt64NSArray();
  [v3 setObject:v12 forKey:@"ul_size_tb_total_by_state"];

  v13 = PBRepeatedUInt32NSArray();
  [v3 setObject:v13 forKey:@"ul_sf_scheduled_by_type"];

  v14 = PBRepeatedUInt64NSArray();
  [v3 setObject:v14 forKey:@"ul_size_tb_total_by_type"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v25 = v4;
  if (has)
  {
    elapsedMs = self->_elapsedMs;
    PBDataWriterWriteUint32Field();
    v4 = v25;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    wakeupMs = self->_wakeupMs;
    PBDataWriterWriteUint32Field();
    v4 = v25;
  }

  if (self->_sfScheduledByStates.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_sfScheduledByStates.list[v8];
      PBDataWriterWriteUint32Field();
      v4 = v25;
      ++v8;
    }

    while (v8 < self->_sfScheduledByStates.count);
  }

  if (self->_sizeTbTotalByStates.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_sizeTbTotalByStates.list[v10];
      PBDataWriterWriteUint64Field();
      v4 = v25;
      ++v10;
    }

    while (v10 < self->_sizeTbTotalByStates.count);
  }

  if (self->_sfScheduledByTypes.count)
  {
    v12 = 0;
    do
    {
      v13 = self->_sfScheduledByTypes.list[v12];
      PBDataWriterWriteUint32Field();
      v4 = v25;
      ++v12;
    }

    while (v12 < self->_sfScheduledByTypes.count);
  }

  if (self->_sizeTbTotalByTypes.count)
  {
    v14 = 0;
    do
    {
      v15 = self->_sizeTbTotalByTypes.list[v14];
      PBDataWriterWriteUint64Field();
      v4 = v25;
      ++v14;
    }

    while (v14 < self->_sizeTbTotalByTypes.count);
  }

  if (self->_ulSfScheduledByStates.count)
  {
    v16 = 0;
    do
    {
      v17 = self->_ulSfScheduledByStates.list[v16];
      PBDataWriterWriteUint32Field();
      v4 = v25;
      ++v16;
    }

    while (v16 < self->_ulSfScheduledByStates.count);
  }

  if (self->_ulSizeTbTotalByStates.count)
  {
    v18 = 0;
    do
    {
      v19 = self->_ulSizeTbTotalByStates.list[v18];
      PBDataWriterWriteUint64Field();
      v4 = v25;
      ++v18;
    }

    while (v18 < self->_ulSizeTbTotalByStates.count);
  }

  if (self->_ulSfScheduledByTypes.count)
  {
    v20 = 0;
    do
    {
      v21 = self->_ulSfScheduledByTypes.list[v20];
      PBDataWriterWriteUint32Field();
      v4 = v25;
      ++v20;
    }

    while (v20 < self->_ulSfScheduledByTypes.count);
  }

  p_ulSizeTbTotalByTypes = &self->_ulSizeTbTotalByTypes;
  if (p_ulSizeTbTotalByTypes->count)
  {
    v23 = 0;
    do
    {
      v24 = p_ulSizeTbTotalByTypes->list[v23];
      PBDataWriterWriteUint64Field();
      v4 = v25;
      ++v23;
    }

    while (v23 < p_ulSizeTbTotalByTypes->count);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[50] = self->_elapsedMs;
    *(v4 + 208) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[51] = self->_wakeupMs;
    *(v4 + 208) |= 2u;
  }

  v30 = v4;
  if ([(CellMetric *)self sfScheduledByStatesCount])
  {
    [v30 clearSfScheduledByStates];
    v6 = [(CellMetric *)self sfScheduledByStatesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v30 addSfScheduledByState:{-[CellMetric sfScheduledByStateAtIndex:](self, "sfScheduledByStateAtIndex:", i)}];
      }
    }
  }

  if ([(CellMetric *)self sizeTbTotalByStatesCount])
  {
    [v30 clearSizeTbTotalByStates];
    v9 = [(CellMetric *)self sizeTbTotalByStatesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v30 addSizeTbTotalByState:{-[CellMetric sizeTbTotalByStateAtIndex:](self, "sizeTbTotalByStateAtIndex:", j)}];
      }
    }
  }

  if ([(CellMetric *)self sfScheduledByTypesCount])
  {
    [v30 clearSfScheduledByTypes];
    v12 = [(CellMetric *)self sfScheduledByTypesCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        [v30 addSfScheduledByType:{-[CellMetric sfScheduledByTypeAtIndex:](self, "sfScheduledByTypeAtIndex:", k)}];
      }
    }
  }

  if ([(CellMetric *)self sizeTbTotalByTypesCount])
  {
    [v30 clearSizeTbTotalByTypes];
    v15 = [(CellMetric *)self sizeTbTotalByTypesCount];
    if (v15)
    {
      v16 = v15;
      for (m = 0; m != v16; ++m)
      {
        [v30 addSizeTbTotalByType:{-[CellMetric sizeTbTotalByTypeAtIndex:](self, "sizeTbTotalByTypeAtIndex:", m)}];
      }
    }
  }

  if ([(CellMetric *)self ulSfScheduledByStatesCount])
  {
    [v30 clearUlSfScheduledByStates];
    v18 = [(CellMetric *)self ulSfScheduledByStatesCount];
    if (v18)
    {
      v19 = v18;
      for (n = 0; n != v19; ++n)
      {
        [v30 addUlSfScheduledByState:{-[CellMetric ulSfScheduledByStateAtIndex:](self, "ulSfScheduledByStateAtIndex:", n)}];
      }
    }
  }

  if ([(CellMetric *)self ulSizeTbTotalByStatesCount])
  {
    [v30 clearUlSizeTbTotalByStates];
    v21 = [(CellMetric *)self ulSizeTbTotalByStatesCount];
    if (v21)
    {
      v22 = v21;
      for (ii = 0; ii != v22; ++ii)
      {
        [v30 addUlSizeTbTotalByState:{-[CellMetric ulSizeTbTotalByStateAtIndex:](self, "ulSizeTbTotalByStateAtIndex:", ii)}];
      }
    }
  }

  if ([(CellMetric *)self ulSfScheduledByTypesCount])
  {
    [v30 clearUlSfScheduledByTypes];
    v24 = [(CellMetric *)self ulSfScheduledByTypesCount];
    if (v24)
    {
      v25 = v24;
      for (jj = 0; jj != v25; ++jj)
      {
        [v30 addUlSfScheduledByType:{-[CellMetric ulSfScheduledByTypeAtIndex:](self, "ulSfScheduledByTypeAtIndex:", jj)}];
      }
    }
  }

  if ([(CellMetric *)self ulSizeTbTotalByTypesCount])
  {
    [v30 clearUlSizeTbTotalByTypes];
    v27 = [(CellMetric *)self ulSizeTbTotalByTypesCount];
    if (v27)
    {
      v28 = v27;
      for (kk = 0; kk != v28; ++kk)
      {
        [v30 addUlSizeTbTotalByType:{-[CellMetric ulSizeTbTotalByTypeAtIndex:](self, "ulSizeTbTotalByTypeAtIndex:", kk)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if (has)
  {
    *(v4 + 50) = self->_elapsedMs;
    *(v4 + 208) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 51) = self->_wakeupMs;
    *(v4 + 208) |= 2u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(v4 + 208);
  if (*&self->_has)
  {
    if ((*(v4 + 208) & 1) == 0 || self->_elapsedMs != *(v4 + 50))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 208))
  {
LABEL_20:
    IsEqual = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 208) & 2) == 0 || self->_wakeupMs != *(v4 + 51))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 208) & 2) != 0)
  {
    goto LABEL_20;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt64IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt64IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt64IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_20;
  }

  IsEqual = PBRepeatedUInt64IsEqual();
LABEL_21:

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_elapsedMs;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_wakeupMs;
LABEL_6:
  v4 = v3 ^ v2 ^ PBRepeatedUInt32Hash();
  v5 = PBRepeatedUInt64Hash();
  v6 = v4 ^ v5 ^ PBRepeatedUInt32Hash();
  v7 = PBRepeatedUInt64Hash();
  v8 = v7 ^ PBRepeatedUInt32Hash();
  v9 = v6 ^ v8 ^ PBRepeatedUInt64Hash();
  v10 = PBRepeatedUInt32Hash();
  return v9 ^ v10 ^ PBRepeatedUInt64Hash();
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 208);
  if (v5)
  {
    self->_elapsedMs = *(v4 + 50);
    *&self->_has |= 1u;
    v5 = *(v4 + 208);
  }

  if ((v5 & 2) != 0)
  {
    self->_wakeupMs = *(v4 + 51);
    *&self->_has |= 2u;
  }

  v30 = v4;
  v6 = [v4 sfScheduledByStatesCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[CellMetric addSfScheduledByState:](self, "addSfScheduledByState:", [v30 sfScheduledByStateAtIndex:i]);
    }
  }

  v9 = [v30 sizeTbTotalByStatesCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[CellMetric addSizeTbTotalByState:](self, "addSizeTbTotalByState:", [v30 sizeTbTotalByStateAtIndex:j]);
    }
  }

  v12 = [v30 sfScheduledByTypesCount];
  if (v12)
  {
    v13 = v12;
    for (k = 0; k != v13; ++k)
    {
      -[CellMetric addSfScheduledByType:](self, "addSfScheduledByType:", [v30 sfScheduledByTypeAtIndex:k]);
    }
  }

  v15 = [v30 sizeTbTotalByTypesCount];
  if (v15)
  {
    v16 = v15;
    for (m = 0; m != v16; ++m)
    {
      -[CellMetric addSizeTbTotalByType:](self, "addSizeTbTotalByType:", [v30 sizeTbTotalByTypeAtIndex:m]);
    }
  }

  v18 = [v30 ulSfScheduledByStatesCount];
  if (v18)
  {
    v19 = v18;
    for (n = 0; n != v19; ++n)
    {
      -[CellMetric addUlSfScheduledByState:](self, "addUlSfScheduledByState:", [v30 ulSfScheduledByStateAtIndex:n]);
    }
  }

  v21 = [v30 ulSizeTbTotalByStatesCount];
  if (v21)
  {
    v22 = v21;
    for (ii = 0; ii != v22; ++ii)
    {
      -[CellMetric addUlSizeTbTotalByState:](self, "addUlSizeTbTotalByState:", [v30 ulSizeTbTotalByStateAtIndex:ii]);
    }
  }

  v24 = [v30 ulSfScheduledByTypesCount];
  if (v24)
  {
    v25 = v24;
    for (jj = 0; jj != v25; ++jj)
    {
      -[CellMetric addUlSfScheduledByType:](self, "addUlSfScheduledByType:", [v30 ulSfScheduledByTypeAtIndex:jj]);
    }
  }

  v27 = [v30 ulSizeTbTotalByTypesCount];
  if (v27)
  {
    v28 = v27;
    for (kk = 0; kk != v28; ++kk)
    {
      -[CellMetric addUlSizeTbTotalByType:](self, "addUlSizeTbTotalByType:", [v30 ulSizeTbTotalByTypeAtIndex:kk]);
    }
  }
}

@end