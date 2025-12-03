@interface CellularLqmStateChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCongestionReason:(id)reason;
- (int)StringAsHiPowerEvent:(id)event;
- (int)StringAsHiPowerExitReason:(id)reason;
- (int)congestionReason;
- (int)hiPowerEvent;
- (int)hiPowerExitReason;
- (unint64_t)hash;
- (void)addLteChanInfo:(id)info;
- (void)addUmtsChanInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBbInHiPowerState:(BOOL)state;
- (void)setHasCellId:(BOOL)id;
- (void)setHasCongestionReason:(BOOL)reason;
- (void)setHasDurationSec:(BOOL)sec;
- (void)setHasFgAppActiveDuringCongestion:(BOOL)congestion;
- (void)setHasHiPowerEvent:(BOOL)event;
- (void)setHasHiPowerExitReason:(BOOL)reason;
- (void)setHasIsScreenOn:(BOOL)on;
- (void)setHasLqmType:(BOOL)type;
- (void)setHasMcc:(BOOL)mcc;
- (void)setHasMnc:(BOOL)mnc;
- (void)setHasNumMncDigits:(BOOL)digits;
- (void)setHasSwimWorkoutActive:(BOOL)active;
- (void)setHasSysMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation CellularLqmStateChange

- (void)setHasDurationSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasLqmType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSysMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsScreenOn:(BOOL)on
{
  if (on)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)addLteChanInfo:(id)info
{
  infoCopy = info;
  lteChanInfos = self->_lteChanInfos;
  v8 = infoCopy;
  if (!lteChanInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_lteChanInfos;
    self->_lteChanInfos = v6;

    infoCopy = v8;
    lteChanInfos = self->_lteChanInfos;
  }

  [(NSMutableArray *)lteChanInfos addObject:infoCopy];
}

- (void)addUmtsChanInfo:(id)info
{
  infoCopy = info;
  umtsChanInfos = self->_umtsChanInfos;
  v8 = infoCopy;
  if (!umtsChanInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_umtsChanInfos;
    self->_umtsChanInfos = v6;

    infoCopy = v8;
    umtsChanInfos = self->_umtsChanInfos;
  }

  [(NSMutableArray *)umtsChanInfos addObject:infoCopy];
}

- (void)setHasBbInHiPowerState:(BOOL)state
{
  if (state)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (int)hiPowerEvent
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_hiPowerEvent;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHiPowerEvent:(BOOL)event
{
  if (event)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)StringAsHiPowerEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"LQM_EVENT_RLC_MAX_RETX"])
  {
    v4 = 0;
  }

  else if ([eventCopy isEqualToString:@"LQM_EVENT_RACH_FAILURE"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"LQM_EVENT_LTE_PHY_ABORT"])
  {
    v4 = 2;
  }

  else if ([eventCopy isEqualToString:@"LQM_EVENT_LTE_HI_POWER"])
  {
    v4 = 3;
  }

  else if ([eventCopy isEqualToString:@"LQM_EVENT_WCDMA_HI_POWER"])
  {
    v4 = 4;
  }

  else if ([eventCopy isEqualToString:@"LQM_EVENT_LTE_POOR_SIGNAL_CONDITION"])
  {
    v4 = 5;
  }

  else if ([eventCopy isEqualToString:@"LQM_EVENT_WCDMA_POOR_SIGNAL_CONDITION"])
  {
    v4 = 6;
  }

  else if ([eventCopy isEqualToString:@"LQM_EVENT_WCDMA_RACH_FAILURE"])
  {
    v4 = 7;
  }

  else if ([eventCopy isEqualToString:@"LQM_EVENT_EXCESSIVE_IRAT"])
  {
    v4 = 8;
  }

  else if ([eventCopy isEqualToString:@"LQM_EVENT_MAX"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSwimWorkoutActive:(BOOL)active
{
  if (active)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (int)hiPowerExitReason
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_hiPowerExitReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHiPowerExitReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)StringAsHiPowerExitReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"LQM_HPM_EXIT_REASON_GUARD_TIMER_EXPIRY"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"LQM_HPM_EXIT_REASON_SIGNAL_IMPROVEMENT"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"LQM_HPM_EXIT_REASON_USER_ACTIVITY"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"LQM_HPM_EXIT_REASON_MAX"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)congestionReason
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_congestionReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCongestionReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)StringAsCongestionReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"LQM_CONGESTION_REASON_RRC_REJECT"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"LQM_CONGESTION_REASON_NAS_REJECT"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"LQM_CONGESTION_REASON_ACCESS_BARRED"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"LQM_CONGESTION_REASON_RACH_FAILURES"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"LQM_CONGESTION_REASON_TRICKLING_GRANT"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"LQM_CONGESTION_REASON_RLC_MAX_RETX"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"LQM_CONGESTION_REASON_POOR_SIGNAL_CONDITIONS"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"LQM_CONGESTION_REASON_MAX"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCellId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasNumMncDigits:(BOOL)digits
{
  if (digits)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasMcc:(BOOL)mcc
{
  if (mcc)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasMnc:(BOOL)mnc
{
  if (mnc)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasFgAppActiveDuringCongestion:(BOOL)congestion
{
  if (congestion)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLqmStateChange;
  v3 = [(CellularLqmStateChange *)&v7 description];
  dictionaryRepresentation = [(CellularLqmStateChange *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v25 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v25 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  v26 = [NSNumber numberWithUnsignedInt:self->_durationSec];
  [v3 setObject:v26 forKey:@"duration_sec"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  v27 = [NSNumber numberWithInt:self->_lqmType];
  [v3 setObject:v27 forKey:@"lqm_type"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_44:
  v28 = [NSNumber numberWithInt:self->_sysMode];
  [v3 setObject:v28 forKey:@"sys_mode"];

  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithBool:self->_isScreenOn];
    [v3 setObject:v5 forKey:@"is_screen_on"];
  }

LABEL_7:
  rachConnInfo = self->_rachConnInfo;
  if (rachConnInfo)
  {
    dictionaryRepresentation = [(RachConnInfo *)rachConnInfo dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"rach_conn_info"];
  }

  if ([(NSMutableArray *)self->_lteChanInfos count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_lteChanInfos, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = self->_lteChanInfos;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v46;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v45 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"lte_chan_info"];
  }

  if ([(NSMutableArray *)self->_umtsChanInfos count])
  {
    v15 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_umtsChanInfos, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = self->_umtsChanInfos;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v42;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation3 = [*(*(&v41 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation3];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKey:@"umts_chan_info"];
  }

  v22 = self->_has;
  if ((v22 & 0x800) != 0)
  {
    v29 = [NSNumber numberWithBool:self->_bbInHiPowerState];
    [v3 setObject:v29 forKey:@"bb_in_hi_power_state"];

    v22 = self->_has;
    if ((v22 & 0x10) == 0)
    {
LABEL_29:
      if ((v22 & 0x4000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_70;
    }
  }

  else if ((v22 & 0x10) == 0)
  {
    goto LABEL_29;
  }

  hiPowerEvent = self->_hiPowerEvent;
  if (hiPowerEvent <= 4)
  {
    if (hiPowerEvent > 1)
    {
      if (hiPowerEvent == 2)
      {
        v31 = @"LQM_EVENT_LTE_PHY_ABORT";
      }

      else if (hiPowerEvent == 3)
      {
        v31 = @"LQM_EVENT_LTE_HI_POWER";
      }

      else
      {
        v31 = @"LQM_EVENT_WCDMA_HI_POWER";
      }

      goto LABEL_69;
    }

    if (!hiPowerEvent)
    {
      v31 = @"LQM_EVENT_RLC_MAX_RETX";
      goto LABEL_69;
    }

    if (hiPowerEvent == 1)
    {
      v31 = @"LQM_EVENT_RACH_FAILURE";
      goto LABEL_69;
    }

LABEL_68:
    v31 = [NSString stringWithFormat:@"(unknown: %i)", self->_hiPowerEvent];
    goto LABEL_69;
  }

  if (hiPowerEvent > 6)
  {
    switch(hiPowerEvent)
    {
      case 7:
        v31 = @"LQM_EVENT_WCDMA_RACH_FAILURE";
        goto LABEL_69;
      case 8:
        v31 = @"LQM_EVENT_EXCESSIVE_IRAT";
        goto LABEL_69;
      case 255:
        v31 = @"LQM_EVENT_MAX";
        goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (hiPowerEvent == 5)
  {
    v31 = @"LQM_EVENT_LTE_POOR_SIGNAL_CONDITION";
  }

  else
  {
    v31 = @"LQM_EVENT_WCDMA_POOR_SIGNAL_CONDITION";
  }

LABEL_69:
  [v3 setObject:v31 forKey:@"hi_power_event"];

  v22 = self->_has;
  if ((v22 & 0x4000) == 0)
  {
LABEL_30:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  v32 = [NSNumber numberWithBool:self->_swimWorkoutActive];
  [v3 setObject:v32 forKey:@"swim_workout_active"];

  v22 = self->_has;
  if ((v22 & 0x20) == 0)
  {
LABEL_31:
    if ((v22 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_82;
  }

LABEL_71:
  hiPowerExitReason = self->_hiPowerExitReason;
  if (hiPowerExitReason > 1)
  {
    if (hiPowerExitReason != 2)
    {
      if (hiPowerExitReason == 255)
      {
        v34 = @"LQM_HPM_EXIT_REASON_MAX";
        goto LABEL_81;
      }

      goto LABEL_78;
    }

    v34 = @"LQM_HPM_EXIT_REASON_USER_ACTIVITY";
  }

  else
  {
    if (hiPowerExitReason)
    {
      if (hiPowerExitReason == 1)
      {
        v34 = @"LQM_HPM_EXIT_REASON_SIGNAL_IMPROVEMENT";
        goto LABEL_81;
      }

LABEL_78:
      v34 = [NSString stringWithFormat:@"(unknown: %i)", self->_hiPowerExitReason];
      goto LABEL_81;
    }

    v34 = @"LQM_HPM_EXIT_REASON_GUARD_TIMER_EXPIRY";
  }

LABEL_81:
  [v3 setObject:v34 forKey:@"hi_power_exit_reason"];

  v22 = self->_has;
  if ((v22 & 4) == 0)
  {
LABEL_32:
    if ((v22 & 2) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_101;
  }

LABEL_82:
  congestionReason = self->_congestionReason;
  if (congestionReason > 3)
  {
    if (congestionReason > 5)
    {
      if (congestionReason == 6)
      {
        v36 = @"LQM_CONGESTION_REASON_POOR_SIGNAL_CONDITIONS";
        goto LABEL_100;
      }

      if (congestionReason == 255)
      {
        v36 = @"LQM_CONGESTION_REASON_MAX";
        goto LABEL_100;
      }

      goto LABEL_99;
    }

    if (congestionReason == 4)
    {
      v36 = @"LQM_CONGESTION_REASON_TRICKLING_GRANT";
    }

    else
    {
      v36 = @"LQM_CONGESTION_REASON_RLC_MAX_RETX";
    }
  }

  else
  {
    if (congestionReason <= 1)
    {
      if (!congestionReason)
      {
        v36 = @"LQM_CONGESTION_REASON_RRC_REJECT";
        goto LABEL_100;
      }

      if (congestionReason == 1)
      {
        v36 = @"LQM_CONGESTION_REASON_NAS_REJECT";
        goto LABEL_100;
      }

LABEL_99:
      v36 = [NSString stringWithFormat:@"(unknown: %i)", self->_congestionReason];
      goto LABEL_100;
    }

    if (congestionReason == 2)
    {
      v36 = @"LQM_CONGESTION_REASON_ACCESS_BARRED";
    }

    else
    {
      v36 = @"LQM_CONGESTION_REASON_RACH_FAILURES";
    }
  }

LABEL_100:
  [v3 setObject:v36 forKey:@"congestion_reason"];

  v22 = self->_has;
  if ((v22 & 2) == 0)
  {
LABEL_33:
    if ((v22 & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_102;
  }

LABEL_101:
  v37 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v37 forKey:@"cell_id"];

  v22 = self->_has;
  if ((v22 & 0x200) == 0)
  {
LABEL_34:
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_103;
  }

LABEL_102:
  v38 = [NSNumber numberWithUnsignedInt:self->_numMncDigits];
  [v3 setObject:v38 forKey:@"num_mnc_digits"];

  v22 = self->_has;
  if ((v22 & 0x80) == 0)
  {
LABEL_35:
    if ((v22 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_104;
  }

LABEL_103:
  v39 = [NSNumber numberWithUnsignedInt:self->_mcc];
  [v3 setObject:v39 forKey:@"mcc"];

  v22 = self->_has;
  if ((v22 & 0x100) == 0)
  {
LABEL_36:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_104:
  v40 = [NSNumber numberWithUnsignedInt:self->_mnc];
  [v3 setObject:v40 forKey:@"mnc"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_37:
    v23 = [NSNumber numberWithBool:self->_fgAppActiveDuringCongestion];
    [v3 setObject:v23 forKey:@"fg_app_active_during_congestion"];
  }

LABEL_38:

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
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  durationSec = self->_durationSec;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  lqmType = self->_lqmType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_38:
  sysMode = self->_sysMode;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_6:
    isScreenOn = self->_isScreenOn;
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
  if (self->_rachConnInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = self->_lteChanInfos;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v9);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = self->_umtsChanInfos;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v34 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v15);
  }

  v19 = self->_has;
  if ((v19 & 0x800) != 0)
  {
    bbInHiPowerState = self->_bbInHiPowerState;
    PBDataWriterWriteBOOLField();
    v19 = self->_has;
    if ((v19 & 0x10) == 0)
    {
LABEL_25:
      if ((v19 & 0x4000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_42;
    }
  }

  else if ((v19 & 0x10) == 0)
  {
    goto LABEL_25;
  }

  hiPowerEvent = self->_hiPowerEvent;
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((v19 & 0x4000) == 0)
  {
LABEL_26:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

LABEL_42:
  swimWorkoutActive = self->_swimWorkoutActive;
  PBDataWriterWriteBOOLField();
  v19 = self->_has;
  if ((v19 & 0x20) == 0)
  {
LABEL_27:
    if ((v19 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

LABEL_43:
  hiPowerExitReason = self->_hiPowerExitReason;
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((v19 & 4) == 0)
  {
LABEL_28:
    if ((v19 & 2) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_45;
  }

LABEL_44:
  congestionReason = self->_congestionReason;
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((v19 & 2) == 0)
  {
LABEL_29:
    if ((v19 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_46;
  }

LABEL_45:
  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  v19 = self->_has;
  if ((v19 & 0x200) == 0)
  {
LABEL_30:
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

LABEL_46:
  numMncDigits = self->_numMncDigits;
  PBDataWriterWriteUint32Field();
  v19 = self->_has;
  if ((v19 & 0x80) == 0)
  {
LABEL_31:
    if ((v19 & 0x100) == 0)
    {
      goto LABEL_32;
    }

LABEL_48:
    mnc = self->_mnc;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_47:
  mcc = self->_mcc;
  PBDataWriterWriteUint32Field();
  v19 = self->_has;
  if ((v19 & 0x100) != 0)
  {
    goto LABEL_48;
  }

LABEL_32:
  if ((v19 & 0x1000) != 0)
  {
LABEL_33:
    fgAppActiveDuringCongestion = self->_fgAppActiveDuringCongestion;
    PBDataWriterWriteBOOLField();
  }

LABEL_34:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 46) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 6) = self->_durationSec;
  *(toCopy + 46) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(toCopy + 9) = self->_lqmType;
  *(toCopy + 46) |= 0x40u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_34:
  *(toCopy + 18) = self->_sysMode;
  *(toCopy + 46) |= 0x400u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_6:
    *(toCopy + 90) = self->_isScreenOn;
    *(toCopy + 46) |= 0x2000u;
  }

LABEL_7:
  v15 = toCopy;
  if (self->_rachConnInfo)
  {
    [toCopy setRachConnInfo:?];
  }

  if ([(CellularLqmStateChange *)self lteChanInfosCount])
  {
    [v15 clearLteChanInfos];
    lteChanInfosCount = [(CellularLqmStateChange *)self lteChanInfosCount];
    if (lteChanInfosCount)
    {
      v7 = lteChanInfosCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularLqmStateChange *)self lteChanInfoAtIndex:i];
        [v15 addLteChanInfo:v9];
      }
    }
  }

  if ([(CellularLqmStateChange *)self umtsChanInfosCount])
  {
    [v15 clearUmtsChanInfos];
    umtsChanInfosCount = [(CellularLqmStateChange *)self umtsChanInfosCount];
    if (umtsChanInfosCount)
    {
      v11 = umtsChanInfosCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(CellularLqmStateChange *)self umtsChanInfoAtIndex:j];
        [v15 addUmtsChanInfo:v13];
      }
    }
  }

  v14 = self->_has;
  if ((v14 & 0x800) != 0)
  {
    *(v15 + 88) = self->_bbInHiPowerState;
    *(v15 + 46) |= 0x800u;
    v14 = self->_has;
    if ((v14 & 0x10) == 0)
    {
LABEL_19:
      if ((v14 & 0x4000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_38;
    }
  }

  else if ((v14 & 0x10) == 0)
  {
    goto LABEL_19;
  }

  *(v15 + 7) = self->_hiPowerEvent;
  *(v15 + 46) |= 0x10u;
  v14 = self->_has;
  if ((v14 & 0x4000) == 0)
  {
LABEL_20:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v15 + 91) = self->_swimWorkoutActive;
  *(v15 + 46) |= 0x4000u;
  v14 = self->_has;
  if ((v14 & 0x20) == 0)
  {
LABEL_21:
    if ((v14 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v15 + 8) = self->_hiPowerExitReason;
  *(v15 + 46) |= 0x20u;
  v14 = self->_has;
  if ((v14 & 4) == 0)
  {
LABEL_22:
    if ((v14 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v15 + 5) = self->_congestionReason;
  *(v15 + 46) |= 4u;
  v14 = self->_has;
  if ((v14 & 2) == 0)
  {
LABEL_23:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v15 + 4) = self->_cellId;
  *(v15 + 46) |= 2u;
  v14 = self->_has;
  if ((v14 & 0x200) == 0)
  {
LABEL_24:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v15 + 14) = self->_numMncDigits;
  *(v15 + 46) |= 0x200u;
  v14 = self->_has;
  if ((v14 & 0x80) == 0)
  {
LABEL_25:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v15 + 12) = self->_mcc;
  *(v15 + 46) |= 0x80u;
  v14 = self->_has;
  if ((v14 & 0x100) == 0)
  {
LABEL_26:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_44:
  *(v15 + 13) = self->_mnc;
  *(v15 + 46) |= 0x100u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_27:
    *(v15 + 89) = self->_fgAppActiveDuringCongestion;
    *(v15 + 46) |= 0x1000u;
  }

LABEL_28:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 46) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 6) = self->_durationSec;
  *(v5 + 46) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 9) = self->_lqmType;
  *(v5 + 46) |= 0x40u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_36:
  *(v5 + 18) = self->_sysMode;
  *(v5 + 46) |= 0x400u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_6:
    *(v5 + 90) = self->_isScreenOn;
    *(v5 + 46) |= 0x2000u;
  }

LABEL_7:
  v8 = [(RachConnInfo *)self->_rachConnInfo copyWithZone:zone];
  v9 = v6[8];
  v6[8] = v8;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_lteChanInfos;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v28 + 1) + 8 * i) copyWithZone:zone];
        [v6 addLteChanInfo:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v12);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_umtsChanInfos;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * j) copyWithZone:{zone, v24}];
        [v6 addUmtsChanInfo:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  v22 = self->_has;
  if ((v22 & 0x800) != 0)
  {
    *(v6 + 88) = self->_bbInHiPowerState;
    *(v6 + 46) |= 0x800u;
    v22 = self->_has;
    if ((v22 & 0x10) == 0)
    {
LABEL_23:
      if ((v22 & 0x4000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_40;
    }
  }

  else if ((v22 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  *(v6 + 7) = self->_hiPowerEvent;
  *(v6 + 46) |= 0x10u;
  v22 = self->_has;
  if ((v22 & 0x4000) == 0)
  {
LABEL_24:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v6 + 91) = self->_swimWorkoutActive;
  *(v6 + 46) |= 0x4000u;
  v22 = self->_has;
  if ((v22 & 0x20) == 0)
  {
LABEL_25:
    if ((v22 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 8) = self->_hiPowerExitReason;
  *(v6 + 46) |= 0x20u;
  v22 = self->_has;
  if ((v22 & 4) == 0)
  {
LABEL_26:
    if ((v22 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v6 + 5) = self->_congestionReason;
  *(v6 + 46) |= 4u;
  v22 = self->_has;
  if ((v22 & 2) == 0)
  {
LABEL_27:
    if ((v22 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v6 + 4) = self->_cellId;
  *(v6 + 46) |= 2u;
  v22 = self->_has;
  if ((v22 & 0x200) == 0)
  {
LABEL_28:
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 14) = self->_numMncDigits;
  *(v6 + 46) |= 0x200u;
  v22 = self->_has;
  if ((v22 & 0x80) == 0)
  {
LABEL_29:
    if ((v22 & 0x100) == 0)
    {
      goto LABEL_30;
    }

LABEL_46:
    *(v6 + 13) = self->_mnc;
    *(v6 + 46) |= 0x100u;
    if ((*&self->_has & 0x1000) == 0)
    {
      return v6;
    }

    goto LABEL_31;
  }

LABEL_45:
  *(v6 + 12) = self->_mcc;
  *(v6 + 46) |= 0x80u;
  v22 = self->_has;
  if ((v22 & 0x100) != 0)
  {
    goto LABEL_46;
  }

LABEL_30:
  if ((v22 & 0x1000) != 0)
  {
LABEL_31:
    *(v6 + 89) = self->_fgAppActiveDuringCongestion;
    *(v6 + 46) |= 0x1000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  has = self->_has;
  v6 = *(equalCopy + 46);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_36;
    }
  }

  else if (v6)
  {
    goto LABEL_36;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_durationSec != *(equalCopy + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_36;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_lqmType != *(equalCopy + 9))
    {
      goto LABEL_36;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 46) & 0x400) == 0 || self->_sysMode != *(equalCopy + 18))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 46) & 0x400) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 46) & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    v14 = *(equalCopy + 90);
    if (self->_isScreenOn)
    {
      if ((*(equalCopy + 90) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(equalCopy + 90))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 46) & 0x2000) != 0)
  {
    goto LABEL_36;
  }

  rachConnInfo = self->_rachConnInfo;
  if (rachConnInfo | *(equalCopy + 8) && ![(RachConnInfo *)rachConnInfo isEqual:?])
  {
    goto LABEL_36;
  }

  lteChanInfos = self->_lteChanInfos;
  if (lteChanInfos | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)lteChanInfos isEqual:?])
    {
      goto LABEL_36;
    }
  }

  umtsChanInfos = self->_umtsChanInfos;
  if (umtsChanInfos | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)umtsChanInfos isEqual:?])
    {
      goto LABEL_36;
    }
  }

  v10 = self->_has;
  v11 = *(equalCopy + 46);
  if ((v10 & 0x800) != 0)
  {
    if ((*(equalCopy + 46) & 0x800) == 0)
    {
      goto LABEL_36;
    }

    v15 = *(equalCopy + 88);
    if (self->_bbInHiPowerState)
    {
      if ((*(equalCopy + 88) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(equalCopy + 88))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 46) & 0x800) != 0)
  {
    goto LABEL_36;
  }

  if ((v10 & 0x10) != 0)
  {
    if ((v11 & 0x10) == 0 || self->_hiPowerEvent != *(equalCopy + 7))
    {
      goto LABEL_36;
    }
  }

  else if ((v11 & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(equalCopy + 46) & 0x4000) == 0)
    {
      goto LABEL_36;
    }

    v16 = *(equalCopy + 91);
    if (self->_swimWorkoutActive)
    {
      if ((*(equalCopy + 91) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(equalCopy + 91))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 46) & 0x4000) != 0)
  {
    goto LABEL_36;
  }

  if ((v10 & 0x20) != 0)
  {
    if ((v11 & 0x20) == 0 || self->_hiPowerExitReason != *(equalCopy + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((v11 & 0x20) != 0)
  {
    goto LABEL_36;
  }

  if ((v10 & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_congestionReason != *(equalCopy + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((v10 & 2) != 0)
  {
    if ((v11 & 2) == 0 || self->_cellId != *(equalCopy + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((v11 & 2) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 46) & 0x200) == 0 || self->_numMncDigits != *(equalCopy + 14))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 46) & 0x200) != 0)
  {
    goto LABEL_36;
  }

  if ((v10 & 0x80) != 0)
  {
    if ((v11 & 0x80) == 0 || self->_mcc != *(equalCopy + 12))
    {
      goto LABEL_36;
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 46) & 0x100) == 0 || self->_mnc != *(equalCopy + 13))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 46) & 0x100) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x1000) == 0)
  {
    v12 = (v11 & 0x1000) == 0;
    goto LABEL_37;
  }

  if ((*(equalCopy + 46) & 0x1000) != 0)
  {
    if (self->_fgAppActiveDuringCongestion)
    {
      if (*(equalCopy + 89))
      {
        goto LABEL_96;
      }
    }

    else if (!*(equalCopy + 89))
    {
LABEL_96:
      v12 = 1;
      goto LABEL_37;
    }
  }

LABEL_36:
  v12 = 0;
LABEL_37:

  return v12;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((has & 8) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_durationSec;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_lqmType;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v6 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_sysMode;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_isScreenOn;
    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  v9 = [(RachConnInfo *)self->_rachConnInfo hash];
  v10 = [(NSMutableArray *)self->_lteChanInfos hash];
  v11 = [(NSMutableArray *)self->_umtsChanInfos hash];
  v12 = self->_has;
  if ((v12 & 0x800) != 0)
  {
    v13 = 2654435761 * self->_bbInHiPowerState;
    if ((v12 & 0x10) != 0)
    {
LABEL_14:
      v14 = 2654435761 * self->_hiPowerEvent;
      if ((*&self->_has & 0x4000) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v13 = 0;
    if ((v12 & 0x10) != 0)
    {
      goto LABEL_14;
    }
  }

  v14 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_15:
    v15 = 2654435761 * self->_swimWorkoutActive;
    if ((v12 & 0x20) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = 0;
  if ((v12 & 0x20) != 0)
  {
LABEL_16:
    v16 = 2654435761 * self->_hiPowerExitReason;
    if ((v12 & 4) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = 0;
  if ((v12 & 4) != 0)
  {
LABEL_17:
    v17 = 2654435761 * self->_congestionReason;
    if ((v12 & 2) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = 0;
  if ((v12 & 2) != 0)
  {
LABEL_18:
    v18 = 2654435761 * self->_cellId;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_19:
    v19 = 2654435761 * self->_numMncDigits;
    if ((v12 & 0x80) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  v19 = 0;
  if ((v12 & 0x80) != 0)
  {
LABEL_20:
    v20 = 2654435761 * self->_mcc;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_21;
    }

LABEL_31:
    v21 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_22;
    }

LABEL_32:
    v22 = 0;
    return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
  }

LABEL_30:
  v20 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v21 = 2654435761 * self->_mnc;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_32;
  }

LABEL_22:
  v22 = 2654435761 * self->_fgAppActiveDuringCongestion;
  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 46);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 46);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_durationSec = *(fromCopy + 6);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 46);
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_lqmType = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v6 = *(fromCopy + 46);
  if ((v6 & 0x400) == 0)
  {
LABEL_5:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_sysMode = *(fromCopy + 18);
  *&self->_has |= 0x400u;
  if ((*(fromCopy + 46) & 0x2000) != 0)
  {
LABEL_6:
    self->_isScreenOn = *(fromCopy + 90);
    *&self->_has |= 0x2000u;
  }

LABEL_7:
  rachConnInfo = self->_rachConnInfo;
  v8 = *(v5 + 8);
  if (rachConnInfo)
  {
    if (v8)
    {
      [(RachConnInfo *)rachConnInfo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(CellularLqmStateChange *)self setRachConnInfo:?];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = *(v5 + 5);
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(CellularLqmStateChange *)self addLteChanInfo:*(*(&v24 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = *(v5 + 10);
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(CellularLqmStateChange *)self addUmtsChanInfo:*(*(&v20 + 1) + 8 * j), v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  v19 = *(v5 + 46);
  if ((v19 & 0x800) != 0)
  {
    self->_bbInHiPowerState = *(v5 + 88);
    *&self->_has |= 0x800u;
    v19 = *(v5 + 46);
    if ((v19 & 0x10) == 0)
    {
LABEL_33:
      if ((v19 & 0x4000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_45;
    }
  }

  else if ((v19 & 0x10) == 0)
  {
    goto LABEL_33;
  }

  self->_hiPowerEvent = *(v5 + 7);
  *&self->_has |= 0x10u;
  v19 = *(v5 + 46);
  if ((v19 & 0x4000) == 0)
  {
LABEL_34:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_swimWorkoutActive = *(v5 + 91);
  *&self->_has |= 0x4000u;
  v19 = *(v5 + 46);
  if ((v19 & 0x20) == 0)
  {
LABEL_35:
    if ((v19 & 4) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_hiPowerExitReason = *(v5 + 8);
  *&self->_has |= 0x20u;
  v19 = *(v5 + 46);
  if ((v19 & 4) == 0)
  {
LABEL_36:
    if ((v19 & 2) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_congestionReason = *(v5 + 5);
  *&self->_has |= 4u;
  v19 = *(v5 + 46);
  if ((v19 & 2) == 0)
  {
LABEL_37:
    if ((v19 & 0x200) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_cellId = *(v5 + 4);
  *&self->_has |= 2u;
  v19 = *(v5 + 46);
  if ((v19 & 0x200) == 0)
  {
LABEL_38:
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_numMncDigits = *(v5 + 14);
  *&self->_has |= 0x200u;
  v19 = *(v5 + 46);
  if ((v19 & 0x80) == 0)
  {
LABEL_39:
    if ((v19 & 0x100) == 0)
    {
      goto LABEL_40;
    }

LABEL_51:
    self->_mnc = *(v5 + 13);
    *&self->_has |= 0x100u;
    if ((*(v5 + 46) & 0x1000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_50:
  self->_mcc = *(v5 + 12);
  *&self->_has |= 0x80u;
  v19 = *(v5 + 46);
  if ((v19 & 0x100) != 0)
  {
    goto LABEL_51;
  }

LABEL_40:
  if ((v19 & 0x1000) != 0)
  {
LABEL_41:
    self->_fgAppActiveDuringCongestion = *(v5 + 89);
    *&self->_has |= 0x1000u;
  }

LABEL_42:
}

@end