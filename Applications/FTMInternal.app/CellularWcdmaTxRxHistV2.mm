@interface CellularWcdmaTxRxHistV2
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addHistPerBand:(id)band;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularWcdmaTxRxHistV2

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

- (void)addHistPerBand:(id)band
{
  bandCopy = band;
  histPerBands = self->_histPerBands;
  v8 = bandCopy;
  if (!histPerBands)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_histPerBands;
    self->_histPerBands = v6;

    bandCopy = v8;
    histPerBands = self->_histPerBands;
  }

  [(NSMutableArray *)histPerBands addObject:bandCopy];
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
  v7.super_class = CellularWcdmaTxRxHistV2;
  v3 = [(CellularWcdmaTxRxHistV2 *)&v7 description];
  dictionaryRepresentation = [(CellularWcdmaTxRxHistV2 *)self dictionaryRepresentation];
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

  if ([(NSMutableArray *)self->_histPerBands count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_histPerBands, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = self->_histPerBands;
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

    [v3 setObject:v7 forKey:@"hist_per_band"];
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    v15 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v15 forKey:@"num_subs"];

    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
  {
    v16 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v16 forKey:@"ps_pref"];
  }

  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v18 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v18 forKey:@"subs_id"];
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

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_histPerBands;
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
  if ((v14 & 4) != 0)
  {
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
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
    *(toCopy + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_duration;
    *(toCopy + 56) |= 2u;
  }

  v12 = toCopy;
  if ([(CellularWcdmaTxRxHistV2 *)self histPerBandsCount])
  {
    [v12 clearHistPerBands];
    histPerBandsCount = [(CellularWcdmaTxRxHistV2 *)self histPerBandsCount];
    if (histPerBandsCount)
    {
      v7 = histPerBandsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularWcdmaTxRxHistV2 *)self histPerBandAtIndex:i];
        [v12 addHistPerBand:v9];
      }
    }
  }

  v10 = self->_has;
  v11 = v12;
  if ((v10 & 4) != 0)
  {
    *(v12 + 8) = self->_numSubs;
    *(v12 + 56) |= 4u;
    v10 = self->_has;
  }

  if ((v10 & 8) != 0)
  {
    *(v12 + 12) = self->_psPref;
    *(v12 + 56) |= 8u;
  }

  if (self->_plmn)
  {
    [v12 setPlmn:?];
    v11 = v12;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v11[13] = self->_subsId;
    *(v11 + 56) |= 0x10u;
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

  if ((has & 2) != 0)
  {
    *(v5 + 4) = self->_duration;
    *(v5 + 56) |= 2u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_histPerBands;
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
        [v6 addHistPerBand:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    *(v6 + 8) = self->_numSubs;
    *(v6 + 56) |= 4u;
    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
  {
    *(v6 + 12) = self->_psPref;
    *(v6 + 56) |= 8u;
  }

  v15 = [(NSData *)self->_plmn copyWithZone:zone, v18];
  v16 = *(v6 + 5);
  *(v6 + 5) = v15;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 13) = self->_subsId;
    *(v6 + 56) |= 0x10u;
  }

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

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_duration != *(equalCopy + 4))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_32;
  }

  histPerBands = self->_histPerBands;
  if (histPerBands | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)histPerBands isEqual:?])
    {
      goto LABEL_32;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 56);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_numSubs != *(equalCopy + 8))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_psPref != *(equalCopy + 12))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 56) & 8) != 0)
  {
    goto LABEL_32;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 5))
  {
    if ([(NSData *)plmn isEqual:?])
    {
      has = self->_has;
      goto LABEL_28;
    }

LABEL_32:
    v10 = 0;
    goto LABEL_33;
  }

LABEL_28:
  v10 = (*(equalCopy + 56) & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 56) & 0x10) == 0 || self->_subsId != *(equalCopy + 13))
    {
      goto LABEL_32;
    }

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
  v5 = [(NSMutableArray *)self->_histPerBands hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_numSubs;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_8:
      v7 = 2654435761 * self->_psPref;
      goto LABEL_11;
    }
  }

  v7 = 0;
LABEL_11:
  v8 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v9 = 2654435761 * self->_subsId;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v7 ^ v5 ^ v8 ^ v9;
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

  if ((v6 & 2) != 0)
  {
    self->_duration = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 3);
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

        [(CellularWcdmaTxRxHistV2 *)self addHistPerBand:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 56);
  if ((v12 & 4) != 0)
  {
    self->_numSubs = *(v5 + 8);
    *&self->_has |= 4u;
    v12 = *(v5 + 56);
  }

  if ((v12 & 8) != 0)
  {
    self->_psPref = *(v5 + 12);
    *&self->_has |= 8u;
  }

  if (*(v5 + 5))
  {
    [(CellularWcdmaTxRxHistV2 *)self setPlmn:?];
  }

  if ((*(v5 + 56) & 0x10) != 0)
  {
    self->_subsId = *(v5 + 13);
    *&self->_has |= 0x10u;
  }
}

@end