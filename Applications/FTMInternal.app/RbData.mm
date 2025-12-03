@interface RbData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRlcMode:(id)mode;
- (int)rlcMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDlDataBytes:(BOOL)bytes;
- (void)setHasDlHcEnabled:(BOOL)enabled;
- (void)setHasDlHcPdus:(BOOL)pdus;
- (void)setHasDlLastXSecTotalBytes:(BOOL)bytes;
- (void)setHasDlLastXSecTotalPdus:(BOOL)pdus;
- (void)setHasDlTotalPdus:(BOOL)pdus;
- (void)setHasHcDecFailPdus:(BOOL)pdus;
- (void)setHasQos:(BOOL)qos;
- (void)setHasRb:(BOOL)rb;
- (void)setHasRlcMode:(BOOL)mode;
- (void)setHasUlDataBytes:(BOOL)bytes;
- (void)setHasUlDiscardBytes:(BOOL)bytes;
- (void)setHasUlDiscardPdus:(BOOL)pdus;
- (void)setHasUlDiscardSduBytes:(BOOL)bytes;
- (void)setHasUlDiscardSdus:(BOOL)sdus;
- (void)setHasUlLastXSecDiscardBytes:(BOOL)bytes;
- (void)setHasUlLastXSecDiscardPdus:(BOOL)pdus;
- (void)setHasUlLastXSecTotalBytes:(BOOL)bytes;
- (void)setHasUlLastXSecTotalPdus:(BOOL)pdus;
- (void)setHasUlTotalPdus:(BOOL)pdus;
- (void)writeTo:(id)to;
@end

@implementation RbData

- (void)setHasQos:(BOOL)qos
{
  if (qos)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasRb:(BOOL)rb
{
  if (rb)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasUlDataBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasDlDataBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasUlDiscardSduBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasUlDiscardBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasDlTotalPdus:(BOOL)pdus
{
  if (pdus)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasDlHcPdus:(BOOL)pdus
{
  if (pdus)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasHcDecFailPdus:(BOOL)pdus
{
  if (pdus)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasUlLastXSecTotalPdus:(BOOL)pdus
{
  if (pdus)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasUlLastXSecTotalBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasUlLastXSecDiscardBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasUlLastXSecDiscardPdus:(BOOL)pdus
{
  if (pdus)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasDlHcEnabled:(BOOL)enabled
{
  if (enabled)
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

- (void)setHasRlcMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (int)StringAsRlcMode:(id)mode
{
  modeCopy = mode;
  v4 = 1;
  if (([modeCopy isEqualToString:@"AM"] & 1) == 0)
  {
    if ([modeCopy isEqualToString:@"UM"])
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

- (void)setHasUlDiscardSdus:(BOOL)sdus
{
  if (sdus)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasUlDiscardPdus:(BOOL)pdus
{
  if (pdus)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasUlTotalPdus:(BOOL)pdus
{
  if (pdus)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasDlLastXSecTotalPdus:(BOOL)pdus
{
  if (pdus)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasDlLastXSecTotalBytes:(BOOL)bytes
{
  if (bytes)
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
  dictionaryRepresentation = [(RbData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    toCopy[9] = self->_qos;
    toCopy[23] |= 0x80u;
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

  toCopy[10] = self->_rb;
  toCopy[23] |= 0x100u;
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
  toCopy[12] = self->_ulDataBytes;
  toCopy[23] |= 0x400u;
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
  toCopy[3] = self->_dlDataBytes;
  toCopy[23] |= 2u;
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
  toCopy[15] = self->_ulDiscardSduBytes;
  toCopy[23] |= 0x2000u;
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
  toCopy[13] = self->_ulDiscardBytes;
  toCopy[23] |= 0x800u;
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
  toCopy[2] = self->_dlCtrlPdus;
  toCopy[23] |= 1u;
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
  toCopy[7] = self->_dlTotalPdus;
  toCopy[23] |= 0x20u;
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
  toCopy[4] = self->_dlHcPdus;
  toCopy[23] |= 4u;
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
  toCopy[8] = self->_hcDecFailPdus;
  toCopy[23] |= 0x40u;
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
  toCopy[20] = self->_ulLastXSecTotalPdus;
  toCopy[23] |= 0x40000u;
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
  toCopy[19] = self->_ulLastXSecTotalBytes;
  toCopy[23] |= 0x20000u;
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
  toCopy[17] = self->_ulLastXSecDiscardBytes;
  toCopy[23] |= 0x8000u;
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
  toCopy[18] = self->_ulLastXSecDiscardPdus;
  toCopy[23] |= 0x10000u;
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
  *(toCopy + 88) = self->_dlHcEnabled;
  toCopy[23] |= 0x100000u;
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
  toCopy[11] = self->_rlcMode;
  toCopy[23] |= 0x200u;
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
  toCopy[16] = self->_ulDiscardSdus;
  toCopy[23] |= 0x4000u;
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
  toCopy[14] = self->_ulDiscardPdus;
  toCopy[23] |= 0x1000u;
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
  toCopy[21] = self->_ulTotalPdus;
  toCopy[23] |= 0x80000u;
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
  toCopy[6] = self->_dlLastXSecTotalPdus;
  toCopy[23] |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_22:
    toCopy[5] = self->_dlLastXSecTotalBytes;
    toCopy[23] |= 8u;
  }

LABEL_23:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_110;
  }

  has = self->_has;
  v6 = *(equalCopy + 23);
  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_qos != *(equalCopy + 9))
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
    if ((v6 & 0x100) == 0 || self->_rb != *(equalCopy + 10))
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
    if ((v6 & 0x400) == 0 || self->_ulDataBytes != *(equalCopy + 12))
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
    if ((v6 & 2) == 0 || self->_dlDataBytes != *(equalCopy + 3))
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
    if ((v6 & 0x2000) == 0 || self->_ulDiscardSduBytes != *(equalCopy + 15))
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
    if ((v6 & 0x800) == 0 || self->_ulDiscardBytes != *(equalCopy + 13))
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
    if ((v6 & 1) == 0 || self->_dlCtrlPdus != *(equalCopy + 2))
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
    if ((v6 & 0x20) == 0 || self->_dlTotalPdus != *(equalCopy + 7))
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
    if ((v6 & 4) == 0 || self->_dlHcPdus != *(equalCopy + 4))
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
    if ((v6 & 0x40) == 0 || self->_hcDecFailPdus != *(equalCopy + 8))
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
    if ((v6 & 0x40000) == 0 || self->_ulLastXSecTotalPdus != *(equalCopy + 20))
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
    if ((v6 & 0x20000) == 0 || self->_ulLastXSecTotalBytes != *(equalCopy + 19))
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
    if ((v6 & 0x8000) == 0 || self->_ulLastXSecDiscardBytes != *(equalCopy + 17))
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
    if ((v6 & 0x10000) == 0 || self->_ulLastXSecDiscardPdus != *(equalCopy + 18))
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

  v7 = *(equalCopy + 88);
  if (self->_dlHcEnabled)
  {
    if ((*(equalCopy + 88) & 1) == 0)
    {
      goto LABEL_110;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_110;
  }

LABEL_74:
  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_rlcMode != *(equalCopy + 11))
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
    if ((v6 & 0x4000) == 0 || self->_ulDiscardSdus != *(equalCopy + 16))
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
    if ((v6 & 0x1000) == 0 || self->_ulDiscardPdus != *(equalCopy + 14))
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
    if ((v6 & 0x80000) == 0 || self->_ulTotalPdus != *(equalCopy + 21))
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
    if ((v6 & 0x10) == 0 || self->_dlLastXSecTotalPdus != *(equalCopy + 6))
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
    if ((v6 & 8) == 0 || self->_dlLastXSecTotalBytes != *(equalCopy + 5))
    {
      goto LABEL_110;
    }

    v8 = 1;
  }

  else
  {
    v8 = (*(equalCopy + 23) & 8) == 0;
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 23);
  if ((v5 & 0x80) != 0)
  {
    self->_qos = *(fromCopy + 9);
    *&self->_has |= 0x80u;
    v5 = *(fromCopy + 23);
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

  self->_rb = *(fromCopy + 10);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 23);
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
  self->_ulDataBytes = *(fromCopy + 12);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 23);
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
  self->_dlDataBytes = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 23);
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
  self->_ulDiscardSduBytes = *(fromCopy + 15);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 23);
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
  self->_ulDiscardBytes = *(fromCopy + 13);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 23);
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
  self->_dlCtrlPdus = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 23);
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
  self->_dlTotalPdus = *(fromCopy + 7);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 23);
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
  self->_dlHcPdus = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 23);
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
  self->_hcDecFailPdus = *(fromCopy + 8);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 23);
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
  self->_ulLastXSecTotalPdus = *(fromCopy + 20);
  *&self->_has |= 0x40000u;
  v5 = *(fromCopy + 23);
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
  self->_ulLastXSecTotalBytes = *(fromCopy + 19);
  *&self->_has |= 0x20000u;
  v5 = *(fromCopy + 23);
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
  self->_ulLastXSecDiscardBytes = *(fromCopy + 17);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 23);
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
  self->_ulLastXSecDiscardPdus = *(fromCopy + 18);
  *&self->_has |= 0x10000u;
  v5 = *(fromCopy + 23);
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
  self->_dlHcEnabled = *(fromCopy + 88);
  *&self->_has |= 0x100000u;
  v5 = *(fromCopy + 23);
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
  self->_rlcMode = *(fromCopy + 11);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 23);
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
  self->_ulDiscardSdus = *(fromCopy + 16);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 23);
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
  self->_ulDiscardPdus = *(fromCopy + 14);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 23);
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
  self->_ulTotalPdus = *(fromCopy + 21);
  *&self->_has |= 0x80000u;
  v5 = *(fromCopy + 23);
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
  self->_dlLastXSecTotalPdus = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 23) & 8) != 0)
  {
LABEL_22:
    self->_dlLastXSecTotalBytes = *(fromCopy + 5);
    *&self->_has |= 8u;
  }

LABEL_23:
}

@end