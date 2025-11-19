@interface CellularCdmaCellInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBand:(id)a3;
- (int)StringAsGwRat:(id)a3;
- (int)StringAsGwSrvStatus:(id)a3;
- (int)StringAsHdrSrvStatus:(id)a3;
- (int)StringAsHybridActiveBand:(id)a3;
- (int)StringAsRat:(id)a3;
- (int)StringAsSrvStatus:(id)a3;
- (int)band;
- (int)gwRat;
- (int)gwSrvStatus;
- (int)hdrSrvStatus;
- (int)hybridActiveBand;
- (int)rat;
- (int)srvStatus;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBand:(BOOL)a3;
- (void)setHasBaseId:(BOOL)a3;
- (void)setHasChannel:(BOOL)a3;
- (void)setHasGwRat:(BOOL)a3;
- (void)setHasGwSrvStatus:(BOOL)a3;
- (void)setHasHdrHybrid:(BOOL)a3;
- (void)setHasHdrPilotPn:(BOOL)a3;
- (void)setHasHdrSrvStatus:(BOOL)a3;
- (void)setHasHybridActiveBand:(BOOL)a3;
- (void)setHasHybridActiveChannel:(BOOL)a3;
- (void)setHasIs95Nid:(BOOL)a3;
- (void)setHasIs95Sid:(BOOL)a3;
- (void)setHasMcc:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPilotPn:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasRat:(BOOL)a3;
- (void)setHasSrvStatus:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasZoneId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularCdmaCellInfo

- (int)rat
{
  if (*(&self->_has + 2))
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
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
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

- (int)srvStatus
{
  if ((*(&self->_has + 2) & 2) != 0)
  {
    return self->_srvStatus;
  }

  else
  {
    return -1;
  }
}

- (void)setHasSrvStatus:(BOOL)a3
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

- (int)StringAsSrvStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_SRV_STATUS_NONE"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_LIMITED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_SRV"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_LIMITED_REGIONAL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_PWR_SAVE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_MAX"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_LOW_POWER_MODE"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_CMAS_ONLY_MODE"])
  {
    v4 = 101;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasMcc:(BOOL)a3
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

- (void)setHasIs95Sid:(BOOL)a3
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

- (void)setHasIs95Nid:(BOOL)a3
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

- (int)band
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_band;
  }

  else
  {
    return 0;
  }
}

- (void)setHasBand:(BOOL)a3
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

- (int)StringAsBand:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_BAND_BC0"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC1"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC3"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC4"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC5"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC6"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC7"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC8"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC9"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC10"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC11"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC12"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC13"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC14"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC15"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC16"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC17"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC18"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC19"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_450"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_480"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_750"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_850"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_EGSM_900"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_PGSM_900"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_RGSM_900"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_DCS_1800"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_PCS_1900"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_I_IMT_2000"])
  {
    v4 = 80;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_II_PCS_1900"])
  {
    v4 = 81;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_III_1700"])
  {
    v4 = 82;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_IV_1700"])
  {
    v4 = 83;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_V_850"])
  {
    v4 = 84;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_VI_800"])
  {
    v4 = 85;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_VII_2600"])
  {
    v4 = 86;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_VIII_900"])
  {
    v4 = 87;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_IX_1700"])
  {
    v4 = 88;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XI_1500"])
  {
    v4 = 90;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XIX_850"])
  {
    v4 = 91;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND1"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND2"])
  {
    v4 = 121;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND3"])
  {
    v4 = 122;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND4"])
  {
    v4 = 123;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND5"])
  {
    v4 = 124;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND6"])
  {
    v4 = 125;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND7"])
  {
    v4 = 126;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND8"])
  {
    v4 = 127;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND9"])
  {
    v4 = 128;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND10"])
  {
    v4 = 129;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND11"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND12"])
  {
    v4 = 131;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND13"])
  {
    v4 = 132;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND14"])
  {
    v4 = 133;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND17"])
  {
    v4 = 136;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND18"])
  {
    v4 = 137;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND19"])
  {
    v4 = 138;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND20"])
  {
    v4 = 139;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND21"])
  {
    v4 = 140;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND24"])
  {
    v4 = 143;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND25"])
  {
    v4 = 144;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND26"])
  {
    v4 = 145;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND33"])
  {
    v4 = 152;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND34"])
  {
    v4 = 153;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND35"])
  {
    v4 = 154;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND36"])
  {
    v4 = 155;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND37"])
  {
    v4 = 156;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND38"])
  {
    v4 = 157;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND39"])
  {
    v4 = 158;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND40"])
  {
    v4 = 159;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND41"])
  {
    v4 = 160;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND42"])
  {
    v4 = 161;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND43"])
  {
    v4 = 162;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND1"])
  {
    v4 = 163;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND2"])
  {
    v4 = 164;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND3"])
  {
    v4 = 165;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND4"])
  {
    v4 = 166;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND5"])
  {
    v4 = 167;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND6"])
  {
    v4 = 168;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasChannel:(BOOL)a3
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

- (void)setHasBaseId:(BOOL)a3
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

- (void)setHasZoneId:(BOOL)a3
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

- (int)hdrSrvStatus
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_hdrSrvStatus;
  }

  else
  {
    return -1;
  }
}

- (void)setHasHdrSrvStatus:(BOOL)a3
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

- (int)StringAsHdrSrvStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_SRV_STATUS_NONE"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_LIMITED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_SRV"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_LIMITED_REGIONAL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_PWR_SAVE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_MAX"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_LOW_POWER_MODE"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_CMAS_ONLY_MODE"])
  {
    v4 = 101;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasHdrHybrid:(BOOL)a3
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

- (int)hybridActiveBand
{
  if (*(&self->_has + 1))
  {
    return self->_hybridActiveBand;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHybridActiveBand:(BOOL)a3
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

- (int)StringAsHybridActiveBand:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_BAND_BC0"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC1"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC3"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC4"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC5"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC6"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC7"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC8"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC9"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC10"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC11"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC12"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC13"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC14"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC15"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC16"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC17"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC18"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC19"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_450"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_480"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_750"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_850"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_EGSM_900"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_PGSM_900"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_RGSM_900"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_DCS_1800"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_PCS_1900"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_I_IMT_2000"])
  {
    v4 = 80;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_II_PCS_1900"])
  {
    v4 = 81;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_III_1700"])
  {
    v4 = 82;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_IV_1700"])
  {
    v4 = 83;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_V_850"])
  {
    v4 = 84;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_VI_800"])
  {
    v4 = 85;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_VII_2600"])
  {
    v4 = 86;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_VIII_900"])
  {
    v4 = 87;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_IX_1700"])
  {
    v4 = 88;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XI_1500"])
  {
    v4 = 90;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XIX_850"])
  {
    v4 = 91;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND1"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND2"])
  {
    v4 = 121;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND3"])
  {
    v4 = 122;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND4"])
  {
    v4 = 123;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND5"])
  {
    v4 = 124;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND6"])
  {
    v4 = 125;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND7"])
  {
    v4 = 126;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND8"])
  {
    v4 = 127;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND9"])
  {
    v4 = 128;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND10"])
  {
    v4 = 129;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND11"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND12"])
  {
    v4 = 131;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND13"])
  {
    v4 = 132;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND14"])
  {
    v4 = 133;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND17"])
  {
    v4 = 136;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND18"])
  {
    v4 = 137;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND19"])
  {
    v4 = 138;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND20"])
  {
    v4 = 139;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND21"])
  {
    v4 = 140;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND24"])
  {
    v4 = 143;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND25"])
  {
    v4 = 144;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND26"])
  {
    v4 = 145;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND33"])
  {
    v4 = 152;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND34"])
  {
    v4 = 153;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND35"])
  {
    v4 = 154;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND36"])
  {
    v4 = 155;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND37"])
  {
    v4 = 156;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND38"])
  {
    v4 = 157;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND39"])
  {
    v4 = 158;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND40"])
  {
    v4 = 159;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND41"])
  {
    v4 = 160;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND42"])
  {
    v4 = 161;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND43"])
  {
    v4 = 162;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND1"])
  {
    v4 = 163;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND2"])
  {
    v4 = 164;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND3"])
  {
    v4 = 165;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND4"])
  {
    v4 = 166;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND5"])
  {
    v4 = 167;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND6"])
  {
    v4 = 168;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasHybridActiveChannel:(BOOL)a3
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

- (int)gwRat
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_gwRat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasGwRat:(BOOL)a3
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

- (int)StringAsGwRat:(id)a3
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

- (int)gwSrvStatus
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_gwSrvStatus;
  }

  else
  {
    return -1;
  }
}

- (void)setHasGwSrvStatus:(BOOL)a3
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

- (int)StringAsGwSrvStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_SRV_STATUS_NONE"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_LIMITED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_SRV"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_LIMITED_REGIONAL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_PWR_SAVE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_MAX"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_LOW_POWER_MODE"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_CMAS_ONLY_MODE"])
  {
    v4 = 101;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasHdrPilotPn:(BOOL)a3
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

- (void)setHasPilotPn:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasPsPref:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularCdmaCellInfo;
  v3 = [(CellularCdmaCellInfo *)&v7 description];
  v4 = [(CellularCdmaCellInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v12 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v12 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  rat = self->_rat;
  if (rat < 0x10 && ((0x9FFFu >> rat) & 1) != 0)
  {
    v14 = *(&off_100318CB8 + rat);
  }

  else
  {
    v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_rat];
  }

  [v3 setObject:v14 forKey:@"rat"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_58;
  }

LABEL_37:
  srvStatus = self->_srvStatus;
  if (srvStatus <= 2)
  {
    if (srvStatus <= 0)
    {
      if (srvStatus == -1)
      {
        v17 = @"SYS_SRV_STATUS_NONE";
        goto LABEL_57;
      }

      if (!srvStatus)
      {
        v17 = @"SYS_SRV_STATUS_NO_SRV";
        goto LABEL_57;
      }

LABEL_56:
      v17 = [NSString stringWithFormat:@"(unknown: %i)", self->_srvStatus];
      goto LABEL_57;
    }

    if (srvStatus == 1)
    {
      v17 = @"SYS_SRV_STATUS_LIMITED";
    }

    else
    {
      v17 = @"SYS_SRV_STATUS_SRV";
    }
  }

  else
  {
    if (srvStatus > 4)
    {
      switch(srvStatus)
      {
        case 5:
          v17 = @"SYS_SRV_STATUS_MAX";
          goto LABEL_57;
        case 100:
          v17 = @"SYS_SRV_STATUS_LOW_POWER_MODE";
          goto LABEL_57;
        case 101:
          v17 = @"SYS_SRV_STATUS_CMAS_ONLY_MODE";
          goto LABEL_57;
      }

      goto LABEL_56;
    }

    if (srvStatus == 3)
    {
      v17 = @"SYS_SRV_STATUS_LIMITED_REGIONAL";
    }

    else
    {
      v17 = @"SYS_SRV_STATUS_PWR_SAVE";
    }
  }

LABEL_57:
  [v3 setObject:v17 forKey:@"srv_status"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

LABEL_58:
  v18 = [NSNumber numberWithUnsignedInt:self->_mcc];
  [v3 setObject:v18 forKey:@"mcc"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_59:
  v19 = [NSNumber numberWithUnsignedInt:self->_is95Sid];
  [v3 setObject:v19 forKey:@"is95_sid"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_7:
    v5 = [NSNumber numberWithUnsignedInt:self->_is95Nid];
    [v3 setObject:v5 forKey:@"is95_nid"];
  }

LABEL_8:
  sectorId = self->_sectorId;
  if (sectorId)
  {
    [v3 setObject:sectorId forKey:@"sector_id"];
  }

  v7 = self->_has;
  if ((*&v7 & 2) != 0)
  {
    v15 = @"SYS_BAND_BC0";
    switch(self->_band)
    {
      case 0:
        break;
      case 1:
        v15 = @"SYS_BAND_BC1";
        break;
      case 3:
        v15 = @"SYS_BAND_BC3";
        break;
      case 4:
        v15 = @"SYS_BAND_BC4";
        break;
      case 5:
        v15 = @"SYS_BAND_BC5";
        break;
      case 6:
        v15 = @"SYS_BAND_BC6";
        break;
      case 7:
        v15 = @"SYS_BAND_BC7";
        break;
      case 8:
        v15 = @"SYS_BAND_BC8";
        break;
      case 9:
        v15 = @"SYS_BAND_BC9";
        break;
      case 0xA:
        v15 = @"SYS_BAND_BC10";
        break;
      case 0xB:
        v15 = @"SYS_BAND_BC11";
        break;
      case 0xC:
        v15 = @"SYS_BAND_BC12";
        break;
      case 0xD:
        v15 = @"SYS_BAND_BC13";
        break;
      case 0xE:
        v15 = @"SYS_BAND_BC14";
        break;
      case 0xF:
        v15 = @"SYS_BAND_BC15";
        break;
      case 0x10:
        v15 = @"SYS_BAND_BC16";
        break;
      case 0x11:
        v15 = @"SYS_BAND_BC17";
        break;
      case 0x12:
        v15 = @"SYS_BAND_BC18";
        break;
      case 0x13:
        v15 = @"SYS_BAND_BC19";
        break;
      case 0x28:
        v15 = @"SYS_BAND_GSM_450";
        break;
      case 0x29:
        v15 = @"SYS_BAND_GSM_480";
        break;
      case 0x2A:
        v15 = @"SYS_BAND_GSM_750";
        break;
      case 0x2B:
        v15 = @"SYS_BAND_GSM_850";
        break;
      case 0x2C:
        v15 = @"SYS_BAND_GSM_EGSM_900";
        break;
      case 0x2D:
        v15 = @"SYS_BAND_GSM_PGSM_900";
        break;
      case 0x2E:
        v15 = @"SYS_BAND_GSM_RGSM_900";
        break;
      case 0x2F:
        v15 = @"SYS_BAND_GSM_DCS_1800";
        break;
      case 0x30:
        v15 = @"SYS_BAND_GSM_PCS_1900";
        break;
      case 0x50:
        v15 = @"SYS_BAND_WCDMA_I_IMT_2000";
        break;
      case 0x51:
        v15 = @"SYS_BAND_WCDMA_II_PCS_1900";
        break;
      case 0x52:
        v15 = @"SYS_BAND_WCDMA_III_1700";
        break;
      case 0x53:
        v15 = @"SYS_BAND_WCDMA_IV_1700";
        break;
      case 0x54:
        v15 = @"SYS_BAND_WCDMA_V_850";
        break;
      case 0x55:
        v15 = @"SYS_BAND_WCDMA_VI_800";
        break;
      case 0x56:
        v15 = @"SYS_BAND_WCDMA_VII_2600";
        break;
      case 0x57:
        v15 = @"SYS_BAND_WCDMA_VIII_900";
        break;
      case 0x58:
        v15 = @"SYS_BAND_WCDMA_IX_1700";
        break;
      case 0x5A:
        v15 = @"SYS_BAND_WCDMA_XI_1500";
        break;
      case 0x5B:
        v15 = @"SYS_BAND_WCDMA_XIX_850";
        break;
      case 0x78:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND1";
        break;
      case 0x79:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND2";
        break;
      case 0x7A:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND3";
        break;
      case 0x7B:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND4";
        break;
      case 0x7C:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND5";
        break;
      case 0x7D:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND6";
        break;
      case 0x7E:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND7";
        break;
      case 0x7F:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND8";
        break;
      case 0x80:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND9";
        break;
      case 0x81:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND10";
        break;
      case 0x82:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND11";
        break;
      case 0x83:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND12";
        break;
      case 0x84:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND13";
        break;
      case 0x85:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND14";
        break;
      case 0x88:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND17";
        break;
      case 0x89:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND18";
        break;
      case 0x8A:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND19";
        break;
      case 0x8B:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND20";
        break;
      case 0x8C:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND21";
        break;
      case 0x8F:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND24";
        break;
      case 0x90:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND25";
        break;
      case 0x91:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND26";
        break;
      case 0x98:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND33";
        break;
      case 0x99:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND34";
        break;
      case 0x9A:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND35";
        break;
      case 0x9B:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND36";
        break;
      case 0x9C:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND37";
        break;
      case 0x9D:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND38";
        break;
      case 0x9E:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND39";
        break;
      case 0x9F:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND40";
        break;
      case 0xA0:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND41";
        break;
      case 0xA1:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND42";
        break;
      case 0xA2:
        v15 = @"SYS_BAND_LTE_EUTRAN_BAND43";
        break;
      case 0xA3:
        v15 = @"SYS_BAND_UMTS_BAND1";
        break;
      case 0xA4:
        v15 = @"SYS_BAND_UMTS_BAND2";
        break;
      case 0xA5:
        v15 = @"SYS_BAND_UMTS_BAND3";
        break;
      case 0xA6:
        v15 = @"SYS_BAND_UMTS_BAND4";
        break;
      case 0xA7:
        v15 = @"SYS_BAND_UMTS_BAND5";
        break;
      case 0xA8:
        v15 = @"SYS_BAND_UMTS_BAND6";
        break;
      default:
        v15 = [NSString stringWithFormat:@"(unknown: %i)", self->_band];
        break;
    }

    [v3 setObject:v15 forKey:@"band"];

    v7 = self->_has;
    if ((*&v7 & 8) == 0)
    {
LABEL_12:
      if ((*&v7 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_140;
    }
  }

  else if ((*&v7 & 8) == 0)
  {
    goto LABEL_12;
  }

  v20 = [NSNumber numberWithUnsignedInt:self->_channel];
  [v3 setObject:v20 forKey:@"channel"];

  v7 = self->_has;
  if ((*&v7 & 4) == 0)
  {
LABEL_13:
    if ((*&v7 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_141;
  }

LABEL_140:
  v21 = [NSNumber numberWithUnsignedInt:self->_baseId];
  [v3 setObject:v21 forKey:@"base_id"];

  v7 = self->_has;
  if ((*&v7 & 0x80000) == 0)
  {
LABEL_14:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_142;
  }

LABEL_141:
  v22 = [NSNumber numberWithUnsignedInt:self->_zoneId];
  [v3 setObject:v22 forKey:@"zone_id"];

  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_15:
    if ((*&v7 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_163;
  }

LABEL_142:
  hdrSrvStatus = self->_hdrSrvStatus;
  if (hdrSrvStatus <= 2)
  {
    if (hdrSrvStatus <= 0)
    {
      if (hdrSrvStatus == -1)
      {
        v24 = @"SYS_SRV_STATUS_NONE";
        goto LABEL_162;
      }

      if (!hdrSrvStatus)
      {
        v24 = @"SYS_SRV_STATUS_NO_SRV";
        goto LABEL_162;
      }

LABEL_161:
      v24 = [NSString stringWithFormat:@"(unknown: %i)", self->_hdrSrvStatus];
      goto LABEL_162;
    }

    if (hdrSrvStatus == 1)
    {
      v24 = @"SYS_SRV_STATUS_LIMITED";
    }

    else
    {
      v24 = @"SYS_SRV_STATUS_SRV";
    }
  }

  else
  {
    if (hdrSrvStatus > 4)
    {
      switch(hdrSrvStatus)
      {
        case 5:
          v24 = @"SYS_SRV_STATUS_MAX";
          goto LABEL_162;
        case 100:
          v24 = @"SYS_SRV_STATUS_LOW_POWER_MODE";
          goto LABEL_162;
        case 101:
          v24 = @"SYS_SRV_STATUS_CMAS_ONLY_MODE";
          goto LABEL_162;
      }

      goto LABEL_161;
    }

    if (hdrSrvStatus == 3)
    {
      v24 = @"SYS_SRV_STATUS_LIMITED_REGIONAL";
    }

    else
    {
      v24 = @"SYS_SRV_STATUS_PWR_SAVE";
    }
  }

LABEL_162:
  [v3 setObject:v24 forKey:@"hdr_srv_status"];

  v7 = self->_has;
  if ((*&v7 & 0x100000) == 0)
  {
LABEL_16:
    if ((*&v7 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_164;
  }

LABEL_163:
  v25 = [NSNumber numberWithBool:self->_hdrHybrid];
  [v3 setObject:v25 forKey:@"hdr_hybrid"];

  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_17:
    if ((*&v7 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_244;
  }

LABEL_164:
  v26 = @"SYS_BAND_BC0";
  switch(self->_hybridActiveBand)
  {
    case 0:
      break;
    case 1:
      v26 = @"SYS_BAND_BC1";
      break;
    case 3:
      v26 = @"SYS_BAND_BC3";
      break;
    case 4:
      v26 = @"SYS_BAND_BC4";
      break;
    case 5:
      v26 = @"SYS_BAND_BC5";
      break;
    case 6:
      v26 = @"SYS_BAND_BC6";
      break;
    case 7:
      v26 = @"SYS_BAND_BC7";
      break;
    case 8:
      v26 = @"SYS_BAND_BC8";
      break;
    case 9:
      v26 = @"SYS_BAND_BC9";
      break;
    case 0xA:
      v26 = @"SYS_BAND_BC10";
      break;
    case 0xB:
      v26 = @"SYS_BAND_BC11";
      break;
    case 0xC:
      v26 = @"SYS_BAND_BC12";
      break;
    case 0xD:
      v26 = @"SYS_BAND_BC13";
      break;
    case 0xE:
      v26 = @"SYS_BAND_BC14";
      break;
    case 0xF:
      v26 = @"SYS_BAND_BC15";
      break;
    case 0x10:
      v26 = @"SYS_BAND_BC16";
      break;
    case 0x11:
      v26 = @"SYS_BAND_BC17";
      break;
    case 0x12:
      v26 = @"SYS_BAND_BC18";
      break;
    case 0x13:
      v26 = @"SYS_BAND_BC19";
      break;
    case 0x28:
      v26 = @"SYS_BAND_GSM_450";
      break;
    case 0x29:
      v26 = @"SYS_BAND_GSM_480";
      break;
    case 0x2A:
      v26 = @"SYS_BAND_GSM_750";
      break;
    case 0x2B:
      v26 = @"SYS_BAND_GSM_850";
      break;
    case 0x2C:
      v26 = @"SYS_BAND_GSM_EGSM_900";
      break;
    case 0x2D:
      v26 = @"SYS_BAND_GSM_PGSM_900";
      break;
    case 0x2E:
      v26 = @"SYS_BAND_GSM_RGSM_900";
      break;
    case 0x2F:
      v26 = @"SYS_BAND_GSM_DCS_1800";
      break;
    case 0x30:
      v26 = @"SYS_BAND_GSM_PCS_1900";
      break;
    case 0x50:
      v26 = @"SYS_BAND_WCDMA_I_IMT_2000";
      break;
    case 0x51:
      v26 = @"SYS_BAND_WCDMA_II_PCS_1900";
      break;
    case 0x52:
      v26 = @"SYS_BAND_WCDMA_III_1700";
      break;
    case 0x53:
      v26 = @"SYS_BAND_WCDMA_IV_1700";
      break;
    case 0x54:
      v26 = @"SYS_BAND_WCDMA_V_850";
      break;
    case 0x55:
      v26 = @"SYS_BAND_WCDMA_VI_800";
      break;
    case 0x56:
      v26 = @"SYS_BAND_WCDMA_VII_2600";
      break;
    case 0x57:
      v26 = @"SYS_BAND_WCDMA_VIII_900";
      break;
    case 0x58:
      v26 = @"SYS_BAND_WCDMA_IX_1700";
      break;
    case 0x5A:
      v26 = @"SYS_BAND_WCDMA_XI_1500";
      break;
    case 0x5B:
      v26 = @"SYS_BAND_WCDMA_XIX_850";
      break;
    case 0x78:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND1";
      break;
    case 0x79:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND2";
      break;
    case 0x7A:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND3";
      break;
    case 0x7B:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND4";
      break;
    case 0x7C:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND5";
      break;
    case 0x7D:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND6";
      break;
    case 0x7E:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND7";
      break;
    case 0x7F:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND8";
      break;
    case 0x80:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND9";
      break;
    case 0x81:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND10";
      break;
    case 0x82:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND11";
      break;
    case 0x83:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND12";
      break;
    case 0x84:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND13";
      break;
    case 0x85:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND14";
      break;
    case 0x88:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND17";
      break;
    case 0x89:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND18";
      break;
    case 0x8A:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND19";
      break;
    case 0x8B:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND20";
      break;
    case 0x8C:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND21";
      break;
    case 0x8F:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND24";
      break;
    case 0x90:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND25";
      break;
    case 0x91:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND26";
      break;
    case 0x98:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND33";
      break;
    case 0x99:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND34";
      break;
    case 0x9A:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND35";
      break;
    case 0x9B:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND36";
      break;
    case 0x9C:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND37";
      break;
    case 0x9D:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND38";
      break;
    case 0x9E:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND39";
      break;
    case 0x9F:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND40";
      break;
    case 0xA0:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND41";
      break;
    case 0xA1:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND42";
      break;
    case 0xA2:
      v26 = @"SYS_BAND_LTE_EUTRAN_BAND43";
      break;
    case 0xA3:
      v26 = @"SYS_BAND_UMTS_BAND1";
      break;
    case 0xA4:
      v26 = @"SYS_BAND_UMTS_BAND2";
      break;
    case 0xA5:
      v26 = @"SYS_BAND_UMTS_BAND3";
      break;
    case 0xA6:
      v26 = @"SYS_BAND_UMTS_BAND4";
      break;
    case 0xA7:
      v26 = @"SYS_BAND_UMTS_BAND5";
      break;
    case 0xA8:
      v26 = @"SYS_BAND_UMTS_BAND6";
      break;
    default:
      v26 = [NSString stringWithFormat:@"(unknown: %i)", self->_hybridActiveBand];
      break;
  }

  [v3 setObject:v26 forKey:@"hybrid_active_band"];

  v7 = self->_has;
  if ((*&v7 & 0x200) == 0)
  {
LABEL_18:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_245;
  }

LABEL_244:
  v27 = [NSNumber numberWithUnsignedInt:self->_hybridActiveChannel];
  [v3 setObject:v27 forKey:@"hybrid_active_channel"];

  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_19:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_250;
  }

LABEL_245:
  gwRat = self->_gwRat;
  if (gwRat < 0x10 && ((0x9FFFu >> gwRat) & 1) != 0)
  {
    v29 = *(&off_100318CB8 + gwRat);
  }

  else
  {
    v29 = [NSString stringWithFormat:@"(unknown: %i)", self->_gwRat];
  }

  [v3 setObject:v29 forKey:@"gw_rat"];

  v7 = self->_has;
  if ((*&v7 & 0x20) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_271;
  }

LABEL_250:
  gwSrvStatus = self->_gwSrvStatus;
  if (gwSrvStatus <= 2)
  {
    if (gwSrvStatus <= 0)
    {
      if (gwSrvStatus == -1)
      {
        v31 = @"SYS_SRV_STATUS_NONE";
        goto LABEL_270;
      }

      if (!gwSrvStatus)
      {
        v31 = @"SYS_SRV_STATUS_NO_SRV";
        goto LABEL_270;
      }

LABEL_269:
      v31 = [NSString stringWithFormat:@"(unknown: %i)", self->_gwSrvStatus];
      goto LABEL_270;
    }

    if (gwSrvStatus == 1)
    {
      v31 = @"SYS_SRV_STATUS_LIMITED";
    }

    else
    {
      v31 = @"SYS_SRV_STATUS_SRV";
    }
  }

  else
  {
    if (gwSrvStatus > 4)
    {
      switch(gwSrvStatus)
      {
        case 5:
          v31 = @"SYS_SRV_STATUS_MAX";
          goto LABEL_270;
        case 100:
          v31 = @"SYS_SRV_STATUS_LOW_POWER_MODE";
          goto LABEL_270;
        case 101:
          v31 = @"SYS_SRV_STATUS_CMAS_ONLY_MODE";
          goto LABEL_270;
      }

      goto LABEL_269;
    }

    if (gwSrvStatus == 3)
    {
      v31 = @"SYS_SRV_STATUS_LIMITED_REGIONAL";
    }

    else
    {
      v31 = @"SYS_SRV_STATUS_PWR_SAVE";
    }
  }

LABEL_270:
  [v3 setObject:v31 forKey:@"gw_srv_status"];

  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_272;
  }

LABEL_271:
  v32 = [NSNumber numberWithUnsignedInt:self->_hdrPilotPn];
  [v3 setObject:v32 forKey:@"hdr_pilot_pn"];

  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_273;
  }

LABEL_272:
  v33 = [NSNumber numberWithUnsignedInt:self->_pilotPn];
  [v3 setObject:v33 forKey:@"pilot_pn"];

  v7 = self->_has;
  if ((*&v7 & 0x40000) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_274;
  }

LABEL_273:
  v34 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v34 forKey:@"subs_id"];

  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_274:
  v35 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v35 forKey:@"num_subs"];

  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_25:
    v8 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v8 forKey:@"ps_pref"];
  }

LABEL_26:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v10 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v28 = v4;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v28;
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  rat = self->_rat;
  PBDataWriterWriteInt32Field();
  v4 = v28;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  srvStatus = self->_srvStatus;
  PBDataWriterWriteInt32Field();
  v4 = v28;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  mcc = self->_mcc;
  PBDataWriterWriteUint32Field();
  v4 = v28;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  v4 = v28;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_36:
  is95Sid = self->_is95Sid;
  PBDataWriterWriteUint32Field();
  v4 = v28;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_8:
    is95Nid = self->_is95Nid;
    PBDataWriterWriteUint32Field();
    v4 = v28;
  }

LABEL_9:
  if (self->_sectorId)
  {
    PBDataWriterWriteDataField();
    v4 = v28;
  }

  v7 = self->_has;
  if ((*&v7 & 2) != 0)
  {
    band = self->_band;
    PBDataWriterWriteInt32Field();
    v4 = v28;
    v7 = self->_has;
    if ((*&v7 & 8) == 0)
    {
LABEL_13:
      if ((*&v7 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_40;
    }
  }

  else if ((*&v7 & 8) == 0)
  {
    goto LABEL_13;
  }

  channel = self->_channel;
  PBDataWriterWriteUint32Field();
  v4 = v28;
  v7 = self->_has;
  if ((*&v7 & 4) == 0)
  {
LABEL_14:
    if ((*&v7 & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  baseId = self->_baseId;
  PBDataWriterWriteUint32Field();
  v4 = v28;
  v7 = self->_has;
  if ((*&v7 & 0x80000) == 0)
  {
LABEL_15:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  zoneId = self->_zoneId;
  PBDataWriterWriteUint32Field();
  v4 = v28;
  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_16:
    if ((*&v7 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  hdrSrvStatus = self->_hdrSrvStatus;
  PBDataWriterWriteInt32Field();
  v4 = v28;
  v7 = self->_has;
  if ((*&v7 & 0x100000) == 0)
  {
LABEL_17:
    if ((*&v7 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  hdrHybrid = self->_hdrHybrid;
  PBDataWriterWriteBOOLField();
  v4 = v28;
  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_18:
    if ((*&v7 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  hybridActiveBand = self->_hybridActiveBand;
  PBDataWriterWriteInt32Field();
  v4 = v28;
  v7 = self->_has;
  if ((*&v7 & 0x200) == 0)
  {
LABEL_19:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  hybridActiveChannel = self->_hybridActiveChannel;
  PBDataWriterWriteUint32Field();
  v4 = v28;
  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  hdrPilotPn = self->_hdrPilotPn;
  PBDataWriterWriteUint32Field();
  v4 = v28;
  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  pilotPn = self->_pilotPn;
  PBDataWriterWriteUint32Field();
  v4 = v28;
  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  gwRat = self->_gwRat;
  PBDataWriterWriteInt32Field();
  v4 = v28;
  v7 = self->_has;
  if ((*&v7 & 0x20) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  gwSrvStatus = self->_gwSrvStatus;
  PBDataWriterWriteInt32Field();
  v4 = v28;
  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_50:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  v4 = v28;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_25:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
    v4 = v28;
  }

LABEL_26:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
    v4 = v28;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (*&has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 28) |= 1u;
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 21) = self->_rat;
  *(v4 + 28) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v4 + 24) = self->_srvStatus;
  *(v4 + 28) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v4 + 15) = self->_mcc;
  *(v4 + 28) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v4 + 25) = self->_subsId;
  *(v4 + 28) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_36:
  *(v4 + 14) = self->_is95Sid;
  *(v4 + 28) |= 0x800u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_8:
    *(v4 + 13) = self->_is95Nid;
    *(v4 + 28) |= 0x400u;
  }

LABEL_9:
  v7 = v4;
  if (self->_sectorId)
  {
    [v4 setSectorId:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 2) != 0)
  {
    *(v4 + 4) = self->_band;
    *(v4 + 28) |= 2u;
    v6 = self->_has;
    if ((*&v6 & 8) == 0)
    {
LABEL_13:
      if ((*&v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_40;
    }
  }

  else if ((*&v6 & 8) == 0)
  {
    goto LABEL_13;
  }

  *(v4 + 6) = self->_channel;
  *(v4 + 28) |= 8u;
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_14:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v4 + 5) = self->_baseId;
  *(v4 + 28) |= 4u;
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_15:
    if ((*&v6 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v4 + 26) = self->_zoneId;
  *(v4 + 28) |= 0x80000u;
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_16:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 10) = self->_hdrSrvStatus;
  *(v4 + 28) |= 0x80u;
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 108) = self->_hdrHybrid;
  *(v4 + 28) |= 0x100000u;
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 11) = self->_hybridActiveBand;
  *(v4 + 28) |= 0x100u;
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 12) = self->_hybridActiveChannel;
  *(v4 + 28) |= 0x200u;
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 9) = self->_hdrPilotPn;
  *(v4 + 28) |= 0x40u;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 17) = self->_pilotPn;
  *(v4 + 28) |= 0x4000u;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 7) = self->_gwRat;
  *(v4 + 28) |= 0x10u;
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 8) = self->_gwSrvStatus;
  *(v4 + 28) |= 0x20u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_50:
  *(v4 + 16) = self->_numSubs;
  *(v4 + 28) |= 0x2000u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_25:
    *(v4 + 20) = self->_psPref;
    *(v4 + 28) |= 0x8000u;
  }

LABEL_26:
  if (self->_plmn)
  {
    [v7 setPlmn:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 28) |= 1u;
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 21) = self->_rat;
  *(v5 + 28) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 24) = self->_srvStatus;
  *(v5 + 28) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 15) = self->_mcc;
  *(v5 + 28) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 25) = self->_subsId;
  *(v5 + 28) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_30:
  *(v5 + 14) = self->_is95Sid;
  *(v5 + 28) |= 0x800u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_8:
    *(v5 + 13) = self->_is95Nid;
    *(v5 + 28) |= 0x400u;
  }

LABEL_9:
  v8 = [(NSData *)self->_sectorId copyWithZone:a3];
  v9 = v6[11];
  v6[11] = v8;

  v10 = self->_has;
  if ((*&v10 & 2) != 0)
  {
    *(v6 + 4) = self->_band;
    *(v6 + 28) |= 2u;
    v10 = self->_has;
    if ((*&v10 & 8) == 0)
    {
LABEL_11:
      if ((*&v10 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }
  }

  else if ((*&v10 & 8) == 0)
  {
    goto LABEL_11;
  }

  *(v6 + 6) = self->_channel;
  *(v6 + 28) |= 8u;
  v10 = self->_has;
  if ((*&v10 & 4) == 0)
  {
LABEL_12:
    if ((*&v10 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v6 + 5) = self->_baseId;
  *(v6 + 28) |= 4u;
  v10 = self->_has;
  if ((*&v10 & 0x80000) == 0)
  {
LABEL_13:
    if ((*&v10 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v6 + 26) = self->_zoneId;
  *(v6 + 28) |= 0x80000u;
  v10 = self->_has;
  if ((*&v10 & 0x80) == 0)
  {
LABEL_14:
    if ((*&v10 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v6 + 10) = self->_hdrSrvStatus;
  *(v6 + 28) |= 0x80u;
  v10 = self->_has;
  if ((*&v10 & 0x100000) == 0)
  {
LABEL_15:
    if ((*&v10 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v6 + 108) = self->_hdrHybrid;
  *(v6 + 28) |= 0x100000u;
  v10 = self->_has;
  if ((*&v10 & 0x100) == 0)
  {
LABEL_16:
    if ((*&v10 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v6 + 11) = self->_hybridActiveBand;
  *(v6 + 28) |= 0x100u;
  v10 = self->_has;
  if ((*&v10 & 0x200) == 0)
  {
LABEL_17:
    if ((*&v10 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v6 + 12) = self->_hybridActiveChannel;
  *(v6 + 28) |= 0x200u;
  v10 = self->_has;
  if ((*&v10 & 0x40) == 0)
  {
LABEL_18:
    if ((*&v10 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v6 + 9) = self->_hdrPilotPn;
  *(v6 + 28) |= 0x40u;
  v10 = self->_has;
  if ((*&v10 & 0x4000) == 0)
  {
LABEL_19:
    if ((*&v10 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 17) = self->_pilotPn;
  *(v6 + 28) |= 0x4000u;
  v10 = self->_has;
  if ((*&v10 & 0x10) == 0)
  {
LABEL_20:
    if ((*&v10 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v6 + 7) = self->_gwRat;
  *(v6 + 28) |= 0x10u;
  v10 = self->_has;
  if ((*&v10 & 0x20) == 0)
  {
LABEL_21:
    if ((*&v10 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    *(v6 + 16) = self->_numSubs;
    *(v6 + 28) |= 0x2000u;
    if ((*&self->_has & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_43:
  *(v6 + 8) = self->_gwSrvStatus;
  *(v6 + 28) |= 0x20u;
  v10 = self->_has;
  if ((*&v10 & 0x2000) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((*&v10 & 0x8000) != 0)
  {
LABEL_23:
    *(v6 + 20) = self->_psPref;
    *(v6 + 28) |= 0x8000u;
  }

LABEL_24:
  v11 = [(NSData *)self->_plmn copyWithZone:a3];
  v12 = v6[9];
  v6[9] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_115;
  }

  has = self->_has;
  v6 = *(v4 + 28);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_115;
    }
  }

  else if (v6)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_rat != *(v4 + 21))
    {
      goto LABEL_115;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_srvStatus != *(v4 + 24))
    {
      goto LABEL_115;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_mcc != *(v4 + 15))
    {
      goto LABEL_115;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_subsId != *(v4 + 25))
    {
      goto LABEL_115;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_is95Sid != *(v4 + 14))
    {
      goto LABEL_115;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_is95Nid != *(v4 + 13))
    {
      goto LABEL_115;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_115;
  }

  sectorId = self->_sectorId;
  if (sectorId | *(v4 + 11))
  {
    if (![(NSData *)sectorId isEqual:?])
    {
      goto LABEL_115;
    }

    has = self->_has;
  }

  v8 = *(v4 + 28);
  if ((*&has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_band != *(v4 + 4))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_channel != *(v4 + 6))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_baseId != *(v4 + 5))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v8 & 0x80000) == 0 || self->_zoneId != *(v4 + 26))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 0x80000) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_hdrSrvStatus != *(v4 + 10))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x100000) == 0)
  {
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_67;
    }

LABEL_115:
    v11 = 0;
    goto LABEL_116;
  }

  if ((v8 & 0x100000) == 0)
  {
    goto LABEL_115;
  }

  v9 = *(v4 + 108);
  if (self->_hdrHybrid)
  {
    if ((*(v4 + 108) & 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (*(v4 + 108))
  {
    goto LABEL_115;
  }

LABEL_67:
  if ((*&has & 0x100) != 0)
  {
    if ((v8 & 0x100) == 0 || self->_hybridActiveBand != *(v4 + 11))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 0x100) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0 || self->_hybridActiveChannel != *(v4 + 12))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_hdrPilotPn != *(v4 + 9))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v8 & 0x4000) == 0 || self->_pilotPn != *(v4 + 17))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 0x4000) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_gwRat != *(v4 + 7))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_gwSrvStatus != *(v4 + 8))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || self->_numSubs != *(v4 + 16))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_115;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v8 & 0x8000) == 0 || self->_psPref != *(v4 + 20))
    {
      goto LABEL_115;
    }
  }

  else if ((v8 & 0x8000) != 0)
  {
    goto LABEL_115;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 9))
  {
    v11 = [(NSData *)plmn isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_116:

  return v11;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((*&has & 0x10000) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_rat;
      if ((*&has & 0x20000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_srvStatus;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_mcc;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_subsId;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v8 = 0;
  if ((*&has & 0x800) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v9 = 2654435761 * self->_is95Sid;
  if ((*&has & 0x400) != 0)
  {
LABEL_8:
    v10 = 2654435761 * self->_is95Nid;
    goto LABEL_16;
  }

LABEL_15:
  v10 = 0;
LABEL_16:
  v11 = [(NSData *)self->_sectorId hash];
  v12 = self->_has;
  if ((*&v12 & 2) != 0)
  {
    v13 = 2654435761 * self->_band;
    if ((*&v12 & 8) != 0)
    {
LABEL_18:
      v14 = 2654435761 * self->_channel;
      if ((*&v12 & 4) != 0)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 8) != 0)
    {
      goto LABEL_18;
    }
  }

  v14 = 0;
  if ((*&v12 & 4) != 0)
  {
LABEL_19:
    v15 = 2654435761 * self->_baseId;
    if ((*&v12 & 0x80000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = 0;
  if ((*&v12 & 0x80000) != 0)
  {
LABEL_20:
    v16 = 2654435761 * self->_zoneId;
    if ((*&v12 & 0x80) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = 0;
  if ((*&v12 & 0x80) != 0)
  {
LABEL_21:
    v17 = 2654435761 * self->_hdrSrvStatus;
    if ((*&v12 & 0x100000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = 0;
  if ((*&v12 & 0x100000) != 0)
  {
LABEL_22:
    v18 = 2654435761 * self->_hdrHybrid;
    if ((*&v12 & 0x100) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = 0;
  if ((*&v12 & 0x100) != 0)
  {
LABEL_23:
    v19 = 2654435761 * self->_hybridActiveBand;
    if ((*&v12 & 0x200) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = 0;
  if ((*&v12 & 0x200) != 0)
  {
LABEL_24:
    v20 = 2654435761 * self->_hybridActiveChannel;
    if ((*&v12 & 0x40) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = 0;
  if ((*&v12 & 0x40) != 0)
  {
LABEL_25:
    v21 = 2654435761 * self->_hdrPilotPn;
    if ((*&v12 & 0x4000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  v21 = 0;
  if ((*&v12 & 0x4000) != 0)
  {
LABEL_26:
    v22 = 2654435761 * self->_pilotPn;
    if ((*&v12 & 0x10) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  v22 = 0;
  if ((*&v12 & 0x10) != 0)
  {
LABEL_27:
    v23 = 2654435761 * self->_gwRat;
    if ((*&v12 & 0x20) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_41:
  v23 = 0;
  if ((*&v12 & 0x20) != 0)
  {
LABEL_28:
    v24 = 2654435761 * self->_gwSrvStatus;
    if ((*&v12 & 0x2000) != 0)
    {
      goto LABEL_29;
    }

LABEL_43:
    v25 = 0;
    if ((*&v12 & 0x8000) != 0)
    {
      goto LABEL_30;
    }

LABEL_44:
    v26 = 0;
    return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v11 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ [(NSData *)self->_plmn hash];
  }

LABEL_42:
  v24 = 0;
  if ((*&v12 & 0x2000) == 0)
  {
    goto LABEL_43;
  }

LABEL_29:
  v25 = 2654435761 * self->_numSubs;
  if ((*&v12 & 0x8000) == 0)
  {
    goto LABEL_44;
  }

LABEL_30:
  v26 = 2654435761 * self->_psPref;
  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v11 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ [(NSData *)self->_plmn hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 28);
    if ((v5 & 0x10000) == 0)
    {
LABEL_3:
      if ((v5 & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  self->_rat = *(v4 + 21);
  *&self->_has |= 0x10000u;
  v5 = *(v4 + 28);
  if ((v5 & 0x20000) == 0)
  {
LABEL_4:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_srvStatus = *(v4 + 24);
  *&self->_has |= 0x20000u;
  v5 = *(v4 + 28);
  if ((v5 & 0x1000) == 0)
  {
LABEL_5:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_mcc = *(v4 + 15);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 28);
  if ((v5 & 0x40000) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_subsId = *(v4 + 25);
  *&self->_has |= 0x40000u;
  v5 = *(v4 + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_36:
  self->_is95Sid = *(v4 + 14);
  *&self->_has |= 0x800u;
  if ((*(v4 + 28) & 0x400) != 0)
  {
LABEL_8:
    self->_is95Nid = *(v4 + 13);
    *&self->_has |= 0x400u;
  }

LABEL_9:
  v7 = v4;
  if (*(v4 + 11))
  {
    [(CellularCdmaCellInfo *)self setSectorId:?];
    v4 = v7;
  }

  v6 = *(v4 + 28);
  if ((v6 & 2) != 0)
  {
    self->_band = *(v4 + 4);
    *&self->_has |= 2u;
    v6 = *(v4 + 28);
    if ((v6 & 8) == 0)
    {
LABEL_13:
      if ((v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_13;
  }

  self->_channel = *(v4 + 6);
  *&self->_has |= 8u;
  v6 = *(v4 + 28);
  if ((v6 & 4) == 0)
  {
LABEL_14:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_baseId = *(v4 + 5);
  *&self->_has |= 4u;
  v6 = *(v4 + 28);
  if ((v6 & 0x80000) == 0)
  {
LABEL_15:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_zoneId = *(v4 + 26);
  *&self->_has |= 0x80000u;
  v6 = *(v4 + 28);
  if ((v6 & 0x80) == 0)
  {
LABEL_16:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_hdrSrvStatus = *(v4 + 10);
  *&self->_has |= 0x80u;
  v6 = *(v4 + 28);
  if ((v6 & 0x100000) == 0)
  {
LABEL_17:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_hdrHybrid = *(v4 + 108);
  *&self->_has |= 0x100000u;
  v6 = *(v4 + 28);
  if ((v6 & 0x100) == 0)
  {
LABEL_18:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_hybridActiveBand = *(v4 + 11);
  *&self->_has |= 0x100u;
  v6 = *(v4 + 28);
  if ((v6 & 0x200) == 0)
  {
LABEL_19:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_hybridActiveChannel = *(v4 + 12);
  *&self->_has |= 0x200u;
  v6 = *(v4 + 28);
  if ((v6 & 0x40) == 0)
  {
LABEL_20:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_hdrPilotPn = *(v4 + 9);
  *&self->_has |= 0x40u;
  v6 = *(v4 + 28);
  if ((v6 & 0x4000) == 0)
  {
LABEL_21:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_pilotPn = *(v4 + 17);
  *&self->_has |= 0x4000u;
  v6 = *(v4 + 28);
  if ((v6 & 0x10) == 0)
  {
LABEL_22:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_gwRat = *(v4 + 7);
  *&self->_has |= 0x10u;
  v6 = *(v4 + 28);
  if ((v6 & 0x20) == 0)
  {
LABEL_23:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_gwSrvStatus = *(v4 + 8);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 28);
  if ((v6 & 0x2000) == 0)
  {
LABEL_24:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_50:
  self->_numSubs = *(v4 + 16);
  *&self->_has |= 0x2000u;
  if ((*(v4 + 28) & 0x8000) != 0)
  {
LABEL_25:
    self->_psPref = *(v4 + 20);
    *&self->_has |= 0x8000u;
  }

LABEL_26:
  if (*(v4 + 9))
  {
    [(CellularCdmaCellInfo *)self setPlmn:?];
    v4 = v7;
  }
}

@end