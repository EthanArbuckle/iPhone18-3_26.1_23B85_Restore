@interface RrcConnReqRel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConnStage:(id)stage;
- (int)StringAsEstablishCause:(id)cause;
- (int)StringAsReleaseCause:(id)cause;
- (int)connStage;
- (int)establishCause;
- (int)releaseCause;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCounter:(BOOL)counter;
- (void)setHasEstablishCause:(BOOL)cause;
- (void)setHasReleaseCause:(BOOL)cause;
- (void)writeTo:(id)to;
@end

@implementation RrcConnReqRel

- (int)establishCause
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_establishCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEstablishCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsEstablishCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"RRC_EST_ORIG_CONV_CALL"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_ORIG_STREAM_CALL"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_ORIG_INTERACT_CALL"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_ORIG_BACKGND_CALL"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_ORIG_SUBSCRIBED_TRF_CALL"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_TERM_CONV_CALL"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_TERM_STREAM_CALL"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_TERM_INTERACT_CALL"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_TERM_BACKGND_CALL"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_EMERGENCY_CALL"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_INTER_RAT_CELL_RESELECT"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_INTER_RAT_CELL_CHANGE_ORDER"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_REGISTRATION"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_DETACH"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_HI_PRI_SIGNALLING"])
  {
    v4 = 14;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_LOW_PRI_SIGNALLING"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_CALL_RE_ESTABLISH"])
  {
    v4 = 16;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_TERM_HI_SIGNALLING"])
  {
    v4 = 17;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_TERM_LOW_SIGNALLING"])
  {
    v4 = 18;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_TERM_UNKNOWN"])
  {
    v4 = 19;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_MBMS_RECEPTION"])
  {
    v4 = 20;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_MBMS_PTP_RB_REQUEST"])
  {
    v4 = 21;
  }

  else if ([causeCopy isEqualToString:@"RRC_EST_DELAY_TOLERANT_ACCESS"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)connStage
{
  if (*&self->_has)
  {
    return self->_connStage;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsConnStage:(id)stage
{
  stageCopy = stage;
  if ([stageCopy isEqualToString:@"RrcConnStage_AfterReq"])
  {
    v4 = 0;
  }

  else if ([stageCopy isEqualToString:@"RrcConnStage_RrcSetupComp"])
  {
    v4 = 1;
  }

  else if ([stageCopy isEqualToString:@"RrcConnStage_DrbEstComp"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)releaseCause
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_releaseCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasReleaseCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsReleaseCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"RRC_FAIL_TO_CAMP_ON"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"RRC_INTERNAL_ERROR"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"RRC_UNSUPPORTED_REDIRECTION"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"RRC_MAX_ACCESS_FAILURE"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"RRC_FAILURE_DUE_TO_CONGESTION"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"RRC_FAILURE_UNSPECIFIED"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"RRC_UNSUPPORTED_INITIAL_UE_ID"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"RRC_ACCESS_CLASS_NOT_ALLOWED"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"RRC_CONNECTION_NOT_AVAILABLE"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"RRC_PCCO_FAILURE"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"RRC_NO_RESOURCE_AVAILABLE"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"RRC_ABORT_LAI_RAI_CHANGED"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"RRC_REL_CAUSE_NORMAL"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"RRC_REL_CAUSE_UNSPEC"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"RRC_REL_CAUSE_PRE_EMPTIVE"])
  {
    v4 = 14;
  }

  else if ([causeCopy isEqualToString:@"RRC_REL_CAUSE_CONGESTION"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"RRC_REL_CAUSE_RE_ESTABLISH_REJECT"])
  {
    v4 = 16;
  }

  else if ([causeCopy isEqualToString:@"RRC_REL_USER_INACTIVITY"])
  {
    v4 = 17;
  }

  else if ([causeCopy isEqualToString:@"RRC_REL_DEEP_FADE"])
  {
    v4 = 18;
  }

  else if ([causeCopy isEqualToString:@"RRC_DIRECTED_SIGNALLING_REESTABLISHMENT"])
  {
    v4 = 19;
  }

  else if ([causeCopy isEqualToString:@"RRC_REL_CAUSE_OOS"])
  {
    v4 = 20;
  }

  else if ([causeCopy isEqualToString:@"RRC_UE_INIT_DORMANCY_UE_IN_OOS"])
  {
    v4 = 21;
  }

  else if ([causeCopy isEqualToString:@"RRC_UE_INIT_DORMANCY_ABORT_SUCCESS"])
  {
    v4 = 22;
  }

  else if ([causeCopy isEqualToString:@"RRC_REL_DUAL_STANDBY_PS_ABORT_SUCCESS"])
  {
    v4 = 23;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCounter:(BOOL)counter
{
  if (counter)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RrcConnReqRel;
  v3 = [(RrcConnReqRel *)&v7 description];
  dictionaryRepresentation = [(RrcConnReqRel *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    establishCause = self->_establishCause;
    if (establishCause >= 0x17)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_establishCause];
    }

    else
    {
      v8 = *(&off_100318AE8 + establishCause);
    }

    [v3 setObject:v8 forKey:@"establish_cause"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  connStage = self->_connStage;
  if (connStage >= 3)
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_connStage];
  }

  else
  {
    v10 = *(&off_100318BA0 + connStage);
  }

  [v3 setObject:v10 forKey:@"conn_stage"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  releaseCause = self->_releaseCause;
  if (releaseCause >= 0x18)
  {
    v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_releaseCause];
  }

  else
  {
    v12 = *(&off_100318BB8 + releaseCause);
  }

  [v3 setObject:v12 forKey:@"release_cause"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  v5 = [NSNumber numberWithUnsignedInt:self->_counter];
  [v3 setObject:v5 forKey:@"counter"];

LABEL_6:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    establishCause = self->_establishCause;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  connStage = self->_connStage;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  releaseCause = self->_releaseCause;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    counter = self->_counter;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[4] = self->_establishCause;
    *(toCopy + 24) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = self->_connStage;
  *(toCopy + 24) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  toCopy[5] = self->_releaseCause;
  *(toCopy + 24) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    toCopy[3] = self->_counter;
    *(toCopy + 24) |= 2u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 4) = self->_establishCause;
    *(result + 24) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_connStage;
  *(result + 24) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 5) = self->_releaseCause;
  *(result + 24) |= 8u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 3) = self->_counter;
  *(result + 24) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_establishCause != *(equalCopy + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 4) != 0)
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_connStage != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_counter != *(equalCopy + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 24) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 24) & 8) == 0 || self->_releaseCause != *(equalCopy + 5))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v2 = 2654435761 * self->_establishCause;
    if (*&self->_has)
    {
LABEL_3:
      v3 = 2654435761 * self->_connStage;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_releaseCause;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_counter;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 4) != 0)
  {
    self->_establishCause = *(fromCopy + 4);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 24);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_connStage = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 24);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_releaseCause = *(fromCopy + 5);
  *&self->_has |= 8u;
  if ((*(fromCopy + 24) & 2) != 0)
  {
LABEL_5:
    self->_counter = *(fromCopy + 3);
    *&self->_has |= 2u;
  }

LABEL_6:
}

@end