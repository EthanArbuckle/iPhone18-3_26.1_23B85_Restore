@interface CellularLteSysInfoBlocks
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSib:(id)sib;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCellId:(BOOL)id;
- (void)setHasFreq:(BOOL)freq;
- (void)setHasFreqBandInd:(BOOL)ind;
- (void)setHasNumMncDigits:(BOOL)digits;
- (void)setHasPhyCellId:(BOOL)id;
- (void)setHasSelPlmnMcc:(BOOL)mcc;
- (void)setHasSelPlmnMnc:(BOOL)mnc;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasTrackingAreaCode:(BOOL)code;
- (void)setHasValueTag:(BOOL)tag;
- (void)writeTo:(id)to;
@end

@implementation CellularLteSysInfoBlocks

- (void)setHasCellId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasFreq:(BOOL)freq
{
  if (freq)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPhyCellId:(BOOL)id
{
  if (id)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasValueTag:(BOOL)tag
{
  if (tag)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)addSib:(id)sib
{
  sibCopy = sib;
  sibs = self->_sibs;
  v8 = sibCopy;
  if (!sibs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_sibs;
    self->_sibs = v6;

    sibCopy = v8;
    sibs = self->_sibs;
  }

  [(NSMutableArray *)sibs addObject:sibCopy];
}

- (void)setHasFreqBandInd:(BOOL)ind
{
  if (ind)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTrackingAreaCode:(BOOL)code
{
  if (code)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasSelPlmnMcc:(BOOL)mcc
{
  if (mcc)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSelPlmnMnc:(BOOL)mnc
{
  if (mnc)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumMncDigits:(BOOL)digits
{
  if (digits)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteSysInfoBlocks;
  v3 = [(CellularLteSysInfoBlocks *)&v7 description];
  dictionaryRepresentation = [(CellularLteSysInfoBlocks *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

      goto LABEL_30;
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
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20 = [NSNumber numberWithUnsignedInt:self->_freq];
  [v3 setObject:v20 forKey:@"freq"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_31:
  v21 = [NSNumber numberWithUnsignedInt:self->_phyCellId];
  [v3 setObject:v21 forKey:@"phy_cell_id"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithUnsignedInt:self->_valueTag];
    [v3 setObject:v5 forKey:@"value_tag"];
  }

LABEL_7:
  mib = self->_mib;
  if (mib)
  {
    dictionaryRepresentation = [(Mib *)mib dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"mib"];
  }

  if ([(NSMutableArray *)self->_sibs count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_sibs, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = self->_sibs;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
    if ((v15 & 0x200) == 0)
    {
LABEL_20:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v23 = [NSNumber numberWithUnsignedInt:self->_trackingAreaCode, v27];
  [v3 setObject:v23 forKey:@"tracking_area_code"];

  v15 = self->_has;
  if ((v15 & 0x40) == 0)
  {
LABEL_21:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  v24 = [NSNumber numberWithUnsignedInt:self->_selPlmnMcc, v27];
  [v3 setObject:v24 forKey:@"sel_plmn_mcc"];

  v15 = self->_has;
  if ((v15 & 0x80) == 0)
  {
LABEL_22:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  v25 = [NSNumber numberWithUnsignedInt:self->_selPlmnMnc, v27];
  [v3 setObject:v25 forKey:@"sel_plmn_mnc"];

  v15 = self->_has;
  if ((v15 & 0x10) == 0)
  {
LABEL_23:
    if ((v15 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_37:
  v26 = [NSNumber numberWithUnsignedInt:self->_numMncDigits, v27];
  [v3 setObject:v26 forKey:@"num_mnc_digits"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_24:
    v16 = [NSNumber numberWithUnsignedInt:self->_subsId, v27];
    [v3 setObject:v16 forKey:@"subs_id"];
  }

LABEL_25:

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

  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  freq = self->_freq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_27:
  phyCellId = self->_phyCellId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400) != 0)
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

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_sibs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v13 = self->_has;
  if ((v13 & 0x100) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v13 = self->_has;
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x200) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else if ((v13 & 8) == 0)
  {
    goto LABEL_18;
  }

  freqBandInd = self->_freqBandInd;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x200) == 0)
  {
LABEL_19:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_31:
  trackingAreaCode = self->_trackingAreaCode;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x40) == 0)
  {
LABEL_20:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_21;
    }

LABEL_33:
    selPlmnMnc = self->_selPlmnMnc;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_32:
  selPlmnMcc = self->_selPlmnMcc;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x80) != 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  if ((v13 & 0x10) != 0)
  {
LABEL_22:
    numMncDigits = self->_numMncDigits;
    PBDataWriterWriteUint32Field();
  }

LABEL_23:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 38) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 4) = self->_cellId;
  *(toCopy + 38) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(toCopy + 5) = self->_freq;
  *(toCopy + 38) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_26:
  *(toCopy + 11) = self->_phyCellId;
  *(toCopy + 38) |= 0x20u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_6:
    *(toCopy + 18) = self->_valueTag;
    *(toCopy + 38) |= 0x400u;
  }

LABEL_7:
  v11 = toCopy;
  if (self->_mib)
  {
    [toCopy setMib:?];
  }

  if ([(CellularLteSysInfoBlocks *)self sibsCount])
  {
    [v11 clearSibs];
    sibsCount = [(CellularLteSysInfoBlocks *)self sibsCount];
    if (sibsCount)
    {
      v7 = sibsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularLteSysInfoBlocks *)self sibAtIndex:i];
        [v11 addSib:v9];
      }
    }
  }

  v10 = self->_has;
  if ((v10 & 0x100) != 0)
  {
    *(v11 + 16) = self->_subsId;
    *(v11 + 38) |= 0x100u;
    v10 = self->_has;
    if ((v10 & 8) == 0)
    {
LABEL_15:
      if ((v10 & 0x200) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_15;
  }

  *(v11 + 6) = self->_freqBandInd;
  *(v11 + 38) |= 8u;
  v10 = self->_has;
  if ((v10 & 0x200) == 0)
  {
LABEL_16:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v11 + 17) = self->_trackingAreaCode;
  *(v11 + 38) |= 0x200u;
  v10 = self->_has;
  if ((v10 & 0x40) == 0)
  {
LABEL_17:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v11 + 12) = self->_selPlmnMcc;
  *(v11 + 38) |= 0x40u;
  v10 = self->_has;
  if ((v10 & 0x80) == 0)
  {
LABEL_18:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_32:
  *(v11 + 13) = self->_selPlmnMnc;
  *(v11 + 38) |= 0x80u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_19:
    *(v11 + 10) = self->_numMncDigits;
    *(v11 + 38) |= 0x10u;
  }

LABEL_20:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 38) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 4) = self->_cellId;
  *(v5 + 38) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 5) = self->_freq;
  *(v5 + 38) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_25:
  *(v5 + 11) = self->_phyCellId;
  *(v5 + 38) |= 0x20u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_6:
    *(v5 + 18) = self->_valueTag;
    *(v5 + 38) |= 0x400u;
  }

LABEL_7:
  v8 = [(Mib *)self->_mib copyWithZone:zone];
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

        v15 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{zone, v18}];
        [v6 addSib:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = self->_has;
  if ((v16 & 0x100) != 0)
  {
    *(v6 + 16) = self->_subsId;
    *(v6 + 38) |= 0x100u;
    v16 = self->_has;
    if ((v16 & 8) == 0)
    {
LABEL_16:
      if ((v16 & 0x200) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v16 & 8) == 0)
  {
    goto LABEL_16;
  }

  *(v6 + 6) = self->_freqBandInd;
  *(v6 + 38) |= 8u;
  v16 = self->_has;
  if ((v16 & 0x200) == 0)
  {
LABEL_17:
    if ((v16 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v6 + 17) = self->_trackingAreaCode;
  *(v6 + 38) |= 0x200u;
  v16 = self->_has;
  if ((v16 & 0x40) == 0)
  {
LABEL_18:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_19;
    }

LABEL_31:
    *(v6 + 13) = self->_selPlmnMnc;
    *(v6 + 38) |= 0x80u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v6;
    }

    goto LABEL_20;
  }

LABEL_30:
  *(v6 + 12) = self->_selPlmnMcc;
  *(v6 + 38) |= 0x40u;
  v16 = self->_has;
  if ((v16 & 0x80) != 0)
  {
    goto LABEL_31;
  }

LABEL_19:
  if ((v16 & 0x10) != 0)
  {
LABEL_20:
    *(v6 + 10) = self->_numMncDigits;
    *(v6 + 38) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_61;
  }

  has = self->_has;
  v6 = *(equalCopy + 38);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_61;
    }
  }

  else if (v6)
  {
LABEL_61:
    v11 = 0;
    goto LABEL_62;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_cellId != *(equalCopy + 4))
    {
      goto LABEL_61;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_61;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_freq != *(equalCopy + 5))
    {
      goto LABEL_61;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_61;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_phyCellId != *(equalCopy + 11))
    {
      goto LABEL_61;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 38) & 0x400) == 0 || self->_valueTag != *(equalCopy + 18))
    {
      goto LABEL_61;
    }
  }

  else if ((*(equalCopy + 38) & 0x400) != 0)
  {
    goto LABEL_61;
  }

  mib = self->_mib;
  if (mib | *(equalCopy + 4) && ![(Mib *)mib isEqual:?])
  {
    goto LABEL_61;
  }

  sibs = self->_sibs;
  if (sibs | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)sibs isEqual:?])
    {
      goto LABEL_61;
    }
  }

  v9 = self->_has;
  v10 = *(equalCopy + 38);
  if ((v9 & 0x100) != 0)
  {
    if ((*(equalCopy + 38) & 0x100) == 0 || self->_subsId != *(equalCopy + 16))
    {
      goto LABEL_61;
    }
  }

  else if ((*(equalCopy + 38) & 0x100) != 0)
  {
    goto LABEL_61;
  }

  if ((v9 & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_freqBandInd != *(equalCopy + 6))
    {
      goto LABEL_61;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 38) & 0x200) == 0 || self->_trackingAreaCode != *(equalCopy + 17))
    {
      goto LABEL_61;
    }
  }

  else if ((*(equalCopy + 38) & 0x200) != 0)
  {
    goto LABEL_61;
  }

  if ((v9 & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_selPlmnMcc != *(equalCopy + 12))
    {
      goto LABEL_61;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_61;
  }

  if ((v9 & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_selPlmnMnc != *(equalCopy + 13))
    {
      goto LABEL_61;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_61;
  }

  if ((v9 & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_numMncDigits != *(equalCopy + 10))
    {
      goto LABEL_61;
    }

    v11 = 1;
  }

  else
  {
    v11 = (v10 & 0x10) == 0;
  }

LABEL_62:

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
    if ((has & 0x20) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v6 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_phyCellId;
  if ((*&self->_has & 0x400) != 0)
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
  if ((v11 & 0x100) != 0)
  {
    v12 = 2654435761 * self->_subsId;
    if ((v11 & 8) != 0)
    {
LABEL_14:
      v13 = 2654435761 * self->_freqBandInd;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    if ((v11 & 8) != 0)
    {
      goto LABEL_14;
    }
  }

  v13 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_15:
    v14 = 2654435761 * self->_trackingAreaCode;
    if ((v11 & 0x40) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = 0;
  if ((v11 & 0x40) != 0)
  {
LABEL_16:
    v15 = 2654435761 * self->_selPlmnMcc;
    if ((v11 & 0x80) != 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v16 = 0;
    if ((v11 & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v17 = 0;
    return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
  }

LABEL_22:
  v15 = 0;
  if ((v11 & 0x80) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v16 = 2654435761 * self->_selPlmnMnc;
  if ((v11 & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v17 = 2654435761 * self->_numMncDigits;
  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 38);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 38);
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

  self->_cellId = *(fromCopy + 4);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 38);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_freq = *(fromCopy + 5);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 38);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_phyCellId = *(fromCopy + 11);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 38) & 0x400) != 0)
  {
LABEL_6:
    self->_valueTag = *(fromCopy + 18);
    *&self->_has |= 0x400u;
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
    [(CellularLteSysInfoBlocks *)self setMib:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v5 + 7);
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

        [(CellularLteSysInfoBlocks *)self addSib:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *(v5 + 38);
  if ((v14 & 0x100) != 0)
  {
    self->_subsId = *(v5 + 16);
    *&self->_has |= 0x100u;
    v14 = *(v5 + 38);
    if ((v14 & 8) == 0)
    {
LABEL_26:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_34;
    }
  }

  else if ((v14 & 8) == 0)
  {
    goto LABEL_26;
  }

  self->_freqBandInd = *(v5 + 6);
  *&self->_has |= 8u;
  v14 = *(v5 + 38);
  if ((v14 & 0x200) == 0)
  {
LABEL_27:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_trackingAreaCode = *(v5 + 17);
  *&self->_has |= 0x200u;
  v14 = *(v5 + 38);
  if ((v14 & 0x40) == 0)
  {
LABEL_28:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_29;
    }

LABEL_36:
    self->_selPlmnMnc = *(v5 + 13);
    *&self->_has |= 0x80u;
    if ((*(v5 + 38) & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_35:
  self->_selPlmnMcc = *(v5 + 12);
  *&self->_has |= 0x40u;
  v14 = *(v5 + 38);
  if ((v14 & 0x80) != 0)
  {
    goto LABEL_36;
  }

LABEL_29:
  if ((v14 & 0x10) != 0)
  {
LABEL_30:
    self->_numMncDigits = *(v5 + 10);
    *&self->_has |= 0x10u;
  }

LABEL_31:
}

@end