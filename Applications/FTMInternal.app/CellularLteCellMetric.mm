@interface CellularLteCellMetric
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLteMetrics:(id)metrics;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDurationSeconds:(BOOL)seconds;
- (void)setHasMcc:(BOOL)mcc;
- (void)setHasMnc:(BOOL)mnc;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation CellularLteCellMetric

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasDurationSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasMcc:(BOOL)mcc
{
  if (mcc)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMnc:(BOOL)mnc
{
  if (mnc)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addLteMetrics:(id)metrics
{
  metricsCopy = metrics;
  lteMetrics = self->_lteMetrics;
  v8 = metricsCopy;
  if (!lteMetrics)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_lteMetrics;
    self->_lteMetrics = v6;

    metricsCopy = v8;
    lteMetrics = self->_lteMetrics;
  }

  [(NSMutableArray *)lteMetrics addObject:metricsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteCellMetric;
  v3 = [(CellularLteCellMetric *)&v7 description];
  dictionaryRepresentation = [(CellularLteCellMetric *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v15 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v15 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v16 = [NSNumber numberWithUnsignedInt:self->_version];
  [v3 setObject:v16 forKey:@"version"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v17 = [NSNumber numberWithUnsignedInt:self->_durationSeconds];
  [v3 setObject:v17 forKey:@"duration_seconds"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_24:
  v18 = [NSNumber numberWithUnsignedInt:self->_mcc];
  [v3 setObject:v18 forKey:@"mcc"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithUnsignedInt:self->_mnc];
    [v3 setObject:v5 forKey:@"mnc"];
  }

LABEL_7:
  if ([(NSMutableArray *)self->_lteMetrics count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_lteMetrics, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_lteMetrics;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"lte_metrics"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v13 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v13 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  version = self->_version;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  durationSeconds = self->_durationSeconds;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_20:
  mcc = self->_mcc;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    mnc = self->_mnc;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_lteMetrics;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 10) = self->_version;
  *(toCopy + 48) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(toCopy + 4) = self->_durationSeconds;
  *(toCopy + 48) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_19:
    *(toCopy + 9) = self->_mnc;
    *(toCopy + 48) |= 8u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_18:
  *(toCopy + 8) = self->_mcc;
  *(toCopy + 48) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((has & 0x20) != 0)
  {
LABEL_7:
    *(toCopy + 11) = self->_subsId;
    *(toCopy + 48) |= 0x20u;
  }

LABEL_8:
  v10 = toCopy;
  if ([(CellularLteCellMetric *)self lteMetricsCount])
  {
    [v10 clearLteMetrics];
    lteMetricsCount = [(CellularLteCellMetric *)self lteMetricsCount];
    if (lteMetricsCount)
    {
      v7 = lteMetricsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularLteCellMetric *)self lteMetricsAtIndex:i];
        [v10 addLteMetrics:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 1) = self->_timestamp;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 10) = self->_version;
  *(v5 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 4) = self->_durationSeconds;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 8) = self->_mcc;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  *(v5 + 9) = self->_mnc;
  *(v5 + 48) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    *(v5 + 11) = self->_subsId;
    *(v5 + 48) |= 0x20u;
  }

LABEL_8:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_lteMetrics;
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

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{zone, v15}];
        [v6 addLteMetrics:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_34:
    v7 = 0;
    goto LABEL_35;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 48) & 0x10) == 0 || self->_version != *(equalCopy + 10))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 48) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_durationSeconds != *(equalCopy + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_mcc != *(equalCopy + 8))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_mnc != *(equalCopy + 9))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 48) & 0x20) == 0 || self->_subsId != *(equalCopy + 11))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 48) & 0x20) != 0)
  {
    goto LABEL_34;
  }

  lteMetrics = self->_lteMetrics;
  if (lteMetrics | *(equalCopy + 3))
  {
    v7 = [(NSMutableArray *)lteMetrics isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_35:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_version;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_durationSeconds;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v8 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v9 = 2654435761 * self->_mcc;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v10 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v11 = 0;
    return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSMutableArray *)self->_lteMetrics hash:v3];
  }

LABEL_11:
  v9 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v10 = 2654435761 * self->_mnc;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = 2654435761 * self->_subsId;
  return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSMutableArray *)self->_lteMetrics hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 48);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 48);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(fromCopy + 48) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_version = *(fromCopy + 10);
  *&self->_has |= 0x10u;
  v6 = *(fromCopy + 48);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_durationSeconds = *(fromCopy + 4);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 48);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_mcc = *(fromCopy + 8);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 48);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  self->_mnc = *(fromCopy + 9);
  *&self->_has |= 8u;
  if ((*(fromCopy + 48) & 0x20) != 0)
  {
LABEL_7:
    self->_subsId = *(fromCopy + 11);
    *&self->_has |= 0x20u;
  }

LABEL_8:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CellularLteCellMetric *)self addLteMetrics:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end