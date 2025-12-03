@interface CellularCdmaTxRxHistV2
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPerBand:(id)band;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasNid:(BOOL)nid;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSid:(BOOL)sid;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularCdmaTxRxHistV2

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

- (void)addPerBand:(id)band
{
  bandCopy = band;
  perBands = self->_perBands;
  v8 = bandCopy;
  if (!perBands)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_perBands;
    self->_perBands = v6;

    bandCopy = v8;
    perBands = self->_perBands;
  }

  [(NSMutableArray *)perBands addObject:bandCopy];
}

- (void)setHasSid:(BOOL)sid
{
  if (sid)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasNid:(BOOL)nid
{
  if (nid)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
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
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
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
  v7.super_class = CellularCdmaTxRxHistV2;
  v3 = [(CellularCdmaTxRxHistV2 *)&v7 description];
  dictionaryRepresentation = [(CellularCdmaTxRxHistV2 *)self dictionaryRepresentation];
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

  if ([(NSMutableArray *)self->_perBands count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_perBands, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = self->_perBands;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"per_band"];
  }

  v14 = self->_has;
  if ((v14 & 0x20) != 0)
  {
    v18 = [NSNumber numberWithUnsignedInt:self->_sid];
    [v3 setObject:v18 forKey:@"sid"];

    v14 = self->_has;
    if ((v14 & 4) == 0)
    {
LABEL_16:
      if ((v14 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_16;
  }

  v19 = [NSNumber numberWithUnsignedInt:self->_nid, v22];
  [v3 setObject:v19 forKey:@"nid"];

  v14 = self->_has;
  if ((v14 & 8) == 0)
  {
LABEL_17:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  v20 = [NSNumber numberWithUnsignedInt:self->_numSubs, v22];
  [v3 setObject:v20 forKey:@"num_subs"];

  v14 = self->_has;
  if ((v14 & 0x40) == 0)
  {
LABEL_18:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_28:
  v21 = [NSNumber numberWithUnsignedInt:self->_subsId, v22];
  [v3 setObject:v21 forKey:@"subs_id"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_19:
    v15 = [NSNumber numberWithUnsignedInt:self->_psPref, v22];
    [v3 setObject:v15 forKey:@"ps_pref"];
  }

LABEL_20:
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

  if ((has & 2) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteUint32Field();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_perBands;
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

        v13 = *(*(&v20 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((v14 & 0x20) != 0)
  {
    sid = self->_sid;
    PBDataWriterWriteUint32Field();
    v14 = self->_has;
    if ((v14 & 4) == 0)
    {
LABEL_14:
      if ((v14 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

  nid = self->_nid;
  PBDataWriterWriteUint32Field();
  v14 = self->_has;
  if ((v14 & 8) == 0)
  {
LABEL_15:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  v14 = self->_has;
  if ((v14 & 0x40) == 0)
  {
LABEL_16:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_24:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_17:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
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
    *(toCopy + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_duration;
    *(toCopy + 60) |= 2u;
  }

  v12 = toCopy;
  if ([(CellularCdmaTxRxHistV2 *)self perBandsCount])
  {
    [v12 clearPerBands];
    perBandsCount = [(CellularCdmaTxRxHistV2 *)self perBandsCount];
    if (perBandsCount)
    {
      v7 = perBandsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularCdmaTxRxHistV2 *)self perBandAtIndex:i];
        [v12 addPerBand:v9];
      }
    }
  }

  v10 = self->_has;
  v11 = v12;
  if ((v10 & 0x20) != 0)
  {
    *(v12 + 13) = self->_sid;
    *(v12 + 60) |= 0x20u;
    v10 = self->_has;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

  *(v12 + 5) = self->_nid;
  *(v12 + 60) |= 4u;
  v10 = self->_has;
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v12 + 6) = self->_numSubs;
  *(v12 + 60) |= 8u;
  v10 = self->_has;
  if ((v10 & 0x40) == 0)
  {
LABEL_13:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_23:
  *(v12 + 14) = self->_subsId;
  *(v12 + 60) |= 0x40u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    *(v12 + 12) = self->_psPref;
    *(v12 + 60) |= 0x10u;
  }

LABEL_15:
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
    *(v5 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 4) = self->_duration;
    *(v5 + 60) |= 2u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_perBands;
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
        [v6 addPerBand:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((v14 & 0x20) != 0)
  {
    *(v6 + 13) = self->_sid;
    *(v6 + 60) |= 0x20u;
    v14 = self->_has;
    if ((v14 & 4) == 0)
    {
LABEL_14:
      if ((v14 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

  *(v6 + 5) = self->_nid;
  *(v6 + 60) |= 4u;
  v14 = self->_has;
  if ((v14 & 8) == 0)
  {
LABEL_15:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    *(v6 + 14) = self->_subsId;
    *(v6 + 60) |= 0x40u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_21:
  *(v6 + 6) = self->_numSubs;
  *(v6 + 60) |= 8u;
  v14 = self->_has;
  if ((v14 & 0x40) != 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  if ((v14 & 0x10) != 0)
  {
LABEL_17:
    *(v6 + 12) = self->_psPref;
    *(v6 + 60) |= 0x10u;
  }

LABEL_18:
  v15 = [(NSData *)self->_plmn copyWithZone:zone, v18];
  v16 = *(v6 + 5);
  *(v6 + 5) = v15;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v6 = *(equalCopy + 60);
  if (has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_42;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_duration != *(equalCopy + 4))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_42;
  }

  perBands = self->_perBands;
  if (perBands | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)perBands isEqual:?])
    {
LABEL_42:
      v10 = 0;
      goto LABEL_43;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 60);
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 60) & 0x20) == 0 || self->_sid != *(equalCopy + 13))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 60) & 0x20) != 0)
  {
    goto LABEL_42;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0 || self->_nid != *(equalCopy + 5))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_42;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0 || self->_numSubs != *(equalCopy + 6))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
    goto LABEL_42;
  }

  if ((has & 0x40) != 0)
  {
    if ((*(equalCopy + 60) & 0x40) == 0 || self->_subsId != *(equalCopy + 14))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 60) & 0x40) != 0)
  {
    goto LABEL_42;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 60) & 0x10) == 0 || self->_psPref != *(equalCopy + 12))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 60) & 0x10) != 0)
  {
    goto LABEL_42;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 5))
  {
    v10 = [(NSData *)plmn isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_43:

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
  v5 = [(NSMutableArray *)self->_perBands hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v6 = 2654435761 * self->_sid;
    if ((*&self->_has & 4) != 0)
    {
LABEL_8:
      v7 = 2654435761 * self->_nid;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  v7 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    v8 = 2654435761 * self->_numSubs;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    v9 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v10 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v5 ^ [(NSData *)self->_plmn hash];
  }

LABEL_14:
  v8 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  v9 = 2654435761 * self->_subsId;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v10 = 2654435761 * self->_psPref;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v5 ^ [(NSData *)self->_plmn hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 60);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 60);
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
  v7 = *(fromCopy + 4);
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

        [(CellularCdmaTxRxHistV2 *)self addPerBand:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 60);
  if ((v12 & 0x20) != 0)
  {
    self->_sid = *(v5 + 13);
    *&self->_has |= 0x20u;
    v12 = *(v5 + 60);
    if ((v12 & 4) == 0)
    {
LABEL_14:
      if ((v12 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((*(v5 + 60) & 4) == 0)
  {
    goto LABEL_14;
  }

  self->_nid = *(v5 + 5);
  *&self->_has |= 4u;
  v12 = *(v5 + 60);
  if ((v12 & 8) == 0)
  {
LABEL_15:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_numSubs = *(v5 + 6);
  *&self->_has |= 8u;
  v12 = *(v5 + 60);
  if ((v12 & 0x40) == 0)
  {
LABEL_16:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_24:
  self->_subsId = *(v5 + 14);
  *&self->_has |= 0x40u;
  if ((*(v5 + 60) & 0x10) != 0)
  {
LABEL_17:
    self->_psPref = *(v5 + 12);
    *&self->_has |= 0x10u;
  }

LABEL_18:
  if (*(v5 + 5))
  {
    [(CellularCdmaTxRxHistV2 *)self setPlmn:?];
  }
}

@end