@interface CellularCdmaTxRxHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBand:(id)band;
- (int)band;
- (unint64_t)hash;
- (unsigned)hdrRx0IdleCountAtIndex:(unint64_t)index;
- (unsigned)hdrRx0TrafficCountAtIndex:(unint64_t)index;
- (unsigned)hdrRx1TrafficCountAtIndex:(unint64_t)index;
- (unsigned)hdrTxTrafficCountAtIndex:(unint64_t)index;
- (unsigned)rx0IdleCountAtIndex:(unint64_t)index;
- (unsigned)rx0TrafficCountAtIndex:(unint64_t)index;
- (unsigned)rx1TrafficCountAtIndex:(unint64_t)index;
- (unsigned)txTrafficCountAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasBand:(BOOL)band;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasHdrRx0IdleCountAll:(BOOL)all;
- (void)setHasHdrRx0TrafficCountAll:(BOOL)all;
- (void)setHasHdrRx1TrafficCountAll:(BOOL)all;
- (void)setHasHdrTxTrafficCountAll:(BOOL)all;
- (void)setHasRx0IdleCountAll:(BOOL)all;
- (void)setHasRx0TrafficCountAll:(BOOL)all;
- (void)setHasRx1TrafficCountAll:(BOOL)all;
- (void)setHasTxTrafficCountAll:(BOOL)all;
- (void)writeTo:(id)to;
@end

@implementation CellularCdmaTxRxHist

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
  v3.super_class = CellularCdmaTxRxHist;
  [(CellularCdmaTxRxHist *)&v3 dealloc];
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRx0IdleCountAll:(BOOL)all
{
  if (all)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRx0TrafficCountAll:(BOOL)all
{
  if (all)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasRx1TrafficCountAll:(BOOL)all
{
  if (all)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasTxTrafficCountAll:(BOOL)all
{
  if (all)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (unsigned)rx0IdleCountAtIndex:(unint64_t)index
{
  p_rx0IdleCounts = &self->_rx0IdleCounts;
  count = self->_rx0IdleCounts.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rx0IdleCounts->list[index];
}

- (unsigned)rx0TrafficCountAtIndex:(unint64_t)index
{
  p_rx0TrafficCounts = &self->_rx0TrafficCounts;
  count = self->_rx0TrafficCounts.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rx0TrafficCounts->list[index];
}

- (unsigned)rx1TrafficCountAtIndex:(unint64_t)index
{
  p_rx1TrafficCounts = &self->_rx1TrafficCounts;
  count = self->_rx1TrafficCounts.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rx1TrafficCounts->list[index];
}

- (unsigned)txTrafficCountAtIndex:(unint64_t)index
{
  p_txTrafficCounts = &self->_txTrafficCounts;
  count = self->_txTrafficCounts.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_txTrafficCounts->list[index];
}

- (void)setHasHdrRx0IdleCountAll:(BOOL)all
{
  if (all)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasHdrRx0TrafficCountAll:(BOOL)all
{
  if (all)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasHdrRx1TrafficCountAll:(BOOL)all
{
  if (all)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasHdrTxTrafficCountAll:(BOOL)all
{
  if (all)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (unsigned)hdrRx0IdleCountAtIndex:(unint64_t)index
{
  p_hdrRx0IdleCounts = &self->_hdrRx0IdleCounts;
  count = self->_hdrRx0IdleCounts.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_hdrRx0IdleCounts->list[index];
}

- (unsigned)hdrRx0TrafficCountAtIndex:(unint64_t)index
{
  p_hdrRx0TrafficCounts = &self->_hdrRx0TrafficCounts;
  count = self->_hdrRx0TrafficCounts.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_hdrRx0TrafficCounts->list[index];
}

- (unsigned)hdrRx1TrafficCountAtIndex:(unint64_t)index
{
  p_hdrRx1TrafficCounts = &self->_hdrRx1TrafficCounts;
  count = self->_hdrRx1TrafficCounts.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_hdrRx1TrafficCounts->list[index];
}

- (unsigned)hdrTxTrafficCountAtIndex:(unint64_t)index
{
  p_hdrTxTrafficCounts = &self->_hdrTxTrafficCounts;
  count = self->_hdrTxTrafficCounts.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_hdrTxTrafficCounts->list[index];
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

- (void)setHasBand:(BOOL)band
{
  if (band)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (int)StringAsBand:(id)band
{
  bandCopy = band;
  if ([bandCopy isEqualToString:@"SYS_BAND_BC0"])
  {
    v4 = 0;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC1"])
  {
    v4 = 1;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC3"])
  {
    v4 = 3;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC4"])
  {
    v4 = 4;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC5"])
  {
    v4 = 5;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC6"])
  {
    v4 = 6;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC7"])
  {
    v4 = 7;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC8"])
  {
    v4 = 8;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC9"])
  {
    v4 = 9;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC10"])
  {
    v4 = 10;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC11"])
  {
    v4 = 11;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC12"])
  {
    v4 = 12;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC13"])
  {
    v4 = 13;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC14"])
  {
    v4 = 14;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC15"])
  {
    v4 = 15;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC16"])
  {
    v4 = 16;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC17"])
  {
    v4 = 17;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC18"])
  {
    v4 = 18;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC19"])
  {
    v4 = 19;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_450"])
  {
    v4 = 40;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_480"])
  {
    v4 = 41;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_750"])
  {
    v4 = 42;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_850"])
  {
    v4 = 43;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_EGSM_900"])
  {
    v4 = 44;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_PGSM_900"])
  {
    v4 = 45;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_RGSM_900"])
  {
    v4 = 46;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_DCS_1800"])
  {
    v4 = 47;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_PCS_1900"])
  {
    v4 = 48;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_I_IMT_2000"])
  {
    v4 = 80;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_II_PCS_1900"])
  {
    v4 = 81;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_III_1700"])
  {
    v4 = 82;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_IV_1700"])
  {
    v4 = 83;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_V_850"])
  {
    v4 = 84;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_VI_800"])
  {
    v4 = 85;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_VII_2600"])
  {
    v4 = 86;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_VIII_900"])
  {
    v4 = 87;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_IX_1700"])
  {
    v4 = 88;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_XI_1500"])
  {
    v4 = 90;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_XIX_850"])
  {
    v4 = 91;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND1"])
  {
    v4 = 120;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND2"])
  {
    v4 = 121;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND3"])
  {
    v4 = 122;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND4"])
  {
    v4 = 123;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND5"])
  {
    v4 = 124;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND6"])
  {
    v4 = 125;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND7"])
  {
    v4 = 126;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND8"])
  {
    v4 = 127;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND9"])
  {
    v4 = 128;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND10"])
  {
    v4 = 129;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND11"])
  {
    v4 = 130;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND12"])
  {
    v4 = 131;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND13"])
  {
    v4 = 132;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND14"])
  {
    v4 = 133;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND17"])
  {
    v4 = 136;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND18"])
  {
    v4 = 137;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND19"])
  {
    v4 = 138;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND20"])
  {
    v4 = 139;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND21"])
  {
    v4 = 140;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND24"])
  {
    v4 = 143;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND25"])
  {
    v4 = 144;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND26"])
  {
    v4 = 145;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND33"])
  {
    v4 = 152;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND34"])
  {
    v4 = 153;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND35"])
  {
    v4 = 154;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND36"])
  {
    v4 = 155;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND37"])
  {
    v4 = 156;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND38"])
  {
    v4 = 157;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND39"])
  {
    v4 = 158;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND40"])
  {
    v4 = 159;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND41"])
  {
    v4 = 160;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND42"])
  {
    v4 = 161;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND43"])
  {
    v4 = 162;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_UMTS_BAND1"])
  {
    v4 = 163;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_UMTS_BAND2"])
  {
    v4 = 164;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_UMTS_BAND3"])
  {
    v4 = 165;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_UMTS_BAND4"])
  {
    v4 = 166;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_UMTS_BAND5"])
  {
    v4 = 167;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_UMTS_BAND6"])
  {
    v4 = 168;
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
  v7.super_class = CellularCdmaTxRxHist;
  v3 = [(CellularCdmaTxRxHist *)&v7 description];
  dictionaryRepresentation = [(CellularCdmaTxRxHist *)self dictionaryRepresentation];
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  v19 = [NSNumber numberWithUnsignedInt:self->_duration];
  [v3 setObject:v19 forKey:@"duration"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v20 = [NSNumber numberWithUnsignedInt:self->_rx0IdleCountAll];
  [v3 setObject:v20 forKey:@"rx0_idle_count_all"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v21 = [NSNumber numberWithUnsignedInt:self->_rx0TrafficCountAll];
  [v3 setObject:v21 forKey:@"rx0_traffic_count_all"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  v22 = [NSNumber numberWithUnsignedInt:self->_rx1TrafficCountAll];
  [v3 setObject:v22 forKey:@"rx1_traffic_count_all"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_7:
    v5 = [NSNumber numberWithUnsignedInt:self->_txTrafficCountAll];
    [v3 setObject:v5 forKey:@"tx_traffic_count_all"];
  }

LABEL_8:
  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"rx0_idle_count"];

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"rx0_traffic_count"];

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"rx1_traffic_count"];

  v9 = PBRepeatedUInt32NSArray();
  [v3 setObject:v9 forKey:@"tx_traffic_count"];

  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    v23 = [NSNumber numberWithUnsignedInt:self->_hdrRx0IdleCountAll];
    [v3 setObject:v23 forKey:@"hdr_rx0_idle_count_all"];

    v10 = self->_has;
    if ((v10 & 0x10) == 0)
    {
LABEL_10:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  v24 = [NSNumber numberWithUnsignedInt:self->_hdrRx0TrafficCountAll];
  [v3 setObject:v24 forKey:@"hdr_rx0_traffic_count_all"];

  v10 = self->_has;
  if ((v10 & 0x20) == 0)
  {
LABEL_11:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_24:
  v25 = [NSNumber numberWithUnsignedInt:self->_hdrRx1TrafficCountAll];
  [v3 setObject:v25 forKey:@"hdr_rx1_traffic_count_all"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    v11 = [NSNumber numberWithUnsignedInt:self->_hdrTxTrafficCountAll];
    [v3 setObject:v11 forKey:@"hdr_tx_traffic_count_all"];
  }

LABEL_13:
  v12 = PBRepeatedUInt32NSArray();
  [v3 setObject:v12 forKey:@"hdr_rx0_idle_count"];

  v13 = PBRepeatedUInt32NSArray();
  [v3 setObject:v13 forKey:@"hdr_rx0_traffic_count"];

  v14 = PBRepeatedUInt32NSArray();
  [v3 setObject:v14 forKey:@"hdr_rx1_traffic_count"];

  v15 = PBRepeatedUInt32NSArray();
  [v3 setObject:v15 forKey:@"hdr_tx_traffic_count"];

  if ((*&self->_has & 2) != 0)
  {
    band = self->_band;
    band = @"SYS_BAND_BC0";
    switch(band)
    {
      case 0:
        break;
      case 1:
        band = @"SYS_BAND_BC1";
        break;
      case 3:
        band = @"SYS_BAND_BC3";
        break;
      case 4:
        band = @"SYS_BAND_BC4";
        break;
      case 5:
        band = @"SYS_BAND_BC5";
        break;
      case 6:
        band = @"SYS_BAND_BC6";
        break;
      case 7:
        band = @"SYS_BAND_BC7";
        break;
      case 8:
        band = @"SYS_BAND_BC8";
        break;
      case 9:
        band = @"SYS_BAND_BC9";
        break;
      case 10:
        band = @"SYS_BAND_BC10";
        break;
      case 11:
        band = @"SYS_BAND_BC11";
        break;
      case 12:
        band = @"SYS_BAND_BC12";
        break;
      case 13:
        band = @"SYS_BAND_BC13";
        break;
      case 14:
        band = @"SYS_BAND_BC14";
        break;
      case 15:
        band = @"SYS_BAND_BC15";
        break;
      case 16:
        band = @"SYS_BAND_BC16";
        break;
      case 17:
        band = @"SYS_BAND_BC17";
        break;
      case 18:
        band = @"SYS_BAND_BC18";
        break;
      case 19:
        band = @"SYS_BAND_BC19";
        break;
      case 40:
        band = @"SYS_BAND_GSM_450";
        break;
      case 41:
        band = @"SYS_BAND_GSM_480";
        break;
      case 42:
        band = @"SYS_BAND_GSM_750";
        break;
      case 43:
        band = @"SYS_BAND_GSM_850";
        break;
      case 44:
        band = @"SYS_BAND_GSM_EGSM_900";
        break;
      case 45:
        band = @"SYS_BAND_GSM_PGSM_900";
        break;
      case 46:
        band = @"SYS_BAND_GSM_RGSM_900";
        break;
      case 47:
        band = @"SYS_BAND_GSM_DCS_1800";
        break;
      case 48:
        band = @"SYS_BAND_GSM_PCS_1900";
        break;
      case 80:
        band = @"SYS_BAND_WCDMA_I_IMT_2000";
        break;
      case 81:
        band = @"SYS_BAND_WCDMA_II_PCS_1900";
        break;
      case 82:
        band = @"SYS_BAND_WCDMA_III_1700";
        break;
      case 83:
        band = @"SYS_BAND_WCDMA_IV_1700";
        break;
      case 84:
        band = @"SYS_BAND_WCDMA_V_850";
        break;
      case 85:
        band = @"SYS_BAND_WCDMA_VI_800";
        break;
      case 86:
        band = @"SYS_BAND_WCDMA_VII_2600";
        break;
      case 87:
        band = @"SYS_BAND_WCDMA_VIII_900";
        break;
      case 88:
        band = @"SYS_BAND_WCDMA_IX_1700";
        break;
      case 90:
        band = @"SYS_BAND_WCDMA_XI_1500";
        break;
      case 91:
        band = @"SYS_BAND_WCDMA_XIX_850";
        break;
      case 120:
        band = @"SYS_BAND_LTE_EUTRAN_BAND1";
        break;
      case 121:
        band = @"SYS_BAND_LTE_EUTRAN_BAND2";
        break;
      case 122:
        band = @"SYS_BAND_LTE_EUTRAN_BAND3";
        break;
      case 123:
        band = @"SYS_BAND_LTE_EUTRAN_BAND4";
        break;
      case 124:
        band = @"SYS_BAND_LTE_EUTRAN_BAND5";
        break;
      case 125:
        band = @"SYS_BAND_LTE_EUTRAN_BAND6";
        break;
      case 126:
        band = @"SYS_BAND_LTE_EUTRAN_BAND7";
        break;
      case 127:
        band = @"SYS_BAND_LTE_EUTRAN_BAND8";
        break;
      case 128:
        band = @"SYS_BAND_LTE_EUTRAN_BAND9";
        break;
      case 129:
        band = @"SYS_BAND_LTE_EUTRAN_BAND10";
        break;
      case 130:
        band = @"SYS_BAND_LTE_EUTRAN_BAND11";
        break;
      case 131:
        band = @"SYS_BAND_LTE_EUTRAN_BAND12";
        break;
      case 132:
        band = @"SYS_BAND_LTE_EUTRAN_BAND13";
        break;
      case 133:
        band = @"SYS_BAND_LTE_EUTRAN_BAND14";
        break;
      case 136:
        band = @"SYS_BAND_LTE_EUTRAN_BAND17";
        break;
      case 137:
        band = @"SYS_BAND_LTE_EUTRAN_BAND18";
        break;
      case 138:
        band = @"SYS_BAND_LTE_EUTRAN_BAND19";
        break;
      case 139:
        band = @"SYS_BAND_LTE_EUTRAN_BAND20";
        break;
      case 140:
        band = @"SYS_BAND_LTE_EUTRAN_BAND21";
        break;
      case 143:
        band = @"SYS_BAND_LTE_EUTRAN_BAND24";
        break;
      case 144:
        band = @"SYS_BAND_LTE_EUTRAN_BAND25";
        break;
      case 145:
        band = @"SYS_BAND_LTE_EUTRAN_BAND26";
        break;
      case 152:
        band = @"SYS_BAND_LTE_EUTRAN_BAND33";
        break;
      case 153:
        band = @"SYS_BAND_LTE_EUTRAN_BAND34";
        break;
      case 154:
        band = @"SYS_BAND_LTE_EUTRAN_BAND35";
        break;
      case 155:
        band = @"SYS_BAND_LTE_EUTRAN_BAND36";
        break;
      case 156:
        band = @"SYS_BAND_LTE_EUTRAN_BAND37";
        break;
      case 157:
        band = @"SYS_BAND_LTE_EUTRAN_BAND38";
        break;
      case 158:
        band = @"SYS_BAND_LTE_EUTRAN_BAND39";
        break;
      case 159:
        band = @"SYS_BAND_LTE_EUTRAN_BAND40";
        break;
      case 160:
        band = @"SYS_BAND_LTE_EUTRAN_BAND41";
        break;
      case 161:
        band = @"SYS_BAND_LTE_EUTRAN_BAND42";
        break;
      case 162:
        band = @"SYS_BAND_LTE_EUTRAN_BAND43";
        break;
      case 163:
        band = @"SYS_BAND_UMTS_BAND1";
        break;
      case 164:
        band = @"SYS_BAND_UMTS_BAND2";
        break;
      case 165:
        band = @"SYS_BAND_UMTS_BAND3";
        break;
      case 166:
        band = @"SYS_BAND_UMTS_BAND4";
        break;
      case 167:
        band = @"SYS_BAND_UMTS_BAND5";
        break;
      case 168:
        band = @"SYS_BAND_UMTS_BAND6";
        break;
      default:
        band = [NSString stringWithFormat:@"(unknown: %i)", band];
        break;
    }

    [v3 setObject:band forKey:@"band"];
  }

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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_58;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_59;
  }

LABEL_58:
  rx0IdleCountAll = self->_rx0IdleCountAll;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_60;
  }

LABEL_59:
  rx0TrafficCountAll = self->_rx0TrafficCountAll;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_60:
  rx1TrafficCountAll = self->_rx1TrafficCountAll;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_7:
    txTrafficCountAll = self->_txTrafficCountAll;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
  if (self->_rx0IdleCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rx0IdleCounts.count)
    {
      v7 = 0;
      do
      {
        v8 = self->_rx0IdleCounts.list[v7];
        PBDataWriterWriteUint32Field();
        ++v7;
      }

      while (v7 < self->_rx0IdleCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_rx0TrafficCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rx0TrafficCounts.count)
    {
      v9 = 0;
      do
      {
        v10 = self->_rx0TrafficCounts.list[v9];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v9 < self->_rx0TrafficCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_rx1TrafficCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rx1TrafficCounts.count)
    {
      v11 = 0;
      do
      {
        v12 = self->_rx1TrafficCounts.list[v11];
        PBDataWriterWriteUint32Field();
        ++v11;
      }

      while (v11 < self->_rx1TrafficCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_txTrafficCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_txTrafficCounts.count)
    {
      v13 = 0;
      do
      {
        v14 = self->_txTrafficCounts.list[v13];
        PBDataWriterWriteUint32Field();
        ++v13;
      }

      while (v13 < self->_txTrafficCounts.count);
    }

    PBDataWriterRecallMark();
  }

  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    hdrRx0IdleCountAll = self->_hdrRx0IdleCountAll;
    PBDataWriterWriteUint32Field();
    v15 = self->_has;
    if ((v15 & 0x10) == 0)
    {
LABEL_30:
      if ((v15 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_64;
    }
  }

  else if ((v15 & 0x10) == 0)
  {
    goto LABEL_30;
  }

  hdrRx0TrafficCountAll = self->_hdrRx0TrafficCountAll;
  PBDataWriterWriteUint32Field();
  v15 = self->_has;
  if ((v15 & 0x20) == 0)
  {
LABEL_31:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_64:
  hdrRx1TrafficCountAll = self->_hdrRx1TrafficCountAll;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_32:
    hdrTxTrafficCountAll = self->_hdrTxTrafficCountAll;
    PBDataWriterWriteUint32Field();
  }

LABEL_33:
  if (self->_hdrRx0IdleCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_hdrRx0IdleCounts.count)
    {
      v17 = 0;
      do
      {
        v18 = self->_hdrRx0IdleCounts.list[v17];
        PBDataWriterWriteUint32Field();
        ++v17;
      }

      while (v17 < self->_hdrRx0IdleCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_hdrRx0TrafficCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_hdrRx0TrafficCounts.count)
    {
      v19 = 0;
      do
      {
        v20 = self->_hdrRx0TrafficCounts.list[v19];
        PBDataWriterWriteUint32Field();
        ++v19;
      }

      while (v19 < self->_hdrRx0TrafficCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_hdrRx1TrafficCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_hdrRx1TrafficCounts.count)
    {
      v21 = 0;
      do
      {
        v22 = self->_hdrRx1TrafficCounts.list[v21];
        PBDataWriterWriteUint32Field();
        ++v21;
      }

      while (v21 < self->_hdrRx1TrafficCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_hdrTxTrafficCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_hdrTxTrafficCounts.count)
    {
      v23 = 0;
      do
      {
        v24 = self->_hdrTxTrafficCounts.list[v23];
        PBDataWriterWriteUint32Field();
        ++v23;
      }

      while (v23 < self->_hdrTxTrafficCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 2) != 0)
  {
    band = self->_band;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[25] = self->_timestamp;
    *(toCopy + 124) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 53) = self->_duration;
  *(toCopy + 124) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(toCopy + 58) = self->_rx0IdleCountAll;
  *(toCopy + 124) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

LABEL_54:
    *(toCopy + 60) = self->_rx1TrafficCountAll;
    *(toCopy + 124) |= 0x200u;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_53:
  *(toCopy + 59) = self->_rx0TrafficCountAll;
  *(toCopy + 124) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_54;
  }

LABEL_6:
  if ((has & 0x400) != 0)
  {
LABEL_7:
    *(toCopy + 61) = self->_txTrafficCountAll;
    *(toCopy + 124) |= 0x400u;
  }

LABEL_8:
  v31 = toCopy;
  if ([(CellularCdmaTxRxHist *)self rx0IdleCountsCount])
  {
    [v31 clearRx0IdleCounts];
    rx0IdleCountsCount = [(CellularCdmaTxRxHist *)self rx0IdleCountsCount];
    if (rx0IdleCountsCount)
    {
      v7 = rx0IdleCountsCount;
      for (i = 0; i != v7; ++i)
      {
        [v31 addRx0IdleCount:{-[CellularCdmaTxRxHist rx0IdleCountAtIndex:](self, "rx0IdleCountAtIndex:", i)}];
      }
    }
  }

  if ([(CellularCdmaTxRxHist *)self rx0TrafficCountsCount])
  {
    [v31 clearRx0TrafficCounts];
    rx0TrafficCountsCount = [(CellularCdmaTxRxHist *)self rx0TrafficCountsCount];
    if (rx0TrafficCountsCount)
    {
      v10 = rx0TrafficCountsCount;
      for (j = 0; j != v10; ++j)
      {
        [v31 addRx0TrafficCount:{-[CellularCdmaTxRxHist rx0TrafficCountAtIndex:](self, "rx0TrafficCountAtIndex:", j)}];
      }
    }
  }

  if ([(CellularCdmaTxRxHist *)self rx1TrafficCountsCount])
  {
    [v31 clearRx1TrafficCounts];
    rx1TrafficCountsCount = [(CellularCdmaTxRxHist *)self rx1TrafficCountsCount];
    if (rx1TrafficCountsCount)
    {
      v13 = rx1TrafficCountsCount;
      for (k = 0; k != v13; ++k)
      {
        [v31 addRx1TrafficCount:{-[CellularCdmaTxRxHist rx1TrafficCountAtIndex:](self, "rx1TrafficCountAtIndex:", k)}];
      }
    }
  }

  if ([(CellularCdmaTxRxHist *)self txTrafficCountsCount])
  {
    [v31 clearTxTrafficCounts];
    txTrafficCountsCount = [(CellularCdmaTxRxHist *)self txTrafficCountsCount];
    if (txTrafficCountsCount)
    {
      v16 = txTrafficCountsCount;
      for (m = 0; m != v16; ++m)
      {
        [v31 addTxTrafficCount:{-[CellularCdmaTxRxHist txTrafficCountAtIndex:](self, "txTrafficCountAtIndex:", m)}];
      }
    }
  }

  v18 = self->_has;
  if ((v18 & 8) != 0)
  {
    *(v31 + 54) = self->_hdrRx0IdleCountAll;
    *(v31 + 124) |= 8u;
    v18 = self->_has;
    if ((v18 & 0x10) == 0)
    {
LABEL_26:
      if ((v18 & 0x20) == 0)
      {
        goto LABEL_27;
      }

LABEL_58:
      *(v31 + 56) = self->_hdrRx1TrafficCountAll;
      *(v31 + 124) |= 0x20u;
      if ((*&self->_has & 0x40) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((v18 & 0x10) == 0)
  {
    goto LABEL_26;
  }

  *(v31 + 55) = self->_hdrRx0TrafficCountAll;
  *(v31 + 124) |= 0x10u;
  v18 = self->_has;
  if ((v18 & 0x20) != 0)
  {
    goto LABEL_58;
  }

LABEL_27:
  if ((v18 & 0x40) != 0)
  {
LABEL_28:
    *(v31 + 57) = self->_hdrTxTrafficCountAll;
    *(v31 + 124) |= 0x40u;
  }

LABEL_29:
  if ([(CellularCdmaTxRxHist *)self hdrRx0IdleCountsCount])
  {
    [v31 clearHdrRx0IdleCounts];
    hdrRx0IdleCountsCount = [(CellularCdmaTxRxHist *)self hdrRx0IdleCountsCount];
    if (hdrRx0IdleCountsCount)
    {
      v20 = hdrRx0IdleCountsCount;
      for (n = 0; n != v20; ++n)
      {
        [v31 addHdrRx0IdleCount:{-[CellularCdmaTxRxHist hdrRx0IdleCountAtIndex:](self, "hdrRx0IdleCountAtIndex:", n)}];
      }
    }
  }

  if ([(CellularCdmaTxRxHist *)self hdrRx0TrafficCountsCount])
  {
    [v31 clearHdrRx0TrafficCounts];
    hdrRx0TrafficCountsCount = [(CellularCdmaTxRxHist *)self hdrRx0TrafficCountsCount];
    if (hdrRx0TrafficCountsCount)
    {
      v23 = hdrRx0TrafficCountsCount;
      for (ii = 0; ii != v23; ++ii)
      {
        [v31 addHdrRx0TrafficCount:{-[CellularCdmaTxRxHist hdrRx0TrafficCountAtIndex:](self, "hdrRx0TrafficCountAtIndex:", ii)}];
      }
    }
  }

  if ([(CellularCdmaTxRxHist *)self hdrRx1TrafficCountsCount])
  {
    [v31 clearHdrRx1TrafficCounts];
    hdrRx1TrafficCountsCount = [(CellularCdmaTxRxHist *)self hdrRx1TrafficCountsCount];
    if (hdrRx1TrafficCountsCount)
    {
      v26 = hdrRx1TrafficCountsCount;
      for (jj = 0; jj != v26; ++jj)
      {
        [v31 addHdrRx1TrafficCount:{-[CellularCdmaTxRxHist hdrRx1TrafficCountAtIndex:](self, "hdrRx1TrafficCountAtIndex:", jj)}];
      }
    }
  }

  if ([(CellularCdmaTxRxHist *)self hdrTxTrafficCountsCount])
  {
    [v31 clearHdrTxTrafficCounts];
    hdrTxTrafficCountsCount = [(CellularCdmaTxRxHist *)self hdrTxTrafficCountsCount];
    if (hdrTxTrafficCountsCount)
    {
      v29 = hdrTxTrafficCountsCount;
      for (kk = 0; kk != v29; ++kk)
      {
        [v31 addHdrTxTrafficCount:{-[CellularCdmaTxRxHist hdrTxTrafficCountAtIndex:](self, "hdrTxTrafficCountAtIndex:", kk)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v31 + 52) = self->_band;
    *(v31 + 124) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if (has)
  {
    v4[25] = self->_timestamp;
    *(v4 + 124) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 53) = self->_duration;
  *(v4 + 124) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 58) = self->_rx0IdleCountAll;
  *(v4 + 124) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 59) = self->_rx0TrafficCountAll;
  *(v4 + 124) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  *(v4 + 60) = self->_rx1TrafficCountAll;
  *(v4 + 124) |= 0x200u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_7:
    *(v4 + 61) = self->_txTrafficCountAll;
    *(v4 + 124) |= 0x400u;
  }

LABEL_8:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    v5[54] = self->_hdrRx0IdleCountAll;
    *(v5 + 124) |= 8u;
    v7 = self->_has;
    if ((v7 & 0x10) == 0)
    {
LABEL_10:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((v7 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  v5[55] = self->_hdrRx0TrafficCountAll;
  *(v5 + 124) |= 0x10u;
  v7 = self->_has;
  if ((v7 & 0x20) == 0)
  {
LABEL_11:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_24:
  v5[56] = self->_hdrRx1TrafficCountAll;
  *(v5 + 124) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    v5[57] = self->_hdrTxTrafficCountAll;
    *(v5 + 124) |= 0x40u;
  }

LABEL_13:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 2) != 0)
  {
    v5[52] = self->_band;
    *(v5 + 124) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_65;
  }

  has = self->_has;
  v6 = *(equalCopy + 124);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 25))
    {
      goto LABEL_65;
    }
  }

  else if (v6)
  {
LABEL_65:
    v10 = 0;
    goto LABEL_66;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_duration != *(equalCopy + 53))
    {
      goto LABEL_65;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_rx0IdleCountAll != *(equalCopy + 58))
    {
      goto LABEL_65;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_65;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 124) & 0x100) == 0 || self->_rx0TrafficCountAll != *(equalCopy + 59))
    {
      goto LABEL_65;
    }
  }

  else if ((*(equalCopy + 124) & 0x100) != 0)
  {
    goto LABEL_65;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 124) & 0x200) == 0 || self->_rx1TrafficCountAll != *(equalCopy + 60))
    {
      goto LABEL_65;
    }
  }

  else if ((*(equalCopy + 124) & 0x200) != 0)
  {
    goto LABEL_65;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 124) & 0x400) == 0 || self->_txTrafficCountAll != *(equalCopy + 61))
    {
      goto LABEL_65;
    }
  }

  else if ((*(equalCopy + 124) & 0x400) != 0)
  {
    goto LABEL_65;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_65;
  }

  v7 = self->_has;
  v8 = *(equalCopy + 124);
  if ((v7 & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_hdrRx0IdleCountAll != *(equalCopy + 54))
    {
      goto LABEL_65;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_65;
  }

  if ((v7 & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_hdrRx0TrafficCountAll != *(equalCopy + 55))
    {
      goto LABEL_65;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_65;
  }

  if ((v7 & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_hdrRx1TrafficCountAll != *(equalCopy + 56))
    {
      goto LABEL_65;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_65;
  }

  if ((v7 & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_hdrTxTrafficCountAll != *(equalCopy + 57))
    {
      goto LABEL_65;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_65;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_65;
  }

  v9 = *(equalCopy + 124);
  if ((*&self->_has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_band != *(equalCopy + 52))
    {
      goto LABEL_65;
    }

    v10 = 1;
  }

  else
  {
    v10 = (v9 & 2) == 0;
  }

LABEL_66:

  return v10;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v24 = 2654435761u * self->_timestamp;
    if ((has & 4) != 0)
    {
LABEL_3:
      v23 = 2654435761 * self->_duration;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v24 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v22 = 2654435761 * self->_rx0IdleCountAll;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v22 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v21 = 2654435761 * self->_rx0TrafficCountAll;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v20 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v21 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v20 = 2654435761 * self->_rx1TrafficCountAll;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_7:
    v19 = 2654435761 * self->_txTrafficCountAll;
    goto LABEL_14;
  }

LABEL_13:
  v19 = 0;
LABEL_14:
  v18 = PBRepeatedUInt32Hash();
  v17 = PBRepeatedUInt32Hash();
  v16 = PBRepeatedUInt32Hash();
  v15 = PBRepeatedUInt32Hash();
  v4 = self->_has;
  if ((v4 & 8) != 0)
  {
    v5 = 2654435761 * self->_hdrRx0IdleCountAll;
    if ((v4 & 0x10) != 0)
    {
LABEL_16:
      v6 = 2654435761 * self->_hdrRx0TrafficCountAll;
      if ((v4 & 0x20) != 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      v7 = 0;
      if ((v4 & 0x40) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v5 = 0;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_16;
    }
  }

  v6 = 0;
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v7 = 2654435761 * self->_hdrRx1TrafficCountAll;
  if ((v4 & 0x40) != 0)
  {
LABEL_18:
    v8 = 2654435761 * self->_hdrTxTrafficCountAll;
    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
LABEL_23:
  v9 = PBRepeatedUInt32Hash();
  v10 = PBRepeatedUInt32Hash();
  v11 = PBRepeatedUInt32Hash();
  v12 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v13 = 2654435761 * self->_band;
  }

  else
  {
    v13 = 0;
  }

  return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 124);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 25);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 124);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(fromCopy + 53);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 124);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_rx0IdleCountAll = *(fromCopy + 58);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 124);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_rx0TrafficCountAll = *(fromCopy + 59);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 124);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_46:
  self->_rx1TrafficCountAll = *(fromCopy + 60);
  *&self->_has |= 0x200u;
  if ((*(fromCopy + 124) & 0x400) != 0)
  {
LABEL_7:
    self->_txTrafficCountAll = *(fromCopy + 61);
    *&self->_has |= 0x400u;
  }

LABEL_8:
  v31 = fromCopy;
  rx0IdleCountsCount = [fromCopy rx0IdleCountsCount];
  if (rx0IdleCountsCount)
  {
    v7 = rx0IdleCountsCount;
    for (i = 0; i != v7; ++i)
    {
      -[CellularCdmaTxRxHist addRx0IdleCount:](self, "addRx0IdleCount:", [v31 rx0IdleCountAtIndex:i]);
    }
  }

  rx0TrafficCountsCount = [v31 rx0TrafficCountsCount];
  if (rx0TrafficCountsCount)
  {
    v10 = rx0TrafficCountsCount;
    for (j = 0; j != v10; ++j)
    {
      -[CellularCdmaTxRxHist addRx0TrafficCount:](self, "addRx0TrafficCount:", [v31 rx0TrafficCountAtIndex:j]);
    }
  }

  rx1TrafficCountsCount = [v31 rx1TrafficCountsCount];
  if (rx1TrafficCountsCount)
  {
    v13 = rx1TrafficCountsCount;
    for (k = 0; k != v13; ++k)
    {
      -[CellularCdmaTxRxHist addRx1TrafficCount:](self, "addRx1TrafficCount:", [v31 rx1TrafficCountAtIndex:k]);
    }
  }

  txTrafficCountsCount = [v31 txTrafficCountsCount];
  if (txTrafficCountsCount)
  {
    v16 = txTrafficCountsCount;
    for (m = 0; m != v16; ++m)
    {
      -[CellularCdmaTxRxHist addTxTrafficCount:](self, "addTxTrafficCount:", [v31 txTrafficCountAtIndex:m]);
    }
  }

  v18 = *(v31 + 124);
  if ((v18 & 8) != 0)
  {
    self->_hdrRx0IdleCountAll = *(v31 + 54);
    *&self->_has |= 8u;
    v18 = *(v31 + 124);
    if ((v18 & 0x10) == 0)
    {
LABEL_22:
      if ((v18 & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_50;
    }
  }

  else if ((v18 & 0x10) == 0)
  {
    goto LABEL_22;
  }

  self->_hdrRx0TrafficCountAll = *(v31 + 55);
  *&self->_has |= 0x10u;
  v18 = *(v31 + 124);
  if ((v18 & 0x20) == 0)
  {
LABEL_23:
    if ((v18 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_50:
  self->_hdrRx1TrafficCountAll = *(v31 + 56);
  *&self->_has |= 0x20u;
  if ((*(v31 + 124) & 0x40) != 0)
  {
LABEL_24:
    self->_hdrTxTrafficCountAll = *(v31 + 57);
    *&self->_has |= 0x40u;
  }

LABEL_25:
  hdrRx0IdleCountsCount = [v31 hdrRx0IdleCountsCount];
  if (hdrRx0IdleCountsCount)
  {
    v20 = hdrRx0IdleCountsCount;
    for (n = 0; n != v20; ++n)
    {
      -[CellularCdmaTxRxHist addHdrRx0IdleCount:](self, "addHdrRx0IdleCount:", [v31 hdrRx0IdleCountAtIndex:n]);
    }
  }

  hdrRx0TrafficCountsCount = [v31 hdrRx0TrafficCountsCount];
  if (hdrRx0TrafficCountsCount)
  {
    v23 = hdrRx0TrafficCountsCount;
    for (ii = 0; ii != v23; ++ii)
    {
      -[CellularCdmaTxRxHist addHdrRx0TrafficCount:](self, "addHdrRx0TrafficCount:", [v31 hdrRx0TrafficCountAtIndex:ii]);
    }
  }

  hdrRx1TrafficCountsCount = [v31 hdrRx1TrafficCountsCount];
  if (hdrRx1TrafficCountsCount)
  {
    v26 = hdrRx1TrafficCountsCount;
    for (jj = 0; jj != v26; ++jj)
    {
      -[CellularCdmaTxRxHist addHdrRx1TrafficCount:](self, "addHdrRx1TrafficCount:", [v31 hdrRx1TrafficCountAtIndex:jj]);
    }
  }

  hdrTxTrafficCountsCount = [v31 hdrTxTrafficCountsCount];
  if (hdrTxTrafficCountsCount)
  {
    v29 = hdrTxTrafficCountsCount;
    for (kk = 0; kk != v29; ++kk)
    {
      -[CellularCdmaTxRxHist addHdrTxTrafficCount:](self, "addHdrTxTrafficCount:", [v31 hdrTxTrafficCountAtIndex:kk]);
    }
  }

  if ((*(v31 + 124) & 2) != 0)
  {
    self->_band = *(v31 + 52);
    *&self->_has |= 2u;
  }
}

@end