@interface RxHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAgcMode:(id)mode;
- (int)StringAsAntenna:(id)antenna;
- (int)agcMode;
- (int)antenna;
- (unint64_t)hash;
- (unsigned)numRxLevelAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAntenna:(BOOL)antenna;
- (void)setHasMinRxLevel:(BOOL)level;
- (void)setHasWorkMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation RxHist

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = RxHist;
  [(RxHist *)&v3 dealloc];
}

- (int)agcMode
{
  if (*&self->_has)
  {
    return self->_agcMode;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAgcMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"FREQ_SCAN"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"INIT_ACQ"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"TRAFFIC"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"PBCH"])
  {
    v4 = 3;
  }

  else if ([modeCopy isEqualToString:@"INTER_FREQ"])
  {
    v4 = 4;
  }

  else if ([modeCopy isEqualToString:@"ONLINE_DRX"])
  {
    v4 = 5;
  }

  else if ([modeCopy isEqualToString:@"OFFLINE_DRX"])
  {
    v4 = 6;
  }

  else if ([modeCopy isEqualToString:@"OFF"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)antenna
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_antenna;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAntenna:(BOOL)antenna
{
  if (antenna)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsAntenna:(id)antenna
{
  antennaCopy = antenna;
  if ([antennaCopy isEqualToString:@"RX_0"])
  {
    v4 = 0;
  }

  else if ([antennaCopy isEqualToString:@"RX_1"])
  {
    v4 = 1;
  }

  else if ([antennaCopy isEqualToString:@"RX_BOTH"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasWorkMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMinRxLevel:(BOOL)level
{
  if (level)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (unsigned)numRxLevelAtIndex:(unint64_t)index
{
  p_numRxLevels = &self->_numRxLevels;
  count = self->_numRxLevels.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_numRxLevels->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RxHist;
  v3 = [(RxHist *)&v7 description];
  dictionaryRepresentation = [(RxHist *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    agcMode = self->_agcMode;
    if (agcMode < 0x10 && ((0x807Fu >> agcMode) & 1) != 0)
    {
      v6 = *(&off_100318300 + agcMode);
    }

    else
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_agcMode];
    }

    [v3 setObject:v6 forKey:@"agc_mode"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    antenna = self->_antenna;
    if (antenna >= 3)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_antenna];
    }

    else
    {
      v8 = *(&off_100318380 + antenna);
    }

    [v3 setObject:v8 forKey:@"antenna"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_workMode];
    [v3 setObject:v9 forKey:@"work_mode"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v10 = [NSNumber numberWithInt:self->_minRxLevel];
    [v3 setObject:v10 forKey:@"min_rx_level"];
  }

  v11 = PBRepeatedUInt32NSArray();
  [v3 setObject:v11 forKey:@"num_rx_level"];

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    agcMode = self->_agcMode;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  antenna = self->_antenna;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_14:
  workMode = self->_workMode;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    minRxLevel = self->_minRxLevel;
    PBDataWriterWriteSint32Field();
  }

LABEL_6:
  p_numRxLevels = &self->_numRxLevels;
  if (p_numRxLevels->count)
  {
    PBDataWriterPlaceMark();
    if (p_numRxLevels->count)
    {
      v8 = 0;
      do
      {
        v9 = p_numRxLevels->list[v8];
        PBDataWriterWriteUint32Field();
        ++v8;
      }

      while (v8 < p_numRxLevels->count);
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
    toCopy[8] = self->_agcMode;
    *(toCopy + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      toCopy[11] = self->_workMode;
      *(toCopy + 48) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[9] = self->_antenna;
  *(toCopy + 48) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    toCopy[10] = self->_minRxLevel;
    *(toCopy + 48) |= 4u;
  }

LABEL_6:
  v9 = toCopy;
  if ([(RxHist *)self numRxLevelsCount])
  {
    [v9 clearNumRxLevels];
    numRxLevelsCount = [(RxHist *)self numRxLevelsCount];
    if (numRxLevelsCount)
    {
      v7 = numRxLevelsCount;
      for (i = 0; i != v7; ++i)
      {
        [v9 addNumRxLevel:{-[RxHist numRxLevelAtIndex:](self, "numRxLevelAtIndex:", i)}];
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
    *(v4 + 8) = self->_agcMode;
    *(v4 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v4 + 11) = self->_workMode;
      *(v4 + 48) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 9) = self->_antenna;
  *(v4 + 48) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v4 + 10) = self->_minRxLevel;
    *(v4 + 48) |= 4u;
  }

LABEL_6:
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_agcMode != *(equalCopy + 8))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_23:
    IsEqual = 0;
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_antenna != *(equalCopy + 9))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_workMode != *(equalCopy + 11))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_minRxLevel != *(equalCopy + 10))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_23;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_24:

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_agcMode;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_antenna;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5 ^ PBRepeatedUInt32Hash();
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_workMode;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_minRxLevel;
  return v3 ^ v2 ^ v4 ^ v5 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if (v5)
  {
    self->_agcMode = *(fromCopy + 8);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_antenna = *(fromCopy + 9);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 48);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_14:
  self->_workMode = *(fromCopy + 11);
  *&self->_has |= 8u;
  if ((*(fromCopy + 48) & 4) != 0)
  {
LABEL_5:
    self->_minRxLevel = *(fromCopy + 10);
    *&self->_has |= 4u;
  }

LABEL_6:
  v9 = fromCopy;
  numRxLevelsCount = [fromCopy numRxLevelsCount];
  if (numRxLevelsCount)
  {
    v7 = numRxLevelsCount;
    for (i = 0; i != v7; ++i)
    {
      -[RxHist addNumRxLevel:](self, "addNumRxLevel:", [v9 numRxLevelAtIndex:i]);
    }
  }
}

@end