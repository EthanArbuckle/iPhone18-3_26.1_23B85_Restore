@interface CellularGsmWcdmaCellInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsGsmBand:(id)a3;
- (int)StringAsHspa:(id)a3;
- (int)StringAsRat:(id)a3;
- (int)StringAsSrvDomain:(id)a3;
- (int)StringAsSrvStatus:(id)a3;
- (int)StringAsTdsBand:(id)a3;
- (int)StringAsWcdmaBand:(id)a3;
- (int)gsmBand;
- (int)hspa;
- (int)rat;
- (int)srvDomain;
- (int)srvStatus;
- (int)tdsBand;
- (int)wcdmaBand;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCellId:(BOOL)a3;
- (void)setHasDlUarfcn:(BOOL)a3;
- (void)setHasFmtId:(BOOL)a3;
- (void)setHasGsmArfcn:(BOOL)a3;
- (void)setHasGsmBand:(BOOL)a3;
- (void)setHasHspa:(BOOL)a3;
- (void)setHasLac:(BOOL)a3;
- (void)setHasMcc:(BOOL)a3;
- (void)setHasMnc:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasPsc:(BOOL)a3;
- (void)setHasRat:(BOOL)a3;
- (void)setHasSrvDomain:(BOOL)a3;
- (void)setHasSrvStatus:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTdsBand:(BOOL)a3;
- (void)setHasWcdmaBand:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularGsmWcdmaCellInfo

- (int)rat
{
  if ((*(&self->_has + 1) & 0x20) != 0)
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
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
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
  if ((*(&self->_has + 1) & 0x80) != 0)
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
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
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

- (int)srvDomain
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_srvDomain;
  }

  else
  {
    return -1;
  }
}

- (void)setHasSrvDomain:(BOOL)a3
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

- (int)StringAsSrvDomain:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_NONE"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_CS_ONLY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_PS_ONLY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_CS_PS"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_CAMPED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_MAX"])
  {
    v4 = 5;
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
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasMnc:(BOOL)a3
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

- (void)setHasLac:(BOOL)a3
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

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (int)wcdmaBand
{
  if ((*(&self->_has + 2) & 4) != 0)
  {
    return self->_wcdmaBand;
  }

  else
  {
    return 0;
  }
}

- (void)setHasWcdmaBand:(BOOL)a3
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

- (int)StringAsWcdmaBand:(id)a3
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

- (int)tdsBand
{
  if ((*(&self->_has + 2) & 2) != 0)
  {
    return self->_tdsBand;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTdsBand:(BOOL)a3
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

- (int)StringAsTdsBand:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_BAND_TDS_BANDA"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_TDS_BANDB"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_TDS_BANDC"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_TDS_BANDD"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_TDS_BANDE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_TDS_BANDF"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)hspa
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_hspa;
  }

  else
  {
    return -1;
  }
}

- (void)setHasHspa:(BOOL)a3
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

- (int)StringAsHspa:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_HS_IND_NONE"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"SYS_HS_IND_HSDPA_HSUPA_UNSUPP_CELL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_HS_IND_HSDPA_SUPP_CELL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_HS_IND_HSUPA_SUPP_CELL"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_HS_IND_HSDPA_HSUPA_SUPP_CELL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_HS_IND_HSDPAPLUS_SUPP_CELL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_HS_IND_HSDPAPLUS_HSUPA_SUPP_CELL"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_HS_IND_MAX"])
  {
    v4 = 6;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasDlUarfcn:(BOOL)a3
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

- (void)setHasPsc:(BOOL)a3
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

- (int)gsmBand
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_gsmBand;
  }

  else
  {
    return 0;
  }
}

- (void)setHasGsmBand:(BOOL)a3
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

- (int)StringAsGsmBand:(id)a3
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

- (void)setHasGsmArfcn:(BOOL)a3
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

- (void)setHasFmtId:(BOOL)a3
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

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (void)setHasPsPref:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularGsmWcdmaCellInfo;
  v3 = [(CellularGsmWcdmaCellInfo *)&v7 description];
  v4 = [(CellularGsmWcdmaCellInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v8 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x2000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  rat = self->_rat;
  if (rat < 0x10 && ((0x9FFFu >> rat) & 1) != 0)
  {
    v10 = *(&off_1003181D8 + rat);
  }

  else
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_rat];
  }

  [v3 setObject:v10 forKey:@"rat"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_28:
  srvStatus = self->_srvStatus;
  if (srvStatus <= 2)
  {
    if (srvStatus <= 0)
    {
      if (srvStatus == -1)
      {
        v12 = @"SYS_SRV_STATUS_NONE";
        goto LABEL_48;
      }

      if (!srvStatus)
      {
        v12 = @"SYS_SRV_STATUS_NO_SRV";
        goto LABEL_48;
      }

LABEL_47:
      v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_srvStatus];
      goto LABEL_48;
    }

    if (srvStatus == 1)
    {
      v12 = @"SYS_SRV_STATUS_LIMITED";
    }

    else
    {
      v12 = @"SYS_SRV_STATUS_SRV";
    }
  }

  else
  {
    if (srvStatus > 4)
    {
      switch(srvStatus)
      {
        case 5:
          v12 = @"SYS_SRV_STATUS_MAX";
          goto LABEL_48;
        case 100:
          v12 = @"SYS_SRV_STATUS_LOW_POWER_MODE";
          goto LABEL_48;
        case 101:
          v12 = @"SYS_SRV_STATUS_CMAS_ONLY_MODE";
          goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (srvStatus == 3)
    {
      v12 = @"SYS_SRV_STATUS_LIMITED_REGIONAL";
    }

    else
    {
      v12 = @"SYS_SRV_STATUS_PWR_SAVE";
    }
  }

LABEL_48:
  [v3 setObject:v12 forKey:@"srv_status"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_49:
  v13 = self->_srvDomain + 1;
  if (v13 >= 7)
  {
    v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_srvDomain];
  }

  else
  {
    v14 = *(&off_100318258 + v13);
  }

  [v3 setObject:v14 forKey:@"srv_domain"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  v15 = [NSNumber numberWithUnsignedInt:self->_mcc];
  [v3 setObject:v15 forKey:@"mcc"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  v16 = [NSNumber numberWithUnsignedInt:self->_mnc];
  [v3 setObject:v16 forKey:@"mnc"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  v17 = [NSNumber numberWithUnsignedInt:self->_lac];
  [v3 setObject:v17 forKey:@"lac"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  v18 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v18 forKey:@"cell_id"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_137;
  }

LABEL_57:
  v19 = @"SYS_BAND_BC0";
  switch(self->_wcdmaBand)
  {
    case 0:
      break;
    case 1:
      v19 = @"SYS_BAND_BC1";
      break;
    case 3:
      v19 = @"SYS_BAND_BC3";
      break;
    case 4:
      v19 = @"SYS_BAND_BC4";
      break;
    case 5:
      v19 = @"SYS_BAND_BC5";
      break;
    case 6:
      v19 = @"SYS_BAND_BC6";
      break;
    case 7:
      v19 = @"SYS_BAND_BC7";
      break;
    case 8:
      v19 = @"SYS_BAND_BC8";
      break;
    case 9:
      v19 = @"SYS_BAND_BC9";
      break;
    case 0xA:
      v19 = @"SYS_BAND_BC10";
      break;
    case 0xB:
      v19 = @"SYS_BAND_BC11";
      break;
    case 0xC:
      v19 = @"SYS_BAND_BC12";
      break;
    case 0xD:
      v19 = @"SYS_BAND_BC13";
      break;
    case 0xE:
      v19 = @"SYS_BAND_BC14";
      break;
    case 0xF:
      v19 = @"SYS_BAND_BC15";
      break;
    case 0x10:
      v19 = @"SYS_BAND_BC16";
      break;
    case 0x11:
      v19 = @"SYS_BAND_BC17";
      break;
    case 0x12:
      v19 = @"SYS_BAND_BC18";
      break;
    case 0x13:
      v19 = @"SYS_BAND_BC19";
      break;
    case 0x28:
      v19 = @"SYS_BAND_GSM_450";
      break;
    case 0x29:
      v19 = @"SYS_BAND_GSM_480";
      break;
    case 0x2A:
      v19 = @"SYS_BAND_GSM_750";
      break;
    case 0x2B:
      v19 = @"SYS_BAND_GSM_850";
      break;
    case 0x2C:
      v19 = @"SYS_BAND_GSM_EGSM_900";
      break;
    case 0x2D:
      v19 = @"SYS_BAND_GSM_PGSM_900";
      break;
    case 0x2E:
      v19 = @"SYS_BAND_GSM_RGSM_900";
      break;
    case 0x2F:
      v19 = @"SYS_BAND_GSM_DCS_1800";
      break;
    case 0x30:
      v19 = @"SYS_BAND_GSM_PCS_1900";
      break;
    case 0x50:
      v19 = @"SYS_BAND_WCDMA_I_IMT_2000";
      break;
    case 0x51:
      v19 = @"SYS_BAND_WCDMA_II_PCS_1900";
      break;
    case 0x52:
      v19 = @"SYS_BAND_WCDMA_III_1700";
      break;
    case 0x53:
      v19 = @"SYS_BAND_WCDMA_IV_1700";
      break;
    case 0x54:
      v19 = @"SYS_BAND_WCDMA_V_850";
      break;
    case 0x55:
      v19 = @"SYS_BAND_WCDMA_VI_800";
      break;
    case 0x56:
      v19 = @"SYS_BAND_WCDMA_VII_2600";
      break;
    case 0x57:
      v19 = @"SYS_BAND_WCDMA_VIII_900";
      break;
    case 0x58:
      v19 = @"SYS_BAND_WCDMA_IX_1700";
      break;
    case 0x5A:
      v19 = @"SYS_BAND_WCDMA_XI_1500";
      break;
    case 0x5B:
      v19 = @"SYS_BAND_WCDMA_XIX_850";
      break;
    case 0x78:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND1";
      break;
    case 0x79:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND2";
      break;
    case 0x7A:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND3";
      break;
    case 0x7B:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND4";
      break;
    case 0x7C:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND5";
      break;
    case 0x7D:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND6";
      break;
    case 0x7E:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND7";
      break;
    case 0x7F:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND8";
      break;
    case 0x80:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND9";
      break;
    case 0x81:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND10";
      break;
    case 0x82:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND11";
      break;
    case 0x83:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND12";
      break;
    case 0x84:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND13";
      break;
    case 0x85:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND14";
      break;
    case 0x88:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND17";
      break;
    case 0x89:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND18";
      break;
    case 0x8A:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND19";
      break;
    case 0x8B:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND20";
      break;
    case 0x8C:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND21";
      break;
    case 0x8F:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND24";
      break;
    case 0x90:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND25";
      break;
    case 0x91:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND26";
      break;
    case 0x98:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND33";
      break;
    case 0x99:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND34";
      break;
    case 0x9A:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND35";
      break;
    case 0x9B:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND36";
      break;
    case 0x9C:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND37";
      break;
    case 0x9D:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND38";
      break;
    case 0x9E:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND39";
      break;
    case 0x9F:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND40";
      break;
    case 0xA0:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND41";
      break;
    case 0xA1:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND42";
      break;
    case 0xA2:
      v19 = @"SYS_BAND_LTE_EUTRAN_BAND43";
      break;
    case 0xA3:
      v19 = @"SYS_BAND_UMTS_BAND1";
      break;
    case 0xA4:
      v19 = @"SYS_BAND_UMTS_BAND2";
      break;
    case 0xA5:
      v19 = @"SYS_BAND_UMTS_BAND3";
      break;
    case 0xA6:
      v19 = @"SYS_BAND_UMTS_BAND4";
      break;
    case 0xA7:
      v19 = @"SYS_BAND_UMTS_BAND5";
      break;
    case 0xA8:
      v19 = @"SYS_BAND_UMTS_BAND6";
      break;
    default:
      v19 = [NSString stringWithFormat:@"(unknown: %i)", self->_wcdmaBand];
      break;
  }

  [v3 setObject:v19 forKey:@"wcdma_band"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_11:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_141;
  }

LABEL_137:
  tdsBand = self->_tdsBand;
  if (tdsBand >= 6)
  {
    v21 = [NSString stringWithFormat:@"(unknown: %i)", self->_tdsBand];
  }

  else
  {
    v21 = *(&off_100318290 + tdsBand);
  }

  [v3 setObject:v21 forKey:@"tds_band"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_145;
  }

LABEL_141:
  v22 = self->_hspa + 1;
  if (v22 >= 8)
  {
    v23 = [NSString stringWithFormat:@"(unknown: %i)", self->_hspa];
  }

  else
  {
    v23 = *(&off_1003182C0 + v22);
  }

  [v3 setObject:v23 forKey:@"hspa"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_146;
  }

LABEL_145:
  v24 = [NSNumber numberWithUnsignedInt:self->_dlUarfcn];
  [v3 setObject:v24 forKey:@"dl_uarfcn"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_147;
  }

LABEL_146:
  v25 = [NSNumber numberWithUnsignedInt:self->_psc];
  [v3 setObject:v25 forKey:@"psc"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_227;
  }

LABEL_147:
  v26 = @"SYS_BAND_BC0";
  switch(self->_gsmBand)
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
      v26 = [NSString stringWithFormat:@"(unknown: %i)", self->_gsmBand];
      break;
  }

  [v3 setObject:v26 forKey:@"gsm_band"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_228;
  }

LABEL_227:
  v27 = [NSNumber numberWithUnsignedInt:self->_gsmArfcn];
  [v3 setObject:v27 forKey:@"gsm_arfcn"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_229;
  }

LABEL_228:
  v28 = [NSNumber numberWithUnsignedInt:self->_fmtId];
  [v3 setObject:v28 forKey:@"fmt_id"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_19;
    }

LABEL_230:
    v30 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v30 forKey:@"subs_id"];

    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_229:
  v29 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v29 forKey:@"num_subs"];

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    goto LABEL_230;
  }

LABEL_19:
  if ((*&has & 0x800) != 0)
  {
LABEL_20:
    v5 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v5 forKey:@"ps_pref"];
  }

LABEL_21:
  v6 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v24 = a3;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x2000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  rat = self->_rat;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  srvStatus = self->_srvStatus;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_5:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  mcc = self->_mcc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  mnc = self->_mnc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  lac = self->_lac;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  wcdmaBand = self->_wcdmaBand;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  dlUarfcn = self->_dlUarfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  psc = self->_psc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  gsmBand = self->_gsmBand;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  gsmArfcn = self->_gsmArfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  srvDomain = self->_srvDomain;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  hspa = self->_hspa;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  tdsBand = self->_tdsBand;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  fmtId = self->_fmtId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_19:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_41:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_20:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_21:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (*&has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 22) |= 1u;
    has = self->_has;
    if ((*&has & 0x2000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 16) = self->_rat;
  *(v4 + 22) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 18) = self->_srvStatus;
  *(v4 + 22) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_5:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 11) = self->_mcc;
  *(v4 + 22) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 12) = self->_mnc;
  *(v4 + 22) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 10) = self->_lac;
  *(v4 + 22) |= 0x80u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 4) = self->_cellId;
  *(v4 + 22) |= 2u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v4 + 21) = self->_wcdmaBand;
  *(v4 + 22) |= 0x40000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 5) = self->_dlUarfcn;
  *(v4 + 22) |= 4u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v4 + 15) = self->_psc;
  *(v4 + 22) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v4 + 8) = self->_gsmBand;
  *(v4 + 22) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v4 + 7) = self->_gsmArfcn;
  *(v4 + 22) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v4 + 17) = self->_srvDomain;
  *(v4 + 22) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v4 + 9) = self->_hspa;
  *(v4 + 22) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v4 + 20) = self->_tdsBand;
  *(v4 + 22) |= 0x20000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v4 + 6) = self->_fmtId;
  *(v4 + 22) |= 8u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v4 + 13) = self->_numSubs;
  *(v4 + 22) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_19:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_41:
  *(v4 + 19) = self->_subsId;
  *(v4 + 22) |= 0x10000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_20:
    *(v4 + 14) = self->_psPref;
    *(v4 + 22) |= 0x800u;
  }

LABEL_21:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (*&has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 22) |= 1u;
    has = self->_has;
    if ((*&has & 0x2000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 16) = self->_rat;
  *(result + 22) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 18) = self->_srvStatus;
  *(result + 22) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_5:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 11) = self->_mcc;
  *(result + 22) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 12) = self->_mnc;
  *(result + 22) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 10) = self->_lac;
  *(result + 22) |= 0x80u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 4) = self->_cellId;
  *(result + 22) |= 2u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 21) = self->_wcdmaBand;
  *(result + 22) |= 0x40000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 5) = self->_dlUarfcn;
  *(result + 22) |= 4u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 15) = self->_psc;
  *(result + 22) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 8) = self->_gsmBand;
  *(result + 22) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 7) = self->_gsmArfcn;
  *(result + 22) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 17) = self->_srvDomain;
  *(result + 22) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 9) = self->_hspa;
  *(result + 22) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 20) = self->_tdsBand;
  *(result + 22) |= 0x20000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 6) = self->_fmtId;
  *(result + 22) |= 8u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 13) = self->_numSubs;
  *(result + 22) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_19:
    if ((*&has & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_39:
  *(result + 19) = self->_subsId;
  *(result + 22) |= 0x10000u;
  if ((*&self->_has & 0x800) == 0)
  {
    return result;
  }

LABEL_20:
  *(result + 14) = self->_psPref;
  *(result + 22) |= 0x800u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_97;
  }

  has = self->_has;
  v6 = *(v4 + 22);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_97;
    }
  }

  else if (v6)
  {
LABEL_97:
    v7 = 0;
    goto LABEL_98;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_rat != *(v4 + 16))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_srvStatus != *(v4 + 18))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_mcc != *(v4 + 11))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_mnc != *(v4 + 12))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_lac != *(v4 + 10))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_cellId != *(v4 + 4))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_wcdmaBand != *(v4 + 21))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_dlUarfcn != *(v4 + 5))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_psc != *(v4 + 15))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_gsmBand != *(v4 + 8))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_gsmArfcn != *(v4 + 7))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_srvDomain != *(v4 + 17))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_hspa != *(v4 + 9))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_tdsBand != *(v4 + 20))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_fmtId != *(v4 + 6))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_numSubs != *(v4 + 13))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_subsId != *(v4 + 19))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_psPref != *(v4 + 14))
    {
      goto LABEL_97;
    }

    v7 = 1;
  }

  else
  {
    v7 = (*(v4 + 22) & 0x800) == 0;
  }

LABEL_98:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&has & 0x2000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_rat;
      if ((*&has & 0x8000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_srvStatus;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_mcc;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_mnc;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_lac;
    if ((*&has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_cellId;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_wcdmaBand;
    if ((*&has & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_dlUarfcn;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_psc;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_gsmBand;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_gsmArfcn;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_srvDomain;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_hspa;
  if ((*&has & 0x20000) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_tdsBand;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 8) != 0)
  {
    v18 = 2654435761 * self->_fmtId;
    if ((*&has & 0x400) != 0)
    {
LABEL_34:
      v19 = 2654435761 * self->_numSubs;
      if ((*&has & 0x10000) != 0)
      {
        goto LABEL_35;
      }

LABEL_39:
      v20 = 0;
      if ((*&has & 0x800) != 0)
      {
        goto LABEL_36;
      }

LABEL_40:
      v21 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x10000) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  v20 = 2654435761 * self->_subsId;
  if ((*&has & 0x800) == 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  v21 = 2654435761 * self->_psPref;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 22);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 22);
    if ((v5 & 0x2000) == 0)
    {
LABEL_3:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  self->_rat = *(v4 + 16);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 22);
  if ((v5 & 0x8000) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_srvStatus = *(v4 + 18);
  *&self->_has |= 0x8000u;
  v5 = *(v4 + 22);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_mcc = *(v4 + 11);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 22);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_mnc = *(v4 + 12);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 22);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_lac = *(v4 + 10);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 22);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_cellId = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 22);
  if ((v5 & 0x40000) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_wcdmaBand = *(v4 + 21);
  *&self->_has |= 0x40000u;
  v5 = *(v4 + 22);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_dlUarfcn = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 22);
  if ((v5 & 0x1000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_psc = *(v4 + 15);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 22);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_gsmBand = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 22);
  if ((v5 & 0x10) == 0)
  {
LABEL_13:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_gsmArfcn = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 22);
  if ((v5 & 0x4000) == 0)
  {
LABEL_14:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_srvDomain = *(v4 + 17);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 22);
  if ((v5 & 0x40) == 0)
  {
LABEL_15:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_hspa = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 22);
  if ((v5 & 0x20000) == 0)
  {
LABEL_16:
    if ((v5 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_tdsBand = *(v4 + 20);
  *&self->_has |= 0x20000u;
  v5 = *(v4 + 22);
  if ((v5 & 8) == 0)
  {
LABEL_17:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_fmtId = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 22);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_numSubs = *(v4 + 13);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 22);
  if ((v5 & 0x10000) == 0)
  {
LABEL_19:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_41:
  self->_subsId = *(v4 + 19);
  *&self->_has |= 0x10000u;
  if ((*(v4 + 22) & 0x800) != 0)
  {
LABEL_20:
    self->_psPref = *(v4 + 14);
    *&self->_has |= 0x800u;
  }

LABEL_21:
}

@end