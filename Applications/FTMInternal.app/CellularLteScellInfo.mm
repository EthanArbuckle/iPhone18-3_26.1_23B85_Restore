@interface CellularLteScellInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAllowedAccess:(BOOL)access;
- (void)setHasCellId:(BOOL)id;
- (void)setHasCellIsApo:(BOOL)apo;
- (void)setHasDlBw:(BOOL)bw;
- (void)setHasDlFreq:(BOOL)freq;
- (void)setHasFreqBandInd:(BOOL)ind;
- (void)setHasHstCellInfo:(BOOL)info;
- (void)setHasNumMncDigits:(BOOL)digits;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPhyCellId:(BOOL)id;
- (void)setHasPrioOfCampedLteBand:(BOOL)band;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSelPlmnMcc:(BOOL)mcc;
- (void)setHasSelPlmnMnc:(BOOL)mnc;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasTddSfAssignment:(BOOL)assignment;
- (void)setHasTddSsfPatterns:(BOOL)patterns;
- (void)setHasTrackingAreaCode:(BOOL)code;
- (void)setHasUlBw:(BOOL)bw;
- (void)setHasUlFreq:(BOOL)freq;
- (void)writeTo:(id)to;
@end

@implementation CellularLteScellInfo

- (void)setHasPhyCellId:(BOOL)id
{
  if (id)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasDlFreq:(BOOL)freq
{
  if (freq)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasUlFreq:(BOOL)freq
{
  if (freq)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasDlBw:(BOOL)bw
{
  if (bw)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasUlBw:(BOOL)bw
{
  if (bw)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasCellId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasFreqBandInd:(BOOL)ind
{
  if (ind)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasTrackingAreaCode:(BOOL)code
{
  if (code)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasNumMncDigits:(BOOL)digits
{
  if (digits)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasSelPlmnMcc:(BOOL)mcc
{
  if (mcc)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasSelPlmnMnc:(BOOL)mnc
{
  if (mnc)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasAllowedAccess:(BOOL)access
{
  if (access)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasTddSfAssignment:(BOOL)assignment
{
  if (assignment)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasTddSsfPatterns:(BOOL)patterns
{
  if (patterns)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasCellIsApo:(BOOL)apo
{
  if (apo)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasHstCellInfo:(BOOL)info
{
  if (info)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasPrioOfCampedLteBand:(BOOL)band
{
  if (band)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteScellInfo;
  v3 = [(CellularLteScellInfo *)&v7 description];
  dictionaryRepresentation = [(CellularLteScellInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v11 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v11 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v12 = [NSNumber numberWithUnsignedInt:self->_phyCellId];
  [v3 setObject:v12 forKey:@"phy_cell_id"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = [NSNumber numberWithUnsignedInt:self->_dlFreq];
  [v3 setObject:v13 forKey:@"dl_freq"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = [NSNumber numberWithUnsignedInt:self->_ulFreq];
  [v3 setObject:v14 forKey:@"ul_freq"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = [NSNumber numberWithUnsignedInt:self->_dlBw];
  [v3 setObject:v15 forKey:@"dl_bw"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_7:
    if ((*&has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = [NSNumber numberWithUnsignedInt:self->_ulBw];
  [v3 setObject:v16 forKey:@"ul_bw"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  v17 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v17 forKey:@"cell_id"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = [NSNumber numberWithUnsignedInt:self->_freqBandInd];
  [v3 setObject:v18 forKey:@"freq_band_ind"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = [NSNumber numberWithUnsignedInt:self->_trackingAreaCode];
  [v3 setObject:v19 forKey:@"tracking_area_code"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = [NSNumber numberWithUnsignedInt:self->_numMncDigits];
  [v3 setObject:v20 forKey:@"num_mnc_digits"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v21 = [NSNumber numberWithUnsignedInt:self->_selPlmnMcc];
  [v3 setObject:v21 forKey:@"sel_plmn_mcc"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  v22 = [NSNumber numberWithUnsignedInt:self->_selPlmnMnc];
  [v3 setObject:v22 forKey:@"sel_plmn_mnc"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v23 = [NSNumber numberWithUnsignedInt:self->_allowedAccess];
  [v3 setObject:v23 forKey:@"allowed_access"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  v24 = [NSNumber numberWithUnsignedInt:self->_tddSfAssignment];
  [v3 setObject:v24 forKey:@"tdd_sf_assignment"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  v25 = [NSNumber numberWithUnsignedInt:self->_tddSsfPatterns];
  [v3 setObject:v25 forKey:@"tdd_ssf_patterns"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v26 = [NSNumber numberWithBool:self->_cellIsApo];
  [v3 setObject:v26 forKey:@"cell_is_apo"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v27 = [NSNumber numberWithUnsignedInt:self->_hstCellInfo];
  [v3 setObject:v27 forKey:@"hst_cell_info"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_47:
  v28 = [NSNumber numberWithUnsignedInt:self->_prioOfCampedLteBand];
  [v3 setObject:v28 forKey:@"prio_of_camped_lte_band"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_20:
    v5 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v5 forKey:@"num_subs"];
  }

LABEL_21:
  simHplmn = self->_simHplmn;
  if (simHplmn)
  {
    [v3 setObject:simHplmn forKey:@"sim_hplmn"];
  }

  v7 = self->_has;
  if ((*&v7 & 0x4000) != 0)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v8 forKey:@"subs_id"];

    v7 = self->_has;
  }

  if ((*&v7 & 0x800) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v9 forKey:@"ps_pref"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  phyCellId = self->_phyCellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  dlFreq = self->_dlFreq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  ulFreq = self->_ulFreq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  dlBw = self->_dlBw;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_7:
    if ((*&has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  ulBw = self->_ulBw;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  freqBandInd = self->_freqBandInd;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  trackingAreaCode = self->_trackingAreaCode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  numMncDigits = self->_numMncDigits;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  selPlmnMcc = self->_selPlmnMcc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  selPlmnMnc = self->_selPlmnMnc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  allowedAccess = self->_allowedAccess;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  tddSfAssignment = self->_tddSfAssignment;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  tddSsfPatterns = self->_tddSsfPatterns;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  cellIsApo = self->_cellIsApo;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  hstCellInfo = self->_hstCellInfo;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_47:
  prioOfCampedLteBand = self->_prioOfCampedLteBand;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_20:
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

LABEL_21:
  if (self->_simHplmn)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x4000) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
  }

  if ((*&v6 & 0x800) != 0)
  {
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 27) |= 1u;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 12) = self->_phyCellId;
  *(toCopy + 27) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(toCopy + 7) = self->_dlFreq;
  *(toCopy + 27) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(toCopy + 25) = self->_ulFreq;
  *(toCopy + 27) |= 0x80000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 6) = self->_dlBw;
  *(toCopy + 27) |= 8u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_7:
    if ((*&has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 24) = self->_ulBw;
  *(toCopy + 27) |= 0x40000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 5) = self->_cellId;
  *(toCopy + 27) |= 4u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 8) = self->_freqBandInd;
  *(toCopy + 27) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 23) = self->_trackingAreaCode;
  *(toCopy + 27) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 10) = self->_numMncDigits;
  *(toCopy + 27) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 15) = self->_selPlmnMcc;
  *(toCopy + 27) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 16) = self->_selPlmnMnc;
  *(toCopy + 27) |= 0x2000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 4) = self->_allowedAccess;
  *(toCopy + 27) |= 2u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 21) = self->_tddSfAssignment;
  *(toCopy + 27) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 22) = self->_tddSsfPatterns;
  *(toCopy + 27) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 104) = self->_cellIsApo;
  *(toCopy + 27) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 9) = self->_hstCellInfo;
  *(toCopy + 27) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_47:
  *(toCopy + 13) = self->_prioOfCampedLteBand;
  *(toCopy + 27) |= 0x400u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_20:
    *(toCopy + 11) = self->_numSubs;
    *(toCopy + 27) |= 0x100u;
  }

LABEL_21:
  if (self->_simHplmn)
  {
    v7 = toCopy;
    [toCopy setSimHplmn:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 0x4000) != 0)
  {
    *(toCopy + 20) = self->_subsId;
    *(toCopy + 27) |= 0x4000u;
    v6 = self->_has;
  }

  if ((*&v6 & 0x800) != 0)
  {
    *(toCopy + 14) = self->_psPref;
    *(toCopy + 27) |= 0x800u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 27) |= 1u;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 12) = self->_phyCellId;
  *(v5 + 27) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 7) = self->_dlFreq;
  *(v5 + 27) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 25) = self->_ulFreq;
  *(v5 + 27) |= 0x80000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 6) = self->_dlBw;
  *(v5 + 27) |= 8u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_7:
    if ((*&has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 24) = self->_ulBw;
  *(v5 + 27) |= 0x40000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 5) = self->_cellId;
  *(v5 + 27) |= 4u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 8) = self->_freqBandInd;
  *(v5 + 27) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 23) = self->_trackingAreaCode;
  *(v5 + 27) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 10) = self->_numMncDigits;
  *(v5 + 27) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 15) = self->_selPlmnMcc;
  *(v5 + 27) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 16) = self->_selPlmnMnc;
  *(v5 + 27) |= 0x2000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 4) = self->_allowedAccess;
  *(v5 + 27) |= 2u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 21) = self->_tddSfAssignment;
  *(v5 + 27) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 22) = self->_tddSsfPatterns;
  *(v5 + 27) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 104) = self->_cellIsApo;
  *(v5 + 27) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 9) = self->_hstCellInfo;
  *(v5 + 27) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_43:
  *(v5 + 13) = self->_prioOfCampedLteBand;
  *(v5 + 27) |= 0x400u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_20:
    *(v5 + 11) = self->_numSubs;
    *(v5 + 27) |= 0x100u;
  }

LABEL_21:
  v8 = [(NSData *)self->_simHplmn copyWithZone:zone];
  v9 = v6[9];
  v6[9] = v8;

  v10 = self->_has;
  if ((*&v10 & 0x4000) != 0)
  {
    *(v6 + 20) = self->_subsId;
    *(v6 + 27) |= 0x4000u;
    v10 = self->_has;
  }

  if ((*&v10 & 0x800) != 0)
  {
    *(v6 + 14) = self->_psPref;
    *(v6 + 27) |= 0x800u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_113;
  }

  has = self->_has;
  v6 = *(equalCopy + 27);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_113;
    }
  }

  else if (v6)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_phyCellId != *(equalCopy + 12))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_dlFreq != *(equalCopy + 7))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_ulFreq != *(equalCopy + 25))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_dlBw != *(equalCopy + 6))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_ulBw != *(equalCopy + 24))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_cellId != *(equalCopy + 5))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_freqBandInd != *(equalCopy + 8))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_trackingAreaCode != *(equalCopy + 23))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_numMncDigits != *(equalCopy + 10))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_selPlmnMcc != *(equalCopy + 15))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_selPlmnMnc != *(equalCopy + 16))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_allowedAccess != *(equalCopy + 4))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_tddSfAssignment != *(equalCopy + 21))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_tddSsfPatterns != *(equalCopy + 22))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_113;
    }

    v7 = *(equalCopy + 104);
    if (self->_cellIsApo)
    {
      if ((*(equalCopy + 104) & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else if (*(equalCopy + 104))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_hstCellInfo != *(equalCopy + 9))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_prioOfCampedLteBand != *(equalCopy + 13))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_numSubs != *(equalCopy + 11))
    {
      goto LABEL_113;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_113;
  }

  simHplmn = self->_simHplmn;
  if (simHplmn | *(equalCopy + 9))
  {
    if ([(NSData *)simHplmn isEqual:?])
    {
      has = self->_has;
      goto LABEL_103;
    }

LABEL_113:
    v10 = 0;
    goto LABEL_114;
  }

LABEL_103:
  v9 = *(equalCopy + 27);
  if ((*&has & 0x4000) != 0)
  {
    if ((v9 & 0x4000) == 0 || self->_subsId != *(equalCopy + 20))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x4000) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v9 & 0x800) == 0 || self->_psPref != *(equalCopy + 14))
    {
      goto LABEL_113;
    }

    v10 = 1;
  }

  else
  {
    v10 = (*(equalCopy + 27) & 0x800) == 0;
  }

LABEL_114:

  return v10;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v28 = 2654435761u * self->_timestamp;
    if ((*&has & 0x200) != 0)
    {
LABEL_3:
      v27 = 2654435761 * self->_phyCellId;
      if ((*&has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v28 = 0;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v27 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_4:
    v26 = 2654435761 * self->_dlFreq;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v26 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_5:
    v25 = 2654435761 * self->_ulFreq;
    if ((*&has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v25 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_6:
    v24 = 2654435761 * self->_dlBw;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v24 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_7:
    v23 = 2654435761 * self->_ulBw;
    if ((*&has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v23 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_8:
    v22 = 2654435761 * self->_cellId;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v22 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_9:
    v21 = 2654435761 * self->_freqBandInd;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v21 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_10:
    v20 = 2654435761 * self->_trackingAreaCode;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v20 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_11:
    v19 = 2654435761 * self->_numMncDigits;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v19 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_12:
    v17 = 2654435761 * self->_selPlmnMcc;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_13:
    v4 = 2654435761 * self->_selPlmnMnc;
    if ((*&has & 2) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v4 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_14:
    v5 = 2654435761 * self->_allowedAccess;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v5 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_15:
    v6 = 2654435761 * self->_tddSfAssignment;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_16:
    v7 = 2654435761 * self->_tddSsfPatterns;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v7 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_17:
    v8 = 2654435761 * self->_cellIsApo;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v8 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_18:
    v9 = 2654435761 * self->_hstCellInfo;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    v10 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_37:
  v9 = 0;
  if ((*&has & 0x400) == 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  v10 = 2654435761 * self->_prioOfCampedLteBand;
  if ((*&has & 0x100) != 0)
  {
LABEL_20:
    v11 = 2654435761 * self->_numSubs;
    goto LABEL_40;
  }

LABEL_39:
  v11 = 0;
LABEL_40:
  v12 = [(NSData *)self->_simHplmn hash];
  v13 = self->_has;
  if ((*&v13 & 0x4000) != 0)
  {
    v14 = 2654435761 * self->_subsId;
    if ((*&v13 & 0x800) != 0)
    {
      goto LABEL_42;
    }

LABEL_44:
    v15 = 0;
    return v27 ^ v28 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v14 ^ v15 ^ v12;
  }

  v14 = 0;
  if ((*&v13 & 0x800) == 0)
  {
    goto LABEL_44;
  }

LABEL_42:
  v15 = 2654435761 * self->_psPref;
  return v27 ^ v28 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v14 ^ v15 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 27);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 27);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_phyCellId = *(fromCopy + 12);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_dlFreq = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x80000) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_ulFreq = *(fromCopy + 25);
  *&self->_has |= 0x80000u;
  v5 = *(fromCopy + 27);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_dlBw = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x40000) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_ulBw = *(fromCopy + 24);
  *&self->_has |= 0x40000u;
  v5 = *(fromCopy + 27);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_cellId = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_freqBandInd = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x20000) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_trackingAreaCode = *(fromCopy + 23);
  *&self->_has |= 0x20000u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_numMncDigits = *(fromCopy + 10);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_selPlmnMcc = *(fromCopy + 15);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_selPlmnMnc = *(fromCopy + 16);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 27);
  if ((v5 & 2) == 0)
  {
LABEL_14:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_allowedAccess = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x8000) == 0)
  {
LABEL_15:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_tddSfAssignment = *(fromCopy + 21);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x10000) == 0)
  {
LABEL_16:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_tddSsfPatterns = *(fromCopy + 22);
  *&self->_has |= 0x10000u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x100000) == 0)
  {
LABEL_17:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_cellIsApo = *(fromCopy + 104);
  *&self->_has |= 0x100000u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x40) == 0)
  {
LABEL_18:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_hstCellInfo = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 27);
  if ((v5 & 0x400) == 0)
  {
LABEL_19:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_47:
  self->_prioOfCampedLteBand = *(fromCopy + 13);
  *&self->_has |= 0x400u;
  if ((*(fromCopy + 27) & 0x100) != 0)
  {
LABEL_20:
    self->_numSubs = *(fromCopy + 11);
    *&self->_has |= 0x100u;
  }

LABEL_21:
  if (*(fromCopy + 9))
  {
    v7 = fromCopy;
    [(CellularLteScellInfo *)self setSimHplmn:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 27);
  if ((v6 & 0x4000) != 0)
  {
    self->_subsId = *(fromCopy + 20);
    *&self->_has |= 0x4000u;
    v6 = *(fromCopy + 27);
  }

  if ((v6 & 0x800) != 0)
  {
    self->_psPref = *(fromCopy + 14);
    *&self->_has |= 0x800u;
  }
}

@end