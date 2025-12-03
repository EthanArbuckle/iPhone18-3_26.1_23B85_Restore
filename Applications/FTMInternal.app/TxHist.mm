@interface TxHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChanType:(id)type;
- (int)chanType;
- (unint64_t)hash;
- (unsigned)numTxLevelAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasMinTxLevel:(BOOL)level;
- (void)setHasWorkMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation TxHist

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = TxHist;
  [(TxHist *)&v3 dealloc];
}

- (int)chanType
{
  if (*&self->_has)
  {
    return self->_chanType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsChanType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PUCCH"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"PUSCH"];
  }

  return v4;
}

- (void)setHasWorkMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMinTxLevel:(BOOL)level
{
  if (level)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)numTxLevelAtIndex:(unint64_t)index
{
  p_numTxLevels = &self->_numTxLevels;
  count = self->_numTxLevels.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_numTxLevels->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = TxHist;
  v3 = [(TxHist *)&v7 description];
  dictionaryRepresentation = [(TxHist *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    chanType = self->_chanType;
    if (chanType)
    {
      if (chanType == 1)
      {
        v6 = @"PUSCH";
      }

      else
      {
        v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_chanType];
      }
    }

    else
    {
      v6 = @"PUCCH";
    }

    [v3 setObject:v6 forKey:@"chan_type"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_workMode];
    [v3 setObject:v7 forKey:@"work_mode"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithInt:self->_minTxLevel];
    [v3 setObject:v8 forKey:@"min_tx_level"];
  }

  v9 = PBRepeatedUInt32NSArray();
  [v3 setObject:v9 forKey:@"num_tx_level"];

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    chanType = self->_chanType;
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

  workMode = self->_workMode;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    minTxLevel = self->_minTxLevel;
    PBDataWriterWriteSint32Field();
  }

LABEL_5:
  p_numTxLevels = &self->_numTxLevels;
  if (p_numTxLevels->count)
  {
    PBDataWriterPlaceMark();
    if (p_numTxLevels->count)
    {
      v8 = 0;
      do
      {
        v9 = p_numTxLevels->list[v8];
        PBDataWriterWriteUint32Field();
        ++v8;
      }

      while (v8 < p_numTxLevels->count);
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

LABEL_13:
    toCopy[10] = self->_workMode;
    *(toCopy + 44) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  toCopy[8] = self->_chanType;
  *(toCopy + 44) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    toCopy[9] = self->_minTxLevel;
    *(toCopy + 44) |= 2u;
  }

LABEL_5:
  v9 = toCopy;
  if ([(TxHist *)self numTxLevelsCount])
  {
    [v9 clearNumTxLevels];
    numTxLevelsCount = [(TxHist *)self numTxLevelsCount];
    if (numTxLevelsCount)
    {
      v7 = numTxLevelsCount;
      for (i = 0; i != v7; ++i)
      {
        [v9 addNumTxLevel:{-[TxHist numTxLevelAtIndex:](self, "numTxLevelAtIndex:", i)}];
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
    *(v4 + 10) = self->_workMode;
    *(v4 + 44) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v4 + 8) = self->_chanType;
  *(v4 + 44) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v4 + 9) = self->_minTxLevel;
    *(v4 + 44) |= 2u;
  }

LABEL_5:
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_chanType != *(equalCopy + 8))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 44))
  {
LABEL_18:
    IsEqual = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_workMode != *(equalCopy + 10))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_minTxLevel != *(equalCopy + 9))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_18;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_19:

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
    return v3 ^ v2 ^ v4 ^ PBRepeatedUInt32Hash();
  }

  v2 = 2654435761 * self->_chanType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_workMode;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_minTxLevel;
  return v3 ^ v2 ^ v4 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if (v5)
  {
    self->_chanType = *(fromCopy + 8);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 44);
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

  else if ((*(fromCopy + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_workMode = *(fromCopy + 10);
  *&self->_has |= 4u;
  if ((*(fromCopy + 44) & 2) != 0)
  {
LABEL_4:
    self->_minTxLevel = *(fromCopy + 9);
    *&self->_has |= 2u;
  }

LABEL_5:
  v9 = fromCopy;
  numTxLevelsCount = [fromCopy numTxLevelsCount];
  if (numTxLevelsCount)
  {
    v7 = numTxLevelsCount;
    for (i = 0; i != v7; ++i)
    {
      -[TxHist addNumTxLevel:](self, "addNumTxLevel:", [v9 numTxLevelAtIndex:i]);
    }
  }
}

@end