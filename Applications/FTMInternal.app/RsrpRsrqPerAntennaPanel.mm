@interface RsrpRsrqPerAntennaPanel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)rsrpAtIndex:(unint64_t)index;
- (unsigned)rsrqAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasMinRsrpDbm:(BOOL)dbm;
- (void)setHasMinRsrqDb:(BOOL)db;
- (void)writeTo:(id)to;
@end

@implementation RsrpRsrqPerAntennaPanel

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = RsrpRsrqPerAntennaPanel;
  [(RsrpRsrqPerAntennaPanel *)&v3 dealloc];
}

- (void)setHasMinRsrpDbm:(BOOL)dbm
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

- (unsigned)rsrpAtIndex:(unint64_t)index
{
  p_rsrps = &self->_rsrps;
  count = self->_rsrps.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rsrps->list[index];
}

- (void)setHasMinRsrqDb:(BOOL)db
{
  if (db)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (unsigned)rsrqAtIndex:(unint64_t)index
{
  p_rsrqs = &self->_rsrqs;
  count = self->_rsrqs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rsrqs->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RsrpRsrqPerAntennaPanel;
  v3 = [(RsrpRsrqPerAntennaPanel *)&v7 description];
  dictionaryRepresentation = [(RsrpRsrqPerAntennaPanel *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_antennaPanelNum];
    [v3 setObject:v5 forKey:@"antenna_panel_num"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithInt:self->_minRsrpDbm];
    [v3 setObject:v6 forKey:@"min_rsrp_dbm"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"rsrp"];

  if ((*&self->_has & 4) != 0)
  {
    v8 = [NSNumber numberWithInt:self->_minRsrqDb];
    [v3 setObject:v8 forKey:@"min_rsrq_db"];
  }

  v9 = PBRepeatedUInt32NSArray();
  [v3 setObject:v9 forKey:@"rsrq"];

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    antennaPanelNum = self->_antennaPanelNum;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    minRsrpDbm = self->_minRsrpDbm;
    PBDataWriterWriteSint32Field();
  }

  if (self->_rsrps.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rsrps.count)
    {
      v8 = 0;
      do
      {
        v9 = self->_rsrps.list[v8];
        PBDataWriterWriteUint32Field();
        ++v8;
      }

      while (v8 < self->_rsrps.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 4) != 0)
  {
    minRsrqDb = self->_minRsrqDb;
    PBDataWriterWriteSint32Field();
  }

  p_rsrqs = &self->_rsrqs;
  if (p_rsrqs->count)
  {
    PBDataWriterPlaceMark();
    if (p_rsrqs->count)
    {
      v12 = 0;
      do
      {
        v13 = p_rsrqs->list[v12];
        PBDataWriterWriteUint32Field();
        ++v12;
      }

      while (v12 < p_rsrqs->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[14] = self->_antennaPanelNum;
    *(toCopy + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[15] = self->_minRsrpDbm;
    *(toCopy + 68) |= 2u;
  }

  v12 = toCopy;
  if ([(RsrpRsrqPerAntennaPanel *)self rsrpsCount])
  {
    [v12 clearRsrps];
    rsrpsCount = [(RsrpRsrqPerAntennaPanel *)self rsrpsCount];
    if (rsrpsCount)
    {
      v7 = rsrpsCount;
      for (i = 0; i != v7; ++i)
      {
        [v12 addRsrp:{-[RsrpRsrqPerAntennaPanel rsrpAtIndex:](self, "rsrpAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v12 + 16) = self->_minRsrqDb;
    *(v12 + 68) |= 4u;
  }

  if ([(RsrpRsrqPerAntennaPanel *)self rsrqsCount])
  {
    [v12 clearRsrqs];
    rsrqsCount = [(RsrpRsrqPerAntennaPanel *)self rsrqsCount];
    if (rsrqsCount)
    {
      v10 = rsrqsCount;
      for (j = 0; j != v10; ++j)
      {
        [v12 addRsrq:{-[RsrpRsrqPerAntennaPanel rsrqAtIndex:](self, "rsrqAtIndex:", j)}];
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
    v4[14] = self->_antennaPanelNum;
    *(v4 + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[15] = self->_minRsrpDbm;
    *(v4 + 68) |= 2u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 4) != 0)
  {
    v5[16] = self->_minRsrqDb;
    *(v5 + 68) |= 4u;
  }

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
    if ((*(equalCopy + 68) & 1) == 0 || self->_antennaPanelNum != *(equalCopy + 14))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_minRsrpDbm != *(equalCopy + 15))
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

  v6 = *(equalCopy + 68);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 68) & 4) == 0 || self->_minRsrqDb != *(equalCopy + 16))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 68) & 4) != 0)
  {
    goto LABEL_19;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_20:

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_antennaPanelNum;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_minRsrpDbm;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_minRsrqDb;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 68);
  if (v5)
  {
    self->_antennaPanelNum = *(fromCopy + 14);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 68);
  }

  if ((v5 & 2) != 0)
  {
    self->_minRsrpDbm = *(fromCopy + 15);
    *&self->_has |= 2u;
  }

  v12 = fromCopy;
  rsrpsCount = [fromCopy rsrpsCount];
  if (rsrpsCount)
  {
    v7 = rsrpsCount;
    for (i = 0; i != v7; ++i)
    {
      -[RsrpRsrqPerAntennaPanel addRsrp:](self, "addRsrp:", [v12 rsrpAtIndex:i]);
    }
  }

  if ((v12[17] & 4) != 0)
  {
    self->_minRsrqDb = v12[16];
    *&self->_has |= 4u;
  }

  rsrqsCount = [v12 rsrqsCount];
  if (rsrqsCount)
  {
    v10 = rsrqsCount;
    for (j = 0; j != v10; ++j)
    {
      -[RsrpRsrqPerAntennaPanel addRsrq:](self, "addRsrq:", [v12 rsrqAtIndex:j]);
    }
  }
}

@end