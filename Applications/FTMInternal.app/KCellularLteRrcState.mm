@interface KCellularLteRrcState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCause:(id)a3;
- (int)StringAsPrevState:(id)a3;
- (int)StringAsState:(id)a3;
- (int)cause;
- (int)prevState;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCause:(BOOL)a3;
- (void)setHasPrevState:(BOOL)a3;
- (void)setHasPrevStateDurMs:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularLteRrcState

- (int)state
{
  if ((*&self->_has & 0x10) != 0)
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KLTE_RRC_STATE_NULL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_IDLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_ATMPT_CONNECTION"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_CONNECTED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_ENDING"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_ATMPT_OUTBND_MOBILITY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_ATMPT_INBND_MOBILITY"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)prevState
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_prevState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPrevState:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsPrevState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KLTE_RRC_STATE_NULL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_IDLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_ATMPT_CONNECTION"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_CONNECTED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_ENDING"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_ATMPT_OUTBND_MOBILITY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_ATMPT_INBND_MOBILITY"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPrevStateDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)cause
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_cause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCause:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_EST_EMERGENCY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_EST_HIGH_PRIO_ACC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_EST_MT_ACC"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_EST_MO_SIGNAL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_EST_MO_DATA"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_EST_DELAY_TOL_ACC"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REEST_RECFG_FAIL"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REEST_HO_FAIL"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REEST_OTHER_FAIL"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REL_OTHER_RECFG_FAIL"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REL_CONN_FAIL_IRAT_RESEL"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REL_CONN_FAIL_T311_EXP"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REL_CONN_FAIL_CELL_NOT_SUIT"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REL_CONN_FAIL_REEST_REJ"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REL_LOAD_BAL_TAU_REQD"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REL_OTHER"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REL_CSFB_HIGH_PRIO"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REL_T310_EXP"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REL_RND_ACC"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REL_MAX_RLC_RETRANS"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REL_SUCC_MOB_FROM_EUTRAN"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_EST_SUCC_MOB_TO_EUTRAN"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_EST_FAIL_NO_RESP_FROM_CELL"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_EST_FAIL_REJ"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_EST_FAIL_CELL_RESEL"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_EST_FAIL_ABORTED"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_EST_FAIL_CELL_BARRED"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REEST_OTHER_FAIL_T310_EXP"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REEST_OTHER_FAIL_RND_ACC"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REEST_OTHER_FAIL_MAX_RLC_RETX"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_REEST_OTHER_FAIL_INTEG_CHECK"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_NO_SERVICE"])
  {
    v4 = 254;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_CAUSE_NA"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularLteRrcState;
  v3 = [(KCellularLteRrcState *)&v7 description];
  v4 = [(KCellularLteRrcState *)self dictionaryRepresentation];
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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  if (state >= 7)
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_state];
  }

  else
  {
    v9 = off_100318F58[state];
  }

  [v3 setObject:v9 forKey:@"state"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_16:
  prevState = self->_prevState;
  if (prevState >= 7)
  {
    v11 = [NSString stringWithFormat:@"(unknown: %i)", self->_prevState];
  }

  else
  {
    v11 = off_100318F58[prevState];
  }

  [v3 setObject:v11 forKey:@"prev_state"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [NSNumber numberWithUnsignedInt:self->_prevStateDurMs];
  [v3 setObject:v12 forKey:@"prev_state_dur_ms"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  cause = self->_cause;
  v14 = @"KLTE_RRC_CAUSE_EST_EMERGENCY";
  switch(cause)
  {
    case 0:
      break;
    case 1:
      v14 = @"KLTE_RRC_CAUSE_EST_HIGH_PRIO_ACC";
      break;
    case 2:
      v14 = @"KLTE_RRC_CAUSE_EST_MT_ACC";
      break;
    case 3:
      v14 = @"KLTE_RRC_CAUSE_EST_MO_SIGNAL";
      break;
    case 4:
      v14 = @"KLTE_RRC_CAUSE_EST_MO_DATA";
      break;
    case 5:
      v14 = @"KLTE_RRC_CAUSE_EST_DELAY_TOL_ACC";
      break;
    case 6:
      v14 = @"KLTE_RRC_CAUSE_REEST_RECFG_FAIL";
      break;
    case 7:
      v14 = @"KLTE_RRC_CAUSE_REEST_HO_FAIL";
      break;
    case 8:
      v14 = @"KLTE_RRC_CAUSE_REEST_OTHER_FAIL";
      break;
    case 9:
      v14 = @"KLTE_RRC_CAUSE_REL_OTHER_RECFG_FAIL";
      break;
    case 10:
      v14 = @"KLTE_RRC_CAUSE_REL_CONN_FAIL_IRAT_RESEL";
      break;
    case 11:
      v14 = @"KLTE_RRC_CAUSE_REL_CONN_FAIL_T311_EXP";
      break;
    case 12:
      v14 = @"KLTE_RRC_CAUSE_REL_CONN_FAIL_CELL_NOT_SUIT";
      break;
    case 13:
      v14 = @"KLTE_RRC_CAUSE_REL_CONN_FAIL_REEST_REJ";
      break;
    case 14:
      v14 = @"KLTE_RRC_CAUSE_REL_LOAD_BAL_TAU_REQD";
      break;
    case 15:
      v14 = @"KLTE_RRC_CAUSE_REL_OTHER";
      break;
    case 16:
      v14 = @"KLTE_RRC_CAUSE_REL_CSFB_HIGH_PRIO";
      break;
    case 17:
      v14 = @"KLTE_RRC_CAUSE_REL_T310_EXP";
      break;
    case 18:
      v14 = @"KLTE_RRC_CAUSE_REL_RND_ACC";
      break;
    case 19:
      v14 = @"KLTE_RRC_CAUSE_REL_MAX_RLC_RETRANS";
      break;
    case 20:
      v14 = @"KLTE_RRC_CAUSE_REL_SUCC_MOB_FROM_EUTRAN";
      break;
    case 21:
      v14 = @"KLTE_RRC_CAUSE_EST_SUCC_MOB_TO_EUTRAN";
      break;
    case 22:
      v14 = @"KLTE_RRC_CAUSE_EST_FAIL_NO_RESP_FROM_CELL";
      break;
    case 23:
      v14 = @"KLTE_RRC_CAUSE_EST_FAIL_REJ";
      break;
    case 24:
      v14 = @"KLTE_RRC_CAUSE_EST_FAIL_CELL_RESEL";
      break;
    case 25:
      v14 = @"KLTE_RRC_CAUSE_EST_FAIL_ABORTED";
      break;
    case 26:
      v14 = @"KLTE_RRC_CAUSE_EST_FAIL_CELL_BARRED";
      break;
    case 27:
      v14 = @"KLTE_RRC_CAUSE_REEST_OTHER_FAIL_T310_EXP";
      break;
    case 28:
      v14 = @"KLTE_RRC_CAUSE_REEST_OTHER_FAIL_RND_ACC";
      break;
    case 29:
      v14 = @"KLTE_RRC_CAUSE_REEST_OTHER_FAIL_MAX_RLC_RETX";
      break;
    case 30:
      v14 = @"KLTE_RRC_CAUSE_REEST_OTHER_FAIL_INTEG_CHECK";
      break;
    default:
      if (cause == 254)
      {
        v14 = @"KLTE_RRC_CAUSE_NO_SERVICE";
      }

      else if (cause == 255)
      {
        v14 = @"KLTE_RRC_CAUSE_NA";
      }

      else
      {
        v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_cause];
      }

      break;
  }

  [v3 setObject:v14 forKey:@"cause"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v5 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_8:

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  prevState = self->_prevState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  prevStateDurMs = self->_prevStateDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  cause = self->_cause;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 36) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 7) = self->_state;
  *(v4 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v4 + 5) = self->_prevState;
  *(v4 + 36) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 6) = self->_prevStateDurMs;
  *(v4 + 36) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v4 + 4) = self->_cause;
  *(v4 + 36) |= 2u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    *(v4 + 8) = self->_subsId;
    *(v4 + 36) |= 0x20u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 36) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_state;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 5) = self->_prevState;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 6) = self->_prevStateDurMs;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 4) = self->_cause;
  *(result + 36) |= 2u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 8) = self->_subsId;
  *(result + 36) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0 || self->_state != *(v4 + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_prevState != *(v4 + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_prevStateDurMs != *(v4 + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_cause != *(v4 + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(v4 + 36) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 36) & 0x20) == 0 || self->_subsId != *(v4 + 8))
    {
      goto LABEL_31;
    }

    v5 = 1;
  }

LABEL_32:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_state;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_prevState;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_prevStateDurMs;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_cause;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_subsId;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 36) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_prevState = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 36);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_prevStateDurMs = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 36);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_cause = *(v4 + 4);
  *&self->_has |= 2u;
  if ((*(v4 + 36) & 0x20) != 0)
  {
LABEL_7:
    self->_subsId = *(v4 + 8);
    *&self->_has |= 0x20u;
  }

LABEL_8:
}

@end