@interface CellularHealthMonitor
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDataStallType:(id)a3;
- (int)StringAsFbrxRsrpRat:(id)a3;
- (int)StringAsHmType:(id)a3;
- (int)StringAsLastSearchRat:(id)a3;
- (int)StringAsRat:(id)a3;
- (int)dataStallType;
- (int)fbrxRsrpRat;
- (int)hmType;
- (int)lastSearchRat;
- (int)rat;
- (unint64_t)hash;
- (unsigned)countOfInvalidationReasonAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDataStallType:(BOOL)a3;
- (void)setHasDcActive:(BOOL)a3;
- (void)setHasFbrxRsrpRat:(BOOL)a3;
- (void)setHasFreqRange:(BOOL)a3;
- (void)setHasHmType:(BOOL)a3;
- (void)setHasLacTac:(BOOL)a3;
- (void)setHasLastSearchRat:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasRat:(BOOL)a3;
- (void)setHasRepeatedBeamFailures:(BOOL)a3;
- (void)setHasRepeatedLteRachFailures:(BOOL)a3;
- (void)setHasRepeatedLteRlfFailures:(BOOL)a3;
- (void)setHasRepeatedNrCellInvalidationArfcn:(BOOL)a3;
- (void)setHasRepeatedNrCellInvalidationBand:(BOOL)a3;
- (void)setHasRepeatedNrCellInvalidationOccurences:(BOOL)a3;
- (void)setHasRepeatedNrCellInvalidationPci:(BOOL)a3;
- (void)setHasRepeatedNrRachFailures:(BOOL)a3;
- (void)setHasRepeatedNrRlfFailures:(BOOL)a3;
- (void)setHasRepeatedScgFailures:(BOOL)a3;
- (void)setHasRxChain:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularHealthMonitor

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = CellularHealthMonitor;
  [(CellularHealthMonitor *)&v3 dealloc];
}

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

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (int)rat
{
  if ((*(&self->_has + 1) & 4) != 0)
  {
    return self->_rat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRat:(BOOL)a3
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

- (int)StringAsRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_MODE_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_LTE_V2"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_CDMA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_HDR"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_WCDMA"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_EHRPD"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GW"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_WLAN"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GWL"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_UMTS"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_NR5G"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_CDMA_HDR"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)dataStallType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_dataStallType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDataStallType:(BOOL)a3
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

- (int)StringAsDataStallType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AP_DL_DATA_STALL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AP_UL_DATA_STALL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AP_WRITE_ERROR_STALL"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BB_DL_AS_DATA_STALL_VIA_QSH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"BB_UL_AS_DATA_STALL_VIA_QSH"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MAX_STALL_TYPE"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)lastSearchRat
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_lastSearchRat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLastSearchRat:(BOOL)a3
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

- (int)StringAsLastSearchRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_MODE_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_LTE_V2"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_CDMA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_HDR"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_WCDMA"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_EHRPD"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GW"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_WLAN"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GWL"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_UMTS"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_NR5G"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_CDMA_HDR"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)a3
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

- (void)setHasRepeatedScgFailures:(BOOL)a3
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

- (void)setHasRepeatedBeamFailures:(BOOL)a3
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

- (int)hmType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_hmType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHmType:(BOOL)a3
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

- (int)StringAsHmType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HEALTH_MONITOR_TYPE_NO_SEARCH"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_TYPE_DATA_STALLED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_TYPE_DATA_IN_SLEEP"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_TYPE_STUCK_IN_DCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_TYPE_NO_TCXO_SHUTDOWN"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_TYPE_SIM_ERROR"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_TYPE_5G_ACCESS_WHEN_RESTRICTED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_TYPE_5G_REPEATED_SCG_FAILURES"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_TYPE_5G_REPEATED_BEAM_FAILURES"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_FREQUENT_LTE_RLF"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITO_FREQUENT_LTE_RACH_FAILURES"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_FREQUENT_NR_RLF"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_FREQUENT_NR_RACH_FAILURES"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_FREQUENT_NR_CELL_INVALIDATION"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_BAD_FBRX_MEASUREMENT"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_BAD_PDET_MEASUREMENT"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_LTE_RSRP_FLOOR"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"HEALTH_MONITOR_NR5G_RSRP_FLOOR"])
  {
    v4 = 17;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasPsPref:(BOOL)a3
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

- (void)setHasDcActive:(BOOL)a3
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

- (void)setHasLacTac:(BOOL)a3
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

- (void)setHasRepeatedLteRlfFailures:(BOOL)a3
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

- (void)setHasRepeatedLteRachFailures:(BOOL)a3
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

- (void)setHasRepeatedNrRlfFailures:(BOOL)a3
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

- (void)setHasRepeatedNrRachFailures:(BOOL)a3
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

- (void)setHasRepeatedNrCellInvalidationOccurences:(BOOL)a3
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

- (void)setHasRepeatedNrCellInvalidationPci:(BOOL)a3
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

- (void)setHasRepeatedNrCellInvalidationArfcn:(BOOL)a3
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

- (void)setHasRepeatedNrCellInvalidationBand:(BOOL)a3
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

- (unsigned)countOfInvalidationReasonAtIndex:(unint64_t)a3
{
  p_countOfInvalidationReasons = &self->_countOfInvalidationReasons;
  count = self->_countOfInvalidationReasons.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_countOfInvalidationReasons->list[a3];
}

- (void)setHasRxChain:(BOOL)a3
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

- (void)setHasFreqRange:(BOOL)a3
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

- (int)fbrxRsrpRat
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_fbrxRsrpRat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFbrxRsrpRat:(BOOL)a3
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

- (int)StringAsFbrxRsrpRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RF_TECH_ID_LTE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RF_TECH_ID_1x"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RF_TECH_ID_HDR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RF_TECH_ID_GSM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RF_TECH_ID_WCDMA"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RF_TECH_ID_TDSCDMA"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RF_TECH_ID_NR5G"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularHealthMonitor;
  v3 = [(CellularHealthMonitor *)&v7 description];
  v4 = [(CellularHealthMonitor *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  imei = self->_imei;
  if (imei)
  {
    [v3 setObject:imei forKey:@"imei"];
  }

  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    rat = self->_rat;
    if (rat < 0x10 && ((0x9FFFu >> rat) & 1) != 0)
    {
      v16 = *(&off_1003187A0 + rat);
    }

    else
    {
      v16 = [NSString stringWithFormat:@"(unknown: %i)", self->_rat];
    }

    [v3 setObject:v16 forKey:@"rat"];

    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_7:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_63;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_7;
  }

  dataStallType = self->_dataStallType;
  if (dataStallType >= 6)
  {
    v32 = [NSString stringWithFormat:@"(unknown: %i)", self->_dataStallType];
  }

  else
  {
    v32 = *(&off_100318770 + dataStallType);
  }

  [v3 setObject:v32 forKey:@"data_stall_type"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_68;
  }

LABEL_63:
  lastSearchRat = self->_lastSearchRat;
  if (lastSearchRat < 0x10 && ((0x9FFFu >> lastSearchRat) & 1) != 0)
  {
    v36 = *(&off_1003187A0 + lastSearchRat);
  }

  else
  {
    v36 = [NSString stringWithFormat:@"(unknown: %i)", self->_lastSearchRat];
  }

  [v3 setObject:v36 forKey:@"last_search_rat"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_69;
  }

LABEL_68:
  v37 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v37 forKey:@"subs_id"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_70;
  }

LABEL_69:
  v38 = [NSNumber numberWithUnsignedInt:self->_repeatedScgFailures];
  [v3 setObject:v38 forKey:@"repeated_scg_failures"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_71;
  }

LABEL_70:
  v39 = [NSNumber numberWithUnsignedInt:self->_repeatedBeamFailures];
  [v3 setObject:v39 forKey:@"repeated_beam_failures"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_71:
  hmType = self->_hmType;
  if (hmType >= 0x12)
  {
    v41 = [NSString stringWithFormat:@"(unknown: %i)", self->_hmType];
  }

  else
  {
    v41 = *(&off_100318820 + hmType);
  }

  [v3 setObject:v41 forKey:@"hm_type"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    v7 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v7 forKey:@"num_subs"];
  }

LABEL_14:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v9 forKey:@"ps_pref"];
  }

  simHplmn = self->_simHplmn;
  if (simHplmn)
  {
    [v3 setObject:simHplmn forKey:@"sim_hplmn"];
  }

  v11 = self->_has;
  if ((*&v11 & 0x800000) != 0)
  {
    v17 = [NSNumber numberWithBool:self->_dcActive];
    [v3 setObject:v17 forKey:@"dc_active"];

    v11 = self->_has;
    if ((*&v11 & 0x40) == 0)
    {
LABEL_22:
      if ((*&v11 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_41;
    }
  }

  else if ((*&v11 & 0x40) == 0)
  {
    goto LABEL_22;
  }

  v18 = [NSNumber numberWithUnsignedInt:self->_lacTac];
  [v3 setObject:v18 forKey:@"lac_tac"];

  v11 = self->_has;
  if ((*&v11 & 1) == 0)
  {
LABEL_23:
    if ((*&v11 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

LABEL_41:
  v19 = [NSNumber numberWithUnsignedLongLong:self->_cellId];
  [v3 setObject:v19 forKey:@"cell_id"];

  v11 = self->_has;
  if ((*&v11 & 0x2000) == 0)
  {
LABEL_24:
    if ((*&v11 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = [NSNumber numberWithUnsignedInt:self->_repeatedLteRlfFailures];
  [v3 setObject:v20 forKey:@"repeated_lte_rlf_failures"];

  v11 = self->_has;
  if ((*&v11 & 0x1000) == 0)
  {
LABEL_25:
    if ((*&v11 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

LABEL_43:
  v21 = [NSNumber numberWithUnsignedInt:self->_repeatedLteRachFailures];
  [v3 setObject:v21 forKey:@"repeated_lte_rach_failures"];

  v11 = self->_has;
  if ((*&v11 & 0x80000) == 0)
  {
LABEL_26:
    if ((*&v11 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_45;
  }

LABEL_44:
  v22 = [NSNumber numberWithUnsignedInt:self->_repeatedNrRlfFailures];
  [v3 setObject:v22 forKey:@"repeated_nr_rlf_failures"];

  v11 = self->_has;
  if ((*&v11 & 0x40000) == 0)
  {
LABEL_27:
    if ((*&v11 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_46;
  }

LABEL_45:
  v23 = [NSNumber numberWithUnsignedInt:self->_repeatedNrRachFailures];
  [v3 setObject:v23 forKey:@"repeated_nr_rach_failures"];

  v11 = self->_has;
  if ((*&v11 & 0x10000) == 0)
  {
LABEL_28:
    if ((*&v11 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = [NSNumber numberWithUnsignedInt:self->_repeatedNrCellInvalidationOccurences];
  [v3 setObject:v24 forKey:@"repeated_nr_cell_invalidation_occurences"];

  v11 = self->_has;
  if ((*&v11 & 0x20000) == 0)
  {
LABEL_29:
    if ((*&v11 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_48;
  }

LABEL_47:
  v25 = [NSNumber numberWithUnsignedInt:self->_repeatedNrCellInvalidationPci];
  [v3 setObject:v25 forKey:@"repeated_nr_cell_invalidation_pci"];

  v11 = self->_has;
  if ((*&v11 & 0x4000) == 0)
  {
LABEL_30:
    if ((*&v11 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_48:
  v26 = [NSNumber numberWithUnsignedInt:self->_repeatedNrCellInvalidationArfcn];
  [v3 setObject:v26 forKey:@"repeated_nr_cell_invalidation_arfcn"];

  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_31:
    v12 = [NSNumber numberWithUnsignedInt:self->_repeatedNrCellInvalidationBand];
    [v3 setObject:v12 forKey:@"repeated_nr_cell_invalidation_band"];
  }

LABEL_32:
  v13 = PBRepeatedUInt32NSArray();
  [v3 setObject:v13 forKey:@"count_of_invalidation_reason"];

  v14 = self->_has;
  if ((*&v14 & 0x200000) == 0)
  {
    if ((*&v14 & 0x10) == 0)
    {
      goto LABEL_34;
    }

LABEL_51:
    v28 = [NSNumber numberWithUnsignedInt:self->_freqRange];
    [v3 setObject:v28 forKey:@"freq_range"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_52;
  }

  v27 = [NSNumber numberWithUnsignedInt:self->_rxChain];
  [v3 setObject:v27 forKey:@"rx_chain"];

  v14 = self->_has;
  if ((*&v14 & 0x10) != 0)
  {
    goto LABEL_51;
  }

LABEL_34:
  if ((*&v14 & 8) == 0)
  {
    goto LABEL_60;
  }

LABEL_52:
  fbrxRsrpRat = self->_fbrxRsrpRat;
  if (fbrxRsrpRat >= 7)
  {
    v30 = [NSString stringWithFormat:@"(unknown: %i)", self->_fbrxRsrpRat];
  }

  else
  {
    v30 = *(&off_1003188B0 + fbrxRsrpRat);
  }

  [v3 setObject:v30 forKey:@"fbrx_rsrp_rat"];

LABEL_60:
  v33 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v34 = v4;
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v34;
  }

  if (self->_imei)
  {
    PBDataWriterWriteDataField();
    v4 = v34;
  }

  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    rat = self->_rat;
    PBDataWriterWriteInt32Field();
    v4 = v34;
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_7:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_44;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_7;
  }

  dataStallType = self->_dataStallType;
  PBDataWriterWriteInt32Field();
  v4 = v34;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  lastSearchRat = self->_lastSearchRat;
  PBDataWriterWriteInt32Field();
  v4 = v34;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  v4 = v34;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  repeatedScgFailures = self->_repeatedScgFailures;
  PBDataWriterWriteUint32Field();
  v4 = v34;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  repeatedBeamFailures = self->_repeatedBeamFailures;
  PBDataWriterWriteUint32Field();
  v4 = v34;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_48:
  hmType = self->_hmType;
  PBDataWriterWriteInt32Field();
  v4 = v34;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
    v4 = v34;
  }

LABEL_14:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
    v4 = v34;
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
    v4 = v34;
  }

  if (self->_simHplmn)
  {
    PBDataWriterWriteDataField();
    v4 = v34;
  }

  v9 = self->_has;
  if ((*&v9 & 0x800000) != 0)
  {
    dcActive = self->_dcActive;
    PBDataWriterWriteBOOLField();
    v4 = v34;
    v9 = self->_has;
    if ((*&v9 & 0x40) == 0)
    {
LABEL_22:
      if ((*&v9 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_52;
    }
  }

  else if ((*&v9 & 0x40) == 0)
  {
    goto LABEL_22;
  }

  lacTac = self->_lacTac;
  PBDataWriterWriteUint32Field();
  v4 = v34;
  v9 = self->_has;
  if ((*&v9 & 1) == 0)
  {
LABEL_23:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  cellId = self->_cellId;
  PBDataWriterWriteUint64Field();
  v4 = v34;
  v9 = self->_has;
  if ((*&v9 & 0x2000) == 0)
  {
LABEL_24:
    if ((*&v9 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  repeatedLteRlfFailures = self->_repeatedLteRlfFailures;
  PBDataWriterWriteUint32Field();
  v4 = v34;
  v9 = self->_has;
  if ((*&v9 & 0x1000) == 0)
  {
LABEL_25:
    if ((*&v9 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  repeatedLteRachFailures = self->_repeatedLteRachFailures;
  PBDataWriterWriteUint32Field();
  v4 = v34;
  v9 = self->_has;
  if ((*&v9 & 0x80000) == 0)
  {
LABEL_26:
    if ((*&v9 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  repeatedNrRlfFailures = self->_repeatedNrRlfFailures;
  PBDataWriterWriteUint32Field();
  v4 = v34;
  v9 = self->_has;
  if ((*&v9 & 0x40000) == 0)
  {
LABEL_27:
    if ((*&v9 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  repeatedNrRachFailures = self->_repeatedNrRachFailures;
  PBDataWriterWriteUint32Field();
  v4 = v34;
  v9 = self->_has;
  if ((*&v9 & 0x10000) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  repeatedNrCellInvalidationOccurences = self->_repeatedNrCellInvalidationOccurences;
  PBDataWriterWriteUint32Field();
  v4 = v34;
  v9 = self->_has;
  if ((*&v9 & 0x20000) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  repeatedNrCellInvalidationPci = self->_repeatedNrCellInvalidationPci;
  PBDataWriterWriteUint32Field();
  v4 = v34;
  v9 = self->_has;
  if ((*&v9 & 0x4000) == 0)
  {
LABEL_30:
    if ((*&v9 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_59:
  repeatedNrCellInvalidationArfcn = self->_repeatedNrCellInvalidationArfcn;
  PBDataWriterWriteUint32Field();
  v4 = v34;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_31:
    repeatedNrCellInvalidationBand = self->_repeatedNrCellInvalidationBand;
    PBDataWriterWriteUint32Field();
    v4 = v34;
  }

LABEL_32:
  if (self->_countOfInvalidationReasons.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_countOfInvalidationReasons.list[v11];
      PBDataWriterWriteUint32Field();
      v4 = v34;
      ++v11;
    }

    while (v11 < self->_countOfInvalidationReasons.count);
  }

  v13 = self->_has;
  if ((*&v13 & 0x200000) != 0)
  {
    rxChain = self->_rxChain;
    PBDataWriterWriteUint32Field();
    v4 = v34;
    v13 = self->_has;
    if ((*&v13 & 0x10) == 0)
    {
LABEL_37:
      if ((*&v13 & 8) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else if ((*&v13 & 0x10) == 0)
  {
    goto LABEL_37;
  }

  freqRange = self->_freqRange;
  PBDataWriterWriteUint32Field();
  v4 = v34;
  if ((*&self->_has & 8) != 0)
  {
LABEL_38:
    fbrxRsrpRat = self->_fbrxRsrpRat;
    PBDataWriterWriteInt32Field();
    v4 = v34;
  }

LABEL_39:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[5] = self->_timestamp;
    *(v4 + 42) |= 2u;
  }

  v11 = v4;
  if (self->_imei)
  {
    [v4 setImei:?];
    v4 = v11;
  }

  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    *(v4 + 25) = self->_rat;
    *(v4 + 42) |= 0x400u;
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_7:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 12) = self->_dataStallType;
  *(v4 + 42) |= 4u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 19) = self->_lastSearchRat;
  *(v4 + 42) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 40) = self->_subsId;
  *(v4 + 42) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 35) = self->_repeatedScgFailures;
  *(v4 + 42) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 26) = self->_repeatedBeamFailures;
  *(v4 + 42) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_49:
  *(v4 + 15) = self->_hmType;
  *(v4 + 42) |= 0x20u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    *(v4 + 20) = self->_numSubs;
    *(v4 + 42) |= 0x100u;
  }

LABEL_14:
  if (self->_plmn)
  {
    [v11 setPlmn:?];
    v4 = v11;
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    *(v4 + 24) = self->_psPref;
    *(v4 + 42) |= 0x200u;
  }

  if (self->_simHplmn)
  {
    [v11 setSimHplmn:?];
    v4 = v11;
  }

  v6 = self->_has;
  if ((*&v6 & 0x800000) != 0)
  {
    *(v4 + 164) = self->_dcActive;
    *(v4 + 42) |= 0x800000u;
    v6 = self->_has;
    if ((*&v6 & 0x40) == 0)
    {
LABEL_22:
      if ((*&v6 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_53;
    }
  }

  else if ((*&v6 & 0x40) == 0)
  {
    goto LABEL_22;
  }

  *(v4 + 18) = self->_lacTac;
  *(v4 + 42) |= 0x40u;
  v6 = self->_has;
  if ((*&v6 & 1) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v4[4] = self->_cellId;
  *(v4 + 42) |= 1u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 28) = self->_repeatedLteRlfFailures;
  *(v4 + 42) |= 0x2000u;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 27) = self->_repeatedLteRachFailures;
  *(v4 + 42) |= 0x1000u;
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 34) = self->_repeatedNrRlfFailures;
  *(v4 + 42) |= 0x80000u;
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v4 + 33) = self->_repeatedNrRachFailures;
  *(v4 + 42) |= 0x40000u;
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v4 + 31) = self->_repeatedNrCellInvalidationOccurences;
  *(v4 + 42) |= 0x10000u;
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    *(v4 + 29) = self->_repeatedNrCellInvalidationArfcn;
    *(v4 + 42) |= 0x4000u;
    if ((*&self->_has & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_59:
  *(v4 + 32) = self->_repeatedNrCellInvalidationPci;
  *(v4 + 42) |= 0x20000u;
  v6 = self->_has;
  if ((*&v6 & 0x4000) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if ((*&v6 & 0x8000) != 0)
  {
LABEL_31:
    *(v4 + 30) = self->_repeatedNrCellInvalidationBand;
    *(v4 + 42) |= 0x8000u;
  }

LABEL_32:
  if ([(CellularHealthMonitor *)self countOfInvalidationReasonsCount])
  {
    [v11 clearCountOfInvalidationReasons];
    v7 = [(CellularHealthMonitor *)self countOfInvalidationReasonsCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        [v11 addCountOfInvalidationReason:{-[CellularHealthMonitor countOfInvalidationReasonAtIndex:](self, "countOfInvalidationReasonAtIndex:", i)}];
      }
    }
  }

  v10 = self->_has;
  if ((*&v10 & 0x200000) != 0)
  {
    v11[36] = self->_rxChain;
    v11[42] |= 0x200000u;
    v10 = self->_has;
    if ((*&v10 & 0x10) == 0)
    {
LABEL_38:
      if ((*&v10 & 8) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if ((*&v10 & 0x10) == 0)
  {
    goto LABEL_38;
  }

  v11[14] = self->_freqRange;
  v11[42] |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_39:
    v11[13] = self->_fbrxRsrpRat;
    v11[42] |= 8u;
  }

LABEL_40:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[5] = self->_timestamp;
    *(v5 + 42) |= 2u;
  }

  v7 = [(NSData *)self->_imei copyWithZone:a3];
  v8 = v6[8];
  v6[8] = v7;

  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    *(v6 + 25) = self->_rat;
    *(v6 + 42) |= 0x400u;
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_5:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_33;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 12) = self->_dataStallType;
  *(v6 + 42) |= 4u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v6 + 19) = self->_lastSearchRat;
  *(v6 + 42) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v6 + 40) = self->_subsId;
  *(v6 + 42) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v6 + 35) = self->_repeatedScgFailures;
  *(v6 + 42) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v6 + 26) = self->_repeatedBeamFailures;
  *(v6 + 42) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_37:
  *(v6 + 15) = self->_hmType;
  *(v6 + 42) |= 0x20u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_11:
    *(v6 + 20) = self->_numSubs;
    *(v6 + 42) |= 0x100u;
  }

LABEL_12:
  v10 = [(NSData *)self->_plmn copyWithZone:a3];
  v11 = v6[11];
  v6[11] = v10;

  if ((*(&self->_has + 1) & 2) != 0)
  {
    *(v6 + 24) = self->_psPref;
    *(v6 + 42) |= 0x200u;
  }

  v12 = [(NSData *)self->_simHplmn copyWithZone:a3];
  v13 = v6[19];
  v6[19] = v12;

  v14 = self->_has;
  if ((*&v14 & 0x800000) != 0)
  {
    *(v6 + 164) = self->_dcActive;
    *(v6 + 42) |= 0x800000u;
    v14 = self->_has;
    if ((*&v14 & 0x40) == 0)
    {
LABEL_16:
      if ((*&v14 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_41;
    }
  }

  else if ((*&v14 & 0x40) == 0)
  {
    goto LABEL_16;
  }

  *(v6 + 18) = self->_lacTac;
  *(v6 + 42) |= 0x40u;
  v14 = self->_has;
  if ((*&v14 & 1) == 0)
  {
LABEL_17:
    if ((*&v14 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6[4] = self->_cellId;
  *(v6 + 42) |= 1u;
  v14 = self->_has;
  if ((*&v14 & 0x2000) == 0)
  {
LABEL_18:
    if ((*&v14 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v6 + 28) = self->_repeatedLteRlfFailures;
  *(v6 + 42) |= 0x2000u;
  v14 = self->_has;
  if ((*&v14 & 0x1000) == 0)
  {
LABEL_19:
    if ((*&v14 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v6 + 27) = self->_repeatedLteRachFailures;
  *(v6 + 42) |= 0x1000u;
  v14 = self->_has;
  if ((*&v14 & 0x80000) == 0)
  {
LABEL_20:
    if ((*&v14 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 34) = self->_repeatedNrRlfFailures;
  *(v6 + 42) |= 0x80000u;
  v14 = self->_has;
  if ((*&v14 & 0x40000) == 0)
  {
LABEL_21:
    if ((*&v14 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 33) = self->_repeatedNrRachFailures;
  *(v6 + 42) |= 0x40000u;
  v14 = self->_has;
  if ((*&v14 & 0x10000) == 0)
  {
LABEL_22:
    if ((*&v14 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v6 + 31) = self->_repeatedNrCellInvalidationOccurences;
  *(v6 + 42) |= 0x10000u;
  v14 = self->_has;
  if ((*&v14 & 0x20000) == 0)
  {
LABEL_23:
    if ((*&v14 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v6 + 32) = self->_repeatedNrCellInvalidationPci;
  *(v6 + 42) |= 0x20000u;
  v14 = self->_has;
  if ((*&v14 & 0x4000) == 0)
  {
LABEL_24:
    if ((*&v14 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_48:
  *(v6 + 29) = self->_repeatedNrCellInvalidationArfcn;
  *(v6 + 42) |= 0x4000u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_25:
    *(v6 + 30) = self->_repeatedNrCellInvalidationBand;
    *(v6 + 42) |= 0x8000u;
  }

LABEL_26:
  PBRepeatedUInt32Copy();
  v15 = self->_has;
  if ((*&v15 & 0x200000) == 0)
  {
    if ((*&v15 & 0x10) == 0)
    {
      goto LABEL_28;
    }

LABEL_51:
    *(v6 + 14) = self->_freqRange;
    *(v6 + 42) |= 0x10u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_29;
  }

  *(v6 + 36) = self->_rxChain;
  *(v6 + 42) |= 0x200000u;
  v15 = self->_has;
  if ((*&v15 & 0x10) != 0)
  {
    goto LABEL_51;
  }

LABEL_28:
  if ((*&v15 & 8) != 0)
  {
LABEL_29:
    *(v6 + 13) = self->_fbrxRsrpRat;
    *(v6 + 42) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_135;
  }

  has = self->_has;
  v6 = *(v4 + 42);
  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_timestamp != *(v4 + 5))
    {
      goto LABEL_135;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_135;
  }

  imei = self->_imei;
  if (imei | *(v4 + 8))
  {
    if (![(NSData *)imei isEqual:?])
    {
      goto LABEL_135;
    }

    has = self->_has;
  }

  v8 = *(v4 + 42);
  if ((*&has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0 || self->_rat != *(v4 + 25))
    {
      goto LABEL_135;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_dataStallType != *(v4 + 12))
    {
      goto LABEL_135;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_lastSearchRat != *(v4 + 19))
    {
      goto LABEL_135;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v8 & 0x400000) == 0 || self->_subsId != *(v4 + 40))
    {
      goto LABEL_135;
    }
  }

  else if ((v8 & 0x400000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v8 & 0x100000) == 0 || self->_repeatedScgFailures != *(v4 + 35))
    {
      goto LABEL_135;
    }
  }

  else if ((v8 & 0x100000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0 || self->_repeatedBeamFailures != *(v4 + 26))
    {
      goto LABEL_135;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_hmType != *(v4 + 15))
    {
      goto LABEL_135;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v8 & 0x100) == 0 || self->_numSubs != *(v4 + 20))
    {
      goto LABEL_135;
    }
  }

  else if ((v8 & 0x100) != 0)
  {
    goto LABEL_135;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 11))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_135;
    }

    has = self->_has;
  }

  v10 = *(v4 + 42);
  if ((*&has & 0x200) != 0)
  {
    if ((v10 & 0x200) == 0 || self->_psPref != *(v4 + 24))
    {
      goto LABEL_135;
    }
  }

  else if ((v10 & 0x200) != 0)
  {
    goto LABEL_135;
  }

  simHplmn = self->_simHplmn;
  if (simHplmn | *(v4 + 19))
  {
    if (![(NSData *)simHplmn isEqual:?])
    {
      goto LABEL_135;
    }

    has = self->_has;
  }

  v12 = *(v4 + 42);
  if ((*&has & 0x800000) != 0)
  {
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_135;
    }

    v13 = *(v4 + 164);
    if (self->_dcActive)
    {
      if ((*(v4 + 164) & 1) == 0)
      {
        goto LABEL_135;
      }
    }

    else if (*(v4 + 164))
    {
      goto LABEL_135;
    }
  }

  else if ((v12 & 0x800000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_lacTac != *(v4 + 18))
    {
      goto LABEL_135;
    }
  }

  else if ((v12 & 0x40) != 0)
  {
    goto LABEL_135;
  }

  if (*&has)
  {
    if ((v12 & 1) == 0 || self->_cellId != *(v4 + 4))
    {
      goto LABEL_135;
    }
  }

  else if (v12)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v12 & 0x2000) == 0 || self->_repeatedLteRlfFailures != *(v4 + 28))
    {
      goto LABEL_135;
    }
  }

  else if ((v12 & 0x2000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v12 & 0x1000) == 0 || self->_repeatedLteRachFailures != *(v4 + 27))
    {
      goto LABEL_135;
    }
  }

  else if ((v12 & 0x1000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v12 & 0x80000) == 0 || self->_repeatedNrRlfFailures != *(v4 + 34))
    {
      goto LABEL_135;
    }
  }

  else if ((v12 & 0x80000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v12 & 0x40000) == 0 || self->_repeatedNrRachFailures != *(v4 + 33))
    {
      goto LABEL_135;
    }
  }

  else if ((v12 & 0x40000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v12 & 0x10000) == 0 || self->_repeatedNrCellInvalidationOccurences != *(v4 + 31))
    {
      goto LABEL_135;
    }
  }

  else if ((v12 & 0x10000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v12 & 0x20000) == 0 || self->_repeatedNrCellInvalidationPci != *(v4 + 32))
    {
      goto LABEL_135;
    }
  }

  else if ((v12 & 0x20000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v12 & 0x4000) == 0 || self->_repeatedNrCellInvalidationArfcn != *(v4 + 29))
    {
      goto LABEL_135;
    }
  }

  else if ((v12 & 0x4000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v12 & 0x8000) == 0 || self->_repeatedNrCellInvalidationBand != *(v4 + 30))
    {
      goto LABEL_135;
    }
  }

  else if ((v12 & 0x8000) != 0)
  {
    goto LABEL_135;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_135:
    v16 = 0;
    goto LABEL_136;
  }

  v14 = self->_has;
  v15 = *(v4 + 42);
  if ((*&v14 & 0x200000) != 0)
  {
    if ((v15 & 0x200000) == 0 || self->_rxChain != *(v4 + 36))
    {
      goto LABEL_135;
    }
  }

  else if ((v15 & 0x200000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&v14 & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0 || self->_freqRange != *(v4 + 14))
    {
      goto LABEL_135;
    }
  }

  else if ((v15 & 0x10) != 0)
  {
    goto LABEL_135;
  }

  if ((*&v14 & 8) != 0)
  {
    if ((v15 & 8) == 0 || self->_fbrxRsrpRat != *(v4 + 13))
    {
      goto LABEL_135;
    }

    v16 = 1;
  }

  else
  {
    v16 = (*(v4 + 42) & 8) == 0;
  }

LABEL_136:

  return v16;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v34 = 2654435761u * self->_timestamp;
  }

  else
  {
    v34 = 0;
  }

  v33 = [(NSData *)self->_imei hash];
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    v32 = 2654435761 * self->_rat;
    if ((*&has & 4) != 0)
    {
LABEL_6:
      v31 = 2654435761 * self->_dataStallType;
      if ((*&has & 0x80) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v32 = 0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v31 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_7:
    v30 = 2654435761 * self->_lastSearchRat;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v30 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_8:
    v29 = 2654435761 * self->_subsId;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v29 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_9:
    v28 = 2654435761 * self->_repeatedScgFailures;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v28 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_10:
    v27 = 2654435761 * self->_repeatedBeamFailures;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v26 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_18:
  v27 = 0;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v26 = 2654435761 * self->_hmType;
  if ((*&has & 0x100) != 0)
  {
LABEL_12:
    v25 = 2654435761 * self->_numSubs;
    goto LABEL_21;
  }

LABEL_20:
  v25 = 0;
LABEL_21:
  v24 = [(NSData *)self->_plmn hash];
  if ((*(&self->_has + 1) & 2) != 0)
  {
    v23 = 2654435761 * self->_psPref;
  }

  else
  {
    v23 = 0;
  }

  v22 = [(NSData *)self->_simHplmn hash];
  v4 = self->_has;
  if ((*&v4 & 0x800000) != 0)
  {
    v21 = 2654435761 * self->_dcActive;
    if ((*&v4 & 0x40) != 0)
    {
LABEL_26:
      v20 = 2654435761 * self->_lacTac;
      if (*&v4)
      {
        goto LABEL_27;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v21 = 0;
    if ((*&v4 & 0x40) != 0)
    {
      goto LABEL_26;
    }
  }

  v20 = 0;
  if (*&v4)
  {
LABEL_27:
    v19 = 2654435761u * self->_cellId;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = 0;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_28:
    v18 = 2654435761 * self->_repeatedLteRlfFailures;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = 0;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_29:
    v5 = 2654435761 * self->_repeatedLteRachFailures;
    if ((*&v4 & 0x80000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

LABEL_40:
  v5 = 0;
  if ((*&v4 & 0x80000) != 0)
  {
LABEL_30:
    v6 = 2654435761 * self->_repeatedNrRlfFailures;
    if ((*&v4 & 0x40000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6 = 0;
  if ((*&v4 & 0x40000) != 0)
  {
LABEL_31:
    v7 = 2654435761 * self->_repeatedNrRachFailures;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

LABEL_42:
  v7 = 0;
  if ((*&v4 & 0x10000) != 0)
  {
LABEL_32:
    v8 = 2654435761 * self->_repeatedNrCellInvalidationOccurences;
    if ((*&v4 & 0x20000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_43:
  v8 = 0;
  if ((*&v4 & 0x20000) != 0)
  {
LABEL_33:
    v9 = 2654435761 * self->_repeatedNrCellInvalidationPci;
    if ((*&v4 & 0x4000) != 0)
    {
      goto LABEL_34;
    }

LABEL_45:
    v10 = 0;
    if ((*&v4 & 0x8000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_46;
  }

LABEL_44:
  v9 = 0;
  if ((*&v4 & 0x4000) == 0)
  {
    goto LABEL_45;
  }

LABEL_34:
  v10 = 2654435761 * self->_repeatedNrCellInvalidationArfcn;
  if ((*&v4 & 0x8000) != 0)
  {
LABEL_35:
    v11 = 2654435761 * self->_repeatedNrCellInvalidationBand;
    goto LABEL_47;
  }

LABEL_46:
  v11 = 0;
LABEL_47:
  v12 = PBRepeatedUInt32Hash();
  v13 = self->_has;
  if ((*&v13 & 0x200000) == 0)
  {
    v14 = 0;
    if ((*&v13 & 0x10) != 0)
    {
      goto LABEL_49;
    }

LABEL_52:
    v15 = 0;
    if ((*&v13 & 8) != 0)
    {
      goto LABEL_50;
    }

LABEL_53:
    v16 = 0;
    return v33 ^ v34 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16;
  }

  v14 = 2654435761 * self->_rxChain;
  if ((*&v13 & 0x10) == 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  v15 = 2654435761 * self->_freqRange;
  if ((*&v13 & 8) == 0)
  {
    goto LABEL_53;
  }

LABEL_50:
  v16 = 2654435761 * self->_fbrxRsrpRat;
  return v33 ^ v34 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 168) & 2) != 0)
  {
    self->_timestamp = *(v4 + 5);
    *&self->_has |= 2u;
  }

  v11 = v4;
  if (*(v4 + 8))
  {
    [(CellularHealthMonitor *)self setImei:?];
    v4 = v11;
  }

  v5 = *(v4 + 42);
  if ((v5 & 0x400) != 0)
  {
    self->_rat = *(v4 + 25);
    *&self->_has |= 0x400u;
    v5 = *(v4 + 42);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_dataStallType = *(v4 + 12);
  *&self->_has |= 4u;
  v5 = *(v4 + 42);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_lastSearchRat = *(v4 + 19);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 42);
  if ((v5 & 0x400000) == 0)
  {
LABEL_9:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_subsId = *(v4 + 40);
  *&self->_has |= 0x400000u;
  v5 = *(v4 + 42);
  if ((v5 & 0x100000) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_repeatedScgFailures = *(v4 + 35);
  *&self->_has |= 0x100000u;
  v5 = *(v4 + 42);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_repeatedBeamFailures = *(v4 + 26);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 42);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_48:
  self->_hmType = *(v4 + 15);
  *&self->_has |= 0x20u;
  if ((*(v4 + 42) & 0x100) != 0)
  {
LABEL_13:
    self->_numSubs = *(v4 + 20);
    *&self->_has |= 0x100u;
  }

LABEL_14:
  if (*(v4 + 11))
  {
    [(CellularHealthMonitor *)self setPlmn:?];
    v4 = v11;
  }

  if ((*(v4 + 169) & 2) != 0)
  {
    self->_psPref = *(v4 + 24);
    *&self->_has |= 0x200u;
  }

  if (*(v4 + 19))
  {
    [(CellularHealthMonitor *)self setSimHplmn:?];
    v4 = v11;
  }

  v6 = *(v4 + 42);
  if ((v6 & 0x800000) != 0)
  {
    self->_dcActive = *(v4 + 164);
    *&self->_has |= 0x800000u;
    v6 = *(v4 + 42);
    if ((v6 & 0x40) == 0)
    {
LABEL_22:
      if ((v6 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_22;
  }

  self->_lacTac = *(v4 + 18);
  *&self->_has |= 0x40u;
  v6 = *(v4 + 42);
  if ((v6 & 1) == 0)
  {
LABEL_23:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_cellId = *(v4 + 4);
  *&self->_has |= 1u;
  v6 = *(v4 + 42);
  if ((v6 & 0x2000) == 0)
  {
LABEL_24:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_repeatedLteRlfFailures = *(v4 + 28);
  *&self->_has |= 0x2000u;
  v6 = *(v4 + 42);
  if ((v6 & 0x1000) == 0)
  {
LABEL_25:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_repeatedLteRachFailures = *(v4 + 27);
  *&self->_has |= 0x1000u;
  v6 = *(v4 + 42);
  if ((v6 & 0x80000) == 0)
  {
LABEL_26:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_repeatedNrRlfFailures = *(v4 + 34);
  *&self->_has |= 0x80000u;
  v6 = *(v4 + 42);
  if ((v6 & 0x40000) == 0)
  {
LABEL_27:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_repeatedNrRachFailures = *(v4 + 33);
  *&self->_has |= 0x40000u;
  v6 = *(v4 + 42);
  if ((v6 & 0x10000) == 0)
  {
LABEL_28:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_repeatedNrCellInvalidationOccurences = *(v4 + 31);
  *&self->_has |= 0x10000u;
  v6 = *(v4 + 42);
  if ((v6 & 0x20000) == 0)
  {
LABEL_29:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_repeatedNrCellInvalidationPci = *(v4 + 32);
  *&self->_has |= 0x20000u;
  v6 = *(v4 + 42);
  if ((v6 & 0x4000) == 0)
  {
LABEL_30:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_59:
  self->_repeatedNrCellInvalidationArfcn = *(v4 + 29);
  *&self->_has |= 0x4000u;
  if ((*(v4 + 42) & 0x8000) != 0)
  {
LABEL_31:
    self->_repeatedNrCellInvalidationBand = *(v4 + 30);
    *&self->_has |= 0x8000u;
  }

LABEL_32:
  v7 = [v4 countOfInvalidationReasonsCount];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      -[CellularHealthMonitor addCountOfInvalidationReason:](self, "addCountOfInvalidationReason:", [v11 countOfInvalidationReasonAtIndex:i]);
    }
  }

  v10 = v11[42];
  if ((v10 & 0x200000) != 0)
  {
    self->_rxChain = v11[36];
    *&self->_has |= 0x200000u;
    v10 = v11[42];
    if ((v10 & 0x10) == 0)
    {
LABEL_37:
      if ((v10 & 8) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_37;
  }

  self->_freqRange = v11[14];
  *&self->_has |= 0x10u;
  if ((v11[42] & 8) != 0)
  {
LABEL_38:
    self->_fbrxRsrpRat = v11[13];
    *&self->_has |= 8u;
  }

LABEL_39:
}

@end