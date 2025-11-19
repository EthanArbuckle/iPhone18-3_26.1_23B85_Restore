@interface RbData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRlcMode:(id)a3;
- (int)rlcMode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDlDataBytes:(BOOL)a3;
- (void)setHasDlHcEnabled:(BOOL)a3;
- (void)setHasDlHcPdus:(BOOL)a3;
- (void)setHasDlLastXSecTotalBytes:(BOOL)a3;
- (void)setHasDlLastXSecTotalPdus:(BOOL)a3;
- (void)setHasDlTotalPdus:(BOOL)a3;
- (void)setHasHcDecFailPdus:(BOOL)a3;
- (void)setHasQos:(BOOL)a3;
- (void)setHasRb:(BOOL)a3;
- (void)setHasRlcMode:(BOOL)a3;
- (void)setHasUlDataBytes:(BOOL)a3;
- (void)setHasUlDiscardBytes:(BOOL)a3;
- (void)setHasUlDiscardPdus:(BOOL)a3;
- (void)setHasUlDiscardSduBytes:(BOOL)a3;
- (void)setHasUlDiscardSdus:(BOOL)a3;
- (void)setHasUlLastXSecDiscardBytes:(BOOL)a3;
- (void)setHasUlLastXSecDiscardPdus:(BOOL)a3;
- (void)setHasUlLastXSecTotalBytes:(BOOL)a3;
- (void)setHasUlLastXSecTotalPdus:(BOOL)a3;
- (void)setHasUlTotalPdus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RbData

- (void)setHasQos:(BOOL)a3
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

- (void)setHasRb:(BOOL)a3
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

- (void)setHasUlDataBytes:(BOOL)a3
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

- (void)setHasDlDataBytes:(BOOL)a3
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

- (void)setHasUlDiscardSduBytes:(BOOL)a3
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

- (void)setHasUlDiscardBytes:(BOOL)a3
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

- (void)setHasDlTotalPdus:(BOOL)a3
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

- (void)setHasDlHcPdus:(BOOL)a3
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

- (void)setHasHcDecFailPdus:(BOOL)a3
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

- (void)setHasUlLastXSecTotalPdus:(BOOL)a3
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

- (void)setHasUlLastXSecTotalBytes:(BOOL)a3
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

- (void)setHasUlLastXSecDiscardBytes:(BOOL)a3
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

- (void)setHasUlLastXSecDiscardPdus:(BOOL)a3
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

- (void)setHasDlHcEnabled:(BOOL)a3
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

- (int)rlcMode
{
  if ((*(&self->_has + 1) & 2) != 0)
  {
    return self->_rlcMode;
  }

  else
  {
    return 1;
  }
}

- (void)setHasRlcMode:(BOOL)a3
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

- (int)StringAsRlcMode:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"AM"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"UM"])
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

- (void)setHasUlDiscardSdus:(BOOL)a3
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

- (void)setHasUlDiscardPdus:(BOOL)a3
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

- (void)setHasUlTotalPdus:(BOOL)a3
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

- (void)setHasDlLastXSecTotalPdus:(BOOL)a3
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

- (void)setHasDlLastXSecTotalBytes:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = RbData;
  v3 = [(RbData *)&v7 description];
  v4 = [(RbData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_qos];
    [v3 setObject:v7 forKey:@"qos"];

    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_rb];
  [v3 setObject:v8 forKey:@"rb"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_4:
    if ((*&has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = [NSNumber numberWithUnsignedInt:self->_ulDataBytes];
  [v3 setObject:v9 forKey:@"ul_data_bytes"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v10 = [NSNumber numberWithUnsignedInt:self->_dlDataBytes];
  [v3 setObject:v10 forKey:@"dl_data_bytes"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = [NSNumber numberWithUnsignedInt:self->_ulDiscardSduBytes];
  [v3 setObject:v11 forKey:@"ul_discard_sdu_bytes"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = [NSNumber numberWithUnsignedInt:self->_ulDiscardBytes];
  [v3 setObject:v12 forKey:@"ul_discard_bytes"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = [NSNumber numberWithUnsignedInt:self->_dlCtrlPdus];
  [v3 setObject:v13 forKey:@"dl_ctrl_pdus"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = [NSNumber numberWithUnsignedInt:self->_dlTotalPdus];
  [v3 setObject:v14 forKey:@"dl_total_pdus"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = [NSNumber numberWithUnsignedInt:self->_dlHcPdus];
  [v3 setObject:v15 forKey:@"dl_hc_pdus"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = [NSNumber numberWithUnsignedInt:self->_hcDecFailPdus];
  [v3 setObject:v16 forKey:@"hc_dec_fail_pdus"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v17 = [NSNumber numberWithUnsignedInt:self->_ulLastXSecTotalPdus];
  [v3 setObject:v17 forKey:@"ul_last_x_sec_total_pdus"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = [NSNumber numberWithUnsignedInt:self->_ulLastXSecTotalBytes];
  [v3 setObject:v18 forKey:@"ul_last_x_sec_total_bytes"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = [NSNumber numberWithUnsignedInt:self->_ulLastXSecDiscardBytes];
  [v3 setObject:v19 forKey:@"ul_last_x_sec_discard_bytes"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = [NSNumber numberWithUnsignedInt:self->_ulLastXSecDiscardPdus];
  [v3 setObject:v20 forKey:@"ul_last_x_sec_discard_pdus"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v21 = [NSNumber numberWithBool:self->_dlHcEnabled];
  [v3 setObject:v21 forKey:@"dl_hc_enabled"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_41:
  rlcMode = self->_rlcMode;
  if (rlcMode == 1)
  {
    v23 = @"AM";
  }

  else if (rlcMode == 2)
  {
    v23 = @"UM";
  }

  else
  {
    v23 = [NSString stringWithFormat:@"(unknown: %i)", self->_rlcMode];
  }

  [v3 setObject:v23 forKey:@"rlc_mode"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  v24 = [NSNumber numberWithUnsignedInt:self->_ulDiscardSdus];
  [v3 setObject:v24 forKey:@"ul_discard_sdus"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_19:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  v25 = [NSNumber numberWithUnsignedInt:self->_ulDiscardPdus];
  [v3 setObject:v25 forKey:@"ul_discard_pdus"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_20:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  v26 = [NSNumber numberWithUnsignedInt:self->_ulTotalPdus];
  [v3 setObject:v26 forKey:@"ul_total_pdus"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_21:
    if ((*&has & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_50:
  v27 = [NSNumber numberWithUnsignedInt:self->_dlLastXSecTotalPdus];
  [v3 setObject:v27 forKey:@"dl_last_x_sec_total_pdus"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_22:
    v5 = [NSNumber numberWithUnsignedInt:self->_dlLastXSecTotalBytes];
    [v3 setObject:v5 forKey:@"dl_last_x_sec_total_bytes"];
  }

LABEL_23:

  return v3;
}

- (void)writeTo:(id)a3
{
  v26 = a3;
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    qos = self->_qos;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  rb = self->_rb;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_4:
    if ((*&has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  ulDataBytes = self->_ulDataBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  dlDataBytes = self->_dlDataBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  ulDiscardSduBytes = self->_ulDiscardSduBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  ulDiscardBytes = self->_ulDiscardBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  dlCtrlPdus = self->_dlCtrlPdus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  dlTotalPdus = self->_dlTotalPdus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  dlHcPdus = self->_dlHcPdus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  hcDecFailPdus = self->_hcDecFailPdus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  ulLastXSecTotalPdus = self->_ulLastXSecTotalPdus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  ulLastXSecTotalBytes = self->_ulLastXSecTotalBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  ulLastXSecDiscardBytes = self->_ulLastXSecDiscardBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  ulLastXSecDiscardPdus = self->_ulLastXSecDiscardPdus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  dlHcEnabled = self->_dlHcEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  rlcMode = self->_rlcMode;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  ulDiscardSdus = self->_ulDiscardSdus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_19:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  ulDiscardPdus = self->_ulDiscardPdus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_20:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  ulTotalPdus = self->_ulTotalPdus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_21:
    if ((*&has & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  dlLastXSecTotalPdus = self->_dlLastXSecTotalPdus;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_22:
    dlLastXSecTotalBytes = self->_dlLastXSecTotalBytes;
    PBDataWriterWriteUint32Field();
  }

LABEL_23:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v4[9] = self->_qos;
    v4[23] |= 0x80u;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v4[10] = self->_rb;
  v4[23] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_4:
    if ((*&has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4[12] = self->_ulDataBytes;
  v4[23] |= 0x400u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4[3] = self->_dlDataBytes;
  v4[23] |= 2u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4[15] = self->_ulDiscardSduBytes;
  v4[23] |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v4[13] = self->_ulDiscardBytes;
  v4[23] |= 0x800u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v4[2] = self->_dlCtrlPdus;
  v4[23] |= 1u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v4[7] = self->_dlTotalPdus;
  v4[23] |= 0x20u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v4[4] = self->_dlHcPdus;
  v4[23] |= 4u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v4[8] = self->_hcDecFailPdus;
  v4[23] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v4[20] = self->_ulLastXSecTotalPdus;
  v4[23] |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v4[19] = self->_ulLastXSecTotalBytes;
  v4[23] |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v4[17] = self->_ulLastXSecDiscardBytes;
  v4[23] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v4[18] = self->_ulLastXSecDiscardPdus;
  v4[23] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v4 + 88) = self->_dlHcEnabled;
  v4[23] |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v4[11] = self->_rlcMode;
  v4[23] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v4[16] = self->_ulDiscardSdus;
  v4[23] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_19:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v4[14] = self->_ulDiscardPdus;
  v4[23] |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_20:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v4[21] = self->_ulTotalPdus;
  v4[23] |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_21:
    if ((*&has & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  v4[6] = self->_dlLastXSecTotalPdus;
  v4[23] |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_22:
    v4[5] = self->_dlLastXSecTotalBytes;
    v4[23] |= 8u;
  }

LABEL_23:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    *(result + 9) = self->_qos;
    *(result + 23) |= 0x80u;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(result + 10) = self->_rb;
  *(result + 23) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_4:
    if ((*&has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 12) = self->_ulDataBytes;
  *(result + 23) |= 0x400u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 3) = self->_dlDataBytes;
  *(result + 23) |= 2u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 15) = self->_ulDiscardSduBytes;
  *(result + 23) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 13) = self->_ulDiscardBytes;
  *(result + 23) |= 0x800u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 2) = self->_dlCtrlPdus;
  *(result + 23) |= 1u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 7) = self->_dlTotalPdus;
  *(result + 23) |= 0x20u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 4) = self->_dlHcPdus;
  *(result + 23) |= 4u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 8) = self->_hcDecFailPdus;
  *(result + 23) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 20) = self->_ulLastXSecTotalPdus;
  *(result + 23) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 19) = self->_ulLastXSecTotalBytes;
  *(result + 23) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 17) = self->_ulLastXSecDiscardBytes;
  *(result + 23) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 18) = self->_ulLastXSecDiscardPdus;
  *(result + 23) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 88) = self->_dlHcEnabled;
  *(result + 23) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 11) = self->_rlcMode;
  *(result + 23) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 16) = self->_ulDiscardSdus;
  *(result + 23) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_19:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 14) = self->_ulDiscardPdus;
  *(result + 23) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_20:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 21) = self->_ulTotalPdus;
  *(result + 23) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_21:
    if ((*&has & 8) == 0)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_43:
  *(result + 6) = self->_dlLastXSecTotalPdus;
  *(result + 23) |= 0x10u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_22:
  *(result + 5) = self->_dlLastXSecTotalBytes;
  *(result + 23) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_110;
  }

  has = self->_has;
  v6 = *(v4 + 23);
  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_qos != *(v4 + 9))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_rb != *(v4 + 10))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_ulDataBytes != *(v4 + 12))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_dlDataBytes != *(v4 + 3))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_ulDiscardSduBytes != *(v4 + 15))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_ulDiscardBytes != *(v4 + 13))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_110;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_dlCtrlPdus != *(v4 + 2))
    {
      goto LABEL_110;
    }
  }

  else if (v6)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_dlTotalPdus != *(v4 + 7))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_dlHcPdus != *(v4 + 4))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_hcDecFailPdus != *(v4 + 8))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_ulLastXSecTotalPdus != *(v4 + 20))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_ulLastXSecTotalBytes != *(v4 + 19))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_ulLastXSecDiscardBytes != *(v4 + 17))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_ulLastXSecDiscardPdus != *(v4 + 18))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x100000) == 0)
  {
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_74;
    }

LABEL_110:
    v8 = 0;
    goto LABEL_111;
  }

  if ((v6 & 0x100000) == 0)
  {
    goto LABEL_110;
  }

  v7 = *(v4 + 88);
  if (self->_dlHcEnabled)
  {
    if ((*(v4 + 88) & 1) == 0)
    {
      goto LABEL_110;
    }
  }

  else if (*(v4 + 88))
  {
    goto LABEL_110;
  }

LABEL_74:
  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_rlcMode != *(v4 + 11))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_ulDiscardSdus != *(v4 + 16))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_ulDiscardPdus != *(v4 + 14))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_ulTotalPdus != *(v4 + 21))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_dlLastXSecTotalPdus != *(v4 + 6))
    {
      goto LABEL_110;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_dlLastXSecTotalBytes != *(v4 + 5))
    {
      goto LABEL_110;
    }

    v8 = 1;
  }

  else
  {
    v8 = (*(v4 + 23) & 8) == 0;
  }

LABEL_111:

  return v8;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v3 = 2654435761 * self->_qos;
    if ((*&has & 0x100) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_rb;
      if ((*&has & 0x400) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_ulDataBytes;
    if ((*&has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_dlDataBytes;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_ulDiscardSduBytes;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_ulDiscardBytes;
    if (*&has)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if (*&has)
  {
LABEL_8:
    v9 = 2654435761 * self->_dlCtrlPdus;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_dlTotalPdus;
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
    v11 = 2654435761 * self->_dlHcPdus;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_hcDecFailPdus;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_ulLastXSecTotalPdus;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_ulLastXSecTotalBytes;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_ulLastXSecDiscardBytes;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x10000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_ulLastXSecDiscardPdus;
  if ((*&has & 0x100000) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_dlHcEnabled;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x200) != 0)
  {
    v18 = 2654435761 * self->_rlcMode;
    if ((*&has & 0x4000) != 0)
    {
LABEL_34:
      v19 = 2654435761 * self->_ulDiscardSdus;
      if ((*&has & 0x1000) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_35:
    v20 = 2654435761 * self->_ulDiscardPdus;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_36:
    v21 = 2654435761 * self->_ulTotalPdus;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_37;
    }

LABEL_43:
    v22 = 0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_38;
    }

LABEL_44:
    v23 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
  }

LABEL_42:
  v21 = 0;
  if ((*&has & 0x10) == 0)
  {
    goto LABEL_43;
  }

LABEL_37:
  v22 = 2654435761 * self->_dlLastXSecTotalPdus;
  if ((*&has & 8) == 0)
  {
    goto LABEL_44;
  }

LABEL_38:
  v23 = 2654435761 * self->_dlLastXSecTotalBytes;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 23);
  if ((v5 & 0x80) != 0)
  {
    self->_qos = *(v4 + 9);
    *&self->_has |= 0x80u;
    v5 = *(v4 + 23);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_rb = *(v4 + 10);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 23);
  if ((v5 & 0x400) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_ulDataBytes = *(v4 + 12);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 23);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_dlDataBytes = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 23);
  if ((v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_ulDiscardSduBytes = *(v4 + 15);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 23);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_ulDiscardBytes = *(v4 + 13);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 23);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_dlCtrlPdus = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 23);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_dlTotalPdus = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 23);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_dlHcPdus = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 23);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_hcDecFailPdus = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 23);
  if ((v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_ulLastXSecTotalPdus = *(v4 + 20);
  *&self->_has |= 0x40000u;
  v5 = *(v4 + 23);
  if ((v5 & 0x20000) == 0)
  {
LABEL_13:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_ulLastXSecTotalBytes = *(v4 + 19);
  *&self->_has |= 0x20000u;
  v5 = *(v4 + 23);
  if ((v5 & 0x8000) == 0)
  {
LABEL_14:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_ulLastXSecDiscardBytes = *(v4 + 17);
  *&self->_has |= 0x8000u;
  v5 = *(v4 + 23);
  if ((v5 & 0x10000) == 0)
  {
LABEL_15:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_ulLastXSecDiscardPdus = *(v4 + 18);
  *&self->_has |= 0x10000u;
  v5 = *(v4 + 23);
  if ((v5 & 0x100000) == 0)
  {
LABEL_16:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_dlHcEnabled = *(v4 + 88);
  *&self->_has |= 0x100000u;
  v5 = *(v4 + 23);
  if ((v5 & 0x200) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_rlcMode = *(v4 + 11);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 23);
  if ((v5 & 0x4000) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_ulDiscardSdus = *(v4 + 16);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 23);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_ulDiscardPdus = *(v4 + 14);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 23);
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_ulTotalPdus = *(v4 + 21);
  *&self->_has |= 0x80000u;
  v5 = *(v4 + 23);
  if ((v5 & 0x10) == 0)
  {
LABEL_21:
    if ((v5 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  self->_dlLastXSecTotalPdus = *(v4 + 6);
  *&self->_has |= 0x10u;
  if ((*(v4 + 23) & 8) != 0)
  {
LABEL_22:
    self->_dlLastXSecTotalBytes = *(v4 + 5);
    *&self->_has |= 8u;
  }

LABEL_23:
}

@end