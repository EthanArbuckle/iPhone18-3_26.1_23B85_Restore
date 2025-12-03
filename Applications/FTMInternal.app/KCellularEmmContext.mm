@interface KCellularEmmContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRegProc:(id)proc;
- (int)StringAsRegStatus:(id)status;
- (int)StringAsRejectCause:(id)cause;
- (int)StringAsUeOpMode:(id)mode;
- (int)StringAsUpdateStatus:(id)status;
- (int)regProc;
- (int)regStatus;
- (int)rejectCause;
- (int)ueOpMode;
- (int)updateStatus;
- (unint64_t)hash;
- (void)addTaiList:(id)list;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsEmergBearerSupported:(BOOL)supported;
- (void)setHasIsImsVoiceSupported:(BOOL)supported;
- (void)setHasRegProc:(BOOL)proc;
- (void)setHasRegStatus:(BOOL)status;
- (void)setHasRejectCause:(BOOL)cause;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasT3412DurS:(BOOL)s;
- (void)setHasUeOpMode:(BOOL)mode;
- (void)setHasUpdateStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation KCellularEmmContext

- (int)regStatus
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_regStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRegStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)StringAsRegStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"KREG_STATUS_NORMAL_SERVICE"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_REGISTRATION_FAILURE"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_LIMITED_SERVICE"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_NO_SERVICE"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_AT_NOT_REGISTERED"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_REGISTRATION_SERVICE_DISABLED"])
  {
    v4 = 5;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_SERVICE_DETACHED"])
  {
    v4 = 6;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_SERVICE_ACTIVATED"])
  {
    v4 = 7;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_EMERGENCY_SERVICE"])
  {
    v4 = 8;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_EMERGENCY_LIMITED"])
  {
    v4 = 9;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_REGISTERED_SMS_ONLY"])
  {
    v4 = 10;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_REGISTRATION_IN_PROGRESS"])
  {
    v4 = 11;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_POWER_OFF_NO_SERVICE"])
  {
    v4 = 12;
  }

  else if ([statusCopy isEqualToString:@"KREG_STATUS_SUSPENDED"])
  {
    v4 = 100;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)updateStatus
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_updateStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUpdateStatus:(BOOL)status
{
  if (status)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)StringAsUpdateStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"EPS_STATUS_UPDATED"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"EPS_STATUS_NOT_UPDATED"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"EPS_STATUS_ROAMING_NOT_ALLOWED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)ueOpMode
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_ueOpMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUeOpMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)StringAsUeOpMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"EPS_UE_OP_MODE_PS_MODE_1"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"EPS_UE_OP_MODE_PS_MODE_2"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"EPS_UE_OP_MODE_CSPS_MODE_1"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"EPS_UE_OP_MODE_CSPS_MODE_2"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addTaiList:(id)list
{
  listCopy = list;
  taiLists = self->_taiLists;
  v8 = listCopy;
  if (!taiLists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_taiLists;
    self->_taiLists = v6;

    listCopy = v8;
    taiLists = self->_taiLists;
  }

  [(NSMutableArray *)taiLists addObject:listCopy];
}

- (int)rejectCause
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_rejectCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRejectCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)StringAsRejectCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"EMM_CAUSE_NO_CAUSE"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_IMSI_UNKNOWN_IN_HSS"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_ILLEGAL_UE"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_IMEI_NOT_ACCEPTED"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_ILLEGAL_ME"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_EPS_SERVICES_NOT_ALLOWED"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_EPS_SERVICES_AND_NON_EPS_SERVICES_NOT_ALLOWED"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_UE_IDENTITY_CANNOT_BE_DERIVED_BY_NETWORK"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_IMPLICITLY_DETACHED"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_PLMN_NOT_ALLOWED"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_TRACKING_AREA_NOT_ALLOWED"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_ROAMING_NOT_ALLOWED_IN_THIS_TRACKING_AREA"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_EPS_SERVICES_NOT_ALLOWED_IN_THIS_PLMN"])
  {
    v4 = 14;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_NO_SUITABLE_CELLS_IN_TRACKING_AREA"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_MSC_TEMPORARILY_NOT_REACHABLE"])
  {
    v4 = 16;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_NETWORK_FAILURE"])
  {
    v4 = 17;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_CS_DOMAIN_NOT_AVAILABLE"])
  {
    v4 = 18;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_ESM_FAILURE"])
  {
    v4 = 19;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_MAC_FAILURE"])
  {
    v4 = 20;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_SYNCH_FAILURE"])
  {
    v4 = 21;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_CONGESTION"])
  {
    v4 = 22;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_UE_SECURITY_CAPABILITY_MISMATCH"])
  {
    v4 = 23;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_SECURITY_MODE_REJECTED_UNSPECIFIED"])
  {
    v4 = 24;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_NOT_AUTHORIZED_FOR_THIS_CSG"])
  {
    v4 = 25;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_NON_EPS_AUTHENTICATION_UNACCEPTABLE"])
  {
    v4 = 26;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_REQUESTED_SERVICE_OPTION_NOT_AUTHORIZED_IN_THIS_PLMN"])
  {
    v4 = 35;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_CS_DOMAIN_TEMPORARILY_NOT_AVAILABLE"])
  {
    v4 = 39;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_NO_EPS_BEARER_CONTEXT_ACTIVATED"])
  {
    v4 = 40;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_SEMANTICALLY_INCORRECT_MESSAGE"])
  {
    v4 = 95;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_INVALID_MANDATORY_INFORMATION"])
  {
    v4 = 96;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_MESSAGE_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED"])
  {
    v4 = 97;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"])
  {
    v4 = 98;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_IE_NON_EXISTENT_OR_NOT_IMPLEMENTED"])
  {
    v4 = 99;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_CONDITIONAL_IE_ERROR"])
  {
    v4 = 100;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"])
  {
    v4 = 101;
  }

  else if ([causeCopy isEqualToString:@"EMM_CAUSE_PROTOCOL_ERROR_UNSPECIFIED"])
  {
    v4 = 111;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)regProc
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_regProc;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRegProc:(BOOL)proc
{
  if (proc)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (int)StringAsRegProc:(id)proc
{
  procCopy = proc;
  if ([procCopy isEqualToString:@"EMM_PROC_NO_PROC"])
  {
    v4 = 0;
  }

  else if ([procCopy isEqualToString:@"EMM_PROC_ATTACH"])
  {
    v4 = 1;
  }

  else if ([procCopy isEqualToString:@"EMM_PROC_ATTACH_COMB"])
  {
    v4 = 2;
  }

  else if ([procCopy isEqualToString:@"EMM_PROC_EMERGENCY_ATTACH"])
  {
    v4 = 3;
  }

  else if ([procCopy isEqualToString:@"EMM_PROC_TAU"])
  {
    v4 = 4;
  }

  else if ([procCopy isEqualToString:@"EMM_PROC_TAU_COMB"])
  {
    v4 = 5;
  }

  else if ([procCopy isEqualToString:@"EMM_PROC_PERIODIC_TAU"])
  {
    v4 = 6;
  }

  else if ([procCopy isEqualToString:@"EMM_PROC_SERV_REQ"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasT3412DurS:(BOOL)s
{
  if (s)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsImsVoiceSupported:(BOOL)supported
{
  if (supported)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsEmergBearerSupported:(BOOL)supported
{
  if (supported)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
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
  v7.super_class = KCellularEmmContext;
  v3 = [(KCellularEmmContext *)&v7 description];
  dictionaryRepresentation = [(KCellularEmmContext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  regStatus = self->_regStatus;
  v7 = @"KREG_STATUS_NORMAL_SERVICE";
  switch(regStatus)
  {
    case 0:
      break;
    case 1:
      v7 = @"KREG_STATUS_REGISTRATION_FAILURE";
      break;
    case 2:
      v7 = @"KREG_STATUS_LIMITED_SERVICE";
      break;
    case 3:
      v7 = @"KREG_STATUS_NO_SERVICE";
      break;
    case 4:
      v7 = @"KREG_STATUS_AT_NOT_REGISTERED";
      break;
    case 5:
      v7 = @"KREG_STATUS_REGISTRATION_SERVICE_DISABLED";
      break;
    case 6:
      v7 = @"KREG_STATUS_SERVICE_DETACHED";
      break;
    case 7:
      v7 = @"KREG_STATUS_SERVICE_ACTIVATED";
      break;
    case 8:
      v7 = @"KREG_STATUS_EMERGENCY_SERVICE";
      break;
    case 9:
      v7 = @"KREG_STATUS_EMERGENCY_LIMITED";
      break;
    case 10:
      v7 = @"KREG_STATUS_REGISTERED_SMS_ONLY";
      break;
    case 11:
      v7 = @"KREG_STATUS_REGISTRATION_IN_PROGRESS";
      break;
    case 12:
      v7 = @"KREG_STATUS_POWER_OFF_NO_SERVICE";
      break;
    default:
      if (regStatus == 100)
      {
        v7 = @"KREG_STATUS_SUSPENDED";
      }

      else
      {
        v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_regStatus];
      }

      break;
  }

  [v3 setObject:v7 forKey:@"reg_status"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_24:
  updateStatus = self->_updateStatus;
  if (updateStatus >= 3)
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_updateStatus];
  }

  else
  {
    v9 = *(&off_100317B28 + updateStatus);
  }

  [v3 setObject:v9 forKey:@"update_status"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_28:
    ueOpMode = self->_ueOpMode;
    if (ueOpMode >= 4)
    {
      v11 = [NSString stringWithFormat:@"(unknown: %i)", self->_ueOpMode];
    }

    else
    {
      v11 = *(&off_100317B40 + ueOpMode);
    }

    [v3 setObject:v11 forKey:@"ue_op_mode"];
  }

LABEL_32:
  if ([(NSMutableArray *)self->_taiLists count])
  {
    v12 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_taiLists, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = self->_taiLists;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation = [*(*(&v32 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"tai_list"];
  }

  guti = self->_guti;
  if (guti)
  {
    dictionaryRepresentation2 = [(Guti *)guti dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"guti"];
  }

  v21 = self->_has;
  if ((v21 & 8) != 0)
  {
    rejectCause = self->_rejectCause;
    if (rejectCause > 94)
    {
      if (rejectCause > 98)
      {
        if (rejectCause > 100)
        {
          if (rejectCause == 101)
          {
            v25 = @"EMM_CAUSE_MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE";
          }

          else if (rejectCause == 111)
          {
            v25 = @"EMM_CAUSE_PROTOCOL_ERROR_UNSPECIFIED";
          }

          else
          {
LABEL_98:
            v25 = [NSString stringWithFormat:@"(unknown: %i)", self->_rejectCause];
          }
        }

        else if (rejectCause == 99)
        {
          v25 = @"EMM_CAUSE_IE_NON_EXISTENT_OR_NOT_IMPLEMENTED";
        }

        else
        {
          v25 = @"EMM_CAUSE_CONDITIONAL_IE_ERROR";
        }
      }

      else if (rejectCause > 96)
      {
        if (rejectCause == 97)
        {
          v25 = @"EMM_CAUSE_MESSAGE_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED";
        }

        else
        {
          v25 = @"EMM_CAUSE_MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE";
        }
      }

      else if (rejectCause == 95)
      {
        v25 = @"EMM_CAUSE_SEMANTICALLY_INCORRECT_MESSAGE";
      }

      else
      {
        v25 = @"EMM_CAUSE_INVALID_MANDATORY_INFORMATION";
      }
    }

    else
    {
      v25 = @"EMM_CAUSE_NO_CAUSE";
      v26 = self->_rejectCause;
      switch(rejectCause)
      {
        case 0:
          break;
        case 2:
          v25 = @"EMM_CAUSE_IMSI_UNKNOWN_IN_HSS";
          break;
        case 3:
          v25 = @"EMM_CAUSE_ILLEGAL_UE";
          break;
        case 5:
          v25 = @"EMM_CAUSE_IMEI_NOT_ACCEPTED";
          break;
        case 6:
          v25 = @"EMM_CAUSE_ILLEGAL_ME";
          break;
        case 7:
          v25 = @"EMM_CAUSE_EPS_SERVICES_NOT_ALLOWED";
          break;
        case 8:
          v25 = @"EMM_CAUSE_EPS_SERVICES_AND_NON_EPS_SERVICES_NOT_ALLOWED";
          break;
        case 9:
          v25 = @"EMM_CAUSE_UE_IDENTITY_CANNOT_BE_DERIVED_BY_NETWORK";
          break;
        case 10:
          v25 = @"EMM_CAUSE_IMPLICITLY_DETACHED";
          break;
        case 11:
          v25 = @"EMM_CAUSE_PLMN_NOT_ALLOWED";
          break;
        case 12:
          v25 = @"EMM_CAUSE_TRACKING_AREA_NOT_ALLOWED";
          break;
        case 13:
          v25 = @"EMM_CAUSE_ROAMING_NOT_ALLOWED_IN_THIS_TRACKING_AREA";
          break;
        case 14:
          v25 = @"EMM_CAUSE_EPS_SERVICES_NOT_ALLOWED_IN_THIS_PLMN";
          break;
        case 15:
          v25 = @"EMM_CAUSE_NO_SUITABLE_CELLS_IN_TRACKING_AREA";
          break;
        case 16:
          v25 = @"EMM_CAUSE_MSC_TEMPORARILY_NOT_REACHABLE";
          break;
        case 17:
          v25 = @"EMM_CAUSE_NETWORK_FAILURE";
          break;
        case 18:
          v25 = @"EMM_CAUSE_CS_DOMAIN_NOT_AVAILABLE";
          break;
        case 19:
          v25 = @"EMM_CAUSE_ESM_FAILURE";
          break;
        case 20:
          v25 = @"EMM_CAUSE_MAC_FAILURE";
          break;
        case 21:
          v25 = @"EMM_CAUSE_SYNCH_FAILURE";
          break;
        case 22:
          v25 = @"EMM_CAUSE_CONGESTION";
          break;
        case 23:
          v25 = @"EMM_CAUSE_UE_SECURITY_CAPABILITY_MISMATCH";
          break;
        case 24:
          v25 = @"EMM_CAUSE_SECURITY_MODE_REJECTED_UNSPECIFIED";
          break;
        case 25:
          v25 = @"EMM_CAUSE_NOT_AUTHORIZED_FOR_THIS_CSG";
          break;
        case 26:
          v25 = @"EMM_CAUSE_NON_EPS_AUTHENTICATION_UNACCEPTABLE";
          break;
        case 35:
          v25 = @"EMM_CAUSE_REQUESTED_SERVICE_OPTION_NOT_AUTHORIZED_IN_THIS_PLMN";
          break;
        case 39:
          v25 = @"EMM_CAUSE_CS_DOMAIN_TEMPORARILY_NOT_AVAILABLE";
          break;
        case 40:
          v25 = @"EMM_CAUSE_NO_EPS_BEARER_CONTEXT_ACTIVATED";
          break;
        default:
          goto LABEL_98;
      }
    }

    [v3 setObject:v25 forKey:@"reject_cause"];

    v21 = self->_has;
    if ((v21 & 2) == 0)
    {
LABEL_45:
      if ((v21 & 0x20) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_104;
    }
  }

  else if ((v21 & 2) == 0)
  {
    goto LABEL_45;
  }

  regProc = self->_regProc;
  if (regProc >= 8)
  {
    v28 = [NSString stringWithFormat:@"(unknown: %i)", self->_regProc];
  }

  else
  {
    v28 = *(&off_100317B60 + regProc);
  }

  [v3 setObject:v28 forKey:@"reg_proc"];

  v21 = self->_has;
  if ((v21 & 0x20) == 0)
  {
LABEL_46:
    if ((v21 & 0x200) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_105;
  }

LABEL_104:
  v29 = [NSNumber numberWithUnsignedInt:self->_t3412DurS];
  [v3 setObject:v29 forKey:@"t3412_dur_s"];

  v21 = self->_has;
  if ((v21 & 0x200) == 0)
  {
LABEL_47:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_106;
  }

LABEL_105:
  v30 = [NSNumber numberWithBool:self->_isImsVoiceSupported];
  [v3 setObject:v30 forKey:@"is_ims_voice_supported"];

  v21 = self->_has;
  if ((v21 & 0x100) == 0)
  {
LABEL_48:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_106:
  v31 = [NSNumber numberWithBool:self->_isEmergBearerSupported];
  [v3 setObject:v31 forKey:@"is_emerg_bearer_supported"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_49:
    v22 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v22 forKey:@"subs_id"];
  }

LABEL_50:

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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  regStatus = self->_regStatus;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_25:
  updateStatus = self->_updateStatus;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    ueOpMode = self->_ueOpMode;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_taiLists;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  if (self->_guti)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    rejectCause = self->_rejectCause;
    PBDataWriterWriteInt32Field();
    v13 = self->_has;
    if ((v13 & 2) == 0)
    {
LABEL_17:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_17;
  }

  regProc = self->_regProc;
  PBDataWriterWriteInt32Field();
  v13 = self->_has;
  if ((v13 & 0x20) == 0)
  {
LABEL_18:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_29:
  t3412DurS = self->_t3412DurS;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 0x200) == 0)
  {
LABEL_19:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_20;
    }

LABEL_31:
    isEmergBearerSupported = self->_isEmergBearerSupported;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_30:
  isImsVoiceSupported = self->_isImsVoiceSupported;
  PBDataWriterWriteBOOLField();
  v13 = self->_has;
  if ((v13 & 0x100) != 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  if ((v13 & 0x10) != 0)
  {
LABEL_21:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_22:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 34) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

LABEL_24:
      *(toCopy + 15) = self->_updateStatus;
      *(toCopy + 34) |= 0x80u;
      if ((*&self->_has & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 7) = self->_regStatus;
  *(toCopy + 34) |= 4u;
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((has & 0x40) != 0)
  {
LABEL_5:
    *(toCopy + 14) = self->_ueOpMode;
    *(toCopy + 34) |= 0x40u;
  }

LABEL_6:
  v11 = toCopy;
  if ([(KCellularEmmContext *)self taiListsCount])
  {
    [v11 clearTaiLists];
    taiListsCount = [(KCellularEmmContext *)self taiListsCount];
    if (taiListsCount)
    {
      v7 = taiListsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(KCellularEmmContext *)self taiListAtIndex:i];
        [v11 addTaiList:v9];
      }
    }
  }

  if (self->_guti)
  {
    [v11 setGuti:?];
  }

  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    *(v11 + 8) = self->_rejectCause;
    *(v11 + 34) |= 8u;
    v10 = self->_has;
    if ((v10 & 2) == 0)
    {
LABEL_14:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_14;
  }

  *(v11 + 6) = self->_regProc;
  *(v11 + 34) |= 2u;
  v10 = self->_has;
  if ((v10 & 0x20) == 0)
  {
LABEL_15:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v11 + 10) = self->_t3412DurS;
  *(v11 + 34) |= 0x20u;
  v10 = self->_has;
  if ((v10 & 0x200) == 0)
  {
LABEL_16:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v11 + 65) = self->_isImsVoiceSupported;
  *(v11 + 34) |= 0x200u;
  v10 = self->_has;
  if ((v10 & 0x100) == 0)
  {
LABEL_17:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_30:
  *(v11 + 64) = self->_isEmergBearerSupported;
  *(v11 + 34) |= 0x100u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    *(v11 + 9) = self->_subsId;
    *(v11 + 34) |= 0x10u;
  }

LABEL_19:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 34) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 7) = self->_regStatus;
  *(v5 + 34) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  *(v5 + 15) = self->_updateStatus;
  *(v5 + 34) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    *(v5 + 14) = self->_ueOpMode;
    *(v5 + 34) |= 0x40u;
  }

LABEL_6:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_taiLists;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{zone, v18}];
        [v6 addTaiList:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [(Guti *)self->_guti copyWithZone:zone];
  v15 = *(v6 + 2);
  *(v6 + 2) = v14;

  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    *(v6 + 8) = self->_rejectCause;
    *(v6 + 34) |= 8u;
    v16 = self->_has;
    if ((v16 & 2) == 0)
    {
LABEL_15:
      if ((v16 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_15;
  }

  *(v6 + 6) = self->_regProc;
  *(v6 + 34) |= 2u;
  v16 = self->_has;
  if ((v16 & 0x20) == 0)
  {
LABEL_16:
    if ((v16 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 10) = self->_t3412DurS;
  *(v6 + 34) |= 0x20u;
  v16 = self->_has;
  if ((v16 & 0x200) == 0)
  {
LABEL_17:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    *(v6 + 64) = self->_isEmergBearerSupported;
    *(v6 + 34) |= 0x100u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v6;
    }

    goto LABEL_19;
  }

LABEL_28:
  *(v6 + 65) = self->_isImsVoiceSupported;
  *(v6 + 34) |= 0x200u;
  v16 = self->_has;
  if ((v16 & 0x100) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v16 & 0x10) != 0)
  {
LABEL_19:
    *(v6 + 9) = self->_subsId;
    *(v6 + 34) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_61;
  }

  has = self->_has;
  v6 = *(equalCopy + 34);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_61;
    }
  }

  else if (v6)
  {
    goto LABEL_61;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_regStatus != *(equalCopy + 7))
    {
      goto LABEL_61;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_61;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_updateStatus != *(equalCopy + 15))
    {
      goto LABEL_61;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_61;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_ueOpMode != *(equalCopy + 14))
    {
      goto LABEL_61;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_61;
  }

  taiLists = self->_taiLists;
  if (taiLists | *(equalCopy + 6) && ![(NSMutableArray *)taiLists isEqual:?])
  {
    goto LABEL_61;
  }

  guti = self->_guti;
  if (guti | *(equalCopy + 2))
  {
    if (![(Guti *)guti isEqual:?])
    {
      goto LABEL_61;
    }
  }

  v9 = self->_has;
  v10 = *(equalCopy + 34);
  if ((v9 & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_rejectCause != *(equalCopy + 8))
    {
      goto LABEL_61;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_61;
  }

  if ((v9 & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_regProc != *(equalCopy + 6))
    {
      goto LABEL_61;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_61;
  }

  if ((v9 & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0 || self->_t3412DurS != *(equalCopy + 10))
    {
      goto LABEL_61;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 34) & 0x200) == 0)
    {
      goto LABEL_61;
    }

    v12 = *(equalCopy + 65);
    if (self->_isImsVoiceSupported)
    {
      if ((*(equalCopy + 65) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (*(equalCopy + 65))
    {
      goto LABEL_61;
    }
  }

  else if ((*(equalCopy + 34) & 0x200) != 0)
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 0x100) == 0)
  {
    if ((*(equalCopy + 34) & 0x100) == 0)
    {
      goto LABEL_45;
    }

LABEL_61:
    v11 = 0;
    goto LABEL_62;
  }

  if ((*(equalCopy + 34) & 0x100) == 0)
  {
    goto LABEL_61;
  }

  v13 = *(equalCopy + 64);
  if (self->_isEmergBearerSupported)
  {
    if ((*(equalCopy + 64) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_61;
  }

LABEL_45:
  if ((v9 & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_subsId != *(equalCopy + 9))
    {
      goto LABEL_61;
    }

    v11 = 1;
  }

  else
  {
    v11 = (v10 & 0x10) == 0;
  }

LABEL_62:

  return v11;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((has & 4) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_regStatus;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((has & 0x40) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_updateStatus;
  if ((has & 0x40) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_ueOpMode;
    goto LABEL_10;
  }

LABEL_9:
  v7 = 0;
LABEL_10:
  v8 = [(NSMutableArray *)self->_taiLists hash];
  v9 = [(Guti *)self->_guti hash];
  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    v11 = 2654435761 * self->_rejectCause;
    if ((v10 & 2) != 0)
    {
LABEL_12:
      v12 = 2654435761 * self->_regProc;
      if ((v10 & 0x20) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((v10 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  v12 = 0;
  if ((v10 & 0x20) != 0)
  {
LABEL_13:
    v13 = 2654435761 * self->_t3412DurS;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_14:
    v14 = 2654435761 * self->_isImsVoiceSupported;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    v15 = 0;
    if ((v10 & 0x10) != 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    v16 = 0;
    return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_20:
  v14 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v15 = 2654435761 * self->_isEmergBearerSupported;
  if ((v10 & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  v16 = 2654435761 * self->_subsId;
  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 34);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 34);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_regStatus = *(fromCopy + 7);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 34);
  if ((v6 & 0x80) == 0)
  {
LABEL_4:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  self->_updateStatus = *(fromCopy + 15);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 34) & 0x40) != 0)
  {
LABEL_5:
    self->_ueOpMode = *(fromCopy + 14);
    *&self->_has |= 0x40u;
  }

LABEL_6:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(fromCopy + 6);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(KCellularEmmContext *)self addTaiList:*(*(&v15 + 1) + 8 * i), v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  guti = self->_guti;
  v13 = *(v5 + 2);
  if (guti)
  {
    if (v13)
    {
      [(Guti *)guti mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(KCellularEmmContext *)self setGuti:?];
  }

  v14 = *(v5 + 34);
  if ((v14 & 8) != 0)
  {
    self->_rejectCause = *(v5 + 8);
    *&self->_has |= 8u;
    v14 = *(v5 + 34);
    if ((v14 & 2) == 0)
    {
LABEL_24:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_32;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_24;
  }

  self->_regProc = *(v5 + 6);
  *&self->_has |= 2u;
  v14 = *(v5 + 34);
  if ((v14 & 0x20) == 0)
  {
LABEL_25:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_t3412DurS = *(v5 + 10);
  *&self->_has |= 0x20u;
  v14 = *(v5 + 34);
  if ((v14 & 0x200) == 0)
  {
LABEL_26:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_27;
    }

LABEL_34:
    self->_isEmergBearerSupported = *(v5 + 64);
    *&self->_has |= 0x100u;
    if ((*(v5 + 34) & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_33:
  self->_isImsVoiceSupported = *(v5 + 65);
  *&self->_has |= 0x200u;
  v14 = *(v5 + 34);
  if ((v14 & 0x100) != 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  if ((v14 & 0x10) != 0)
  {
LABEL_28:
    self->_subsId = *(v5 + 9);
    *&self->_has |= 0x10u;
  }

LABEL_29:
}

@end