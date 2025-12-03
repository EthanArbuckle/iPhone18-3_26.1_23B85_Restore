@interface CellularLteTxRxLevelHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRxHist:(id)hist;
- (void)addTxHist:(id)hist;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularLteTxRxLevelHist

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addTxHist:(id)hist
{
  histCopy = hist;
  txHists = self->_txHists;
  v8 = histCopy;
  if (!txHists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_txHists;
    self->_txHists = v6;

    histCopy = v8;
    txHists = self->_txHists;
  }

  [(NSMutableArray *)txHists addObject:histCopy];
}

- (void)addRxHist:(id)hist
{
  histCopy = hist;
  rxHists = self->_rxHists;
  v8 = histCopy;
  if (!rxHists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_rxHists;
    self->_rxHists = v6;

    histCopy = v8;
    rxHists = self->_rxHists;
  }

  [(NSMutableArray *)rxHists addObject:histCopy];
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteTxRxLevelHist;
  v3 = [(CellularLteTxRxLevelHist *)&v7 description];
  dictionaryRepresentation = [(CellularLteTxRxLevelHist *)self dictionaryRepresentation];
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

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_duration];
    [v3 setObject:v6 forKey:@"duration"];
  }

  if ([(NSMutableArray *)self->_txHists count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_txHists, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = self->_txHists;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"tx_hist"];
  }

  if ([(NSMutableArray *)self->_rxHists count])
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_rxHists, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = self->_rxHists;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v27 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"rx_hist"];
  }

  v21 = self->_has;
  if ((v21 & 4) != 0)
  {
    v22 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v22 forKey:@"num_subs"];

    v21 = self->_has;
  }

  if ((v21 & 8) != 0)
  {
    v23 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v23 forKey:@"ps_pref"];
  }

  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v25 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v25 forKey:@"subs_id"];
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

  if ((has & 2) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteUint32Field();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_txHists;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_rxHists;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  v20 = self->_has;
  if ((v20 & 4) != 0)
  {
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
    v20 = self->_has;
  }

  if ((v20 & 8) != 0)
  {
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x10) != 0)
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
    *(toCopy + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_duration;
    *(toCopy + 64) |= 2u;
  }

  v16 = toCopy;
  if ([(CellularLteTxRxLevelHist *)self txHistsCount])
  {
    [v16 clearTxHists];
    txHistsCount = [(CellularLteTxRxLevelHist *)self txHistsCount];
    if (txHistsCount)
    {
      v7 = txHistsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularLteTxRxLevelHist *)self txHistAtIndex:i];
        [v16 addTxHist:v9];
      }
    }
  }

  if ([(CellularLteTxRxLevelHist *)self rxHistsCount])
  {
    [v16 clearRxHists];
    rxHistsCount = [(CellularLteTxRxLevelHist *)self rxHistsCount];
    if (rxHistsCount)
    {
      v11 = rxHistsCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(CellularLteTxRxLevelHist *)self rxHistAtIndex:j];
        [v16 addRxHist:v13];
      }
    }
  }

  v14 = self->_has;
  v15 = v16;
  if ((v14 & 4) != 0)
  {
    *(v16 + 5) = self->_numSubs;
    *(v16 + 64) |= 4u;
    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
  {
    *(v16 + 8) = self->_psPref;
    *(v16 + 64) |= 8u;
  }

  if (self->_plmn)
  {
    [v16 setPlmn:?];
    v15 = v16;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v15[12] = self->_subsId;
    *(v15 + 64) |= 0x10u;
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
    *(v5 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 4) = self->_duration;
    *(v5 + 64) |= 2u;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_txHists;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v28 + 1) + 8 * i) copyWithZone:zone];
        [v6 addTxHist:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_rxHists;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v24 + 1) + 8 * j) copyWithZone:{zone, v24}];
        [v6 addRxHist:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  v20 = self->_has;
  if ((v20 & 4) != 0)
  {
    *(v6 + 5) = self->_numSubs;
    *(v6 + 64) |= 4u;
    v20 = self->_has;
  }

  if ((v20 & 8) != 0)
  {
    *(v6 + 8) = self->_psPref;
    *(v6 + 64) |= 8u;
  }

  v21 = [(NSData *)self->_plmn copyWithZone:zone, v24];
  v22 = *(v6 + 3);
  *(v6 + 3) = v21;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 12) = self->_subsId;
    *(v6 + 64) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  v5 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_duration != *(equalCopy + 4))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_33;
  }

  txHists = self->_txHists;
  if (txHists | *(equalCopy + 7) && ![(NSMutableArray *)txHists isEqual:?])
  {
    goto LABEL_33;
  }

  rxHists = self->_rxHists;
  if (rxHists | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)rxHists isEqual:?])
    {
      goto LABEL_33;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 64);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_numSubs != *(equalCopy + 5))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_psPref != *(equalCopy + 8))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_33;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 3))
  {
    if (![(NSData *)plmn isEqual:?])
    {
LABEL_33:
      v11 = 0;
      goto LABEL_34;
    }

    has = self->_has;
  }

  v11 = (*(equalCopy + 64) & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 64) & 0x10) == 0 || self->_subsId != *(equalCopy + 12))
    {
      goto LABEL_33;
    }

    v11 = 1;
  }

LABEL_34:

  return v11;
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
      v4 = 2654435761 * self->_duration;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSMutableArray *)self->_txHists hash];
  v6 = [(NSMutableArray *)self->_rxHists hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_numSubs;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_8:
      v8 = 2654435761 * self->_psPref;
      goto LABEL_11;
    }
  }

  v8 = 0;
LABEL_11:
  v9 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v10 = 2654435761 * self->_subsId;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 64);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 64);
  }

  if ((v6 & 2) != 0)
  {
    self->_duration = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(fromCopy + 7);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CellularLteTxRxLevelHist *)self addTxHist:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(v5 + 5);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(CellularLteTxRxLevelHist *)self addRxHist:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *(v5 + 64);
  if ((v17 & 4) != 0)
  {
    self->_numSubs = *(v5 + 5);
    *&self->_has |= 4u;
    v17 = *(v5 + 64);
  }

  if ((v17 & 8) != 0)
  {
    self->_psPref = *(v5 + 8);
    *&self->_has |= 8u;
  }

  if (*(v5 + 3))
  {
    [(CellularLteTxRxLevelHist *)self setPlmn:?];
  }

  if ((*(v5 + 64) & 0x10) != 0)
  {
    self->_subsId = *(v5 + 12);
    *&self->_has |= 0x10u;
  }
}

@end