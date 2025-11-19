@interface KCellularNrSysInfoBlocks
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSib:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFreq:(BOOL)a3;
- (void)setHasFreqBandInd:(BOOL)a3;
- (void)setHasIsDataPreferred:(BOOL)a3;
- (void)setHasNumMncDigits:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPhyCellId:(BOOL)a3;
- (void)setHasSelPlmnMcc:(BOOL)a3;
- (void)setHasSelPlmnMnc:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTrackingAreaCode:(BOOL)a3;
- (void)setHasValueTag:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularNrSysInfoBlocks

- (void)setHasTimestamp:(BOOL)a3
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
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
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
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasSelPlmnMcc:(BOOL)a3
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

- (void)setHasSelPlmnMnc:(BOOL)a3
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
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
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

- (void)setHasIsDataPreferred:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularNrSysInfoBlocks;
  v3 = [(KCellularNrSysInfoBlocks *)&v7 description];
  v4 = [(KCellularNrSysInfoBlocks *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v20 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v20 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  v21 = [NSNumber numberWithUnsignedLongLong:self->_cellId];
  [v3 setObject:v21 forKey:@"cell_id"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  v22 = [NSNumber numberWithUnsignedInt:self->_freq];
  [v3 setObject:v22 forKey:@"freq"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_36:
  v23 = [NSNumber numberWithUnsignedInt:self->_phyCellId];
  [v3 setObject:v23 forKey:@"phy_cell_id"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithUnsignedInt:self->_valueTag];
    [v3 setObject:v5 forKey:@"value_tag"];
  }

LABEL_7:
  mibInfo = self->_mibInfo;
  if (mibInfo)
  {
    v7 = [(KMibInfo *)mibInfo dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"mib_info"];
  }

  if ([(NSMutableArray *)self->_sibs count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_sibs, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = self->_sibs;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"sib"];
  }

  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    v24 = [NSNumber numberWithUnsignedInt:self->_freqBandInd];
    [v3 setObject:v24 forKey:@"freq_band_ind"];

    v15 = self->_has;
    if ((v15 & 0x400) == 0)
    {
LABEL_20:
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_40;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_20;
  }

  v25 = [NSNumber numberWithUnsignedInt:self->_trackingAreaCode, v30];
  [v3 setObject:v25 forKey:@"tracking_area_code"];

  v15 = self->_has;
  if ((v15 & 0x80) == 0)
  {
LABEL_21:
    if ((v15 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  v26 = [NSNumber numberWithUnsignedInt:self->_selPlmnMcc, v30];
  [v3 setObject:v26 forKey:@"sel_plmn_mcc"];

  v15 = self->_has;
  if ((v15 & 0x100) == 0)
  {
LABEL_22:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  v27 = [NSNumber numberWithUnsignedInt:self->_selPlmnMnc, v30];
  [v3 setObject:v27 forKey:@"sel_plmn_mnc"];

  v15 = self->_has;
  if ((v15 & 0x10) == 0)
  {
LABEL_23:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  v28 = [NSNumber numberWithUnsignedInt:self->_numMncDigits, v30];
  [v3 setObject:v28 forKey:@"num_mnc_digits"];

  v15 = self->_has;
  if ((v15 & 0x200) == 0)
  {
LABEL_24:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_43:
  v29 = [NSNumber numberWithUnsignedInt:self->_subsId, v30];
  [v3 setObject:v29 forKey:@"subs_id"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_25:
    v16 = [NSNumber numberWithUnsignedInt:self->_numSubs, v30];
    [v3 setObject:v16 forKey:@"num_subs"];
  }

LABEL_26:
  gci = self->_gci;
  if (gci)
  {
    [v3 setObject:gci forKey:@"gci"];
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    v18 = [NSNumber numberWithBool:self->_isDataPreferred];
    [v3 setObject:v18 forKey:@"is_data_preferred"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  cellId = self->_cellId;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  freq = self->_freq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_32:
  phyCellId = self->_phyCellId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    valueTag = self->_valueTag;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
  if (self->_mibInfo)
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
    if ((v13 & 0x400) == 0)
    {
LABEL_18:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_36;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_18;
  }

  trackingAreaCode = self->_trackingAreaCode;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x80) == 0)
  {
LABEL_19:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  selPlmnMcc = self->_selPlmnMcc;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x100) == 0)
  {
LABEL_20:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  selPlmnMnc = self->_selPlmnMnc;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x10) == 0)
  {
LABEL_21:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  numMncDigits = self->_numMncDigits;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x200) == 0)
  {
LABEL_22:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_39:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_23:
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

LABEL_24:
  if (self->_gci)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 48) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[1] = self->_cellId;
  *(v4 + 48) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 6) = self->_freq;
  *(v4 + 48) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_31:
  *(v4 + 14) = self->_phyCellId;
  *(v4 + 48) |= 0x40u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    *(v4 + 22) = self->_valueTag;
    *(v4 + 48) |= 0x800u;
  }

LABEL_7:
  v12 = v4;
  if (self->_mibInfo)
  {
    [v4 setMibInfo:?];
  }

  if ([(KCellularNrSysInfoBlocks *)self sibsCount])
  {
    [v12 clearSibs];
    v6 = [(KCellularNrSysInfoBlocks *)self sibsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(KCellularNrSysInfoBlocks *)self sibAtIndex:i];
        [v12 addSib:v9];
      }
    }
  }

  v10 = self->_has;
  v11 = v12;
  if ((v10 & 8) != 0)
  {
    *(v12 + 7) = self->_freqBandInd;
    *(v12 + 48) |= 8u;
    v10 = self->_has;
    if ((v10 & 0x400) == 0)
    {
LABEL_15:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_15;
  }

  *(v12 + 21) = self->_trackingAreaCode;
  *(v12 + 48) |= 0x400u;
  v10 = self->_has;
  if ((v10 & 0x80) == 0)
  {
LABEL_16:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v12 + 15) = self->_selPlmnMcc;
  *(v12 + 48) |= 0x80u;
  v10 = self->_has;
  if ((v10 & 0x100) == 0)
  {
LABEL_17:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v12 + 16) = self->_selPlmnMnc;
  *(v12 + 48) |= 0x100u;
  v10 = self->_has;
  if ((v10 & 0x10) == 0)
  {
LABEL_18:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v12 + 12) = self->_numMncDigits;
  *(v12 + 48) |= 0x10u;
  v10 = self->_has;
  if ((v10 & 0x200) == 0)
  {
LABEL_19:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_38:
  *(v12 + 20) = self->_subsId;
  *(v12 + 48) |= 0x200u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_20:
    *(v12 + 13) = self->_numSubs;
    *(v12 + 48) |= 0x20u;
  }

LABEL_21:
  if (self->_gci)
  {
    [v12 setGci:?];
    v11 = v12;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    v11[92] = self->_isDataPreferred;
    *(v11 + 48) |= 0x1000u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[2] = self->_timestamp;
    *(v5 + 48) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  v5[1] = self->_cellId;
  *(v5 + 48) |= 1u;
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
  *(v5 + 6) = self->_freq;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_28:
  *(v5 + 14) = self->_phyCellId;
  *(v5 + 48) |= 0x40u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    *(v5 + 22) = self->_valueTag;
    *(v5 + 48) |= 0x800u;
  }

LABEL_7:
  v8 = [(KMibInfo *)self->_mibInfo copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_sibs;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{a3, v20}];
        [v6 addSib:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    *(v6 + 7) = self->_freqBandInd;
    *(v6 + 48) |= 8u;
    v16 = self->_has;
    if ((v16 & 0x400) == 0)
    {
LABEL_16:
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_16;
  }

  *(v6 + 21) = self->_trackingAreaCode;
  *(v6 + 48) |= 0x400u;
  v16 = self->_has;
  if ((v16 & 0x80) == 0)
  {
LABEL_17:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v6 + 15) = self->_selPlmnMcc;
  *(v6 + 48) |= 0x80u;
  v16 = self->_has;
  if ((v16 & 0x100) == 0)
  {
LABEL_18:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v6 + 16) = self->_selPlmnMnc;
  *(v6 + 48) |= 0x100u;
  v16 = self->_has;
  if ((v16 & 0x10) == 0)
  {
LABEL_19:
    if ((v16 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v6 + 12) = self->_numMncDigits;
  *(v6 + 48) |= 0x10u;
  v16 = self->_has;
  if ((v16 & 0x200) == 0)
  {
LABEL_20:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_35:
  *(v6 + 20) = self->_subsId;
  *(v6 + 48) |= 0x200u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_21:
    *(v6 + 13) = self->_numSubs;
    *(v6 + 48) |= 0x20u;
  }

LABEL_22:
  v17 = [(NSString *)self->_gci copyWithZone:a3, v20];
  v18 = v6[4];
  v6[4] = v17;

  if ((*&self->_has & 0x1000) != 0)
  {
    *(v6 + 92) = self->_isDataPreferred;
    *(v6 + 48) |= 0x1000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_72;
  }

  has = self->_has;
  v6 = *(v4 + 48);
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_72;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_cellId != *(v4 + 1))
    {
      goto LABEL_72;
    }
  }

  else if (v6)
  {
    goto LABEL_72;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_freq != *(v4 + 6))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_phyCellId != *(v4 + 14))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 48) & 0x800) == 0 || self->_valueTag != *(v4 + 22))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 48) & 0x800) != 0)
  {
    goto LABEL_72;
  }

  mibInfo = self->_mibInfo;
  if (mibInfo | *(v4 + 5) && ![(KMibInfo *)mibInfo isEqual:?])
  {
    goto LABEL_72;
  }

  sibs = self->_sibs;
  if (sibs | *(v4 + 9))
  {
    if (![(NSMutableArray *)sibs isEqual:?])
    {
      goto LABEL_72;
    }
  }

  v9 = self->_has;
  v10 = *(v4 + 48);
  if ((v9 & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_freqBandInd != *(v4 + 7))
    {
      goto LABEL_72;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 48) & 0x400) == 0 || self->_trackingAreaCode != *(v4 + 21))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 48) & 0x400) != 0)
  {
    goto LABEL_72;
  }

  if ((v9 & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_selPlmnMcc != *(v4 + 15))
    {
      goto LABEL_72;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 48) & 0x100) == 0 || self->_selPlmnMnc != *(v4 + 16))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 48) & 0x100) != 0)
  {
    goto LABEL_72;
  }

  if ((v9 & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_numMncDigits != *(v4 + 12))
    {
      goto LABEL_72;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 48) & 0x200) == 0 || self->_subsId != *(v4 + 20))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 48) & 0x200) != 0)
  {
    goto LABEL_72;
  }

  if ((v9 & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0 || self->_numSubs != *(v4 + 13))
    {
      goto LABEL_72;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_72;
  }

  gci = self->_gci;
  if (gci | *(v4 + 4))
  {
    if (![(NSString *)gci isEqual:?])
    {
      goto LABEL_72;
    }

    v9 = self->_has;
  }

  if ((v9 & 0x1000) != 0)
  {
    if ((*(v4 + 48) & 0x1000) != 0)
    {
      if (self->_isDataPreferred)
      {
        if ((*(v4 + 92) & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      else if (*(v4 + 92))
      {
        goto LABEL_72;
      }

      v12 = 1;
      goto LABEL_73;
    }

LABEL_72:
    v12 = 0;
    goto LABEL_73;
  }

  v12 = (*(v4 + 48) & 0x1000) == 0;
LABEL_73:

  return v12;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    v21 = 2654435761u * self->_timestamp;
    if (has)
    {
LABEL_3:
      v20 = 2654435761u * self->_cellId;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v21 = 0;
    if (has)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v19 = 2654435761 * self->_freq;
    if ((has & 0x40) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v18 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v19 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v18 = 2654435761 * self->_phyCellId;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    v17 = 2654435761 * self->_valueTag;
    goto LABEL_12;
  }

LABEL_11:
  v17 = 0;
LABEL_12:
  v16 = [(KMibInfo *)self->_mibInfo hash];
  v15 = [(NSMutableArray *)self->_sibs hash];
  v4 = self->_has;
  if ((v4 & 8) != 0)
  {
    v5 = 2654435761 * self->_freqBandInd;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_14:
      v6 = 2654435761 * self->_trackingAreaCode;
      if ((v4 & 0x80) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_14;
    }
  }

  v6 = 0;
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    v7 = 2654435761 * self->_selPlmnMcc;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_16:
    v8 = 2654435761 * self->_selPlmnMnc;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = 0;
  if ((v4 & 0x10) != 0)
  {
LABEL_17:
    v9 = 2654435761 * self->_numMncDigits;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    v10 = 0;
    if ((v4 & 0x20) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:
  v9 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v10 = 2654435761 * self->_subsId;
  if ((v4 & 0x20) != 0)
  {
LABEL_19:
    v11 = 2654435761 * self->_numSubs;
    goto LABEL_27;
  }

LABEL_26:
  v11 = 0;
LABEL_27:
  v12 = [(NSString *)self->_gci hash];
  if ((*&self->_has & 0x1000) != 0)
  {
    v13 = 2654435761 * self->_isDataPreferred;
  }

  else
  {
    v13 = 0;
  }

  return v20 ^ v21 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 48);
  if ((v6 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v6 = *(v4 + 48);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_cellId = *(v4 + 1);
  *&self->_has |= 1u;
  v6 = *(v4 + 48);
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
  self->_freq = *(v4 + 6);
  *&self->_has |= 4u;
  v6 = *(v4 + 48);
  if ((v6 & 0x40) == 0)
  {
LABEL_5:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_phyCellId = *(v4 + 14);
  *&self->_has |= 0x40u;
  if ((*(v4 + 48) & 0x800) != 0)
  {
LABEL_6:
    self->_valueTag = *(v4 + 22);
    *&self->_has |= 0x800u;
  }

LABEL_7:
  mibInfo = self->_mibInfo;
  v8 = *(v5 + 5);
  if (mibInfo)
  {
    if (v8)
    {
      [(KMibInfo *)mibInfo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(KCellularNrSysInfoBlocks *)self setMibInfo:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v5 + 9);
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

        [(KCellularNrSysInfoBlocks *)self addSib:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *(v5 + 48);
  if ((v14 & 8) != 0)
  {
    self->_freqBandInd = *(v5 + 7);
    *&self->_has |= 8u;
    v14 = *(v5 + 48);
    if ((v14 & 0x400) == 0)
    {
LABEL_26:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_39;
    }
  }

  else if ((*(v5 + 48) & 0x400) == 0)
  {
    goto LABEL_26;
  }

  self->_trackingAreaCode = *(v5 + 21);
  *&self->_has |= 0x400u;
  v14 = *(v5 + 48);
  if ((v14 & 0x80) == 0)
  {
LABEL_27:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_selPlmnMcc = *(v5 + 15);
  *&self->_has |= 0x80u;
  v14 = *(v5 + 48);
  if ((v14 & 0x100) == 0)
  {
LABEL_28:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_selPlmnMnc = *(v5 + 16);
  *&self->_has |= 0x100u;
  v14 = *(v5 + 48);
  if ((v14 & 0x10) == 0)
  {
LABEL_29:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_numMncDigits = *(v5 + 12);
  *&self->_has |= 0x10u;
  v14 = *(v5 + 48);
  if ((v14 & 0x200) == 0)
  {
LABEL_30:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_42:
  self->_subsId = *(v5 + 20);
  *&self->_has |= 0x200u;
  if ((*(v5 + 48) & 0x20) != 0)
  {
LABEL_31:
    self->_numSubs = *(v5 + 13);
    *&self->_has |= 0x20u;
  }

LABEL_32:
  if (*(v5 + 4))
  {
    [(KCellularNrSysInfoBlocks *)self setGci:?];
  }

  if ((*(v5 + 48) & 0x1000) != 0)
  {
    self->_isDataPreferred = *(v5 + 92);
    *&self->_has |= 0x1000u;
  }
}

@end