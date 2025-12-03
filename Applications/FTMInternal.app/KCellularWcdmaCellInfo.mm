@interface KCellularWcdmaCellInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsHspa:(id)hspa;
- (int)StringAsWcdmaBand:(id)band;
- (int)hspa;
- (int)wcdmaBand;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCellId:(BOOL)id;
- (void)setHasDlUarfcn:(BOOL)uarfcn;
- (void)setHasHspa:(BOOL)hspa;
- (void)setHasLac:(BOOL)lac;
- (void)setHasMcc:(BOOL)mcc;
- (void)setHasMnc:(BOOL)mnc;
- (void)setHasNumMncDigits:(BOOL)digits;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsc:(BOOL)psc;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasWcdmaBand:(BOOL)band;
- (void)writeTo:(id)to;
@end

@implementation KCellularWcdmaCellInfo

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
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

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasMcc:(BOOL)mcc
{
  if (mcc)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasMnc:(BOOL)mnc
{
  if (mnc)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasLac:(BOOL)lac
{
  if (lac)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

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

- (void)setHasWcdmaBand:(BOOL)band
{
  if (band)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (int)StringAsWcdmaBand:(id)band
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

- (int)hspa
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_hspa;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHspa:(BOOL)hspa
{
  if (hspa)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)StringAsHspa:(id)hspa
{
  hspaCopy = hspa;
  if ([hspaCopy isEqualToString:@"SYS_HS_IND_HSDPA_HSUPA_UNSUPP_CELL"])
  {
    v4 = 0;
  }

  else if ([hspaCopy isEqualToString:@"SYS_HS_IND_HSDPA_SUPP_CELL"])
  {
    v4 = 1;
  }

  else if ([hspaCopy isEqualToString:@"SYS_HS_IND_HSUPA_SUPP_CELL"])
  {
    v4 = 2;
  }

  else if ([hspaCopy isEqualToString:@"SYS_HS_IND_HSDPA_HSUPA_SUPP_CELL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDlUarfcn:(BOOL)uarfcn
{
  if (uarfcn)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPsc:(BOOL)psc
{
  if (psc)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
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

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularWcdmaCellInfo;
  v3 = [(KCellularWcdmaCellInfo *)&v7 description];
  dictionaryRepresentation = [(KCellularWcdmaCellInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v8 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v9 forKey:@"num_subs"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = [NSNumber numberWithUnsignedInt:self->_mcc];
  [v3 setObject:v10 forKey:@"mcc"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = [NSNumber numberWithUnsignedInt:self->_mnc];
  [v3 setObject:v11 forKey:@"mnc"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = [NSNumber numberWithUnsignedInt:self->_lac];
  [v3 setObject:v12 forKey:@"lac"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v13 forKey:@"cell_id"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_104;
  }

LABEL_24:
  v14 = @"SYS_BAND_BC0";
  switch(self->_wcdmaBand)
  {
    case 0:
      break;
    case 1:
      v14 = @"SYS_BAND_BC1";
      break;
    case 3:
      v14 = @"SYS_BAND_BC3";
      break;
    case 4:
      v14 = @"SYS_BAND_BC4";
      break;
    case 5:
      v14 = @"SYS_BAND_BC5";
      break;
    case 6:
      v14 = @"SYS_BAND_BC6";
      break;
    case 7:
      v14 = @"SYS_BAND_BC7";
      break;
    case 8:
      v14 = @"SYS_BAND_BC8";
      break;
    case 9:
      v14 = @"SYS_BAND_BC9";
      break;
    case 0xA:
      v14 = @"SYS_BAND_BC10";
      break;
    case 0xB:
      v14 = @"SYS_BAND_BC11";
      break;
    case 0xC:
      v14 = @"SYS_BAND_BC12";
      break;
    case 0xD:
      v14 = @"SYS_BAND_BC13";
      break;
    case 0xE:
      v14 = @"SYS_BAND_BC14";
      break;
    case 0xF:
      v14 = @"SYS_BAND_BC15";
      break;
    case 0x10:
      v14 = @"SYS_BAND_BC16";
      break;
    case 0x11:
      v14 = @"SYS_BAND_BC17";
      break;
    case 0x12:
      v14 = @"SYS_BAND_BC18";
      break;
    case 0x13:
      v14 = @"SYS_BAND_BC19";
      break;
    case 0x28:
      v14 = @"SYS_BAND_GSM_450";
      break;
    case 0x29:
      v14 = @"SYS_BAND_GSM_480";
      break;
    case 0x2A:
      v14 = @"SYS_BAND_GSM_750";
      break;
    case 0x2B:
      v14 = @"SYS_BAND_GSM_850";
      break;
    case 0x2C:
      v14 = @"SYS_BAND_GSM_EGSM_900";
      break;
    case 0x2D:
      v14 = @"SYS_BAND_GSM_PGSM_900";
      break;
    case 0x2E:
      v14 = @"SYS_BAND_GSM_RGSM_900";
      break;
    case 0x2F:
      v14 = @"SYS_BAND_GSM_DCS_1800";
      break;
    case 0x30:
      v14 = @"SYS_BAND_GSM_PCS_1900";
      break;
    case 0x50:
      v14 = @"SYS_BAND_WCDMA_I_IMT_2000";
      break;
    case 0x51:
      v14 = @"SYS_BAND_WCDMA_II_PCS_1900";
      break;
    case 0x52:
      v14 = @"SYS_BAND_WCDMA_III_1700";
      break;
    case 0x53:
      v14 = @"SYS_BAND_WCDMA_IV_1700";
      break;
    case 0x54:
      v14 = @"SYS_BAND_WCDMA_V_850";
      break;
    case 0x55:
      v14 = @"SYS_BAND_WCDMA_VI_800";
      break;
    case 0x56:
      v14 = @"SYS_BAND_WCDMA_VII_2600";
      break;
    case 0x57:
      v14 = @"SYS_BAND_WCDMA_VIII_900";
      break;
    case 0x58:
      v14 = @"SYS_BAND_WCDMA_IX_1700";
      break;
    case 0x5A:
      v14 = @"SYS_BAND_WCDMA_XI_1500";
      break;
    case 0x5B:
      v14 = @"SYS_BAND_WCDMA_XIX_850";
      break;
    case 0x78:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND1";
      break;
    case 0x79:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND2";
      break;
    case 0x7A:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND3";
      break;
    case 0x7B:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND4";
      break;
    case 0x7C:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND5";
      break;
    case 0x7D:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND6";
      break;
    case 0x7E:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND7";
      break;
    case 0x7F:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND8";
      break;
    case 0x80:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND9";
      break;
    case 0x81:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND10";
      break;
    case 0x82:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND11";
      break;
    case 0x83:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND12";
      break;
    case 0x84:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND13";
      break;
    case 0x85:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND14";
      break;
    case 0x88:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND17";
      break;
    case 0x89:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND18";
      break;
    case 0x8A:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND19";
      break;
    case 0x8B:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND20";
      break;
    case 0x8C:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND21";
      break;
    case 0x8F:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND24";
      break;
    case 0x90:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND25";
      break;
    case 0x91:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND26";
      break;
    case 0x98:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND33";
      break;
    case 0x99:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND34";
      break;
    case 0x9A:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND35";
      break;
    case 0x9B:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND36";
      break;
    case 0x9C:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND37";
      break;
    case 0x9D:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND38";
      break;
    case 0x9E:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND39";
      break;
    case 0x9F:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND40";
      break;
    case 0xA0:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND41";
      break;
    case 0xA1:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND42";
      break;
    case 0xA2:
      v14 = @"SYS_BAND_LTE_EUTRAN_BAND43";
      break;
    case 0xA3:
      v14 = @"SYS_BAND_UMTS_BAND1";
      break;
    case 0xA4:
      v14 = @"SYS_BAND_UMTS_BAND2";
      break;
    case 0xA5:
      v14 = @"SYS_BAND_UMTS_BAND3";
      break;
    case 0xA6:
      v14 = @"SYS_BAND_UMTS_BAND4";
      break;
    case 0xA7:
      v14 = @"SYS_BAND_UMTS_BAND5";
      break;
    case 0xA8:
      v14 = @"SYS_BAND_UMTS_BAND6";
      break;
    default:
      v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_wcdmaBand];
      break;
  }

  [v3 setObject:v14 forKey:@"wcdma_band"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_108;
  }

LABEL_104:
  hspa = self->_hspa;
  if (hspa >= 4)
  {
    v16 = [NSString stringWithFormat:@"(unknown: %i)", self->_hspa];
  }

  else
  {
    v16 = *(&off_100318108 + hspa);
  }

  [v3 setObject:v16 forKey:@"hspa"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_109;
  }

LABEL_108:
  v17 = [NSNumber numberWithUnsignedInt:self->_dlUarfcn];
  [v3 setObject:v17 forKey:@"dl_uarfcn"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_109:
  v18 = [NSNumber numberWithUnsignedInt:self->_psc];
  [v3 setObject:v18 forKey:@"psc"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_13:
    v5 = [NSNumber numberWithUnsignedInt:self->_numMncDigits];
    [v3 setObject:v5 forKey:@"num_mnc_digits"];
  }

LABEL_14:

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
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  mcc = self->_mcc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  mnc = self->_mnc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  lac = self->_lac;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  wcdmaBand = self->_wcdmaBand;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  dlUarfcn = self->_dlUarfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  psc = self->_psc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  numMncDigits = self->_numMncDigits;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    hspa = self->_hspa;
    PBDataWriterWriteInt32Field();
  }

LABEL_14:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 30) |= 1u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 13) = self->_subsId;
  *(toCopy + 30) |= 0x400u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(toCopy + 11) = self->_numSubs;
  *(toCopy + 30) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(toCopy + 8) = self->_mcc;
  *(toCopy + 30) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(toCopy + 9) = self->_mnc;
  *(toCopy + 30) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(toCopy + 7) = self->_lac;
  *(toCopy + 30) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(toCopy + 4) = self->_cellId;
  *(toCopy + 30) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 14) = self->_wcdmaBand;
  *(toCopy + 30) |= 0x800u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(toCopy + 5) = self->_dlUarfcn;
  *(toCopy + 30) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(toCopy + 12) = self->_psc;
  *(toCopy + 30) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  *(toCopy + 10) = self->_numMncDigits;
  *(toCopy + 30) |= 0x80u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    *(toCopy + 6) = self->_hspa;
    *(toCopy + 30) |= 8u;
  }

LABEL_14:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 30) |= 1u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(result + 13) = self->_subsId;
  *(result + 30) |= 0x400u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 11) = self->_numSubs;
  *(result + 30) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 8) = self->_mcc;
  *(result + 30) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 9) = self->_mnc;
  *(result + 30) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 7) = self->_lac;
  *(result + 30) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 4) = self->_cellId;
  *(result + 30) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 14) = self->_wcdmaBand;
  *(result + 30) |= 0x800u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 5) = self->_dlUarfcn;
  *(result + 30) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 12) = self->_psc;
  *(result + 30) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_25:
  *(result + 10) = self->_numMncDigits;
  *(result + 30) |= 0x80u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_13:
  *(result + 6) = self->_hspa;
  *(result + 30) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  has = self->_has;
  v6 = *(equalCopy + 30);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_62;
    }
  }

  else if (v6)
  {
LABEL_62:
    v7 = 0;
    goto LABEL_63;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 30) & 0x400) == 0 || self->_subsId != *(equalCopy + 13))
    {
      goto LABEL_62;
    }
  }

  else if ((*(equalCopy + 30) & 0x400) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 30) & 0x100) == 0 || self->_numSubs != *(equalCopy + 11))
    {
      goto LABEL_62;
    }
  }

  else if ((*(equalCopy + 30) & 0x100) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_mcc != *(equalCopy + 8))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_mnc != *(equalCopy + 9))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_lac != *(equalCopy + 7))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_cellId != *(equalCopy + 4))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 30) & 0x800) == 0 || self->_wcdmaBand != *(equalCopy + 14))
    {
      goto LABEL_62;
    }
  }

  else if ((*(equalCopy + 30) & 0x800) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_dlUarfcn != *(equalCopy + 5))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 30) & 0x200) == 0 || self->_psc != *(equalCopy + 12))
    {
      goto LABEL_62;
    }
  }

  else if ((*(equalCopy + 30) & 0x200) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_numMncDigits != *(equalCopy + 10))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_hspa != *(equalCopy + 6))
    {
      goto LABEL_62;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 8) == 0;
  }

LABEL_63:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_subsId;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_numSubs;
    if ((has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_mcc;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_mnc;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_lac;
    if ((has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
  if ((has & 2) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_cellId;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_wcdmaBand;
    if ((has & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
  if ((has & 4) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_dlUarfcn;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_psc;
    if ((has & 0x80) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_23:
  v12 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v13 = 2654435761 * self->_numMncDigits;
  if ((has & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v14 = 2654435761 * self->_hspa;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 30);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 30);
    if ((v5 & 0x400) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*(fromCopy + 30) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  self->_subsId = *(fromCopy + 13);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_numSubs = *(fromCopy + 11);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_mcc = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_mnc = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_lac = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 30);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_cellId = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_wcdmaBand = *(fromCopy + 14);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 30);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_dlUarfcn = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_psc = *(fromCopy + 12);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  self->_numMncDigits = *(fromCopy + 10);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 30) & 8) != 0)
  {
LABEL_13:
    self->_hspa = *(fromCopy + 6);
    *&self->_has |= 8u;
  }

LABEL_14:
}

@end