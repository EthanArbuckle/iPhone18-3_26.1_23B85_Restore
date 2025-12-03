@interface ReFromEutranCount
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDestRat:(id)rat;
- (int)destRat;
- (unint64_t)hash;
- (unsigned)causeCountApAtIndex:(unint64_t)index;
- (unsigned)causeCountAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasTotal:(BOOL)total;
- (void)setHasTotalAp:(BOOL)ap;
- (void)writeTo:(id)to;
@end

@implementation ReFromEutranCount

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = ReFromEutranCount;
  [(ReFromEutranCount *)&v3 dealloc];
}

- (int)destRat
{
  if (*&self->_has)
  {
    return self->_destRat;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDestRat:(id)rat
{
  ratCopy = rat;
  if ([ratCopy isEqualToString:@"LTE_LOG_RAT_CDMA_HRPD"])
  {
    v4 = 0;
  }

  else if ([ratCopy isEqualToString:@"LTE_LOG_RAT_CDMA_1X"])
  {
    v4 = 1;
  }

  else if ([ratCopy isEqualToString:@"LTE_LOG_RAT_GSM"])
  {
    v4 = 2;
  }

  else if ([ratCopy isEqualToString:@"LTE_LOG_RAT_WCDMA"])
  {
    v4 = 3;
  }

  else if ([ratCopy isEqualToString:@"LTE_LOG_RAT_LTE"])
  {
    v4 = 4;
  }

  else if ([ratCopy isEqualToString:@"LTE_LOG_RAT_TDS"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTotal:(BOOL)total
{
  if (total)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)causeCountAtIndex:(unint64_t)index
{
  p_causeCounts = &self->_causeCounts;
  count = self->_causeCounts.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_causeCounts->list[index];
}

- (void)setHasTotalAp:(BOOL)ap
{
  if (ap)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (unsigned)causeCountApAtIndex:(unint64_t)index
{
  p_causeCountAps = &self->_causeCountAps;
  count = self->_causeCountAps.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_causeCountAps->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ReFromEutranCount;
  v3 = [(ReFromEutranCount *)&v7 description];
  dictionaryRepresentation = [(ReFromEutranCount *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    destRat = self->_destRat;
    if (destRat >= 6)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_destRat];
    }

    else
    {
      v6 = *(&off_1003180D8 + destRat);
    }

    [v3 setObject:v6 forKey:@"dest_rat"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_total];
    [v3 setObject:v7 forKey:@"total"];
  }

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"cause_count"];

  if ((*&self->_has & 4) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_totalAp];
    [v3 setObject:v9 forKey:@"total_ap"];
  }

  v10 = PBRepeatedUInt32NSArray();
  [v3 setObject:v10 forKey:@"cause_count_ap"];

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    destRat = self->_destRat;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    total = self->_total;
    PBDataWriterWriteUint32Field();
  }

  if (self->_causeCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCounts.count)
    {
      v8 = 0;
      do
      {
        v9 = self->_causeCounts.list[v8];
        PBDataWriterWriteUint32Field();
        ++v8;
      }

      while (v8 < self->_causeCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 4) != 0)
  {
    totalAp = self->_totalAp;
    PBDataWriterWriteUint32Field();
  }

  p_causeCountAps = &self->_causeCountAps;
  if (p_causeCountAps->count)
  {
    PBDataWriterPlaceMark();
    if (p_causeCountAps->count)
    {
      v12 = 0;
      do
      {
        v13 = p_causeCountAps->list[v12];
        PBDataWriterWriteUint32Field();
        ++v12;
      }

      while (v12 < p_causeCountAps->count);
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
    toCopy[14] = self->_destRat;
    *(toCopy + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[15] = self->_total;
    *(toCopy + 68) |= 2u;
  }

  v12 = toCopy;
  if ([(ReFromEutranCount *)self causeCountsCount])
  {
    [v12 clearCauseCounts];
    causeCountsCount = [(ReFromEutranCount *)self causeCountsCount];
    if (causeCountsCount)
    {
      v7 = causeCountsCount;
      for (i = 0; i != v7; ++i)
      {
        [v12 addCauseCount:{-[ReFromEutranCount causeCountAtIndex:](self, "causeCountAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v12 + 16) = self->_totalAp;
    *(v12 + 68) |= 4u;
  }

  if ([(ReFromEutranCount *)self causeCountApsCount])
  {
    [v12 clearCauseCountAps];
    causeCountApsCount = [(ReFromEutranCount *)self causeCountApsCount];
    if (causeCountApsCount)
    {
      v10 = causeCountApsCount;
      for (j = 0; j != v10; ++j)
      {
        [v12 addCauseCountAp:{-[ReFromEutranCount causeCountApAtIndex:](self, "causeCountApAtIndex:", j)}];
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
    v4[14] = self->_destRat;
    *(v4 + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[15] = self->_total;
    *(v4 + 68) |= 2u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 4) != 0)
  {
    v5[16] = self->_totalAp;
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
    if ((*(equalCopy + 68) & 1) == 0 || self->_destRat != *(equalCopy + 14))
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
    if ((*(equalCopy + 68) & 2) == 0 || self->_total != *(equalCopy + 15))
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
    if ((*(equalCopy + 68) & 4) == 0 || self->_totalAp != *(equalCopy + 16))
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
    v3 = 2654435761 * self->_destRat;
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
      v4 = 2654435761 * self->_total;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_totalAp;
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
    self->_destRat = *(fromCopy + 14);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 68);
  }

  if ((v5 & 2) != 0)
  {
    self->_total = *(fromCopy + 15);
    *&self->_has |= 2u;
  }

  v12 = fromCopy;
  causeCountsCount = [fromCopy causeCountsCount];
  if (causeCountsCount)
  {
    v7 = causeCountsCount;
    for (i = 0; i != v7; ++i)
    {
      -[ReFromEutranCount addCauseCount:](self, "addCauseCount:", [v12 causeCountAtIndex:i]);
    }
  }

  if ((v12[17] & 4) != 0)
  {
    self->_totalAp = v12[16];
    *&self->_has |= 4u;
  }

  causeCountApsCount = [v12 causeCountApsCount];
  if (causeCountApsCount)
  {
    v10 = causeCountApsCount;
    for (j = 0; j != v10; ++j)
    {
      -[ReFromEutranCount addCauseCountAp:](self, "addCauseCountAp:", [v12 causeCountApAtIndex:j]);
    }
  }
}

@end