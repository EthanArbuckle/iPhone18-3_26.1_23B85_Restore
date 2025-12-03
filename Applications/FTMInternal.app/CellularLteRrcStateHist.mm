@interface CellularLteRrcStateHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStateHist:(id)hist;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasTotalDurationMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation CellularLteRrcStateHist

- (void)setHasTotalDurationMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addStateHist:(id)hist
{
  histCopy = hist;
  stateHists = self->_stateHists;
  v8 = histCopy;
  if (!stateHists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_stateHists;
    self->_stateHists = v6;

    histCopy = v8;
    stateHists = self->_stateHists;
  }

  [(NSMutableArray *)stateHists addObject:histCopy];
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
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
  v7.super_class = CellularLteRrcStateHist;
  v3 = [(CellularLteRrcStateHist *)&v7 description];
  dictionaryRepresentation = [(CellularLteRrcStateHist *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

  if ([(NSMutableArray *)self->_stateHists count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_stateHists, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = self->_stateHists;
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

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"state_hist"];
  }

  v14 = self->_has;
  if ((v14 & 2) != 0)
  {
    v18 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v18 forKey:@"num_subs"];

    v14 = self->_has;
    if ((v14 & 8) == 0)
    {
LABEL_16:
      if ((v14 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_16;
  }

  v19 = [NSNumber numberWithUnsignedInt:self->_subsId, v20];
  [v3 setObject:v19 forKey:@"subs_id"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_17:
    v15 = [NSNumber numberWithUnsignedInt:self->_psPref, v20];
    [v3 setObject:v15 forKey:@"ps_pref"];
  }

LABEL_18:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
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
  v8 = self->_stateHists;
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

  v14 = self->_has;
  if ((v14 & 2) != 0)
  {
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
    v14 = self->_has;
    if ((v14 & 8) == 0)
    {
LABEL_14:
      if ((v14 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_15:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_16:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(toCopy + 13) = self->_totalDurationMs;
    *(toCopy + 56) |= 0x10u;
  }

  v12 = toCopy;
  if ([(CellularLteRrcStateHist *)self stateHistsCount])
  {
    [v12 clearStateHists];
    stateHistsCount = [(CellularLteRrcStateHist *)self stateHistsCount];
    if (stateHistsCount)
    {
      v7 = stateHistsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularLteRrcStateHist *)self stateHistAtIndex:i];
        [v12 addStateHist:v9];
      }
    }
  }

  v10 = self->_has;
  v11 = v12;
  if ((v10 & 2) != 0)
  {
    *(v12 + 4) = self->_numSubs;
    *(v12 + 56) |= 2u;
    v10 = self->_has;
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  *(v12 + 12) = self->_subsId;
  *(v12 + 56) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(v12 + 8) = self->_psPref;
    *(v12 + 56) |= 4u;
  }

LABEL_13:
  if (self->_plmn)
  {
    [v12 setPlmn:?];
    v11 = v12;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v5 + 13) = self->_totalDurationMs;
    *(v5 + 56) |= 0x10u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_stateHists;
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

        v13 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{zone, v18}];
        [v6 addStateHist:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((v14 & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    *(v6 + 12) = self->_subsId;
    *(v6 + 56) |= 8u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *(v6 + 4) = self->_numSubs;
  *(v6 + 56) |= 2u;
  v14 = self->_has;
  if ((v14 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if ((v14 & 4) != 0)
  {
LABEL_15:
    *(v6 + 8) = self->_psPref;
    *(v6 + 56) |= 4u;
  }

LABEL_16:
  v15 = [(NSData *)self->_plmn copyWithZone:zone, v18];
  v16 = *(v6 + 3);
  *(v6 + 3) = v15;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  has = self->_has;
  v6 = *(equalCopy + 56);
  if (has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 56) & 0x10) == 0 || self->_totalDurationMs != *(equalCopy + 13))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 56) & 0x10) != 0)
  {
    goto LABEL_32;
  }

  stateHists = self->_stateHists;
  if (stateHists | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)stateHists isEqual:?])
    {
LABEL_32:
      v10 = 0;
      goto LABEL_33;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 56);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_numSubs != *(equalCopy + 4))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_subsId != *(equalCopy + 12))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 56) & 8) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_psPref != *(equalCopy + 8))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_32;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 3))
  {
    v10 = [(NSData *)plmn isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_33:

  return v10;
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
  v5 = [(NSMutableArray *)self->_stateHists hash];
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v8 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5 ^ [(NSData *)self->_plmn hash];
  }

  v6 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v7 = 2654435761 * self->_subsId;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = 2654435761 * self->_psPref;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5 ^ [(NSData *)self->_plmn hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 56);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 56);
  }

  if ((v6 & 0x10) != 0)
  {
    self->_totalDurationMs = *(fromCopy + 13);
    *&self->_has |= 0x10u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 5);
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

        [(CellularLteRrcStateHist *)self addStateHist:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 56);
  if ((v12 & 2) != 0)
  {
    self->_numSubs = *(v5 + 4);
    *&self->_has |= 2u;
    v12 = *(v5 + 56);
    if ((v12 & 8) == 0)
    {
LABEL_14:
      if ((v12 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v5 + 56) & 8) == 0)
  {
    goto LABEL_14;
  }

  self->_subsId = *(v5 + 12);
  *&self->_has |= 8u;
  if ((*(v5 + 56) & 4) != 0)
  {
LABEL_15:
    self->_psPref = *(v5 + 8);
    *&self->_has |= 4u;
  }

LABEL_16:
  if (*(v5 + 3))
  {
    [(CellularLteRrcStateHist *)self setPlmn:?];
  }
}

@end