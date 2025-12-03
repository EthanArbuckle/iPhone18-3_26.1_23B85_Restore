@interface BorderDbStat
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)boundDurationSecsAtIndex:(unint64_t)index;
- (unsigned)fetchStateDurationSecsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasFetchCntApWakes:(BOOL)wakes;
- (void)setHasMaxLifeSecs:(BOOL)secs;
- (void)setHasMinLifeSecs:(BOOL)secs;
- (void)setHasTotalDbLifeSecs:(BOOL)secs;
- (void)writeTo:(id)to;
@end

@implementation BorderDbStat

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = BorderDbStat;
  [(BorderDbStat *)&v3 dealloc];
}

- (void)setHasTotalDbLifeSecs:(BOOL)secs
{
  if (secs)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasMinLifeSecs:(BOOL)secs
{
  if (secs)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMaxLifeSecs:(BOOL)secs
{
  if (secs)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasFetchCntApWakes:(BOOL)wakes
{
  if (wakes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)fetchStateDurationSecsAtIndex:(unint64_t)index
{
  p_fetchStateDurationSecs = &self->_fetchStateDurationSecs;
  count = self->_fetchStateDurationSecs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_fetchStateDurationSecs->list[index];
}

- (unsigned)boundDurationSecsAtIndex:(unint64_t)index
{
  p_boundDurationSecs = &self->_boundDurationSecs;
  count = self->_boundDurationSecs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_boundDurationSecs->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BorderDbStat;
  v3 = [(BorderDbStat *)&v7 description];
  dictionaryRepresentation = [(BorderDbStat *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_totalDbLifeSecs];
    [v3 setObject:v9 forKey:@"total_db_life_secs"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_minLifeSecs];
  [v3 setObject:v10 forKey:@"min_life_secs"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v11 = [NSNumber numberWithUnsignedInt:self->_maxLifeSecs];
  [v3 setObject:v11 forKey:@"max_life_secs"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v12 = [NSNumber numberWithUnsignedInt:self->_fetchCnt];
  [v3 setObject:v12 forKey:@"fetch_cnt"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithUnsignedInt:self->_fetchCntApWakes];
    [v3 setObject:v5 forKey:@"fetch_cnt_ap_wakes"];
  }

LABEL_7:
  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"fetch_state_duration_secs"];

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"bound_duration_secs"];

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v16 = toCopy;
  if ((has & 0x10) != 0)
  {
    totalDbLifeSecs = self->_totalDbLifeSecs;
    PBDataWriterWriteUint32Field();
    toCopy = v16;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  minLifeSecs = self->_minLifeSecs;
  PBDataWriterWriteUint32Field();
  toCopy = v16;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  maxLifeSecs = self->_maxLifeSecs;
  PBDataWriterWriteUint32Field();
  toCopy = v16;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  fetchCnt = self->_fetchCnt;
  PBDataWriterWriteUint32Field();
  toCopy = v16;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    fetchCntApWakes = self->_fetchCntApWakes;
    PBDataWriterWriteUint32Field();
    toCopy = v16;
  }

LABEL_7:
  if (self->_fetchStateDurationSecs.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_fetchStateDurationSecs.list[v7];
      PBDataWriterWriteUint32Field();
      toCopy = v16;
      ++v7;
    }

    while (v7 < self->_fetchStateDurationSecs.count);
  }

  p_boundDurationSecs = &self->_boundDurationSecs;
  if (p_boundDurationSecs->count)
  {
    v10 = 0;
    do
    {
      v11 = p_boundDurationSecs->list[v10];
      PBDataWriterWriteUint32Field();
      toCopy = v16;
      ++v10;
    }

    while (v10 < p_boundDurationSecs->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    toCopy[18] = self->_totalDbLifeSecs;
    *(toCopy + 76) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  toCopy[17] = self->_minLifeSecs;
  *(toCopy + 76) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_21:
    toCopy[14] = self->_fetchCnt;
    *(toCopy + 76) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_20:
  toCopy[16] = self->_maxLifeSecs;
  *(toCopy + 76) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    toCopy[15] = self->_fetchCntApWakes;
    *(toCopy + 76) |= 2u;
  }

LABEL_7:
  v12 = toCopy;
  if ([(BorderDbStat *)self fetchStateDurationSecsCount])
  {
    [v12 clearFetchStateDurationSecs];
    fetchStateDurationSecsCount = [(BorderDbStat *)self fetchStateDurationSecsCount];
    if (fetchStateDurationSecsCount)
    {
      v7 = fetchStateDurationSecsCount;
      for (i = 0; i != v7; ++i)
      {
        [v12 addFetchStateDurationSecs:{-[BorderDbStat fetchStateDurationSecsAtIndex:](self, "fetchStateDurationSecsAtIndex:", i)}];
      }
    }
  }

  if ([(BorderDbStat *)self boundDurationSecsCount])
  {
    [v12 clearBoundDurationSecs];
    boundDurationSecsCount = [(BorderDbStat *)self boundDurationSecsCount];
    if (boundDurationSecsCount)
    {
      v10 = boundDurationSecsCount;
      for (j = 0; j != v10; ++j)
      {
        [v12 addBoundDurationSecs:{-[BorderDbStat boundDurationSecsAtIndex:](self, "boundDurationSecsAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 18) = self->_totalDbLifeSecs;
    *(v4 + 76) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 17) = self->_minLifeSecs;
  *(v4 + 76) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v4 + 14) = self->_fetchCnt;
    *(v4 + 76) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v4 + 16) = self->_maxLifeSecs;
  *(v4 + 76) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    *(v4 + 15) = self->_fetchCntApWakes;
    *(v4 + 76) |= 2u;
  }

LABEL_7:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = *(equalCopy + 76);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 76) & 0x10) == 0 || self->_totalDbLifeSecs != *(equalCopy + 18))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 76) & 0x10) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 76) & 8) == 0 || self->_minLifeSecs != *(equalCopy + 17))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 76) & 8) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 76) & 4) == 0 || self->_maxLifeSecs != *(equalCopy + 16))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 76) & 4) != 0)
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 76) & 1) == 0 || self->_fetchCnt != *(equalCopy + 14))
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 76))
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 76) & 2) == 0 || self->_fetchCntApWakes != *(equalCopy + 15))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 76) & 2) != 0)
  {
    goto LABEL_29;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_29:
    IsEqual = 0;
    goto LABEL_30;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_30:

  return IsEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v2 = 2654435761 * self->_totalDbLifeSecs;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_minLifeSecs;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_maxLifeSecs;
    if (*&self->_has)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_fetchCnt;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_fetchCntApWakes;
LABEL_12:
  v7 = v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ PBRepeatedUInt32Hash();
  return v7 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 76);
  if ((v5 & 0x10) != 0)
  {
    self->_totalDbLifeSecs = *(fromCopy + 18);
    *&self->_has |= 0x10u;
    v5 = *(fromCopy + 76);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(fromCopy + 76) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_minLifeSecs = *(fromCopy + 17);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 76);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_maxLifeSecs = *(fromCopy + 16);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 76);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  self->_fetchCnt = *(fromCopy + 14);
  *&self->_has |= 1u;
  if ((*(fromCopy + 76) & 2) != 0)
  {
LABEL_6:
    self->_fetchCntApWakes = *(fromCopy + 15);
    *&self->_has |= 2u;
  }

LABEL_7:
  v12 = fromCopy;
  fetchStateDurationSecsCount = [fromCopy fetchStateDurationSecsCount];
  if (fetchStateDurationSecsCount)
  {
    v7 = fetchStateDurationSecsCount;
    for (i = 0; i != v7; ++i)
    {
      -[BorderDbStat addFetchStateDurationSecs:](self, "addFetchStateDurationSecs:", [v12 fetchStateDurationSecsAtIndex:i]);
    }
  }

  boundDurationSecsCount = [v12 boundDurationSecsCount];
  if (boundDurationSecsCount)
  {
    v10 = boundDurationSecsCount;
    for (j = 0; j != v10; ++j)
    {
      -[BorderDbStat addBoundDurationSecs:](self, "addBoundDurationSecs:", [v12 boundDurationSecsAtIndex:j]);
    }
  }
}

@end