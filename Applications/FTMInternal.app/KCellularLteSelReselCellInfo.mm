@interface KCellularLteSelReselCellInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)intraFreqPciAtIndex:(unint64_t)a3;
- (unsigned)multiBandInfoAtIndex:(unint64_t)a3;
- (void)addNbrEutra:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAcBarringForEmergency:(BOOL)a3;
- (void)setHasDlBandwidth:(BOOL)a3;
- (void)setHasDlEarfcn:(BOOL)a3;
- (void)setHasDlRfBand:(BOOL)a3;
- (void)setHasImsEmergencySupport:(BOOL)a3;
- (void)setHasMoDataAcBarringFactor:(BOOL)a3;
- (void)setHasMoDataAcBarringForSpecialAc:(BOOL)a3;
- (void)setHasMoDataAcBarringTime:(BOOL)a3;
- (void)setHasMoSignallingAcBarringFactor:(BOOL)a3;
- (void)setHasMoSignallingAcBarringForSpecialAc:(BOOL)a3;
- (void)setHasMoSignallingAcBarringTime:(BOOL)a3;
- (void)setHasPci:(BOOL)a3;
- (void)setHasPriorityOperatingFreq:(BOOL)a3;
- (void)setHasQHyst:(BOOL)a3;
- (void)setHasQQualMin:(BOOL)a3;
- (void)setHasQRxLevMin:(BOOL)a3;
- (void)setHasSIntraSearchP:(BOOL)a3;
- (void)setHasSIntraSearchQ:(BOOL)a3;
- (void)setHasSNonIntraSearchP:(BOOL)a3;
- (void)setHasSNonIntraSearchQ:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasThreshServingLowP:(BOOL)a3;
- (void)setHasThreshServingLowQ:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularLteSelReselCellInfo

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = KCellularLteSelReselCellInfo;
  [(KCellularLteSelReselCellInfo *)&v3 dealloc];
}

- (unsigned)multiBandInfoAtIndex:(unint64_t)a3
{
  p_multiBandInfos = &self->_multiBandInfos;
  count = self->_multiBandInfos.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_multiBandInfos->list[a3];
}

- (void)setHasImsEmergencySupport:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasAcBarringForEmergency:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasMoSignallingAcBarringFactor:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasMoSignallingAcBarringTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasMoSignallingAcBarringForSpecialAc:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasMoDataAcBarringFactor:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasMoDataAcBarringTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasMoDataAcBarringForSpecialAc:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasQRxLevMin:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasQQualMin:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasQHyst:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasSNonIntraSearchP:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasSNonIntraSearchQ:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasSIntraSearchP:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasSIntraSearchQ:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasThreshServingLowP:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasThreshServingLowQ:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasPriorityOperatingFreq:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)addNbrEutra:(id)a3
{
  v4 = a3;
  nbrEutras = self->_nbrEutras;
  v8 = v4;
  if (!nbrEutras)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_nbrEutras;
    self->_nbrEutras = v6;

    v4 = v8;
    nbrEutras = self->_nbrEutras;
  }

  [(NSMutableArray *)nbrEutras addObject:v4];
}

- (void)setHasDlEarfcn:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasPci:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasDlRfBand:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasDlBandwidth:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (unsigned)intraFreqPciAtIndex:(unint64_t)a3
{
  p_intraFreqPcis = &self->_intraFreqPcis;
  count = self->_intraFreqPcis.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_intraFreqPcis->list[a3];
}

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularLteSelReselCellInfo;
  v3 = [(KCellularLteSelReselCellInfo *)&v7 description];
  v4 = [(KCellularLteSelReselCellInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  v5 = PBRepeatedUInt32NSArray();
  [v3 setObject:v5 forKey:@"multi_band_info"];

  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    v24 = [NSNumber numberWithUnsignedInt:self->_imsEmergencySupport];
    [v3 setObject:v24 forKey:@"ims_emergency_support"];

    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_5:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_47;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_5;
  }

  v25 = [NSNumber numberWithUnsignedInt:self->_acBarringForEmergency];
  [v3 setObject:v25 forKey:@"ac_barring_for_emergency"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  v26 = [NSNumber numberWithUnsignedInt:self->_moSignallingAcBarringFactor];
  [v3 setObject:v26 forKey:@"mo_signalling_ac_barring_factor"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  v27 = [NSNumber numberWithUnsignedInt:self->_moSignallingAcBarringTime];
  [v3 setObject:v27 forKey:@"mo_signalling_ac_barring_time"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  v28 = [NSNumber numberWithUnsignedInt:self->_moSignallingAcBarringForSpecialAc];
  [v3 setObject:v28 forKey:@"mo_signalling_ac_barring_for_special_ac"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  v29 = [NSNumber numberWithUnsignedInt:self->_moDataAcBarringFactor];
  [v3 setObject:v29 forKey:@"mo_data_ac_barring_factor"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  v30 = [NSNumber numberWithUnsignedInt:self->_moDataAcBarringTime];
  [v3 setObject:v30 forKey:@"mo_data_ac_barring_time"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  v31 = [NSNumber numberWithUnsignedInt:self->_moDataAcBarringForSpecialAc];
  [v3 setObject:v31 forKey:@"mo_data_ac_barring_for_special_ac"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  v32 = [NSNumber numberWithInt:self->_qRxLevMin];
  [v3 setObject:v32 forKey:@"QRxLevMin"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  v33 = [NSNumber numberWithInt:self->_qQualMin];
  [v3 setObject:v33 forKey:@"QQualMin"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  v34 = [NSNumber numberWithUnsignedInt:self->_qHyst];
  [v3 setObject:v34 forKey:@"Q_hyst"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  v35 = [NSNumber numberWithUnsignedInt:self->_sNonIntraSearchP];
  [v3 setObject:v35 forKey:@"S_non_intra_search_P"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  v36 = [NSNumber numberWithUnsignedInt:self->_sNonIntraSearchQ];
  [v3 setObject:v36 forKey:@"S_non_intra_search_Q"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  v37 = [NSNumber numberWithUnsignedInt:self->_sIntraSearchP];
  [v3 setObject:v37 forKey:@"S_intra_search_P"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  v38 = [NSNumber numberWithUnsignedInt:self->_sIntraSearchQ];
  [v3 setObject:v38 forKey:@"S_intra_search_Q"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_19:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  v39 = [NSNumber numberWithUnsignedInt:self->_threshServingLowP];
  [v3 setObject:v39 forKey:@"Thresh_serving_lowP"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_61:
  v40 = [NSNumber numberWithUnsignedInt:self->_threshServingLowQ];
  [v3 setObject:v40 forKey:@"Thresh_serving_lowQ"];

  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_21:
    v7 = [NSNumber numberWithUnsignedInt:self->_priorityOperatingFreq];
    [v3 setObject:v7 forKey:@"priority_operating_freq"];
  }

LABEL_22:
  if ([(NSMutableArray *)self->_nbrEutras count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_nbrEutras, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v9 = self->_nbrEutras;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v44 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"nbr_eutra"];
  }

  v15 = self->_has;
  if ((*&v15 & 8) != 0)
  {
    v41 = [NSNumber numberWithUnsignedInt:self->_dlEarfcn];
    [v3 setObject:v41 forKey:@"dl_earfcn"];

    v15 = self->_has;
    if ((*&v15 & 0x1000) == 0)
    {
LABEL_33:
      if ((*&v15 & 0x10) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_65;
    }
  }

  else if ((*&v15 & 0x1000) == 0)
  {
    goto LABEL_33;
  }

  v42 = [NSNumber numberWithUnsignedInt:self->_pci, v44];
  [v3 setObject:v42 forKey:@"pci"];

  v15 = self->_has;
  if ((*&v15 & 0x10) == 0)
  {
LABEL_34:
    if ((*&v15 & 4) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_65:
  v43 = [NSNumber numberWithUnsignedInt:self->_dlRfBand, v44];
  [v3 setObject:v43 forKey:@"dl_rf_band"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_35:
    v16 = [NSNumber numberWithUnsignedInt:self->_dlBandwidth, v44];
    [v3 setObject:v16 forKey:@"dl_bandwidth"];
  }

LABEL_36:
  v17 = PBRepeatedUInt32NSArray();
  [v3 setObject:v17 forKey:@"intra_freq_pci"];

  utraReselInfo = self->_utraReselInfo;
  if (utraReselInfo)
  {
    v19 = [(UtraReselectionInfo *)utraReselInfo dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"utra_resel_info"];
  }

  geraReselInfo = self->_geraReselInfo;
  if (geraReselInfo)
  {
    v21 = [(GeraReselectionInfo *)geraReselInfo dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"gera_resel_info"];
  }

  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    v22 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v22 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_multiBandInfos.count)
  {
    v45 = 0;
    PBDataWriterPlaceMark();
    if (self->_multiBandInfos.count)
    {
      v6 = 0;
      do
      {
        v7 = self->_multiBandInfos.list[v6];
        PBDataWriterWriteUint32Field();
        ++v6;
      }

      while (v6 < self->_multiBandInfos.count);
    }

    PBDataWriterRecallMark();
  }

  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    imsEmergencySupport = self->_imsEmergencySupport;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_10:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_10;
  }

  acBarringForEmergency = self->_acBarringForEmergency;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_54;
  }

LABEL_53:
  moSignallingAcBarringFactor = self->_moSignallingAcBarringFactor;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_55;
  }

LABEL_54:
  moSignallingAcBarringTime = self->_moSignallingAcBarringTime;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_56;
  }

LABEL_55:
  moSignallingAcBarringForSpecialAc = self->_moSignallingAcBarringForSpecialAc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_57;
  }

LABEL_56:
  moDataAcBarringFactor = self->_moDataAcBarringFactor;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_58;
  }

LABEL_57:
  moDataAcBarringTime = self->_moDataAcBarringTime;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_59;
  }

LABEL_58:
  moDataAcBarringForSpecialAc = self->_moDataAcBarringForSpecialAc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_17:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_60;
  }

LABEL_59:
  qRxLevMin = self->_qRxLevMin;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_61;
  }

LABEL_60:
  qQualMin = self->_qQualMin;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_19:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_62;
  }

LABEL_61:
  qHyst = self->_qHyst;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_63;
  }

LABEL_62:
  sNonIntraSearchP = self->_sNonIntraSearchP;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_64;
  }

LABEL_63:
  sNonIntraSearchQ = self->_sNonIntraSearchQ;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_22:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_65;
  }

LABEL_64:
  sIntraSearchP = self->_sIntraSearchP;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_23:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_66;
  }

LABEL_65:
  sIntraSearchQ = self->_sIntraSearchQ;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_24:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_67;
  }

LABEL_66:
  threshServingLowP = self->_threshServingLowP;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_67:
  threshServingLowQ = self->_threshServingLowQ;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_26:
    priorityOperatingFreq = self->_priorityOperatingFreq;
    PBDataWriterWriteUint32Field();
  }

LABEL_27:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = self->_nbrEutras;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v12);
  }

  v16 = self->_has;
  if ((*&v16 & 8) != 0)
  {
    dlEarfcn = self->_dlEarfcn;
    PBDataWriterWriteUint32Field();
    v16 = self->_has;
    if ((*&v16 & 0x1000) == 0)
    {
LABEL_36:
      if ((*&v16 & 0x10) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_71;
    }
  }

  else if ((*&v16 & 0x1000) == 0)
  {
    goto LABEL_36;
  }

  pci = self->_pci;
  PBDataWriterWriteUint32Field();
  v16 = self->_has;
  if ((*&v16 & 0x10) == 0)
  {
LABEL_37:
    if ((*&v16 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_71:
  dlRfBand = self->_dlRfBand;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_38:
    dlBandwidth = self->_dlBandwidth;
    PBDataWriterWriteUint32Field();
  }

LABEL_39:
  if (self->_intraFreqPcis.count)
  {
    v45 = 0;
    PBDataWriterPlaceMark();
    if (self->_intraFreqPcis.count)
    {
      v18 = 0;
      do
      {
        v19 = self->_intraFreqPcis.list[v18];
        PBDataWriterWriteUint32Field();
        ++v18;
      }

      while (v18 < self->_intraFreqPcis.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_utraReselInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_geraReselInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[7] = self->_timestamp;
    *(v4 + 46) |= 1u;
  }

  v18 = v4;
  if ([(KCellularLteSelReselCellInfo *)self multiBandInfosCount])
  {
    [v18 clearMultiBandInfos];
    v5 = [(KCellularLteSelReselCellInfo *)self multiBandInfosCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v18 addMultiBandInfo:{-[KCellularLteSelReselCellInfo multiBandInfoAtIndex:](self, "multiBandInfoAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    v18[22] = self->_imsEmergencySupport;
    v18[46] |= 0x20u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_9:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_50;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_9;
  }

  v18[16] = self->_acBarringForEmergency;
  v18[46] |= 2u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  v18[26] = self->_moSignallingAcBarringFactor;
  v18[46] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  v18[28] = self->_moSignallingAcBarringTime;
  v18[46] |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  v18[27] = self->_moSignallingAcBarringForSpecialAc;
  v18[46] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  v18[23] = self->_moDataAcBarringFactor;
  v18[46] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  v18[25] = self->_moDataAcBarringTime;
  v18[46] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  v18[24] = self->_moDataAcBarringForSpecialAc;
  v18[46] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  v18[36] = self->_qRxLevMin;
  v18[46] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  v18[35] = self->_qQualMin;
  v18[46] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  v18[34] = self->_qHyst;
  v18[46] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  v18[39] = self->_sNonIntraSearchP;
  v18[46] |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_20:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  v18[40] = self->_sNonIntraSearchQ;
  v18[46] |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_21:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  v18[37] = self->_sIntraSearchP;
  v18[46] |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  v18[38] = self->_sIntraSearchQ;
  v18[46] |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_24;
    }

LABEL_64:
    v18[43] = self->_threshServingLowQ;
    v18[46] |= 0x800000u;
    if ((*&self->_has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_63:
  v18[42] = self->_threshServingLowP;
  v18[46] |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) != 0)
  {
    goto LABEL_64;
  }

LABEL_24:
  if ((*&has & 0x2000) != 0)
  {
LABEL_25:
    v18[33] = self->_priorityOperatingFreq;
    v18[46] |= 0x2000u;
  }

LABEL_26:
  if ([(KCellularLteSelReselCellInfo *)self nbrEutrasCount])
  {
    [v18 clearNbrEutras];
    v9 = [(KCellularLteSelReselCellInfo *)self nbrEutrasCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(KCellularLteSelReselCellInfo *)self nbrEutraAtIndex:j];
        [v18 addNbrEutra:v12];
      }
    }
  }

  v13 = self->_has;
  if ((*&v13 & 8) != 0)
  {
    v18[18] = self->_dlEarfcn;
    v18[46] |= 8u;
    v13 = self->_has;
    if ((*&v13 & 0x1000) == 0)
    {
LABEL_32:
      if ((*&v13 & 0x10) == 0)
      {
        goto LABEL_33;
      }

LABEL_68:
      v18[19] = self->_dlRfBand;
      v18[46] |= 0x10u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*&v13 & 0x1000) == 0)
  {
    goto LABEL_32;
  }

  v18[32] = self->_pci;
  v18[46] |= 0x1000u;
  v13 = self->_has;
  if ((*&v13 & 0x10) != 0)
  {
    goto LABEL_68;
  }

LABEL_33:
  if ((*&v13 & 4) != 0)
  {
LABEL_34:
    v18[17] = self->_dlBandwidth;
    v18[46] |= 4u;
  }

LABEL_35:
  if ([(KCellularLteSelReselCellInfo *)self intraFreqPcisCount])
  {
    [v18 clearIntraFreqPcis];
    v14 = [(KCellularLteSelReselCellInfo *)self intraFreqPcisCount];
    if (v14)
    {
      v15 = v14;
      for (k = 0; k != v15; ++k)
      {
        [v18 addIntraFreqPci:{-[KCellularLteSelReselCellInfo intraFreqPciAtIndex:](self, "intraFreqPciAtIndex:", k)}];
      }
    }
  }

  if (self->_utraReselInfo)
  {
    [v18 setUtraReselInfo:?];
  }

  v17 = v18;
  if (self->_geraReselInfo)
  {
    [v18 setGeraReselInfo:?];
    v17 = v18;
  }

  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    v17[41] = self->_subsId;
    v17[46] |= 0x200000u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[7] = self->_timestamp;
    *(v5 + 46) |= 1u;
  }

  PBRepeatedUInt32Copy();
  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    v6[22] = self->_imsEmergencySupport;
    v6[46] |= 0x20u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_5:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_39;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_5;
  }

  v6[16] = self->_acBarringForEmergency;
  v6[46] |= 2u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  v6[26] = self->_moSignallingAcBarringFactor;
  v6[46] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  v6[28] = self->_moSignallingAcBarringTime;
  v6[46] |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6[27] = self->_moSignallingAcBarringForSpecialAc;
  v6[46] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v6[23] = self->_moDataAcBarringFactor;
  v6[46] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  v6[25] = self->_moDataAcBarringTime;
  v6[46] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6[24] = self->_moDataAcBarringForSpecialAc;
  v6[46] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v6[36] = self->_qRxLevMin;
  v6[46] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v6[35] = self->_qQualMin;
  v6[46] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v6[34] = self->_qHyst;
  v6[46] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v6[39] = self->_sNonIntraSearchP;
  v6[46] |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  v6[40] = self->_sNonIntraSearchQ;
  v6[46] |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v6[37] = self->_sIntraSearchP;
  v6[46] |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v6[38] = self->_sIntraSearchQ;
  v6[46] |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_19:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v6[42] = self->_threshServingLowP;
  v6[46] |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_53:
  v6[43] = self->_threshServingLowQ;
  v6[46] |= 0x800000u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_21:
    v6[33] = self->_priorityOperatingFreq;
    v6[46] |= 0x2000u;
  }

LABEL_22:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_nbrEutras;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v20 + 1) + 8 * v12) copyWithZone:{a3, v20}];
        [v6 addNbrEutra:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((*&v14 & 8) != 0)
  {
    v6[18] = self->_dlEarfcn;
    v6[46] |= 8u;
    v14 = self->_has;
    if ((*&v14 & 0x1000) == 0)
    {
LABEL_31:
      if ((*&v14 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_57;
    }
  }

  else if ((*&v14 & 0x1000) == 0)
  {
    goto LABEL_31;
  }

  v6[32] = self->_pci;
  v6[46] |= 0x1000u;
  v14 = self->_has;
  if ((*&v14 & 0x10) == 0)
  {
LABEL_32:
    if ((*&v14 & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_57:
  v6[19] = self->_dlRfBand;
  v6[46] |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_33:
    v6[17] = self->_dlBandwidth;
    v6[46] |= 4u;
  }

LABEL_34:
  PBRepeatedUInt32Copy();
  v15 = [(UtraReselectionInfo *)self->_utraReselInfo copyWithZone:a3];
  v16 = *(v6 + 22);
  *(v6 + 22) = v15;

  v17 = [(GeraReselectionInfo *)self->_geraReselInfo copyWithZone:a3];
  v18 = *(v6 + 10);
  *(v6 + 10) = v17;

  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    v6[41] = self->_subsId;
    v6[46] |= 0x200000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_131;
  }

  v5 = *(v4 + 46);
  if (*&self->_has)
  {
    if ((v5 & 1) == 0 || self->_timestamp != *(v4 + 7))
    {
      goto LABEL_131;
    }
  }

  else if (v5)
  {
    goto LABEL_131;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_131;
  }

  has = self->_has;
  v7 = *(v4 + 46);
  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_imsEmergencySupport != *(v4 + 22))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_acBarringForEmergency != *(v4 + 16))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_moSignallingAcBarringFactor != *(v4 + 26))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_moSignallingAcBarringTime != *(v4 + 28))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_moSignallingAcBarringForSpecialAc != *(v4 + 27))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_moDataAcBarringFactor != *(v4 + 23))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_moDataAcBarringTime != *(v4 + 25))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_moDataAcBarringForSpecialAc != *(v4 + 24))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_qRxLevMin != *(v4 + 36))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_qQualMin != *(v4 + 35))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_qHyst != *(v4 + 34))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_sNonIntraSearchP != *(v4 + 39))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_sNonIntraSearchQ != *(v4 + 40))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_sIntraSearchP != *(v4 + 37))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_sIntraSearchQ != *(v4 + 38))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_threshServingLowP != *(v4 + 42))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0 || self->_threshServingLowQ != *(v4 + 43))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_priorityOperatingFreq != *(v4 + 33))
    {
      goto LABEL_131;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_131;
  }

  nbrEutras = self->_nbrEutras;
  if (nbrEutras | *(v4 + 15))
  {
    if ([(NSMutableArray *)nbrEutras isEqual:?])
    {
      has = self->_has;
      goto LABEL_101;
    }

LABEL_131:
    v13 = 0;
    goto LABEL_132;
  }

LABEL_101:
  v9 = *(v4 + 46);
  if ((*&has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_dlEarfcn != *(v4 + 18))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v9 & 0x1000) == 0 || self->_pci != *(v4 + 32))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x1000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_dlRfBand != *(v4 + 19))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_dlBandwidth != *(v4 + 17))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_131;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_131;
  }

  utraReselInfo = self->_utraReselInfo;
  if (utraReselInfo | *(v4 + 22))
  {
    if (![(UtraReselectionInfo *)utraReselInfo isEqual:?])
    {
      goto LABEL_131;
    }
  }

  geraReselInfo = self->_geraReselInfo;
  if (geraReselInfo | *(v4 + 10))
  {
    if (![(GeraReselectionInfo *)geraReselInfo isEqual:?])
    {
      goto LABEL_131;
    }
  }

  v12 = *(v4 + 46);
  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    if ((v12 & 0x200000) == 0 || self->_subsId != *(v4 + 41))
    {
      goto LABEL_131;
    }

    v13 = 1;
  }

  else
  {
    v13 = (v12 & 0x200000) == 0;
  }

LABEL_132:

  return v13;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v34 = 2654435761u * self->_timestamp;
  }

  else
  {
    v34 = 0;
  }

  v33 = PBRepeatedUInt32Hash();
  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    v32 = 2654435761 * self->_imsEmergencySupport;
    if ((*&has & 2) != 0)
    {
LABEL_6:
      v31 = 2654435761 * self->_acBarringForEmergency;
      if ((*&has & 0x200) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v32 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v31 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_7:
    v30 = 2654435761 * self->_moSignallingAcBarringFactor;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v30 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_8:
    v29 = 2654435761 * self->_moSignallingAcBarringTime;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v29 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_9:
    v28 = 2654435761 * self->_moSignallingAcBarringForSpecialAc;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v28 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_10:
    v27 = 2654435761 * self->_moDataAcBarringFactor;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v27 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_11:
    v26 = 2654435761 * self->_moDataAcBarringTime;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v26 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_12:
    v25 = 2654435761 * self->_moDataAcBarringForSpecialAc;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v25 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_13:
    v24 = 2654435761 * self->_qRxLevMin;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v24 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_14:
    v23 = 2654435761 * self->_qQualMin;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v23 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_15:
    v22 = 2654435761 * self->_qHyst;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v22 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_16:
    v21 = 2654435761 * self->_sNonIntraSearchP;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v21 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_17:
    v20 = 2654435761 * self->_sNonIntraSearchQ;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_18:
    v19 = 2654435761 * self->_sIntraSearchP;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_19:
    v18 = 2654435761 * self->_sIntraSearchQ;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_20:
    v17 = 2654435761 * self->_threshServingLowP;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_21;
    }

LABEL_39:
    v16 = 0;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_38:
  v17 = 0;
  if ((*&has & 0x800000) == 0)
  {
    goto LABEL_39;
  }

LABEL_21:
  v16 = 2654435761 * self->_threshServingLowQ;
  if ((*&has & 0x2000) != 0)
  {
LABEL_22:
    v15 = 2654435761 * self->_priorityOperatingFreq;
    goto LABEL_41;
  }

LABEL_40:
  v15 = 0;
LABEL_41:
  v4 = [(NSMutableArray *)self->_nbrEutras hash];
  v5 = self->_has;
  if ((*&v5 & 8) != 0)
  {
    v6 = 2654435761 * self->_dlEarfcn;
    if ((*&v5 & 0x1000) != 0)
    {
LABEL_43:
      v7 = 2654435761 * self->_pci;
      if ((*&v5 & 0x10) != 0)
      {
        goto LABEL_44;
      }

LABEL_48:
      v8 = 0;
      if ((*&v5 & 4) != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v6 = 0;
    if ((*&v5 & 0x1000) != 0)
    {
      goto LABEL_43;
    }
  }

  v7 = 0;
  if ((*&v5 & 0x10) == 0)
  {
    goto LABEL_48;
  }

LABEL_44:
  v8 = 2654435761 * self->_dlRfBand;
  if ((*&v5 & 4) != 0)
  {
LABEL_45:
    v9 = 2654435761 * self->_dlBandwidth;
    goto LABEL_50;
  }

LABEL_49:
  v9 = 0;
LABEL_50:
  v10 = PBRepeatedUInt32Hash();
  v11 = [(UtraReselectionInfo *)self->_utraReselInfo hash];
  v12 = [(GeraReselectionInfo *)self->_geraReselInfo hash];
  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    v13 = 2654435761 * self->_subsId;
  }

  else
  {
    v13 = 0;
  }

  return v33 ^ v34 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v6 ^ v4 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[23])
  {
    self->_timestamp = v4[7];
    *&self->_has |= 1u;
  }

  v6 = [v4 multiBandInfosCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[KCellularLteSelReselCellInfo addMultiBandInfo:](self, "addMultiBandInfo:", [v5 multiBandInfoAtIndex:i]);
    }
  }

  v9 = *(v5 + 46);
  if ((v9 & 0x20) != 0)
  {
    self->_imsEmergencySupport = *(v5 + 22);
    *&self->_has |= 0x20u;
    v9 = *(v5 + 46);
    if ((v9 & 2) == 0)
    {
LABEL_8:
      if ((v9 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_8;
  }

  self->_acBarringForEmergency = *(v5 + 16);
  *&self->_has |= 2u;
  v9 = *(v5 + 46);
  if ((v9 & 0x200) == 0)
  {
LABEL_9:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_moSignallingAcBarringFactor = *(v5 + 26);
  *&self->_has |= 0x200u;
  v9 = *(v5 + 46);
  if ((v9 & 0x800) == 0)
  {
LABEL_10:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_moSignallingAcBarringTime = *(v5 + 28);
  *&self->_has |= 0x800u;
  v9 = *(v5 + 46);
  if ((v9 & 0x400) == 0)
  {
LABEL_11:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_moSignallingAcBarringForSpecialAc = *(v5 + 27);
  *&self->_has |= 0x400u;
  v9 = *(v5 + 46);
  if ((v9 & 0x40) == 0)
  {
LABEL_12:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_moDataAcBarringFactor = *(v5 + 23);
  *&self->_has |= 0x40u;
  v9 = *(v5 + 46);
  if ((v9 & 0x100) == 0)
  {
LABEL_13:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_moDataAcBarringTime = *(v5 + 25);
  *&self->_has |= 0x100u;
  v9 = *(v5 + 46);
  if ((v9 & 0x80) == 0)
  {
LABEL_14:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_moDataAcBarringForSpecialAc = *(v5 + 24);
  *&self->_has |= 0x80u;
  v9 = *(v5 + 46);
  if ((v9 & 0x10000) == 0)
  {
LABEL_15:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_qRxLevMin = *(v5 + 36);
  *&self->_has |= 0x10000u;
  v9 = *(v5 + 46);
  if ((v9 & 0x8000) == 0)
  {
LABEL_16:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_qQualMin = *(v5 + 35);
  *&self->_has |= 0x8000u;
  v9 = *(v5 + 46);
  if ((v9 & 0x4000) == 0)
  {
LABEL_17:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_qHyst = *(v5 + 34);
  *&self->_has |= 0x4000u;
  v9 = *(v5 + 46);
  if ((v9 & 0x80000) == 0)
  {
LABEL_18:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_sNonIntraSearchP = *(v5 + 39);
  *&self->_has |= 0x80000u;
  v9 = *(v5 + 46);
  if ((v9 & 0x100000) == 0)
  {
LABEL_19:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_sNonIntraSearchQ = *(v5 + 40);
  *&self->_has |= 0x100000u;
  v9 = *(v5 + 46);
  if ((v9 & 0x20000) == 0)
  {
LABEL_20:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_sIntraSearchP = *(v5 + 37);
  *&self->_has |= 0x20000u;
  v9 = *(v5 + 46);
  if ((v9 & 0x40000) == 0)
  {
LABEL_21:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_sIntraSearchQ = *(v5 + 38);
  *&self->_has |= 0x40000u;
  v9 = *(v5 + 46);
  if ((v9 & 0x400000) == 0)
  {
LABEL_22:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_threshServingLowP = *(v5 + 42);
  *&self->_has |= 0x400000u;
  v9 = *(v5 + 46);
  if ((v9 & 0x800000) == 0)
  {
LABEL_23:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_59:
  self->_threshServingLowQ = *(v5 + 43);
  *&self->_has |= 0x800000u;
  if ((*(v5 + 46) & 0x2000) != 0)
  {
LABEL_24:
    self->_priorityOperatingFreq = *(v5 + 33);
    *&self->_has |= 0x2000u;
  }

LABEL_25:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = *(v5 + 15);
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(KCellularLteSelReselCellInfo *)self addNbrEutra:*(*(&v23 + 1) + 8 * j), v23];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v15 = *(v5 + 46);
  if ((v15 & 8) != 0)
  {
    self->_dlEarfcn = *(v5 + 18);
    *&self->_has |= 8u;
    v15 = *(v5 + 46);
    if ((v15 & 0x1000) == 0)
    {
LABEL_34:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_63;
    }
  }

  else if ((v15 & 0x1000) == 0)
  {
    goto LABEL_34;
  }

  self->_pci = *(v5 + 32);
  *&self->_has |= 0x1000u;
  v15 = *(v5 + 46);
  if ((v15 & 0x10) == 0)
  {
LABEL_35:
    if ((v15 & 4) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_63:
  self->_dlRfBand = *(v5 + 19);
  *&self->_has |= 0x10u;
  if ((*(v5 + 46) & 4) != 0)
  {
LABEL_36:
    self->_dlBandwidth = *(v5 + 17);
    *&self->_has |= 4u;
  }

LABEL_37:
  v16 = [v5 intraFreqPcisCount];
  if (v16)
  {
    v17 = v16;
    for (k = 0; k != v17; ++k)
    {
      -[KCellularLteSelReselCellInfo addIntraFreqPci:](self, "addIntraFreqPci:", [v5 intraFreqPciAtIndex:k]);
    }
  }

  utraReselInfo = self->_utraReselInfo;
  v20 = *(v5 + 22);
  if (utraReselInfo)
  {
    if (v20)
    {
      [(UtraReselectionInfo *)utraReselInfo mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(KCellularLteSelReselCellInfo *)self setUtraReselInfo:?];
  }

  geraReselInfo = self->_geraReselInfo;
  v22 = *(v5 + 10);
  if (geraReselInfo)
  {
    if (v22)
    {
      [(GeraReselectionInfo *)geraReselInfo mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(KCellularLteSelReselCellInfo *)self setGeraReselInfo:?];
  }

  if ((*(v5 + 186) & 0x20) != 0)
  {
    self->_subsId = *(v5 + 41);
    *&self->_has |= 0x200000u;
  }
}

@end