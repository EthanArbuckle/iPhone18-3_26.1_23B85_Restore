@interface KCellularGsmScellInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsGsmBand:(id)a3;
- (int)StringAsState:(id)a3;
- (int)gsmBand;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasArfcn:(BOOL)a3;
- (void)setHasBsic:(BOOL)a3;
- (void)setHasCellId:(BOOL)a3;
- (void)setHasGsmBand:(BOOL)a3;
- (void)setHasLac:(BOOL)a3;
- (void)setHasMcc:(BOOL)a3;
- (void)setHasMnc:(BOOL)a3;
- (void)setHasNumMncDigits:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularGsmScellInfo

- (void)setHasMcc:(BOOL)a3
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

- (void)setHasMnc:(BOOL)a3
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

- (void)setHasLac:(BOOL)a3
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

- (void)setHasCellId:(BOOL)a3
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

- (int)gsmBand
{
  if ((*&self->_has & 0x10) != 0)
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
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

- (void)setHasArfcn:(BOOL)a3
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

- (void)setHasBsic:(BOOL)a3
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

- (int)state
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_state;
  }

  else
  {
    return 1;
  }
}

- (void)setHasState:(BOOL)a3
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

- (int)StringAsState:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"DEDICATED_STATE"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"NON_DEDICATED_STATE"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasNumMncDigits:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularGsmScellInfo;
  v3 = [(KCellularGsmScellInfo *)&v7 description];
  v4 = [(KCellularGsmScellInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_mcc];
  [v3 setObject:v8 forKey:@"mcc"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = [NSNumber numberWithUnsignedInt:self->_mnc];
  [v3 setObject:v9 forKey:@"mnc"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = [NSNumber numberWithUnsignedInt:self->_lac];
  [v3 setObject:v10 forKey:@"lac"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v11 forKey:@"cell_id"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_101;
  }

LABEL_21:
  v12 = @"SYS_BAND_BC0";
  switch(self->_gsmBand)
  {
    case 0:
      break;
    case 1:
      v12 = @"SYS_BAND_BC1";
      break;
    case 3:
      v12 = @"SYS_BAND_BC3";
      break;
    case 4:
      v12 = @"SYS_BAND_BC4";
      break;
    case 5:
      v12 = @"SYS_BAND_BC5";
      break;
    case 6:
      v12 = @"SYS_BAND_BC6";
      break;
    case 7:
      v12 = @"SYS_BAND_BC7";
      break;
    case 8:
      v12 = @"SYS_BAND_BC8";
      break;
    case 9:
      v12 = @"SYS_BAND_BC9";
      break;
    case 0xA:
      v12 = @"SYS_BAND_BC10";
      break;
    case 0xB:
      v12 = @"SYS_BAND_BC11";
      break;
    case 0xC:
      v12 = @"SYS_BAND_BC12";
      break;
    case 0xD:
      v12 = @"SYS_BAND_BC13";
      break;
    case 0xE:
      v12 = @"SYS_BAND_BC14";
      break;
    case 0xF:
      v12 = @"SYS_BAND_BC15";
      break;
    case 0x10:
      v12 = @"SYS_BAND_BC16";
      break;
    case 0x11:
      v12 = @"SYS_BAND_BC17";
      break;
    case 0x12:
      v12 = @"SYS_BAND_BC18";
      break;
    case 0x13:
      v12 = @"SYS_BAND_BC19";
      break;
    case 0x28:
      v12 = @"SYS_BAND_GSM_450";
      break;
    case 0x29:
      v12 = @"SYS_BAND_GSM_480";
      break;
    case 0x2A:
      v12 = @"SYS_BAND_GSM_750";
      break;
    case 0x2B:
      v12 = @"SYS_BAND_GSM_850";
      break;
    case 0x2C:
      v12 = @"SYS_BAND_GSM_EGSM_900";
      break;
    case 0x2D:
      v12 = @"SYS_BAND_GSM_PGSM_900";
      break;
    case 0x2E:
      v12 = @"SYS_BAND_GSM_RGSM_900";
      break;
    case 0x2F:
      v12 = @"SYS_BAND_GSM_DCS_1800";
      break;
    case 0x30:
      v12 = @"SYS_BAND_GSM_PCS_1900";
      break;
    case 0x50:
      v12 = @"SYS_BAND_WCDMA_I_IMT_2000";
      break;
    case 0x51:
      v12 = @"SYS_BAND_WCDMA_II_PCS_1900";
      break;
    case 0x52:
      v12 = @"SYS_BAND_WCDMA_III_1700";
      break;
    case 0x53:
      v12 = @"SYS_BAND_WCDMA_IV_1700";
      break;
    case 0x54:
      v12 = @"SYS_BAND_WCDMA_V_850";
      break;
    case 0x55:
      v12 = @"SYS_BAND_WCDMA_VI_800";
      break;
    case 0x56:
      v12 = @"SYS_BAND_WCDMA_VII_2600";
      break;
    case 0x57:
      v12 = @"SYS_BAND_WCDMA_VIII_900";
      break;
    case 0x58:
      v12 = @"SYS_BAND_WCDMA_IX_1700";
      break;
    case 0x5A:
      v12 = @"SYS_BAND_WCDMA_XI_1500";
      break;
    case 0x5B:
      v12 = @"SYS_BAND_WCDMA_XIX_850";
      break;
    case 0x78:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND1";
      break;
    case 0x79:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND2";
      break;
    case 0x7A:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND3";
      break;
    case 0x7B:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND4";
      break;
    case 0x7C:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND5";
      break;
    case 0x7D:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND6";
      break;
    case 0x7E:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND7";
      break;
    case 0x7F:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND8";
      break;
    case 0x80:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND9";
      break;
    case 0x81:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND10";
      break;
    case 0x82:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND11";
      break;
    case 0x83:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND12";
      break;
    case 0x84:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND13";
      break;
    case 0x85:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND14";
      break;
    case 0x88:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND17";
      break;
    case 0x89:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND18";
      break;
    case 0x8A:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND19";
      break;
    case 0x8B:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND20";
      break;
    case 0x8C:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND21";
      break;
    case 0x8F:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND24";
      break;
    case 0x90:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND25";
      break;
    case 0x91:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND26";
      break;
    case 0x98:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND33";
      break;
    case 0x99:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND34";
      break;
    case 0x9A:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND35";
      break;
    case 0x9B:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND36";
      break;
    case 0x9C:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND37";
      break;
    case 0x9D:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND38";
      break;
    case 0x9E:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND39";
      break;
    case 0x9F:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND40";
      break;
    case 0xA0:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND41";
      break;
    case 0xA1:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND42";
      break;
    case 0xA2:
      v12 = @"SYS_BAND_LTE_EUTRAN_BAND43";
      break;
    case 0xA3:
      v12 = @"SYS_BAND_UMTS_BAND1";
      break;
    case 0xA4:
      v12 = @"SYS_BAND_UMTS_BAND2";
      break;
    case 0xA5:
      v12 = @"SYS_BAND_UMTS_BAND3";
      break;
    case 0xA6:
      v12 = @"SYS_BAND_UMTS_BAND4";
      break;
    case 0xA7:
      v12 = @"SYS_BAND_UMTS_BAND5";
      break;
    case 0xA8:
      v12 = @"SYS_BAND_UMTS_BAND6";
      break;
    default:
      v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_gsmBand];
      break;
  }

  [v3 setObject:v12 forKey:@"gsm_band"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_102;
  }

LABEL_101:
  v13 = [NSNumber numberWithUnsignedInt:self->_arfcn];
  [v3 setObject:v13 forKey:@"arfcn"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_103;
  }

LABEL_102:
  v14 = [NSNumber numberWithUnsignedInt:self->_bsic];
  [v3 setObject:v14 forKey:@"bsic"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_109;
  }

LABEL_103:
  state = self->_state;
  if (state == 1)
  {
    v16 = @"DEDICATED_STATE";
  }

  else if (state == 2)
  {
    v16 = @"NON_DEDICATED_STATE";
  }

  else
  {
    v16 = [NSString stringWithFormat:@"(unknown: %i)", self->_state];
  }

  [v3 setObject:v16 forKey:@"state"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_109:
  v17 = [NSNumber numberWithUnsignedInt:self->_numMncDigits];
  [v3 setObject:v17 forKey:@"num_mnc_digits"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    v5 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_13:

  return v3;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  mcc = self->_mcc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  mnc = self->_mnc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  lac = self->_lac;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  gsmBand = self->_gsmBand;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  arfcn = self->_arfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  bsic = self->_bsic;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  state = self->_state;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  numMncDigits = self->_numMncDigits;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_13:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 28) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 9) = self->_mcc;
  *(v4 + 28) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 10) = self->_mnc;
  *(v4 + 28) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 8) = self->_lac;
  *(v4 + 28) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 6) = self->_cellId;
  *(v4 + 28) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 7) = self->_gsmBand;
  *(v4 + 28) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 4) = self->_arfcn;
  *(v4 + 28) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 5) = self->_bsic;
  *(v4 + 28) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 12) = self->_state;
  *(v4 + 28) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  *(v4 + 11) = self->_numMncDigits;
  *(v4 + 28) |= 0x100u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    *(v4 + 13) = self->_subsId;
    *(v4 + 28) |= 0x400u;
  }

LABEL_13:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 9) = self->_mcc;
  *(result + 28) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 10) = self->_mnc;
  *(result + 28) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 8) = self->_lac;
  *(result + 28) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 6) = self->_cellId;
  *(result + 28) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 7) = self->_gsmBand;
  *(result + 28) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 4) = self->_arfcn;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 5) = self->_bsic;
  *(result + 28) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 12) = self->_state;
  *(result + 28) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_23:
  *(result + 11) = self->_numMncDigits;
  *(result + 28) |= 0x100u;
  if ((*&self->_has & 0x400) == 0)
  {
    return result;
  }

LABEL_12:
  *(result + 13) = self->_subsId;
  *(result + 28) |= 0x400u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  has = self->_has;
  v6 = *(v4 + 28);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_57;
    }
  }

  else if (v6)
  {
LABEL_57:
    v7 = 0;
    goto LABEL_58;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_mcc != *(v4 + 9))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_mnc != *(v4 + 10))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_lac != *(v4 + 8))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_cellId != *(v4 + 6))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_gsmBand != *(v4 + 7))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_arfcn != *(v4 + 4))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_bsic != *(v4 + 5))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_57;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 28) & 0x200) == 0 || self->_state != *(v4 + 12))
    {
      goto LABEL_57;
    }
  }

  else if ((*(v4 + 28) & 0x200) != 0)
  {
    goto LABEL_57;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 28) & 0x100) == 0 || self->_numMncDigits != *(v4 + 11))
    {
      goto LABEL_57;
    }
  }

  else if ((*(v4 + 28) & 0x100) != 0)
  {
    goto LABEL_57;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 28) & 0x400) == 0 || self->_subsId != *(v4 + 13))
    {
      goto LABEL_57;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x400) == 0;
  }

LABEL_58:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 0x40) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_mcc;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_mnc;
    if ((has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_lac;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_cellId;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_gsmBand;
    if ((has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
  if ((has & 2) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_arfcn;
    if ((has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((has & 4) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_bsic;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_state;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v12 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_21:
  v11 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = 2654435761 * self->_numMncDigits;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v13 = 2654435761 * self->_subsId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
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
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_mcc = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 28);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_mnc = *(v4 + 10);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_lac = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_cellId = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_gsmBand = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 28);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_arfcn = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 28);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_bsic = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_state = *(v4 + 12);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  self->_numMncDigits = *(v4 + 11);
  *&self->_has |= 0x100u;
  if ((*(v4 + 28) & 0x400) != 0)
  {
LABEL_12:
    self->_subsId = *(v4 + 13);
    *&self->_has |= 0x400u;
  }

LABEL_13:
}

@end