@interface RedirFromUtranCount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRedirCause:(id)a3;
- (int)redirCause;
- (unint64_t)hash;
- (unsigned)endStatusCountApAtIndex:(unint64_t)a3;
- (unsigned)endStatusCountAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasTotal:(BOOL)a3;
- (void)setHasTotalAp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RedirFromUtranCount

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = RedirFromUtranCount;
  [(RedirFromUtranCount *)&v3 dealloc];
}

- (int)redirCause
{
  if (*&self->_has)
  {
    return self->_redirCause;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRedirCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WTOL_REDIR_CAUSE_CONN_RELEASE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WTOL_REDIR_CAUSE_CONN_REJECT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"WTOL_REDIR_CAUSE_NONE"])
  {
    v4 = 2;
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

- (unsigned)endStatusCountAtIndex:(unint64_t)a3
{
  p_endStatusCounts = &self->_endStatusCounts;
  count = self->_endStatusCounts.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_endStatusCounts->list[a3];
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

- (unsigned)endStatusCountApAtIndex:(unint64_t)a3
{
  p_endStatusCountAps = &self->_endStatusCountAps;
  count = self->_endStatusCountAps.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_endStatusCountAps->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RedirFromUtranCount;
  v3 = [(RedirFromUtranCount *)&v7 description];
  v4 = [(RedirFromUtranCount *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    redirCause = self->_redirCause;
    if (redirCause >= 3)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_redirCause];
    }

    else
    {
      v6 = off_100319000[redirCause];
    }

    [v3 setObject:v6 forKey:@"redir_cause"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_total];
    [v3 setObject:v7 forKey:@"total"];
  }

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"end_status_count"];

  if ((*&self->_has & 4) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_totalAp];
    [v3 setObject:v9 forKey:@"total_ap"];
  }

  v10 = PBRepeatedUInt32NSArray();
  [v3 setObject:v10 forKey:@"end_status_count_ap"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    redirCause = self->_redirCause;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    total = self->_total;
    PBDataWriterWriteUint32Field();
  }

  if (self->_endStatusCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_endStatusCounts.count)
    {
      v8 = 0;
      do
      {
        v9 = self->_endStatusCounts.list[v8];
        PBDataWriterWriteUint32Field();
        ++v8;
      }

      while (v8 < self->_endStatusCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 4) != 0)
  {
    totalAp = self->_totalAp;
    PBDataWriterWriteUint32Field();
  }

  p_endStatusCountAps = &self->_endStatusCountAps;
  if (p_endStatusCountAps->count)
  {
    PBDataWriterPlaceMark();
    if (p_endStatusCountAps->count)
    {
      v12 = 0;
      do
      {
        v13 = p_endStatusCountAps->list[v12];
        PBDataWriterWriteUint32Field();
        ++v12;
      }

      while (v12 < p_endStatusCountAps->count);
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
    v4[14] = self->_redirCause;
    *(v4 + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[15] = self->_total;
    *(v4 + 68) |= 2u;
  }

  v12 = v4;
  if ([(RedirFromUtranCount *)self endStatusCountsCount])
  {
    [v12 clearEndStatusCounts];
    v6 = [(RedirFromUtranCount *)self endStatusCountsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v12 addEndStatusCount:{-[RedirFromUtranCount endStatusCountAtIndex:](self, "endStatusCountAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v12 + 16) = self->_totalAp;
    *(v12 + 68) |= 4u;
  }

  if ([(RedirFromUtranCount *)self endStatusCountApsCount])
  {
    [v12 clearEndStatusCountAps];
    v9 = [(RedirFromUtranCount *)self endStatusCountApsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v12 addEndStatusCountAp:{-[RedirFromUtranCount endStatusCountApAtIndex:](self, "endStatusCountApAtIndex:", j)}];
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
    v4[14] = self->_redirCause;
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
    if ((*(v4 + 68) & 1) == 0 || self->_redirCause != *(v4 + 14))
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
    v3 = 2654435761 * self->_redirCause;
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
    self->_redirCause = *(v4 + 14);
    *&self->_has |= 1u;
    v5 = *(v4 + 68);
  }

  if ((v5 & 2) != 0)
  {
    self->_total = *(v4 + 15);
    *&self->_has |= 2u;
  }

  v12 = v4;
  v6 = [v4 endStatusCountsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[RedirFromUtranCount addEndStatusCount:](self, "addEndStatusCount:", [v12 endStatusCountAtIndex:i]);
    }
  }

  if ((v12[17] & 4) != 0)
  {
    self->_totalAp = v12[16];
    *&self->_has |= 4u;
  }

  v9 = [v12 endStatusCountApsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[RedirFromUtranCount addEndStatusCountAp:](self, "addEndStatusCountAp:", [v12 endStatusCountApAtIndex:j]);
    }
  }
}

@end