@interface CellularCallEndDetails
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAntenna:(id)antenna;
- (int)StringAsBand:(id)band;
- (int)StringAsCallEvent:(id)event;
- (int)StringAsCallState:(id)state;
- (int)StringAsCallType:(id)type;
- (int)StringAsDirection:(id)direction;
- (int)StringAsSetupDirection:(id)direction;
- (int)StringAsSetupSysMode:(id)mode;
- (int)StringAsSrvType:(id)type;
- (int)StringAsSrvccTargetRat:(id)rat;
- (int)StringAsSysMode:(id)mode;
- (int)antenna;
- (int)band;
- (int)callEvent;
- (int)callState;
- (int)callType;
- (int)direction;
- (int)setupDirection;
- (int)setupSysMode;
- (int)srvType;
- (int)srvccTargetRat;
- (int)sysMode;
- (unint64_t)hash;
- (void)addCapEvent:(id)event;
- (void)addRfMeasInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAccessoryAttached:(BOOL)attached;
- (void)setHasAntenna:(BOOL)antenna;
- (void)setHasBand:(BOOL)band;
- (void)setHasBaseId:(BOOL)id;
- (void)setHasCallDuration:(BOOL)duration;
- (void)setHasCallEvent:(BOOL)event;
- (void)setHasCallId:(BOOL)id;
- (void)setHasCallState:(BOOL)state;
- (void)setHasCallType:(BOOL)type;
- (void)setHasCcCause:(BOOL)cause;
- (void)setHasCellId:(BOOL)id;
- (void)setHasCoexPolicy:(BOOL)policy;
- (void)setHasConnected:(BOOL)connected;
- (void)setHasDirection:(BOOL)direction;
- (void)setHasEcioDbx2:(BOOL)dbx2;
- (void)setHasEndStatus:(BOOL)status;
- (void)setHasEstablished:(BOOL)established;
- (void)setHasFb:(BOOL)fb;
- (void)setHasHoType:(BOOL)type;
- (void)setHasHstState:(BOOL)state;
- (void)setHasIsSrvccSuccess:(BOOL)success;
- (void)setHasLac:(BOOL)lac;
- (void)setHasLastMotionState:(BOOL)state;
- (void)setHasLteCellId:(BOOL)id;
- (void)setHasLteLac:(BOOL)lac;
- (void)setHasMcc:(BOOL)mcc;
- (void)setHasMnc:(BOOL)mnc;
- (void)setHasMrabEnd:(BOOL)end;
- (void)setHasMrabEver:(BOOL)ever;
- (void)setHasMsFbToSetup:(BOOL)setup;
- (void)setHasMsOrigToConf:(BOOL)conf;
- (void)setHasMsOrigToEnd:(BOOL)end;
- (void)setHasMsOrigToFb:(BOOL)fb;
- (void)setHasMsPageToSetup:(BOOL)setup;
- (void)setHasMsSetupToEnd:(BOOL)end;
- (void)setHasMsSinceLastMotionState:(BOOL)state;
- (void)setHasMsStartToAlert:(BOOL)alert;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasPsc:(BOOL)psc;
- (void)setHasQmiReleaseCause:(BOOL)cause;
- (void)setHasRfChannel:(BOOL)channel;
- (void)setHasRrcRelCause:(BOOL)cause;
- (void)setHasRssiDbm:(BOOL)dbm;
- (void)setHasSensorEndToPresentMs:(BOOL)ms;
- (void)setHasSensorUseDuringLastCallMs:(BOOL)ms;
- (void)setHasSetupDirection:(BOOL)direction;
- (void)setHasSetupSysMode:(BOOL)mode;
- (void)setHasSid:(BOOL)sid;
- (void)setHasSl2:(BOOL)sl2;
- (void)setHasSl:(BOOL)sl;
- (void)setHasSrvType:(BOOL)type;
- (void)setHasSrvccFailureCause:(BOOL)cause;
- (void)setHasSrvccTargetRat:(BOOL)rat;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasSysMode:(BOOL)mode;
- (void)setHasTsAccuracyHour:(BOOL)hour;
- (void)setHasTtyMode:(BOOL)mode;
- (void)setHasTxPwrDbm:(BOOL)dbm;
- (void)setHasVersion:(BOOL)version;
- (void)setHasZoneId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularCallEndDetails

- (int)callEvent
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_callEvent;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCallEvent:(BOOL)event
{
  v3 = 32;
  if (!event)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (int)StringAsCallEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"CM_CALL_EVENT_ORIG"])
  {
    v4 = 0;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_ANSWER"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_END_REQ"])
  {
    v4 = 2;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_END"])
  {
    v4 = 3;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_SUPS"])
  {
    v4 = 4;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_INCOM"])
  {
    v4 = 5;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_CONNECT"])
  {
    v4 = 6;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_ABRV_ALERT"])
  {
    v4 = 11;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_SETUP_IND"])
  {
    v4 = 27;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_CALL_CONF"])
  {
    v4 = 29;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_ALERTING"])
  {
    v4 = 56;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_HO_COMPLETE"])
  {
    v4 = 111;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_MT_CALL_PAGE_FAIL"])
  {
    v4 = 112;
  }

  else if ([eventCopy isEqualToString:@"CM_CALL_EVENT_ALERT"])
  {
    v4 = 117;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCallId:(BOOL)id
{
  v3 = 64;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (int)direction
{
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    return self->_direction;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDirection:(BOOL)direction
{
  v3 = 4096;
  if (!direction)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (int)StringAsDirection:(id)direction
{
  directionCopy = direction;
  if ([directionCopy isEqualToString:@"CM_CALL_DIRECTION_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([directionCopy isEqualToString:@"CM_CALL_DIRECTION_MO"])
  {
    v4 = 1;
  }

  else if ([directionCopy isEqualToString:@"CM_CALL_DIRECTION_MT"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)srvType
{
  if ((*(&self->_has + 5) & 0x10) != 0)
  {
    return self->_srvType;
  }

  else
  {
    return -1;
  }
}

- (void)setHasSrvType:(BOOL)type
{
  v3 = 0x100000000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (int)StringAsSrvType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"CM_SRV_TYPE_NONE"])
  {
    v4 = -1;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_LTE_V2"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_HDR"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_CDMA_SPECIFIC"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_CDMA_AUTOMATIC"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_AUTOMATIC"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_CDMA_HDR"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_GSM_WCDMA"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_WCDMA"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_GSM"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_WLAN"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_NON_AUTOMATIC"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_LTE"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_GSM_WCDMA_LTE"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_HDR_MORE_PREF"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_UMTS"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_UMTS_GSM"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_UMTS_GSM_LTE"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_UMTS_GSM_WCDMA_LTE"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_UMTS_GSM_WCDMA"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_UMTS_LTE"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_CS_ONLY"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_PS_ONLY"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"CM_SRV_TYPE_MAX"])
  {
    v4 = 22;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (int)sysMode
{
  if (*(&self->_has + 6))
  {
    return self->_sysMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSysMode:(BOOL)mode
{
  v3 = 0x1000000000000;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
}

- (int)StringAsSysMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"SYS_MODE_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_LTE_V2"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_CDMA"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 3;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_HDR"])
  {
    v4 = 4;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_WCDMA"])
  {
    v4 = 5;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_EHRPD"])
  {
    v4 = 6;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_GW"])
  {
    v4 = 7;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_WLAN"])
  {
    v4 = 8;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 9;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_GWL"])
  {
    v4 = 10;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_UMTS"])
  {
    v4 = 11;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_NR5G"])
  {
    v4 = 12;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_CDMA_HDR"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)callState
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_callState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCallState:(BOOL)state
{
  v3 = 128;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (int)StringAsCallState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"CM_CALL_STATE_IDLE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"CM_CALL_STATE_ORIG"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"CM_CALL_STATE_INCOM"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"CM_CALL_STATE_CONV"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"CM_CALL_STATE_CC_IN_PROGRESS"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"CM_CALL_STATE_RECALL_RSP_PEND"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEndStatus:(BOOL)status
{
  v3 = 0x4000;
  if (!status)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasCcCause:(BOOL)cause
{
  v3 = 512;
  if (!cause)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasQmiReleaseCause:(BOOL)cause
{
  v3 = 0x800000000;
  if (!cause)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasCallDuration:(BOOL)duration
{
  v3 = 16;
  if (!duration)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (int)antenna
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_antenna;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAntenna:(BOOL)antenna
{
  v3 = 2;
  if (!antenna)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (int)StringAsAntenna:(id)antenna
{
  antennaCopy = antenna;
  if ([antennaCopy isEqualToString:@"ARTD_ANT0"])
  {
    v4 = 0;
  }

  else if ([antennaCopy isEqualToString:@"ARTD_ANT1"])
  {
    v4 = 1;
  }

  else if ([antennaCopy isEqualToString:@"ARTD_ANT2"])
  {
    v4 = 2;
  }

  else if ([antennaCopy isEqualToString:@"ARTD_ANT3"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)callType
{
  if (*(&self->_has + 1))
  {
    return self->_callType;
  }

  else
  {
    return -1;
  }
}

- (void)setHasCallType:(BOOL)type
{
  v3 = 256;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (int)StringAsCallType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"CM_CALL_TYPE_NONE"])
  {
    v4 = -1;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_VOICE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_CS_DATA"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_PS_DATA"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_SMS"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_PD"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_TEST"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_OTAPA"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_STD_OTASP"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_NON_STD_OTASP"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_EMERGENCY"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_SUPS"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_VT"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_VT_LOOPBACK"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_VS"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_PS_DATA_IS707B"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_UNKNOWN"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"CM_CALL_TYPE_MAX"])
  {
    v4 = 16;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasEstablished:(BOOL)established
{
  v3 = 0x100000000000000;
  if (!established)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasConnected:(BOOL)connected
{
  v3 = 0x80000000000000;
  if (!connected)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3);
}

- (void)setHasLteCellId:(BOOL)id
{
  v3 = 0x100000;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasCellId:(BOOL)id
{
  v3 = 1024;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasZoneId:(BOOL)id
{
  v3 = 0x20000000000000;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3);
}

- (void)setHasBaseId:(BOOL)id
{
  v3 = 8;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasLteLac:(BOOL)lac
{
  v3 = 0x200000;
  if (!lac)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasSid:(BOOL)sid
{
  v3 = 0x80000000000;
  if (!sid)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasMcc:(BOOL)mcc
{
  v3 = 0x400000;
  if (!mcc)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasMnc:(BOOL)mnc
{
  v3 = 0x800000;
  if (!mnc)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasLac:(BOOL)lac
{
  v3 = 0x40000;
  if (!lac)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasMrabEver:(BOOL)ever
{
  v3 = 0x800000000000000;
  if (!ever)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3);
}

- (void)setHasMrabEnd:(BOOL)end
{
  v3 = 0x400000000000000;
  if (!end)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3);
}

- (int)band
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_band;
  }

  else
  {
    return 0;
  }
}

- (void)setHasBand:(BOOL)band
{
  v3 = 4;
  if (!band)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (int)StringAsBand:(id)band
{
  bandCopy = band;
  if ([bandCopy isEqualToString:@"SYS_BAND_BC0"])
  {
    v4 = 0;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC1"])
  {
    v4 = 1;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC3"])
  {
    v4 = 3;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC4"])
  {
    v4 = 4;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC5"])
  {
    v4 = 5;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC6"])
  {
    v4 = 6;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC7"])
  {
    v4 = 7;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC8"])
  {
    v4 = 8;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC9"])
  {
    v4 = 9;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC10"])
  {
    v4 = 10;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC11"])
  {
    v4 = 11;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC12"])
  {
    v4 = 12;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC13"])
  {
    v4 = 13;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC14"])
  {
    v4 = 14;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC15"])
  {
    v4 = 15;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC16"])
  {
    v4 = 16;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC17"])
  {
    v4 = 17;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC18"])
  {
    v4 = 18;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_BC19"])
  {
    v4 = 19;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_450"])
  {
    v4 = 40;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_480"])
  {
    v4 = 41;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_750"])
  {
    v4 = 42;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_850"])
  {
    v4 = 43;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_EGSM_900"])
  {
    v4 = 44;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_PGSM_900"])
  {
    v4 = 45;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_RGSM_900"])
  {
    v4 = 46;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_DCS_1800"])
  {
    v4 = 47;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_GSM_PCS_1900"])
  {
    v4 = 48;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_I_IMT_2000"])
  {
    v4 = 80;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_II_PCS_1900"])
  {
    v4 = 81;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_III_1700"])
  {
    v4 = 82;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_IV_1700"])
  {
    v4 = 83;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_V_850"])
  {
    v4 = 84;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_VI_800"])
  {
    v4 = 85;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_VII_2600"])
  {
    v4 = 86;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_VIII_900"])
  {
    v4 = 87;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_IX_1700"])
  {
    v4 = 88;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_XI_1500"])
  {
    v4 = 90;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_WCDMA_XIX_850"])
  {
    v4 = 91;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND1"])
  {
    v4 = 120;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND2"])
  {
    v4 = 121;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND3"])
  {
    v4 = 122;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND4"])
  {
    v4 = 123;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND5"])
  {
    v4 = 124;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND6"])
  {
    v4 = 125;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND7"])
  {
    v4 = 126;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND8"])
  {
    v4 = 127;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND9"])
  {
    v4 = 128;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND10"])
  {
    v4 = 129;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND11"])
  {
    v4 = 130;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND12"])
  {
    v4 = 131;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND13"])
  {
    v4 = 132;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND14"])
  {
    v4 = 133;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND17"])
  {
    v4 = 136;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND18"])
  {
    v4 = 137;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND19"])
  {
    v4 = 138;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND20"])
  {
    v4 = 139;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND21"])
  {
    v4 = 140;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND24"])
  {
    v4 = 143;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND25"])
  {
    v4 = 144;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND26"])
  {
    v4 = 145;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND33"])
  {
    v4 = 152;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND34"])
  {
    v4 = 153;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND35"])
  {
    v4 = 154;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND36"])
  {
    v4 = 155;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND37"])
  {
    v4 = 156;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND38"])
  {
    v4 = 157;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND39"])
  {
    v4 = 158;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND40"])
  {
    v4 = 159;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND41"])
  {
    v4 = 160;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND42"])
  {
    v4 = 161;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND43"])
  {
    v4 = 162;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_UMTS_BAND1"])
  {
    v4 = 163;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_UMTS_BAND2"])
  {
    v4 = 164;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_UMTS_BAND3"])
  {
    v4 = 165;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_UMTS_BAND4"])
  {
    v4 = 166;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_UMTS_BAND5"])
  {
    v4 = 167;
  }

  else if ([bandCopy isEqualToString:@"SYS_BAND_UMTS_BAND6"])
  {
    v4 = 168;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRfChannel:(BOOL)channel
{
  v3 = 0x1000000000;
  if (!channel)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasPsc:(BOOL)psc
{
  v3 = 0x400000000;
  if (!psc)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasTtyMode:(BOOL)mode
{
  v3 = 0x4000000000000;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3);
}

- (void)setHasTsAccuracyHour:(BOOL)hour
{
  v3 = 0x2000000000000;
  if (!hour)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3);
}

- (void)setHasAccessoryAttached:(BOOL)attached
{
  v3 = 0x40000000000000;
  if (!attached)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3);
}

- (int)setupSysMode
{
  if ((*(&self->_has + 5) & 4) != 0)
  {
    return self->_setupSysMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSetupSysMode:(BOOL)mode
{
  v3 = 0x40000000000;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (int)StringAsSetupSysMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"SYS_MODE_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_LTE_V2"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_CDMA"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 3;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_HDR"])
  {
    v4 = 4;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_WCDMA"])
  {
    v4 = 5;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_EHRPD"])
  {
    v4 = 6;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_GW"])
  {
    v4 = 7;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_WLAN"])
  {
    v4 = 8;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 9;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_GWL"])
  {
    v4 = 10;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_UMTS"])
  {
    v4 = 11;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_NR5G"])
  {
    v4 = 12;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_CDMA_HDR"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)setupDirection
{
  if ((*(&self->_has + 5) & 2) != 0)
  {
    return self->_setupDirection;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSetupDirection:(BOOL)direction
{
  v3 = 0x20000000000;
  if (!direction)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (int)StringAsSetupDirection:(id)direction
{
  directionCopy = direction;
  if ([directionCopy isEqualToString:@"CM_CALL_DIRECTION_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([directionCopy isEqualToString:@"CM_CALL_DIRECTION_MO"])
  {
    v4 = 1;
  }

  else if ([directionCopy isEqualToString:@"CM_CALL_DIRECTION_MT"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSl2:(BOOL)sl2
{
  v3 = 0x2000000000000000;
  if (!sl2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasCoexPolicy:(BOOL)policy
{
  v3 = 2048;
  if (!policy)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasSl:(BOOL)sl
{
  v3 = 0x1000000000000000;
  if (!sl)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasFb:(BOOL)fb
{
  v3 = 0x200000000000000;
  if (!fb)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasMsOrigToFb:(BOOL)fb
{
  v3 = 0x8000000;
  if (!fb)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasMsOrigToConf:(BOOL)conf
{
  v3 = 0x2000000;
  if (!conf)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasMsOrigToEnd:(BOOL)end
{
  v3 = 0x4000000;
  if (!end)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasMsStartToAlert:(BOOL)alert
{
  v3 = 0x80000000;
  if (!alert)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasMsFbToSetup:(BOOL)setup
{
  v3 = 0x1000000;
  if (!setup)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasMsPageToSetup:(BOOL)setup
{
  v3 = 0x10000000;
  if (!setup)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasMsSetupToEnd:(BOOL)end
{
  v3 = 0x20000000;
  if (!end)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasEcioDbx2:(BOOL)dbx2
{
  v3 = 0x2000;
  if (!dbx2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasRssiDbm:(BOOL)dbm
{
  v3 = 0x4000000000;
  if (!dbm)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasTxPwrDbm:(BOOL)dbm
{
  v3 = 0x8000000000000;
  if (!dbm)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3);
}

- (void)setHasSensorUseDuringLastCallMs:(BOOL)ms
{
  v3 = 0x10000000000;
  if (!ms)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasSensorEndToPresentMs:(BOOL)ms
{
  v3 = 0x8000000000;
  if (!ms)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)addCapEvent:(id)event
{
  eventCopy = event;
  capEvents = self->_capEvents;
  v8 = eventCopy;
  if (!capEvents)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_capEvents;
    self->_capEvents = v6;

    eventCopy = v8;
    capEvents = self->_capEvents;
  }

  [(NSMutableArray *)capEvents addObject:eventCopy];
}

- (void)setHasSubsId:(BOOL)id
{
  v3 = 0x800000000000;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (void)setHasNumSubs:(BOOL)subs
{
  v3 = &_mh_execute_header;
  if (!subs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasPsPref:(BOOL)pref
{
  v3 = 0x200000000;
  if (!pref)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasHoType:(BOOL)type
{
  v3 = 0x8000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasHstState:(BOOL)state
{
  v3 = 0x10000;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasRrcRelCause:(BOOL)cause
{
  v3 = 0x2000000000;
  if (!cause)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)addRfMeasInfo:(id)info
{
  infoCopy = info;
  rfMeasInfos = self->_rfMeasInfos;
  v8 = infoCopy;
  if (!rfMeasInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_rfMeasInfos;
    self->_rfMeasInfos = v6;

    infoCopy = v8;
    rfMeasInfos = self->_rfMeasInfos;
  }

  [(NSMutableArray *)rfMeasInfos addObject:infoCopy];
}

- (void)setHasIsSrvccSuccess:(BOOL)success
{
  v3 = 0x20000;
  if (!success)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (int)srvccTargetRat
{
  if ((*(&self->_has + 5) & 0x40) != 0)
  {
    return self->_srvccTargetRat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSrvccTargetRat:(BOOL)rat
{
  v3 = 0x400000000000;
  if (!rat)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (int)StringAsSrvccTargetRat:(id)rat
{
  ratCopy = rat;
  if ([ratCopy isEqualToString:@"SYS_RAT_GSM"])
  {
    v4 = 0;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_UMTS"])
  {
    v4 = 1;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_LTE"])
  {
    v4 = 2;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_TDS"])
  {
    v4 = 3;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_NR5G"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSrvccFailureCause:(BOOL)cause
{
  v3 = 0x200000000000;
  if (!cause)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasLastMotionState:(BOOL)state
{
  v3 = 0x80000;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasMsSinceLastMotionState:(BOOL)state
{
  v3 = 0x40000000;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasVersion:(BOOL)version
{
  v3 = 0x10000000000000;
  if (!version)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularCallEndDetails;
  v3 = [(CellularCallEndDetails *)&v7 description];
  dictionaryRepresentation = [(CellularCallEndDetails *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v28 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v28 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_137;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  callEvent = self->_callEvent;
  if (callEvent > 10)
  {
    if (callEvent <= 55)
    {
      switch(callEvent)
      {
        case 11:
          v30 = @"CM_CALL_EVENT_ABRV_ALERT";
          goto LABEL_136;
        case 27:
          v30 = @"CM_CALL_EVENT_SETUP_IND";
          goto LABEL_136;
        case 29:
          v30 = @"CM_CALL_EVENT_CALL_CONF";
          goto LABEL_136;
      }
    }

    else if (callEvent > 111)
    {
      if (callEvent == 112)
      {
        v30 = @"CM_CALL_EVENT_MT_CALL_PAGE_FAIL";
        goto LABEL_136;
      }

      if (callEvent == 117)
      {
        v30 = @"CM_CALL_EVENT_ALERT";
        goto LABEL_136;
      }
    }

    else
    {
      if (callEvent == 56)
      {
        v30 = @"CM_CALL_EVENT_ALERTING";
        goto LABEL_136;
      }

      if (callEvent == 111)
      {
        v30 = @"CM_CALL_EVENT_HO_COMPLETE";
        goto LABEL_136;
      }
    }

    goto LABEL_135;
  }

  if (callEvent <= 2)
  {
    switch(callEvent)
    {
      case 0:
        v30 = @"CM_CALL_EVENT_ORIG";
        goto LABEL_136;
      case 1:
        v30 = @"CM_CALL_EVENT_ANSWER";
        goto LABEL_136;
      case 2:
        v30 = @"CM_CALL_EVENT_END_REQ";
        goto LABEL_136;
    }

    goto LABEL_135;
  }

  if (callEvent > 4)
  {
    if (callEvent == 5)
    {
      v30 = @"CM_CALL_EVENT_INCOM";
      goto LABEL_136;
    }

    if (callEvent == 6)
    {
      v30 = @"CM_CALL_EVENT_CONNECT";
      goto LABEL_136;
    }

LABEL_135:
    v30 = [NSString stringWithFormat:@"(unknown: %i)", self->_callEvent];
    goto LABEL_136;
  }

  if (callEvent == 3)
  {
    v30 = @"CM_CALL_EVENT_END";
  }

  else
  {
    v30 = @"CM_CALL_EVENT_SUPS";
  }

LABEL_136:
  [v3 setObject:v30 forKey:@"call_event"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_138;
  }

LABEL_137:
  v41 = [NSNumber numberWithUnsignedInt:self->_callId];
  [v3 setObject:v41 forKey:@"call_id"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_142;
  }

LABEL_138:
  direction = self->_direction;
  if (direction >= 3)
  {
    v43 = [NSString stringWithFormat:@"(unknown: %i)", self->_direction];
  }

  else
  {
    v43 = *(&off_1003176A0 + direction);
  }

  [v3 setObject:v43 forKey:@"direction"];

  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_146;
  }

LABEL_142:
  v44 = self->_srvType + 1;
  if (v44 >= 0x18)
  {
    v45 = [NSString stringWithFormat:@"(unknown: %i)", self->_srvType];
  }

  else
  {
    v45 = *(&off_100317480 + v44);
  }

  [v3 setObject:v45 forKey:@"srv_type"];

  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_151;
  }

LABEL_146:
  sysMode = self->_sysMode;
  if (sysMode < 0x10 && ((0x9FFFu >> sysMode) & 1) != 0)
  {
    v47 = *(&off_100317620 + sysMode);
  }

  else
  {
    v47 = [NSString stringWithFormat:@"(unknown: %i)", self->_sysMode];
  }

  [v3 setObject:v47 forKey:@"sys_mode"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_155;
  }

LABEL_151:
  callState = self->_callState;
  if (callState >= 6)
  {
    v49 = [NSString stringWithFormat:@"(unknown: %i)", self->_callState];
  }

  else
  {
    v49 = *(&off_100317540 + callState);
  }

  [v3 setObject:v49 forKey:@"call_state"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_156;
  }

LABEL_155:
  v50 = [NSNumber numberWithInt:self->_endStatus];
  [v3 setObject:v50 forKey:@"end_status"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_157;
  }

LABEL_156:
  v51 = [NSNumber numberWithUnsignedInt:self->_ccCause];
  [v3 setObject:v51 forKey:@"cc_cause"];

  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_158;
  }

LABEL_157:
  v52 = [NSNumber numberWithInt:self->_qmiReleaseCause];
  [v3 setObject:v52 forKey:@"qmi_release_cause"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_12:
    if ((*&has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_159;
  }

LABEL_158:
  v53 = [NSNumber numberWithInt:self->_callDuration];
  [v3 setObject:v53 forKey:@"call_duration"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_163;
  }

LABEL_159:
  antenna = self->_antenna;
  if (antenna >= 4)
  {
    v55 = [NSString stringWithFormat:@"(unknown: %i)", self->_antenna];
  }

  else
  {
    v55 = *(&off_100317570 + antenna);
  }

  [v3 setObject:v55 forKey:@"antenna"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x100000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_167;
  }

LABEL_163:
  v56 = self->_callType + 1;
  if (v56 >= 0x12)
  {
    v57 = [NSString stringWithFormat:@"(unknown: %i)", self->_callType];
  }

  else
  {
    v57 = *(&off_100317590 + v56);
  }

  [v3 setObject:v57 forKey:@"call_type"];

  has = self->_has;
  if ((*&has & 0x100000000000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_168;
  }

LABEL_167:
  v58 = [NSNumber numberWithBool:self->_established];
  [v3 setObject:v58 forKey:@"established"];

  has = self->_has;
  if ((*&has & 0x80000000000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_169;
  }

LABEL_168:
  v59 = [NSNumber numberWithBool:self->_connected];
  [v3 setObject:v59 forKey:@"connected"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_170;
  }

LABEL_169:
  v60 = [NSNumber numberWithUnsignedInt:self->_lteCellId];
  [v3 setObject:v60 forKey:@"lte_cell_id"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_171;
  }

LABEL_170:
  v61 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v61 forKey:@"cell_id"];

  has = self->_has;
  if ((*&has & 0x20000000000000) == 0)
  {
LABEL_19:
    if ((*&has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_172;
  }

LABEL_171:
  v62 = [NSNumber numberWithUnsignedInt:self->_zoneId];
  [v3 setObject:v62 forKey:@"zone_id"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_173;
  }

LABEL_172:
  v63 = [NSNumber numberWithUnsignedInt:self->_baseId];
  [v3 setObject:v63 forKey:@"base_id"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_174;
  }

LABEL_173:
  v64 = [NSNumber numberWithUnsignedInt:self->_lteLac];
  [v3 setObject:v64 forKey:@"lte_lac"];

  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_175;
  }

LABEL_174:
  v65 = [NSNumber numberWithUnsignedInt:self->_sid];
  [v3 setObject:v65 forKey:@"sid"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_176;
  }

LABEL_175:
  v66 = [NSNumber numberWithUnsignedInt:self->_mcc];
  [v3 setObject:v66 forKey:@"mcc"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_24:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_177;
  }

LABEL_176:
  v67 = [NSNumber numberWithUnsignedInt:self->_mnc];
  [v3 setObject:v67 forKey:@"mnc"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_25:
    if ((*&has & 0x800000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_178;
  }

LABEL_177:
  v68 = [NSNumber numberWithUnsignedInt:self->_lac];
  [v3 setObject:v68 forKey:@"lac"];

  has = self->_has;
  if ((*&has & 0x800000000000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_179;
  }

LABEL_178:
  v69 = [NSNumber numberWithBool:self->_mrabEver];
  [v3 setObject:v69 forKey:@"mrab_ever"];

  has = self->_has;
  if ((*&has & 0x400000000000000) == 0)
  {
LABEL_27:
    if ((*&has & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_180;
  }

LABEL_179:
  v70 = [NSNumber numberWithBool:self->_mrabEnd];
  [v3 setObject:v70 forKey:@"mrab_end"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_28:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_260;
  }

LABEL_180:
  v71 = @"SYS_BAND_BC0";
  switch(self->_band)
  {
    case 0:
      break;
    case 1:
      v71 = @"SYS_BAND_BC1";
      break;
    case 3:
      v71 = @"SYS_BAND_BC3";
      break;
    case 4:
      v71 = @"SYS_BAND_BC4";
      break;
    case 5:
      v71 = @"SYS_BAND_BC5";
      break;
    case 6:
      v71 = @"SYS_BAND_BC6";
      break;
    case 7:
      v71 = @"SYS_BAND_BC7";
      break;
    case 8:
      v71 = @"SYS_BAND_BC8";
      break;
    case 9:
      v71 = @"SYS_BAND_BC9";
      break;
    case 0xA:
      v71 = @"SYS_BAND_BC10";
      break;
    case 0xB:
      v71 = @"SYS_BAND_BC11";
      break;
    case 0xC:
      v71 = @"SYS_BAND_BC12";
      break;
    case 0xD:
      v71 = @"SYS_BAND_BC13";
      break;
    case 0xE:
      v71 = @"SYS_BAND_BC14";
      break;
    case 0xF:
      v71 = @"SYS_BAND_BC15";
      break;
    case 0x10:
      v71 = @"SYS_BAND_BC16";
      break;
    case 0x11:
      v71 = @"SYS_BAND_BC17";
      break;
    case 0x12:
      v71 = @"SYS_BAND_BC18";
      break;
    case 0x13:
      v71 = @"SYS_BAND_BC19";
      break;
    case 0x28:
      v71 = @"SYS_BAND_GSM_450";
      break;
    case 0x29:
      v71 = @"SYS_BAND_GSM_480";
      break;
    case 0x2A:
      v71 = @"SYS_BAND_GSM_750";
      break;
    case 0x2B:
      v71 = @"SYS_BAND_GSM_850";
      break;
    case 0x2C:
      v71 = @"SYS_BAND_GSM_EGSM_900";
      break;
    case 0x2D:
      v71 = @"SYS_BAND_GSM_PGSM_900";
      break;
    case 0x2E:
      v71 = @"SYS_BAND_GSM_RGSM_900";
      break;
    case 0x2F:
      v71 = @"SYS_BAND_GSM_DCS_1800";
      break;
    case 0x30:
      v71 = @"SYS_BAND_GSM_PCS_1900";
      break;
    case 0x50:
      v71 = @"SYS_BAND_WCDMA_I_IMT_2000";
      break;
    case 0x51:
      v71 = @"SYS_BAND_WCDMA_II_PCS_1900";
      break;
    case 0x52:
      v71 = @"SYS_BAND_WCDMA_III_1700";
      break;
    case 0x53:
      v71 = @"SYS_BAND_WCDMA_IV_1700";
      break;
    case 0x54:
      v71 = @"SYS_BAND_WCDMA_V_850";
      break;
    case 0x55:
      v71 = @"SYS_BAND_WCDMA_VI_800";
      break;
    case 0x56:
      v71 = @"SYS_BAND_WCDMA_VII_2600";
      break;
    case 0x57:
      v71 = @"SYS_BAND_WCDMA_VIII_900";
      break;
    case 0x58:
      v71 = @"SYS_BAND_WCDMA_IX_1700";
      break;
    case 0x5A:
      v71 = @"SYS_BAND_WCDMA_XI_1500";
      break;
    case 0x5B:
      v71 = @"SYS_BAND_WCDMA_XIX_850";
      break;
    case 0x78:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND1";
      break;
    case 0x79:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND2";
      break;
    case 0x7A:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND3";
      break;
    case 0x7B:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND4";
      break;
    case 0x7C:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND5";
      break;
    case 0x7D:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND6";
      break;
    case 0x7E:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND7";
      break;
    case 0x7F:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND8";
      break;
    case 0x80:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND9";
      break;
    case 0x81:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND10";
      break;
    case 0x82:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND11";
      break;
    case 0x83:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND12";
      break;
    case 0x84:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND13";
      break;
    case 0x85:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND14";
      break;
    case 0x88:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND17";
      break;
    case 0x89:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND18";
      break;
    case 0x8A:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND19";
      break;
    case 0x8B:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND20";
      break;
    case 0x8C:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND21";
      break;
    case 0x8F:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND24";
      break;
    case 0x90:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND25";
      break;
    case 0x91:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND26";
      break;
    case 0x98:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND33";
      break;
    case 0x99:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND34";
      break;
    case 0x9A:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND35";
      break;
    case 0x9B:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND36";
      break;
    case 0x9C:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND37";
      break;
    case 0x9D:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND38";
      break;
    case 0x9E:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND39";
      break;
    case 0x9F:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND40";
      break;
    case 0xA0:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND41";
      break;
    case 0xA1:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND42";
      break;
    case 0xA2:
      v71 = @"SYS_BAND_LTE_EUTRAN_BAND43";
      break;
    case 0xA3:
      v71 = @"SYS_BAND_UMTS_BAND1";
      break;
    case 0xA4:
      v71 = @"SYS_BAND_UMTS_BAND2";
      break;
    case 0xA5:
      v71 = @"SYS_BAND_UMTS_BAND3";
      break;
    case 0xA6:
      v71 = @"SYS_BAND_UMTS_BAND4";
      break;
    case 0xA7:
      v71 = @"SYS_BAND_UMTS_BAND5";
      break;
    case 0xA8:
      v71 = @"SYS_BAND_UMTS_BAND6";
      break;
    default:
      v71 = [NSString stringWithFormat:@"(unknown: %i)", self->_band];
      break;
  }

  [v3 setObject:v71 forKey:@"band"];

  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_261;
  }

LABEL_260:
  v72 = [NSNumber numberWithUnsignedInt:self->_rfChannel];
  [v3 setObject:v72 forKey:@"rf_channel"];

  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x4000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_262;
  }

LABEL_261:
  v73 = [NSNumber numberWithUnsignedInt:self->_psc];
  [v3 setObject:v73 forKey:@"psc"];

  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x2000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_263;
  }

LABEL_262:
  v74 = [NSNumber numberWithUnsignedInt:self->_ttyMode];
  [v3 setObject:v74 forKey:@"tty_mode"];

  has = self->_has;
  if ((*&has & 0x2000000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x40000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_264;
  }

LABEL_263:
  v75 = [NSNumber numberWithUnsignedInt:self->_tsAccuracyHour];
  [v3 setObject:v75 forKey:@"ts_accuracy_hour"];

  has = self->_has;
  if ((*&has & 0x40000000000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_265;
  }

LABEL_264:
  v76 = [NSNumber numberWithBool:self->_accessoryAttached];
  [v3 setObject:v76 forKey:@"accessory_attached"];

  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_270;
  }

LABEL_265:
  setupSysMode = self->_setupSysMode;
  if (setupSysMode < 0x10 && ((0x9FFFu >> setupSysMode) & 1) != 0)
  {
    v78 = *(&off_100317620 + setupSysMode);
  }

  else
  {
    v78 = [NSString stringWithFormat:@"(unknown: %i)", self->_setupSysMode];
  }

  [v3 setObject:v78 forKey:@"setup_sys_mode"];

  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x2000000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_274;
  }

LABEL_270:
  setupDirection = self->_setupDirection;
  if (setupDirection >= 3)
  {
    v80 = [NSString stringWithFormat:@"(unknown: %i)", self->_setupDirection];
  }

  else
  {
    v80 = *(&off_1003176A0 + setupDirection);
  }

  [v3 setObject:v80 forKey:@"setup_direction"];

  has = self->_has;
  if ((*&has & 0x2000000000000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_275;
  }

LABEL_274:
  v81 = [NSNumber numberWithBool:self->_sl2];
  [v3 setObject:v81 forKey:@"sl2"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_37:
    if ((*&has & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_276;
  }

LABEL_275:
  v82 = [NSNumber numberWithUnsignedInt:self->_coexPolicy];
  [v3 setObject:v82 forKey:@"coex_policy"];

  has = self->_has;
  if ((*&has & 0x1000000000000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x200000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_277;
  }

LABEL_276:
  v83 = [NSNumber numberWithBool:self->_sl];
  [v3 setObject:v83 forKey:@"sl"];

  has = self->_has;
  if ((*&has & 0x200000000000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_278;
  }

LABEL_277:
  v84 = [NSNumber numberWithBool:self->_fb];
  [v3 setObject:v84 forKey:@"fb"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_279;
  }

LABEL_278:
  v85 = [NSNumber numberWithUnsignedInt:self->_msOrigToFb];
  [v3 setObject:v85 forKey:@"ms_orig_to_fb"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_280;
  }

LABEL_279:
  v86 = [NSNumber numberWithUnsignedInt:self->_msOrigToConf];
  [v3 setObject:v86 forKey:@"ms_orig_to_conf"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_281;
  }

LABEL_280:
  v87 = [NSNumber numberWithUnsignedInt:self->_msOrigToEnd];
  [v3 setObject:v87 forKey:@"ms_orig_to_end"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_282;
  }

LABEL_281:
  v88 = [NSNumber numberWithUnsignedInt:self->_msStartToAlert];
  [v3 setObject:v88 forKey:@"ms_start_to_alert"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_283;
  }

LABEL_282:
  v89 = [NSNumber numberWithUnsignedInt:self->_msFbToSetup];
  [v3 setObject:v89 forKey:@"ms_fb_to_setup"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_45:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_284;
  }

LABEL_283:
  v90 = [NSNumber numberWithUnsignedInt:self->_msPageToSetup];
  [v3 setObject:v90 forKey:@"ms_page_to_setup"];

  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_285;
  }

LABEL_284:
  v91 = [NSNumber numberWithUnsignedInt:self->_msSetupToEnd];
  [v3 setObject:v91 forKey:@"ms_setup_to_end"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_47:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_286;
  }

LABEL_285:
  v92 = [NSNumber numberWithInt:self->_ecioDbx2];
  [v3 setObject:v92 forKey:@"ecio_dbx2"];

  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_48:
    if ((*&has & 0x8000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_287;
  }

LABEL_286:
  v93 = [NSNumber numberWithInt:self->_rssiDbm];
  [v3 setObject:v93 forKey:@"rssi_dbm"];

  has = self->_has;
  if ((*&has & 0x8000000000000) == 0)
  {
LABEL_49:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_288;
  }

LABEL_287:
  v94 = [NSNumber numberWithInt:self->_txPwrDbm];
  [v3 setObject:v94 forKey:@"tx_pwr_dbm"];

  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_288:
  v95 = [NSNumber numberWithUnsignedInt:self->_sensorUseDuringLastCallMs];
  [v3 setObject:v95 forKey:@"sensor_use_during_last_call_ms"];

  if ((*&self->_has & 0x8000000000) != 0)
  {
LABEL_51:
    v5 = [NSNumber numberWithUnsignedInt:self->_sensorEndToPresentMs];
    [v3 setObject:v5 forKey:@"sensor_end_to_present_ms"];
  }

LABEL_52:
  if ([(NSMutableArray *)self->_capEvents count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_capEvents, "count")}];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v7 = self->_capEvents;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v100 objects:v105 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v101;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v101 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v100 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v100 objects:v105 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"cap_event"];
  }

  v13 = self->_has;
  if ((*&v13 & 0x800000000000) != 0)
  {
    v31 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v31 forKey:@"subs_id"];

    v13 = self->_has;
    if ((*&v13 & 0x100000000) == 0)
    {
LABEL_63:
      if ((*&v13 & 0x200000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_96;
    }
  }

  else if ((*&v13 & 0x100000000) == 0)
  {
    goto LABEL_63;
  }

  v32 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v32 forKey:@"num_subs"];

  v13 = self->_has;
  if ((*&v13 & 0x200000000) == 0)
  {
LABEL_64:
    if ((*&v13 & 0x8000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_97;
  }

LABEL_96:
  v33 = [NSNumber numberWithUnsignedInt:self->_psPref];
  [v3 setObject:v33 forKey:@"ps_pref"];

  v13 = self->_has;
  if ((*&v13 & 0x8000) == 0)
  {
LABEL_65:
    if ((*&v13 & 0x10000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_98;
  }

LABEL_97:
  v34 = [NSNumber numberWithUnsignedInt:self->_hoType];
  [v3 setObject:v34 forKey:@"ho_type"];

  v13 = self->_has;
  if ((*&v13 & 0x10000) == 0)
  {
LABEL_66:
    if ((*&v13 & 0x2000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_98:
  v35 = [NSNumber numberWithUnsignedInt:self->_hstState];
  [v3 setObject:v35 forKey:@"hst_state"];

  if ((*&self->_has & 0x2000000000) != 0)
  {
LABEL_67:
    v14 = [NSNumber numberWithUnsignedInt:self->_rrcRelCause];
    [v3 setObject:v14 forKey:@"rrc_rel_cause"];
  }

LABEL_68:
  if ([(NSMutableArray *)self->_rfMeasInfos count])
  {
    v15 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_rfMeasInfos, "count")}];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v16 = self->_rfMeasInfos;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v96 objects:v104 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v97;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v97 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation2 = [*(*(&v96 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation2];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v96 objects:v104 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKey:@"rf_meas_info"];
  }

  v22 = self->_has;
  if ((*&v22 & 0x20000) != 0)
  {
    v36 = [NSNumber numberWithUnsignedInt:self->_isSrvccSuccess];
    [v3 setObject:v36 forKey:@"is_srvcc_success"];

    v22 = self->_has;
    if ((*&v22 & 0x400000000000) == 0)
    {
LABEL_79:
      if ((*&v22 & 0x200000000000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_110;
    }
  }

  else if ((*&v22 & 0x400000000000) == 0)
  {
    goto LABEL_79;
  }

  srvccTargetRat = self->_srvccTargetRat;
  if (srvccTargetRat >= 5)
  {
    v38 = [NSString stringWithFormat:@"(unknown: %i)", self->_srvccTargetRat];
  }

  else
  {
    v38 = *(&off_1003176B8 + srvccTargetRat);
  }

  [v3 setObject:v38 forKey:@"srvcc_target_rat"];

  v22 = self->_has;
  if ((*&v22 & 0x200000000000) == 0)
  {
LABEL_80:
    if ((*&v22 & 0x80000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_111;
  }

LABEL_110:
  v39 = [NSNumber numberWithUnsignedInt:self->_srvccFailureCause];
  [v3 setObject:v39 forKey:@"srvcc_failure_cause"];

  v22 = self->_has;
  if ((*&v22 & 0x80000) == 0)
  {
LABEL_81:
    if ((*&v22 & 0x40000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_111:
  v40 = [NSNumber numberWithUnsignedInt:self->_lastMotionState];
  [v3 setObject:v40 forKey:@"last_motion_state"];

  if ((*&self->_has & 0x40000000) != 0)
  {
LABEL_82:
    v23 = [NSNumber numberWithUnsignedInt:self->_msSinceLastMotionState];
    [v3 setObject:v23 forKey:@"ms_since_last_motion_state"];
  }

LABEL_83:
  transId = self->_transId;
  if (transId)
  {
    [v3 setObject:transId forKey:@"trans_id"];
  }

  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    v25 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v25 forKey:@"version"];
  }

  v26 = v3;

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_86;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  callEvent = self->_callEvent;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_87;
  }

LABEL_86:
  callId = self->_callId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_88;
  }

LABEL_87:
  direction = self->_direction;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_89;
  }

LABEL_88:
  srvType = self->_srvType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_90;
  }

LABEL_89:
  sysMode = self->_sysMode;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_91;
  }

LABEL_90:
  callState = self->_callState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_92;
  }

LABEL_91:
  endStatus = self->_endStatus;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_93;
  }

LABEL_92:
  qmiReleaseCause = self->_qmiReleaseCause;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_94;
  }

LABEL_93:
  callDuration = self->_callDuration;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_95;
  }

LABEL_94:
  ccCause = self->_ccCause;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_96;
  }

LABEL_95:
  antenna = self->_antenna;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x100000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_97;
  }

LABEL_96:
  callType = self->_callType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100000000000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_98;
  }

LABEL_97:
  established = self->_established;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80000000000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_99;
  }

LABEL_98:
  connected = self->_connected;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_100;
  }

LABEL_99:
  lteCellId = self->_lteCellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_101;
  }

LABEL_100:
  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000000000000) == 0)
  {
LABEL_19:
    if ((*&has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_102;
  }

LABEL_101:
  zoneId = self->_zoneId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_103;
  }

LABEL_102:
  baseId = self->_baseId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_104;
  }

LABEL_103:
  lteLac = self->_lteLac;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_105;
  }

LABEL_104:
  sid = self->_sid;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_106;
  }

LABEL_105:
  mcc = self->_mcc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_24:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_107;
  }

LABEL_106:
  mnc = self->_mnc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_25:
    if ((*&has & 0x800000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_108;
  }

LABEL_107:
  lac = self->_lac;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000000000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_109;
  }

LABEL_108:
  mrabEver = self->_mrabEver;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x400000000000000) == 0)
  {
LABEL_27:
    if ((*&has & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_110;
  }

LABEL_109:
  mrabEnd = self->_mrabEnd;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_28:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_111;
  }

LABEL_110:
  band = self->_band;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_112;
  }

LABEL_111:
  rfChannel = self->_rfChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x4000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_113;
  }

LABEL_112:
  psc = self->_psc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x2000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_114;
  }

LABEL_113:
  ttyMode = self->_ttyMode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x40000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_115;
  }

LABEL_114:
  tsAccuracyHour = self->_tsAccuracyHour;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000000000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_116;
  }

LABEL_115:
  accessoryAttached = self->_accessoryAttached;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_117;
  }

LABEL_116:
  setupSysMode = self->_setupSysMode;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x2000000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_118;
  }

LABEL_117:
  setupDirection = self->_setupDirection;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000000000000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_119;
  }

LABEL_118:
  sl2 = self->_sl2;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_37:
    if ((*&has & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_120;
  }

LABEL_119:
  coexPolicy = self->_coexPolicy;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000000000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x200000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_121;
  }

LABEL_120:
  sl = self->_sl;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x200000000000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_122;
  }

LABEL_121:
  fb = self->_fb;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_123;
  }

LABEL_122:
  msOrigToFb = self->_msOrigToFb;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_124;
  }

LABEL_123:
  msOrigToConf = self->_msOrigToConf;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_125;
  }

LABEL_124:
  msOrigToEnd = self->_msOrigToEnd;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_126;
  }

LABEL_125:
  msStartToAlert = self->_msStartToAlert;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_127;
  }

LABEL_126:
  msFbToSetup = self->_msFbToSetup;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_45:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_128;
  }

LABEL_127:
  msPageToSetup = self->_msPageToSetup;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_129;
  }

LABEL_128:
  msSetupToEnd = self->_msSetupToEnd;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_47:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_130;
  }

LABEL_129:
  ecioDbx2 = self->_ecioDbx2;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_48:
    if ((*&has & 0x8000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_131;
  }

LABEL_130:
  rssiDbm = self->_rssiDbm;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x8000000000000) == 0)
  {
LABEL_49:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_132;
  }

LABEL_131:
  txPwrDbm = self->_txPwrDbm;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_132:
  sensorUseDuringLastCallMs = self->_sensorUseDuringLastCallMs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x8000000000) != 0)
  {
LABEL_51:
    sensorEndToPresentMs = self->_sensorEndToPresentMs;
    PBDataWriterWriteUint32Field();
  }

LABEL_52:
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v7 = self->_capEvents;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v86 objects:v91 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v87;
    do
    {
      v11 = 0;
      do
      {
        if (*v87 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v86 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v86 objects:v91 count:16];
    }

    while (v9);
  }

  v13 = self->_has;
  if ((*&v13 & 0x800000000000) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v13 = self->_has;
    if ((*&v13 & 0x100000000) == 0)
    {
LABEL_61:
      if ((*&v13 & 0x200000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_136;
    }
  }

  else if ((*&v13 & 0x100000000) == 0)
  {
    goto LABEL_61;
  }

  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x200000000) == 0)
  {
LABEL_62:
    if ((*&v13 & 0x8000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_137;
  }

LABEL_136:
  psPref = self->_psPref;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x8000) == 0)
  {
LABEL_63:
    if ((*&v13 & 0x10000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_138;
  }

LABEL_137:
  hoType = self->_hoType;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x10000) == 0)
  {
LABEL_64:
    if ((*&v13 & 0x2000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_138:
  hstState = self->_hstState;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x2000000000) != 0)
  {
LABEL_65:
    rrcRelCause = self->_rrcRelCause;
    PBDataWriterWriteUint32Field();
  }

LABEL_66:
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v15 = self->_rfMeasInfos;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v83;
    do
    {
      v19 = 0;
      do
      {
        if (*v83 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v82 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v82 objects:v90 count:16];
    }

    while (v17);
  }

  v21 = self->_has;
  if ((*&v21 & 0x20000) != 0)
  {
    isSrvccSuccess = self->_isSrvccSuccess;
    PBDataWriterWriteUint32Field();
    v21 = self->_has;
    if ((*&v21 & 0x400000000000) == 0)
    {
LABEL_75:
      if ((*&v21 & 0x200000000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_142;
    }
  }

  else if ((*&v21 & 0x400000000000) == 0)
  {
    goto LABEL_75;
  }

  srvccTargetRat = self->_srvccTargetRat;
  PBDataWriterWriteInt32Field();
  v21 = self->_has;
  if ((*&v21 & 0x200000000000) == 0)
  {
LABEL_76:
    if ((*&v21 & 0x80000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_143;
  }

LABEL_142:
  srvccFailureCause = self->_srvccFailureCause;
  PBDataWriterWriteUint32Field();
  v21 = self->_has;
  if ((*&v21 & 0x80000) == 0)
  {
LABEL_77:
    if ((*&v21 & 0x40000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_143:
  lastMotionState = self->_lastMotionState;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40000000) != 0)
  {
LABEL_78:
    msSinceLastMotionState = self->_msSinceLastMotionState;
    PBDataWriterWriteUint32Field();
  }

LABEL_79:
  if (self->_transId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 260) |= 1uLL;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_82;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 8) = self->_callEvent;
  *(toCopy + 260) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(toCopy + 9) = self->_callId;
  *(toCopy + 260) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(toCopy + 17) = self->_direction;
  *(toCopy + 260) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(toCopy + 51) = self->_srvType;
  *(toCopy + 260) |= 0x100000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(toCopy + 55) = self->_sysMode;
  *(toCopy + 260) |= 0x1000000000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(toCopy + 10) = self->_callState;
  *(toCopy + 260) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(toCopy + 19) = self->_endStatus;
  *(toCopy + 260) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(toCopy + 40) = self->_qmiReleaseCause;
  *(toCopy + 260) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(toCopy + 7) = self->_callDuration;
  *(toCopy + 260) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(toCopy + 14) = self->_ccCause;
  *(toCopy + 260) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(toCopy + 4) = self->_antenna;
  *(toCopy + 260) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x100000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(toCopy + 11) = self->_callType;
  *(toCopy + 260) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x100000000000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(toCopy + 254) = self->_established;
  *(toCopy + 260) |= 0x100000000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(toCopy + 253) = self->_connected;
  *(toCopy + 260) |= 0x80000000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(toCopy + 25) = self->_lteCellId;
  *(toCopy + 260) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(toCopy + 15) = self->_cellId;
  *(toCopy + 260) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x20000000000000) == 0)
  {
LABEL_19:
    if ((*&has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(toCopy + 62) = self->_zoneId;
  *(toCopy + 260) |= 0x20000000000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(toCopy + 6) = self->_baseId;
  *(toCopy + 260) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(toCopy + 26) = self->_lteLac;
  *(toCopy + 260) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(toCopy + 50) = self->_sid;
  *(toCopy + 260) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(toCopy + 27) = self->_mcc;
  *(toCopy + 260) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_24:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(toCopy + 28) = self->_mnc;
  *(toCopy + 260) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_25:
    if ((*&has & 0x800000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(toCopy + 23) = self->_lac;
  *(toCopy + 260) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x800000000000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(toCopy + 257) = self->_mrabEver;
  *(toCopy + 260) |= 0x800000000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000000000) == 0)
  {
LABEL_27:
    if ((*&has & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(toCopy + 256) = self->_mrabEnd;
  *(toCopy + 260) |= 0x400000000000000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_28:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(toCopy + 5) = self->_band;
  *(toCopy + 260) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(toCopy + 41) = self->_rfChannel;
  *(toCopy + 260) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x4000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(toCopy + 39) = self->_psc;
  *(toCopy + 260) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x2000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(toCopy + 59) = self->_ttyMode;
  *(toCopy + 260) |= 0x4000000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x40000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(toCopy + 58) = self->_tsAccuracyHour;
  *(toCopy + 260) |= 0x2000000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(toCopy + 252) = self->_accessoryAttached;
  *(toCopy + 260) |= 0x40000000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(toCopy + 49) = self->_setupSysMode;
  *(toCopy + 260) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x2000000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(toCopy + 48) = self->_setupDirection;
  *(toCopy + 260) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(toCopy + 259) = self->_sl2;
  *(toCopy + 260) |= 0x2000000000000000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_37:
    if ((*&has & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(toCopy + 16) = self->_coexPolicy;
  *(toCopy + 260) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x1000000000000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x200000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_117;
  }

LABEL_116:
  *(toCopy + 258) = self->_sl;
  *(toCopy + 260) |= 0x1000000000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(toCopy + 255) = self->_fb;
  *(toCopy + 260) |= 0x200000000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_119;
  }

LABEL_118:
  *(toCopy + 32) = self->_msOrigToFb;
  *(toCopy + 260) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_120;
  }

LABEL_119:
  *(toCopy + 30) = self->_msOrigToConf;
  *(toCopy + 260) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_121;
  }

LABEL_120:
  *(toCopy + 31) = self->_msOrigToEnd;
  *(toCopy + 260) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(toCopy + 36) = self->_msStartToAlert;
  *(toCopy + 260) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(toCopy + 29) = self->_msFbToSetup;
  *(toCopy + 260) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_45:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(toCopy + 33) = self->_msPageToSetup;
  *(toCopy + 260) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_125;
  }

LABEL_124:
  *(toCopy + 34) = self->_msSetupToEnd;
  *(toCopy + 260) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_47:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_126;
  }

LABEL_125:
  *(toCopy + 18) = self->_ecioDbx2;
  *(toCopy + 260) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_48:
    if ((*&has & 0x8000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_127;
  }

LABEL_126:
  *(toCopy + 45) = self->_rssiDbm;
  *(toCopy + 260) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000000) == 0)
  {
LABEL_49:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_128:
    *(toCopy + 47) = self->_sensorUseDuringLastCallMs;
    *(toCopy + 260) |= 0x10000000000uLL;
    if ((*&self->_has & 0x8000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_127:
  *(toCopy + 60) = self->_txPwrDbm;
  *(toCopy + 260) |= 0x8000000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) != 0)
  {
    goto LABEL_128;
  }

LABEL_50:
  if ((*&has & 0x8000000000) != 0)
  {
LABEL_51:
    *(toCopy + 46) = self->_sensorEndToPresentMs;
    *(toCopy + 260) |= 0x8000000000uLL;
  }

LABEL_52:
  v17 = toCopy;
  if ([(CellularCallEndDetails *)self capEventsCount])
  {
    [v17 clearCapEvents];
    capEventsCount = [(CellularCallEndDetails *)self capEventsCount];
    if (capEventsCount)
    {
      v7 = capEventsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularCallEndDetails *)self capEventAtIndex:i];
        [v17 addCapEvent:v9];
      }
    }
  }

  v10 = self->_has;
  if ((*&v10 & 0x800000000000) != 0)
  {
    *(v17 + 54) = self->_subsId;
    *(v17 + 260) |= 0x800000000000uLL;
    v10 = self->_has;
    if ((*&v10 & 0x100000000) == 0)
    {
LABEL_58:
      if ((*&v10 & 0x200000000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_132;
    }
  }

  else if ((*&v10 & 0x100000000) == 0)
  {
    goto LABEL_58;
  }

  *(v17 + 37) = self->_numSubs;
  *(v17 + 260) |= &_mh_execute_header;
  v10 = self->_has;
  if ((*&v10 & 0x200000000) == 0)
  {
LABEL_59:
    if ((*&v10 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_133;
  }

LABEL_132:
  *(v17 + 38) = self->_psPref;
  *(v17 + 260) |= 0x200000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x8000) == 0)
  {
LABEL_60:
    if ((*&v10 & 0x10000) == 0)
    {
      goto LABEL_61;
    }

LABEL_134:
    *(v17 + 21) = self->_hstState;
    *(v17 + 260) |= 0x10000uLL;
    if ((*&self->_has & 0x2000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_133:
  *(v17 + 20) = self->_hoType;
  *(v17 + 260) |= 0x8000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x10000) != 0)
  {
    goto LABEL_134;
  }

LABEL_61:
  if ((*&v10 & 0x2000000000) != 0)
  {
LABEL_62:
    *(v17 + 44) = self->_rrcRelCause;
    *(v17 + 260) |= 0x2000000000uLL;
  }

LABEL_63:
  if ([(CellularCallEndDetails *)self rfMeasInfosCount])
  {
    [v17 clearRfMeasInfos];
    rfMeasInfosCount = [(CellularCallEndDetails *)self rfMeasInfosCount];
    if (rfMeasInfosCount)
    {
      v12 = rfMeasInfosCount;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(CellularCallEndDetails *)self rfMeasInfoAtIndex:j];
        [v17 addRfMeasInfo:v14];
      }
    }
  }

  v15 = self->_has;
  v16 = v17;
  if ((*&v15 & 0x20000) != 0)
  {
    *(v17 + 22) = self->_isSrvccSuccess;
    *(v17 + 260) |= 0x20000uLL;
    v15 = self->_has;
    if ((*&v15 & 0x400000000000) == 0)
    {
LABEL_69:
      if ((*&v15 & 0x200000000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_138;
    }
  }

  else if ((*&v15 & 0x400000000000) == 0)
  {
    goto LABEL_69;
  }

  *(v17 + 53) = self->_srvccTargetRat;
  *(v17 + 260) |= 0x400000000000uLL;
  v15 = self->_has;
  if ((*&v15 & 0x200000000000) == 0)
  {
LABEL_70:
    if ((*&v15 & 0x80000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_139;
  }

LABEL_138:
  *(v17 + 52) = self->_srvccFailureCause;
  *(v17 + 260) |= 0x200000000000uLL;
  v15 = self->_has;
  if ((*&v15 & 0x80000) == 0)
  {
LABEL_71:
    if ((*&v15 & 0x40000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_139:
  *(v17 + 24) = self->_lastMotionState;
  *(v17 + 260) |= 0x80000uLL;
  if ((*&self->_has & 0x40000000) != 0)
  {
LABEL_72:
    *(v17 + 35) = self->_msSinceLastMotionState;
    *(v17 + 260) |= 0x40000000uLL;
  }

LABEL_73:
  if (self->_transId)
  {
    [v17 setTransId:?];
    v16 = v17;
  }

  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    *(v16 + 61) = self->_version;
    *(v16 + 260) |= 0x10000000000000uLL;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 260) |= 1uLL;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_84;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_callEvent;
  *(v5 + 260) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v5 + 9) = self->_callId;
  *(v5 + 260) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v5 + 17) = self->_direction;
  *(v5 + 260) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v5 + 51) = self->_srvType;
  *(v5 + 260) |= 0x100000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v5 + 55) = self->_sysMode;
  *(v5 + 260) |= 0x1000000000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v5 + 10) = self->_callState;
  *(v5 + 260) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v5 + 19) = self->_endStatus;
  *(v5 + 260) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v5 + 40) = self->_qmiReleaseCause;
  *(v5 + 260) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v5 + 7) = self->_callDuration;
  *(v5 + 260) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v5 + 14) = self->_ccCause;
  *(v5 + 260) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v5 + 4) = self->_antenna;
  *(v5 + 260) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x100000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v5 + 11) = self->_callType;
  *(v5 + 260) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x100000000000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v5 + 254) = self->_established;
  *(v5 + 260) |= 0x100000000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v5 + 253) = self->_connected;
  *(v5 + 260) |= 0x80000000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v5 + 25) = self->_lteCellId;
  *(v5 + 260) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v5 + 15) = self->_cellId;
  *(v5 + 260) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x20000000000000) == 0)
  {
LABEL_19:
    if ((*&has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v5 + 62) = self->_zoneId;
  *(v5 + 260) |= 0x20000000000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v5 + 6) = self->_baseId;
  *(v5 + 260) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v5 + 26) = self->_lteLac;
  *(v5 + 260) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v5 + 50) = self->_sid;
  *(v5 + 260) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(v5 + 27) = self->_mcc;
  *(v5 + 260) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_24:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v5 + 28) = self->_mnc;
  *(v5 + 260) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_25:
    if ((*&has & 0x800000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v5 + 23) = self->_lac;
  *(v5 + 260) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x800000000000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v5 + 257) = self->_mrabEver;
  *(v5 + 260) |= 0x800000000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000000000) == 0)
  {
LABEL_27:
    if ((*&has & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v5 + 256) = self->_mrabEnd;
  *(v5 + 260) |= 0x400000000000000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_28:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(v5 + 5) = self->_band;
  *(v5 + 260) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(v5 + 41) = self->_rfChannel;
  *(v5 + 260) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x4000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(v5 + 39) = self->_psc;
  *(v5 + 260) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x2000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(v5 + 59) = self->_ttyMode;
  *(v5 + 260) |= 0x4000000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x40000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(v5 + 58) = self->_tsAccuracyHour;
  *(v5 + 260) |= 0x2000000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(v5 + 252) = self->_accessoryAttached;
  *(v5 + 260) |= 0x40000000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(v5 + 49) = self->_setupSysMode;
  *(v5 + 260) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x2000000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(v5 + 48) = self->_setupDirection;
  *(v5 + 260) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_117;
  }

LABEL_116:
  *(v5 + 259) = self->_sl2;
  *(v5 + 260) |= 0x2000000000000000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_37:
    if ((*&has & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(v5 + 16) = self->_coexPolicy;
  *(v5 + 260) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x1000000000000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x200000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_119;
  }

LABEL_118:
  *(v5 + 258) = self->_sl;
  *(v5 + 260) |= 0x1000000000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_120;
  }

LABEL_119:
  *(v5 + 255) = self->_fb;
  *(v5 + 260) |= 0x200000000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_121;
  }

LABEL_120:
  *(v5 + 32) = self->_msOrigToFb;
  *(v5 + 260) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(v5 + 30) = self->_msOrigToConf;
  *(v5 + 260) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(v5 + 31) = self->_msOrigToEnd;
  *(v5 + 260) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(v5 + 36) = self->_msStartToAlert;
  *(v5 + 260) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_125;
  }

LABEL_124:
  *(v5 + 29) = self->_msFbToSetup;
  *(v5 + 260) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_45:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_126;
  }

LABEL_125:
  *(v5 + 33) = self->_msPageToSetup;
  *(v5 + 260) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_127;
  }

LABEL_126:
  *(v5 + 34) = self->_msSetupToEnd;
  *(v5 + 260) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_47:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_128;
  }

LABEL_127:
  *(v5 + 18) = self->_ecioDbx2;
  *(v5 + 260) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_48:
    if ((*&has & 0x8000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_129;
  }

LABEL_128:
  *(v5 + 45) = self->_rssiDbm;
  *(v5 + 260) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000000) == 0)
  {
LABEL_49:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_130;
  }

LABEL_129:
  *(v5 + 60) = self->_txPwrDbm;
  *(v5 + 260) |= 0x8000000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_130:
  *(v5 + 47) = self->_sensorUseDuringLastCallMs;
  *(v5 + 260) |= 0x10000000000uLL;
  if ((*&self->_has & 0x8000000000) != 0)
  {
LABEL_51:
    *(v5 + 46) = self->_sensorEndToPresentMs;
    *(v5 + 260) |= 0x8000000000uLL;
  }

LABEL_52:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = self->_capEvents;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v30 + 1) + 8 * v12) copyWithZone:zone];
        [v6 addCapEvent:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((*&v14 & 0x800000000000) != 0)
  {
    *(v6 + 54) = self->_subsId;
    *(v6 + 260) |= 0x800000000000uLL;
    v14 = self->_has;
    if ((*&v14 & 0x100000000) == 0)
    {
LABEL_61:
      if ((*&v14 & 0x200000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_134;
    }
  }

  else if ((*&v14 & 0x100000000) == 0)
  {
    goto LABEL_61;
  }

  *(v6 + 37) = self->_numSubs;
  *(v6 + 260) |= &_mh_execute_header;
  v14 = self->_has;
  if ((*&v14 & 0x200000000) == 0)
  {
LABEL_62:
    if ((*&v14 & 0x8000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_135;
  }

LABEL_134:
  *(v6 + 38) = self->_psPref;
  *(v6 + 260) |= 0x200000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x8000) == 0)
  {
LABEL_63:
    if ((*&v14 & 0x10000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_136;
  }

LABEL_135:
  *(v6 + 20) = self->_hoType;
  *(v6 + 260) |= 0x8000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x10000) == 0)
  {
LABEL_64:
    if ((*&v14 & 0x2000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_136:
  *(v6 + 21) = self->_hstState;
  *(v6 + 260) |= 0x10000uLL;
  if ((*&self->_has & 0x2000000000) != 0)
  {
LABEL_65:
    *(v6 + 44) = self->_rrcRelCause;
    *(v6 + 260) |= 0x2000000000uLL;
  }

LABEL_66:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = self->_rfMeasInfos;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      v19 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v26 + 1) + 8 * v19) copyWithZone:{zone, v26}];
        [v6 addRfMeasInfo:v20];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }

  v21 = self->_has;
  if ((*&v21 & 0x20000) != 0)
  {
    *(v6 + 22) = self->_isSrvccSuccess;
    *(v6 + 260) |= 0x20000uLL;
    v21 = self->_has;
    if ((*&v21 & 0x400000000000) == 0)
    {
LABEL_75:
      if ((*&v21 & 0x200000000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_140;
    }
  }

  else if ((*&v21 & 0x400000000000) == 0)
  {
    goto LABEL_75;
  }

  *(v6 + 53) = self->_srvccTargetRat;
  *(v6 + 260) |= 0x400000000000uLL;
  v21 = self->_has;
  if ((*&v21 & 0x200000000000) == 0)
  {
LABEL_76:
    if ((*&v21 & 0x80000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_141;
  }

LABEL_140:
  *(v6 + 52) = self->_srvccFailureCause;
  *(v6 + 260) |= 0x200000000000uLL;
  v21 = self->_has;
  if ((*&v21 & 0x80000) == 0)
  {
LABEL_77:
    if ((*&v21 & 0x40000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_141:
  *(v6 + 24) = self->_lastMotionState;
  *(v6 + 260) |= 0x80000uLL;
  if ((*&self->_has & 0x40000000) != 0)
  {
LABEL_78:
    *(v6 + 35) = self->_msSinceLastMotionState;
    *(v6 + 260) |= 0x40000000uLL;
  }

LABEL_79:
  v22 = [(NSString *)self->_transId copyWithZone:zone, v26];
  v23 = *(v6 + 28);
  *(v6 + 28) = v22;

  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    *(v6 + 61) = self->_version;
    *(v6 + 260) |= 0x10000000000000uLL;
  }

  v24 = v6;

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_344;
  }

  has = self->_has;
  v6 = *(equalCopy + 260);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_344;
    }
  }

  else if (v6)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_callEvent != *(equalCopy + 8))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_callId != *(equalCopy + 9))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_direction != *(equalCopy + 17))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x100000000000) != 0)
  {
    if ((v6 & 0x100000000000) == 0 || self->_srvType != *(equalCopy + 51))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x100000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x1000000000000) != 0)
  {
    if ((v6 & 0x1000000000000) == 0 || self->_sysMode != *(equalCopy + 55))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x1000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_callState != *(equalCopy + 10))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_endStatus != *(equalCopy + 19))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v6 & 0x800000000) == 0 || self->_qmiReleaseCause != *(equalCopy + 40))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x800000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_callDuration != *(equalCopy + 7))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_ccCause != *(equalCopy + 14))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_antenna != *(equalCopy + 4))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_callType != *(equalCopy + 11))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x100000000000000) != 0)
  {
    if ((v6 & 0x100000000000000) == 0)
    {
      goto LABEL_344;
    }

    v7 = equalCopy[254];
    if (self->_established)
    {
      if ((equalCopy[254] & 1) == 0)
      {
        goto LABEL_344;
      }
    }

    else if (equalCopy[254])
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x100000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x80000000000000) != 0)
  {
    if ((v6 & 0x80000000000000) == 0)
    {
      goto LABEL_344;
    }

    v8 = equalCopy[253];
    if (self->_connected)
    {
      if ((equalCopy[253] & 1) == 0)
      {
        goto LABEL_344;
      }
    }

    else if (equalCopy[253])
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x80000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_lteCellId != *(equalCopy + 25))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_cellId != *(equalCopy + 15))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x20000000000000) != 0)
  {
    if ((v6 & 0x20000000000000) == 0 || self->_zoneId != *(equalCopy + 62))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x20000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_baseId != *(equalCopy + 6))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_lteLac != *(equalCopy + 26))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x80000000000) != 0)
  {
    if ((v6 & 0x80000000000) == 0 || self->_sid != *(equalCopy + 50))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x80000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_mcc != *(equalCopy + 27))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_mnc != *(equalCopy + 28))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_lac != *(equalCopy + 23))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x800000000000000) != 0)
  {
    if ((v6 & 0x800000000000000) == 0)
    {
      goto LABEL_344;
    }

    v9 = equalCopy[257];
    if (self->_mrabEver)
    {
      if ((equalCopy[257] & 1) == 0)
      {
        goto LABEL_344;
      }
    }

    else if (equalCopy[257])
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x800000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x400000000000000) != 0)
  {
    if ((v6 & 0x400000000000000) == 0)
    {
      goto LABEL_344;
    }

    v10 = equalCopy[256];
    if (self->_mrabEnd)
    {
      if ((equalCopy[256] & 1) == 0)
      {
        goto LABEL_344;
      }
    }

    else if (equalCopy[256])
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x400000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_band != *(equalCopy + 5))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    if ((v6 & 0x1000000000) == 0 || self->_rfChannel != *(equalCopy + 41))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x1000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v6 & 0x400000000) == 0 || self->_psc != *(equalCopy + 39))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x400000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x4000000000000) != 0)
  {
    if ((v6 & 0x4000000000000) == 0 || self->_ttyMode != *(equalCopy + 59))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x4000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x2000000000000) != 0)
  {
    if ((v6 & 0x2000000000000) == 0 || self->_tsAccuracyHour != *(equalCopy + 58))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x2000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x40000000000000) != 0)
  {
    if ((v6 & 0x40000000000000) == 0)
    {
      goto LABEL_344;
    }

    v11 = equalCopy[252];
    if (self->_accessoryAttached)
    {
      if ((equalCopy[252] & 1) == 0)
      {
        goto LABEL_344;
      }
    }

    else if (equalCopy[252])
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x40000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x40000000000) != 0)
  {
    if ((v6 & 0x40000000000) == 0 || self->_setupSysMode != *(equalCopy + 49))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x40000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x20000000000) != 0)
  {
    if ((v6 & 0x20000000000) == 0 || self->_setupDirection != *(equalCopy + 48))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x20000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x2000000000000000) != 0)
  {
    if ((v6 & 0x2000000000000000) == 0)
    {
      goto LABEL_344;
    }

    v12 = equalCopy[259];
    if (self->_sl2)
    {
      if ((equalCopy[259] & 1) == 0)
      {
        goto LABEL_344;
      }
    }

    else if (equalCopy[259])
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x2000000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_coexPolicy != *(equalCopy + 16))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x1000000000000000) != 0)
  {
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_344;
    }

    v13 = equalCopy[258];
    if (self->_sl)
    {
      if ((equalCopy[258] & 1) == 0)
      {
        goto LABEL_344;
      }
    }

    else if (equalCopy[258])
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x200000000000000) != 0)
  {
    if ((v6 & 0x200000000000000) == 0)
    {
      goto LABEL_344;
    }

    v14 = equalCopy[255];
    if (self->_fb)
    {
      if ((equalCopy[255] & 1) == 0)
      {
        goto LABEL_344;
      }
    }

    else if (equalCopy[255])
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x200000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0 || self->_msOrigToFb != *(equalCopy + 32))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_msOrigToConf != *(equalCopy + 30))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_msOrigToEnd != *(equalCopy + 31))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v6 & 0x80000000) == 0 || self->_msStartToAlert != *(equalCopy + 36))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_msFbToSetup != *(equalCopy + 29))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0 || self->_msPageToSetup != *(equalCopy + 33))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v6 & 0x20000000) == 0 || self->_msSetupToEnd != *(equalCopy + 34))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_ecioDbx2 != *(equalCopy + 18))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    if ((v6 & 0x4000000000) == 0 || self->_rssiDbm != *(equalCopy + 45))
    {
      goto LABEL_344;
    }
  }

  else if ((v6 & 0x4000000000) != 0)
  {
    goto LABEL_344;
  }

  v15 = *(equalCopy + 260);
  if ((*&has & 0x8000000000000) != 0)
  {
    if ((v15 & 0x8000000000000) == 0 || self->_txPwrDbm != *(equalCopy + 60))
    {
      goto LABEL_344;
    }
  }

  else if ((v15 & 0x8000000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x10000000000) != 0)
  {
    if ((v15 & 0x10000000000) == 0 || self->_sensorUseDuringLastCallMs != *(equalCopy + 47))
    {
      goto LABEL_344;
    }
  }

  else if ((v15 & 0x10000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&has & 0x8000000000) != 0)
  {
    if ((v15 & 0x8000000000) == 0 || self->_sensorEndToPresentMs != *(equalCopy + 46))
    {
      goto LABEL_344;
    }
  }

  else if ((v15 & 0x8000000000) != 0)
  {
    goto LABEL_344;
  }

  capEvents = self->_capEvents;
  if (capEvents | *(equalCopy + 6) && ![(NSMutableArray *)capEvents isEqual:?])
  {
    goto LABEL_344;
  }

  v17 = self->_has;
  v18 = *(equalCopy + 260);
  if ((*&v17 & 0x800000000000) != 0)
  {
    if ((v18 & 0x800000000000) == 0 || self->_subsId != *(equalCopy + 54))
    {
      goto LABEL_344;
    }
  }

  else if ((v18 & 0x800000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&v17 & 0x100000000) != 0)
  {
    if ((v18 & 0x100000000) == 0 || self->_numSubs != *(equalCopy + 37))
    {
      goto LABEL_344;
    }
  }

  else if ((v18 & 0x100000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&v17 & 0x200000000) != 0)
  {
    if ((v18 & 0x200000000) == 0 || self->_psPref != *(equalCopy + 38))
    {
      goto LABEL_344;
    }
  }

  else if ((v18 & 0x200000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&v17 & 0x8000) != 0)
  {
    if ((v18 & 0x8000) == 0 || self->_hoType != *(equalCopy + 20))
    {
      goto LABEL_344;
    }
  }

  else if ((v18 & 0x8000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&v17 & 0x10000) != 0)
  {
    if ((v18 & 0x10000) == 0 || self->_hstState != *(equalCopy + 21))
    {
      goto LABEL_344;
    }
  }

  else if ((v18 & 0x10000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&v17 & 0x2000000000) != 0)
  {
    if ((v18 & 0x2000000000) == 0 || self->_rrcRelCause != *(equalCopy + 44))
    {
      goto LABEL_344;
    }
  }

  else if ((v18 & 0x2000000000) != 0)
  {
    goto LABEL_344;
  }

  rfMeasInfos = self->_rfMeasInfos;
  if (rfMeasInfos | *(equalCopy + 21))
  {
    if (![(NSMutableArray *)rfMeasInfos isEqual:?])
    {
      goto LABEL_344;
    }

    v17 = self->_has;
  }

  v20 = *(equalCopy + 260);
  if ((*&v17 & 0x20000) != 0)
  {
    if ((v20 & 0x20000) == 0 || self->_isSrvccSuccess != *(equalCopy + 22))
    {
      goto LABEL_344;
    }
  }

  else if ((v20 & 0x20000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&v17 & 0x400000000000) != 0)
  {
    if ((v20 & 0x400000000000) == 0 || self->_srvccTargetRat != *(equalCopy + 53))
    {
      goto LABEL_344;
    }
  }

  else if ((v20 & 0x400000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&v17 & 0x200000000000) != 0)
  {
    if ((v20 & 0x200000000000) == 0 || self->_srvccFailureCause != *(equalCopy + 52))
    {
      goto LABEL_344;
    }
  }

  else if ((v20 & 0x200000000000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&v17 & 0x80000) != 0)
  {
    if ((v20 & 0x80000) == 0 || self->_lastMotionState != *(equalCopy + 24))
    {
      goto LABEL_344;
    }
  }

  else if ((v20 & 0x80000) != 0)
  {
    goto LABEL_344;
  }

  if ((*&v17 & 0x40000000) != 0)
  {
    if ((v20 & 0x40000000) == 0 || self->_msSinceLastMotionState != *(equalCopy + 35))
    {
      goto LABEL_344;
    }
  }

  else if ((v20 & 0x40000000) != 0)
  {
    goto LABEL_344;
  }

  transId = self->_transId;
  if (transId | *(equalCopy + 28))
  {
    if ([(NSString *)transId isEqual:?])
    {
      v17 = self->_has;
      goto LABEL_339;
    }

LABEL_344:
    v23 = 0;
    goto LABEL_345;
  }

LABEL_339:
  v22 = *(equalCopy + 260);
  if ((*&v17 & 0x10000000000000) != 0)
  {
    if ((v22 & 0x10000000000000) == 0 || self->_version != *(equalCopy + 61))
    {
      goto LABEL_344;
    }

    v23 = 1;
  }

  else
  {
    v23 = (v22 & 0x10000000000000) == 0;
  }

LABEL_345:

  return v23;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v71 = 2654435761u * self->_timestamp;
    if ((*&has & 0x20) != 0)
    {
LABEL_3:
      v70 = 2654435761 * self->_callEvent;
      if ((*&has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v71 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v70 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_4:
    v69 = 2654435761 * self->_callId;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  v69 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_5:
    v68 = 2654435761 * self->_direction;
    if ((*&has & 0x100000000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  v68 = 0;
  if ((*&has & 0x100000000000) != 0)
  {
LABEL_6:
    v67 = 2654435761 * self->_srvType;
    if ((*&has & 0x1000000000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  v67 = 0;
  if ((*&has & 0x1000000000000) != 0)
  {
LABEL_7:
    v66 = 2654435761 * self->_sysMode;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_57:
  v66 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_8:
    v65 = 2654435761 * self->_callState;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_58:
  v65 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_9:
    v64 = 2654435761 * self->_endStatus;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_59:
  v64 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_10:
    v63 = 2654435761 * self->_qmiReleaseCause;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_60:
  v63 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_11:
    v62 = 2654435761 * self->_callDuration;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_61:
  v62 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_12:
    v61 = 2654435761 * self->_ccCause;
    if ((*&has & 2) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_63;
  }

LABEL_62:
  v61 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_13:
    v60 = 2654435761 * self->_antenna;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_63:
  v60 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_14:
    v59 = 2654435761 * self->_callType;
    if ((*&has & 0x100000000000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_65;
  }

LABEL_64:
  v59 = 0;
  if ((*&has & 0x100000000000000) != 0)
  {
LABEL_15:
    v58 = 2654435761 * self->_established;
    if ((*&has & 0x80000000000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_66;
  }

LABEL_65:
  v58 = 0;
  if ((*&has & 0x80000000000000) != 0)
  {
LABEL_16:
    v57 = 2654435761 * self->_connected;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_67;
  }

LABEL_66:
  v57 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_17:
    v56 = 2654435761 * self->_lteCellId;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  v56 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_18:
    v55 = 2654435761 * self->_cellId;
    if ((*&has & 0x20000000000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  v55 = 0;
  if ((*&has & 0x20000000000000) != 0)
  {
LABEL_19:
    v54 = 2654435761 * self->_zoneId;
    if ((*&has & 8) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  v54 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_20:
    v53 = 2654435761 * self->_baseId;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  v53 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_21:
    v52 = 2654435761 * self->_lteLac;
    if ((*&has & 0x80000000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  v52 = 0;
  if ((*&has & 0x80000000000) != 0)
  {
LABEL_22:
    v51 = 2654435761 * self->_sid;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  v51 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_23:
    v50 = 2654435761 * self->_mcc;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  v50 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_24:
    v49 = 2654435761 * self->_mnc;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  v49 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_25:
    v48 = 2654435761 * self->_lac;
    if ((*&has & 0x800000000000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  v48 = 0;
  if ((*&has & 0x800000000000000) != 0)
  {
LABEL_26:
    v47 = 2654435761 * self->_mrabEver;
    if ((*&has & 0x400000000000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  v47 = 0;
  if ((*&has & 0x400000000000000) != 0)
  {
LABEL_27:
    v46 = 2654435761 * self->_mrabEnd;
    if ((*&has & 4) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  v46 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_28:
    v45 = 2654435761 * self->_band;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_79;
  }

LABEL_78:
  v45 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_29:
    v44 = 2654435761 * self->_rfChannel;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_80;
  }

LABEL_79:
  v44 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_30:
    v43 = 2654435761 * self->_psc;
    if ((*&has & 0x4000000000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_81;
  }

LABEL_80:
  v43 = 0;
  if ((*&has & 0x4000000000000) != 0)
  {
LABEL_31:
    v42 = 2654435761 * self->_ttyMode;
    if ((*&has & 0x2000000000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_82;
  }

LABEL_81:
  v42 = 0;
  if ((*&has & 0x2000000000000) != 0)
  {
LABEL_32:
    v41 = 2654435761 * self->_tsAccuracyHour;
    if ((*&has & 0x40000000000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_83;
  }

LABEL_82:
  v41 = 0;
  if ((*&has & 0x40000000000000) != 0)
  {
LABEL_33:
    v40 = 2654435761 * self->_accessoryAttached;
    if ((*&has & 0x40000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_84;
  }

LABEL_83:
  v40 = 0;
  if ((*&has & 0x40000000000) != 0)
  {
LABEL_34:
    v39 = 2654435761 * self->_setupSysMode;
    if ((*&has & 0x20000000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_85;
  }

LABEL_84:
  v39 = 0;
  if ((*&has & 0x20000000000) != 0)
  {
LABEL_35:
    v38 = 2654435761 * self->_setupDirection;
    if ((*&has & 0x2000000000000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_86;
  }

LABEL_85:
  v38 = 0;
  if ((*&has & 0x2000000000000000) != 0)
  {
LABEL_36:
    v37 = 2654435761 * self->_sl2;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_87;
  }

LABEL_86:
  v37 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_37:
    v36 = 2654435761 * self->_coexPolicy;
    if ((*&has & 0x1000000000000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_88;
  }

LABEL_87:
  v36 = 0;
  if ((*&has & 0x1000000000000000) != 0)
  {
LABEL_38:
    v35 = 2654435761 * self->_sl;
    if ((*&has & 0x200000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_89;
  }

LABEL_88:
  v35 = 0;
  if ((*&has & 0x200000000000000) != 0)
  {
LABEL_39:
    v34 = 2654435761 * self->_fb;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_90;
  }

LABEL_89:
  v34 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_40:
    v33 = 2654435761 * self->_msOrigToFb;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_91;
  }

LABEL_90:
  v33 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_41:
    v32 = 2654435761 * self->_msOrigToConf;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_92;
  }

LABEL_91:
  v32 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_42:
    v31 = 2654435761 * self->_msOrigToEnd;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_93;
  }

LABEL_92:
  v31 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_43:
    v30 = 2654435761 * self->_msStartToAlert;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_94;
  }

LABEL_93:
  v30 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_44:
    v29 = 2654435761 * self->_msFbToSetup;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_95;
  }

LABEL_94:
  v29 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_45:
    v28 = 2654435761 * self->_msPageToSetup;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_96;
  }

LABEL_95:
  v28 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_46:
    v27 = 2654435761 * self->_msSetupToEnd;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_97;
  }

LABEL_96:
  v27 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_47:
    v26 = 2654435761 * self->_ecioDbx2;
    if ((*&has & 0x4000000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_98;
  }

LABEL_97:
  v26 = 0;
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_48:
    v25 = 2654435761 * self->_rssiDbm;
    if ((*&has & 0x8000000000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_99;
  }

LABEL_98:
  v25 = 0;
  if ((*&has & 0x8000000000000) != 0)
  {
LABEL_49:
    v24 = 2654435761 * self->_txPwrDbm;
    if ((*&has & 0x10000000000) != 0)
    {
      goto LABEL_50;
    }

LABEL_100:
    v23 = 0;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_101;
  }

LABEL_99:
  v24 = 0;
  if ((*&has & 0x10000000000) == 0)
  {
    goto LABEL_100;
  }

LABEL_50:
  v23 = 2654435761 * self->_sensorUseDuringLastCallMs;
  if ((*&has & 0x8000000000) != 0)
  {
LABEL_51:
    v22 = 2654435761 * self->_sensorEndToPresentMs;
    goto LABEL_102;
  }

LABEL_101:
  v22 = 0;
LABEL_102:
  v21 = [(NSMutableArray *)self->_capEvents hash];
  v4 = self->_has;
  if ((*&v4 & 0x800000000000) != 0)
  {
    v20 = 2654435761 * self->_subsId;
    if ((*&v4 & 0x100000000) != 0)
    {
LABEL_104:
      v19 = 2654435761 * self->_numSubs;
      if ((*&v4 & 0x200000000) != 0)
      {
        goto LABEL_105;
      }

      goto LABEL_111;
    }
  }

  else
  {
    v20 = 0;
    if ((*&v4 & 0x100000000) != 0)
    {
      goto LABEL_104;
    }
  }

  v19 = 0;
  if ((*&v4 & 0x200000000) != 0)
  {
LABEL_105:
    v18 = 2654435761 * self->_psPref;
    if ((*&v4 & 0x8000) != 0)
    {
      goto LABEL_106;
    }

    goto LABEL_112;
  }

LABEL_111:
  v18 = 0;
  if ((*&v4 & 0x8000) != 0)
  {
LABEL_106:
    v17 = 2654435761 * self->_hoType;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_107;
    }

LABEL_113:
    v16 = 0;
    if ((*&v4 & 0x2000000000) != 0)
    {
      goto LABEL_108;
    }

    goto LABEL_114;
  }

LABEL_112:
  v17 = 0;
  if ((*&v4 & 0x10000) == 0)
  {
    goto LABEL_113;
  }

LABEL_107:
  v16 = 2654435761 * self->_hstState;
  if ((*&v4 & 0x2000000000) != 0)
  {
LABEL_108:
    v5 = 2654435761 * self->_rrcRelCause;
    goto LABEL_115;
  }

LABEL_114:
  v5 = 0;
LABEL_115:
  v6 = [(NSMutableArray *)self->_rfMeasInfos hash];
  v7 = self->_has;
  if ((*&v7 & 0x20000) != 0)
  {
    v8 = 2654435761 * self->_isSrvccSuccess;
    if ((*&v7 & 0x400000000000) != 0)
    {
LABEL_117:
      v9 = 2654435761 * self->_srvccTargetRat;
      if ((*&v7 & 0x200000000000) != 0)
      {
        goto LABEL_118;
      }

      goto LABEL_123;
    }
  }

  else
  {
    v8 = 0;
    if ((*&v7 & 0x400000000000) != 0)
    {
      goto LABEL_117;
    }
  }

  v9 = 0;
  if ((*&v7 & 0x200000000000) != 0)
  {
LABEL_118:
    v10 = 2654435761 * self->_srvccFailureCause;
    if ((*&v7 & 0x80000) != 0)
    {
      goto LABEL_119;
    }

LABEL_124:
    v11 = 0;
    if ((*&v7 & 0x40000000) != 0)
    {
      goto LABEL_120;
    }

    goto LABEL_125;
  }

LABEL_123:
  v10 = 0;
  if ((*&v7 & 0x80000) == 0)
  {
    goto LABEL_124;
  }

LABEL_119:
  v11 = 2654435761 * self->_lastMotionState;
  if ((*&v7 & 0x40000000) != 0)
  {
LABEL_120:
    v12 = 2654435761 * self->_msSinceLastMotionState;
    goto LABEL_126;
  }

LABEL_125:
  v12 = 0;
LABEL_126:
  v13 = [(NSString *)self->_transId hash];
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    v14 = 2654435761 * self->_version;
  }

  else
  {
    v14 = 0;
  }

  return v70 ^ v71 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v20 ^ v21 ^ v19 ^ v18 ^ v17 ^ v16 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 260);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1uLL;
    v6 = *(fromCopy + 260);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_86;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_callEvent = *(fromCopy + 8);
  *&self->_has |= 0x20uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_callId = *(fromCopy + 9);
  *&self->_has |= 0x40uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x1000) == 0)
  {
LABEL_5:
    if ((v6 & 0x100000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_direction = *(fromCopy + 17);
  *&self->_has |= 0x1000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x100000000000) == 0)
  {
LABEL_6:
    if ((v6 & 0x1000000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_srvType = *(fromCopy + 51);
  *&self->_has |= 0x100000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x1000000000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_sysMode = *(fromCopy + 55);
  *&self->_has |= 0x1000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_callState = *(fromCopy + 10);
  *&self->_has |= 0x80uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x4000) == 0)
  {
LABEL_9:
    if ((v6 & 0x800000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_endStatus = *(fromCopy + 19);
  *&self->_has |= 0x4000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x800000000) == 0)
  {
LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_qmiReleaseCause = *(fromCopy + 40);
  *&self->_has |= 0x800000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x10) == 0)
  {
LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_callDuration = *(fromCopy + 7);
  *&self->_has |= 0x10uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x200) == 0)
  {
LABEL_12:
    if ((v6 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_ccCause = *(fromCopy + 14);
  *&self->_has |= 0x200uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 2) == 0)
  {
LABEL_13:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_antenna = *(fromCopy + 4);
  *&self->_has |= 2uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x100) == 0)
  {
LABEL_14:
    if ((v6 & 0x100000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_callType = *(fromCopy + 11);
  *&self->_has |= 0x100uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x100000000000000) == 0)
  {
LABEL_15:
    if ((v6 & 0x80000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_established = fromCopy[254];
  *&self->_has |= 0x100000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x80000000000000) == 0)
  {
LABEL_16:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_99;
  }

LABEL_98:
  self->_connected = fromCopy[253];
  *&self->_has |= 0x80000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x100000) == 0)
  {
LABEL_17:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_lteCellId = *(fromCopy + 25);
  *&self->_has |= 0x100000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x400) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_101;
  }

LABEL_100:
  self->_cellId = *(fromCopy + 15);
  *&self->_has |= 0x400uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x20000000000000) == 0)
  {
LABEL_19:
    if ((v6 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_102;
  }

LABEL_101:
  self->_zoneId = *(fromCopy + 62);
  *&self->_has |= 0x20000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 8) == 0)
  {
LABEL_20:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_baseId = *(fromCopy + 6);
  *&self->_has |= 8uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x200000) == 0)
  {
LABEL_21:
    if ((v6 & 0x80000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_104;
  }

LABEL_103:
  self->_lteLac = *(fromCopy + 26);
  *&self->_has |= 0x200000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x80000000000) == 0)
  {
LABEL_22:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_sid = *(fromCopy + 50);
  *&self->_has |= 0x80000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x400000) == 0)
  {
LABEL_23:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_mcc = *(fromCopy + 27);
  *&self->_has |= 0x400000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x800000) == 0)
  {
LABEL_24:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_107;
  }

LABEL_106:
  self->_mnc = *(fromCopy + 28);
  *&self->_has |= 0x800000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x40000) == 0)
  {
LABEL_25:
    if ((v6 & 0x800000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_108;
  }

LABEL_107:
  self->_lac = *(fromCopy + 23);
  *&self->_has |= 0x40000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x800000000000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x400000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_109;
  }

LABEL_108:
  self->_mrabEver = fromCopy[257];
  *&self->_has |= 0x800000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x400000000000000) == 0)
  {
LABEL_27:
    if ((v6 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_110;
  }

LABEL_109:
  self->_mrabEnd = fromCopy[256];
  *&self->_has |= 0x400000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 4) == 0)
  {
LABEL_28:
    if ((v6 & 0x1000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_111;
  }

LABEL_110:
  self->_band = *(fromCopy + 5);
  *&self->_has |= 4uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x1000000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_112;
  }

LABEL_111:
  self->_rfChannel = *(fromCopy + 41);
  *&self->_has |= 0x1000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x400000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x4000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_113;
  }

LABEL_112:
  self->_psc = *(fromCopy + 39);
  *&self->_has |= 0x400000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x4000000000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x2000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_114;
  }

LABEL_113:
  self->_ttyMode = *(fromCopy + 59);
  *&self->_has |= 0x4000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x2000000000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x40000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_115;
  }

LABEL_114:
  self->_tsAccuracyHour = *(fromCopy + 58);
  *&self->_has |= 0x2000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x40000000000000) == 0)
  {
LABEL_33:
    if ((v6 & 0x40000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_116;
  }

LABEL_115:
  self->_accessoryAttached = fromCopy[252];
  *&self->_has |= 0x40000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x40000000000) == 0)
  {
LABEL_34:
    if ((v6 & 0x20000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_117;
  }

LABEL_116:
  self->_setupSysMode = *(fromCopy + 49);
  *&self->_has |= 0x40000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x20000000000) == 0)
  {
LABEL_35:
    if ((v6 & 0x2000000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_118;
  }

LABEL_117:
  self->_setupDirection = *(fromCopy + 48);
  *&self->_has |= 0x20000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x2000000000000000) == 0)
  {
LABEL_36:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_119;
  }

LABEL_118:
  self->_sl2 = fromCopy[259];
  *&self->_has |= 0x2000000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x800) == 0)
  {
LABEL_37:
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_120;
  }

LABEL_119:
  self->_coexPolicy = *(fromCopy + 16);
  *&self->_has |= 0x800uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x1000000000000000) == 0)
  {
LABEL_38:
    if ((v6 & 0x200000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_121;
  }

LABEL_120:
  self->_sl = fromCopy[258];
  *&self->_has |= 0x1000000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x200000000000000) == 0)
  {
LABEL_39:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_122;
  }

LABEL_121:
  self->_fb = fromCopy[255];
  *&self->_has |= 0x200000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_123;
  }

LABEL_122:
  self->_msOrigToFb = *(fromCopy + 32);
  *&self->_has |= 0x8000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_41:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_124;
  }

LABEL_123:
  self->_msOrigToConf = *(fromCopy + 30);
  *&self->_has |= 0x2000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_42:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_125;
  }

LABEL_124:
  self->_msOrigToEnd = *(fromCopy + 31);
  *&self->_has |= 0x4000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x80000000) == 0)
  {
LABEL_43:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_126;
  }

LABEL_125:
  self->_msStartToAlert = *(fromCopy + 36);
  *&self->_has |= 0x80000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_44:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_127;
  }

LABEL_126:
  self->_msFbToSetup = *(fromCopy + 29);
  *&self->_has |= 0x1000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_45:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_128;
  }

LABEL_127:
  self->_msPageToSetup = *(fromCopy + 33);
  *&self->_has |= 0x10000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_46:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_129;
  }

LABEL_128:
  self->_msSetupToEnd = *(fromCopy + 34);
  *&self->_has |= 0x20000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x2000) == 0)
  {
LABEL_47:
    if ((v6 & 0x4000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_130;
  }

LABEL_129:
  self->_ecioDbx2 = *(fromCopy + 18);
  *&self->_has |= 0x2000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x4000000000) == 0)
  {
LABEL_48:
    if ((v6 & 0x8000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_131;
  }

LABEL_130:
  self->_rssiDbm = *(fromCopy + 45);
  *&self->_has |= 0x4000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x8000000000000) == 0)
  {
LABEL_49:
    if ((v6 & 0x10000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_132;
  }

LABEL_131:
  self->_txPwrDbm = *(fromCopy + 60);
  *&self->_has |= 0x8000000000000uLL;
  v6 = *(fromCopy + 260);
  if ((v6 & 0x10000000000) == 0)
  {
LABEL_50:
    if ((v6 & 0x8000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_132:
  self->_sensorUseDuringLastCallMs = *(fromCopy + 47);
  *&self->_has |= 0x10000000000uLL;
  if ((*(fromCopy + 260) & 0x8000000000) != 0)
  {
LABEL_51:
    self->_sensorEndToPresentMs = *(fromCopy + 46);
    *&self->_has |= 0x8000000000uLL;
  }

LABEL_52:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(fromCopy + 6);
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
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

        [(CellularCallEndDetails *)self addCapEvent:*(*(&v23 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 260);
  if ((v12 & 0x800000000000) != 0)
  {
    self->_subsId = *(v5 + 54);
    *&self->_has |= 0x800000000000uLL;
    v12 = *(v5 + 260);
    if ((v12 & 0x100000000) == 0)
    {
LABEL_61:
      if ((v12 & 0x200000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_136;
    }
  }

  else if ((v12 & 0x100000000) == 0)
  {
    goto LABEL_61;
  }

  self->_numSubs = *(v5 + 37);
  *&self->_has |= &_mh_execute_header;
  v12 = *(v5 + 260);
  if ((v12 & 0x200000000) == 0)
  {
LABEL_62:
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_137;
  }

LABEL_136:
  self->_psPref = *(v5 + 38);
  *&self->_has |= 0x200000000uLL;
  v12 = *(v5 + 260);
  if ((v12 & 0x8000) == 0)
  {
LABEL_63:
    if ((v12 & 0x10000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_138;
  }

LABEL_137:
  self->_hoType = *(v5 + 20);
  *&self->_has |= 0x8000uLL;
  v12 = *(v5 + 260);
  if ((v12 & 0x10000) == 0)
  {
LABEL_64:
    if ((v12 & 0x2000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_138:
  self->_hstState = *(v5 + 21);
  *&self->_has |= 0x10000uLL;
  if ((*(v5 + 260) & 0x2000000000) != 0)
  {
LABEL_65:
    self->_rrcRelCause = *(v5 + 44);
    *&self->_has |= 0x2000000000uLL;
  }

LABEL_66:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = *(v5 + 21);
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(CellularCallEndDetails *)self addRfMeasInfo:*(*(&v19 + 1) + 8 * j), v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = *(v5 + 260);
  if ((v18 & 0x20000) != 0)
  {
    self->_isSrvccSuccess = *(v5 + 22);
    *&self->_has |= 0x20000uLL;
    v18 = *(v5 + 260);
    if ((v18 & 0x400000000000) == 0)
    {
LABEL_75:
      if ((v18 & 0x200000000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_142;
    }
  }

  else if ((v18 & 0x400000000000) == 0)
  {
    goto LABEL_75;
  }

  self->_srvccTargetRat = *(v5 + 53);
  *&self->_has |= 0x400000000000uLL;
  v18 = *(v5 + 260);
  if ((v18 & 0x200000000000) == 0)
  {
LABEL_76:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_143;
  }

LABEL_142:
  self->_srvccFailureCause = *(v5 + 52);
  *&self->_has |= 0x200000000000uLL;
  v18 = *(v5 + 260);
  if ((v18 & 0x80000) == 0)
  {
LABEL_77:
    if ((v18 & 0x40000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_143:
  self->_lastMotionState = *(v5 + 24);
  *&self->_has |= 0x80000uLL;
  if ((*(v5 + 260) & 0x40000000) != 0)
  {
LABEL_78:
    self->_msSinceLastMotionState = *(v5 + 35);
    *&self->_has |= 0x40000000uLL;
  }

LABEL_79:
  if (*(v5 + 28))
  {
    [(CellularCallEndDetails *)self setTransId:?];
  }

  if ((v5[266] & 0x10) != 0)
  {
    self->_version = *(v5 + 61);
    *&self->_has |= 0x10000000000000uLL;
  }
}

@end