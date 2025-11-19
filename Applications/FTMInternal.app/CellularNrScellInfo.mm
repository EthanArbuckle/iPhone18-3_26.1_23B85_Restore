@interface CellularNrScellInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAllowedAccess:(BOOL)a3;
- (void)setHasCellId:(BOOL)a3;
- (void)setHasDlBw:(BOOL)a3;
- (void)setHasDlFreq:(BOOL)a3;
- (void)setHasNumMncDigits:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPhyCellId:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasSelPlmnMcc:(BOOL)a3;
- (void)setHasSelPlmnMnc:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTrackingAreaCode:(BOOL)a3;
- (void)setHasUlBw:(BOOL)a3;
- (void)setHasUlFreq:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularNrScellInfo

- (void)setHasPhyCellId:(BOOL)a3
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

- (void)setHasDlFreq:(BOOL)a3
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

- (void)setHasUlFreq:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasDlBw:(BOOL)a3
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

- (void)setHasUlBw:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasCellId:(BOOL)a3
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

- (void)setHasNumMncDigits:(BOOL)a3
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

- (void)setHasSelPlmnMcc:(BOOL)a3
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

- (void)setHasSelPlmnMnc:(BOOL)a3
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

- (void)setHasAllowedAccess:(BOOL)a3
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

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (void)setHasTrackingAreaCode:(BOOL)a3
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

- (void)setHasPsPref:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularNrScellInfo;
  v3 = [(CellularNrScellInfo *)&v7 description];
  v4 = [(CellularNrScellInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v10 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v11 = [NSNumber numberWithUnsignedInt:self->_phyCellId];
  [v3 setObject:v11 forKey:@"phy_cell_id"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = [NSNumber numberWithUnsignedInt:self->_dlFreq];
  [v3 setObject:v12 forKey:@"dl_freq"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = [NSNumber numberWithUnsignedInt:self->_ulFreq];
  [v3 setObject:v13 forKey:@"ul_freq"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = [NSNumber numberWithUnsignedInt:self->_dlBw];
  [v3 setObject:v14 forKey:@"dl_bw"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = [NSNumber numberWithUnsignedInt:self->_ulBw];
  [v3 setObject:v15 forKey:@"ul_bw"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v16 forKey:@"cell_id"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v17 = [NSNumber numberWithUnsignedInt:self->_numMncDigits];
  [v3 setObject:v17 forKey:@"num_mnc_digits"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  v18 = [NSNumber numberWithUnsignedInt:self->_selPlmnMcc];
  [v3 setObject:v18 forKey:@"sel_plmn_mcc"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  v19 = [NSNumber numberWithUnsignedInt:self->_selPlmnMnc];
  [v3 setObject:v19 forKey:@"sel_plmn_mnc"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_33:
  v20 = [NSNumber numberWithUnsignedInt:self->_allowedAccess];
  [v3 setObject:v20 forKey:@"allowed_access"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    v5 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v5 forKey:@"num_subs"];
  }

LABEL_14:
  simHplmn = self->_simHplmn;
  if (simHplmn)
  {
    [v3 setObject:simHplmn forKey:@"sim_hplmn"];
  }

  v7 = self->_has;
  if ((v7 & 0x800) != 0)
  {
    v21 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v21 forKey:@"subs_id"];

    v7 = self->_has;
    if ((v7 & 0x1000) == 0)
    {
LABEL_18:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_18;
  }

  v22 = [NSNumber numberWithUnsignedInt:self->_trackingAreaCode];
  [v3 setObject:v22 forKey:@"tracking_area_code"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_19:
    v8 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v8 forKey:@"ps_pref"];
  }

LABEL_20:

  return v3;
}

- (void)writeTo:(id)a3
{
  v21 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  phyCellId = self->_phyCellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  dlFreq = self->_dlFreq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  ulFreq = self->_ulFreq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  dlBw = self->_dlBw;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  ulBw = self->_ulBw;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  numMncDigits = self->_numMncDigits;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  selPlmnMcc = self->_selPlmnMcc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  selPlmnMnc = self->_selPlmnMnc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_33:
  allowedAccess = self->_allowedAccess;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

LABEL_14:
  if (self->_simHplmn)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((v6 & 0x800) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((v6 & 0x1000) == 0)
    {
LABEL_18:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_18;
  }

  trackingAreaCode = self->_trackingAreaCode;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_19:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_20:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 40) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 10) = self->_phyCellId;
  *(v4 + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 7) = self->_dlFreq;
  *(v4 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 19) = self->_ulFreq;
  *(v4 + 40) |= 0x4000u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 6) = self->_dlBw;
  *(v4 + 40) |= 8u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 18) = self->_ulBw;
  *(v4 + 40) |= 0x2000u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 5) = self->_cellId;
  *(v4 + 40) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 8) = self->_numMncDigits;
  *(v4 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v4 + 12) = self->_selPlmnMcc;
  *(v4 + 40) |= 0x200u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 13) = self->_selPlmnMnc;
  *(v4 + 40) |= 0x400u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_33:
  *(v4 + 4) = self->_allowedAccess;
  *(v4 + 40) |= 2u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    *(v4 + 9) = self->_numSubs;
    *(v4 + 40) |= 0x40u;
  }

LABEL_14:
  if (self->_simHplmn)
  {
    v7 = v4;
    [v4 setSimHplmn:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x800) != 0)
  {
    *(v4 + 16) = self->_subsId;
    *(v4 + 40) |= 0x800u;
    v6 = self->_has;
    if ((v6 & 0x1000) == 0)
    {
LABEL_18:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_18;
  }

  *(v4 + 17) = self->_trackingAreaCode;
  *(v4 + 40) |= 0x1000u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_19:
    *(v4 + 11) = self->_psPref;
    *(v4 + 40) |= 0x100u;
  }

LABEL_20:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 40) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 10) = self->_phyCellId;
  *(v5 + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 7) = self->_dlFreq;
  *(v5 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 19) = self->_ulFreq;
  *(v5 + 40) |= 0x4000u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 6) = self->_dlBw;
  *(v5 + 40) |= 8u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 18) = self->_ulBw;
  *(v5 + 40) |= 0x2000u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 5) = self->_cellId;
  *(v5 + 40) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 8) = self->_numMncDigits;
  *(v5 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 12) = self->_selPlmnMcc;
  *(v5 + 40) |= 0x200u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 13) = self->_selPlmnMnc;
  *(v5 + 40) |= 0x400u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_29:
  *(v5 + 4) = self->_allowedAccess;
  *(v5 + 40) |= 2u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    *(v5 + 9) = self->_numSubs;
    *(v5 + 40) |= 0x40u;
  }

LABEL_14:
  v8 = [(NSData *)self->_simHplmn copyWithZone:a3];
  v9 = v6[7];
  v6[7] = v8;

  v10 = self->_has;
  if ((v10 & 0x800) == 0)
  {
    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    *(v6 + 17) = self->_trackingAreaCode;
    *(v6 + 40) |= 0x1000u;
    if ((*&self->_has & 0x100) == 0)
    {
      return v6;
    }

    goto LABEL_17;
  }

  *(v6 + 16) = self->_subsId;
  *(v6 + 40) |= 0x800u;
  v10 = self->_has;
  if ((v10 & 0x1000) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v10 & 0x100) != 0)
  {
LABEL_17:
    *(v6 + 11) = self->_psPref;
    *(v6 + 40) |= 0x100u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_80;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_80;
    }
  }

  else if (v6)
  {
    goto LABEL_80;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_phyCellId != *(v4 + 10))
    {
      goto LABEL_80;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_80;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_dlFreq != *(v4 + 7))
    {
      goto LABEL_80;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_80;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(v4 + 40) & 0x4000) == 0 || self->_ulFreq != *(v4 + 19))
    {
      goto LABEL_80;
    }
  }

  else if ((*(v4 + 40) & 0x4000) != 0)
  {
    goto LABEL_80;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_dlBw != *(v4 + 6))
    {
      goto LABEL_80;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_80;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 40) & 0x2000) == 0 || self->_ulBw != *(v4 + 18))
    {
      goto LABEL_80;
    }
  }

  else if ((*(v4 + 40) & 0x2000) != 0)
  {
    goto LABEL_80;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_cellId != *(v4 + 5))
    {
      goto LABEL_80;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_80;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_numMncDigits != *(v4 + 8))
    {
      goto LABEL_80;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_80;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 40) & 0x200) == 0 || self->_selPlmnMcc != *(v4 + 12))
    {
      goto LABEL_80;
    }
  }

  else if ((*(v4 + 40) & 0x200) != 0)
  {
    goto LABEL_80;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 40) & 0x400) == 0 || self->_selPlmnMnc != *(v4 + 13))
    {
      goto LABEL_80;
    }
  }

  else if ((*(v4 + 40) & 0x400) != 0)
  {
    goto LABEL_80;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_allowedAccess != *(v4 + 4))
    {
      goto LABEL_80;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_80;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_numSubs != *(v4 + 9))
    {
      goto LABEL_80;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_80;
  }

  simHplmn = self->_simHplmn;
  if (simHplmn | *(v4 + 7))
  {
    if (![(NSData *)simHplmn isEqual:?])
    {
LABEL_80:
      v8 = 0;
      goto LABEL_81;
    }

    has = self->_has;
  }

  if ((has & 0x800) != 0)
  {
    if ((*(v4 + 40) & 0x800) == 0 || self->_subsId != *(v4 + 16))
    {
      goto LABEL_80;
    }
  }

  else if ((*(v4 + 40) & 0x800) != 0)
  {
    goto LABEL_80;
  }

  if ((has & 0x1000) != 0)
  {
    if ((*(v4 + 40) & 0x1000) == 0 || self->_trackingAreaCode != *(v4 + 17))
    {
      goto LABEL_80;
    }
  }

  else if ((*(v4 + 40) & 0x1000) != 0)
  {
    goto LABEL_80;
  }

  if ((has & 0x100) != 0)
  {
    if ((*(v4 + 40) & 0x100) == 0 || self->_psPref != *(v4 + 11))
    {
      goto LABEL_80;
    }

    v8 = 1;
  }

  else
  {
    v8 = (*(v4 + 40) & 0x100) == 0;
  }

LABEL_81:

  return v8;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v20 = 2654435761u * self->_timestamp;
    if ((has & 0x80) != 0)
    {
LABEL_3:
      v19 = 2654435761 * self->_phyCellId;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v20 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v18 = 2654435761 * self->_dlFreq;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v18 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_5:
    v17 = 2654435761 * self->_ulFreq;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v17 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v16 = 2654435761 * self->_dlBw;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v16 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_7:
    v4 = 2654435761 * self->_ulBw;
    if ((has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_8:
    v5 = 2654435761 * self->_cellId;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v6 = 2654435761 * self->_numMncDigits;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_10:
    v7 = 2654435761 * self->_selPlmnMcc;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_11:
    v8 = 2654435761 * self->_selPlmnMnc;
    if ((has & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v9 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_23:
  v8 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v9 = 2654435761 * self->_allowedAccess;
  if ((has & 0x40) != 0)
  {
LABEL_13:
    v10 = 2654435761 * self->_numSubs;
    goto LABEL_26;
  }

LABEL_25:
  v10 = 0;
LABEL_26:
  v11 = [(NSData *)self->_simHplmn hash];
  if ((*&self->_has & 0x800) == 0)
  {
    v12 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v13 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    v14 = 0;
    return v19 ^ v20 ^ v18 ^ v17 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v11;
  }

  v12 = 2654435761 * self->_subsId;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  v13 = 2654435761 * self->_trackingAreaCode;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  v14 = 2654435761 * self->_psPref;
  return v19 ^ v20 ^ v18 ^ v17 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_phyCellId = *(v4 + 10);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_dlFreq = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 40);
  if ((v5 & 0x4000) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_ulFreq = *(v4 + 19);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_dlBw = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 40);
  if ((v5 & 0x2000) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_ulBw = *(v4 + 18);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_cellId = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_numMncDigits = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 40);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_selPlmnMcc = *(v4 + 12);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 40);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_selPlmnMnc = *(v4 + 13);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_33:
  self->_allowedAccess = *(v4 + 4);
  *&self->_has |= 2u;
  if ((*(v4 + 40) & 0x40) != 0)
  {
LABEL_13:
    self->_numSubs = *(v4 + 9);
    *&self->_has |= 0x40u;
  }

LABEL_14:
  if (*(v4 + 7))
  {
    v7 = v4;
    [(CellularNrScellInfo *)self setSimHplmn:?];
    v4 = v7;
  }

  v6 = *(v4 + 40);
  if ((v6 & 0x800) != 0)
  {
    self->_subsId = *(v4 + 16);
    *&self->_has |= 0x800u;
    v6 = *(v4 + 40);
    if ((v6 & 0x1000) == 0)
    {
LABEL_18:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 0x1000) == 0)
  {
    goto LABEL_18;
  }

  self->_trackingAreaCode = *(v4 + 17);
  *&self->_has |= 0x1000u;
  if ((*(v4 + 40) & 0x100) != 0)
  {
LABEL_19:
    self->_psPref = *(v4 + 11);
    *&self->_has |= 0x100u;
  }

LABEL_20:
}

@end