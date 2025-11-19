@interface SecondaryComponentCarrier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)a3;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDlEarfcn:(BOOL)a3;
- (void)setHasDlRfBand:(BOOL)a3;
- (void)setHasHasUplink:(BOOL)a3;
- (void)setHasIndex:(BOOL)a3;
- (void)setHasPci:(BOOL)a3;
- (void)setHasRsrp:(BOOL)a3;
- (void)setHasRsrq:(BOOL)a3;
- (void)setHasRssi:(BOOL)a3;
- (void)setHasSnr:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)setHasUlBandwidth:(BOOL)a3;
- (void)setHasUlEarfcn:(BOOL)a3;
- (void)setHasUlRfBand:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SecondaryComponentCarrier

- (void)setHasIndex:(BOOL)a3
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

- (int)state
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_state;
  }

  else
  {
    return 0;
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
  if ([v3 isEqualToString:@"SCC_STATE_DECONFIGURED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SCC_STATE_CONFIGURED_DEACTIVATED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCC_STATE_ACTIVATED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPci:(BOOL)a3
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

- (void)setHasDlEarfcn:(BOOL)a3
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

- (void)setHasDlRfBand:(BOOL)a3
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

- (void)setHasHasUplink:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasUlEarfcn:(BOOL)a3
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

- (void)setHasUlRfBand:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasUlBandwidth:(BOOL)a3
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

- (void)setHasRsrp:(BOOL)a3
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

- (void)setHasRsrq:(BOOL)a3
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

- (void)setHasSnr:(BOOL)a3
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

- (void)setHasRssi:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = SecondaryComponentCarrier;
  v3 = [(SecondaryComponentCarrier *)&v7 description];
  v4 = [(SecondaryComponentCarrier *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_index];
    [v3 setObject:v7 forKey:@"index"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  if (state >= 3)
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_state];
  }

  else
  {
    v9 = *(&off_100318190 + state);
  }

  [v3 setObject:v9 forKey:@"state"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = [NSNumber numberWithUnsignedInt:self->_pci];
  [v3 setObject:v10 forKey:@"pci"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = [NSNumber numberWithUnsignedInt:self->_dlEarfcn];
  [v3 setObject:v11 forKey:@"dl_earfcn"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = [NSNumber numberWithUnsignedInt:self->_dlRfBand];
  [v3 setObject:v12 forKey:@"dl_rf_band"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = [NSNumber numberWithUnsignedInt:self->_dlBandwidth];
  [v3 setObject:v13 forKey:@"dl_bandwidth"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = [NSNumber numberWithBool:self->_hasUplink];
  [v3 setObject:v14 forKey:@"has_uplink"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = [NSNumber numberWithUnsignedInt:self->_ulEarfcn];
  [v3 setObject:v15 forKey:@"ul_earfcn"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = [NSNumber numberWithUnsignedInt:self->_ulRfBand];
  [v3 setObject:v16 forKey:@"ul_rf_band"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = [NSNumber numberWithUnsignedInt:self->_ulBandwidth];
  [v3 setObject:v17 forKey:@"ul_bandwidth"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = [NSNumber numberWithInt:self->_rsrp];
  [v3 setObject:v18 forKey:@"rsrp"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = [NSNumber numberWithInt:self->_rsrq];
  [v3 setObject:v19 forKey:@"rsrq"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_34:
  v20 = [NSNumber numberWithInt:self->_snr];
  [v3 setObject:v20 forKey:@"snr"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_15:
    v5 = [NSNumber numberWithInt:self->_rssi];
    [v3 setObject:v5 forKey:@"rssi"];
  }

LABEL_16:

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    index = self->_index;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  pci = self->_pci;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  dlEarfcn = self->_dlEarfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  dlRfBand = self->_dlRfBand;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  dlBandwidth = self->_dlBandwidth;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  hasUplink = self->_hasUplink;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  ulEarfcn = self->_ulEarfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  ulRfBand = self->_ulRfBand;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  ulBandwidth = self->_ulBandwidth;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  rsrp = self->_rsrp;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  rsrq = self->_rsrq;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  snr = self->_snr;
  PBDataWriterWriteSint32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_15:
    rssi = self->_rssi;
    PBDataWriterWriteSint32Field();
  }

LABEL_16:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[5] = self->_index;
    *(v4 + 32) |= 8u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v4[11] = self->_state;
  *(v4 + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4[6] = self->_pci;
  *(v4 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4[3] = self->_dlEarfcn;
  *(v4 + 32) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4[4] = self->_dlRfBand;
  *(v4 + 32) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4[2] = self->_dlBandwidth;
  *(v4 + 32) |= 1u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 60) = self->_hasUplink;
  *(v4 + 32) |= 0x2000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4[13] = self->_ulEarfcn;
  *(v4 + 32) |= 0x800u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4[14] = self->_ulRfBand;
  *(v4 + 32) |= 0x1000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4[12] = self->_ulBandwidth;
  *(v4 + 32) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4[7] = self->_rsrp;
  *(v4 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4[8] = self->_rsrq;
  *(v4 + 32) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v4[10] = self->_snr;
  *(v4 + 32) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_15:
    v4[9] = self->_rssi;
    *(v4 + 32) |= 0x80u;
  }

LABEL_16:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 5) = self->_index;
    *(result + 32) |= 8u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(result + 11) = self->_state;
  *(result + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 6) = self->_pci;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 3) = self->_dlEarfcn;
  *(result + 32) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 4) = self->_dlRfBand;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 2) = self->_dlBandwidth;
  *(result + 32) |= 1u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 60) = self->_hasUplink;
  *(result + 32) |= 0x2000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 13) = self->_ulEarfcn;
  *(result + 32) |= 0x800u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 14) = self->_ulRfBand;
  *(result + 32) |= 0x1000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 12) = self->_ulBandwidth;
  *(result + 32) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 7) = self->_rsrp;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 8) = self->_rsrq;
  *(result + 32) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_29:
  *(result + 10) = self->_snr;
  *(result + 32) |= 0x100u;
  if ((*&self->_has & 0x80) == 0)
  {
    return result;
  }

LABEL_15:
  *(result + 9) = self->_rssi;
  *(result + 32) |= 0x80u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_75;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_index != *(v4 + 5))
    {
      goto LABEL_75;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_75;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 32) & 0x200) == 0 || self->_state != *(v4 + 11))
    {
      goto LABEL_75;
    }
  }

  else if ((*(v4 + 32) & 0x200) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_pci != *(v4 + 6))
    {
      goto LABEL_75;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_dlEarfcn != *(v4 + 3))
    {
      goto LABEL_75;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_dlRfBand != *(v4 + 4))
    {
      goto LABEL_75;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_75;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_dlBandwidth != *(v4 + 2))
    {
      goto LABEL_75;
    }
  }

  else if (v6)
  {
    goto LABEL_75;
  }

  if ((*&self->_has & 0x2000) == 0)
  {
    if ((*(v4 + 32) & 0x2000) == 0)
    {
      goto LABEL_34;
    }

LABEL_75:
    v8 = 0;
    goto LABEL_76;
  }

  if ((*(v4 + 32) & 0x2000) == 0)
  {
    goto LABEL_75;
  }

  v7 = *(v4 + 60);
  if (self->_hasUplink)
  {
    if ((*(v4 + 60) & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_75;
  }

LABEL_34:
  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 32) & 0x800) == 0 || self->_ulEarfcn != *(v4 + 13))
    {
      goto LABEL_75;
    }
  }

  else if ((*(v4 + 32) & 0x800) != 0)
  {
    goto LABEL_75;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 32) & 0x1000) == 0 || self->_ulRfBand != *(v4 + 14))
    {
      goto LABEL_75;
    }
  }

  else if ((*(v4 + 32) & 0x1000) != 0)
  {
    goto LABEL_75;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 32) & 0x400) == 0 || self->_ulBandwidth != *(v4 + 12))
    {
      goto LABEL_75;
    }
  }

  else if ((*(v4 + 32) & 0x400) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_rsrp != *(v4 + 7))
    {
      goto LABEL_75;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_rsrq != *(v4 + 8))
    {
      goto LABEL_75;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_75;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 32) & 0x100) == 0 || self->_snr != *(v4 + 10))
    {
      goto LABEL_75;
    }
  }

  else if ((*(v4 + 32) & 0x100) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_rssi != *(v4 + 9))
    {
      goto LABEL_75;
    }

    v8 = 1;
  }

  else
  {
    v8 = (v6 & 0x80) == 0;
  }

LABEL_76:

  return v8;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    v3 = 2654435761 * self->_index;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_state;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_pci;
    if ((has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if ((has & 2) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_dlEarfcn;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_dlRfBand;
    if (has)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if (has)
  {
LABEL_7:
    v8 = 2654435761 * self->_dlBandwidth;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_hasUplink;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_ulEarfcn;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_ulRfBand;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_ulBandwidth;
    if ((has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_rsrp;
    if ((has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_rsrq;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v15 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v16 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_27:
  v14 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = 2654435761 * self->_snr;
  if ((has & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = 2654435761 * self->_rssi;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 8) != 0)
  {
    self->_index = *(v4 + 5);
    *&self->_has |= 8u;
    v5 = *(v4 + 32);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(v4 + 32) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(v4 + 11);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_pci = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 32);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_dlEarfcn = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_dlRfBand = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 32);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_dlBandwidth = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 32);
  if ((v5 & 0x2000) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_hasUplink = *(v4 + 60);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_ulEarfcn = *(v4 + 13);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 32);
  if ((v5 & 0x1000) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_ulRfBand = *(v4 + 14);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_ulBandwidth = *(v4 + 12);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_rsrp = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_rsrq = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  self->_snr = *(v4 + 10);
  *&self->_has |= 0x100u;
  if ((*(v4 + 32) & 0x80) != 0)
  {
LABEL_15:
    self->_rssi = *(v4 + 9);
    *&self->_has |= 0x80u;
  }

LABEL_16:
}

@end