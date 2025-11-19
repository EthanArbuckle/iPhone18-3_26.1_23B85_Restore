@interface CellularLteRachAttempt
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRachResult:(id)a3;
- (int)rachResult;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAccbState:(BOOL)a3;
- (void)setHasCellId:(BOOL)a3;
- (void)setHasCellIsApo:(BOOL)a3;
- (void)setHasContentionBased:(BOOL)a3;
- (void)setHasEarfcn:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPMax:(BOOL)a3;
- (void)setHasRachResult:(BOOL)a3;
- (void)setHasRetxCounter:(BOOL)a3;
- (void)setHasRsrp:(BOOL)a3;
- (void)setHasScellIndex:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTac:(BOOL)a3;
- (void)setHasTxPowerLimited:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularLteRachAttempt

- (void)setHasRetxCounter:(BOOL)a3
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

- (int)rachResult
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_rachResult;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRachResult:(BOOL)a3
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

- (int)StringAsRachResult:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LTE_RACH_RESULT_SUCCESS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LTE_RACH_RESULT_FAIL_AT_MESG2"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LTE_RACH_RESULT_FAIL_AT_MESG4_CTT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LTE_RACH_RESULT_FAIL_AT_MESG4"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LTE_RACH_RESULT_ABORTED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasContentionBased:(BOOL)a3
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

- (void)setHasPMax:(BOOL)a3
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

- (void)setHasRsrp:(BOOL)a3
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

- (void)setHasEarfcn:(BOOL)a3
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

- (void)setHasTac:(BOOL)a3
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

- (void)setHasCellId:(BOOL)a3
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

- (void)setHasCellIsApo:(BOOL)a3
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

- (void)setHasAccbState:(BOOL)a3
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

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasScellIndex:(BOOL)a3
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

- (void)setHasTxPowerLimited:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteRachAttempt;
  v3 = [(CellularLteRachAttempt *)&v7 description];
  v4 = [(CellularLteRachAttempt *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v10 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v11 = [NSNumber numberWithUnsignedInt:self->_retxCounter];
  [v3 setObject:v11 forKey:@"retx_counter"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_25:
  rachResult = self->_rachResult;
  if (rachResult >= 5)
  {
    v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_rachResult];
  }

  else
  {
    v13 = *(&off_100317E80 + rachResult);
  }

  [v3 setObject:v13 forKey:@"rach_result"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = [NSNumber numberWithBool:self->_contentionBased];
  [v3 setObject:v16 forKey:@"contention_based"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = [NSNumber numberWithInt:self->_pMax];
  [v3 setObject:v17 forKey:@"p_max"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = [NSNumber numberWithInt:self->_rsrp];
  [v3 setObject:v18 forKey:@"rsrp"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  v19 = [NSNumber numberWithUnsignedInt:self->_earfcn];
  [v3 setObject:v19 forKey:@"earfcn"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  v20 = [NSNumber numberWithUnsignedInt:self->_tac];
  [v3 setObject:v20 forKey:@"tac"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v21 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v21 forKey:@"cell_id"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  v22 = [NSNumber numberWithBool:self->_cellIsApo];
  [v3 setObject:v22 forKey:@"cell_is_apo"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_39:
  v23 = [NSNumber numberWithUnsignedInt:self->_accbState];
  [v3 setObject:v23 forKey:@"accb_state"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    v5 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v5 forKey:@"num_subs"];
  }

LABEL_14:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v7 = self->_has;
  if ((v7 & 0x400) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v14 forKey:@"subs_id"];

    v7 = self->_has;
    if ((v7 & 0x200) == 0)
    {
LABEL_18:
      if ((v7 & 0x4000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v15 = [NSNumber numberWithUnsignedInt:self->_scellIndex];
  [v3 setObject:v15 forKey:@"scell_index"];

  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_19:
    v8 = [NSNumber numberWithBool:self->_txPowerLimited];
    [v3 setObject:v8 forKey:@"tx_power_limited"];
  }

LABEL_20:

  return v3;
}

- (void)writeTo:(id)a3
{
  v21 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  retxCounter = self->_retxCounter;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  rachResult = self->_rachResult;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  contentionBased = self->_contentionBased;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  pMax = self->_pMax;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  rsrp = self->_rsrp;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  earfcn = self->_earfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  tac = self->_tac;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  cellIsApo = self->_cellIsApo;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_33:
  accbState = self->_accbState;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

LABEL_14:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((v6 & 0x400) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((v6 & 0x200) == 0)
    {
LABEL_18:
      if ((v6 & 0x4000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_18;
  }

  scellIndex = self->_scellIndex;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_19:
    txPowerLimited = self->_txPowerLimited;
    PBDataWriterWriteBOOLField();
  }

LABEL_20:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 38) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 13) = self->_retxCounter;
  *(v4 + 38) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 12) = self->_rachResult;
  *(v4 + 38) |= 0x40u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 73) = self->_contentionBased;
  *(v4 + 38) |= 0x2000u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 8) = self->_pMax;
  *(v4 + 38) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 14) = self->_rsrp;
  *(v4 + 38) |= 0x100u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 6) = self->_earfcn;
  *(v4 + 38) |= 8u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 17) = self->_tac;
  *(v4 + 38) |= 0x800u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v4 + 5) = self->_cellId;
  *(v4 + 38) |= 4u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 72) = self->_cellIsApo;
  *(v4 + 38) |= 0x1000u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_33:
  *(v4 + 4) = self->_accbState;
  *(v4 + 38) |= 2u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    *(v4 + 7) = self->_numSubs;
    *(v4 + 38) |= 0x10u;
  }

LABEL_14:
  if (self->_plmn)
  {
    v7 = v4;
    [v4 setPlmn:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x400) != 0)
  {
    *(v4 + 16) = self->_subsId;
    *(v4 + 38) |= 0x400u;
    v6 = self->_has;
    if ((v6 & 0x200) == 0)
    {
LABEL_18:
      if ((v6 & 0x4000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_18;
  }

  *(v4 + 15) = self->_scellIndex;
  *(v4 + 38) |= 0x200u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_19:
    *(v4 + 74) = self->_txPowerLimited;
    *(v4 + 38) |= 0x4000u;
  }

LABEL_20:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 38) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 13) = self->_retxCounter;
  *(v5 + 38) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 12) = self->_rachResult;
  *(v5 + 38) |= 0x40u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 73) = self->_contentionBased;
  *(v5 + 38) |= 0x2000u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 8) = self->_pMax;
  *(v5 + 38) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 14) = self->_rsrp;
  *(v5 + 38) |= 0x100u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 6) = self->_earfcn;
  *(v5 + 38) |= 8u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 17) = self->_tac;
  *(v5 + 38) |= 0x800u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 5) = self->_cellId;
  *(v5 + 38) |= 4u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 72) = self->_cellIsApo;
  *(v5 + 38) |= 0x1000u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_29:
  *(v5 + 4) = self->_accbState;
  *(v5 + 38) |= 2u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    *(v5 + 7) = self->_numSubs;
    *(v5 + 38) |= 0x10u;
  }

LABEL_14:
  v8 = [(NSData *)self->_plmn copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  v10 = self->_has;
  if ((v10 & 0x400) == 0)
  {
    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    *(v6 + 15) = self->_scellIndex;
    *(v6 + 38) |= 0x200u;
    if ((*&self->_has & 0x4000) == 0)
    {
      return v6;
    }

    goto LABEL_17;
  }

  *(v6 + 16) = self->_subsId;
  *(v6 + 38) |= 0x400u;
  v10 = self->_has;
  if ((v10 & 0x200) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v10 & 0x4000) != 0)
  {
LABEL_17:
    *(v6 + 74) = self->_txPowerLimited;
    *(v6 + 38) |= 0x4000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_88;
  }

  has = self->_has;
  v6 = *(v4 + 38);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_88;
    }
  }

  else if (v6)
  {
    goto LABEL_88;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_retxCounter != *(v4 + 13))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_rachResult != *(v4 + 12))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 38) & 0x2000) == 0)
    {
      goto LABEL_88;
    }

    v7 = *(v4 + 73);
    if (self->_contentionBased)
    {
      if ((*(v4 + 73) & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else if (*(v4 + 73))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 38) & 0x2000) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_pMax != *(v4 + 8))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 38) & 0x100) == 0 || self->_rsrp != *(v4 + 14))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 38) & 0x100) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_earfcn != *(v4 + 6))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 38) & 0x800) == 0 || self->_tac != *(v4 + 17))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 38) & 0x800) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_cellId != *(v4 + 5))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 38) & 0x1000) == 0)
    {
      goto LABEL_88;
    }

    v8 = *(v4 + 72);
    if (self->_cellIsApo)
    {
      if ((*(v4 + 72) & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else if (*(v4 + 72))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 38) & 0x1000) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_accbState != *(v4 + 4))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_numSubs != *(v4 + 7))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_88;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 5))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_88;
    }

    has = self->_has;
  }

  if ((has & 0x400) != 0)
  {
    if ((*(v4 + 38) & 0x400) == 0 || self->_subsId != *(v4 + 16))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 38) & 0x400) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x200) != 0)
  {
    if ((*(v4 + 38) & 0x200) == 0 || self->_scellIndex != *(v4 + 15))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 38) & 0x200) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x4000) != 0)
  {
    if ((*(v4 + 38) & 0x4000) != 0)
    {
      if (self->_txPowerLimited)
      {
        if (*(v4 + 74))
        {
LABEL_86:
          v10 = 1;
          goto LABEL_89;
        }
      }

      else if (!*(v4 + 74))
      {
        goto LABEL_86;
      }
    }

LABEL_88:
    v10 = 0;
    goto LABEL_89;
  }

  v10 = (*(v4 + 38) & 0x4000) == 0;
LABEL_89:

  return v10;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v20 = 2654435761u * self->_timestamp;
    if ((has & 0x80) != 0)
    {
LABEL_3:
      v19 = 2654435761 * self->_retxCounter;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v20 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v18 = 2654435761 * self->_rachResult;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v18 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_5:
    v17 = 2654435761 * self->_contentionBased;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v17 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v16 = 2654435761 * self->_pMax;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v16 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v4 = 2654435761 * self->_rsrp;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v5 = 2654435761 * self->_earfcn;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_9:
    v6 = 2654435761 * self->_tac;
    if ((has & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_10:
    v7 = 2654435761 * self->_cellId;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_11:
    v8 = 2654435761 * self->_cellIsApo;
    if ((has & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v9 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_23:
  v8 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v9 = 2654435761 * self->_accbState;
  if ((has & 0x10) != 0)
  {
LABEL_13:
    v10 = 2654435761 * self->_numSubs;
    goto LABEL_26;
  }

LABEL_25:
  v10 = 0;
LABEL_26:
  v11 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 0x400) == 0)
  {
    v12 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v13 = 0;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    v14 = 0;
    return v19 ^ v20 ^ v18 ^ v17 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v11;
  }

  v12 = 2654435761 * self->_subsId;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  v13 = 2654435761 * self->_scellIndex;
  if ((*&self->_has & 0x4000) == 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  v14 = 2654435761 * self->_txPowerLimited;
  return v19 ^ v20 ^ v18 ^ v17 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 38);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 38);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_retxCounter = *(v4 + 13);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 38);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_rachResult = *(v4 + 12);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 38);
  if ((v5 & 0x2000) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_contentionBased = *(v4 + 73);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 38);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_pMax = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 38);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_rsrp = *(v4 + 14);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 38);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_earfcn = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 38);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_tac = *(v4 + 17);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 38);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_cellId = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 38);
  if ((v5 & 0x1000) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_cellIsApo = *(v4 + 72);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 38);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_33:
  self->_accbState = *(v4 + 4);
  *&self->_has |= 2u;
  if ((*(v4 + 38) & 0x10) != 0)
  {
LABEL_13:
    self->_numSubs = *(v4 + 7);
    *&self->_has |= 0x10u;
  }

LABEL_14:
  if (*(v4 + 5))
  {
    v7 = v4;
    [(CellularLteRachAttempt *)self setPlmn:?];
    v4 = v7;
  }

  v6 = *(v4 + 38);
  if ((v6 & 0x400) != 0)
  {
    self->_subsId = *(v4 + 16);
    *&self->_has |= 0x400u;
    v6 = *(v4 + 38);
    if ((v6 & 0x200) == 0)
    {
LABEL_18:
      if ((v6 & 0x4000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*(v4 + 38) & 0x200) == 0)
  {
    goto LABEL_18;
  }

  self->_scellIndex = *(v4 + 15);
  *&self->_has |= 0x200u;
  if ((*(v4 + 38) & 0x4000) != 0)
  {
LABEL_19:
    self->_txPowerLimited = *(v4 + 74);
    *&self->_has |= 0x4000u;
  }

LABEL_20:
}

@end