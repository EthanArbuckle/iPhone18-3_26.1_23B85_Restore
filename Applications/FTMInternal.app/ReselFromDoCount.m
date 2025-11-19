@interface ReselFromDoCount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)endStatusCountAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasEhrpd:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ReselFromDoCount

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = ReselFromDoCount;
  [(ReselFromDoCount *)&v3 dealloc];
}

- (void)setHasEhrpd:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = ReselFromDoCount;
  v3 = [(ReselFromDoCount *)&v7 description];
  v4 = [(ReselFromDoCount *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithBool:self->_ehrpd];
    [v3 setObject:v5 forKey:@"ehrpd"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_total];
    [v3 setObject:v6 forKey:@"total"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"end_status_count"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    ehrpd = self->_ehrpd;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    total = self->_total;
    PBDataWriterWriteUint32Field();
  }

  p_endStatusCounts = &self->_endStatusCounts;
  if (p_endStatusCounts->count)
  {
    PBDataWriterPlaceMark();
    if (p_endStatusCounts->count)
    {
      v9 = 0;
      do
      {
        v10 = p_endStatusCounts->list[v9];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v9 < p_endStatusCounts->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[36] = self->_ehrpd;
    v4[40] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 8) = self->_total;
    v4[40] |= 1u;
  }

  v9 = v4;
  if ([(ReselFromDoCount *)self endStatusCountsCount])
  {
    [v9 clearEndStatusCounts];
    v6 = [(ReselFromDoCount *)self endStatusCountsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v9 addEndStatusCount:{-[ReselFromDoCount endStatusCountAtIndex:](self, "endStatusCountAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 36) = self->_ehrpd;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 8) = self->_total;
    *(v4 + 40) |= 1u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 40);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 40) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_15:
    IsEqual = 0;
    goto LABEL_16;
  }

  if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_15;
  }

  v6 = *(v4 + 36);
  if (self->_ehrpd)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_15;
  }

LABEL_4:
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_total != *(v4 + 8))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_15;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_16:

  return IsEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_ehrpd;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2 ^ PBRepeatedUInt32Hash();
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_total;
  return v3 ^ v2 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_ehrpd = *(v4 + 36);
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
  }

  if (v5)
  {
    self->_total = *(v4 + 8);
    *&self->_has |= 1u;
  }

  v9 = v4;
  v6 = [v4 endStatusCountsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[ReselFromDoCount addEndStatusCount:](self, "addEndStatusCount:", [v9 endStatusCountAtIndex:i]);
    }
  }
}

@end