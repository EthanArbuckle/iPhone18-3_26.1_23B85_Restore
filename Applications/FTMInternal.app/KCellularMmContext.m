@interface KCellularMmContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsProcFailureCause:(id)a3;
- (int)StringAsRegStatus:(id)a3;
- (int)StringAsRejectCause:(id)a3;
- (int)StringAsUpdateStatus:(id)a3;
- (int)procFailureCause;
- (int)regStatus;
- (int)rejectCause;
- (int)updateStatus;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsCombinedProc:(BOOL)a3;
- (void)setHasProcFailureCause:(BOOL)a3;
- (void)setHasRegStatus:(BOOL)a3;
- (void)setHasRejectCause:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasT3212DurS:(BOOL)a3;
- (void)setHasTmsi:(BOOL)a3;
- (void)setHasUpdateStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularMmContext

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

- (void)setHasRegStatus:(BOOL)a3
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

- (int)StringAsRegStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KREG_STATUS_NORMAL_SERVICE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_REGISTRATION_FAILURE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_LIMITED_SERVICE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_NO_SERVICE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_AT_NOT_REGISTERED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_REGISTRATION_SERVICE_DISABLED"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_SERVICE_DETACHED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_SERVICE_ACTIVATED"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_EMERGENCY_SERVICE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_EMERGENCY_LIMITED"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_REGISTERED_SMS_ONLY"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_REGISTRATION_IN_PROGRESS"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_POWER_OFF_NO_SERVICE"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"KREG_STATUS_SUSPENDED"])
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
    return 1;
  }
}

- (void)setHasUpdateStatus:(BOOL)a3
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

- (int)StringAsUpdateStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"STATUS_UPDATED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"STATUS_NOT_UPDATED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"STATUS_ROAMING_NOT_ALLOWED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"STATUS_UPDATE_DISABLED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasTmsi:(BOOL)a3
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

- (void)setHasT3212DurS:(BOOL)a3
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

- (int)procFailureCause
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_procFailureCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasProcFailureCause:(BOOL)a3
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

- (int)StringAsProcFailureCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_LOWER_LAYER_FAILURE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_ACCESS_BARRED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_LIMITED_SERVICE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_PAGE_NOT_EXPECTED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_T3210_EXPIRY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_T3240_EXPIRY"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_DETACH_INITIATED"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_PS_SUSPENDED"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_SERV_REQ_THROTTLING"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_T3317_EXPIRY"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_REJECTED_BY_NW"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_NW_AUTH_REJ"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_INVALID_IE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_TIMEOUT"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_PROC_FAILURE_CAUSE_OTHER"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (void)setHasRejectCause:(BOOL)a3
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

- (int)StringAsRejectCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_IMSI_UNKNOWN"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_ILLEGAL_MS"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_IMSI_UNKNOWN_IN_VLR"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_IMEI_NOT_ACCEPTED"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_ILLEGAL_ME"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_GPRS_SERVICES_NOT_ALLOWED"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_GPRS_AND_NON_GPRS_SERVICES_NOT_ALLOWED"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_MS_IDENTITY_NOT_DERIVED_BY_NW"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_IMPLICITLY_DET"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_PLMN_NOT_ALLOWED"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_LA_NOT_ALLOWED"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_ROM_NOT_ALLOWED_IN_LA"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_GPRS_NOT_ALLOWED_IN_PLMN"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_NO_SUITABLE_CELL_IN_LA"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_MSC_OUT_OF_REACH"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_NW_FAILURE"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_MAC_FAILURE"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_SYNCH_FAILURE"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_CONGESTION"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_GSM_AUTH_UNACCEPTABLE"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_CSG_NOT_AUTHORIZED"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_SERVICE_OPTION_NOT_SUPPORTED"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_REQ_SERVICE_OPTION_NOT_SUBSCRIBED"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_CALL_NOT_IDENTIFIED"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_NO_PDP_CONTEXT_ACTIVATED"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_RETRY_UPON_ENTRY_TO_NEW_CELL"])
  {
    v4 = 63;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_SEMANTICALLY_INCORRECT_MSG"])
  {
    v4 = 95;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_INVALID_MANDATORY_INFO"])
  {
    v4 = 96;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_MSG_TYPE_NOT_IMPL"])
  {
    v4 = 97;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_MSG_TYPE_NOT_COMPATIBLE"])
  {
    v4 = 98;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_INFO_ELEMENT_NOT_IMPL"])
  {
    v4 = 99;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_IE_ERROR"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_MSG_NOT_COMPATIBLE"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"KNAS_MM_REJ_CAUSE_PROTOCOL_ERROR_UNSPECIFIED"])
  {
    v4 = 111;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsCombinedProc:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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
  v7.super_class = KCellularMmContext;
  v3 = [(KCellularMmContext *)&v7 description];
  v4 = [(KCellularMmContext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
        goto LABEL_27;
      }

      goto LABEL_23;
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

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_23:
    v8 = self->_updateStatus - 1;
    if (v8 >= 4)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_updateStatus];
    }

    else
    {
      v9 = *(&off_1003186D0 + v8);
    }

    [v3 setObject:v9 forKey:@"update_status"];
  }

LABEL_27:
  lai = self->_lai;
  if (lai)
  {
    v11 = [(KCellularLocationAreaId *)lai dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"lai"];
  }

  v12 = self->_has;
  if ((v12 & 0x40) != 0)
  {
    v15 = [NSNumber numberWithUnsignedInt:self->_tmsi];
    [v3 setObject:v15 forKey:@"tmsi"];

    v12 = self->_has;
    if ((v12 & 0x20) == 0)
    {
LABEL_31:
      if ((v12 & 2) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }
  }

  else if ((v12 & 0x20) == 0)
  {
    goto LABEL_31;
  }

  v16 = [NSNumber numberWithUnsignedInt:self->_t3212DurS];
  [v3 setObject:v16 forKey:@"t3212_dur_s"];

  v12 = self->_has;
  if ((v12 & 2) == 0)
  {
LABEL_32:
    if ((v12 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_41:
  procFailureCause = self->_procFailureCause;
  if (procFailureCause >= 0x10)
  {
    v18 = [NSString stringWithFormat:@"(unknown: %i)", self->_procFailureCause];
  }

  else
  {
    v18 = *(&off_1003186F0 + procFailureCause);
  }

  [v3 setObject:v18 forKey:@"proc_failure_cause"];

  v12 = self->_has;
  if ((v12 & 8) == 0)
  {
LABEL_33:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_92;
  }

LABEL_45:
  rejectCause = self->_rejectCause;
  if (rejectCause > 94)
  {
    if (rejectCause > 98)
    {
      if (rejectCause > 100)
      {
        if (rejectCause == 101)
        {
          v20 = @"KNAS_MM_REJ_CAUSE_MSG_NOT_COMPATIBLE";
        }

        else if (rejectCause == 111)
        {
          v20 = @"KNAS_MM_REJ_CAUSE_PROTOCOL_ERROR_UNSPECIFIED";
        }

        else
        {
LABEL_90:
          v20 = [NSString stringWithFormat:@"(unknown: %i)", self->_rejectCause];
        }
      }

      else if (rejectCause == 99)
      {
        v20 = @"KNAS_MM_REJ_CAUSE_INFO_ELEMENT_NOT_IMPL";
      }

      else
      {
        v20 = @"KNAS_MM_REJ_CAUSE_IE_ERROR";
      }
    }

    else if (rejectCause > 96)
    {
      if (rejectCause == 97)
      {
        v20 = @"KNAS_MM_REJ_CAUSE_MSG_TYPE_NOT_IMPL";
      }

      else
      {
        v20 = @"KNAS_MM_REJ_CAUSE_MSG_TYPE_NOT_COMPATIBLE";
      }
    }

    else if (rejectCause == 95)
    {
      v20 = @"KNAS_MM_REJ_CAUSE_SEMANTICALLY_INCORRECT_MSG";
    }

    else
    {
      v20 = @"KNAS_MM_REJ_CAUSE_INVALID_MANDATORY_INFO";
    }
  }

  else
  {
    v20 = @"KNAS_MM_REJ_CAUSE_NONE";
    v21 = self->_rejectCause;
    switch(rejectCause)
    {
      case 0:
        break;
      case 2:
        v20 = @"KNAS_MM_REJ_CAUSE_IMSI_UNKNOWN";
        break;
      case 3:
        v20 = @"KNAS_MM_REJ_CAUSE_ILLEGAL_MS";
        break;
      case 4:
        v20 = @"KNAS_MM_REJ_CAUSE_IMSI_UNKNOWN_IN_VLR";
        break;
      case 5:
        v20 = @"KNAS_MM_REJ_CAUSE_IMEI_NOT_ACCEPTED";
        break;
      case 6:
        v20 = @"KNAS_MM_REJ_CAUSE_ILLEGAL_ME";
        break;
      case 7:
        v20 = @"KNAS_MM_REJ_CAUSE_GPRS_SERVICES_NOT_ALLOWED";
        break;
      case 8:
        v20 = @"KNAS_MM_REJ_CAUSE_GPRS_AND_NON_GPRS_SERVICES_NOT_ALLOWED";
        break;
      case 9:
        v20 = @"KNAS_MM_REJ_CAUSE_MS_IDENTITY_NOT_DERIVED_BY_NW";
        break;
      case 10:
        v20 = @"KNAS_MM_REJ_CAUSE_IMPLICITLY_DET";
        break;
      case 11:
        v20 = @"KNAS_MM_REJ_CAUSE_PLMN_NOT_ALLOWED";
        break;
      case 12:
        v20 = @"KNAS_MM_REJ_CAUSE_LA_NOT_ALLOWED";
        break;
      case 13:
        v20 = @"KNAS_MM_REJ_CAUSE_ROM_NOT_ALLOWED_IN_LA";
        break;
      case 14:
        v20 = @"KNAS_MM_REJ_CAUSE_GPRS_NOT_ALLOWED_IN_PLMN";
        break;
      case 15:
        v20 = @"KNAS_MM_REJ_CAUSE_NO_SUITABLE_CELL_IN_LA";
        break;
      case 16:
        v20 = @"KNAS_MM_REJ_CAUSE_MSC_OUT_OF_REACH";
        break;
      case 17:
        v20 = @"KNAS_MM_REJ_CAUSE_NW_FAILURE";
        break;
      case 20:
        v20 = @"KNAS_MM_REJ_CAUSE_MAC_FAILURE";
        break;
      case 21:
        v20 = @"KNAS_MM_REJ_CAUSE_SYNCH_FAILURE";
        break;
      case 22:
        v20 = @"KNAS_MM_REJ_CAUSE_CONGESTION";
        break;
      case 23:
        v20 = @"KNAS_MM_REJ_CAUSE_GSM_AUTH_UNACCEPTABLE";
        break;
      case 25:
        v20 = @"KNAS_MM_REJ_CAUSE_CSG_NOT_AUTHORIZED";
        break;
      case 32:
        v20 = @"KNAS_MM_REJ_CAUSE_SERVICE_OPTION_NOT_SUPPORTED";
        break;
      case 33:
        v20 = @"KNAS_MM_REJ_CAUSE_REQ_SERVICE_OPTION_NOT_SUBSCRIBED";
        break;
      case 34:
        v20 = @"KNAS_MM_REJ_CAUSE_SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER";
        break;
      case 38:
        v20 = @"KNAS_MM_REJ_CAUSE_CALL_NOT_IDENTIFIED";
        break;
      case 40:
        v20 = @"KNAS_MM_REJ_CAUSE_NO_PDP_CONTEXT_ACTIVATED";
        break;
      case 63:
        v20 = @"KNAS_MM_REJ_CAUSE_RETRY_UPON_ENTRY_TO_NEW_CELL";
        break;
      default:
        goto LABEL_90;
    }
  }

  [v3 setObject:v20 forKey:@"reject_cause"];

  v12 = self->_has;
  if ((v12 & 0x100) == 0)
  {
LABEL_34:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_92:
  v22 = [NSNumber numberWithBool:self->_isCombinedProc];
  [v3 setObject:v22 forKey:@"is_combined_proc"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_35:
    v13 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v13 forKey:@"subs_id"];
  }

LABEL_36:

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
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
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  regStatus = self->_regStatus;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_4:
    updateStatus = self->_updateStatus;
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  if (self->_lai)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    tmsi = self->_tmsi;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((v6 & 0x20) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_9;
  }

  t3212DurS = self->_t3212DurS;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  procFailureCause = self->_procFailureCause;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((v6 & 8) == 0)
  {
LABEL_11:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  rejectCause = self->_rejectCause;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_24:
  isCombinedProc = self->_isCombinedProc;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_14:
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 7) = self->_regStatus;
  *(v4 + 28) |= 4u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_4:
    *(v4 + 12) = self->_updateStatus;
    *(v4 + 28) |= 0x80u;
  }

LABEL_5:
  if (self->_lai)
  {
    v7 = v4;
    [v4 setLai:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(v4 + 11) = self->_tmsi;
    *(v4 + 28) |= 0x40u;
    v6 = self->_has;
    if ((v6 & 0x20) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 10) = self->_t3212DurS;
  *(v4 + 28) |= 0x20u;
  v6 = self->_has;
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 6) = self->_procFailureCause;
  *(v4 + 28) |= 2u;
  v6 = self->_has;
  if ((v6 & 8) == 0)
  {
LABEL_11:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 8) = self->_rejectCause;
  *(v4 + 28) |= 8u;
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_24:
  *(v4 + 52) = self->_isCombinedProc;
  *(v4 + 28) |= 0x100u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    *(v4 + 9) = self->_subsId;
    *(v4 + 28) |= 0x10u;
  }

LABEL_14:
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 7) = self->_regStatus;
  *(v5 + 28) |= 4u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_4:
    *(v5 + 12) = self->_updateStatus;
    *(v5 + 28) |= 0x80u;
  }

LABEL_5:
  v8 = [(KCellularLocationAreaId *)self->_lai copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  v10 = self->_has;
  if ((v10 & 0x40) != 0)
  {
    *(v6 + 11) = self->_tmsi;
    *(v6 + 28) |= 0x40u;
    v10 = self->_has;
    if ((v10 & 0x20) == 0)
    {
LABEL_7:
      if ((v10 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((v10 & 0x20) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 10) = self->_t3212DurS;
  *(v6 + 28) |= 0x20u;
  v10 = self->_has;
  if ((v10 & 2) == 0)
  {
LABEL_8:
    if ((v10 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v6 + 6) = self->_procFailureCause;
  *(v6 + 28) |= 2u;
  v10 = self->_has;
  if ((v10 & 8) == 0)
  {
LABEL_9:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    *(v6 + 52) = self->_isCombinedProc;
    *(v6 + 28) |= 0x100u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v6;
    }

    goto LABEL_11;
  }

LABEL_19:
  *(v6 + 8) = self->_rejectCause;
  *(v6 + 28) |= 8u;
  v10 = self->_has;
  if ((v10 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v10 & 0x10) != 0)
  {
LABEL_11:
    *(v6 + 9) = self->_subsId;
    *(v6 + 28) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  has = self->_has;
  v6 = *(v4 + 28);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_52;
    }
  }

  else if (v6)
  {
    goto LABEL_52;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_regStatus != *(v4 + 7))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_updateStatus != *(v4 + 12))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_52;
  }

  lai = self->_lai;
  if (lai | *(v4 + 2))
  {
    if (![(KCellularLocationAreaId *)lai isEqual:?])
    {
      goto LABEL_52;
    }

    has = self->_has;
  }

  v8 = *(v4 + 28);
  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_tmsi != *(v4 + 11))
    {
      goto LABEL_52;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_t3212DurS != *(v4 + 10))
    {
      goto LABEL_52;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_procFailureCause != *(v4 + 6))
    {
      goto LABEL_52;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_rejectCause != *(v4 + 8))
    {
      goto LABEL_52;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x100) == 0)
  {
    if ((*(v4 + 28) & 0x100) == 0)
    {
      goto LABEL_42;
    }

LABEL_52:
    v9 = 0;
    goto LABEL_53;
  }

  if ((*(v4 + 28) & 0x100) == 0)
  {
    goto LABEL_52;
  }

  v10 = *(v4 + 52);
  if (self->_isCombinedProc)
  {
    if ((*(v4 + 52) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_52;
  }

LABEL_42:
  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_subsId != *(v4 + 9))
    {
      goto LABEL_52;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v8 & 0x10) == 0;
  }

LABEL_53:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    v4 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = 2654435761u * self->_timestamp;
  if ((has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_regStatus;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_updateStatus;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  v7 = [(KCellularLocationAreaId *)self->_lai hash];
  v8 = self->_has;
  if ((v8 & 0x40) != 0)
  {
    v9 = 2654435761 * self->_tmsi;
    if ((v8 & 0x20) != 0)
    {
LABEL_10:
      v10 = 2654435761 * self->_t3212DurS;
      if ((v8 & 2) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    if ((v8 & 0x20) != 0)
    {
      goto LABEL_10;
    }
  }

  v10 = 0;
  if ((v8 & 2) != 0)
  {
LABEL_11:
    v11 = 2654435761 * self->_procFailureCause;
    if ((v8 & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = 0;
  if ((v8 & 8) != 0)
  {
LABEL_12:
    v12 = 2654435761 * self->_rejectCause;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v13 = 0;
    if ((v8 & 0x10) != 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    v14 = 0;
    return v5 ^ v4 ^ v6 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v7;
  }

LABEL_18:
  v12 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v13 = 2654435761 * self->_isCombinedProc;
  if ((v8 & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v14 = 2654435761 * self->_subsId;
  return v5 ^ v4 ^ v6 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 28);
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 28);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_regStatus = *(v4 + 7);
  *&self->_has |= 4u;
  if ((*(v4 + 28) & 0x80) != 0)
  {
LABEL_4:
    self->_updateStatus = *(v4 + 12);
    *&self->_has |= 0x80u;
  }

LABEL_5:
  lai = self->_lai;
  v8 = *(v5 + 2);
  if (lai)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v10 = v5;
    [(KCellularLocationAreaId *)lai mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v10 = v5;
    [(KCellularMmContext *)self setLai:?];
  }

  v5 = v10;
LABEL_14:
  v9 = *(v5 + 28);
  if ((v9 & 0x40) != 0)
  {
    self->_tmsi = *(v5 + 11);
    *&self->_has |= 0x40u;
    v9 = *(v5 + 28);
    if ((v9 & 0x20) == 0)
    {
LABEL_16:
      if ((v9 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_16;
  }

  self->_t3212DurS = *(v5 + 10);
  *&self->_has |= 0x20u;
  v9 = *(v5 + 28);
  if ((v9 & 2) == 0)
  {
LABEL_17:
    if ((v9 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_procFailureCause = *(v5 + 6);
  *&self->_has |= 2u;
  v9 = *(v5 + 28);
  if ((v9 & 8) == 0)
  {
LABEL_18:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_rejectCause = *(v5 + 8);
  *&self->_has |= 8u;
  v9 = *(v5 + 28);
  if ((v9 & 0x100) == 0)
  {
LABEL_19:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_28:
  self->_isCombinedProc = *(v5 + 52);
  *&self->_has |= 0x100u;
  if ((*(v5 + 28) & 0x10) != 0)
  {
LABEL_20:
    self->_subsId = *(v5 + 9);
    *&self->_has |= 0x10u;
  }

LABEL_21:

  _objc_release_x1();
}

@end