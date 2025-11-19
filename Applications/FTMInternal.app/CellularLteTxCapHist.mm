@interface CellularLteTxCapHist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCapHist:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasHwProductId:(BOOL)a3;
- (void)setHasHwSku:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularLteTxCapHist

- (void)setHasDuration:(BOOL)a3
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

- (void)setHasHwSku:(BOOL)a3
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

- (void)setHasHwProductId:(BOOL)a3
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

- (void)addCapHist:(id)a3
{
  v4 = a3;
  capHists = self->_capHists;
  v8 = v4;
  if (!capHists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_capHists;
    self->_capHists = v6;

    v4 = v8;
    capHists = self->_capHists;
  }

  [(NSMutableArray *)capHists addObject:v4];
}

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasPsPref:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteTxCapHist;
  v3 = [(CellularLteTxCapHist *)&v7 description];
  v4 = [(CellularLteTxCapHist *)self dictionaryRepresentation];
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
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v20 = [NSNumber numberWithUnsignedInt:self->_duration];
  [v3 setObject:v20 forKey:@"duration"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_28:
  v21 = [NSNumber numberWithUnsignedInt:self->_hwSku];
  [v3 setObject:v21 forKey:@"hw_sku"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [NSNumber numberWithUnsignedInt:self->_hwProductId];
    [v3 setObject:v5 forKey:@"hw_product_id"];
  }

LABEL_6:
  if ([(NSMutableArray *)self->_capHists count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_capHists, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = self->_capHists;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

          v12 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"cap_hist"];
  }

  if ((*&self->_has & 0x10) != 0)
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
  if ((v15 & 0x40) != 0)
  {
    v16 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v16 forKey:@"subs_id"];

    v15 = self->_has;
  }

  if ((v15 & 0x20) != 0)
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
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_24:
  hwSku = self->_hwSku;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    hwProductId = self->_hwProductId;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_capHists;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v14 = self->_has;
  if ((v14 & 0x40) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v14 = self->_has;
  }

  if ((v14 & 0x20) != 0)
  {
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 56) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_23:
      *(v4 + 8) = self->_hwSku;
      *(v4 + 56) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 6) = self->_duration;
  *(v4 + 56) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v4 + 7) = self->_hwProductId;
    *(v4 + 56) |= 4u;
  }

LABEL_6:
  v12 = v4;
  if ([(CellularLteTxCapHist *)self capHistsCount])
  {
    [v12 clearCapHists];
    v6 = [(CellularLteTxCapHist *)self capHistsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularLteTxCapHist *)self capHistAtIndex:i];
        [v12 addCapHist:v9];
      }
    }
  }

  v10 = v12;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v12 + 9) = self->_numSubs;
    *(v12 + 56) |= 0x10u;
  }

  if (self->_plmn)
  {
    [v12 setPlmn:?];
    v10 = v12;
  }

  v11 = self->_has;
  if ((v11 & 0x40) != 0)
  {
    v10[13] = self->_subsId;
    *(v10 + 56) |= 0x40u;
    v11 = self->_has;
  }

  if ((v11 & 0x20) != 0)
  {
    v10[12] = self->_psPref;
    *(v10 + 56) |= 0x20u;
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
    *(v5 + 56) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 6) = self->_duration;
  *(v5 + 56) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_22:
  *(v5 + 8) = self->_hwSku;
  *(v5 + 56) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    *(v5 + 7) = self->_hwProductId;
    *(v5 + 56) |= 4u;
  }

LABEL_6:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_capHists;
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

        v13 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{a3, v18}];
        [v6 addCapHist:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 9) = self->_numSubs;
    *(v6 + 56) |= 0x10u;
  }

  v14 = [(NSData *)self->_plmn copyWithZone:a3, v18];
  v15 = *(v6 + 5);
  *(v6 + 5) = v14;

  v16 = self->_has;
  if ((v16 & 0x40) != 0)
  {
    *(v6 + 13) = self->_subsId;
    *(v6 + 56) |= 0x40u;
    v16 = self->_has;
  }

  if ((v16 & 0x20) != 0)
  {
    *(v6 + 12) = self->_psPref;
    *(v6 + 56) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v6 = *(v4 + 56);
  if (has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_42;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_duration != *(v4 + 6))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 56) & 8) == 0 || self->_hwSku != *(v4 + 8))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 56) & 8) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_hwProductId != *(v4 + 7))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_42;
  }

  capHists = self->_capHists;
  if (capHists | *(v4 + 2))
  {
    if (![(NSMutableArray *)capHists isEqual:?])
    {
      goto LABEL_42;
    }

    has = self->_has;
  }

  v8 = *(v4 + 56);
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 56) & 0x10) == 0 || self->_numSubs != *(v4 + 9))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 56) & 0x10) != 0)
  {
    goto LABEL_42;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 5))
  {
    if ([(NSData *)plmn isEqual:?])
    {
      has = self->_has;
      goto LABEL_33;
    }

LABEL_42:
    v10 = 0;
    goto LABEL_43;
  }

LABEL_33:
  if ((has & 0x40) != 0)
  {
    if ((*(v4 + 56) & 0x40) == 0 || self->_subsId != *(v4 + 13))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 56) & 0x40) != 0)
  {
    goto LABEL_42;
  }

  v10 = (*(v4 + 56) & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 56) & 0x20) == 0 || self->_psPref != *(v4 + 12))
    {
      goto LABEL_42;
    }

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
LABEL_3:
      v4 = 2654435761 * self->_duration;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_hwSku;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_hwProductId;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = [(NSMutableArray *)self->_capHists hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v8 = 2654435761 * self->_numSubs;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v10 = 2654435761 * self->_subsId;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_17:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v7 ^ v9 ^ v10 ^ v11;
  }

  v10 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  v11 = 2654435761 * self->_psPref;
  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v7 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 56);
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*(v4 + 56) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(v4 + 6);
  *&self->_has |= 2u;
  v6 = *(v4 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_24:
  self->_hwSku = *(v4 + 8);
  *&self->_has |= 8u;
  if ((*(v4 + 56) & 4) != 0)
  {
LABEL_5:
    self->_hwProductId = *(v4 + 7);
    *&self->_has |= 4u;
  }

LABEL_6:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 2);
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

        [(CellularLteTxCapHist *)self addCapHist:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if ((v5[14] & 0x10) != 0)
  {
    self->_numSubs = v5[9];
    *&self->_has |= 0x10u;
  }

  if (*(v5 + 5))
  {
    [(CellularLteTxCapHist *)self setPlmn:?];
  }

  v12 = *(v5 + 56);
  if ((v12 & 0x40) != 0)
  {
    self->_subsId = v5[13];
    *&self->_has |= 0x40u;
    v12 = *(v5 + 56);
  }

  if ((v12 & 0x20) != 0)
  {
    self->_psPref = v5[12];
    *&self->_has |= 0x20u;
  }
}

@end