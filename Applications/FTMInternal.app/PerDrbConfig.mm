@interface PerDrbConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDlRlcPath:(id)a3;
- (int)StringAsUlRlcPath:(id)a3;
- (int)dlRlcPath;
- (int)ulRlcPath;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDlCipheringEnabled:(BOOL)a3;
- (void)setHasDlIntegrityEnabled:(BOOL)a3;
- (void)setHasDlRohcEnabled:(BOOL)a3;
- (void)setHasDrbId:(BOOL)a3;
- (void)setHasUlCipheringEnabled:(BOOL)a3;
- (void)setHasUlDataSplitThreshold:(BOOL)a3;
- (void)setHasUlIntegrityEnabled:(BOOL)a3;
- (void)setHasUlMoreThanOneRlcPresent:(BOOL)a3;
- (void)setHasUlPdcpDuplication:(BOOL)a3;
- (void)setHasUlRlcPath:(BOOL)a3;
- (void)setHasUlRohcEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PerDrbConfig

- (void)setHasDrbId:(BOOL)a3
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

- (int)ulRlcPath
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_ulRlcPath;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUlRlcPath:(BOOL)a3
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

- (int)StringAsUlRlcPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RB_PATH_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RB_PATH_LTE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RB_PATH_NR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RB_PATH_LTE_AND_NR"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasUlDataSplitThreshold:(BOOL)a3
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

- (void)setHasUlPdcpDuplication:(BOOL)a3
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

- (void)setHasUlRohcEnabled:(BOOL)a3
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

- (void)setHasUlIntegrityEnabled:(BOOL)a3
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

- (void)setHasUlCipheringEnabled:(BOOL)a3
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

- (void)setHasUlMoreThanOneRlcPresent:(BOOL)a3
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

- (int)dlRlcPath
{
  if (*&self->_has)
  {
    return self->_dlRlcPath;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDlRlcPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RB_PATH_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RB_PATH_LTE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RB_PATH_NR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RB_PATH_LTE_AND_NR"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDlRohcEnabled:(BOOL)a3
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

- (void)setHasDlIntegrityEnabled:(BOOL)a3
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

- (void)setHasDlCipheringEnabled:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = PerDrbConfig;
  v3 = [(PerDrbConfig *)&v7 description];
  v4 = [(PerDrbConfig *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_drbId];
    [v3 setObject:v7 forKey:@"drb_id"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  ulRlcPath = self->_ulRlcPath;
  if (ulRlcPath >= 4)
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_ulRlcPath];
  }

  else
  {
    v9 = off_100317228[ulRlcPath];
  }

  [v3 setObject:v9 forKey:@"ul_rlc_path"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = [NSNumber numberWithUnsignedInt:self->_ulDataSplitThreshold];
  [v3 setObject:v10 forKey:@"ul_data_split_threshold"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = [NSNumber numberWithBool:self->_ulPdcpDuplication];
  [v3 setObject:v11 forKey:@"ul_pdcp_duplication"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = [NSNumber numberWithBool:self->_ulRohcEnabled];
  [v3 setObject:v12 forKey:@"ul_rohc_enabled"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = [NSNumber numberWithBool:self->_ulIntegrityEnabled];
  [v3 setObject:v13 forKey:@"ul_integrity_enabled"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = [NSNumber numberWithBool:self->_ulCipheringEnabled];
  [v3 setObject:v14 forKey:@"ul_ciphering_enabled"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = [NSNumber numberWithBool:self->_ulMoreThanOneRlcPresent];
  [v3 setObject:v15 forKey:@"ul_more_than_one_rlc_present"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_28:
  dlRlcPath = self->_dlRlcPath;
  if (dlRlcPath >= 4)
  {
    v17 = [NSString stringWithFormat:@"(unknown: %i)", self->_dlRlcPath];
  }

  else
  {
    v17 = off_100317228[dlRlcPath];
  }

  [v3 setObject:v17 forKey:@"dl_rlc_path"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = [NSNumber numberWithBool:self->_dlRohcEnabled];
  [v3 setObject:v18 forKey:@"dl_rohc_enabled"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_33:
  v19 = [NSNumber numberWithBool:self->_dlIntegrityEnabled];
  [v3 setObject:v19 forKey:@"dl_integrity_enabled"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    v5 = [NSNumber numberWithBool:self->_dlCipheringEnabled];
    [v3 setObject:v5 forKey:@"dl_ciphering_enabled"];
  }

LABEL_14:

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    drbId = self->_drbId;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  ulRlcPath = self->_ulRlcPath;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  ulDataSplitThreshold = self->_ulDataSplitThreshold;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  ulPdcpDuplication = self->_ulPdcpDuplication;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  ulRohcEnabled = self->_ulRohcEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  ulIntegrityEnabled = self->_ulIntegrityEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  ulCipheringEnabled = self->_ulCipheringEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  ulMoreThanOneRlcPresent = self->_ulMoreThanOneRlcPresent;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  dlRlcPath = self->_dlRlcPath;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  dlRohcEnabled = self->_dlRohcEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  dlIntegrityEnabled = self->_dlIntegrityEnabled;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    dlCipheringEnabled = self->_dlCipheringEnabled;
    PBDataWriterWriteBOOLField();
  }

LABEL_14:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_drbId;
    *(v4 + 16) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  v4[5] = self->_ulRlcPath;
  *(v4 + 16) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4[4] = self->_ulDataSplitThreshold;
  *(v4 + 16) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 30) = self->_ulPdcpDuplication;
  *(v4 + 16) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 31) = self->_ulRohcEnabled;
  *(v4 + 16) |= 0x800u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 28) = self->_ulIntegrityEnabled;
  *(v4 + 16) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 27) = self->_ulCipheringEnabled;
  *(v4 + 16) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 29) = self->_ulMoreThanOneRlcPresent;
  *(v4 + 16) |= 0x200u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4[2] = self->_dlRlcPath;
  *(v4 + 16) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 26) = self->_dlRohcEnabled;
  *(v4 + 16) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  *(v4 + 25) = self->_dlIntegrityEnabled;
  *(v4 + 16) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    *(v4 + 24) = self->_dlCipheringEnabled;
    *(v4 + 16) |= 0x10u;
  }

LABEL_14:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_drbId;
    *(result + 16) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_ulRlcPath;
  *(result + 16) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 4) = self->_ulDataSplitThreshold;
  *(result + 16) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 30) = self->_ulPdcpDuplication;
  *(result + 16) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 31) = self->_ulRohcEnabled;
  *(result + 16) |= 0x800u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 28) = self->_ulIntegrityEnabled;
  *(result + 16) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 27) = self->_ulCipheringEnabled;
  *(result + 16) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 29) = self->_ulMoreThanOneRlcPresent;
  *(result + 16) |= 0x200u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 2) = self->_dlRlcPath;
  *(result + 16) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 26) = self->_dlRohcEnabled;
  *(result + 16) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_25:
  *(result + 25) = self->_dlIntegrityEnabled;
  *(result + 16) |= 0x20u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_13:
  *(result + 24) = self->_dlCipheringEnabled;
  *(result + 16) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_85;
  }

  has = self->_has;
  v6 = *(v4 + 16);
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_drbId != *(v4 + 3))
    {
      goto LABEL_85;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_85;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_ulRlcPath != *(v4 + 5))
    {
      goto LABEL_85;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_85;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_ulDataSplitThreshold != *(v4 + 4))
    {
      goto LABEL_85;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_85;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 16) & 0x400) == 0)
    {
      goto LABEL_85;
    }

    v7 = *(v4 + 30);
    if (self->_ulPdcpDuplication)
    {
      if ((*(v4 + 30) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 30))
    {
      goto LABEL_85;
    }
  }

  else if ((*(v4 + 16) & 0x400) != 0)
  {
    goto LABEL_85;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 16) & 0x800) == 0)
    {
      goto LABEL_85;
    }

    v8 = *(v4 + 31);
    if (self->_ulRohcEnabled)
    {
      if ((*(v4 + 31) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 31))
    {
      goto LABEL_85;
    }
  }

  else if ((*(v4 + 16) & 0x800) != 0)
  {
    goto LABEL_85;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 16) & 0x100) == 0)
    {
      goto LABEL_85;
    }

    v9 = *(v4 + 28);
    if (self->_ulIntegrityEnabled)
    {
      if ((*(v4 + 28) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 28))
    {
      goto LABEL_85;
    }
  }

  else if ((*(v4 + 16) & 0x100) != 0)
  {
    goto LABEL_85;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_85;
    }

    v10 = *(v4 + 27);
    if (self->_ulCipheringEnabled)
    {
      if ((*(v4 + 27) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 27))
    {
      goto LABEL_85;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_85;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 16) & 0x200) == 0)
    {
      goto LABEL_85;
    }

    v11 = *(v4 + 29);
    if (self->_ulMoreThanOneRlcPresent)
    {
      if ((*(v4 + 29) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 29))
    {
      goto LABEL_85;
    }
  }

  else if ((*(v4 + 16) & 0x200) != 0)
  {
    goto LABEL_85;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_dlRlcPath != *(v4 + 2))
    {
      goto LABEL_85;
    }
  }

  else if (v6)
  {
    goto LABEL_85;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_85;
    }

    v13 = *(v4 + 26);
    if (self->_dlRohcEnabled)
    {
      if ((*(v4 + 26) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 26))
    {
      goto LABEL_85;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_85;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_85;
    }

    v14 = *(v4 + 25);
    if (self->_dlIntegrityEnabled)
    {
      if ((*(v4 + 25) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 25))
    {
      goto LABEL_85;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_85;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) != 0)
    {
      if (self->_dlCipheringEnabled)
      {
        if (*(v4 + 24))
        {
          goto LABEL_87;
        }
      }

      else if (!*(v4 + 24))
      {
LABEL_87:
        v12 = 1;
        goto LABEL_86;
      }
    }

LABEL_85:
    v12 = 0;
    goto LABEL_86;
  }

  v12 = (v6 & 0x10) == 0;
LABEL_86:

  return v12;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    v3 = 2654435761 * self->_drbId;
    if ((has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_ulRlcPath;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_ulDataSplitThreshold;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_ulPdcpDuplication;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_ulRohcEnabled;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_ulIntegrityEnabled;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_ulCipheringEnabled;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_ulMoreThanOneRlcPresent;
    if (has)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
  if (has)
  {
LABEL_10:
    v11 = 2654435761 * self->_dlRlcPath;
    if ((has & 0x40) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_dlRohcEnabled;
    if ((has & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_23:
  v12 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v13 = 2654435761 * self->_dlIntegrityEnabled;
  if ((has & 0x10) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v14 = 2654435761 * self->_dlCipheringEnabled;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if ((v5 & 2) != 0)
  {
    self->_drbId = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 16);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_ulRlcPath = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 16);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_ulDataSplitThreshold = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 16);
  if ((v5 & 0x400) == 0)
  {
LABEL_5:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_ulPdcpDuplication = *(v4 + 30);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 16);
  if ((v5 & 0x800) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_ulRohcEnabled = *(v4 + 31);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 16);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_ulIntegrityEnabled = *(v4 + 28);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 16);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_ulCipheringEnabled = *(v4 + 27);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 16);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_ulMoreThanOneRlcPresent = *(v4 + 29);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 16);
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_dlRlcPath = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 16);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_dlRohcEnabled = *(v4 + 26);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 16);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  self->_dlIntegrityEnabled = *(v4 + 25);
  *&self->_has |= 0x20u;
  if ((*(v4 + 16) & 0x10) != 0)
  {
LABEL_13:
    self->_dlCipheringEnabled = *(v4 + 24);
    *&self->_has |= 0x10u;
  }

LABEL_14:
}

@end