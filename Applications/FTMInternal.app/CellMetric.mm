@interface CellMetric
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)sizeTbTotalByStateAtIndex:(unint64_t)index;
- (unint64_t)sizeTbTotalByTypeAtIndex:(unint64_t)index;
- (unint64_t)ulSizeTbTotalByStateAtIndex:(unint64_t)index;
- (unint64_t)ulSizeTbTotalByTypeAtIndex:(unint64_t)index;
- (unsigned)sfScheduledByStateAtIndex:(unint64_t)index;
- (unsigned)sfScheduledByTypeAtIndex:(unint64_t)index;
- (unsigned)ulSfScheduledByStateAtIndex:(unint64_t)index;
- (unsigned)ulSfScheduledByTypeAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasWakeupMs:(BOOL)ms;
- (void)writeTo:(id)to;
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

- (void)setHasWakeupMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)sfScheduledByStateAtIndex:(unint64_t)index
{
  p_sfScheduledByStates = &self->_sfScheduledByStates;
  count = self->_sfScheduledByStates.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sfScheduledByStates->list[index];
}

- (unint64_t)sizeTbTotalByStateAtIndex:(unint64_t)index
{
  p_sizeTbTotalByStates = &self->_sizeTbTotalByStates;
  count = self->_sizeTbTotalByStates.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sizeTbTotalByStates->list[index];
}

- (unsigned)sfScheduledByTypeAtIndex:(unint64_t)index
{
  p_sfScheduledByTypes = &self->_sfScheduledByTypes;
  count = self->_sfScheduledByTypes.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sfScheduledByTypes->list[index];
}

- (unint64_t)sizeTbTotalByTypeAtIndex:(unint64_t)index
{
  p_sizeTbTotalByTypes = &self->_sizeTbTotalByTypes;
  count = self->_sizeTbTotalByTypes.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sizeTbTotalByTypes->list[index];
}

- (unsigned)ulSfScheduledByStateAtIndex:(unint64_t)index
{
  p_ulSfScheduledByStates = &self->_ulSfScheduledByStates;
  count = self->_ulSfScheduledByStates.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_ulSfScheduledByStates->list[index];
}

- (unint64_t)ulSizeTbTotalByStateAtIndex:(unint64_t)index
{
  p_ulSizeTbTotalByStates = &self->_ulSizeTbTotalByStates;
  count = self->_ulSizeTbTotalByStates.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_ulSizeTbTotalByStates->list[index];
}

- (unsigned)ulSfScheduledByTypeAtIndex:(unint64_t)index
{
  p_ulSfScheduledByTypes = &self->_ulSfScheduledByTypes;
  count = self->_ulSfScheduledByTypes.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_ulSfScheduledByTypes->list[index];
}

- (unint64_t)ulSizeTbTotalByTypeAtIndex:(unint64_t)index
{
  p_ulSizeTbTotalByTypes = &self->_ulSizeTbTotalByTypes;
  count = self->_ulSizeTbTotalByTypes.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_ulSizeTbTotalByTypes->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellMetric;
  v3 = [(CellMetric *)&v7 description];
  dictionaryRepresentation = [(CellMetric *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v25 = toCopy;
  if (has)
  {
    elapsedMs = self->_elapsedMs;
    PBDataWriterWriteUint32Field();
    toCopy = v25;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    wakeupMs = self->_wakeupMs;
    PBDataWriterWriteUint32Field();
    toCopy = v25;
  }

  if (self->_sfScheduledByStates.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_sfScheduledByStates.list[v8];
      PBDataWriterWriteUint32Field();
      toCopy = v25;
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
      toCopy = v25;
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
      toCopy = v25;
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
      toCopy = v25;
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
      toCopy = v25;
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
      toCopy = v25;
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
      toCopy = v25;
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
      toCopy = v25;
      ++v23;
    }

    while (v23 < p_ulSizeTbTotalByTypes->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[50] = self->_elapsedMs;
    *(toCopy + 208) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[51] = self->_wakeupMs;
    *(toCopy + 208) |= 2u;
  }

  v30 = toCopy;
  if ([(CellMetric *)self sfScheduledByStatesCount])
  {
    [v30 clearSfScheduledByStates];
    sfScheduledByStatesCount = [(CellMetric *)self sfScheduledByStatesCount];
    if (sfScheduledByStatesCount)
    {
      v7 = sfScheduledByStatesCount;
      for (i = 0; i != v7; ++i)
      {
        [v30 addSfScheduledByState:{-[CellMetric sfScheduledByStateAtIndex:](self, "sfScheduledByStateAtIndex:", i)}];
      }
    }
  }

  if ([(CellMetric *)self sizeTbTotalByStatesCount])
  {
    [v30 clearSizeTbTotalByStates];
    sizeTbTotalByStatesCount = [(CellMetric *)self sizeTbTotalByStatesCount];
    if (sizeTbTotalByStatesCount)
    {
      v10 = sizeTbTotalByStatesCount;
      for (j = 0; j != v10; ++j)
      {
        [v30 addSizeTbTotalByState:{-[CellMetric sizeTbTotalByStateAtIndex:](self, "sizeTbTotalByStateAtIndex:", j)}];
      }
    }
  }

  if ([(CellMetric *)self sfScheduledByTypesCount])
  {
    [v30 clearSfScheduledByTypes];
    sfScheduledByTypesCount = [(CellMetric *)self sfScheduledByTypesCount];
    if (sfScheduledByTypesCount)
    {
      v13 = sfScheduledByTypesCount;
      for (k = 0; k != v13; ++k)
      {
        [v30 addSfScheduledByType:{-[CellMetric sfScheduledByTypeAtIndex:](self, "sfScheduledByTypeAtIndex:", k)}];
      }
    }
  }

  if ([(CellMetric *)self sizeTbTotalByTypesCount])
  {
    [v30 clearSizeTbTotalByTypes];
    sizeTbTotalByTypesCount = [(CellMetric *)self sizeTbTotalByTypesCount];
    if (sizeTbTotalByTypesCount)
    {
      v16 = sizeTbTotalByTypesCount;
      for (m = 0; m != v16; ++m)
      {
        [v30 addSizeTbTotalByType:{-[CellMetric sizeTbTotalByTypeAtIndex:](self, "sizeTbTotalByTypeAtIndex:", m)}];
      }
    }
  }

  if ([(CellMetric *)self ulSfScheduledByStatesCount])
  {
    [v30 clearUlSfScheduledByStates];
    ulSfScheduledByStatesCount = [(CellMetric *)self ulSfScheduledByStatesCount];
    if (ulSfScheduledByStatesCount)
    {
      v19 = ulSfScheduledByStatesCount;
      for (n = 0; n != v19; ++n)
      {
        [v30 addUlSfScheduledByState:{-[CellMetric ulSfScheduledByStateAtIndex:](self, "ulSfScheduledByStateAtIndex:", n)}];
      }
    }
  }

  if ([(CellMetric *)self ulSizeTbTotalByStatesCount])
  {
    [v30 clearUlSizeTbTotalByStates];
    ulSizeTbTotalByStatesCount = [(CellMetric *)self ulSizeTbTotalByStatesCount];
    if (ulSizeTbTotalByStatesCount)
    {
      v22 = ulSizeTbTotalByStatesCount;
      for (ii = 0; ii != v22; ++ii)
      {
        [v30 addUlSizeTbTotalByState:{-[CellMetric ulSizeTbTotalByStateAtIndex:](self, "ulSizeTbTotalByStateAtIndex:", ii)}];
      }
    }
  }

  if ([(CellMetric *)self ulSfScheduledByTypesCount])
  {
    [v30 clearUlSfScheduledByTypes];
    ulSfScheduledByTypesCount = [(CellMetric *)self ulSfScheduledByTypesCount];
    if (ulSfScheduledByTypesCount)
    {
      v25 = ulSfScheduledByTypesCount;
      for (jj = 0; jj != v25; ++jj)
      {
        [v30 addUlSfScheduledByType:{-[CellMetric ulSfScheduledByTypeAtIndex:](self, "ulSfScheduledByTypeAtIndex:", jj)}];
      }
    }
  }

  if ([(CellMetric *)self ulSizeTbTotalByTypesCount])
  {
    [v30 clearUlSizeTbTotalByTypes];
    ulSizeTbTotalByTypesCount = [(CellMetric *)self ulSizeTbTotalByTypesCount];
    if (ulSizeTbTotalByTypesCount)
    {
      v28 = ulSizeTbTotalByTypesCount;
      for (kk = 0; kk != v28; ++kk)
      {
        [v30 addUlSizeTbTotalByType:{-[CellMetric ulSizeTbTotalByTypeAtIndex:](self, "ulSizeTbTotalByTypeAtIndex:", kk)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(equalCopy + 208);
  if (*&self->_has)
  {
    if ((*(equalCopy + 208) & 1) == 0 || self->_elapsedMs != *(equalCopy + 50))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 208))
  {
LABEL_20:
    IsEqual = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 208) & 2) == 0 || self->_wakeupMs != *(equalCopy + 51))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 208) & 2) != 0)
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 208);
  if (v5)
  {
    self->_elapsedMs = *(fromCopy + 50);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 208);
  }

  if ((v5 & 2) != 0)
  {
    self->_wakeupMs = *(fromCopy + 51);
    *&self->_has |= 2u;
  }

  v30 = fromCopy;
  sfScheduledByStatesCount = [fromCopy sfScheduledByStatesCount];
  if (sfScheduledByStatesCount)
  {
    v7 = sfScheduledByStatesCount;
    for (i = 0; i != v7; ++i)
    {
      -[CellMetric addSfScheduledByState:](self, "addSfScheduledByState:", [v30 sfScheduledByStateAtIndex:i]);
    }
  }

  sizeTbTotalByStatesCount = [v30 sizeTbTotalByStatesCount];
  if (sizeTbTotalByStatesCount)
  {
    v10 = sizeTbTotalByStatesCount;
    for (j = 0; j != v10; ++j)
    {
      -[CellMetric addSizeTbTotalByState:](self, "addSizeTbTotalByState:", [v30 sizeTbTotalByStateAtIndex:j]);
    }
  }

  sfScheduledByTypesCount = [v30 sfScheduledByTypesCount];
  if (sfScheduledByTypesCount)
  {
    v13 = sfScheduledByTypesCount;
    for (k = 0; k != v13; ++k)
    {
      -[CellMetric addSfScheduledByType:](self, "addSfScheduledByType:", [v30 sfScheduledByTypeAtIndex:k]);
    }
  }

  sizeTbTotalByTypesCount = [v30 sizeTbTotalByTypesCount];
  if (sizeTbTotalByTypesCount)
  {
    v16 = sizeTbTotalByTypesCount;
    for (m = 0; m != v16; ++m)
    {
      -[CellMetric addSizeTbTotalByType:](self, "addSizeTbTotalByType:", [v30 sizeTbTotalByTypeAtIndex:m]);
    }
  }

  ulSfScheduledByStatesCount = [v30 ulSfScheduledByStatesCount];
  if (ulSfScheduledByStatesCount)
  {
    v19 = ulSfScheduledByStatesCount;
    for (n = 0; n != v19; ++n)
    {
      -[CellMetric addUlSfScheduledByState:](self, "addUlSfScheduledByState:", [v30 ulSfScheduledByStateAtIndex:n]);
    }
  }

  ulSizeTbTotalByStatesCount = [v30 ulSizeTbTotalByStatesCount];
  if (ulSizeTbTotalByStatesCount)
  {
    v22 = ulSizeTbTotalByStatesCount;
    for (ii = 0; ii != v22; ++ii)
    {
      -[CellMetric addUlSizeTbTotalByState:](self, "addUlSizeTbTotalByState:", [v30 ulSizeTbTotalByStateAtIndex:ii]);
    }
  }

  ulSfScheduledByTypesCount = [v30 ulSfScheduledByTypesCount];
  if (ulSfScheduledByTypesCount)
  {
    v25 = ulSfScheduledByTypesCount;
    for (jj = 0; jj != v25; ++jj)
    {
      -[CellMetric addUlSfScheduledByType:](self, "addUlSfScheduledByType:", [v30 ulSfScheduledByTypeAtIndex:jj]);
    }
  }

  ulSizeTbTotalByTypesCount = [v30 ulSizeTbTotalByTypesCount];
  if (ulSizeTbTotalByTypesCount)
  {
    v28 = ulSizeTbTotalByTypesCount;
    for (kk = 0; kk != v28; ++kk)
    {
      -[CellMetric addUlSizeTbTotalByType:](self, "addUlSizeTbTotalByType:", [v30 ulSizeTbTotalByTypeAtIndex:kk]);
    }
  }
}

@end