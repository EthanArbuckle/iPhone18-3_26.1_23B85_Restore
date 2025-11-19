@interface CellularNrSDMActivation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsTriggerCause:(id)a3;
- (int)triggerCause;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasApNrRecomm:(BOOL)a3;
- (void)setHasApNrRecommConfFactor:(BOOL)a3;
- (void)setHasDurationInPrevState:(BOOL)a3;
- (void)setHasFr1MeasDisabled:(BOOL)a3;
- (void)setHasFr2MeasDisabled:(BOOL)a3;
- (void)setHasPrevFr1MeasDisabled:(BOOL)a3;
- (void)setHasPrevFr2MeasDisabled:(BOOL)a3;
- (void)setHasSib24Configured:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTriggerCause:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularNrSDMActivation

- (void)setHasFr1MeasDisabled:(BOOL)a3
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

- (void)setHasFr2MeasDisabled:(BOOL)a3
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

- (void)setHasPrevFr1MeasDisabled:(BOOL)a3
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

- (void)setHasPrevFr2MeasDisabled:(BOOL)a3
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

- (int)triggerCause
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_triggerCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTriggerCause:(BOOL)a3
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

- (int)StringAsTriggerCause:(id)a3
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

- (void)setHasApNrRecomm:(BOOL)a3
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

- (void)setHasApNrRecommConfFactor:(BOOL)a3
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

- (void)setHasSib24Configured:(BOOL)a3
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

- (void)setHasDurationInPrevState:(BOOL)a3
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularNrSDMActivation;
  v3 = [(CellularNrSDMActivation *)&v7 description];
  v4 = [(CellularNrSDMActivation *)self dictionaryRepresentation];
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

  v8 = [NSNumber numberWithBool:self->_fr1MeasDisabled];
  [v3 setObject:v8 forKey:@"fr1_meas_disabled"];

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
  v9 = [NSNumber numberWithBool:self->_fr2MeasDisabled];
  [v3 setObject:v9 forKey:@"fr2_meas_disabled"];

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
  v10 = [NSNumber numberWithBool:self->_prevFr1MeasDisabled];
  [v3 setObject:v10 forKey:@"prev_fr1_meas_disabled"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = [NSNumber numberWithBool:self->_prevFr2MeasDisabled];
  [v3 setObject:v11 forKey:@"prev_fr2_meas_disabled"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_21:
  triggerCause = self->_triggerCause;
  if (triggerCause >= 0xC)
  {
    v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_triggerCause];
  }

  else
  {
    v13 = *(&off_100317EA8 + triggerCause);
  }

  [v3 setObject:v13 forKey:@"trigger_cause"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = [NSNumber numberWithBool:self->_apNrRecomm];
  [v3 setObject:v14 forKey:@"ap_nr_recomm"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = [NSNumber numberWithBool:self->_apNrRecommConfFactor];
  [v3 setObject:v15 forKey:@"ap_nr_recomm_conf_factor"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v16 = [NSNumber numberWithBool:self->_sib24Configured];
  [v3 setObject:v16 forKey:@"sib24_configured"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_28:
  v17 = [NSNumber numberWithUnsignedInt:self->_durationInPrevState];
  [v3 setObject:v17 forKey:@"duration_in_prev_state"];

  if ((*&self->_has & 4) != 0)
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

  fr1MeasDisabled = self->_fr1MeasDisabled;
  PBDataWriterWriteBOOLField();
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
  fr2MeasDisabled = self->_fr2MeasDisabled;
  PBDataWriterWriteBOOLField();
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
  prevFr1MeasDisabled = self->_prevFr1MeasDisabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  prevFr2MeasDisabled = self->_prevFr2MeasDisabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  triggerCause = self->_triggerCause;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  apNrRecomm = self->_apNrRecomm;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  apNrRecommConfFactor = self->_apNrRecommConfFactor;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  sib24Configured = self->_sib24Configured;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  durationInPrevState = self->_durationInPrevState;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
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
    *(v4 + 18) |= 1u;
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

  *(v4 + 30) = self->_fr1MeasDisabled;
  *(v4 + 18) |= 0x40u;
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
  *(v4 + 31) = self->_fr2MeasDisabled;
  *(v4 + 18) |= 0x80u;
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
  *(v4 + 32) = self->_prevFr1MeasDisabled;
  *(v4 + 18) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 33) = self->_prevFr2MeasDisabled;
  *(v4 + 18) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 6) = self->_triggerCause;
  *(v4 + 18) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 28) = self->_apNrRecomm;
  *(v4 + 18) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 29) = self->_apNrRecommConfFactor;
  *(v4 + 18) |= 0x20u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 34) = self->_sib24Configured;
  *(v4 + 18) |= 0x400u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  *(v4 + 4) = self->_durationInPrevState;
  *(v4 + 18) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(v4 + 5) = self->_subsId;
    *(v4 + 18) |= 4u;
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
    *(result + 18) |= 1u;
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

  *(result + 30) = self->_fr1MeasDisabled;
  *(result + 18) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 31) = self->_fr2MeasDisabled;
  *(result + 18) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 32) = self->_prevFr1MeasDisabled;
  *(result + 18) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 33) = self->_prevFr2MeasDisabled;
  *(result + 18) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 6) = self->_triggerCause;
  *(result + 18) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 28) = self->_apNrRecomm;
  *(result + 18) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 29) = self->_apNrRecommConfFactor;
  *(result + 18) |= 0x20u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 34) = self->_sib24Configured;
  *(result + 18) |= 0x400u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_23:
  *(result + 4) = self->_durationInPrevState;
  *(result + 18) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_12:
  *(result + 5) = self->_subsId;
  *(result + 18) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_78;
  }

  has = self->_has;
  v6 = *(v4 + 18);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_78;
    }
  }

  else if (v6)
  {
    goto LABEL_78;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_78;
    }

    v7 = *(v4 + 30);
    if (self->_fr1MeasDisabled)
    {
      if ((*(v4 + 30) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 30))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_78;
    }

    v8 = *(v4 + 31);
    if (self->_fr2MeasDisabled)
    {
      if ((*(v4 + 31) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 31))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 18) & 0x100) == 0)
    {
      goto LABEL_78;
    }

    v9 = *(v4 + 32);
    if (self->_prevFr1MeasDisabled)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_78;
    }
  }

  else if ((*(v4 + 18) & 0x100) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 18) & 0x200) == 0)
    {
      goto LABEL_78;
    }

    v10 = *(v4 + 33);
    if (self->_prevFr2MeasDisabled)
    {
      if ((*(v4 + 33) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 33))
    {
      goto LABEL_78;
    }
  }

  else if ((*(v4 + 18) & 0x200) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_triggerCause != *(v4 + 6))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_78;
    }

    v11 = *(v4 + 28);
    if (self->_apNrRecomm)
    {
      if ((*(v4 + 28) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 28))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_78;
    }

    v12 = *(v4 + 29);
    if (self->_apNrRecommConfFactor)
    {
      if ((*(v4 + 29) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 29))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x400) == 0)
  {
    if ((*(v4 + 18) & 0x400) == 0)
    {
      goto LABEL_48;
    }

LABEL_78:
    v14 = 0;
    goto LABEL_79;
  }

  if ((*(v4 + 18) & 0x400) == 0)
  {
    goto LABEL_78;
  }

  v13 = *(v4 + 34);
  if (self->_sib24Configured)
  {
    if ((*(v4 + 34) & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (*(v4 + 34))
  {
    goto LABEL_78;
  }

LABEL_48:
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_durationInPrevState != *(v4 + 4))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_subsId != *(v4 + 5))
    {
      goto LABEL_78;
    }

    v14 = 1;
  }

  else
  {
    v14 = (v6 & 4) == 0;
  }

LABEL_79:

  return v14;
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
      v4 = 2654435761 * self->_fr1MeasDisabled;
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
    v5 = 2654435761 * self->_fr2MeasDisabled;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_prevFr1MeasDisabled;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_prevFr2MeasDisabled;
    if ((has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  if ((has & 8) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_triggerCause;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_apNrRecomm;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_apNrRecommConfFactor;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_sib24Configured;
    if ((has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v12 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_21:
  v11 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = 2654435761 * self->_durationInPrevState;
  if ((has & 4) == 0)
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
  v5 = *(v4 + 18);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 18);
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

  self->_fr1MeasDisabled = *(v4 + 30);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 18);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_fr2MeasDisabled = *(v4 + 31);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 18);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_prevFr1MeasDisabled = *(v4 + 32);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 18);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_prevFr2MeasDisabled = *(v4 + 33);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 18);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_triggerCause = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 18);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_apNrRecomm = *(v4 + 28);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 18);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_apNrRecommConfFactor = *(v4 + 29);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 18);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_sib24Configured = *(v4 + 34);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 18);
  if ((v5 & 2) == 0)
  {
LABEL_11:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  self->_durationInPrevState = *(v4 + 4);
  *&self->_has |= 2u;
  if ((*(v4 + 18) & 4) != 0)
  {
LABEL_12:
    self->_subsId = *(v4 + 5);
    *&self->_has |= 4u;
  }

LABEL_13:
}

@end