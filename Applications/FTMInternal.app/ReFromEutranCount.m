@interface ReFromEutranCount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDestRat:(id)a3;
- (int)destRat;
- (unint64_t)hash;
- (unsigned)causeCountApAtIndex:(unint64_t)a3;
- (unsigned)causeCountAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasTotal:(BOOL)a3;
- (void)setHasTotalAp:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsDestRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LTE_LOG_RAT_CDMA_HRPD"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LTE_LOG_RAT_CDMA_1X"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LTE_LOG_RAT_GSM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LTE_LOG_RAT_WCDMA"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LTE_LOG_RAT_LTE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LTE_LOG_RAT_TDS"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTotal:(BOOL)a3
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

- (unsigned)causeCountAtIndex:(unint64_t)a3
{
  p_causeCounts = &self->_causeCounts;
  count = self->_causeCounts.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_causeCounts->list[a3];
}

- (void)setHasTotalAp:(BOOL)a3
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

- (unsigned)causeCountApAtIndex:(unint64_t)a3
{
  p_causeCountAps = &self->_causeCountAps;
  count = self->_causeCountAps.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_causeCountAps->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ReFromEutranCount;
  v3 = [(ReFromEutranCount *)&v7 description];
  v4 = [(ReFromEutranCount *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
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

  v12 = v4;
  if ([(ReFromEutranCount *)self causeCountsCount])
  {
    [v12 clearCauseCounts];
    v6 = [(ReFromEutranCount *)self causeCountsCount];
    if (v6)
    {
      v7 = v6;
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
    v9 = [(ReFromEutranCount *)self causeCountApsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v12 addCauseCountAp:{-[ReFromEutranCount causeCountApAtIndex:](self, "causeCountApAtIndex:", j)}];
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
    if ((*(v4 + 68) & 1) == 0 || self->_destRat != *(v4 + 14))
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
    if ((*(v4 + 68) & 2) == 0 || self->_total != *(v4 + 15))
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
    if ((*(v4 + 68) & 4) == 0 || self->_totalAp != *(v4 + 16))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 68);
  if (v5)
  {
    self->_destRat = *(v4 + 14);
    *&self->_has |= 1u;
    v5 = *(v4 + 68);
  }

  if ((v5 & 2) != 0)
  {
    self->_total = *(v4 + 15);
    *&self->_has |= 2u;
  }

  v12 = v4;
  v6 = [v4 causeCountsCount];
  if (v6)
  {
    v7 = v6;
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

  v9 = [v12 causeCountApsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[ReFromEutranCount addCauseCountAp:](self, "addCauseCountAp:", [v12 causeCountApAtIndex:j]);
    }
  }
}

@end