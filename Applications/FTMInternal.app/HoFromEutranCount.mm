@interface HoFromEutranCount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsHoProc:(id)a3;
- (int)hoProc;
- (unint64_t)hash;
- (unsigned)failureCountApAtIndex:(unint64_t)a3;
- (unsigned)failureCountAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasStartCount:(BOOL)a3;
- (void)setHasStartCountAp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HoFromEutranCount

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = HoFromEutranCount;
  [(HoFromEutranCount *)&v3 dealloc];
}

- (int)hoProc
{
  if (*&self->_has)
  {
    return self->_hoProc;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsHoProc:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LTE_HO_FROM_EUTRAN_PROC_UTRA_HO"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LTE_HO_FROM_EUTRAN_PROC_GERAN_HO"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LTE_HO_FROM_EUTRAN_PROC_GERAN_CCO"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LTE_HO_FROM_EUTRAN_PROC_E1XCSFB"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LTE_HO_FROM_EUTRAN_PROC_HRPD_HO"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasStartCount:(BOOL)a3
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

- (void)setHasStartCountAp:(BOOL)a3
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
  v7.super_class = HoFromEutranCount;
  v3 = [(HoFromEutranCount *)&v7 description];
  v4 = [(HoFromEutranCount *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    hoProc = self->_hoProc;
    if (hoProc >= 5)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_hoProc];
    }

    else
    {
      v6 = off_100318EC8[hoProc];
    }

    [v3 setObject:v6 forKey:@"ho_proc"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_startCount];
    [v3 setObject:v7 forKey:@"start_count"];
  }

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"failure_count"];

  if ((*&self->_has & 4) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_startCountAp];
    [v3 setObject:v9 forKey:@"start_count_ap"];
  }

  v10 = PBRepeatedUInt32NSArray();
  [v3 setObject:v10 forKey:@"failure_count_ap"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    hoProc = self->_hoProc;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    startCount = self->_startCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_failureCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_failureCounts.count)
    {
      v8 = 0;
      do
      {
        v9 = self->_failureCounts.list[v8];
        PBDataWriterWriteUint32Field();
        ++v8;
      }

      while (v8 < self->_failureCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 4) != 0)
  {
    startCountAp = self->_startCountAp;
    PBDataWriterWriteUint32Field();
  }

  p_failureCountAps = &self->_failureCountAps;
  if (p_failureCountAps->count)
  {
    PBDataWriterPlaceMark();
    if (p_failureCountAps->count)
    {
      v12 = 0;
      do
      {
        v13 = p_failureCountAps->list[v12];
        PBDataWriterWriteUint32Field();
        ++v12;
      }

      while (v12 < p_failureCountAps->count);
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
    v4[14] = self->_hoProc;
    *(v4 + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[15] = self->_startCount;
    *(v4 + 68) |= 2u;
  }

  v12 = v4;
  if ([(HoFromEutranCount *)self failureCountsCount])
  {
    [v12 clearFailureCounts];
    v6 = [(HoFromEutranCount *)self failureCountsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v12 addFailureCount:{-[HoFromEutranCount failureCountAtIndex:](self, "failureCountAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v12 + 16) = self->_startCountAp;
    *(v12 + 68) |= 4u;
  }

  if ([(HoFromEutranCount *)self failureCountApsCount])
  {
    [v12 clearFailureCountAps];
    v9 = [(HoFromEutranCount *)self failureCountApsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v12 addFailureCountAp:{-[HoFromEutranCount failureCountApAtIndex:](self, "failureCountApAtIndex:", j)}];
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
    v4[14] = self->_hoProc;
    *(v4 + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[15] = self->_startCount;
    *(v4 + 68) |= 2u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 4) != 0)
  {
    v5[16] = self->_startCountAp;
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
    if ((*(v4 + 68) & 1) == 0 || self->_hoProc != *(v4 + 14))
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
    if ((*(v4 + 68) & 2) == 0 || self->_startCount != *(v4 + 15))
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
    if ((*(v4 + 68) & 4) == 0 || self->_startCountAp != *(v4 + 16))
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
    v3 = 2654435761 * self->_hoProc;
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
      v4 = 2654435761 * self->_startCount;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_startCountAp;
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
    self->_hoProc = *(v4 + 14);
    *&self->_has |= 1u;
    v5 = *(v4 + 68);
  }

  if ((v5 & 2) != 0)
  {
    self->_startCount = *(v4 + 15);
    *&self->_has |= 2u;
  }

  v12 = v4;
  v6 = [v4 failureCountsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[HoFromEutranCount addFailureCount:](self, "addFailureCount:", [v12 failureCountAtIndex:i]);
    }
  }

  if ((v12[17] & 4) != 0)
  {
    self->_startCountAp = v12[16];
    *&self->_has |= 4u;
  }

  v9 = [v12 failureCountApsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[HoFromEutranCount addFailureCountAp:](self, "addFailureCountAp:", [v12 failureCountApAtIndex:j]);
    }
  }
}

@end