@interface CellularServiceStatusHist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSrvStat:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTotalDurationMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularServiceStatusHist

- (void)setHasTotalDurationMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addSrvStat:(id)a3
{
  v4 = a3;
  srvStats = self->_srvStats;
  v8 = v4;
  if (!srvStats)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_srvStats;
    self->_srvStats = v6;

    v4 = v8;
    srvStats = self->_srvStats;
  }

  [(NSMutableArray *)srvStats addObject:v4];
}

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPsPref:(BOOL)a3
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
  v7.super_class = CellularServiceStatusHist;
  v3 = [(CellularServiceStatusHist *)&v7 description];
  v4 = [(CellularServiceStatusHist *)self dictionaryRepresentation];
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

  if ((has & 0x10) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_totalDurationMs];
    [v3 setObject:v6 forKey:@"total_duration_ms"];
  }

  if ([(NSMutableArray *)self->_srvStats count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_srvStats, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = self->_srvStats;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"srv_stat"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v14 forKey:@"num_subs"];
  }

  simHplmn = self->_simHplmn;
  if (simHplmn)
  {
    [v3 setObject:simHplmn forKey:@"sim_hplmn"];
  }

  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    v17 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v17 forKey:@"subs_id"];

    v16 = self->_has;
  }

  if ((v16 & 4) != 0)
  {
    v18 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v18 forKey:@"ps_pref"];
  }

  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
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

  if ((has & 0x10) != 0)
  {
    totalDurationMs = self->_totalDurationMs;
    PBDataWriterWriteUint32Field();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_srvStats;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 2) != 0)
  {
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

  if (self->_simHplmn)
  {
    PBDataWriterWriteDataField();
  }

  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v15 = self->_has;
  }

  if ((v15 & 4) != 0)
  {
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v4 + 15) = self->_totalDurationMs;
    *(v4 + 64) |= 0x10u;
  }

  v12 = v4;
  if ([(CellularServiceStatusHist *)self srvStatsCount])
  {
    [v12 clearSrvStats];
    v6 = [(CellularServiceStatusHist *)self srvStatsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularServiceStatusHist *)self srvStatAtIndex:i];
        [v12 addSrvStat:v9];
      }
    }
  }

  v10 = v12;
  if ((*&self->_has & 2) != 0)
  {
    *(v12 + 4) = self->_numSubs;
    *(v12 + 64) |= 2u;
  }

  if (self->_simHplmn)
  {
    [v12 setSimHplmn:?];
    v10 = v12;
  }

  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    v10[14] = self->_subsId;
    *(v10 + 64) |= 8u;
    v11 = self->_has;
  }

  if ((v11 & 4) != 0)
  {
    v10[8] = self->_psPref;
    *(v10 + 64) |= 4u;
  }

  if (self->_plmn)
  {
    [v12 setPlmn:?];
    v10 = v12;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v5 + 15) = self->_totalDurationMs;
    *(v5 + 64) |= 0x10u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_srvStats;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{a3, v20}];
        [v6 addSrvStat:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 4) = self->_numSubs;
    *(v6 + 64) |= 2u;
  }

  v14 = [(NSData *)self->_simHplmn copyWithZone:a3, v20];
  v15 = *(v6 + 5);
  *(v6 + 5) = v14;

  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    *(v6 + 14) = self->_subsId;
    *(v6 + 64) |= 8u;
    v16 = self->_has;
  }

  if ((v16 & 4) != 0)
  {
    *(v6 + 8) = self->_psPref;
    *(v6 + 64) |= 4u;
  }

  v17 = [(NSData *)self->_plmn copyWithZone:a3];
  v18 = *(v6 + 3);
  *(v6 + 3) = v17;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  has = self->_has;
  v6 = *(v4 + 64);
  if (has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 64) & 0x10) == 0 || self->_totalDurationMs != *(v4 + 15))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 64) & 0x10) != 0)
  {
    goto LABEL_35;
  }

  srvStats = self->_srvStats;
  if (srvStats | *(v4 + 6))
  {
    if (![(NSMutableArray *)srvStats isEqual:?])
    {
      goto LABEL_35;
    }

    has = self->_has;
  }

  v8 = *(v4 + 64);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_numSubs != *(v4 + 4))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_35;
  }

  simHplmn = self->_simHplmn;
  if (simHplmn | *(v4 + 5))
  {
    if ([(NSData *)simHplmn isEqual:?])
    {
      has = self->_has;
      goto LABEL_23;
    }

LABEL_35:
    v12 = 0;
    goto LABEL_36;
  }

LABEL_23:
  v10 = *(v4 + 64);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 64) & 8) == 0 || self->_subsId != *(v4 + 14))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 64) & 8) != 0)
  {
    goto LABEL_35;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_psPref != *(v4 + 8))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
    goto LABEL_35;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 3))
  {
    v12 = [(NSData *)plmn isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_36:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_totalDurationMs;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSMutableArray *)self->_srvStats hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_numSubs;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSData *)self->_simHplmn hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_subsId;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v9 = 0;
    return v4 ^ v3 ^ v6 ^ v5 ^ v7 ^ v8 ^ v9 ^ [(NSData *)self->_plmn hash];
  }

  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v9 = 2654435761 * self->_psPref;
  return v4 ^ v3 ^ v6 ^ v5 ^ v7 ^ v8 ^ v9 ^ [(NSData *)self->_plmn hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 64);
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 64);
  }

  if ((v6 & 0x10) != 0)
  {
    self->_totalDurationMs = *(v4 + 15);
    *&self->_has |= 0x10u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 6);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CellularServiceStatusHist *)self addSrvStat:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if ((v5[16] & 2) != 0)
  {
    self->_numSubs = v5[4];
    *&self->_has |= 2u;
  }

  if (*(v5 + 5))
  {
    [(CellularServiceStatusHist *)self setSimHplmn:?];
  }

  v12 = *(v5 + 64);
  if ((v12 & 8) != 0)
  {
    self->_subsId = v5[14];
    *&self->_has |= 8u;
    v12 = *(v5 + 64);
  }

  if ((v12 & 4) != 0)
  {
    self->_psPref = v5[8];
    *&self->_has |= 4u;
  }

  if (*(v5 + 3))
  {
    [(CellularServiceStatusHist *)self setPlmn:?];
  }
}

@end