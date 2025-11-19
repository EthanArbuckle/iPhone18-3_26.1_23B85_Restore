@interface CellularWcdmaTxRxHist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsWcdmaBand:(id)a3;
- (int)minAcTxLevelDbm;
- (int)minAdTxLevelDbm;
- (int)minRxLevelDbm;
- (int)minRxLevelIdleDbm;
- (int)minSecRxLevelDbm;
- (int)minSecRxLevelIdleDbm;
- (int)minSecTxLevelDbm;
- (int)minTxLevelDbm;
- (int)wcdmaBand;
- (unint64_t)hash;
- (unsigned)acTxBinsAtIndex:(unint64_t)a3;
- (unsigned)adTxBinsAtIndex:(unint64_t)a3;
- (unsigned)rxBinsAtIndex:(unint64_t)a3;
- (unsigned)rxBinsIdleAtIndex:(unint64_t)a3;
- (unsigned)secRxBinsAtIndex:(unint64_t)a3;
- (unsigned)secRxBinsIdleAtIndex:(unint64_t)a3;
- (unsigned)secTxBinsAtIndex:(unint64_t)a3;
- (unsigned)txBinsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasInVoiceCall:(BOOL)a3;
- (void)setHasMinAcTxLevelDbm:(BOOL)a3;
- (void)setHasMinAdTxLevelDbm:(BOOL)a3;
- (void)setHasMinRxLevelDbm:(BOOL)a3;
- (void)setHasMinRxLevelIdleDbm:(BOOL)a3;
- (void)setHasMinSecRxLevelDbm:(BOOL)a3;
- (void)setHasMinSecRxLevelIdleDbm:(BOOL)a3;
- (void)setHasMinSecTxLevelDbm:(BOOL)a3;
- (void)setHasMinTxLevelDbm:(BOOL)a3;
- (void)setHasWcdmaBand:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularWcdmaTxRxHist

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = CellularWcdmaTxRxHist;
  [(CellularWcdmaTxRxHist *)&v3 dealloc];
}

- (void)setHasDuration:(BOOL)a3
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

- (int)wcdmaBand
{
  if ((*&self->_has & 0x800) != 0)
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
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
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

- (void)setHasInVoiceCall:(BOOL)a3
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

- (int)minRxLevelDbm
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_minRxLevelDbm;
  }

  else
  {
    return -121;
  }
}

- (void)setHasMinRxLevelDbm:(BOOL)a3
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

- (unsigned)rxBinsAtIndex:(unint64_t)a3
{
  p_rxBins = &self->_rxBins;
  count = self->_rxBins.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rxBins->list[a3];
}

- (int)minSecRxLevelDbm
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_minSecRxLevelDbm;
  }

  else
  {
    return -121;
  }
}

- (void)setHasMinSecRxLevelDbm:(BOOL)a3
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

- (unsigned)secRxBinsAtIndex:(unint64_t)a3
{
  p_secRxBins = &self->_secRxBins;
  count = self->_secRxBins.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_secRxBins->list[a3];
}

- (int)minTxLevelDbm
{
  if ((*&self->_has & 0x400) != 0)
  {
    return self->_minTxLevelDbm;
  }

  else
  {
    return -56;
  }
}

- (void)setHasMinTxLevelDbm:(BOOL)a3
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

- (unsigned)txBinsAtIndex:(unint64_t)a3
{
  p_txBins = &self->_txBins;
  count = self->_txBins.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_txBins->list[a3];
}

- (int)minRxLevelIdleDbm
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_minRxLevelIdleDbm;
  }

  else
  {
    return -121;
  }
}

- (void)setHasMinRxLevelIdleDbm:(BOOL)a3
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

- (unsigned)rxBinsIdleAtIndex:(unint64_t)a3
{
  p_rxBinsIdles = &self->_rxBinsIdles;
  count = self->_rxBinsIdles.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rxBinsIdles->list[a3];
}

- (int)minSecRxLevelIdleDbm
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_minSecRxLevelIdleDbm;
  }

  else
  {
    return -121;
  }
}

- (void)setHasMinSecRxLevelIdleDbm:(BOOL)a3
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

- (unsigned)secRxBinsIdleAtIndex:(unint64_t)a3
{
  p_secRxBinsIdles = &self->_secRxBinsIdles;
  count = self->_secRxBinsIdles.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_secRxBinsIdles->list[a3];
}

- (int)minSecTxLevelDbm
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_minSecTxLevelDbm;
  }

  else
  {
    return -56;
  }
}

- (void)setHasMinSecTxLevelDbm:(BOOL)a3
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

- (unsigned)secTxBinsAtIndex:(unint64_t)a3
{
  p_secTxBins = &self->_secTxBins;
  count = self->_secTxBins.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_secTxBins->list[a3];
}

- (int)minAcTxLevelDbm
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_minAcTxLevelDbm;
  }

  else
  {
    return -56;
  }
}

- (void)setHasMinAcTxLevelDbm:(BOOL)a3
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

- (unsigned)acTxBinsAtIndex:(unint64_t)a3
{
  p_acTxBins = &self->_acTxBins;
  count = self->_acTxBins.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_acTxBins->list[a3];
}

- (int)minAdTxLevelDbm
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_minAdTxLevelDbm;
  }

  else
  {
    return -56;
  }
}

- (void)setHasMinAdTxLevelDbm:(BOOL)a3
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

- (unsigned)adTxBinsAtIndex:(unint64_t)a3
{
  p_adTxBins = &self->_adTxBins;
  count = self->_adTxBins.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_adTxBins->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularWcdmaTxRxHist;
  v3 = [(CellularWcdmaTxRxHist *)&v7 description];
  v4 = [(CellularWcdmaTxRxHist *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v22 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v22 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
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

  v23 = [NSNumber numberWithUnsignedInt:self->_duration];
  [v3 setObject:v23 forKey:@"duration"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_106;
  }

LABEL_26:
  v24 = @"SYS_BAND_BC0";
  switch(self->_wcdmaBand)
  {
    case 0:
      break;
    case 1:
      v24 = @"SYS_BAND_BC1";
      break;
    case 3:
      v24 = @"SYS_BAND_BC3";
      break;
    case 4:
      v24 = @"SYS_BAND_BC4";
      break;
    case 5:
      v24 = @"SYS_BAND_BC5";
      break;
    case 6:
      v24 = @"SYS_BAND_BC6";
      break;
    case 7:
      v24 = @"SYS_BAND_BC7";
      break;
    case 8:
      v24 = @"SYS_BAND_BC8";
      break;
    case 9:
      v24 = @"SYS_BAND_BC9";
      break;
    case 0xA:
      v24 = @"SYS_BAND_BC10";
      break;
    case 0xB:
      v24 = @"SYS_BAND_BC11";
      break;
    case 0xC:
      v24 = @"SYS_BAND_BC12";
      break;
    case 0xD:
      v24 = @"SYS_BAND_BC13";
      break;
    case 0xE:
      v24 = @"SYS_BAND_BC14";
      break;
    case 0xF:
      v24 = @"SYS_BAND_BC15";
      break;
    case 0x10:
      v24 = @"SYS_BAND_BC16";
      break;
    case 0x11:
      v24 = @"SYS_BAND_BC17";
      break;
    case 0x12:
      v24 = @"SYS_BAND_BC18";
      break;
    case 0x13:
      v24 = @"SYS_BAND_BC19";
      break;
    case 0x28:
      v24 = @"SYS_BAND_GSM_450";
      break;
    case 0x29:
      v24 = @"SYS_BAND_GSM_480";
      break;
    case 0x2A:
      v24 = @"SYS_BAND_GSM_750";
      break;
    case 0x2B:
      v24 = @"SYS_BAND_GSM_850";
      break;
    case 0x2C:
      v24 = @"SYS_BAND_GSM_EGSM_900";
      break;
    case 0x2D:
      v24 = @"SYS_BAND_GSM_PGSM_900";
      break;
    case 0x2E:
      v24 = @"SYS_BAND_GSM_RGSM_900";
      break;
    case 0x2F:
      v24 = @"SYS_BAND_GSM_DCS_1800";
      break;
    case 0x30:
      v24 = @"SYS_BAND_GSM_PCS_1900";
      break;
    case 0x50:
      v24 = @"SYS_BAND_WCDMA_I_IMT_2000";
      break;
    case 0x51:
      v24 = @"SYS_BAND_WCDMA_II_PCS_1900";
      break;
    case 0x52:
      v24 = @"SYS_BAND_WCDMA_III_1700";
      break;
    case 0x53:
      v24 = @"SYS_BAND_WCDMA_IV_1700";
      break;
    case 0x54:
      v24 = @"SYS_BAND_WCDMA_V_850";
      break;
    case 0x55:
      v24 = @"SYS_BAND_WCDMA_VI_800";
      break;
    case 0x56:
      v24 = @"SYS_BAND_WCDMA_VII_2600";
      break;
    case 0x57:
      v24 = @"SYS_BAND_WCDMA_VIII_900";
      break;
    case 0x58:
      v24 = @"SYS_BAND_WCDMA_IX_1700";
      break;
    case 0x5A:
      v24 = @"SYS_BAND_WCDMA_XI_1500";
      break;
    case 0x5B:
      v24 = @"SYS_BAND_WCDMA_XIX_850";
      break;
    case 0x78:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND1";
      break;
    case 0x79:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND2";
      break;
    case 0x7A:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND3";
      break;
    case 0x7B:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND4";
      break;
    case 0x7C:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND5";
      break;
    case 0x7D:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND6";
      break;
    case 0x7E:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND7";
      break;
    case 0x7F:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND8";
      break;
    case 0x80:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND9";
      break;
    case 0x81:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND10";
      break;
    case 0x82:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND11";
      break;
    case 0x83:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND12";
      break;
    case 0x84:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND13";
      break;
    case 0x85:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND14";
      break;
    case 0x88:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND17";
      break;
    case 0x89:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND18";
      break;
    case 0x8A:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND19";
      break;
    case 0x8B:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND20";
      break;
    case 0x8C:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND21";
      break;
    case 0x8F:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND24";
      break;
    case 0x90:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND25";
      break;
    case 0x91:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND26";
      break;
    case 0x98:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND33";
      break;
    case 0x99:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND34";
      break;
    case 0x9A:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND35";
      break;
    case 0x9B:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND36";
      break;
    case 0x9C:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND37";
      break;
    case 0x9D:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND38";
      break;
    case 0x9E:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND39";
      break;
    case 0x9F:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND40";
      break;
    case 0xA0:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND41";
      break;
    case 0xA1:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND42";
      break;
    case 0xA2:
      v24 = @"SYS_BAND_LTE_EUTRAN_BAND43";
      break;
    case 0xA3:
      v24 = @"SYS_BAND_UMTS_BAND1";
      break;
    case 0xA4:
      v24 = @"SYS_BAND_UMTS_BAND2";
      break;
    case 0xA5:
      v24 = @"SYS_BAND_UMTS_BAND3";
      break;
    case 0xA6:
      v24 = @"SYS_BAND_UMTS_BAND4";
      break;
    case 0xA7:
      v24 = @"SYS_BAND_UMTS_BAND5";
      break;
    case 0xA8:
      v24 = @"SYS_BAND_UMTS_BAND6";
      break;
    default:
      v24 = [NSString stringWithFormat:@"(unknown: %i)", self->_wcdmaBand];
      break;
  }

  [v3 setObject:v24 forKey:@"wcdma_band"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_106:
  v25 = [NSNumber numberWithUnsignedInt:self->_inVoiceCall];
  [v3 setObject:v25 forKey:@"in_voice_call"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithInt:self->_minRxLevelDbm];
    [v3 setObject:v5 forKey:@"min_rx_level_dbm"];
  }

LABEL_7:
  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"rx_bins"];

  if ((*&self->_has & 0x80) != 0)
  {
    v7 = [NSNumber numberWithInt:self->_minSecRxLevelDbm];
    [v3 setObject:v7 forKey:@"min_sec_rx_level_dbm"];
  }

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"sec_rx_bins"];

  if ((*&self->_has & 0x400) != 0)
  {
    v9 = [NSNumber numberWithInt:self->_minTxLevelDbm];
    [v3 setObject:v9 forKey:@"min_tx_level_dbm"];
  }

  v10 = PBRepeatedUInt32NSArray();
  [v3 setObject:v10 forKey:@"tx_bins"];

  if ((*&self->_has & 0x40) != 0)
  {
    v11 = [NSNumber numberWithInt:self->_minRxLevelIdleDbm];
    [v3 setObject:v11 forKey:@"min_rx_level_idle_dbm"];
  }

  v12 = PBRepeatedUInt32NSArray();
  [v3 setObject:v12 forKey:@"rx_bins_idle"];

  if ((*&self->_has & 0x100) != 0)
  {
    v13 = [NSNumber numberWithInt:self->_minSecRxLevelIdleDbm];
    [v3 setObject:v13 forKey:@"min_sec_rx_level_idle_dbm"];
  }

  v14 = PBRepeatedUInt32NSArray();
  [v3 setObject:v14 forKey:@"sec_rx_bins_idle"];

  if ((*&self->_has & 0x200) != 0)
  {
    v15 = [NSNumber numberWithInt:self->_minSecTxLevelDbm];
    [v3 setObject:v15 forKey:@"min_sec_tx_level_dbm"];
  }

  v16 = PBRepeatedUInt32NSArray();
  [v3 setObject:v16 forKey:@"sec_tx_bins"];

  if ((*&self->_has & 8) != 0)
  {
    v17 = [NSNumber numberWithInt:self->_minAcTxLevelDbm];
    [v3 setObject:v17 forKey:@"min_ac_tx_level_dbm"];
  }

  v18 = PBRepeatedUInt32NSArray();
  [v3 setObject:v18 forKey:@"ac_tx_bins"];

  if ((*&self->_has & 0x10) != 0)
  {
    v19 = [NSNumber numberWithInt:self->_minAdTxLevelDbm];
    [v3 setObject:v19 forKey:@"min_ad_tx_level_dbm"];
  }

  v20 = PBRepeatedUInt32NSArray();
  [v3 setObject:v20 forKey:@"ad_tx_bins"];

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
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_64;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_65;
  }

LABEL_64:
  wcdmaBand = self->_wcdmaBand;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_65:
  inVoiceCall = self->_inVoiceCall;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    minRxLevelDbm = self->_minRxLevelDbm;
    PBDataWriterWriteSint32Field();
  }

LABEL_7:
  if (self->_rxBins.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rxBins.count)
    {
      v7 = 0;
      do
      {
        v8 = self->_rxBins.list[v7];
        PBDataWriterWriteUint32Field();
        ++v7;
      }

      while (v7 < self->_rxBins.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 0x80) != 0)
  {
    minSecRxLevelDbm = self->_minSecRxLevelDbm;
    PBDataWriterWriteSint32Field();
  }

  if (self->_secRxBins.count)
  {
    PBDataWriterPlaceMark();
    if (self->_secRxBins.count)
    {
      v10 = 0;
      do
      {
        v11 = self->_secRxBins.list[v10];
        PBDataWriterWriteUint32Field();
        ++v10;
      }

      while (v10 < self->_secRxBins.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 0x400) != 0)
  {
    minTxLevelDbm = self->_minTxLevelDbm;
    PBDataWriterWriteSint32Field();
  }

  if (self->_txBins.count)
  {
    PBDataWriterPlaceMark();
    if (self->_txBins.count)
    {
      v13 = 0;
      do
      {
        v14 = self->_txBins.list[v13];
        PBDataWriterWriteUint32Field();
        ++v13;
      }

      while (v13 < self->_txBins.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    minRxLevelIdleDbm = self->_minRxLevelIdleDbm;
    PBDataWriterWriteSint32Field();
  }

  if (self->_rxBinsIdles.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rxBinsIdles.count)
    {
      v16 = 0;
      do
      {
        v17 = self->_rxBinsIdles.list[v16];
        PBDataWriterWriteUint32Field();
        ++v16;
      }

      while (v16 < self->_rxBinsIdles.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 0x100) != 0)
  {
    minSecRxLevelIdleDbm = self->_minSecRxLevelIdleDbm;
    PBDataWriterWriteSint32Field();
  }

  if (self->_secRxBinsIdles.count)
  {
    PBDataWriterPlaceMark();
    if (self->_secRxBinsIdles.count)
    {
      v19 = 0;
      do
      {
        v20 = self->_secRxBinsIdles.list[v19];
        PBDataWriterWriteUint32Field();
        ++v19;
      }

      while (v19 < self->_secRxBinsIdles.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 0x200) != 0)
  {
    minSecTxLevelDbm = self->_minSecTxLevelDbm;
    PBDataWriterWriteSint32Field();
  }

  if (self->_secTxBins.count)
  {
    PBDataWriterPlaceMark();
    if (self->_secTxBins.count)
    {
      v22 = 0;
      do
      {
        v23 = self->_secTxBins.list[v22];
        PBDataWriterWriteUint32Field();
        ++v22;
      }

      while (v22 < self->_secTxBins.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 8) != 0)
  {
    minAcTxLevelDbm = self->_minAcTxLevelDbm;
    PBDataWriterWriteSint32Field();
  }

  if (self->_acTxBins.count)
  {
    PBDataWriterPlaceMark();
    if (self->_acTxBins.count)
    {
      v25 = 0;
      do
      {
        v26 = self->_acTxBins.list[v25];
        PBDataWriterWriteUint32Field();
        ++v25;
      }

      while (v25 < self->_acTxBins.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    minAdTxLevelDbm = self->_minAdTxLevelDbm;
    PBDataWriterWriteSint32Field();
  }

  p_adTxBins = &self->_adTxBins;
  if (p_adTxBins->count)
  {
    PBDataWriterPlaceMark();
    if (p_adTxBins->count)
    {
      v29 = 0;
      do
      {
        v30 = p_adTxBins->list[v29];
        PBDataWriterWriteUint32Field();
        ++v29;
      }

      while (v29 < p_adTxBins->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[25] = self->_timestamp;
    *(v4 + 126) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_58;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 52) = self->_duration;
  *(v4 + 126) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_59:
    *(v4 + 53) = self->_inVoiceCall;
    *(v4 + 126) |= 4u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_58:
  *(v4 + 62) = self->_wcdmaBand;
  *(v4 + 126) |= 0x800u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_59;
  }

LABEL_5:
  if ((has & 0x20) != 0)
  {
LABEL_6:
    *(v4 + 56) = self->_minRxLevelDbm;
    *(v4 + 126) |= 0x20u;
  }

LABEL_7:
  v30 = v4;
  if ([(CellularWcdmaTxRxHist *)self rxBinsCount])
  {
    [v30 clearRxBins];
    v6 = [(CellularWcdmaTxRxHist *)self rxBinsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v30 addRxBins:{-[CellularWcdmaTxRxHist rxBinsAtIndex:](self, "rxBinsAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(v30 + 58) = self->_minSecRxLevelDbm;
    *(v30 + 126) |= 0x80u;
  }

  if ([(CellularWcdmaTxRxHist *)self secRxBinsCount])
  {
    [v30 clearSecRxBins];
    v9 = [(CellularWcdmaTxRxHist *)self secRxBinsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v30 addSecRxBins:{-[CellularWcdmaTxRxHist secRxBinsAtIndex:](self, "secRxBinsAtIndex:", j)}];
      }
    }
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(v30 + 61) = self->_minTxLevelDbm;
    *(v30 + 126) |= 0x400u;
  }

  if ([(CellularWcdmaTxRxHist *)self txBinsCount])
  {
    [v30 clearTxBins];
    v12 = [(CellularWcdmaTxRxHist *)self txBinsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        [v30 addTxBins:{-[CellularWcdmaTxRxHist txBinsAtIndex:](self, "txBinsAtIndex:", k)}];
      }
    }
  }

  if ((*&self->_has & 0x40) != 0)
  {
    *(v30 + 57) = self->_minRxLevelIdleDbm;
    *(v30 + 126) |= 0x40u;
  }

  if ([(CellularWcdmaTxRxHist *)self rxBinsIdlesCount])
  {
    [v30 clearRxBinsIdles];
    v15 = [(CellularWcdmaTxRxHist *)self rxBinsIdlesCount];
    if (v15)
    {
      v16 = v15;
      for (m = 0; m != v16; ++m)
      {
        [v30 addRxBinsIdle:{-[CellularWcdmaTxRxHist rxBinsIdleAtIndex:](self, "rxBinsIdleAtIndex:", m)}];
      }
    }
  }

  if ((*&self->_has & 0x100) != 0)
  {
    *(v30 + 59) = self->_minSecRxLevelIdleDbm;
    *(v30 + 126) |= 0x100u;
  }

  if ([(CellularWcdmaTxRxHist *)self secRxBinsIdlesCount])
  {
    [v30 clearSecRxBinsIdles];
    v18 = [(CellularWcdmaTxRxHist *)self secRxBinsIdlesCount];
    if (v18)
    {
      v19 = v18;
      for (n = 0; n != v19; ++n)
      {
        [v30 addSecRxBinsIdle:{-[CellularWcdmaTxRxHist secRxBinsIdleAtIndex:](self, "secRxBinsIdleAtIndex:", n)}];
      }
    }
  }

  if ((*&self->_has & 0x200) != 0)
  {
    *(v30 + 60) = self->_minSecTxLevelDbm;
    *(v30 + 126) |= 0x200u;
  }

  if ([(CellularWcdmaTxRxHist *)self secTxBinsCount])
  {
    [v30 clearSecTxBins];
    v21 = [(CellularWcdmaTxRxHist *)self secTxBinsCount];
    if (v21)
    {
      v22 = v21;
      for (ii = 0; ii != v22; ++ii)
      {
        [v30 addSecTxBins:{-[CellularWcdmaTxRxHist secTxBinsAtIndex:](self, "secTxBinsAtIndex:", ii)}];
      }
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v30 + 54) = self->_minAcTxLevelDbm;
    *(v30 + 126) |= 8u;
  }

  if ([(CellularWcdmaTxRxHist *)self acTxBinsCount])
  {
    [v30 clearAcTxBins];
    v24 = [(CellularWcdmaTxRxHist *)self acTxBinsCount];
    if (v24)
    {
      v25 = v24;
      for (jj = 0; jj != v25; ++jj)
      {
        [v30 addAcTxBins:{-[CellularWcdmaTxRxHist acTxBinsAtIndex:](self, "acTxBinsAtIndex:", jj)}];
      }
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v30 + 55) = self->_minAdTxLevelDbm;
    *(v30 + 126) |= 0x10u;
  }

  if ([(CellularWcdmaTxRxHist *)self adTxBinsCount])
  {
    [v30 clearAdTxBins];
    v27 = [(CellularWcdmaTxRxHist *)self adTxBinsCount];
    if (v27)
    {
      v28 = v27;
      for (kk = 0; kk != v28; ++kk)
      {
        [v30 addAdTxBins:{-[CellularWcdmaTxRxHist adTxBinsAtIndex:](self, "adTxBinsAtIndex:", kk)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if (has)
  {
    v4[25] = self->_timestamp;
    *(v4 + 126) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
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

  *(v4 + 52) = self->_duration;
  *(v4 + 126) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 62) = self->_wcdmaBand;
  *(v4 + 126) |= 0x800u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_25:
  *(v4 + 53) = self->_inVoiceCall;
  *(v4 + 126) |= 4u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    *(v4 + 56) = self->_minRxLevelDbm;
    *(v4 + 126) |= 0x20u;
  }

LABEL_7:
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x80) != 0)
  {
    v5[58] = self->_minSecRxLevelDbm;
    *(v5 + 126) |= 0x80u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x400) != 0)
  {
    v5[61] = self->_minTxLevelDbm;
    *(v5 + 126) |= 0x400u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x40) != 0)
  {
    v5[57] = self->_minRxLevelIdleDbm;
    *(v5 + 126) |= 0x40u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x100) != 0)
  {
    v5[59] = self->_minSecRxLevelIdleDbm;
    *(v5 + 126) |= 0x100u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x200) != 0)
  {
    v5[60] = self->_minSecTxLevelDbm;
    *(v5 + 126) |= 0x200u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 8) != 0)
  {
    v5[54] = self->_minAcTxLevelDbm;
    *(v5 + 126) |= 8u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x10) != 0)
  {
    v5[55] = self->_minAdTxLevelDbm;
    *(v5 + 126) |= 0x10u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_70;
  }

  has = self->_has;
  v6 = *(v4 + 126);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 25))
    {
      goto LABEL_70;
    }
  }

  else if (v6)
  {
    goto LABEL_70;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_duration != *(v4 + 52))
    {
      goto LABEL_70;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_70;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 126) & 0x800) == 0 || self->_wcdmaBand != *(v4 + 62))
    {
      goto LABEL_70;
    }
  }

  else if ((*(v4 + 126) & 0x800) != 0)
  {
    goto LABEL_70;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_inVoiceCall != *(v4 + 53))
    {
      goto LABEL_70;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_70;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_minRxLevelDbm != *(v4 + 56))
    {
      goto LABEL_70;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_70;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_70;
  }

  v7 = *(v4 + 126);
  if ((*&self->_has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_minSecRxLevelDbm != *(v4 + 58))
    {
      goto LABEL_70;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_70;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_70;
  }

  v8 = *(v4 + 126);
  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 126) & 0x400) == 0 || self->_minTxLevelDbm != *(v4 + 61))
    {
      goto LABEL_70;
    }
  }

  else if ((*(v4 + 126) & 0x400) != 0)
  {
    goto LABEL_70;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_70;
  }

  v9 = *(v4 + 126);
  if ((*&self->_has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_minRxLevelIdleDbm != *(v4 + 57))
    {
      goto LABEL_70;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_70;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_70;
  }

  v10 = *(v4 + 126);
  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 126) & 0x100) == 0 || self->_minSecRxLevelIdleDbm != *(v4 + 59))
    {
      goto LABEL_70;
    }
  }

  else if ((*(v4 + 126) & 0x100) != 0)
  {
    goto LABEL_70;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_70;
  }

  v11 = *(v4 + 126);
  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 126) & 0x200) == 0 || self->_minSecTxLevelDbm != *(v4 + 60))
    {
      goto LABEL_70;
    }
  }

  else if ((*(v4 + 126) & 0x200) != 0)
  {
    goto LABEL_70;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_70;
  }

  v12 = *(v4 + 126);
  if ((*&self->_has & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_minAcTxLevelDbm != *(v4 + 54))
    {
      goto LABEL_70;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_70;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_70:
    IsEqual = 0;
    goto LABEL_71;
  }

  v13 = *(v4 + 126);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((v13 & 0x10) == 0 || self->_minAdTxLevelDbm != *(v4 + 55))
    {
      goto LABEL_70;
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    goto LABEL_70;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_71:

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v23 = 2654435761u * self->_timestamp;
    if ((has & 2) != 0)
    {
LABEL_3:
      v22 = 2654435761 * self->_duration;
      if ((*&self->_has & 0x800) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v23 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_4:
    v21 = 2654435761 * self->_wcdmaBand;
    if ((has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v20 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v21 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v20 = 2654435761 * self->_inVoiceCall;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v19 = 2654435761 * self->_minRxLevelDbm;
    goto LABEL_12;
  }

LABEL_11:
  v19 = 0;
LABEL_12:
  v18 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x80) != 0)
  {
    v17 = 2654435761 * self->_minSecRxLevelDbm;
  }

  else
  {
    v17 = 0;
  }

  v16 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x400) != 0)
  {
    v15 = 2654435761 * self->_minTxLevelDbm;
  }

  else
  {
    v15 = 0;
  }

  v14 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x40) != 0)
  {
    v4 = 2654435761 * self->_minRxLevelIdleDbm;
  }

  else
  {
    v4 = 0;
  }

  v5 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x100) != 0)
  {
    v6 = 2654435761 * self->_minSecRxLevelIdleDbm;
  }

  else
  {
    v6 = 0;
  }

  v7 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x200) != 0)
  {
    v8 = 2654435761 * self->_minSecTxLevelDbm;
  }

  else
  {
    v8 = 0;
  }

  v9 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 8) != 0)
  {
    v10 = 2654435761 * self->_minAcTxLevelDbm;
  }

  else
  {
    v10 = 0;
  }

  v11 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x10) != 0)
  {
    v12 = 2654435761 * self->_minAdTxLevelDbm;
  }

  else
  {
    v12 = 0;
  }

  return v22 ^ v23 ^ v21 ^ v20 ^ v19 ^ v17 ^ v18 ^ v16 ^ v15 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 126);
  if (v5)
  {
    self->_timestamp = *(v4 + 25);
    *&self->_has |= 1u;
    v5 = *(v4 + 126);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_50;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(v4 + 52);
  *&self->_has |= 2u;
  v5 = *(v4 + 126);
  if ((v5 & 0x800) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_wcdmaBand = *(v4 + 62);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 126);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_51:
  self->_inVoiceCall = *(v4 + 53);
  *&self->_has |= 4u;
  if ((*(v4 + 126) & 0x20) != 0)
  {
LABEL_6:
    self->_minRxLevelDbm = *(v4 + 56);
    *&self->_has |= 0x20u;
  }

LABEL_7:
  v30 = v4;
  v6 = [v4 rxBinsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[CellularWcdmaTxRxHist addRxBins:](self, "addRxBins:", [v30 rxBinsAtIndex:i]);
    }
  }

  if ((v30[63] & 0x80) != 0)
  {
    self->_minSecRxLevelDbm = v30[58];
    *&self->_has |= 0x80u;
  }

  v9 = [v30 secRxBinsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[CellularWcdmaTxRxHist addSecRxBins:](self, "addSecRxBins:", [v30 secRxBinsAtIndex:j]);
    }
  }

  if ((v30[63] & 0x400) != 0)
  {
    self->_minTxLevelDbm = v30[61];
    *&self->_has |= 0x400u;
  }

  v12 = [v30 txBinsCount];
  if (v12)
  {
    v13 = v12;
    for (k = 0; k != v13; ++k)
    {
      -[CellularWcdmaTxRxHist addTxBins:](self, "addTxBins:", [v30 txBinsAtIndex:k]);
    }
  }

  if ((v30[63] & 0x40) != 0)
  {
    self->_minRxLevelIdleDbm = v30[57];
    *&self->_has |= 0x40u;
  }

  v15 = [v30 rxBinsIdlesCount];
  if (v15)
  {
    v16 = v15;
    for (m = 0; m != v16; ++m)
    {
      -[CellularWcdmaTxRxHist addRxBinsIdle:](self, "addRxBinsIdle:", [v30 rxBinsIdleAtIndex:m]);
    }
  }

  if ((v30[63] & 0x100) != 0)
  {
    self->_minSecRxLevelIdleDbm = v30[59];
    *&self->_has |= 0x100u;
  }

  v18 = [v30 secRxBinsIdlesCount];
  if (v18)
  {
    v19 = v18;
    for (n = 0; n != v19; ++n)
    {
      -[CellularWcdmaTxRxHist addSecRxBinsIdle:](self, "addSecRxBinsIdle:", [v30 secRxBinsIdleAtIndex:n]);
    }
  }

  if ((v30[63] & 0x200) != 0)
  {
    self->_minSecTxLevelDbm = v30[60];
    *&self->_has |= 0x200u;
  }

  v21 = [v30 secTxBinsCount];
  if (v21)
  {
    v22 = v21;
    for (ii = 0; ii != v22; ++ii)
    {
      -[CellularWcdmaTxRxHist addSecTxBins:](self, "addSecTxBins:", [v30 secTxBinsAtIndex:ii]);
    }
  }

  if ((v30[63] & 8) != 0)
  {
    self->_minAcTxLevelDbm = v30[54];
    *&self->_has |= 8u;
  }

  v24 = [v30 acTxBinsCount];
  if (v24)
  {
    v25 = v24;
    for (jj = 0; jj != v25; ++jj)
    {
      -[CellularWcdmaTxRxHist addAcTxBins:](self, "addAcTxBins:", [v30 acTxBinsAtIndex:jj]);
    }
  }

  if ((v30[63] & 0x10) != 0)
  {
    self->_minAdTxLevelDbm = v30[55];
    *&self->_has |= 0x10u;
  }

  v27 = [v30 adTxBinsCount];
  if (v27)
  {
    v28 = v27;
    for (kk = 0; kk != v28; ++kk)
    {
      -[CellularWcdmaTxRxHist addAdTxBins:](self, "addAdTxBins:", [v30 adTxBinsAtIndex:kk]);
    }
  }
}

@end