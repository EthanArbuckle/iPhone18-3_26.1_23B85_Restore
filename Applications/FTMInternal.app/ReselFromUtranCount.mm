@interface ReselFromUtranCount
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)failureCountApAtIndex:(unint64_t)index;
- (unsigned)failureCountAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasTotalAp:(BOOL)ap;
- (void)writeTo:(id)to;
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

- (unsigned)failureCountAtIndex:(unint64_t)index
{
  p_failureCounts = &self->_failureCounts;
  count = self->_failureCounts.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_failureCounts->list[index];
}

- (void)setHasTotalAp:(BOOL)ap
{
  if (ap)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)failureCountApAtIndex:(unint64_t)index
{
  p_failureCountAps = &self->_failureCountAps;
  count = self->_failureCountAps.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_failureCountAps->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ReselFromUtranCount;
  v3 = [(ReselFromUtranCount *)&v7 description];
  dictionaryRepresentation = [(ReselFromUtranCount *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[14] = self->_total;
    *(toCopy + 64) |= 1u;
  }

  v11 = toCopy;
  if ([(ReselFromUtranCount *)self failureCountsCount])
  {
    [v11 clearFailureCounts];
    failureCountsCount = [(ReselFromUtranCount *)self failureCountsCount];
    if (failureCountsCount)
    {
      v6 = failureCountsCount;
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
    failureCountApsCount = [(ReselFromUtranCount *)self failureCountApsCount];
    if (failureCountApsCount)
    {
      v9 = failureCountApsCount;
      for (j = 0; j != v9; ++j)
      {
        [v11 addFailureCountAp:{-[ReselFromUtranCount failureCountApAtIndex:](self, "failureCountApAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_total != *(equalCopy + 14))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_14;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_14:
    IsEqual = 0;
    goto LABEL_15;
  }

  v6 = *(equalCopy + 64);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_totalAp != *(equalCopy + 15))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[16])
  {
    self->_total = fromCopy[14];
    *&self->_has |= 1u;
  }

  v11 = fromCopy;
  failureCountsCount = [fromCopy failureCountsCount];
  if (failureCountsCount)
  {
    v6 = failureCountsCount;
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

  failureCountApsCount = [v11 failureCountApsCount];
  if (failureCountApsCount)
  {
    v9 = failureCountApsCount;
    for (j = 0; j != v9; ++j)
    {
      -[ReselFromUtranCount addFailureCountAp:](self, "addFailureCountAp:", [v11 failureCountApAtIndex:j]);
    }
  }
}

@end