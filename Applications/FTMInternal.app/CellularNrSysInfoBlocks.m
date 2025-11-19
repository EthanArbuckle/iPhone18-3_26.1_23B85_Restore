@interface CellularNrSysInfoBlocks
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSib:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCellId:(BOOL)a3;
- (void)setHasFreq:(BOOL)a3;
- (void)setHasFreqBandInd:(BOOL)a3;
- (void)setHasNumMncDigits:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPhyCellId:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasSelPlmnMcc:(BOOL)a3;
- (void)setHasSelPlmnMnc:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTrackingAreaCode:(BOOL)a3;
- (void)setHasValueTag:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularNrSysInfoBlocks

- (void)setHasCellId:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasFreq:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPhyCellId:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasValueTag:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)addSib:(id)a3
{
  v4 = a3;
  sibs = self->_sibs;
  v8 = v4;
  if (!sibs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_sibs;
    self->_sibs = v6;

    v4 = v8;
    sibs = self->_sibs;
  }

  [(NSMutableArray *)sibs addObject:v4];
}

- (void)setHasFreqBandInd:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTrackingAreaCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasSelPlmnMcc:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasSelPlmnMnc:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasNumMncDigits:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasNumSubs:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPsPref:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularNrSysInfoBlocks;
  v3 = [(CellularNrSysInfoBlocks *)&v7 description];
  v4 = [(CellularNrSysInfoBlocks *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v18 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v18 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v19 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v19 forKey:@"cell_id"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  v20 = [NSNumber numberWithUnsignedInt:self->_freq];
  [v3 setObject:v20 forKey:@"freq"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_33:
  v21 = [NSNumber numberWithUnsignedInt:self->_phyCellId];
  [v3 setObject:v21 forKey:@"phy_cell_id"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithUnsignedInt:self->_valueTag];
    [v3 setObject:v5 forKey:@"value_tag"];
  }

LABEL_7:
  mib = self->_mib;
  if (mib)
  {
    v7 = [(Mib *)mib dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"mib"];
  }

  if ([(NSMutableArray *)self->_sibs count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_sibs, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = self->_sibs;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"sib"];
  }

  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    v22 = [NSNumber numberWithUnsignedInt:self->_freqBandInd];
    [v3 setObject:v22 forKey:@"freq_band_ind"];

    v15 = self->_has;
    if ((v15 & 0x800) == 0)
    {
LABEL_20:
      if ((v15 & 0x100) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_20;
  }

  v23 = [NSNumber numberWithUnsignedInt:self->_trackingAreaCode, v29];
  [v3 setObject:v23 forKey:@"tracking_area_code"];

  v15 = self->_has;
  if ((v15 & 0x100) == 0)
  {
LABEL_21:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  v24 = [NSNumber numberWithUnsignedInt:self->_selPlmnMcc, v29];
  [v3 setObject:v24 forKey:@"sel_plmn_mcc"];

  v15 = self->_has;
  if ((v15 & 0x200) == 0)
  {
LABEL_22:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_38:
  v25 = [NSNumber numberWithUnsignedInt:self->_selPlmnMnc, v29];
  [v3 setObject:v25 forKey:@"sel_plmn_mnc"];

  v15 = self->_has;
  if ((v15 & 0x10) == 0)
  {
LABEL_23:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_40;
  }

LABEL_39:
  v26 = [NSNumber numberWithUnsignedInt:self->_numMncDigits, v29];
  [v3 setObject:v26 forKey:@"num_mnc_digits"];

  v15 = self->_has;
  if ((v15 & 0x400) == 0)
  {
LABEL_24:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

LABEL_40:
  v27 = [NSNumber numberWithUnsignedInt:self->_subsId, v29];
  [v3 setObject:v27 forKey:@"subs_id"];

  v15 = self->_has;
  if ((v15 & 0x20) == 0)
  {
LABEL_25:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_41:
  v28 = [NSNumber numberWithUnsignedInt:self->_numSubs, v29];
  [v3 setObject:v28 forKey:@"num_subs"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_26:
    v16 = [NSNumber numberWithUnsignedInt:self->_psPref, v29];
    [v3 setObject:v16 forKey:@"ps_pref"];
  }

LABEL_27:

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
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  freq = self->_freq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_29:
  phyCellId = self->_phyCellId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_6:
    valueTag = self->_valueTag;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
  if (self->_mib)
  {
    PBDataWriterWriteSubmessage();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = self->_sibs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    freqBandInd = self->_freqBandInd;
    PBDataWriterWriteUint32Field();
    v13 = self->_has;
    if ((v13 & 0x800) == 0)
    {
LABEL_18:
      if ((v13 & 0x100) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_18;
  }

  trackingAreaCode = self->_trackingAreaCode;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x100) == 0)
  {
LABEL_19:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  selPlmnMcc = self->_selPlmnMcc;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x200) == 0)
  {
LABEL_20:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  selPlmnMnc = self->_selPlmnMnc;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x10) == 0)
  {
LABEL_21:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  numMncDigits = self->_numMncDigits;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x400) == 0)
  {
LABEL_22:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_23;
    }

LABEL_37:
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_36:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_23:
  if ((v13 & 0x80) != 0)
  {
LABEL_24:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 42) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 4) = self->_cellId;
  *(v4 + 42) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 5) = self->_freq;
  *(v4 + 42) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_28:
  *(v4 + 12) = self->_phyCellId;
  *(v4 + 42) |= 0x40u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_6:
    *(v4 + 20) = self->_valueTag;
    *(v4 + 42) |= 0x1000u;
  }

LABEL_7:
  v11 = v4;
  if (self->_mib)
  {
    [v4 setMib:?];
  }

  if ([(CellularNrSysInfoBlocks *)self sibsCount])
  {
    [v11 clearSibs];
    v6 = [(CellularNrSysInfoBlocks *)self sibsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularNrSysInfoBlocks *)self sibAtIndex:i];
        [v11 addSib:v9];
      }
    }
  }

  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    *(v11 + 6) = self->_freqBandInd;
    *(v11 + 42) |= 8u;
    v10 = self->_has;
    if ((v10 & 0x800) == 0)
    {
LABEL_15:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_15;
  }

  *(v11 + 19) = self->_trackingAreaCode;
  *(v11 + 42) |= 0x800u;
  v10 = self->_has;
  if ((v10 & 0x100) == 0)
  {
LABEL_16:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v11 + 14) = self->_selPlmnMcc;
  *(v11 + 42) |= 0x100u;
  v10 = self->_has;
  if ((v10 & 0x200) == 0)
  {
LABEL_17:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v11 + 15) = self->_selPlmnMnc;
  *(v11 + 42) |= 0x200u;
  v10 = self->_has;
  if ((v10 & 0x10) == 0)
  {
LABEL_18:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v11 + 10) = self->_numMncDigits;
  *(v11 + 42) |= 0x10u;
  v10 = self->_has;
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v11 + 18) = self->_subsId;
  *(v11 + 42) |= 0x400u;
  v10 = self->_has;
  if ((v10 & 0x20) == 0)
  {
LABEL_20:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_36:
  *(v11 + 11) = self->_numSubs;
  *(v11 + 42) |= 0x20u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_21:
    *(v11 + 13) = self->_psPref;
    *(v11 + 42) |= 0x80u;
  }

LABEL_22:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 42) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 4) = self->_cellId;
  *(v5 + 42) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 5) = self->_freq;
  *(v5 + 42) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_27:
  *(v5 + 12) = self->_phyCellId;
  *(v5 + 42) |= 0x40u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_6:
    *(v5 + 20) = self->_valueTag;
    *(v5 + 42) |= 0x1000u;
  }

LABEL_7:
  v8 = [(Mib *)self->_mib copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_sibs;
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
        [v6 addSib:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    *(v6 + 6) = self->_freqBandInd;
    *(v6 + 42) |= 8u;
    v16 = self->_has;
    if ((v16 & 0x800) == 0)
    {
LABEL_16:
      if ((v16 & 0x100) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_16;
  }

  *(v6 + 19) = self->_trackingAreaCode;
  *(v6 + 42) |= 0x800u;
  v16 = self->_has;
  if ((v16 & 0x100) == 0)
  {
LABEL_17:
    if ((v16 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v6 + 14) = self->_selPlmnMcc;
  *(v6 + 42) |= 0x100u;
  v16 = self->_has;
  if ((v16 & 0x200) == 0)
  {
LABEL_18:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v6 + 15) = self->_selPlmnMnc;
  *(v6 + 42) |= 0x200u;
  v16 = self->_has;
  if ((v16 & 0x10) == 0)
  {
LABEL_19:
    if ((v16 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v6 + 10) = self->_numMncDigits;
  *(v6 + 42) |= 0x10u;
  v16 = self->_has;
  if ((v16 & 0x400) == 0)
  {
LABEL_20:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_35:
    *(v6 + 11) = self->_numSubs;
    *(v6 + 42) |= 0x20u;
    if ((*&self->_has & 0x80) == 0)
    {
      return v6;
    }

    goto LABEL_22;
  }

LABEL_34:
  *(v6 + 18) = self->_subsId;
  *(v6 + 42) |= 0x400u;
  v16 = self->_has;
  if ((v16 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_21:
  if ((v16 & 0x80) != 0)
  {
LABEL_22:
    *(v6 + 13) = self->_psPref;
    *(v6 + 42) |= 0x80u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_71;
  }

  has = self->_has;
  v6 = *(v4 + 42);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_71;
    }
  }

  else if (v6)
  {
LABEL_71:
    v11 = 0;
    goto LABEL_72;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_cellId != *(v4 + 4))
    {
      goto LABEL_71;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_freq != *(v4 + 5))
    {
      goto LABEL_71;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_phyCellId != *(v4 + 12))
    {
      goto LABEL_71;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 42) & 0x1000) == 0 || self->_valueTag != *(v4 + 20))
    {
      goto LABEL_71;
    }
  }

  else if ((*(v4 + 42) & 0x1000) != 0)
  {
    goto LABEL_71;
  }

  mib = self->_mib;
  if (mib | *(v4 + 4) && ![(Mib *)mib isEqual:?])
  {
    goto LABEL_71;
  }

  sibs = self->_sibs;
  if (sibs | *(v4 + 8))
  {
    if (![(NSMutableArray *)sibs isEqual:?])
    {
      goto LABEL_71;
    }
  }

  v9 = self->_has;
  v10 = *(v4 + 42);
  if ((v9 & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_freqBandInd != *(v4 + 6))
    {
      goto LABEL_71;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 42) & 0x800) == 0 || self->_trackingAreaCode != *(v4 + 19))
    {
      goto LABEL_71;
    }
  }

  else if ((*(v4 + 42) & 0x800) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 42) & 0x100) == 0 || self->_selPlmnMcc != *(v4 + 14))
    {
      goto LABEL_71;
    }
  }

  else if ((*(v4 + 42) & 0x100) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 42) & 0x200) == 0 || self->_selPlmnMnc != *(v4 + 15))
    {
      goto LABEL_71;
    }
  }

  else if ((*(v4 + 42) & 0x200) != 0)
  {
    goto LABEL_71;
  }

  if ((v9 & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_numMncDigits != *(v4 + 10))
    {
      goto LABEL_71;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 42) & 0x400) == 0 || self->_subsId != *(v4 + 18))
    {
      goto LABEL_71;
    }
  }

  else if ((*(v4 + 42) & 0x400) != 0)
  {
    goto LABEL_71;
  }

  if ((v9 & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0 || self->_numSubs != *(v4 + 11))
    {
      goto LABEL_71;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_71;
  }

  if ((v9 & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_psPref != *(v4 + 13))
    {
      goto LABEL_71;
    }

    v11 = 1;
  }

  else
  {
    v11 = (v10 & 0x80) == 0;
  }

LABEL_72:

  return v11;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_cellId;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_freq;
    if ((has & 0x40) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v6 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_phyCellId;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_valueTag;
    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  v9 = [(Mib *)self->_mib hash];
  v10 = [(NSMutableArray *)self->_sibs hash];
  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    v12 = 2654435761 * self->_freqBandInd;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_14:
      v13 = 2654435761 * self->_trackingAreaCode;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_14;
    }
  }

  v13 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_15:
    v14 = 2654435761 * self->_selPlmnMcc;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_16:
    v15 = 2654435761 * self->_selPlmnMnc;
    if ((v11 & 0x10) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = 0;
  if ((v11 & 0x10) != 0)
  {
LABEL_17:
    v16 = 2654435761 * self->_numMncDigits;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    v17 = 2654435761 * self->_subsId;
    if ((v11 & 0x20) != 0)
    {
      goto LABEL_19;
    }

LABEL_27:
    v18 = 0;
    if ((v11 & 0x80) != 0)
    {
      goto LABEL_20;
    }

LABEL_28:
    v19 = 0;
    return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

LABEL_26:
  v17 = 0;
  if ((v11 & 0x20) == 0)
  {
    goto LABEL_27;
  }

LABEL_19:
  v18 = 2654435761 * self->_numSubs;
  if ((v11 & 0x80) == 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  v19 = 2654435761 * self->_psPref;
  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 42);
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 42);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_cellId = *(v4 + 4);
  *&self->_has |= 2u;
  v6 = *(v4 + 42);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_freq = *(v4 + 5);
  *&self->_has |= 4u;
  v6 = *(v4 + 42);
  if ((v6 & 0x40) == 0)
  {
LABEL_5:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_phyCellId = *(v4 + 12);
  *&self->_has |= 0x40u;
  if ((*(v4 + 42) & 0x1000) != 0)
  {
LABEL_6:
    self->_valueTag = *(v4 + 20);
    *&self->_has |= 0x1000u;
  }

LABEL_7:
  mib = self->_mib;
  v8 = *(v5 + 4);
  if (mib)
  {
    if (v8)
    {
      [(Mib *)mib mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(CellularNrSysInfoBlocks *)self setMib:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v5 + 8);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(CellularNrSysInfoBlocks *)self addSib:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *(v5 + 42);
  if ((v14 & 8) != 0)
  {
    self->_freqBandInd = *(v5 + 6);
    *&self->_has |= 8u;
    v14 = *(v5 + 42);
    if ((v14 & 0x800) == 0)
    {
LABEL_26:
      if ((v14 & 0x100) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_36;
    }
  }

  else if ((*(v5 + 42) & 0x800) == 0)
  {
    goto LABEL_26;
  }

  self->_trackingAreaCode = *(v5 + 19);
  *&self->_has |= 0x800u;
  v14 = *(v5 + 42);
  if ((v14 & 0x100) == 0)
  {
LABEL_27:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_selPlmnMcc = *(v5 + 14);
  *&self->_has |= 0x100u;
  v14 = *(v5 + 42);
  if ((v14 & 0x200) == 0)
  {
LABEL_28:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_selPlmnMnc = *(v5 + 15);
  *&self->_has |= 0x200u;
  v14 = *(v5 + 42);
  if ((v14 & 0x10) == 0)
  {
LABEL_29:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_numMncDigits = *(v5 + 10);
  *&self->_has |= 0x10u;
  v14 = *(v5 + 42);
  if ((v14 & 0x400) == 0)
  {
LABEL_30:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_31;
    }

LABEL_40:
    self->_numSubs = *(v5 + 11);
    *&self->_has |= 0x20u;
    if ((*(v5 + 42) & 0x80) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_39:
  self->_subsId = *(v5 + 18);
  *&self->_has |= 0x400u;
  v14 = *(v5 + 42);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_31:
  if ((v14 & 0x80) != 0)
  {
LABEL_32:
    self->_psPref = *(v5 + 13);
    *&self->_has |= 0x80u;
  }

LABEL_33:
}

@end