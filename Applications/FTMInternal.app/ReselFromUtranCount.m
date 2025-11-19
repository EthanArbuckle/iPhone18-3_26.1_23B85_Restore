@interface ReselFromUtranCount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)failureCountApAtIndex:(unint64_t)a3;
- (unsigned)failureCountAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasTotalAp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ReselFromUtranCount

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = ReselFromUtranCount;
  [(ReselFromUtranCount *)&v3 dealloc];
}

- (unsigned)failureCountAtIndex:(unint64_t)a3
{
  p_failureCounts = &self->_failureCounts;
  count = self->_failureCounts.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_failureCounts->list[a3];
}

- (void)setHasTotalAp:(BOOL)a3
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

- (unsigned)failureCountApAtIndex:(unint64_t)a3
{
  p_failureCountAps = &self->_failureCountAps;
  count = self->_failureCountAps.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_failureCountAps->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ReselFromUtranCount;
  v3 = [(ReselFromUtranCount *)&v7 description];
  v4 = [(ReselFromUtranCount *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_total];
    [v3 setObject:v4 forKey:@"total"];
  }

  v5 = PBRepeatedUInt32NSArray();
  [v3 setObject:v5 forKey:@"failure_count"];

  if ((*&self->_has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_totalAp];
    [v3 setObject:v6 forKey:@"total_ap"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"failure_count_ap"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    total = self->_total;
    PBDataWriterWriteUint32Field();
  }

  if (self->_failureCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_failureCounts.count)
    {
      v6 = 0;
      do
      {
        v7 = self->_failureCounts.list[v6];
        PBDataWriterWriteUint32Field();
        ++v6;
      }

      while (v6 < self->_failureCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 2) != 0)
  {
    totalAp = self->_totalAp;
    PBDataWriterWriteUint32Field();
  }

  p_failureCountAps = &self->_failureCountAps;
  if (p_failureCountAps->count)
  {
    PBDataWriterPlaceMark();
    if (p_failureCountAps->count)
    {
      v10 = 0;
      do
      {
        v11 = p_failureCountAps->list[v10];
        PBDataWriterWriteUint32Field();
        ++v10;
      }

      while (v10 < p_failureCountAps->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[14] = self->_total;
    *(v4 + 64) |= 1u;
  }

  v11 = v4;
  if ([(ReselFromUtranCount *)self failureCountsCount])
  {
    [v11 clearFailureCounts];
    v5 = [(ReselFromUtranCount *)self failureCountsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v11 addFailureCount:{-[ReselFromUtranCount failureCountAtIndex:](self, "failureCountAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v11 + 15) = self->_totalAp;
    *(v11 + 64) |= 2u;
  }

  if ([(ReselFromUtranCount *)self failureCountApsCount])
  {
    [v11 clearFailureCountAps];
    v8 = [(ReselFromUtranCount *)self failureCountApsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [v11 addFailureCountAp:{-[ReselFromUtranCount failureCountApAtIndex:](self, "failureCountApAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    v4[14] = self->_total;
    *(v4 + 64) |= 1u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 2) != 0)
  {
    v5[15] = self->_totalAp;
    *(v5 + 64) |= 2u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_total != *(v4 + 14))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_14;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_14:
    IsEqual = 0;
    goto LABEL_15;
  }

  v6 = *(v4 + 64);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_totalAp != *(v4 + 15))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_14;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_15:

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_total;
  }

  else
  {
    v3 = 0;
  }

  v4 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_totalAp;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[16])
  {
    self->_total = v4[14];
    *&self->_has |= 1u;
  }

  v11 = v4;
  v5 = [v4 failureCountsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[ReselFromUtranCount addFailureCount:](self, "addFailureCount:", [v11 failureCountAtIndex:i]);
    }
  }

  if ((v11[16] & 2) != 0)
  {
    self->_totalAp = v11[15];
    *&self->_has |= 2u;
  }

  v8 = [v11 failureCountApsCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[ReselFromUtranCount addFailureCountAp:](self, "addFailureCountAp:", [v11 failureCountApAtIndex:j]);
    }
  }
}

@end