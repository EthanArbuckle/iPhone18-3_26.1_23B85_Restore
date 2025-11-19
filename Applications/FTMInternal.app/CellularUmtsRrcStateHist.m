@interface CellularUmtsRrcStateHist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStateHist:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTotalDurationMs:(BOOL)a3;
- (void)setHasWcdma:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularUmtsRrcStateHist

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

- (void)setHasWcdma:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)addStateHist:(id)a3
{
  v4 = a3;
  stateHists = self->_stateHists;
  v8 = v4;
  if (!stateHists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_stateHists;
    self->_stateHists = v6;

    v4 = v8;
    stateHists = self->_stateHists;
  }

  [(NSMutableArray *)stateHists addObject:v4];
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
  v7.super_class = CellularUmtsRrcStateHist;
  v3 = [(CellularUmtsRrcStateHist *)&v7 description];
  v4 = [(CellularUmtsRrcStateHist *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v19 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v19 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v20 = [NSNumber numberWithUnsignedInt:self->_totalDurationMs];
  [v3 setObject:v20 forKey:@"total_duration_ms"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithBool:self->_wcdma];
    [v3 setObject:v5 forKey:@"wcdma"];
  }

LABEL_5:
  if ([(NSMutableArray *)self->_stateHists count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_stateHists, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->_stateHists;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"state_hist"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v13 forKey:@"num_subs"];
  }

  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    v16 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v16 forKey:@"subs_id"];

    v15 = self->_has;
  }

  if ((v15 & 4) != 0)
  {
    v17 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v17 forKey:@"ps_pref"];
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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  totalDurationMs = self->_totalDurationMs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    wcdma = self->_wcdma;
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_stateHists;
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

        v12 = *(*(&v19 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v13 = self->_has;
  if ((v13 & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if ((v13 & 4) != 0)
  {
LABEL_17:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 60) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 13) = self->_totalDurationMs;
  *(v4 + 60) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    *(v4 + 56) = self->_wcdma;
    *(v4 + 60) |= 0x20u;
  }

LABEL_5:
  v11 = v4;
  if (self->_plmn)
  {
    [v4 setPlmn:?];
  }

  if ([(CellularUmtsRrcStateHist *)self stateHistsCount])
  {
    [v11 clearStateHists];
    v6 = [(CellularUmtsRrcStateHist *)self stateHistsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularUmtsRrcStateHist *)self stateHistAtIndex:i];
        [v11 addStateHist:v9];
      }
    }
  }

  v10 = self->_has;
  if ((v10 & 2) != 0)
  {
    *(v11 + 4) = self->_numSubs;
    *(v11 + 60) |= 2u;
    v10 = self->_has;
    if ((v10 & 8) == 0)
    {
LABEL_13:
      if ((v10 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

  *(v11 + 12) = self->_subsId;
  *(v11 + 60) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_14:
    *(v11 + 8) = self->_psPref;
    *(v11 + 60) |= 4u;
  }

LABEL_15:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 60) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 13) = self->_totalDurationMs;
  *(v5 + 60) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    *(v5 + 56) = self->_wcdma;
    *(v5 + 60) |= 0x20u;
  }

LABEL_5:
  v8 = [(NSData *)self->_plmn copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_stateHists;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{a3, v18}];
        [v6 addStateHist:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = self->_has;
  if ((v16 & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    *(v6 + 12) = self->_subsId;
    *(v6 + 60) |= 8u;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }

    goto LABEL_15;
  }

  *(v6 + 4) = self->_numSubs;
  *(v6 + 60) |= 2u;
  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if ((v16 & 4) != 0)
  {
LABEL_15:
    *(v6 + 8) = self->_psPref;
    *(v6 + 60) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(v4 + 60);
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 60) & 0x10) == 0 || self->_totalDurationMs != *(v4 + 13))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 60) & 0x10) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 60) & 0x20) == 0)
    {
      goto LABEL_22;
    }

    v10 = *(v4 + 56);
    if (self->_wcdma)
    {
      if ((*(v4 + 56) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(v4 + 56))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 60) & 0x20) != 0)
  {
    goto LABEL_22;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 3) && ![(NSData *)plmn isEqual:?])
  {
    goto LABEL_22;
  }

  stateHists = self->_stateHists;
  if (stateHists | *(v4 + 5))
  {
    if (![(NSMutableArray *)stateHists isEqual:?])
    {
      goto LABEL_22;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_numSubs != *(v4 + 4))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 60) & 8) == 0 || self->_subsId != *(v4 + 12))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 60) & 8) != 0)
  {
    goto LABEL_22;
  }

  v8 = (*(v4 + 60) & 4) == 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_23;
  }

  if ((*(v4 + 60) & 4) != 0 && self->_psPref == *(v4 + 8))
  {
    v8 = 1;
    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
LABEL_23:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_totalDurationMs;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_wcdma;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSData *)self->_plmn hash];
  v7 = [(NSMutableArray *)self->_stateHists hash];
  if ((*&self->_has & 2) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v9 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v8 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v9 = 2654435761 * self->_subsId;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v10 = 2654435761 * self->_psPref;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 60);
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 60);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 60) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_totalDurationMs = *(v4 + 13);
  *&self->_has |= 0x10u;
  if ((*(v4 + 60) & 0x20) != 0)
  {
LABEL_4:
    self->_wcdma = *(v4 + 56);
    *&self->_has |= 0x20u;
  }

LABEL_5:
  if (*(v4 + 3))
  {
    [(CellularUmtsRrcStateHist *)self setPlmn:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v5 + 5);
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

        [(CellularUmtsRrcStateHist *)self addStateHist:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 60);
  if ((v12 & 2) == 0)
  {
    if ((*(v5 + 60) & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    self->_subsId = *(v5 + 12);
    *&self->_has |= 8u;
    if ((*(v5 + 60) & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  self->_numSubs = *(v5 + 4);
  *&self->_has |= 2u;
  v12 = *(v5 + 60);
  if ((v12 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if ((v12 & 4) != 0)
  {
LABEL_17:
    self->_psPref = *(v5 + 8);
    *&self->_has |= 4u;
  }

LABEL_18:
}

@end