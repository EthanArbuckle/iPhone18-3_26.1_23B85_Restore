@interface CellularNrOtaMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBwp:(BOOL)bwp;
- (void)setHasCellId:(BOOL)id;
- (void)setHasChannel:(BOOL)channel;
- (void)setHasDeployment:(BOOL)deployment;
- (void)setHasDlBw:(BOOL)bw;
- (void)setHasFreq:(BOOL)freq;
- (void)setHasFreqBandInd:(BOOL)ind;
- (void)setHasFreqRange:(BOOL)range;
- (void)setHasLength:(BOOL)length;
- (void)setHasLteBw:(BOOL)bw;
- (void)setHasLteGci:(BOOL)gci;
- (void)setHasMsgType:(BOOL)type;
- (void)setHasNumMncDigits:(BOOL)digits;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPhyCellId:(BOOL)id;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasRbId:(BOOL)id;
- (void)setHasSelPlmnMcc:(BOOL)mcc;
- (void)setHasSelPlmnMnc:(BOOL)mnc;
- (void)setHasSplitBearerEver:(BOOL)ever;
- (void)setHasSsbCount:(BOOL)count;
- (void)setHasSubCarrierSpacing:(BOOL)spacing;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasTddUlDlConfigurationCommon:(BOOL)common;
- (void)setHasTrackingAreaCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation CellularNrOtaMsg

- (void)setHasPhyCellId:(BOOL)id
{
  if (id)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasFreq:(BOOL)freq
{
  if (freq)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasRbId:(BOOL)id
{
  if (id)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasMsgType:(BOOL)type
{
  if (type)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasLength:(BOOL)length
{
  if (length)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasDlBw:(BOOL)bw
{
  if (bw)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
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
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasTrackingAreaCode:(BOOL)code
{
  if (code)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasSelPlmnMcc:(BOOL)mcc
{
  if (mcc)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasSelPlmnMnc:(BOOL)mnc
{
  if (mnc)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasNumMncDigits:(BOOL)digits
{
  if (digits)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasDeployment:(BOOL)deployment
{
  if (deployment)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasFreqRange:(BOOL)range
{
  if (range)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasLteGci:(BOOL)gci
{
  if (gci)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasLteBw:(BOOL)bw
{
  if (bw)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasBwp:(BOOL)bwp
{
  if (bwp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasSsbCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasSubCarrierSpacing:(BOOL)spacing
{
  if (spacing)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasTddUlDlConfigurationCommon:(BOOL)common
{
  if (common)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasSplitBearerEver:(BOOL)ever
{
  if (ever)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
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
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularNrOtaMsg;
  v3 = [(CellularNrOtaMsg *)&v7 description];
  dictionaryRepresentation = [(CellularNrOtaMsg *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v10 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  v11 = [NSNumber numberWithUnsignedInt:self->_phyCellId];
  [v3 setObject:v11 forKey:@"phy_cell_id"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v12 = [NSNumber numberWithUnsignedInt:self->_freq];
  [v3 setObject:v12 forKey:@"freq"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  v13 = [NSNumber numberWithUnsignedInt:self->_rbId];
  [v3 setObject:v13 forKey:@"rb_id"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  v14 = [NSNumber numberWithInt:self->_channel];
  [v3 setObject:v14 forKey:@"channel"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_39:
  v15 = [NSNumber numberWithUnsignedInt:self->_msgType];
  [v3 setObject:v15 forKey:@"msg_type"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_8:
    v5 = [NSNumber numberWithUnsignedInt:self->_length];
    [v3 setObject:v5 forKey:@"length"];
  }

LABEL_9:
  content = self->_content;
  if (content)
  {
    [v3 setObject:content forKey:@"content"];
  }

  v7 = self->_has;
  if ((*&v7 & 0x20) != 0)
  {
    v16 = [NSNumber numberWithUnsignedInt:self->_dlBw];
    [v3 setObject:v16 forKey:@"dl_bw"];

    v7 = self->_has;
    if ((*&v7 & 4) == 0)
    {
LABEL_13:
      if ((*&v7 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_43;
    }
  }

  else if ((*&v7 & 4) == 0)
  {
    goto LABEL_13;
  }

  v17 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v17 forKey:@"cell_id"];

  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_14:
    if ((*&v7 & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  v18 = [NSNumber numberWithUnsignedInt:self->_freqBandInd];
  [v3 setObject:v18 forKey:@"freq_band_ind"];

  v7 = self->_has;
  if ((*&v7 & 0x1000000) == 0)
  {
LABEL_15:
    if ((*&v7 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = [NSNumber numberWithUnsignedInt:self->_trackingAreaCode];
  [v3 setObject:v19 forKey:@"tracking_area_code"];

  v7 = self->_has;
  if ((*&v7 & 0x40000) == 0)
  {
LABEL_16:
    if ((*&v7 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = [NSNumber numberWithUnsignedInt:self->_selPlmnMcc];
  [v3 setObject:v20 forKey:@"sel_plmn_mcc"];

  v7 = self->_has;
  if ((*&v7 & 0x80000) == 0)
  {
LABEL_17:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = [NSNumber numberWithUnsignedInt:self->_selPlmnMnc];
  [v3 setObject:v21 forKey:@"sel_plmn_mnc"];

  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_18:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = [NSNumber numberWithUnsignedInt:self->_numMncDigits];
  [v3 setObject:v22 forKey:@"num_mnc_digits"];

  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_19:
    if ((*&v7 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = [NSNumber numberWithUnsignedInt:self->_deployment];
  [v3 setObject:v23 forKey:@"deployment"];

  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = [NSNumber numberWithUnsignedInt:self->_freqRange];
  [v3 setObject:v24 forKey:@"freq_range"];

  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = [NSNumber numberWithUnsignedInt:self->_lteGci];
  [v3 setObject:v25 forKey:@"lte_gci"];

  v7 = self->_has;
  if ((*&v7 & 0x400) == 0)
  {
LABEL_22:
    if ((*&v7 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  v26 = [NSNumber numberWithUnsignedInt:self->_lteBw];
  [v3 setObject:v26 forKey:@"lte_bw"];

  v7 = self->_has;
  if ((*&v7 & 2) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  v27 = [NSNumber numberWithUnsignedInt:self->_bwp];
  [v3 setObject:v27 forKey:@"bwp"];

  v7 = self->_has;
  if ((*&v7 & 0x100000) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  v28 = [NSNumber numberWithUnsignedInt:self->_ssbCount];
  [v3 setObject:v28 forKey:@"ssb_count"];

  v7 = self->_has;
  if ((*&v7 & 0x200000) == 0)
  {
LABEL_25:
    if ((*&v7 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  v29 = [NSNumber numberWithUnsignedInt:self->_subCarrierSpacing];
  [v3 setObject:v29 forKey:@"sub_carrier_spacing"];

  v7 = self->_has;
  if ((*&v7 & 0x800000) == 0)
  {
LABEL_26:
    if ((*&v7 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  v30 = [NSNumber numberWithUnsignedInt:self->_tddUlDlConfigurationCommon];
  [v3 setObject:v30 forKey:@"tdd_ul_dl_configuration_common"];

  v7 = self->_has;
  if ((*&v7 & 0x2000000) == 0)
  {
LABEL_27:
    if ((*&v7 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  v31 = [NSNumber numberWithBool:self->_splitBearerEver];
  [v3 setObject:v31 forKey:@"split_bearer_ever"];

  v7 = self->_has;
  if ((*&v7 & 0x400000) == 0)
  {
LABEL_28:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  v32 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v32 forKey:@"subs_id"];

  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_29:
    if ((*&v7 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_58:
  v33 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v33 forKey:@"num_subs"];

  if ((*&self->_has & 0x10000) != 0)
  {
LABEL_30:
    v8 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v8 forKey:@"ps_pref"];
  }

LABEL_31:

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
    if ((*&has & 0x400000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  phyCellId = self->_phyCellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  freq = self->_freq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  rbId = self->_rbId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  channel = self->_channel;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_40:
  msgType = self->_msgType;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_9:
    length = self->_length;
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
  if (self->_content)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x20) != 0)
  {
    dlBw = self->_dlBw;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((*&v6 & 4) == 0)
    {
LABEL_14:
      if ((*&v6 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_44;
    }
  }

  else if ((*&v6 & 4) == 0)
  {
    goto LABEL_14;
  }

  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_15:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  freqBandInd = self->_freqBandInd;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_16:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  trackingAreaCode = self->_trackingAreaCode;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  selPlmnMcc = self->_selPlmnMcc;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  selPlmnMnc = self->_selPlmnMnc;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  numMncDigits = self->_numMncDigits;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  deployment = self->_deployment;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  freqRange = self->_freqRange;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  lteGci = self->_lteGci;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_23:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  lteBw = self->_lteBw;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  bwp = self->_bwp;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  ssbCount = self->_ssbCount;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  subCarrierSpacing = self->_subCarrierSpacing;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  tddUlDlConfigurationCommon = self->_tddUlDlConfigurationCommon;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  splitBearerEver = self->_splitBearerEver;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_58:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10000) != 0)
  {
LABEL_30:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_31:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 32) |= 1u;
    has = self->_has;
    if ((*&has & 0x400000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 28) = self->_subsId;
  *(toCopy + 32) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 21) = self->_phyCellId;
  *(toCopy + 32) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 12) = self->_freq;
  *(toCopy + 32) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 23) = self->_rbId;
  *(toCopy + 32) |= 0x20000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 6) = self->_channel;
  *(toCopy + 32) |= 8u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_40:
  *(toCopy + 18) = self->_msgType;
  *(toCopy + 32) |= 0x1000u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_9:
    *(toCopy + 15) = self->_length;
    *(toCopy + 32) |= 0x200u;
  }

LABEL_10:
  if (self->_content)
  {
    v7 = toCopy;
    [toCopy setContent:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 0x20) != 0)
  {
    *(toCopy + 11) = self->_dlBw;
    *(toCopy + 32) |= 0x20u;
    v6 = self->_has;
    if ((*&v6 & 4) == 0)
    {
LABEL_14:
      if ((*&v6 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_44;
    }
  }

  else if ((*&v6 & 4) == 0)
  {
    goto LABEL_14;
  }

  *(toCopy + 5) = self->_cellId;
  *(toCopy + 32) |= 4u;
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_15:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 13) = self->_freqBandInd;
  *(toCopy + 32) |= 0x80u;
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_16:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 30) = self->_trackingAreaCode;
  *(toCopy + 32) |= 0x1000000u;
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 24) = self->_selPlmnMcc;
  *(toCopy + 32) |= 0x40000u;
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 25) = self->_selPlmnMnc;
  *(toCopy + 32) |= 0x80000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(toCopy + 19) = self->_numMncDigits;
  *(toCopy + 32) |= 0x2000u;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(toCopy + 10) = self->_deployment;
  *(toCopy + 32) |= 0x10u;
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(toCopy + 14) = self->_freqRange;
  *(toCopy + 32) |= 0x100u;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(toCopy + 17) = self->_lteGci;
  *(toCopy + 32) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_23:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(toCopy + 16) = self->_lteBw;
  *(toCopy + 32) |= 0x400u;
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(toCopy + 4) = self->_bwp;
  *(toCopy + 32) |= 2u;
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(toCopy + 26) = self->_ssbCount;
  *(toCopy + 32) |= 0x100000u;
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(toCopy + 27) = self->_subCarrierSpacing;
  *(toCopy + 32) |= 0x200000u;
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(toCopy + 29) = self->_tddUlDlConfigurationCommon;
  *(toCopy + 32) |= 0x800000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(toCopy + 124) = self->_splitBearerEver;
  *(toCopy + 32) |= 0x2000000u;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_58:
  *(toCopy + 20) = self->_numSubs;
  *(toCopy + 32) |= 0x4000u;
  if ((*&self->_has & 0x10000) != 0)
  {
LABEL_30:
    *(toCopy + 22) = self->_psPref;
    *(toCopy + 32) |= 0x10000u;
  }

LABEL_31:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 32) |= 1u;
    has = self->_has;
    if ((*&has & 0x400000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 28) = self->_subsId;
  *(v5 + 32) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 21) = self->_phyCellId;
  *(v5 + 32) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 12) = self->_freq;
  *(v5 + 32) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 23) = self->_rbId;
  *(v5 + 32) |= 0x20000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 6) = self->_channel;
  *(v5 + 32) |= 8u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_36:
  *(v5 + 18) = self->_msgType;
  *(v5 + 32) |= 0x1000u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_9:
    *(v5 + 15) = self->_length;
    *(v5 + 32) |= 0x200u;
  }

LABEL_10:
  v8 = [(NSData *)self->_content copyWithZone:zone];
  v9 = v6[4];
  v6[4] = v8;

  v10 = self->_has;
  if ((*&v10 & 0x20) != 0)
  {
    *(v6 + 11) = self->_dlBw;
    *(v6 + 32) |= 0x20u;
    v10 = self->_has;
    if ((*&v10 & 4) == 0)
    {
LABEL_12:
      if ((*&v10 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_40;
    }
  }

  else if ((*&v10 & 4) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 5) = self->_cellId;
  *(v6 + 32) |= 4u;
  v10 = self->_has;
  if ((*&v10 & 0x80) == 0)
  {
LABEL_13:
    if ((*&v10 & 0x1000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v6 + 13) = self->_freqBandInd;
  *(v6 + 32) |= 0x80u;
  v10 = self->_has;
  if ((*&v10 & 0x1000000) == 0)
  {
LABEL_14:
    if ((*&v10 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 30) = self->_trackingAreaCode;
  *(v6 + 32) |= 0x1000000u;
  v10 = self->_has;
  if ((*&v10 & 0x40000) == 0)
  {
LABEL_15:
    if ((*&v10 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v6 + 24) = self->_selPlmnMcc;
  *(v6 + 32) |= 0x40000u;
  v10 = self->_has;
  if ((*&v10 & 0x80000) == 0)
  {
LABEL_16:
    if ((*&v10 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v6 + 25) = self->_selPlmnMnc;
  *(v6 + 32) |= 0x80000u;
  v10 = self->_has;
  if ((*&v10 & 0x2000) == 0)
  {
LABEL_17:
    if ((*&v10 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 19) = self->_numMncDigits;
  *(v6 + 32) |= 0x2000u;
  v10 = self->_has;
  if ((*&v10 & 0x10) == 0)
  {
LABEL_18:
    if ((*&v10 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 10) = self->_deployment;
  *(v6 + 32) |= 0x10u;
  v10 = self->_has;
  if ((*&v10 & 0x100) == 0)
  {
LABEL_19:
    if ((*&v10 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v6 + 14) = self->_freqRange;
  *(v6 + 32) |= 0x100u;
  v10 = self->_has;
  if ((*&v10 & 0x800) == 0)
  {
LABEL_20:
    if ((*&v10 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v6 + 17) = self->_lteGci;
  *(v6 + 32) |= 0x800u;
  v10 = self->_has;
  if ((*&v10 & 0x400) == 0)
  {
LABEL_21:
    if ((*&v10 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v6 + 16) = self->_lteBw;
  *(v6 + 32) |= 0x400u;
  v10 = self->_has;
  if ((*&v10 & 2) == 0)
  {
LABEL_22:
    if ((*&v10 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v6 + 4) = self->_bwp;
  *(v6 + 32) |= 2u;
  v10 = self->_has;
  if ((*&v10 & 0x100000) == 0)
  {
LABEL_23:
    if ((*&v10 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v6 + 26) = self->_ssbCount;
  *(v6 + 32) |= 0x100000u;
  v10 = self->_has;
  if ((*&v10 & 0x200000) == 0)
  {
LABEL_24:
    if ((*&v10 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v6 + 27) = self->_subCarrierSpacing;
  *(v6 + 32) |= 0x200000u;
  v10 = self->_has;
  if ((*&v10 & 0x800000) == 0)
  {
LABEL_25:
    if ((*&v10 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 29) = self->_tddUlDlConfigurationCommon;
  *(v6 + 32) |= 0x800000u;
  v10 = self->_has;
  if ((*&v10 & 0x2000000) == 0)
  {
LABEL_26:
    if ((*&v10 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

LABEL_54:
    *(v6 + 20) = self->_numSubs;
    *(v6 + 32) |= 0x4000u;
    if ((*&self->_has & 0x10000) == 0)
    {
      return v6;
    }

    goto LABEL_28;
  }

LABEL_53:
  *(v6 + 124) = self->_splitBearerEver;
  *(v6 + 32) |= 0x2000000u;
  v10 = self->_has;
  if ((*&v10 & 0x4000) != 0)
  {
    goto LABEL_54;
  }

LABEL_27:
  if ((*&v10 & 0x10000) != 0)
  {
LABEL_28:
    *(v6 + 22) = self->_psPref;
    *(v6 + 32) |= 0x10000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_138;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_138;
    }
  }

  else if (v6)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_subsId != *(equalCopy + 28))
    {
      goto LABEL_138;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_phyCellId != *(equalCopy + 21))
    {
      goto LABEL_138;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_freq != *(equalCopy + 12))
    {
      goto LABEL_138;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_rbId != *(equalCopy + 23))
    {
      goto LABEL_138;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_channel != *(equalCopy + 6))
    {
      goto LABEL_138;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_msgType != *(equalCopy + 18))
    {
      goto LABEL_138;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_length != *(equalCopy + 15))
    {
      goto LABEL_138;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_138;
  }

  content = self->_content;
  if (content | *(equalCopy + 4))
  {
    if (![(NSData *)content isEqual:?])
    {
      goto LABEL_138;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 32);
  if ((*&has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_dlBw != *(equalCopy + 11))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_cellId != *(equalCopy + 5))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_freqBandInd != *(equalCopy + 13))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v8 & 0x1000000) == 0 || self->_trackingAreaCode != *(equalCopy + 30))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x1000000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v8 & 0x40000) == 0 || self->_selPlmnMcc != *(equalCopy + 24))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x40000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v8 & 0x80000) == 0 || self->_selPlmnMnc != *(equalCopy + 25))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x80000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || self->_numMncDigits != *(equalCopy + 19))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_deployment != *(equalCopy + 10))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v8 & 0x100) == 0 || self->_freqRange != *(equalCopy + 14))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x100) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0 || self->_lteGci != *(equalCopy + 17))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0 || self->_lteBw != *(equalCopy + 16))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_bwp != *(equalCopy + 4))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v8 & 0x100000) == 0 || self->_ssbCount != *(equalCopy + 26))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x100000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v8 & 0x200000) == 0 || self->_subCarrierSpacing != *(equalCopy + 27))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x200000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v8 & 0x800000) == 0 || self->_tddUlDlConfigurationCommon != *(equalCopy + 29))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x800000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x2000000) == 0)
  {
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_122;
    }

LABEL_138:
    v10 = 0;
    goto LABEL_139;
  }

  if ((v8 & 0x2000000) == 0)
  {
    goto LABEL_138;
  }

  v9 = *(equalCopy + 124);
  if (self->_splitBearerEver)
  {
    if ((*(equalCopy + 124) & 1) == 0)
    {
      goto LABEL_138;
    }
  }

  else if (*(equalCopy + 124))
  {
    goto LABEL_138;
  }

LABEL_122:
  if ((*&has & 0x4000) != 0)
  {
    if ((v8 & 0x4000) == 0 || self->_numSubs != *(equalCopy + 20))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x4000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0 || self->_psPref != *(equalCopy + 22))
    {
      goto LABEL_138;
    }

    v10 = 1;
  }

  else
  {
    v10 = (v8 & 0x10000) == 0;
  }

LABEL_139:

  return v10;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v32 = 2654435761u * self->_timestamp;
    if ((*&has & 0x400000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_subsId;
      if ((*&has & 0x8000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v32 = 0;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_phyCellId;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_freq;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_rbId;
    if ((*&has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_channel;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v9 = 0;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v8 = 0;
  if ((*&has & 0x1000) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v9 = 2654435761 * self->_msgType;
  if ((*&has & 0x200) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_length;
    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
LABEL_18:
  v11 = [(NSData *)self->_content hash];
  v12 = self->_has;
  if ((*&v12 & 0x20) != 0)
  {
    v13 = 2654435761 * self->_dlBw;
    if ((*&v12 & 4) != 0)
    {
LABEL_20:
      v14 = 2654435761 * self->_cellId;
      if ((*&v12 & 0x80) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  v14 = 0;
  if ((*&v12 & 0x80) != 0)
  {
LABEL_21:
    v15 = 2654435761 * self->_freqBandInd;
    if ((*&v12 & 0x1000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  v15 = 0;
  if ((*&v12 & 0x1000000) != 0)
  {
LABEL_22:
    v16 = 2654435761 * self->_trackingAreaCode;
    if ((*&v12 & 0x40000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  v16 = 0;
  if ((*&v12 & 0x40000) != 0)
  {
LABEL_23:
    v17 = 2654435761 * self->_selPlmnMcc;
    if ((*&v12 & 0x80000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

LABEL_41:
  v17 = 0;
  if ((*&v12 & 0x80000) != 0)
  {
LABEL_24:
    v18 = 2654435761 * self->_selPlmnMnc;
    if ((*&v12 & 0x2000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

LABEL_42:
  v18 = 0;
  if ((*&v12 & 0x2000) != 0)
  {
LABEL_25:
    v19 = 2654435761 * self->_numMncDigits;
    if ((*&v12 & 0x10) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

LABEL_43:
  v19 = 0;
  if ((*&v12 & 0x10) != 0)
  {
LABEL_26:
    v20 = 2654435761 * self->_deployment;
    if ((*&v12 & 0x100) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = 0;
  if ((*&v12 & 0x100) != 0)
  {
LABEL_27:
    v21 = 2654435761 * self->_freqRange;
    if ((*&v12 & 0x800) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_46;
  }

LABEL_45:
  v21 = 0;
  if ((*&v12 & 0x800) != 0)
  {
LABEL_28:
    v22 = 2654435761 * self->_lteGci;
    if ((*&v12 & 0x400) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_47;
  }

LABEL_46:
  v22 = 0;
  if ((*&v12 & 0x400) != 0)
  {
LABEL_29:
    v23 = 2654435761 * self->_lteBw;
    if ((*&v12 & 2) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_48;
  }

LABEL_47:
  v23 = 0;
  if ((*&v12 & 2) != 0)
  {
LABEL_30:
    v24 = 2654435761 * self->_bwp;
    if ((*&v12 & 0x100000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_49;
  }

LABEL_48:
  v24 = 0;
  if ((*&v12 & 0x100000) != 0)
  {
LABEL_31:
    v25 = 2654435761 * self->_ssbCount;
    if ((*&v12 & 0x200000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_50;
  }

LABEL_49:
  v25 = 0;
  if ((*&v12 & 0x200000) != 0)
  {
LABEL_32:
    v26 = 2654435761 * self->_subCarrierSpacing;
    if ((*&v12 & 0x800000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_51;
  }

LABEL_50:
  v26 = 0;
  if ((*&v12 & 0x800000) != 0)
  {
LABEL_33:
    v27 = 2654435761 * self->_tddUlDlConfigurationCommon;
    if ((*&v12 & 0x2000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_52;
  }

LABEL_51:
  v27 = 0;
  if ((*&v12 & 0x2000000) != 0)
  {
LABEL_34:
    v28 = 2654435761 * self->_splitBearerEver;
    if ((*&v12 & 0x4000) != 0)
    {
      goto LABEL_35;
    }

LABEL_53:
    v29 = 0;
    if ((*&v12 & 0x10000) != 0)
    {
      goto LABEL_36;
    }

LABEL_54:
    v30 = 0;
    return v4 ^ v32 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v11 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
  }

LABEL_52:
  v28 = 0;
  if ((*&v12 & 0x4000) == 0)
  {
    goto LABEL_53;
  }

LABEL_35:
  v29 = 2654435761 * self->_numSubs;
  if ((*&v12 & 0x10000) == 0)
  {
    goto LABEL_54;
  }

LABEL_36:
  v30 = 2654435761 * self->_psPref;
  return v4 ^ v32 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v11 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 32);
    if ((v5 & 0x400000) == 0)
    {
LABEL_3:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  self->_subsId = *(fromCopy + 28);
  *&self->_has |= 0x400000u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x8000) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_phyCellId = *(fromCopy + 21);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_freq = *(fromCopy + 12);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x20000) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_rbId = *(fromCopy + 23);
  *&self->_has |= 0x20000u;
  v5 = *(fromCopy + 32);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_channel = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x1000) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_40:
  self->_msgType = *(fromCopy + 18);
  *&self->_has |= 0x1000u;
  if ((*(fromCopy + 32) & 0x200) != 0)
  {
LABEL_9:
    self->_length = *(fromCopy + 15);
    *&self->_has |= 0x200u;
  }

LABEL_10:
  if (*(fromCopy + 4))
  {
    v7 = fromCopy;
    [(CellularNrOtaMsg *)self setContent:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 32);
  if ((v6 & 0x20) != 0)
  {
    self->_dlBw = *(fromCopy + 11);
    *&self->_has |= 0x20u;
    v6 = *(fromCopy + 32);
    if ((v6 & 4) == 0)
    {
LABEL_14:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_44;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_14;
  }

  self->_cellId = *(fromCopy + 5);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x80) == 0)
  {
LABEL_15:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_freqBandInd = *(fromCopy + 13);
  *&self->_has |= 0x80u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_trackingAreaCode = *(fromCopy + 30);
  *&self->_has |= 0x1000000u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x40000) == 0)
  {
LABEL_17:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_selPlmnMcc = *(fromCopy + 24);
  *&self->_has |= 0x40000u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x80000) == 0)
  {
LABEL_18:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_selPlmnMnc = *(fromCopy + 25);
  *&self->_has |= 0x80000u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x2000) == 0)
  {
LABEL_19:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_numMncDigits = *(fromCopy + 19);
  *&self->_has |= 0x2000u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x10) == 0)
  {
LABEL_20:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_deployment = *(fromCopy + 10);
  *&self->_has |= 0x10u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x100) == 0)
  {
LABEL_21:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_freqRange = *(fromCopy + 14);
  *&self->_has |= 0x100u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x800) == 0)
  {
LABEL_22:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_lteGci = *(fromCopy + 17);
  *&self->_has |= 0x800u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x400) == 0)
  {
LABEL_23:
    if ((v6 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_lteBw = *(fromCopy + 16);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 32);
  if ((v6 & 2) == 0)
  {
LABEL_24:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_bwp = *(fromCopy + 4);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x100000) == 0)
  {
LABEL_25:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_ssbCount = *(fromCopy + 26);
  *&self->_has |= 0x100000u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x200000) == 0)
  {
LABEL_26:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_subCarrierSpacing = *(fromCopy + 27);
  *&self->_has |= 0x200000u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x800000) == 0)
  {
LABEL_27:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_tddUlDlConfigurationCommon = *(fromCopy + 29);
  *&self->_has |= 0x800000u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_splitBearerEver = *(fromCopy + 124);
  *&self->_has |= 0x2000000u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x4000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_58:
  self->_numSubs = *(fromCopy + 20);
  *&self->_has |= 0x4000u;
  if ((*(fromCopy + 32) & 0x10000) != 0)
  {
LABEL_30:
    self->_psPref = *(fromCopy + 22);
    *&self->_has |= 0x10000u;
  }

LABEL_31:
}

@end