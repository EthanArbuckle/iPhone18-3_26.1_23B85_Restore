@interface RsrpRsrqPerAntennaPanel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)rsrpAtIndex:(unint64_t)a3;
- (unsigned)rsrqAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasMinRsrpDbm:(BOOL)a3;
- (void)setHasMinRsrqDb:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasMinRsrpDbm:(BOOL)a3
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

- (unsigned)rsrpAtIndex:(unint64_t)a3
{
  p_rsrps = &self->_rsrps;
  count = self->_rsrps.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rsrps->list[a3];
}

- (void)setHasMinRsrqDb:(BOOL)a3
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

- (unsigned)rsrqAtIndex:(unint64_t)a3
{
  p_rsrqs = &self->_rsrqs;
  count = self->_rsrqs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rsrqs->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RsrpRsrqPerAntennaPanel;
  v3 = [(RsrpRsrqPerAntennaPanel *)&v7 description];
  v4 = [(RsrpRsrqPerAntennaPanel *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
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

  v12 = v4;
  if ([(RsrpRsrqPerAntennaPanel *)self rsrpsCount])
  {
    [v12 clearRsrps];
    v6 = [(RsrpRsrqPerAntennaPanel *)self rsrpsCount];
    if (v6)
    {
      v7 = v6;
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
    v9 = [(RsrpRsrqPerAntennaPanel *)self rsrqsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v12 addRsrq:{-[RsrpRsrqPerAntennaPanel rsrqAtIndex:](self, "rsrqAtIndex:", j)}];
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
    if ((*(v4 + 68) & 1) == 0 || self->_antennaPanelNum != *(v4 + 14))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0 || self->_minRsrpDbm != *(v4 + 15))
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

  v6 = *(v4 + 68);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 68) & 4) == 0 || self->_minRsrqDb != *(v4 + 16))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 68) & 4) != 0)
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 68);
  if (v5)
  {
    self->_antennaPanelNum = *(v4 + 14);
    *&self->_has |= 1u;
    v5 = *(v4 + 68);
  }

  if ((v5 & 2) != 0)
  {
    self->_minRsrpDbm = *(v4 + 15);
    *&self->_has |= 2u;
  }

  v12 = v4;
  v6 = [v4 rsrpsCount];
  if (v6)
  {
    v7 = v6;
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

  v9 = [v12 rsrqsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[RsrpRsrqPerAntennaPanel addRsrq:](self, "addRsrq:", [v12 rsrqAtIndex:j]);
    }
  }
}

@end