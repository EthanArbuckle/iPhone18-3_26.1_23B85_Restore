@interface CellularLmapoOosHist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)oosStateCountAtIndex:(unint64_t)a3;
- (unsigned)oosStateDurationMsAtIndex:(unint64_t)a3;
- (unsigned)oosToOosCountAtIndex:(unint64_t)a3;
- (void)addRecoverHist:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDurationSeconds:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularLmapoOosHist

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = CellularLmapoOosHist;
  [(CellularLmapoOosHist *)&v3 dealloc];
}

- (void)setHasDurationSeconds:(BOOL)a3
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

- (unsigned)oosStateCountAtIndex:(unint64_t)a3
{
  p_oosStateCounts = &self->_oosStateCounts;
  count = self->_oosStateCounts.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_oosStateCounts->list[a3];
}

- (unsigned)oosStateDurationMsAtIndex:(unint64_t)a3
{
  p_oosStateDurationMs = &self->_oosStateDurationMs;
  count = self->_oosStateDurationMs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_oosStateDurationMs->list[a3];
}

- (void)addRecoverHist:(id)a3
{
  v4 = a3;
  recoverHists = self->_recoverHists;
  v8 = v4;
  if (!recoverHists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_recoverHists;
    self->_recoverHists = v6;

    v4 = v8;
    recoverHists = self->_recoverHists;
  }

  [(NSMutableArray *)recoverHists addObject:v4];
}

- (unsigned)oosToOosCountAtIndex:(unint64_t)a3
{
  p_oosToOosCounts = &self->_oosToOosCounts;
  count = self->_oosToOosCounts.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_oosToOosCounts->list[a3];
}

- (void)setHasVersion:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLmapoOosHist;
  v3 = [(CellularLmapoOosHist *)&v7 description];
  v4 = [(CellularLmapoOosHist *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_durationSeconds];
    [v3 setObject:v6 forKey:@"duration_seconds"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"oos_state_count"];

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"oos_state_duration_ms"];

  if ([(NSMutableArray *)self->_recoverHists count])
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_recoverHists, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = self->_recoverHists;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKey:@"recover_hist"];
  }

  v16 = PBRepeatedUInt32NSArray();
  [v3 setObject:v16 forKey:@"oos_to_oos_count"];

  if ((*&self->_has & 4) != 0)
  {
    v17 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v17 forKey:@"version"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    durationSeconds = self->_durationSeconds;
    PBDataWriterWriteUint32Field();
  }

  if (self->_oosStateCounts.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_oosStateCounts.list[v8];
      PBDataWriterWriteUint32Field();
      ++v8;
    }

    while (v8 < self->_oosStateCounts.count);
  }

  if (self->_oosStateDurationMs.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_oosStateDurationMs.list[v10];
      PBDataWriterWriteUint32Field();
      ++v10;
    }

    while (v10 < self->_oosStateDurationMs.count);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_recoverHists;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  if (self->_oosToOosCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_oosToOosCounts.count)
    {
      v18 = 0;
      do
      {
        v19 = self->_oosToOosCounts.list[v18];
        PBDataWriterWriteUint32Field();
        ++v18;
      }

      while (v18 < self->_oosToOosCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[10] = self->_timestamp;
    *(v4 + 108) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 22) = self->_durationSeconds;
    *(v4 + 108) |= 2u;
  }

  v19 = v4;
  if ([(CellularLmapoOosHist *)self oosStateCountsCount])
  {
    [v19 clearOosStateCounts];
    v6 = [(CellularLmapoOosHist *)self oosStateCountsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v19 addOosStateCount:{-[CellularLmapoOosHist oosStateCountAtIndex:](self, "oosStateCountAtIndex:", i)}];
      }
    }
  }

  if ([(CellularLmapoOosHist *)self oosStateDurationMsCount])
  {
    [v19 clearOosStateDurationMs];
    v9 = [(CellularLmapoOosHist *)self oosStateDurationMsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v19 addOosStateDurationMs:{-[CellularLmapoOosHist oosStateDurationMsAtIndex:](self, "oosStateDurationMsAtIndex:", j)}];
      }
    }
  }

  if ([(CellularLmapoOosHist *)self recoverHistsCount])
  {
    [v19 clearRecoverHists];
    v12 = [(CellularLmapoOosHist *)self recoverHistsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(CellularLmapoOosHist *)self recoverHistAtIndex:k];
        [v19 addRecoverHist:v15];
      }
    }
  }

  if ([(CellularLmapoOosHist *)self oosToOosCountsCount])
  {
    [v19 clearOosToOosCounts];
    v16 = [(CellularLmapoOosHist *)self oosToOosCountsCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        [v19 addOosToOosCount:{-[CellularLmapoOosHist oosToOosCountAtIndex:](self, "oosToOosCountAtIndex:", m)}];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v19 + 26) = self->_version;
    *(v19 + 108) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[10] = self->_timestamp;
    *(v5 + 108) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 22) = self->_durationSeconds;
    *(v5 + 108) |= 2u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_recoverHists;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{a3, v15}];
        [v6 addRecoverHist:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 26) = self->_version;
    *(v6 + 108) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(v4 + 108);
  if (*&self->_has)
  {
    if ((*(v4 + 108) & 1) == 0 || self->_timestamp != *(v4 + 10))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 108))
  {
LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 108) & 2) == 0 || self->_durationSeconds != *(v4 + 22))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 108) & 2) != 0)
  {
    goto LABEL_21;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_21;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_21;
  }

  recoverHists = self->_recoverHists;
  if (recoverHists | *(v4 + 12))
  {
    if (![(NSMutableArray *)recoverHists isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_21;
  }

  v7 = (*(v4 + 108) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 108) & 4) == 0 || self->_version != *(v4 + 26))
    {
      goto LABEL_21;
    }

    v7 = 1;
  }

LABEL_22:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
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
      v4 = 2654435761 * self->_durationSeconds;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = PBRepeatedUInt32Hash();
  v6 = PBRepeatedUInt32Hash();
  v7 = [(NSMutableArray *)self->_recoverHists hash];
  v8 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761 * self->_version;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 108);
  if (v6)
  {
    self->_timestamp = *(v4 + 10);
    *&self->_has |= 1u;
    v6 = *(v4 + 108);
  }

  if ((v6 & 2) != 0)
  {
    self->_durationSeconds = *(v4 + 22);
    *&self->_has |= 2u;
  }

  v7 = [v4 oosStateCountsCount];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      -[CellularLmapoOosHist addOosStateCount:](self, "addOosStateCount:", [v5 oosStateCountAtIndex:i]);
    }
  }

  v10 = [v5 oosStateDurationMsCount];
  if (v10)
  {
    v11 = v10;
    for (j = 0; j != v11; ++j)
    {
      -[CellularLmapoOosHist addOosStateDurationMs:](self, "addOosStateDurationMs:", [v5 oosStateDurationMsAtIndex:j]);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = *(v5 + 12);
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (k = 0; k != v15; k = k + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(CellularLmapoOosHist *)self addRecoverHist:*(*(&v21 + 1) + 8 * k), v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v18 = [v5 oosToOosCountsCount];
  if (v18)
  {
    v19 = v18;
    for (m = 0; m != v19; ++m)
    {
      -[CellularLmapoOosHist addOosToOosCount:](self, "addOosToOosCount:", [v5 oosToOosCountAtIndex:{m, v21}]);
    }
  }

  if ((*(v5 + 108) & 4) != 0)
  {
    self->_version = *(v5 + 26);
    *&self->_has |= 4u;
  }
}

@end