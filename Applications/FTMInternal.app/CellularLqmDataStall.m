@interface CellularLqmDataStall
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDataStallOccured:(BOOL)a3;
- (void)setHasDnsFailureOccured:(BOOL)a3;
- (void)setHasIsDcActive:(BOOL)a3;
- (void)setHasLqmState:(BOOL)a3;
- (void)setHasMediaPreWarningHint:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasRrcState:(BOOL)a3;
- (void)setHasServCellState:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasSysMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularLqmDataStall

- (void)setHasDataStallOccured:(BOOL)a3
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

- (void)setHasDnsFailureOccured:(BOOL)a3
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

- (void)setHasMediaPreWarningHint:(BOOL)a3
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

- (void)setHasSysMode:(BOOL)a3
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

- (void)setHasLqmState:(BOOL)a3
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

- (void)setHasServCellState:(BOOL)a3
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

- (void)setHasRrcState:(BOOL)a3
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

- (void)setHasIsDcActive:(BOOL)a3
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

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasPsPref:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLqmDataStall;
  v3 = [(CellularLqmDataStall *)&v7 description];
  v4 = [(CellularLqmDataStall *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v11 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v11 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v12 = [NSNumber numberWithBool:self->_dataStallOccured];
  [v3 setObject:v12 forKey:@"data_stall_occured"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = [NSNumber numberWithBool:self->_dnsFailureOccured];
  [v3 setObject:v13 forKey:@"dns_failure_occured"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = [NSNumber numberWithBool:self->_mediaPreWarningHint];
  [v3 setObject:v14 forKey:@"media_pre_warning_hint"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = [NSNumber numberWithUnsignedInt:self->_sysMode];
  [v3 setObject:v15 forKey:@"sys_mode"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = [NSNumber numberWithUnsignedInt:self->_lqmState];
  [v3 setObject:v16 forKey:@"lqm_state"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = [NSNumber numberWithUnsignedInt:self->_servCellState];
  [v3 setObject:v17 forKey:@"serv_cell_state"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = [NSNumber numberWithUnsignedInt:self->_rrcState];
  [v3 setObject:v18 forKey:@"rrc_state"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_29:
  v19 = [NSNumber numberWithBool:self->_isDcActive];
  [v3 setObject:v19 forKey:@"is_dc_active"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    v5 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v5 forKey:@"num_subs"];
  }

LABEL_12:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v8 forKey:@"ps_pref"];

    v7 = self->_has;
  }

  if ((v7 & 0x40) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v9 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  dataStallOccured = self->_dataStallOccured;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  dnsFailureOccured = self->_dnsFailureOccured;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  mediaPreWarningHint = self->_mediaPreWarningHint;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  sysMode = self->_sysMode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  lqmState = self->_lqmState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  servCellState = self->_servCellState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  rrcState = self->_rrcState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_29:
  isDcActive = self->_isDcActive;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }
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
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 52) = self->_dataStallOccured;
  *(v4 + 28) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 53) = self->_dnsFailureOccured;
  *(v4 + 28) |= 0x200u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 55) = self->_mediaPreWarningHint;
  *(v4 + 28) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 12) = self->_sysMode;
  *(v4 + 28) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 4) = self->_lqmState;
  *(v4 + 28) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 10) = self->_servCellState;
  *(v4 + 28) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 9) = self->_rrcState;
  *(v4 + 28) |= 0x10u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_29:
  *(v4 + 54) = self->_isDcActive;
  *(v4 + 28) |= 0x400u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    *(v4 + 5) = self->_numSubs;
    *(v4 + 28) |= 4u;
  }

LABEL_12:
  if (self->_plmn)
  {
    v7 = v4;
    [v4 setPlmn:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(v4 + 8) = self->_psPref;
    *(v4 + 28) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {
    *(v4 + 11) = self->_subsId;
    *(v4 + 28) |= 0x40u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 28) |= 1u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 52) = self->_dataStallOccured;
  *(v5 + 28) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 53) = self->_dnsFailureOccured;
  *(v5 + 28) |= 0x200u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 55) = self->_mediaPreWarningHint;
  *(v5 + 28) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 12) = self->_sysMode;
  *(v5 + 28) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 4) = self->_lqmState;
  *(v5 + 28) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 10) = self->_servCellState;
  *(v5 + 28) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 9) = self->_rrcState;
  *(v5 + 28) |= 0x10u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_25:
  *(v5 + 54) = self->_isDcActive;
  *(v5 + 28) |= 0x400u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    *(v5 + 5) = self->_numSubs;
    *(v5 + 28) |= 4u;
  }

LABEL_12:
  v8 = [(NSData *)self->_plmn copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    *(v6 + 8) = self->_psPref;
    *(v6 + 28) |= 8u;
    v10 = self->_has;
  }

  if ((v10 & 0x40) != 0)
  {
    *(v6 + 11) = self->_subsId;
    *(v6 + 28) |= 0x40u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  has = self->_has;
  v6 = *(v4 + 28);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_77;
    }
  }

  else if (v6)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 28) & 0x100) == 0)
    {
      goto LABEL_77;
    }

    v7 = *(v4 + 52);
    if (self->_dataStallOccured)
    {
      if ((*(v4 + 52) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(v4 + 52))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 28) & 0x100) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 28) & 0x200) == 0)
    {
      goto LABEL_77;
    }

    v8 = *(v4 + 53);
    if (self->_dnsFailureOccured)
    {
      if ((*(v4 + 53) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(v4 + 53))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 28) & 0x200) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 28) & 0x800) == 0)
    {
      goto LABEL_77;
    }

    v9 = *(v4 + 55);
    if (self->_mediaPreWarningHint)
    {
      if ((*(v4 + 55) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(v4 + 55))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 28) & 0x800) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_sysMode != *(v4 + 12))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_lqmState != *(v4 + 4))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_servCellState != *(v4 + 10))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_rrcState != *(v4 + 9))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 28) & 0x400) == 0)
    {
      goto LABEL_77;
    }

    v10 = *(v4 + 54);
    if (self->_isDcActive)
    {
      if ((*(v4 + 54) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(v4 + 54))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 28) & 0x400) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_numSubs != *(v4 + 5))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_77;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 3))
  {
    if ([(NSData *)plmn isEqual:?])
    {
      has = self->_has;
      goto LABEL_65;
    }

LABEL_77:
    v13 = 0;
    goto LABEL_78;
  }

LABEL_65:
  v12 = *(v4 + 28);
  if ((has & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_psPref != *(v4 + 8))
    {
      goto LABEL_77;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_subsId != *(v4 + 11))
    {
      goto LABEL_77;
    }

    v13 = 1;
  }

  else
  {
    v13 = (v12 & 0x40) == 0;
  }

LABEL_78:

  return v13;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v18 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_3:
      v17 = 2654435761 * self->_dataStallOccured;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_4:
    v16 = 2654435761 * self->_dnsFailureOccured;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_mediaPreWarningHint;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_sysMode;
    if ((has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((has & 2) != 0)
  {
LABEL_7:
    v6 = 2654435761 * self->_lqmState;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_8:
    v7 = 2654435761 * self->_servCellState;
    if ((has & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_9:
    v8 = 2654435761 * self->_rrcState;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v9 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  v8 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v9 = 2654435761 * self->_isDcActive;
  if ((has & 4) != 0)
  {
LABEL_11:
    v10 = 2654435761 * self->_numSubs;
    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
LABEL_22:
  v11 = [(NSData *)self->_plmn hash];
  v12 = self->_has;
  if ((v12 & 8) != 0)
  {
    v13 = 2654435761 * self->_psPref;
    if ((v12 & 0x40) != 0)
    {
      goto LABEL_24;
    }

LABEL_26:
    v14 = 0;
    return v17 ^ v18 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v11;
  }

  v13 = 0;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_24:
  v14 = 2654435761 * self->_subsId;
  return v17 ^ v18 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v11;
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
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*(v4 + 28) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_dataStallOccured = *(v4 + 52);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_dnsFailureOccured = *(v4 + 53);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_mediaPreWarningHint = *(v4 + 55);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 28);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_sysMode = *(v4 + 12);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 28);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_lqmState = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_servCellState = *(v4 + 10);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_rrcState = *(v4 + 9);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 28);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_29:
  self->_isDcActive = *(v4 + 54);
  *&self->_has |= 0x400u;
  if ((*(v4 + 28) & 4) != 0)
  {
LABEL_11:
    self->_numSubs = *(v4 + 5);
    *&self->_has |= 4u;
  }

LABEL_12:
  if (*(v4 + 3))
  {
    v7 = v4;
    [(CellularLqmDataStall *)self setPlmn:?];
    v4 = v7;
  }

  v6 = *(v4 + 28);
  if ((v6 & 8) != 0)
  {
    self->_psPref = *(v4 + 8);
    *&self->_has |= 8u;
    v6 = *(v4 + 28);
  }

  if ((v6 & 0x40) != 0)
  {
    self->_subsId = *(v4 + 11);
    *&self->_has |= 0x40u;
  }
}

@end