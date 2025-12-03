@interface CellularNrRsrpRsrqSinrHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRsrpRsrqPerAntennaPanel:(id)panel;
- (void)addRsrpRsrqPerAntennaPanelSa:(id)sa;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasIsDataPreferred:(BOOL)preferred;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularNrRsrpRsrqSinrHist

- (void)dealloc
{
  [(CellularNrRsrpRsrqSinrHist *)self setRsrpRsrqPerAntennaPanels:0];
  [(CellularNrRsrpRsrqSinrHist *)self setRsrpRsrqPerAntennaPanelSas:0];
  [(CellularNrRsrpRsrqSinrHist *)self setPlmn:0];
  v3.receiver = self;
  v3.super_class = CellularNrRsrpRsrqSinrHist;
  [(CellularNrRsrpRsrqSinrHist *)&v3 dealloc];
}

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

- (void)addRsrpRsrqPerAntennaPanel:(id)panel
{
  panelCopy = panel;
  rsrpRsrqPerAntennaPanels = self->_rsrpRsrqPerAntennaPanels;
  v8 = panelCopy;
  if (!rsrpRsrqPerAntennaPanels)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_rsrpRsrqPerAntennaPanels;
    self->_rsrpRsrqPerAntennaPanels = v6;

    panelCopy = v8;
    rsrpRsrqPerAntennaPanels = self->_rsrpRsrqPerAntennaPanels;
  }

  [(NSMutableArray *)rsrpRsrqPerAntennaPanels addObject:panelCopy];
}

- (void)addRsrpRsrqPerAntennaPanelSa:(id)sa
{
  saCopy = sa;
  rsrpRsrqPerAntennaPanelSas = self->_rsrpRsrqPerAntennaPanelSas;
  v8 = saCopy;
  if (!rsrpRsrqPerAntennaPanelSas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_rsrpRsrqPerAntennaPanelSas;
    self->_rsrpRsrqPerAntennaPanelSas = v6;

    saCopy = v8;
    rsrpRsrqPerAntennaPanelSas = self->_rsrpRsrqPerAntennaPanelSas;
  }

  [(NSMutableArray *)rsrpRsrqPerAntennaPanelSas addObject:saCopy];
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

- (void)setHasIsDataPreferred:(BOOL)preferred
{
  if (preferred)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularNrRsrpRsrqSinrHist;
  v3 = [(CellularNrRsrpRsrqSinrHist *)&v7 description];
  dictionaryRepresentation = [(CellularNrRsrpRsrqSinrHist *)self dictionaryRepresentation];
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

  if ([(NSMutableArray *)self->_rsrpRsrqPerAntennaPanels count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_rsrpRsrqPerAntennaPanels, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = self->_rsrpRsrqPerAntennaPanels;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v32 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"rsrp_rsrq_per_antenna_panel"];
  }

  if ([(NSMutableArray *)self->_rsrpRsrqPerAntennaPanelSas count])
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_rsrpRsrqPerAntennaPanelSas, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = self->_rsrpRsrqPerAntennaPanelSas;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v28 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"rsrp_rsrq_per_antenna_panel_sa"];
  }

  v21 = self->_has;
  if ((v21 & 0x10) != 0)
  {
    v26 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v26 forKey:@"subs_id"];

    v21 = self->_has;
    if ((v21 & 4) == 0)
    {
LABEL_25:
      if ((v21 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_25;
  }

  v27 = [NSNumber numberWithUnsignedInt:self->_numSubs, v28];
  [v3 setObject:v27 forKey:@"num_subs"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_26:
    v22 = [NSNumber numberWithUnsignedInt:self->_psPref, v28];
    [v3 setObject:v22 forKey:@"ps_pref"];
  }

LABEL_27:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v24 = [NSNumber numberWithBool:self->_isDataPreferred];
    [v3 setObject:v24 forKey:@"is_data_preferred"];
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

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = self->_rsrpRsrqPerAntennaPanels;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((v14 & 0x10) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v14 = self->_has;
    if ((v14 & 4) == 0)
    {
LABEL_14:
      if ((v14 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
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

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = self->_rsrpRsrqPerAntennaPanelSas;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
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

  v15 = toCopy;
  if ([(CellularNrRsrpRsrqSinrHist *)self rsrpRsrqPerAntennaPanelsCount])
  {
    [v15 clearRsrpRsrqPerAntennaPanels];
    rsrpRsrqPerAntennaPanelsCount = [(CellularNrRsrpRsrqSinrHist *)self rsrpRsrqPerAntennaPanelsCount];
    if (rsrpRsrqPerAntennaPanelsCount)
    {
      v7 = rsrpRsrqPerAntennaPanelsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularNrRsrpRsrqSinrHist *)self rsrpRsrqPerAntennaPanelAtIndex:i];
        [v15 addRsrpRsrqPerAntennaPanel:v9];
      }
    }
  }

  v10 = self->_has;
  if ((v10 & 0x10) != 0)
  {
    *(v15 + 14) = self->_subsId;
    *(v15 + 64) |= 0x10u;
    v10 = self->_has;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

  *(v15 + 5) = self->_numSubs;
  *(v15 + 64) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    *(v15 + 8) = self->_psPref;
    *(v15 + 64) |= 8u;
  }

LABEL_13:
  if (self->_plmn)
  {
    [v15 setPlmn:?];
  }

  if ([(CellularNrRsrpRsrqSinrHist *)self rsrpRsrqPerAntennaPanelSasCount])
  {
    [v15 clearRsrpRsrqPerAntennaPanelSas];
    rsrpRsrqPerAntennaPanelSasCount = [(CellularNrRsrpRsrqSinrHist *)self rsrpRsrqPerAntennaPanelSasCount];
    if (rsrpRsrqPerAntennaPanelSasCount)
    {
      v12 = rsrpRsrqPerAntennaPanelSasCount;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(CellularNrRsrpRsrqSinrHist *)self rsrpRsrqPerAntennaPanelSaAtIndex:j];
        [v15 addRsrpRsrqPerAntennaPanelSa:v14];
      }
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v15 + 60) = self->_isDataPreferred;
    *(v15 + 64) |= 0x20u;
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
  v8 = self->_rsrpRsrqPerAntennaPanels;
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
        [v6 addRsrpRsrqPerAntennaPanel:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((v14 & 0x10) != 0)
  {
    *(v6 + 14) = self->_subsId;
    *(v6 + 64) |= 0x10u;
    v14 = self->_has;
    if ((v14 & 4) == 0)
    {
LABEL_14:
      if ((v14 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

  *(v6 + 5) = self->_numSubs;
  *(v6 + 64) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    *(v6 + 8) = self->_psPref;
    *(v6 + 64) |= 8u;
  }

LABEL_16:
  v15 = [(NSData *)self->_plmn copyWithZone:zone];
  v16 = *(v6 + 3);
  *(v6 + 3) = v15;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_rsrpRsrqPerAntennaPanelSas;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v24 + 1) + 8 * j) copyWithZone:{zone, v24}];
        [v6 addRsrpRsrqPerAntennaPanelSa:v22];
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 60) = self->_isDataPreferred;
    *(v6 + 64) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  has = self->_has;
  v6 = *(equalCopy + 64);
  if (has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_duration != *(equalCopy + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_36;
  }

  rsrpRsrqPerAntennaPanels = self->_rsrpRsrqPerAntennaPanels;
  if (rsrpRsrqPerAntennaPanels | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)rsrpRsrqPerAntennaPanels isEqual:?])
    {
      goto LABEL_36;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 64);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 64) & 0x10) == 0 || self->_subsId != *(equalCopy + 14))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 64) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_numSubs != *(equalCopy + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_psPref != *(equalCopy + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_36;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 3) && ![(NSData *)plmn isEqual:?])
  {
    goto LABEL_36;
  }

  rsrpRsrqPerAntennaPanelSas = self->_rsrpRsrqPerAntennaPanelSas;
  if (rsrpRsrqPerAntennaPanelSas | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)rsrpRsrqPerAntennaPanelSas isEqual:?])
    {
      goto LABEL_36;
    }
  }

  v11 = (*(equalCopy + 64) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 64) & 0x20) != 0)
    {
      if (self->_isDataPreferred)
      {
        if ((*(equalCopy + 60) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (*(equalCopy + 60))
      {
        goto LABEL_36;
      }

      v11 = 1;
      goto LABEL_37;
    }

LABEL_36:
    v11 = 0;
  }

LABEL_37:

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
  v5 = [(NSMutableArray *)self->_rsrpRsrqPerAntennaPanels hash];
  if ((*&self->_has & 0x10) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v6 = 2654435761 * self->_subsId;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v7 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    v8 = 2654435761 * self->_psPref;
    goto LABEL_13;
  }

LABEL_12:
  v8 = 0;
LABEL_13:
  v9 = [(NSData *)self->_plmn hash];
  v10 = [(NSMutableArray *)self->_rsrpRsrqPerAntennaPanelSas hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v11 = 2654435761 * self->_isDataPreferred;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5 ^ v9 ^ v10 ^ v11;
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
  v7 = *(fromCopy + 6);
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

        [(CellularNrRsrpRsrqSinrHist *)self addRsrpRsrqPerAntennaPanel:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 64);
  if ((v12 & 0x10) != 0)
  {
    self->_subsId = *(v5 + 14);
    *&self->_has |= 0x10u;
    v12 = *(v5 + 64);
    if ((v12 & 4) == 0)
    {
LABEL_14:
      if ((v12 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v5 + 64) & 4) == 0)
  {
    goto LABEL_14;
  }

  self->_numSubs = *(v5 + 5);
  *&self->_has |= 4u;
  if ((*(v5 + 64) & 8) != 0)
  {
LABEL_15:
    self->_psPref = *(v5 + 8);
    *&self->_has |= 8u;
  }

LABEL_16:
  if (*(v5 + 3))
  {
    [(CellularNrRsrpRsrqSinrHist *)self setPlmn:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = *(v5 + 5);
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(CellularNrRsrpRsrqSinrHist *)self addRsrpRsrqPerAntennaPanelSa:*(*(&v18 + 1) + 8 * j), v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }

  if ((*(v5 + 64) & 0x20) != 0)
  {
    self->_isDataPreferred = *(v5 + 60);
    *&self->_has |= 0x20u;
  }
}

@end