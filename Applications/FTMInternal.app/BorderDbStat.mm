@interface BorderDbStat
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)boundDurationSecsAtIndex:(unint64_t)a3;
- (unsigned)fetchStateDurationSecsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasFetchCntApWakes:(BOOL)a3;
- (void)setHasMaxLifeSecs:(BOOL)a3;
- (void)setHasMinLifeSecs:(BOOL)a3;
- (void)setHasTotalDbLifeSecs:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasTotalDbLifeSecs:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasMinLifeSecs:(BOOL)a3
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

- (void)setHasMaxLifeSecs:(BOOL)a3
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

- (void)setHasFetchCntApWakes:(BOOL)a3
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

- (unsigned)fetchStateDurationSecsAtIndex:(unint64_t)a3
{
  p_fetchStateDurationSecs = &self->_fetchStateDurationSecs;
  count = self->_fetchStateDurationSecs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_fetchStateDurationSecs->list[a3];
}

- (unsigned)boundDurationSecsAtIndex:(unint64_t)a3
{
  p_boundDurationSecs = &self->_boundDurationSecs;
  count = self->_boundDurationSecs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_boundDurationSecs->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BorderDbStat;
  v3 = [(BorderDbStat *)&v7 description];
  v4 = [(BorderDbStat *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v16 = v4;
  if ((has & 0x10) != 0)
  {
    totalDbLifeSecs = self->_totalDbLifeSecs;
    PBDataWriterWriteUint32Field();
    v4 = v16;
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
  v4 = v16;
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
  v4 = v16;
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
  v4 = v16;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    fetchCntApWakes = self->_fetchCntApWakes;
    PBDataWriterWriteUint32Field();
    v4 = v16;
  }

LABEL_7:
  if (self->_fetchStateDurationSecs.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_fetchStateDurationSecs.list[v7];
      PBDataWriterWriteUint32Field();
      v4 = v16;
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
      v4 = v16;
      ++v10;
    }

    while (v10 < p_boundDurationSecs->count);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[18] = self->_totalDbLifeSecs;
    *(v4 + 76) |= 0x10u;
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

  v4[17] = self->_minLifeSecs;
  *(v4 + 76) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_21:
    v4[14] = self->_fetchCnt;
    *(v4 + 76) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_20:
  v4[16] = self->_maxLifeSecs;
  *(v4 + 76) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    v4[15] = self->_fetchCntApWakes;
    *(v4 + 76) |= 2u;
  }

LABEL_7:
  v12 = v4;
  if ([(BorderDbStat *)self fetchStateDurationSecsCount])
  {
    [v12 clearFetchStateDurationSecs];
    v6 = [(BorderDbStat *)self fetchStateDurationSecsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v12 addFetchStateDurationSecs:{-[BorderDbStat fetchStateDurationSecsAtIndex:](self, "fetchStateDurationSecsAtIndex:", i)}];
      }
    }
  }

  if ([(BorderDbStat *)self boundDurationSecsCount])
  {
    [v12 clearBoundDurationSecs];
    v9 = [(BorderDbStat *)self boundDurationSecsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v12 addBoundDurationSecs:{-[BorderDbStat boundDurationSecsAtIndex:](self, "boundDurationSecsAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = *(v4 + 76);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 76) & 0x10) == 0 || self->_totalDbLifeSecs != *(v4 + 18))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 76) & 0x10) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 76) & 8) == 0 || self->_minLifeSecs != *(v4 + 17))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 76) & 8) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 76) & 4) == 0 || self->_maxLifeSecs != *(v4 + 16))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 76) & 4) != 0)
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 76) & 1) == 0 || self->_fetchCnt != *(v4 + 14))
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 76))
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 76) & 2) == 0 || self->_fetchCntApWakes != *(v4 + 15))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 76) & 2) != 0)
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 76);
  if ((v5 & 0x10) != 0)
  {
    self->_totalDbLifeSecs = *(v4 + 18);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 76);
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

  else if ((*(v4 + 76) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_minLifeSecs = *(v4 + 17);
  *&self->_has |= 8u;
  v5 = *(v4 + 76);
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
  self->_maxLifeSecs = *(v4 + 16);
  *&self->_has |= 4u;
  v5 = *(v4 + 76);
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
  self->_fetchCnt = *(v4 + 14);
  *&self->_has |= 1u;
  if ((*(v4 + 76) & 2) != 0)
  {
LABEL_6:
    self->_fetchCntApWakes = *(v4 + 15);
    *&self->_has |= 2u;
  }

LABEL_7:
  v12 = v4;
  v6 = [v4 fetchStateDurationSecsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[BorderDbStat addFetchStateDurationSecs:](self, "addFetchStateDurationSecs:", [v12 fetchStateDurationSecsAtIndex:i]);
    }
  }

  v9 = [v12 boundDurationSecsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[BorderDbStat addBoundDurationSecs:](self, "addBoundDurationSecs:", [v12 boundDurationSecsAtIndex:j]);
    }
  }
}

@end