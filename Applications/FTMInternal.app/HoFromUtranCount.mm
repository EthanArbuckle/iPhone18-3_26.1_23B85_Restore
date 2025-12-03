@interface HoFromUtranCount
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)failureCountAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasSuccessCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation HoFromUtranCount

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = HoFromUtranCount;
  [(HoFromUtranCount *)&v3 dealloc];
}

- (void)setHasSuccessCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = HoFromUtranCount;
  v3 = [(HoFromUtranCount *)&v7 description];
  dictionaryRepresentation = [(HoFromUtranCount *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_startCount];
    [v3 setObject:v5 forKey:@"start_count"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_successCount];
    [v3 setObject:v6 forKey:@"success_count"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"failure_count"];

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    startCount = self->_startCount;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    successCount = self->_successCount;
    PBDataWriterWriteUint32Field();
  }

  p_failureCounts = &self->_failureCounts;
  if (p_failureCounts->count)
  {
    PBDataWriterPlaceMark();
    if (p_failureCounts->count)
    {
      v9 = 0;
      do
      {
        v10 = p_failureCounts->list[v9];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v9 < p_failureCounts->count);
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
    toCopy[8] = self->_startCount;
    *(toCopy + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[9] = self->_successCount;
    *(toCopy + 40) |= 2u;
  }

  v9 = toCopy;
  if ([(HoFromUtranCount *)self failureCountsCount])
  {
    [v9 clearFailureCounts];
    failureCountsCount = [(HoFromUtranCount *)self failureCountsCount];
    if (failureCountsCount)
    {
      v7 = failureCountsCount;
      for (i = 0; i != v7; ++i)
      {
        [v9 addFailureCount:{-[HoFromUtranCount failureCountAtIndex:](self, "failureCountAtIndex:", i)}];
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
    *(v4 + 8) = self->_startCount;
    *(v4 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 9) = self->_successCount;
    *(v4 + 40) |= 2u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_startCount != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    IsEqual = 0;
    goto LABEL_14;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_successCount != *(equalCopy + 9))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_13;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_14:

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_startCount;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2 ^ PBRepeatedUInt32Hash();
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_successCount;
  return v3 ^ v2 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if (v5)
  {
    self->_startCount = *(fromCopy + 8);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 40);
  }

  if ((v5 & 2) != 0)
  {
    self->_successCount = *(fromCopy + 9);
    *&self->_has |= 2u;
  }

  v9 = fromCopy;
  failureCountsCount = [fromCopy failureCountsCount];
  if (failureCountsCount)
  {
    v7 = failureCountsCount;
    for (i = 0; i != v7; ++i)
    {
      -[HoFromUtranCount addFailureCount:](self, "addFailureCount:", [v9 failureCountAtIndex:i]);
    }
  }
}

@end