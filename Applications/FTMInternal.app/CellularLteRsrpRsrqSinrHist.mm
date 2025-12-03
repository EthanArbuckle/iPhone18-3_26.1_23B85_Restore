@interface CellularLteRsrpRsrqSinrHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)rsrp0AtIndex:(unint64_t)index;
- (unsigned)rsrp1AtIndex:(unint64_t)index;
- (unsigned)rsrp2AtIndex:(unint64_t)index;
- (unsigned)rsrp3AtIndex:(unint64_t)index;
- (unsigned)rsrq0AtIndex:(unint64_t)index;
- (unsigned)rsrq1AtIndex:(unint64_t)index;
- (unsigned)rsrq2AtIndex:(unint64_t)index;
- (unsigned)rsrq3AtIndex:(unint64_t)index;
- (unsigned)sinr0AtIndex:(unint64_t)index;
- (unsigned)sinr1AtIndex:(unint64_t)index;
- (unsigned)sinr2AtIndex:(unint64_t)index;
- (unsigned)sinr3AtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasMinRsrpDbm:(BOOL)dbm;
- (void)setHasMinRsrqDb:(BOOL)db;
- (void)setHasMinSinrDbx2:(BOOL)dbx2;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularLteRsrpRsrqSinrHist

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = CellularLteRsrpRsrqSinrHist;
  [(CellularLteRsrpRsrqSinrHist *)&v3 dealloc];
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasMinRsrpDbm:(BOOL)dbm
{
  if (dbm)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (unsigned)rsrp0AtIndex:(unint64_t)index
{
  p_rsrp0s = &self->_rsrp0s;
  count = self->_rsrp0s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rsrp0s->list[index];
}

- (unsigned)rsrp1AtIndex:(unint64_t)index
{
  p_rsrp1s = &self->_rsrp1s;
  count = self->_rsrp1s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rsrp1s->list[index];
}

- (void)setHasMinRsrqDb:(BOOL)db
{
  if (db)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (unsigned)rsrq0AtIndex:(unint64_t)index
{
  p_rsrq0s = &self->_rsrq0s;
  count = self->_rsrq0s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rsrq0s->list[index];
}

- (unsigned)rsrq1AtIndex:(unint64_t)index
{
  p_rsrq1s = &self->_rsrq1s;
  count = self->_rsrq1s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rsrq1s->list[index];
}

- (void)setHasMinSinrDbx2:(BOOL)dbx2
{
  if (dbx2)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (unsigned)sinr0AtIndex:(unint64_t)index
{
  p_sinr0s = &self->_sinr0s;
  count = self->_sinr0s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sinr0s->list[index];
}

- (unsigned)sinr1AtIndex:(unint64_t)index
{
  p_sinr1s = &self->_sinr1s;
  count = self->_sinr1s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sinr1s->list[index];
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (unsigned)rsrp2AtIndex:(unint64_t)index
{
  p_rsrp2s = &self->_rsrp2s;
  count = self->_rsrp2s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rsrp2s->list[index];
}

- (unsigned)rsrp3AtIndex:(unint64_t)index
{
  p_rsrp3s = &self->_rsrp3s;
  count = self->_rsrp3s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rsrp3s->list[index];
}

- (unsigned)rsrq2AtIndex:(unint64_t)index
{
  p_rsrq2s = &self->_rsrq2s;
  count = self->_rsrq2s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rsrq2s->list[index];
}

- (unsigned)rsrq3AtIndex:(unint64_t)index
{
  p_rsrq3s = &self->_rsrq3s;
  count = self->_rsrq3s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rsrq3s->list[index];
}

- (unsigned)sinr2AtIndex:(unint64_t)index
{
  p_sinr2s = &self->_sinr2s;
  count = self->_sinr2s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sinr2s->list[index];
}

- (unsigned)sinr3AtIndex:(unint64_t)index
{
  p_sinr3s = &self->_sinr3s;
  count = self->_sinr3s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sinr3s->list[index];
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteRsrpRsrqSinrHist;
  v3 = [(CellularLteRsrpRsrqSinrHist *)&v7 description];
  dictionaryRepresentation = [(CellularLteRsrpRsrqSinrHist *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v26 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v26 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v27 = [NSNumber numberWithUnsignedInt:self->_duration];
  [v3 setObject:v27 forKey:@"duration"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithInt:self->_minRsrpDbm];
    [v3 setObject:v5 forKey:@"min_rsrp_dbm"];
  }

LABEL_5:
  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"rsrp0"];

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"rsrp1"];

  if ((*&self->_has & 8) != 0)
  {
    v8 = [NSNumber numberWithInt:self->_minRsrqDb];
    [v3 setObject:v8 forKey:@"min_rsrq_db"];
  }

  v9 = PBRepeatedUInt32NSArray();
  [v3 setObject:v9 forKey:@"rsrq0"];

  v10 = PBRepeatedUInt32NSArray();
  [v3 setObject:v10 forKey:@"rsrq1"];

  if ((*&self->_has & 0x10) != 0)
  {
    v11 = [NSNumber numberWithInt:self->_minSinrDbx2];
    [v3 setObject:v11 forKey:@"min_sinr_dbx2"];
  }

  v12 = PBRepeatedUInt32NSArray();
  [v3 setObject:v12 forKey:@"sinr0"];

  v13 = PBRepeatedUInt32NSArray();
  [v3 setObject:v13 forKey:@"sinr1"];

  if ((*&self->_has & 0x80000000) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v14 forKey:@"subs_id"];
  }

  v15 = PBRepeatedUInt32NSArray();
  [v3 setObject:v15 forKey:@"rsrp2"];

  v16 = PBRepeatedUInt32NSArray();
  [v3 setObject:v16 forKey:@"rsrp3"];

  v17 = PBRepeatedUInt32NSArray();
  [v3 setObject:v17 forKey:@"rsrq2"];

  v18 = PBRepeatedUInt32NSArray();
  [v3 setObject:v18 forKey:@"rsrq3"];

  v19 = PBRepeatedUInt32NSArray();
  [v3 setObject:v19 forKey:@"sinr2"];

  v20 = PBRepeatedUInt32NSArray();
  [v3 setObject:v20 forKey:@"sinr3"];

  v21 = self->_has;
  if ((v21 & 0x20) != 0)
  {
    v22 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v22 forKey:@"num_subs"];

    v21 = self->_has;
  }

  if ((v21 & 0x40) != 0)
  {
    v23 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v23 forKey:@"ps_pref"];
  }

  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    minRsrpDbm = self->_minRsrpDbm;
    PBDataWriterWriteSint32Field();
  }

LABEL_5:
  if (self->_rsrp0s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rsrp0s.count)
    {
      v7 = 0;
      do
      {
        v8 = self->_rsrp0s.list[v7];
        PBDataWriterWriteUint32Field();
        ++v7;
      }

      while (v7 < self->_rsrp0s.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_rsrp1s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rsrp1s.count)
    {
      v9 = 0;
      do
      {
        v10 = self->_rsrp1s.list[v9];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v9 < self->_rsrp1s.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 8) != 0)
  {
    minRsrqDb = self->_minRsrqDb;
    PBDataWriterWriteSint32Field();
  }

  if (self->_rsrq0s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rsrq0s.count)
    {
      v12 = 0;
      do
      {
        v13 = self->_rsrq0s.list[v12];
        PBDataWriterWriteUint32Field();
        ++v12;
      }

      while (v12 < self->_rsrq0s.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_rsrq1s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rsrq1s.count)
    {
      v14 = 0;
      do
      {
        v15 = self->_rsrq1s.list[v14];
        PBDataWriterWriteUint32Field();
        ++v14;
      }

      while (v14 < self->_rsrq1s.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    minSinrDbx2 = self->_minSinrDbx2;
    PBDataWriterWriteSint32Field();
  }

  if (self->_sinr0s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_sinr0s.count)
    {
      v17 = 0;
      do
      {
        v18 = self->_sinr0s.list[v17];
        PBDataWriterWriteUint32Field();
        ++v17;
      }

      while (v17 < self->_sinr0s.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_sinr1s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_sinr1s.count)
    {
      v19 = 0;
      do
      {
        v20 = self->_sinr1s.list[v19];
        PBDataWriterWriteUint32Field();
        ++v19;
      }

      while (v19 < self->_sinr1s.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

  if (self->_rsrp2s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rsrp2s.count)
    {
      v22 = 0;
      do
      {
        v23 = self->_rsrp2s.list[v22];
        PBDataWriterWriteUint32Field();
        ++v22;
      }

      while (v22 < self->_rsrp2s.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_rsrp3s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rsrp3s.count)
    {
      v24 = 0;
      do
      {
        v25 = self->_rsrp3s.list[v24];
        PBDataWriterWriteUint32Field();
        ++v24;
      }

      while (v24 < self->_rsrp3s.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_rsrq2s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rsrq2s.count)
    {
      v26 = 0;
      do
      {
        v27 = self->_rsrq2s.list[v26];
        PBDataWriterWriteUint32Field();
        ++v26;
      }

      while (v26 < self->_rsrq2s.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_rsrq3s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rsrq3s.count)
    {
      v28 = 0;
      do
      {
        v29 = self->_rsrq3s.list[v28];
        PBDataWriterWriteUint32Field();
        ++v28;
      }

      while (v28 < self->_rsrq3s.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_sinr2s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_sinr2s.count)
    {
      v30 = 0;
      do
      {
        v31 = self->_sinr2s.list[v30];
        PBDataWriterWriteUint32Field();
        ++v30;
      }

      while (v30 < self->_sinr2s.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_sinr3s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_sinr3s.count)
    {
      v32 = 0;
      do
      {
        v33 = self->_sinr3s.list[v32];
        PBDataWriterWriteUint32Field();
        ++v32;
      }

      while (v32 < self->_sinr3s.count);
    }

    PBDataWriterRecallMark();
  }

  v34 = self->_has;
  if ((v34 & 0x20) != 0)
  {
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
    v34 = self->_has;
  }

  if ((v34 & 0x40) != 0)
  {
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_69:
    toCopy[76] = self->_duration;
    *(toCopy + 344) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(toCopy + 37) = self->_timestamp;
  *(toCopy + 344) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_69;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    toCopy[77] = self->_minRsrpDbm;
    *(toCopy + 344) |= 4u;
  }

LABEL_5:
  v44 = toCopy;
  if ([(CellularLteRsrpRsrqSinrHist *)self rsrp0sCount])
  {
    [v44 clearRsrp0s];
    rsrp0sCount = [(CellularLteRsrpRsrqSinrHist *)self rsrp0sCount];
    if (rsrp0sCount)
    {
      v7 = rsrp0sCount;
      for (i = 0; i != v7; ++i)
      {
        [v44 addRsrp0:{-[CellularLteRsrpRsrqSinrHist rsrp0AtIndex:](self, "rsrp0AtIndex:", i)}];
      }
    }
  }

  if ([(CellularLteRsrpRsrqSinrHist *)self rsrp1sCount])
  {
    [v44 clearRsrp1s];
    rsrp1sCount = [(CellularLteRsrpRsrqSinrHist *)self rsrp1sCount];
    if (rsrp1sCount)
    {
      v10 = rsrp1sCount;
      for (j = 0; j != v10; ++j)
      {
        [v44 addRsrp1:{-[CellularLteRsrpRsrqSinrHist rsrp1AtIndex:](self, "rsrp1AtIndex:", j)}];
      }
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v44 + 78) = self->_minRsrqDb;
    *(v44 + 344) |= 8u;
  }

  if ([(CellularLteRsrpRsrqSinrHist *)self rsrq0sCount])
  {
    [v44 clearRsrq0s];
    rsrq0sCount = [(CellularLteRsrpRsrqSinrHist *)self rsrq0sCount];
    if (rsrq0sCount)
    {
      v13 = rsrq0sCount;
      for (k = 0; k != v13; ++k)
      {
        [v44 addRsrq0:{-[CellularLteRsrpRsrqSinrHist rsrq0AtIndex:](self, "rsrq0AtIndex:", k)}];
      }
    }
  }

  if ([(CellularLteRsrpRsrqSinrHist *)self rsrq1sCount])
  {
    [v44 clearRsrq1s];
    rsrq1sCount = [(CellularLteRsrpRsrqSinrHist *)self rsrq1sCount];
    if (rsrq1sCount)
    {
      v16 = rsrq1sCount;
      for (m = 0; m != v16; ++m)
      {
        [v44 addRsrq1:{-[CellularLteRsrpRsrqSinrHist rsrq1AtIndex:](self, "rsrq1AtIndex:", m)}];
      }
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v44 + 79) = self->_minSinrDbx2;
    *(v44 + 344) |= 0x10u;
  }

  if ([(CellularLteRsrpRsrqSinrHist *)self sinr0sCount])
  {
    [v44 clearSinr0s];
    sinr0sCount = [(CellularLteRsrpRsrqSinrHist *)self sinr0sCount];
    if (sinr0sCount)
    {
      v19 = sinr0sCount;
      for (n = 0; n != v19; ++n)
      {
        [v44 addSinr0:{-[CellularLteRsrpRsrqSinrHist sinr0AtIndex:](self, "sinr0AtIndex:", n)}];
      }
    }
  }

  if ([(CellularLteRsrpRsrqSinrHist *)self sinr1sCount])
  {
    [v44 clearSinr1s];
    sinr1sCount = [(CellularLteRsrpRsrqSinrHist *)self sinr1sCount];
    if (sinr1sCount)
    {
      v22 = sinr1sCount;
      for (ii = 0; ii != v22; ++ii)
      {
        [v44 addSinr1:{-[CellularLteRsrpRsrqSinrHist sinr1AtIndex:](self, "sinr1AtIndex:", ii)}];
      }
    }
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v44 + 85) = self->_subsId;
    *(v44 + 344) |= 0x80u;
  }

  if ([(CellularLteRsrpRsrqSinrHist *)self rsrp2sCount])
  {
    [v44 clearRsrp2s];
    rsrp2sCount = [(CellularLteRsrpRsrqSinrHist *)self rsrp2sCount];
    if (rsrp2sCount)
    {
      v25 = rsrp2sCount;
      for (jj = 0; jj != v25; ++jj)
      {
        [v44 addRsrp2:{-[CellularLteRsrpRsrqSinrHist rsrp2AtIndex:](self, "rsrp2AtIndex:", jj)}];
      }
    }
  }

  if ([(CellularLteRsrpRsrqSinrHist *)self rsrp3sCount])
  {
    [v44 clearRsrp3s];
    rsrp3sCount = [(CellularLteRsrpRsrqSinrHist *)self rsrp3sCount];
    if (rsrp3sCount)
    {
      v28 = rsrp3sCount;
      for (kk = 0; kk != v28; ++kk)
      {
        [v44 addRsrp3:{-[CellularLteRsrpRsrqSinrHist rsrp3AtIndex:](self, "rsrp3AtIndex:", kk)}];
      }
    }
  }

  if ([(CellularLteRsrpRsrqSinrHist *)self rsrq2sCount])
  {
    [v44 clearRsrq2s];
    rsrq2sCount = [(CellularLteRsrpRsrqSinrHist *)self rsrq2sCount];
    if (rsrq2sCount)
    {
      v31 = rsrq2sCount;
      for (mm = 0; mm != v31; ++mm)
      {
        [v44 addRsrq2:{-[CellularLteRsrpRsrqSinrHist rsrq2AtIndex:](self, "rsrq2AtIndex:", mm)}];
      }
    }
  }

  if ([(CellularLteRsrpRsrqSinrHist *)self rsrq3sCount])
  {
    [v44 clearRsrq3s];
    rsrq3sCount = [(CellularLteRsrpRsrqSinrHist *)self rsrq3sCount];
    if (rsrq3sCount)
    {
      v34 = rsrq3sCount;
      for (nn = 0; nn != v34; ++nn)
      {
        [v44 addRsrq3:{-[CellularLteRsrpRsrqSinrHist rsrq3AtIndex:](self, "rsrq3AtIndex:", nn)}];
      }
    }
  }

  if ([(CellularLteRsrpRsrqSinrHist *)self sinr2sCount])
  {
    [v44 clearSinr2s];
    sinr2sCount = [(CellularLteRsrpRsrqSinrHist *)self sinr2sCount];
    if (sinr2sCount)
    {
      v37 = sinr2sCount;
      for (i1 = 0; i1 != v37; ++i1)
      {
        [v44 addSinr2:{-[CellularLteRsrpRsrqSinrHist sinr2AtIndex:](self, "sinr2AtIndex:", i1)}];
      }
    }
  }

  if ([(CellularLteRsrpRsrqSinrHist *)self sinr3sCount])
  {
    [v44 clearSinr3s];
    sinr3sCount = [(CellularLteRsrpRsrqSinrHist *)self sinr3sCount];
    if (sinr3sCount)
    {
      v40 = sinr3sCount;
      for (i2 = 0; i2 != v40; ++i2)
      {
        [v44 addSinr3:{-[CellularLteRsrpRsrqSinrHist sinr3AtIndex:](self, "sinr3AtIndex:", i2)}];
      }
    }
  }

  v42 = self->_has;
  v43 = v44;
  if ((v42 & 0x20) != 0)
  {
    *(v44 + 80) = self->_numSubs;
    *(v44 + 344) |= 0x20u;
    v42 = self->_has;
  }

  if ((v42 & 0x40) != 0)
  {
    *(v44 + 84) = self->_psPref;
    *(v44 + 344) |= 0x40u;
  }

  if (self->_plmn)
  {
    [v44 setPlmn:?];
    v43 = v44;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[37] = self->_timestamp;
    *(v5 + 344) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 76) = self->_duration;
  *(v5 + 344) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 77) = self->_minRsrpDbm;
    *(v5 + 344) |= 4u;
  }

LABEL_5:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 8) != 0)
  {
    v6[78] = self->_minRsrqDb;
    *(v6 + 344) |= 8u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x10) != 0)
  {
    v6[79] = self->_minSinrDbx2;
    *(v6 + 344) |= 0x10u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x80000000) != 0)
  {
    v6[85] = self->_subsId;
    *(v6 + 344) |= 0x80u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    v6[80] = self->_numSubs;
    *(v6 + 344) |= 0x20u;
    v8 = self->_has;
  }

  if ((v8 & 0x40) != 0)
  {
    v6[84] = self->_psPref;
    *(v6 + 344) |= 0x40u;
  }

  v9 = [(NSData *)self->_plmn copyWithZone:zone];
  v10 = *(v6 + 41);
  *(v6 + 41) = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = equalCopy[344];
  if (*&self->_has)
  {
    if ((equalCopy[344] & 1) == 0 || self->_timestamp != *(equalCopy + 37))
    {
      goto LABEL_46;
    }
  }

  else if (equalCopy[344])
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[344] & 2) == 0 || self->_duration != *(equalCopy + 76))
    {
      goto LABEL_46;
    }
  }

  else if ((equalCopy[344] & 2) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[344] & 4) == 0 || self->_minRsrpDbm != *(equalCopy + 77))
    {
      goto LABEL_46;
    }
  }

  else if ((equalCopy[344] & 4) != 0)
  {
    goto LABEL_46;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_46;
  }

  v6 = equalCopy[344];
  if ((*&self->_has & 8) != 0)
  {
    if ((equalCopy[344] & 8) == 0 || self->_minRsrqDb != *(equalCopy + 78))
    {
      goto LABEL_46;
    }
  }

  else if ((equalCopy[344] & 8) != 0)
  {
    goto LABEL_46;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_46;
  }

  v7 = equalCopy[344];
  if ((*&self->_has & 0x10) != 0)
  {
    if ((equalCopy[344] & 0x10) == 0 || self->_minSinrDbx2 != *(equalCopy + 79))
    {
      goto LABEL_46;
    }
  }

  else if ((equalCopy[344] & 0x10) != 0)
  {
    goto LABEL_46;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_46;
  }

  v8 = equalCopy[344];
  if ((*&self->_has & 0x80000000) != 0)
  {
    if ((v8 & 0x80000000) == 0 || self->_subsId != *(equalCopy + 85))
    {
      goto LABEL_46;
    }
  }

  else if (v8 < 0)
  {
    goto LABEL_46;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_46;
  }

  v9 = equalCopy[344];
  if ((*&self->_has & 0x20) != 0)
  {
    if ((equalCopy[344] & 0x20) == 0 || self->_numSubs != *(equalCopy + 80))
    {
      goto LABEL_46;
    }
  }

  else if ((equalCopy[344] & 0x20) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 0x40) == 0)
  {
    if ((equalCopy[344] & 0x40) == 0)
    {
      goto LABEL_55;
    }

LABEL_46:
    v10 = 0;
    goto LABEL_47;
  }

  if ((equalCopy[344] & 0x40) == 0 || self->_psPref != *(equalCopy + 84))
  {
    goto LABEL_46;
  }

LABEL_55:
  plmn = self->_plmn;
  if (plmn | *(equalCopy + 41))
  {
    v10 = [(NSData *)plmn isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_47:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v24 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v23 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v24 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v23 = 2654435761 * self->_duration;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v22 = 2654435761 * self->_minRsrpDbm;
    goto LABEL_8;
  }

LABEL_7:
  v22 = 0;
LABEL_8:
  v21 = PBRepeatedUInt32Hash();
  v20 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 8) != 0)
  {
    v19 = 2654435761 * self->_minRsrqDb;
  }

  else
  {
    v19 = 0;
  }

  v18 = PBRepeatedUInt32Hash();
  v17 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x10) != 0)
  {
    v16 = 2654435761 * self->_minSinrDbx2;
  }

  else
  {
    v16 = 0;
  }

  v15 = PBRepeatedUInt32Hash();
  v3 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x80000000) != 0)
  {
    v4 = 2654435761 * self->_subsId;
  }

  else
  {
    v4 = 0;
  }

  v5 = PBRepeatedUInt32Hash();
  v6 = PBRepeatedUInt32Hash();
  v7 = PBRepeatedUInt32Hash();
  v8 = PBRepeatedUInt32Hash();
  v9 = PBRepeatedUInt32Hash();
  v10 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x20) != 0)
  {
    v11 = 2654435761 * self->_numSubs;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v11 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v12 = 2654435761 * self->_psPref;
LABEL_22:
  v13 = v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  return v13 ^ v11 ^ v12 ^ [(NSData *)self->_plmn hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[344];
  if (v5)
  {
    self->_timestamp = *(fromCopy + 37);
    *&self->_has |= 1u;
    v5 = fromCopy[344];
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((fromCopy[344] & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(fromCopy + 76);
  *&self->_has |= 2u;
  if ((fromCopy[344] & 4) != 0)
  {
LABEL_4:
    self->_minRsrpDbm = *(fromCopy + 77);
    *&self->_has |= 4u;
  }

LABEL_5:
  v44 = fromCopy;
  rsrp0sCount = [fromCopy rsrp0sCount];
  if (rsrp0sCount)
  {
    v7 = rsrp0sCount;
    for (i = 0; i != v7; ++i)
    {
      -[CellularLteRsrpRsrqSinrHist addRsrp0:](self, "addRsrp0:", [v44 rsrp0AtIndex:i]);
    }
  }

  rsrp1sCount = [v44 rsrp1sCount];
  if (rsrp1sCount)
  {
    v10 = rsrp1sCount;
    for (j = 0; j != v10; ++j)
    {
      -[CellularLteRsrpRsrqSinrHist addRsrp1:](self, "addRsrp1:", [v44 rsrp1AtIndex:j]);
    }
  }

  if ((v44[344] & 8) != 0)
  {
    self->_minRsrqDb = *(v44 + 78);
    *&self->_has |= 8u;
  }

  rsrq0sCount = [v44 rsrq0sCount];
  if (rsrq0sCount)
  {
    v13 = rsrq0sCount;
    for (k = 0; k != v13; ++k)
    {
      -[CellularLteRsrpRsrqSinrHist addRsrq0:](self, "addRsrq0:", [v44 rsrq0AtIndex:k]);
    }
  }

  rsrq1sCount = [v44 rsrq1sCount];
  if (rsrq1sCount)
  {
    v16 = rsrq1sCount;
    for (m = 0; m != v16; ++m)
    {
      -[CellularLteRsrpRsrqSinrHist addRsrq1:](self, "addRsrq1:", [v44 rsrq1AtIndex:m]);
    }
  }

  if ((v44[344] & 0x10) != 0)
  {
    self->_minSinrDbx2 = *(v44 + 79);
    *&self->_has |= 0x10u;
  }

  sinr0sCount = [v44 sinr0sCount];
  if (sinr0sCount)
  {
    v19 = sinr0sCount;
    for (n = 0; n != v19; ++n)
    {
      -[CellularLteRsrpRsrqSinrHist addSinr0:](self, "addSinr0:", [v44 sinr0AtIndex:n]);
    }
  }

  sinr1sCount = [v44 sinr1sCount];
  if (sinr1sCount)
  {
    v22 = sinr1sCount;
    for (ii = 0; ii != v22; ++ii)
    {
      -[CellularLteRsrpRsrqSinrHist addSinr1:](self, "addSinr1:", [v44 sinr1AtIndex:ii]);
    }
  }

  if (v44[344] < 0)
  {
    self->_subsId = *(v44 + 85);
    *&self->_has |= 0x80u;
  }

  rsrp2sCount = [v44 rsrp2sCount];
  if (rsrp2sCount)
  {
    v25 = rsrp2sCount;
    for (jj = 0; jj != v25; ++jj)
    {
      -[CellularLteRsrpRsrqSinrHist addRsrp2:](self, "addRsrp2:", [v44 rsrp2AtIndex:jj]);
    }
  }

  rsrp3sCount = [v44 rsrp3sCount];
  if (rsrp3sCount)
  {
    v28 = rsrp3sCount;
    for (kk = 0; kk != v28; ++kk)
    {
      -[CellularLteRsrpRsrqSinrHist addRsrp3:](self, "addRsrp3:", [v44 rsrp3AtIndex:kk]);
    }
  }

  rsrq2sCount = [v44 rsrq2sCount];
  if (rsrq2sCount)
  {
    v31 = rsrq2sCount;
    for (mm = 0; mm != v31; ++mm)
    {
      -[CellularLteRsrpRsrqSinrHist addRsrq2:](self, "addRsrq2:", [v44 rsrq2AtIndex:mm]);
    }
  }

  rsrq3sCount = [v44 rsrq3sCount];
  if (rsrq3sCount)
  {
    v34 = rsrq3sCount;
    for (nn = 0; nn != v34; ++nn)
    {
      -[CellularLteRsrpRsrqSinrHist addRsrq3:](self, "addRsrq3:", [v44 rsrq3AtIndex:nn]);
    }
  }

  sinr2sCount = [v44 sinr2sCount];
  if (sinr2sCount)
  {
    v37 = sinr2sCount;
    for (i1 = 0; i1 != v37; ++i1)
    {
      -[CellularLteRsrpRsrqSinrHist addSinr2:](self, "addSinr2:", [v44 sinr2AtIndex:i1]);
    }
  }

  sinr3sCount = [v44 sinr3sCount];
  if (sinr3sCount)
  {
    v40 = sinr3sCount;
    for (i2 = 0; i2 != v40; ++i2)
    {
      -[CellularLteRsrpRsrqSinrHist addSinr3:](self, "addSinr3:", [v44 sinr3AtIndex:i2]);
    }
  }

  v42 = v44;
  v43 = v44[344];
  if ((v43 & 0x20) != 0)
  {
    self->_numSubs = *(v44 + 80);
    *&self->_has |= 0x20u;
    v43 = v44[344];
  }

  if ((v43 & 0x40) != 0)
  {
    self->_psPref = *(v44 + 84);
    *&self->_has |= 0x40u;
  }

  if (*(v44 + 41))
  {
    [(CellularLteRsrpRsrqSinrHist *)self setPlmn:?];
    v42 = v44;
  }
}

@end