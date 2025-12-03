@interface CellularNrUlPdcpStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDrb:(id)drb;
- (void)addSrb:(id)srb;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularNrUlPdcpStats

- (void)addDrb:(id)drb
{
  drbCopy = drb;
  drbs = self->_drbs;
  v8 = drbCopy;
  if (!drbs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_drbs;
    self->_drbs = v6;

    drbCopy = v8;
    drbs = self->_drbs;
  }

  [(NSMutableArray *)drbs addObject:drbCopy];
}

- (void)addSrb:(id)srb
{
  srbCopy = srb;
  srbs = self->_srbs;
  v8 = srbCopy;
  if (!srbs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_srbs;
    self->_srbs = v6;

    srbCopy = v8;
    srbs = self->_srbs;
  }

  [(NSMutableArray *)srbs addObject:srbCopy];
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
  v7.super_class = CellularNrUlPdcpStats;
  v3 = [(CellularNrUlPdcpStats *)&v7 description];
  dictionaryRepresentation = [(CellularNrUlPdcpStats *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_drbs count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_drbs, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = self->_drbs;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"drb"];
  }

  if ([(NSMutableArray *)self->_srbs count])
  {
    v12 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_srbs, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = self->_srbs;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"srb"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v23 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v23 forKey:@"subs_id"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_23:
      if ((has & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_23;
  }

  v24 = [NSNumber numberWithUnsignedInt:self->_numSubs, v25];
  [v3 setObject:v24 forKey:@"num_subs"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    v20 = [NSNumber numberWithUnsignedInt:self->_psPref, v25];
    [v3 setObject:v20 forKey:@"ps_pref"];
  }

LABEL_25:
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
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_drbs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = self->_srbs;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_19:
      if ((has & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_19;
  }

  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_20:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_21:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 60) |= 1u;
  }

  v15 = toCopy;
  if ([(CellularNrUlPdcpStats *)self drbsCount])
  {
    [v15 clearDrbs];
    drbsCount = [(CellularNrUlPdcpStats *)self drbsCount];
    if (drbsCount)
    {
      v6 = drbsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(CellularNrUlPdcpStats *)self drbAtIndex:i];
        [v15 addDrb:v8];
      }
    }
  }

  if ([(CellularNrUlPdcpStats *)self srbsCount])
  {
    [v15 clearSrbs];
    srbsCount = [(CellularNrUlPdcpStats *)self srbsCount];
    if (srbsCount)
    {
      v10 = srbsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(CellularNrUlPdcpStats *)self srbAtIndex:j];
        [v15 addSrb:v12];
      }
    }
  }

  has = self->_has;
  v14 = v15;
  if ((has & 8) != 0)
  {
    *(v15 + 14) = self->_subsId;
    *(v15 + 60) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  *(v15 + 6) = self->_numSubs;
  *(v15 + 60) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_14:
    *(v15 + 10) = self->_psPref;
    *(v15 + 60) |= 4u;
  }

LABEL_15:
  if (self->_plmn)
  {
    [v15 setPlmn:?];
    v14 = v15;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 60) |= 1u;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = self->_drbs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v27 + 1) + 8 * i) copyWithZone:zone];
        [v6 addDrb:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_srbs;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v23 + 1) + 8 * j) copyWithZone:{zone, v23}];
        [v6 addSrb:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    *(v6 + 6) = self->_numSubs;
    *(v6 + 60) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  *(v6 + 14) = self->_subsId;
  *(v6 + 60) |= 8u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if ((has & 4) != 0)
  {
LABEL_20:
    *(v6 + 10) = self->_psPref;
    *(v6 + 60) |= 4u;
  }

LABEL_21:
  v20 = [(NSData *)self->_plmn copyWithZone:zone, v23];
  v21 = *(v6 + 4);
  *(v6 + 4) = v20;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = *(equalCopy + 60);
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 60))
  {
LABEL_28:
    v10 = 0;
    goto LABEL_29;
  }

  drbs = self->_drbs;
  if (drbs | *(equalCopy + 2) && ![(NSMutableArray *)drbs isEqual:?])
  {
    goto LABEL_28;
  }

  srbs = self->_srbs;
  if (srbs | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)srbs isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v8 = *(equalCopy + 60);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0 || self->_subsId != *(equalCopy + 14))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_numSubs != *(equalCopy + 6))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0 || self->_psPref != *(equalCopy + 10))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_28;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 4))
  {
    v10 = [(NSData *)plmn isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_29:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_drbs hash];
  v5 = [(NSMutableArray *)self->_srbs hash];
  if ((*&self->_has & 8) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSData *)self->_plmn hash];
  }

  v6 = 2654435761 * self->_subsId;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = 2654435761 * self->_psPref;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSData *)self->_plmn hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 60))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CellularNrUlPdcpStats *)self addDrb:*(*(&v21 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(v5 + 6);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(CellularNrUlPdcpStats *)self addSrb:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *(v5 + 60);
  if ((v16 & 8) != 0)
  {
    self->_subsId = *(v5 + 14);
    *&self->_has |= 8u;
    v16 = *(v5 + 60);
    if ((v16 & 2) == 0)
    {
LABEL_19:
      if ((v16 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((*(v5 + 60) & 2) == 0)
  {
    goto LABEL_19;
  }

  self->_numSubs = *(v5 + 6);
  *&self->_has |= 2u;
  if ((*(v5 + 60) & 4) != 0)
  {
LABEL_20:
    self->_psPref = *(v5 + 10);
    *&self->_has |= 4u;
  }

LABEL_21:
  if (*(v5 + 4))
  {
    [(CellularNrUlPdcpStats *)self setPlmn:?];
  }
}

@end