@interface CellularNrScgRemoval
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSdmTriggerCause:(id)a3;
- (int)sdmTriggerCause;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBandInd:(BOOL)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasIsDueToSdm:(BOOL)a3;
- (void)setHasNumBeamFailure:(BOOL)a3;
- (void)setHasNumBeamRecovery:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasReason:(BOOL)a3;
- (void)setHasResult:(BOOL)a3;
- (void)setHasRxBeamSwitch:(BOOL)a3;
- (void)setHasSdmTriggerCause:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTxBeamSwitch:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularNrScgRemoval

- (void)setHasReason:(BOOL)a3
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

- (void)setHasResult:(BOOL)a3
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

- (void)setHasDuration:(BOOL)a3
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

- (void)setHasNumBeamFailure:(BOOL)a3
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

- (void)setHasNumBeamRecovery:(BOOL)a3
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

- (void)setHasRxBeamSwitch:(BOOL)a3
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

- (void)setHasTxBeamSwitch:(BOOL)a3
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

- (void)setHasBandInd:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasPsPref:(BOOL)a3
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

- (void)setHasIsDueToSdm:(BOOL)a3
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

- (int)sdmTriggerCause
{
  if ((*&self->_has & 0x400) != 0)
  {
    return self->_sdmTriggerCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSdmTriggerCause:(BOOL)a3
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

- (int)StringAsSdmTriggerCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_AP_SLEEP"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_CELLULAR_DATA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_WIFI_POOR"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_VOIP_CALL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_COREMEDIA_STALL"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_SCREEN_STATUS"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_SYMPTOMS_RECOMM"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_UI_SWITCH"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_RLGS"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_PHS"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_MAX"])
  {
    v4 = 11;
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
  v7.super_class = CellularNrScgRemoval;
  v3 = [(CellularNrScgRemoval *)&v7 description];
  v4 = [(CellularNrScgRemoval *)self dictionaryRepresentation];
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
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v12 = [NSNumber numberWithUnsignedInt:self->_reason];
  [v3 setObject:v12 forKey:@"reason"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = [NSNumber numberWithUnsignedInt:self->_result];
  [v3 setObject:v13 forKey:@"result"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = [NSNumber numberWithUnsignedInt:self->_duration];
  [v3 setObject:v14 forKey:@"duration"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = [NSNumber numberWithUnsignedInt:self->_numBeamFailure];
  [v3 setObject:v15 forKey:@"num_beam_failure"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = [NSNumber numberWithUnsignedInt:self->_numBeamRecovery];
  [v3 setObject:v16 forKey:@"num_beam_recovery"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = [NSNumber numberWithUnsignedInt:self->_rxBeamSwitch];
  [v3 setObject:v17 forKey:@"rx_beam_switch"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = [NSNumber numberWithUnsignedInt:self->_txBeamSwitch];
  [v3 setObject:v18 forKey:@"tx_beam_switch"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v19 = [NSNumber numberWithUnsignedInt:self->_bandInd];
  [v3 setObject:v19 forKey:@"band_ind"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v20 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_31:
  v21 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v21 forKey:@"num_subs"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    v5 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v5 forKey:@"ps_pref"];
  }

LABEL_14:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v7 = self->_has;
  if ((v7 & 0x2000) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_isDueToSdm];
    [v3 setObject:v8 forKey:@"is_due_to_sdm"];

    v7 = self->_has;
  }

  if ((v7 & 0x400) != 0)
  {
    sdmTriggerCause = self->_sdmTriggerCause;
    if (sdmTriggerCause >= 0xC)
    {
      v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_sdmTriggerCause];
    }

    else
    {
      v10 = off_100317280[sdmTriggerCause];
    }

    [v3 setObject:v10 forKey:@"sdm_trigger_cause"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v20 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  reason = self->_reason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = self->_result;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  numBeamFailure = self->_numBeamFailure;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  numBeamRecovery = self->_numBeamRecovery;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  rxBeamSwitch = self->_rxBeamSwitch;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  txBeamSwitch = self->_txBeamSwitch;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  bandInd = self->_bandInd;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_31:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_13:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((v6 & 0x800) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((v6 & 0x2000) == 0)
    {
LABEL_17:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_17;
  }

  isDueToSdm = self->_isDueToSdm;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    sdmTriggerCause = self->_sdmTriggerCause;
    PBDataWriterWriteInt32Field();
  }

LABEL_19:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 40) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 13) = self->_reason;
  *(v4 + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 14) = self->_result;
  *(v4 + 40) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 5) = self->_duration;
  *(v4 + 40) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 6) = self->_numBeamFailure;
  *(v4 + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 7) = self->_numBeamRecovery;
  *(v4 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 15) = self->_rxBeamSwitch;
  *(v4 + 40) |= 0x200u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 18) = self->_txBeamSwitch;
  *(v4 + 40) |= 0x1000u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 4) = self->_bandInd;
  *(v4 + 40) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_31:
  *(v4 + 8) = self->_numSubs;
  *(v4 + 40) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    *(v4 + 12) = self->_psPref;
    *(v4 + 40) |= 0x40u;
  }

LABEL_13:
  if (self->_plmn)
  {
    v7 = v4;
    [v4 setPlmn:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x800) != 0)
  {
    *(v4 + 17) = self->_subsId;
    *(v4 + 40) |= 0x800u;
    v6 = self->_has;
    if ((v6 & 0x2000) == 0)
    {
LABEL_17:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_17;
  }

  *(v4 + 76) = self->_isDueToSdm;
  *(v4 + 40) |= 0x2000u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    *(v4 + 16) = self->_sdmTriggerCause;
    *(v4 + 40) |= 0x400u;
  }

LABEL_19:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 40) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 13) = self->_reason;
  *(v5 + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 14) = self->_result;
  *(v5 + 40) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 5) = self->_duration;
  *(v5 + 40) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 6) = self->_numBeamFailure;
  *(v5 + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 7) = self->_numBeamRecovery;
  *(v5 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 15) = self->_rxBeamSwitch;
  *(v5 + 40) |= 0x200u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 18) = self->_txBeamSwitch;
  *(v5 + 40) |= 0x1000u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 4) = self->_bandInd;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_27:
  *(v5 + 8) = self->_numSubs;
  *(v5 + 40) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    *(v5 + 12) = self->_psPref;
    *(v5 + 40) |= 0x40u;
  }

LABEL_13:
  v8 = [(NSData *)self->_plmn copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  v10 = self->_has;
  if ((v10 & 0x800) == 0)
  {
    if ((*&self->_has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    *(v6 + 76) = self->_isDueToSdm;
    *(v6 + 40) |= 0x2000u;
    if ((*&self->_has & 0x400) == 0)
    {
      return v6;
    }

    goto LABEL_16;
  }

  *(v6 + 17) = self->_subsId;
  *(v6 + 40) |= 0x800u;
  v10 = self->_has;
  if ((v10 & 0x2000) != 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v10 & 0x400) != 0)
  {
LABEL_16:
    *(v6 + 16) = self->_sdmTriggerCause;
    *(v6 + 40) |= 0x400u;
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
  v6 = *(v4 + 40);
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

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_reason != *(v4 + 13))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 40) & 0x100) == 0 || self->_result != *(v4 + 14))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 40) & 0x100) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_duration != *(v4 + 5))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_numBeamFailure != *(v4 + 6))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_numBeamRecovery != *(v4 + 7))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 40) & 0x200) == 0 || self->_rxBeamSwitch != *(v4 + 15))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 40) & 0x200) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 40) & 0x1000) == 0 || self->_txBeamSwitch != *(v4 + 18))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 40) & 0x1000) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_bandInd != *(v4 + 4))
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
    if ((v6 & 0x20) == 0 || self->_numSubs != *(v4 + 8))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_psPref != *(v4 + 12))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_77;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 5))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_77;
    }

    has = self->_has;
  }

  if ((has & 0x800) != 0)
  {
    if ((*(v4 + 40) & 0x800) == 0 || self->_subsId != *(v4 + 17))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 40) & 0x800) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x2000) == 0)
  {
    if ((*(v4 + 40) & 0x2000) == 0)
    {
      goto LABEL_67;
    }

LABEL_77:
    v8 = 0;
    goto LABEL_78;
  }

  if ((*(v4 + 40) & 0x2000) == 0)
  {
    goto LABEL_77;
  }

  v9 = *(v4 + 76);
  if (self->_isDueToSdm)
  {
    if ((*(v4 + 76) & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  else if (*(v4 + 76))
  {
    goto LABEL_77;
  }

LABEL_67:
  if ((has & 0x400) != 0)
  {
    if ((*(v4 + 40) & 0x400) == 0 || self->_sdmTriggerCause != *(v4 + 16))
    {
      goto LABEL_77;
    }

    v8 = 1;
  }

  else
  {
    v8 = (*(v4 + 40) & 0x400) == 0;
  }

LABEL_78:

  return v8;
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
      v19 = 2654435761 * self->_reason;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
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
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v18 = 2654435761 * self->_result;
    if ((has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v18 = 0;
  if ((has & 4) != 0)
  {
LABEL_5:
    v16 = 2654435761 * self->_duration;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v16 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v4 = 2654435761 * self->_numBeamFailure;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v5 = 2654435761 * self->_numBeamRecovery;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_8:
    v6 = 2654435761 * self->_rxBeamSwitch;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_9:
    v7 = 2654435761 * self->_txBeamSwitch;
    if ((has & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((has & 2) != 0)
  {
LABEL_10:
    v8 = 2654435761 * self->_bandInd;
    if ((has & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v9 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_21:
  v8 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v9 = 2654435761 * self->_numSubs;
  if ((has & 0x40) != 0)
  {
LABEL_12:
    v10 = 2654435761 * self->_psPref;
    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
LABEL_24:
  v11 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 0x800) == 0)
  {
    v12 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    v13 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v14 = 0;
    return v19 ^ v20 ^ v18 ^ v17 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v11;
  }

  v12 = 2654435761 * self->_subsId;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v13 = 2654435761 * self->_isDueToSdm;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  v14 = 2654435761 * self->_sdmTriggerCause;
  return v19 ^ v20 ^ v18 ^ v17 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_reason = *(v4 + 13);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 40);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_result = *(v4 + 14);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_duration = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_numBeamFailure = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_numBeamRecovery = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 40);
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_rxBeamSwitch = *(v4 + 15);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_txBeamSwitch = *(v4 + 18);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_bandInd = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_11:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_31:
  self->_numSubs = *(v4 + 8);
  *&self->_has |= 0x20u;
  if ((*(v4 + 40) & 0x40) != 0)
  {
LABEL_12:
    self->_psPref = *(v4 + 12);
    *&self->_has |= 0x40u;
  }

LABEL_13:
  if (*(v4 + 5))
  {
    v7 = v4;
    [(CellularNrScgRemoval *)self setPlmn:?];
    v4 = v7;
  }

  v6 = *(v4 + 40);
  if ((v6 & 0x800) != 0)
  {
    self->_subsId = *(v4 + 17);
    *&self->_has |= 0x800u;
    v6 = *(v4 + 40);
    if ((v6 & 0x2000) == 0)
    {
LABEL_17:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*(v4 + 40) & 0x2000) == 0)
  {
    goto LABEL_17;
  }

  self->_isDueToSdm = *(v4 + 76);
  *&self->_has |= 0x2000u;
  if ((*(v4 + 40) & 0x400) != 0)
  {
LABEL_18:
    self->_sdmTriggerCause = *(v4 + 16);
    *&self->_has |= 0x400u;
  }

LABEL_19:
}

@end