@interface CellularLtePagingCycle
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEarfcn:(BOOL)earfcn;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPagingCycleMs:(BOOL)ms;
- (void)setHasPhyCellId:(BOOL)id;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularLtePagingCycle

- (void)setHasEarfcn:(BOOL)earfcn
{
  if (earfcn)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPhyCellId:(BOOL)id
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

- (void)setHasPagingCycleMs:(BOOL)ms
{
  if (ms)
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
  v7.super_class = CellularLtePagingCycle;
  v3 = [(CellularLtePagingCycle *)&v7 description];
  dictionaryRepresentation = [(CellularLtePagingCycle *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v8 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [NSNumber numberWithUnsignedInt:self->_earfcn];
  [v3 setObject:v9 forKey:@"earfcn"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = [NSNumber numberWithUnsignedInt:self->_phyCellId];
  [v3 setObject:v10 forKey:@"phy_cell_id"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = [NSNumber numberWithUnsignedInt:self->_pagingCycleMs];
  [v3 setObject:v11 forKey:@"paging_cycle_ms"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v12 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  v13 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v13 forKey:@"num_subs"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    v5 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v5 forKey:@"ps_pref"];
  }

LABEL_9:
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
  v13 = toCopy;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v13;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  earfcn = self->_earfcn;
  PBDataWriterWriteUint32Field();
  toCopy = v13;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  phyCellId = self->_phyCellId;
  PBDataWriterWriteUint32Field();
  toCopy = v13;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  pagingCycleMs = self->_pagingCycleMs;
  PBDataWriterWriteUint32Field();
  toCopy = v13;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  toCopy = v13;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  toCopy = v13;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
    toCopy = v13;
  }

LABEL_9:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
    toCopy = v13;
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
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 4) = self->_earfcn;
  *(toCopy + 48) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(toCopy + 7) = self->_phyCellId;
  *(toCopy + 48) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(toCopy + 6) = self->_pagingCycleMs;
  *(toCopy + 48) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(toCopy + 11) = self->_subsId;
  *(toCopy + 48) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  *(toCopy + 5) = self->_numSubs;
  *(toCopy + 48) |= 4u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    *(toCopy + 10) = self->_psPref;
    *(toCopy + 48) |= 0x20u;
  }

LABEL_9:
  if (self->_plmn)
  {
    v6 = toCopy;
    [toCopy setPlmn:?];
    toCopy = v6;
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
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 4) = self->_earfcn;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v5 + 7) = self->_phyCellId;
  *(v5 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 6) = self->_pagingCycleMs;
  *(v5 + 48) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    *(v5 + 5) = self->_numSubs;
    *(v5 + 48) |= 4u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_14:
  *(v5 + 11) = self->_subsId;
  *(v5 + 48) |= 0x40u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 0x20) != 0)
  {
LABEL_8:
    *(v5 + 10) = self->_psPref;
    *(v5 + 48) |= 0x20u;
  }

LABEL_9:
  v8 = [(NSData *)self->_plmn copyWithZone:zone];
  v9 = v6[4];
  v6[4] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_39;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_39:
    v7 = 0;
    goto LABEL_40;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_earfcn != *(equalCopy + 4))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 48) & 0x10) == 0 || self->_phyCellId != *(equalCopy + 7))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 48) & 0x10) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_pagingCycleMs != *(equalCopy + 6))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 48) & 0x40) == 0 || self->_subsId != *(equalCopy + 11))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 48) & 0x40) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_numSubs != *(equalCopy + 5))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 48) & 0x20) == 0 || self->_psPref != *(equalCopy + 10))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 48) & 0x20) != 0)
  {
    goto LABEL_39;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 4))
  {
    v7 = [(NSData *)plmn isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_40:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_earfcn;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_phyCellId;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v9 = 2654435761 * self->_pagingCycleMs;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    v10 = 2654435761 * self->_subsId;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v11 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v12 = 0;
    return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSData *)self->_plmn hash:v3];
  }

LABEL_13:
  v10 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v11 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v12 = 2654435761 * self->_psPref;
  return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSData *)self->_plmn hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(fromCopy + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_earfcn = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_phyCellId = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 48);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_pagingCycleMs = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_subsId = *(fromCopy + 11);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 48);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  self->_numSubs = *(fromCopy + 5);
  *&self->_has |= 4u;
  if ((*(fromCopy + 48) & 0x20) != 0)
  {
LABEL_8:
    self->_psPref = *(fromCopy + 10);
    *&self->_has |= 0x20u;
  }

LABEL_9:
  if (*(fromCopy + 4))
  {
    v6 = fromCopy;
    [(CellularLtePagingCycle *)self setPlmn:?];
    fromCopy = v6;
  }
}

@end