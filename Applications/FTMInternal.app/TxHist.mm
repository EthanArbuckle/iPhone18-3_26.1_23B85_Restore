@interface TxHist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChanType:(id)a3;
- (int)chanType;
- (unint64_t)hash;
- (unsigned)numTxLevelAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasMinTxLevel:(BOOL)a3;
- (void)setHasWorkMode:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsChanType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PUCCH"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"PUSCH"];
  }

  return v4;
}

- (void)setHasWorkMode:(BOOL)a3
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

- (void)setHasMinTxLevel:(BOOL)a3
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

- (unsigned)numTxLevelAtIndex:(unint64_t)a3
{
  p_numTxLevels = &self->_numTxLevels;
  count = self->_numTxLevels.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_numTxLevels->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = TxHist;
  v3 = [(TxHist *)&v7 description];
  v4 = [(TxHist *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    v4[10] = self->_workMode;
    *(v4 + 44) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4[8] = self->_chanType;
  *(v4 + 44) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    v4[9] = self->_minTxLevel;
    *(v4 + 44) |= 2u;
  }

LABEL_5:
  v9 = v4;
  if ([(TxHist *)self numTxLevelsCount])
  {
    [v9 clearNumTxLevels];
    v6 = [(TxHist *)self numTxLevelsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v9 addNumTxLevel:{-[TxHist numTxLevelAtIndex:](self, "numTxLevelAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_chanType != *(v4 + 8))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 44))
  {
LABEL_18:
    IsEqual = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_workMode != *(v4 + 10))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_minTxLevel != *(v4 + 9))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if (v5)
  {
    self->_chanType = *(v4 + 8);
    *&self->_has |= 1u;
    v5 = *(v4 + 44);
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

  else if ((*(v4 + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_workMode = *(v4 + 10);
  *&self->_has |= 4u;
  if ((*(v4 + 44) & 2) != 0)
  {
LABEL_4:
    self->_minTxLevel = *(v4 + 9);
    *&self->_has |= 2u;
  }

LABEL_5:
  v9 = v4;
  v6 = [v4 numTxLevelsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[TxHist addNumTxLevel:](self, "addNumTxLevel:", [v9 numTxLevelAtIndex:i]);
    }
  }
}

@end