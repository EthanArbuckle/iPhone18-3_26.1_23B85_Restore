@interface CellularNrRadioLinkFailure
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDeployment:(id)deployment;
- (int)StringAsExpiryTimerDuration:(id)duration;
- (int)StringAsMobilityState:(id)state;
- (int)StringAsReason:(id)reason;
- (int)deployment;
- (int)expiryTimerDuration;
- (int)mobilityState;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeployment:(BOOL)deployment;
- (void)setHasExpiryTimerDuration:(BOOL)duration;
- (void)setHasLastRsrp:(BOOL)rsrp;
- (void)setHasMobilityState:(BOOL)state;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasReason:(BOOL)reason;
- (void)setHasRlmInSyncOutOfSyncThreshold:(BOOL)threshold;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularNrRadioLinkFailure

- (int)reason
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_reason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)StringAsReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NR5G_RLF_CAUSE_T310_EXPIRY"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"NR5G_RLF_CAUSE_RACH_PROBLEM"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"NR5G_RLF_CAUSE_RLC_MAX_RETX"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"NR5G_RLF_CAUSE_SCG_CHANGE_FAILURE"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"NR5G_RLF_CAUSE_SCG_RECONFIG_FAILURE"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"NR5G_RLF_CAUSE_SRB3_IP_CHEK_FAILURE"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"NR5G_RLF_CAUSE_RECONFIGURATION_FAILURE"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"NR5G_RLF_CAUSE_HANDOVER_FAILURE"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"NR5G_RLF_CAUSE_OTHER_FAILURE"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)expiryTimerDuration
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_expiryTimerDuration;
  }

  else
  {
    return 0;
  }
}

- (void)setHasExpiryTimerDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)StringAsExpiryTimerDuration:(id)duration
{
  durationCopy = duration;
  if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_INVALID"])
  {
    v4 = 0;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS0"])
  {
    v4 = 1;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS50"])
  {
    v4 = 2;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS100"])
  {
    v4 = 3;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS150"])
  {
    v4 = 4;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS200"])
  {
    v4 = 5;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS300"])
  {
    v4 = 6;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS400"])
  {
    v4 = 7;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS500"])
  {
    v4 = 8;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS600"])
  {
    v4 = 9;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS1000"])
  {
    v4 = 10;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS1500"])
  {
    v4 = 11;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS2000"])
  {
    v4 = 12;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS3000"])
  {
    v4 = 13;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS4000"])
  {
    v4 = 14;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS5000"])
  {
    v4 = 15;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS6000"])
  {
    v4 = 16;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS10000"])
  {
    v4 = 17;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS15000"])
  {
    v4 = 18;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS20000"])
  {
    v4 = 19;
  }

  else if ([durationCopy isEqualToString:@"NR5G_RRC_TIMER_MS30000"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRlmInSyncOutOfSyncThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)mobilityState
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_mobilityState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMobilityState:(BOOL)state
{
  if (state)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)StringAsMobilityState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"MOTION_ST_STATIONARY"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"MOTION_ST_MOVING"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"MOTION_ST_PEDESTRIAN"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"MOTION_ST_DRIVING"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"MOTION_ST_SEMISTATIONARY"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLastRsrp:(BOOL)rsrp
{
  if (rsrp)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)deployment
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_deployment;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeployment:(BOOL)deployment
{
  if (deployment)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (int)StringAsDeployment:(id)deployment
{
  deploymentCopy = deployment;
  if ([deploymentCopy isEqualToString:@"DEPLOYMENT_SA"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [deploymentCopy isEqualToString:@"DEPLOYMENT_NSA"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularNrRadioLinkFailure;
  v3 = [(CellularNrRadioLinkFailure *)&v7 description];
  dictionaryRepresentation = [(CellularNrRadioLinkFailure *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v8 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  reason = self->_reason;
  if (reason >= 9)
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_reason];
  }

  else
  {
    v10 = *(&off_1003183B0 + reason);
  }

  [v3 setObject:v10 forKey:@"reason"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_22:
  expiryTimerDuration = self->_expiryTimerDuration;
  if (expiryTimerDuration >= 0x15)
  {
    v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_expiryTimerDuration];
  }

  else
  {
    v14 = *(&off_1003183F8 + expiryTimerDuration);
  }

  [v3 setObject:v14 forKey:@"expiry_timer_duration"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = [NSNumber numberWithBool:self->_rlmInSyncOutOfSyncThreshold];
  [v3 setObject:v18 forKey:@"rlm_in_sync_out_of_sync_threshold"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v19 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_34:
  v20 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v20 forKey:@"num_subs"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    v5 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v5 forKey:@"ps_pref"];
  }

LABEL_9:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
    if ((v7 & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v15 = [NSNumber numberWithInt:self->_lastRsrp];
    [v3 setObject:v15 forKey:@"last_rsrp"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_39;
    }

LABEL_27:
    deployment = self->_deployment;
    if (deployment)
    {
      if (deployment == 1)
      {
        v17 = @"DEPLOYMENT_NSA";
      }

      else
      {
        v17 = [NSString stringWithFormat:@"(unknown: %i)", self->_deployment];
      }
    }

    else
    {
      v17 = @"DEPLOYMENT_SA";
    }

    [v3 setObject:v17 forKey:@"deployment"];

    goto LABEL_39;
  }

  mobilityState = self->_mobilityState;
  if (mobilityState >= 5)
  {
    v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_mobilityState];
  }

  else
  {
    v12 = *(&off_1003184A0 + mobilityState);
  }

  [v3 setObject:v12 forKey:@"mobility_state"];

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v7 & 2) != 0)
  {
    goto LABEL_27;
  }

LABEL_39:

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
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  reason = self->_reason;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  expiryTimerDuration = self->_expiryTimerDuration;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  rlmInSyncOutOfSyncThreshold = self->_rlmInSyncOutOfSyncThreshold;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_23:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    mobilityState = self->_mobilityState;
    PBDataWriterWriteInt32Field();
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_13:
      if ((v6 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_13;
  }

  lastRsrp = self->_lastRsrp;
  PBDataWriterWriteSint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    deployment = self->_deployment;
    PBDataWriterWriteInt32Field();
  }

LABEL_15:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 32) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  *(toCopy + 13) = self->_reason;
  *(toCopy + 32) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(toCopy + 5) = self->_expiryTimerDuration;
  *(toCopy + 32) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(toCopy + 60) = self->_rlmInSyncOutOfSyncThreshold;
  *(toCopy + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(toCopy + 14) = self->_subsId;
  *(toCopy + 32) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_23:
  *(toCopy + 8) = self->_numSubs;
  *(toCopy + 32) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    *(toCopy + 12) = self->_psPref;
    *(toCopy + 32) |= 0x40u;
  }

LABEL_9:
  if (self->_plmn)
  {
    v7 = toCopy;
    [toCopy setPlmn:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(toCopy + 7) = self->_mobilityState;
    *(toCopy + 32) |= 0x10u;
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_13:
      if ((v6 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 6) = self->_lastRsrp;
  *(toCopy + 32) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    *(toCopy + 4) = self->_deployment;
    *(toCopy + 32) |= 2u;
  }

LABEL_15:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 32) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 13) = self->_reason;
  *(v5 + 32) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 5) = self->_expiryTimerDuration;
  *(v5 + 32) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 60) = self->_rlmInSyncOutOfSyncThreshold;
  *(v5 + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 14) = self->_subsId;
  *(v5 + 32) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  *(v5 + 8) = self->_numSubs;
  *(v5 + 32) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    *(v5 + 12) = self->_psPref;
    *(v5 + 32) |= 0x40u;
  }

LABEL_9:
  v8 = [(NSData *)self->_plmn copyWithZone:zone];
  v9 = v6[5];
  v6[5] = v8;

  v10 = self->_has;
  if ((v10 & 0x10) == 0)
  {
    if ((v10 & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    *(v6 + 6) = self->_lastRsrp;
    *(v6 + 32) |= 8u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_12;
  }

  *(v6 + 7) = self->_mobilityState;
  *(v6 + 32) |= 0x10u;
  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v10 & 2) != 0)
  {
LABEL_12:
    *(v6 + 4) = self->_deployment;
    *(v6 + 32) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_58;
    }
  }

  else if (v6)
  {
    goto LABEL_58;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_reason != *(equalCopy + 13))
    {
      goto LABEL_58;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_expiryTimerDuration != *(equalCopy + 5))
    {
      goto LABEL_58;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 32) & 0x200) == 0)
    {
      goto LABEL_58;
    }

    v7 = *(equalCopy + 60);
    if (self->_rlmInSyncOutOfSyncThreshold)
    {
      if ((*(equalCopy + 60) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(equalCopy + 60))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 32) & 0x200) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 32) & 0x100) == 0 || self->_subsId != *(equalCopy + 14))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 32) & 0x100) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_numSubs != *(equalCopy + 8))
    {
      goto LABEL_58;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_psPref != *(equalCopy + 12))
    {
      goto LABEL_58;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_58;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 5))
  {
    if ([(NSData *)plmn isEqual:?])
    {
      has = self->_has;
      goto LABEL_43;
    }

LABEL_58:
    v10 = 0;
    goto LABEL_59;
  }

LABEL_43:
  v9 = *(equalCopy + 32);
  if ((has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_mobilityState != *(equalCopy + 7))
    {
      goto LABEL_58;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_lastRsrp != *(equalCopy + 6))
    {
      goto LABEL_58;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_deployment != *(equalCopy + 4))
    {
      goto LABEL_58;
    }

    v10 = 1;
  }

  else
  {
    v10 = (v9 & 2) == 0;
  }

LABEL_59:

  return v10;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((has & 0x80) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_reason;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_expiryTimerDuration;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_rlmInSyncOutOfSyncThreshold;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_subsId;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v8 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v9 = 2654435761 * self->_numSubs;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v10 = 2654435761 * self->_psPref;
    goto LABEL_16;
  }

LABEL_15:
  v10 = 0;
LABEL_16:
  v11 = [(NSData *)self->_plmn hash];
  v12 = self->_has;
  if ((v12 & 0x10) == 0)
  {
    v13 = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v14 = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v15 = 0;
    return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v11;
  }

  v13 = 2654435761 * self->_mobilityState;
  if ((v12 & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v14 = 2654435761 * self->_lastRsrp;
  if ((v12 & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v15 = 2654435761 * self->_deployment;
  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 32);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_reason = *(fromCopy + 13);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_expiryTimerDuration = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_rlmInSyncOutOfSyncThreshold = *(fromCopy + 60);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_subsId = *(fromCopy + 14);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_23:
  self->_numSubs = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 32) & 0x40) != 0)
  {
LABEL_8:
    self->_psPref = *(fromCopy + 12);
    *&self->_has |= 0x40u;
  }

LABEL_9:
  if (*(fromCopy + 5))
  {
    v7 = fromCopy;
    [(CellularNrRadioLinkFailure *)self setPlmn:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 32);
  if ((v6 & 0x10) != 0)
  {
    self->_mobilityState = *(fromCopy + 7);
    *&self->_has |= 0x10u;
    v6 = *(fromCopy + 32);
    if ((v6 & 8) == 0)
    {
LABEL_13:
      if ((v6 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_13;
  }

  self->_lastRsrp = *(fromCopy + 6);
  *&self->_has |= 8u;
  if ((*(fromCopy + 32) & 2) != 0)
  {
LABEL_14:
    self->_deployment = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

LABEL_15:
}

@end