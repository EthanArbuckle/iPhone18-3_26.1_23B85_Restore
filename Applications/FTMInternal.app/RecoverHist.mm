@interface RecoverHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRecoverDurationEnum:(id)enum;
- (int)recoverDurationEnum;
- (unint64_t)hash;
- (unsigned)recoverCountStateBreakAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasRecoverDurationEnum2:(BOOL)enum2;
- (void)setHasRecoverDurationEnum:(BOOL)enum;
- (void)writeTo:(id)to;
@end

@implementation RecoverHist

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = RecoverHist;
  [(RecoverHist *)&v3 dealloc];
}

- (int)recoverDurationEnum
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_recoverDurationEnum;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRecoverDurationEnum:(BOOL)enum
{
  if (enum)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsRecoverDurationEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"LT_5S"])
  {
    v4 = 0;
  }

  else if ([enumCopy isEqualToString:@"GE_5S_LT_20S"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"GE_20S_LT_5M"])
  {
    v4 = 2;
  }

  else if ([enumCopy isEqualToString:@"GE_5M_LT_15M"])
  {
    v4 = 3;
  }

  else if ([enumCopy isEqualToString:@"GE_15M_LT_30M"])
  {
    v4 = 4;
  }

  else if ([enumCopy isEqualToString:@"GE_30M"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)recoverCountStateBreakAtIndex:(unint64_t)index
{
  p_recoverCountStateBreaks = &self->_recoverCountStateBreaks;
  count = self->_recoverCountStateBreaks.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_recoverCountStateBreaks->list[index];
}

- (void)setHasRecoverDurationEnum2:(BOOL)enum2
{
  if (enum2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RecoverHist;
  v3 = [(RecoverHist *)&v7 description];
  dictionaryRepresentation = [(RecoverHist *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    recoverDurationEnum = self->_recoverDurationEnum;
    if (recoverDurationEnum >= 6)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_recoverDurationEnum];
    }

    else
    {
      v6 = *(&off_1003181A8 + recoverDurationEnum);
    }

    [v3 setObject:v6 forKey:@"recover_duration_enum"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_recoverCount];
    [v3 setObject:v7 forKey:@"recover_count"];
  }

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"recover_count_state_break"];

  if ((*&self->_has & 4) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_recoverDurationEnum2];
    [v3 setObject:v9 forKey:@"recover_duration_enum_2"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v11 = toCopy;
  if ((has & 2) != 0)
  {
    recoverDurationEnum = self->_recoverDurationEnum;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
    has = self->_has;
  }

  if (has)
  {
    recoverCount = self->_recoverCount;
    PBDataWriterWriteUint32Field();
    toCopy = v11;
  }

  if (self->_recoverCountStateBreaks.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_recoverCountStateBreaks.list[v8];
      PBDataWriterWriteUint32Field();
      toCopy = v11;
      ++v8;
    }

    while (v8 < self->_recoverCountStateBreaks.count);
  }

  if ((*&self->_has & 4) != 0)
  {
    recoverDurationEnum2 = self->_recoverDurationEnum2;
    PBDataWriterWriteUint32Field();
    toCopy = v11;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[9] = self->_recoverDurationEnum;
    *(toCopy + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[8] = self->_recoverCount;
    *(toCopy + 44) |= 1u;
  }

  v9 = toCopy;
  if ([(RecoverHist *)self recoverCountStateBreaksCount])
  {
    [v9 clearRecoverCountStateBreaks];
    recoverCountStateBreaksCount = [(RecoverHist *)self recoverCountStateBreaksCount];
    if (recoverCountStateBreaksCount)
    {
      v7 = recoverCountStateBreaksCount;
      for (i = 0; i != v7; ++i)
      {
        [v9 addRecoverCountStateBreak:{-[RecoverHist recoverCountStateBreakAtIndex:](self, "recoverCountStateBreakAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v9 + 10) = self->_recoverDurationEnum2;
    *(v9 + 44) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[9] = self->_recoverDurationEnum;
    *(v4 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[8] = self->_recoverCount;
    *(v4 + 44) |= 1u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 4) != 0)
  {
    v5[10] = self->_recoverDurationEnum2;
    *(v5 + 44) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(equalCopy + 44);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_recoverDurationEnum != *(equalCopy + 9))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_recoverCount != *(equalCopy + 8))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_17;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  v6 = (*(equalCopy + 44) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_recoverDurationEnum2 != *(equalCopy + 10))
    {
      goto LABEL_17;
    }

    v6 = 1;
  }

LABEL_18:

  return v6;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_recoverDurationEnum;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761 * self->_recoverCount;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_recoverDurationEnum2;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 2) != 0)
  {
    self->_recoverDurationEnum = *(fromCopy + 9);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 44);
  }

  if (v5)
  {
    self->_recoverCount = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  v9 = fromCopy;
  recoverCountStateBreaksCount = [fromCopy recoverCountStateBreaksCount];
  if (recoverCountStateBreaksCount)
  {
    v7 = recoverCountStateBreaksCount;
    for (i = 0; i != v7; ++i)
    {
      -[RecoverHist addRecoverCountStateBreak:](self, "addRecoverCountStateBreak:", [v9 recoverCountStateBreakAtIndex:i]);
    }
  }

  if ((v9[11] & 4) != 0)
  {
    self->_recoverDurationEnum2 = v9[10];
    *&self->_has |= 4u;
  }
}

@end