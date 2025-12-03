@interface CellularVoiceCallEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAntenna:(id)antenna;
- (int)StringAsCallEvent:(id)event;
- (int)StringAsDirection:(id)direction;
- (int)StringAsEndStatus:(id)status;
- (int)StringAsSetupDirection:(id)direction;
- (int)StringAsSetupSysMode:(id)mode;
- (int)StringAsSysModeO:(id)o;
- (int)StringAsTypeOfCall:(id)call;
- (int)antenna;
- (int)callEvent;
- (int)direction;
- (int)endStatus;
- (int)setupDirection;
- (int)setupSysMode;
- (int)sysModeO;
- (int)typeOfCall;
- (unint64_t)hash;
- (unsigned)delayCntAtIndex:(unint64_t)index;
- (void)addCapEvent:(id)event;
- (void)addHcStat:(id)stat;
- (void)addRbData:(id)data;
- (void)addRfMeasInfo:(id)info;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAccessoryAttached:(BOOL)attached;
- (void)setHasAccessoryAttachedBitmap:(BOOL)bitmap;
- (void)setHasAntenna:(BOOL)antenna;
- (void)setHasAppCallId:(BOOL)id;
- (void)setHasAudioQosDetectWinLenSec:(BOOL)sec;
- (void)setHasAudioQualityThresholdPpt:(BOOL)ppt;
- (void)setHasBadAudioQuality:(BOOL)quality;
- (void)setHasBand:(BOOL)band;
- (void)setHasBarredFromSib1:(BOOL)sib1;
- (void)setHasBarredFromSib2:(BOOL)sib2;
- (void)setHasCallConnectDur:(BOOL)dur;
- (void)setHasCallDuration:(BOOL)duration;
- (void)setHasCallEvent:(BOOL)event;
- (void)setHasCallSetupTimeMs:(BOOL)ms;
- (void)setHasCellId:(BOOL)id;
- (void)setHasDedicatedBrInactiveToEndMs:(BOOL)ms;
- (void)setHasDirection:(BOOL)direction;
- (void)setHasDrxOn:(BOOL)on;
- (void)setHasDueToHandover:(BOOL)handover;
- (void)setHasEndStatus:(BOOL)status;
- (void)setHasEventId:(BOOL)id;
- (void)setHasFrErasurePpt:(BOOL)ppt;
- (void)setHasHoAltSeqNum:(BOOL)num;
- (void)setHasHstState:(BOOL)state;
- (void)setHasIsAltStart:(BOOL)start;
- (void)setHasLac:(BOOL)lac;
- (void)setHasLastMotionState:(BOOL)state;
- (void)setHasLastRsrp:(BOOL)rsrp;
- (void)setHasLastRssi:(BOOL)rssi;
- (void)setHasLastXSec:(BOOL)sec;
- (void)setHasLastXSecDlMrab:(BOOL)mrab;
- (void)setHasLastXSecUlMrab:(BOOL)mrab;
- (void)setHasMcc:(BOOL)mcc;
- (void)setHasMnc:(BOOL)mnc;
- (void)setHasMsSinceLastMotionState:(BOOL)state;
- (void)setHasMsgId:(BOOL)id;
- (void)setHasMtplInPoint1Db:(BOOL)db;
- (void)setHasNidO:(BOOL)o;
- (void)setHasNumCps:(BOOL)cps;
- (void)setHasNumEnqdSilencePkt:(BOOL)pkt;
- (void)setHasNumEnqdSpeechPkt:(BOOL)pkt;
- (void)setHasNumLostPkt:(BOOL)pkt;
- (void)setHasNumMissedSpeechPkt:(BOOL)pkt;
- (void)setHasNumMncDigits:(BOOL)digits;
- (void)setHasNumPlayedSpeechPkt:(BOOL)pkt;
- (void)setHasNumRecvdSilencePkt:(BOOL)pkt;
- (void)setHasNumRecvdSpeechPkt:(BOOL)pkt;
- (void)setHasNumSpeechQempty:(BOOL)qempty;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasNumUflwSilencePkt:(BOOL)pkt;
- (void)setHasNumUflwSpeechPkt:(BOOL)pkt;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasResponseCode:(BOOL)code;
- (void)setHasRfChannel:(BOOL)channel;
- (void)setHasRrcRelCause:(BOOL)cause;
- (void)setHasRtpPktLossPpt:(BOOL)ppt;
- (void)setHasSetupDirection:(BOOL)direction;
- (void)setHasSetupSysMode:(BOOL)mode;
- (void)setHasSidO:(BOOL)o;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasSysModeO:(BOOL)o;
- (void)setHasTbMs:(BOOL)ms;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasTsAccuracyHour:(BOOL)hour;
- (void)setHasTypeOfCall:(BOOL)call;
- (void)setHasUflwPktPpt:(BOOL)ppt;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation CellularVoiceCallEvent

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = CellularVoiceCallEvent;
  [(CellularVoiceCallEvent *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  v3 = 2;
  if (!timestamp)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (int)callEvent
{
  if ((*(&self->_has + 1) & 4) != 0)
  {
    return self->_callEvent;
  }

  else
  {
    return 430;
  }
}

- (void)setHasCallEvent:(BOOL)event
{
  v3 = 1024;
  if (!event)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (int)StringAsCallEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"VOICE_CALL_START"])
  {
    v4 = 430;
  }

  else if ([eventCopy isEqualToString:@"VOICE_CALL_RING"])
  {
    v4 = 431;
  }

  else if ([eventCopy isEqualToString:@"VOICE_CALL_CONNECT"])
  {
    v4 = 432;
  }

  else if ([eventCopy isEqualToString:@"VOICE_CALL_CANCEL"])
  {
    v4 = 433;
  }

  else if ([eventCopy isEqualToString:@"VOICE_CALL_END"])
  {
    v4 = 434;
  }

  else
  {
    v4 = 430;
  }

  return v4;
}

- (int)direction
{
  if ((*(&self->_has + 1) & 0x40) != 0)
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
  v3 = 0x4000;
  if (!direction)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (int)StringAsDirection:(id)direction
{
  directionCopy = direction;
  if ([directionCopy isEqualToString:@"VOICE_CALL_DIRECTION_MT"])
  {
    v4 = 0;
  }

  else if ([directionCopy isEqualToString:@"VOICE_CALL_DIRECTION_MO"])
  {
    v4 = 1;
  }

  else if ([directionCopy isEqualToString:@"VOICE_CALL_DIRECTION_UNKNOWN"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsAltStart:(BOOL)start
{
  if (start)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 8) = *(&self->_has + 8) & 0xFB | v3;
}

- (void)setHasHoAltSeqNum:(BOOL)num
{
  v3 = 0x80000;
  if (!num)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasDrxOn:(BOOL)on
{
  v3 = 0x8000;
  if (!on)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (int)endStatus
{
  if (*(&self->_has + 2))
  {
    return self->_endStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEndStatus:(BOOL)status
{
  v3 = 0x10000;
  if (!status)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (int)StringAsEndStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"VOICE_CALL_END_NORMAL"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"VOICE_CALL_END_BY_CANCEL"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"VOICE_CALL_END_BY_TIMEOUT"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"VOICE_CALL_END_ABNORMAL"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"VOICE_CALL_END_TO_ALT"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRrcRelCause:(BOOL)cause
{
  v3 = 0x1000000000000;
  if (!cause)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallDuration:(BOOL)duration
{
  v3 = 512;
  if (!duration)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (int)antenna
{
  if ((*&self->_has & 8) != 0)
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
  v3 = 8;
  if (!antenna)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFF7 | v3;
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

- (void)setHasDueToHandover:(BOOL)handover
{
  if (handover)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 8) = *(&self->_has + 8) & 0xFD | v3;
}

- (void)setHasCellId:(BOOL)id
{
  v3 = 4096;
  if (!id)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasNumMncDigits:(BOOL)digits
{
  v3 = 0x2000000000;
  if (!digits)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasMcc:(BOOL)mcc
{
  v3 = 0x4000000;
  if (!mcc)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasMnc:(BOOL)mnc
{
  v3 = 0x8000000;
  if (!mnc)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasLac:(BOOL)lac
{
  v3 = 0x200000;
  if (!lac)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasBand:(BOOL)band
{
  v3 = 128;
  if (!band)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasRfChannel:(BOOL)channel
{
  v3 = 0x800000000000;
  if (!channel)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasTsAccuracyHour:(BOOL)hour
{
  v3 = 0x100000000000000;
  if (!hour)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAccessoryAttached:(BOOL)attached
{
  v3 = 0x1000000000000000;
  if (!attached)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAccessoryAttachedBitmap:(BOOL)bitmap
{
  v3 = 4;
  if (!bitmap)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (int)setupSysMode
{
  if ((*(&self->_has + 6) & 8) != 0)
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
  v3 = 0x8000000000000;
  if (!mode)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3;
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
  if ((*(&self->_has + 6) & 4) != 0)
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
  v3 = 0x4000000000000;
  if (!direction)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (int)StringAsSetupDirection:(id)direction
{
  directionCopy = direction;
  if ([directionCopy isEqualToString:@"VOICE_CALL_DIRECTION_MT"])
  {
    v4 = 0;
  }

  else if ([directionCopy isEqualToString:@"VOICE_CALL_DIRECTION_MO"])
  {
    v4 = 1;
  }

  else if ([directionCopy isEqualToString:@"VOICE_CALL_DIRECTION_UNKNOWN"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCallSetupTimeMs:(BOOL)ms
{
  v3 = 2048;
  if (!ms)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasMtplInPoint1Db:(BOOL)db
{
  v3 = 0x40000000;
  if (!db)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3;
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

- (void)setHasLastXSec:(BOOL)sec
{
  v3 = 0x2000000;
  if (!sec)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasLastXSecUlMrab:(BOOL)mrab
{
  if (mrab)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 8) = *(&self->_has + 8) & 0xEF | v3;
}

- (void)setHasLastXSecDlMrab:(BOOL)mrab
{
  if (mrab)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 8) = *(&self->_has + 8) & 0xF7 | v3;
}

- (void)addRbData:(id)data
{
  dataCopy = data;
  rbDatas = self->_rbDatas;
  v8 = dataCopy;
  if (!rbDatas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_rbDatas;
    self->_rbDatas = v6;

    dataCopy = v8;
    rbDatas = self->_rbDatas;
  }

  [(NSMutableArray *)rbDatas addObject:dataCopy];
}

- (void)setHasMsgId:(BOOL)id
{
  v3 = 0x20000000;
  if (!id)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasEventId:(BOOL)id
{
  v3 = 0x20000;
  if (!id)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasResponseCode:(BOOL)code
{
  v3 = 0x400000000000;
  if (!code)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasCallConnectDur:(BOOL)dur
{
  v3 = 256;
  if (!dur)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasTbMs:(BOOL)ms
{
  v3 = 0x80000000000000;
  if (!ms)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)addHcStat:(id)stat
{
  statCopy = stat;
  hcStats = self->_hcStats;
  v8 = statCopy;
  if (!hcStats)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_hcStats;
    self->_hcStats = v6;

    statCopy = v8;
    hcStats = self->_hcStats;
  }

  [(NSMutableArray *)hcStats addObject:statCopy];
}

- (void)setHasNumRecvdSpeechPkt:(BOOL)pkt
{
  v3 = 0x10000000000;
  if (!pkt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasNumRecvdSilencePkt:(BOOL)pkt
{
  v3 = 0x8000000000;
  if (!pkt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasNumLostPkt:(BOOL)pkt
{
  v3 = 0x800000000;
  if (!pkt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasNumUflwSpeechPkt:(BOOL)pkt
{
  v3 = 0x100000000000;
  if (!pkt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasNumUflwSilencePkt:(BOOL)pkt
{
  v3 = 0x80000000000;
  if (!pkt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasNumEnqdSpeechPkt:(BOOL)pkt
{
  v3 = 0x400000000;
  if (!pkt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasNumEnqdSilencePkt:(BOOL)pkt
{
  v3 = 0x200000000;
  if (!pkt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasNumPlayedSpeechPkt:(BOOL)pkt
{
  v3 = 0x4000000000;
  if (!pkt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasNumMissedSpeechPkt:(BOOL)pkt
{
  v3 = 0x1000000000;
  if (!pkt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasNumSpeechQempty:(BOOL)qempty
{
  v3 = 0x20000000000;
  if (!qempty)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasAppCallId:(BOOL)id
{
  v3 = 16;
  if (!id)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (unsigned)delayCntAtIndex:(unint64_t)index
{
  p_delayCnts = &self->_delayCnts;
  count = self->_delayCnts.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_delayCnts->list[index];
}

- (void)setHasDedicatedBrInactiveToEndMs:(BOOL)ms
{
  v3 = 0x2000;
  if (!ms)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasRtpPktLossPpt:(BOOL)ppt
{
  v3 = 0x2000000000000;
  if (!ppt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasUflwPktPpt:(BOOL)ppt
{
  v3 = 0x400000000000000;
  if (!ppt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFrErasurePpt:(BOOL)ppt
{
  v3 = 0x40000;
  if (!ppt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasBadAudioQuality:(BOOL)quality
{
  v3 = 0x2000000000000000;
  if (!quality)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAudioQualityThresholdPpt:(BOOL)ppt
{
  v3 = 64;
  if (!ppt)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasAudioQosDetectWinLenSec:(BOOL)sec
{
  v3 = 32;
  if (!sec)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3;
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

- (void)setHasHstState:(BOOL)state
{
  v3 = 0x100000;
  if (!state)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasPsPref:(BOOL)pref
{
  v3 = 0x200000000000;
  if (!pref)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasNumSubs:(BOOL)subs
{
  v3 = 0x40000000000;
  if (!subs)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setHasNumCps:(BOOL)cps
{
  v3 = &_mh_execute_header;
  if (!cps)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (int)sysModeO
{
  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    return self->_sysModeO;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSysModeO:(BOOL)o
{
  v3 = 0x40000000000000;
  if (!o)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (int)StringAsSysModeO:(id)o
{
  oCopy = o;
  if ([oCopy isEqualToString:@"SYS_MODE_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_LTE_V2"])
  {
    v4 = 1;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_CDMA"])
  {
    v4 = 2;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 3;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_HDR"])
  {
    v4 = 4;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_WCDMA"])
  {
    v4 = 5;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_EHRPD"])
  {
    v4 = 6;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_GW"])
  {
    v4 = 7;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_WLAN"])
  {
    v4 = 8;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 9;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_GWL"])
  {
    v4 = 10;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_UMTS"])
  {
    v4 = 11;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_NR5G"])
  {
    v4 = 12;
  }

  else if ([oCopy isEqualToString:@"SYS_MODE_CDMA_HDR"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSidO:(BOOL)o
{
  v3 = 0x10000000000000;
  if (!o)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasNidO:(BOOL)o
{
  v3 = 0x80000000;
  if (!o)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasLastRssi:(BOOL)rssi
{
  v3 = 0x1000000;
  if (!rssi)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasLastRsrp:(BOOL)rsrp
{
  v3 = 0x800000;
  if (!rsrp)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasBarredFromSib1:(BOOL)sib1
{
  v3 = 0x4000000000000000;
  if (!sib1)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasBarredFromSib2:(BOOL)sib2
{
  v3 = 0x8000000000000000;
  if (!sib2)
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000000000000000 | *&self->_has & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasLastMotionState:(BOOL)state
{
  v3 = 0x400000;
  if (!state)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasMsSinceLastMotionState:(BOOL)state
{
  v3 = 0x10000000;
  if (!state)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasVersion:(BOOL)version
{
  v3 = 0x800000000000000;
  if (!version)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  v3 = 0x20000000000000;
  if (!id)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (int)typeOfCall
{
  if ((*(&self->_has + 7) & 2) != 0)
  {
    return self->_typeOfCall;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTypeOfCall:(BOOL)call
{
  v3 = 0x200000000000000;
  if (!call)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (int)StringAsTypeOfCall:(id)call
{
  callCopy = call;
  if ([callCopy isEqualToString:@"VoNR"])
  {
    v4 = 0;
  }

  else if ([callCopy isEqualToString:@"VoLTE"])
  {
    v4 = 1;
  }

  else if ([callCopy isEqualToString:@"EPSFB"])
  {
    v4 = 2;
  }

  else if ([callCopy isEqualToString:@"VoNR_VoLTE"])
  {
    v4 = 3;
  }

  else if ([callCopy isEqualToString:@"OTHER"])
  {
    v4 = 4;
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
  v7.super_class = CellularVoiceCallEvent;
  v3 = [(CellularVoiceCallEvent *)&v7 description];
  dictionaryRepresentation = [(CellularVoiceCallEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  p_has = &self->_has;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v6 forKey:@"timestamp"];

    has = *p_has;
  }

  if ((has & 0x400) != 0)
  {
    v7 = self->_callEvent - 430;
    if (v7 >= 5)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_callEvent];
    }

    else
    {
      v8 = *(&off_1003189B8 + v7);
    }

    [v3 setObject:v8 forKey:@"call_event"];
  }

  callId = self->_callId;
  if (callId)
  {
    [v3 setObject:callId forKey:@"call_id"];
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    direction = self->_direction;
    if (direction >= 3)
    {
      v11 = [NSString stringWithFormat:@"(unknown: %i)", self->_direction];
    }

    else
    {
      v11 = *(&off_100318A28 + direction);
    }

    [v3 setObject:v11 forKey:@"direction"];
  }

  if ((*(&self->_has + 8) & 4) != 0)
  {
    v12 = [NSNumber numberWithBool:self->_isAltStart];
    [v3 setObject:v12 forKey:@"is_alt_start"];
  }

  v13 = *p_has;
  if ((*p_has & 0x80000) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_hoAltSeqNum];
    [v3 setObject:v14 forKey:@"ho_alt_seq_num"];

    v13 = *p_has;
    if ((*p_has & 0x8000) == 0)
    {
LABEL_19:
      if ((v13 & 0x10000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  else if ((v13 & 0x8000) == 0)
  {
    goto LABEL_19;
  }

  v15 = [NSNumber numberWithUnsignedInt:self->_drxOn];
  [v3 setObject:v15 forKey:@"drx_on"];

  v13 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_20:
    if ((v13 & 0x1000000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_26:
  endStatus = self->_endStatus;
  if (endStatus >= 5)
  {
    v17 = [NSString stringWithFormat:@"(unknown: %i)", self->_endStatus];
  }

  else
  {
    v17 = *(&off_1003189E0 + endStatus);
  }

  [v3 setObject:v17 forKey:@"end_status"];

  v13 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_21:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = [NSNumber numberWithUnsignedInt:self->_rrcRelCause];
  [v3 setObject:v18 forKey:@"rrc_rel_cause"];

  v13 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_22:
    if ((v13 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_31:
  v19 = [NSNumber numberWithInt:self->_callDuration];
  [v3 setObject:v19 forKey:@"call_duration"];

  if ((*p_has & 8) == 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  antenna = self->_antenna;
  if (antenna >= 4)
  {
    v21 = [NSString stringWithFormat:@"(unknown: %i)", self->_antenna];
  }

  else
  {
    v21 = *(&off_100318A08 + antenna);
  }

  [v3 setObject:v21 forKey:@"antenna"];

LABEL_36:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    v22 = [NSNumber numberWithBool:self->_dueToHandover];
    [v3 setObject:v22 forKey:@"due_to_handover"];
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    v23 = [NSNumber numberWithUnsignedInt:self->_cellId];
    [v3 setObject:v23 forKey:@"cell_id"];
  }

  simHplmn = self->_simHplmn;
  if (simHplmn)
  {
    [v3 setObject:simHplmn forKey:@"sim_hplmn"];
  }

  v25 = *p_has;
  if ((*p_has & 0x2000000000) != 0)
  {
    v78 = [NSNumber numberWithUnsignedInt:self->_numMncDigits];
    [v3 setObject:v78 forKey:@"num_mnc_digits"];

    v25 = *p_has;
    if ((*p_has & 0x4000000) == 0)
    {
LABEL_44:
      if ((v25 & 0x8000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_153;
    }
  }

  else if ((v25 & 0x4000000) == 0)
  {
    goto LABEL_44;
  }

  v79 = [NSNumber numberWithUnsignedInt:self->_mcc];
  [v3 setObject:v79 forKey:@"mcc"];

  v25 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_45:
    if ((v25 & 0x200000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_154;
  }

LABEL_153:
  v80 = [NSNumber numberWithUnsignedInt:self->_mnc];
  [v3 setObject:v80 forKey:@"mnc"];

  v25 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_46:
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_155;
  }

LABEL_154:
  v81 = [NSNumber numberWithUnsignedInt:self->_lac];
  [v3 setObject:v81 forKey:@"lac"];

  v25 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_47:
    if ((v25 & 0x800000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_156;
  }

LABEL_155:
  v82 = [NSNumber numberWithUnsignedInt:self->_band];
  [v3 setObject:v82 forKey:@"band"];

  v25 = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_48:
    if ((v25 & 0x100000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_157;
  }

LABEL_156:
  v83 = [NSNumber numberWithUnsignedInt:self->_rfChannel];
  [v3 setObject:v83 forKey:@"rf_channel"];

  v25 = *p_has;
  if ((*p_has & 0x100000000000000) == 0)
  {
LABEL_49:
    if ((v25 & 0x1000000000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_158;
  }

LABEL_157:
  v84 = [NSNumber numberWithUnsignedInt:self->_tsAccuracyHour];
  [v3 setObject:v84 forKey:@"ts_accuracy_hour"];

  v25 = *p_has;
  if ((*p_has & 0x1000000000000000) == 0)
  {
LABEL_50:
    if ((v25 & 4) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_159;
  }

LABEL_158:
  v85 = [NSNumber numberWithBool:self->_accessoryAttached];
  [v3 setObject:v85 forKey:@"accessory_attached"];

  v25 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_51:
    if ((v25 & 0x8000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_160;
  }

LABEL_159:
  v86 = [NSNumber numberWithUnsignedInt:self->_accessoryAttachedBitmap];
  [v3 setObject:v86 forKey:@"accessory_attached_bitmap"];

  v25 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_52:
    if ((v25 & 0x4000000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_204;
  }

LABEL_160:
  setupSysMode = self->_setupSysMode;
  if (setupSysMode < 0x10 && ((0x9FFFu >> setupSysMode) & 1) != 0)
  {
    v88 = *(&off_100318A40 + setupSysMode);
  }

  else
  {
    v88 = [NSString stringWithFormat:@"(unknown: %i)", self->_setupSysMode];
  }

  [v3 setObject:v88 forKey:@"setup_sys_mode"];

  v25 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_53:
    if ((v25 & 0x800) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_215;
  }

LABEL_204:
  setupDirection = self->_setupDirection;
  if (setupDirection >= 3)
  {
    v125 = [NSString stringWithFormat:@"(unknown: %i)", self->_setupDirection];
  }

  else
  {
    v125 = *(&off_100318A28 + setupDirection);
  }

  [v3 setObject:v125 forKey:@"setup_direction"];

  v25 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_54:
    if ((v25 & 0x40000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_215:
  v127 = [NSNumber numberWithUnsignedInt:self->_callSetupTimeMs];
  [v3 setObject:v127 forKey:@"call_setup_time_ms"];

  if ((*p_has & 0x40000000) != 0)
  {
LABEL_55:
    v26 = [NSNumber numberWithInt:self->_mtplInPoint1Db];
    [v3 setObject:v26 forKey:@"mtpl_in_point_1_db"];
  }

LABEL_56:
  if ([(NSMutableArray *)self->_capEvents count])
  {
    v27 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_capEvents, "count")}];
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v28 = self->_capEvents;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v140 objects:v147 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v141;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v141 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation = [*(*(&v140 + 1) + 8 * i) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v140 objects:v147 count:16];
      }

      while (v30);
    }

    [v3 setObject:v27 forKey:@"cap_event"];
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    v34 = [NSNumber numberWithUnsignedInt:self->_lastXSec];
    [v3 setObject:v34 forKey:@"last_x_sec"];
  }

  v35 = *(&self->_has + 8);
  if ((v35 & 0x10) != 0)
  {
    v36 = [NSNumber numberWithBool:self->_lastXSecUlMrab];
    [v3 setObject:v36 forKey:@"last_x_sec_ul_mrab"];

    v35 = *(&self->_has + 8);
  }

  if ((v35 & 8) != 0)
  {
    v37 = [NSNumber numberWithBool:self->_lastXSecDlMrab];
    [v3 setObject:v37 forKey:@"last_x_sec_dl_mrab"];
  }

  if ([(NSMutableArray *)self->_rbDatas count])
  {
    v38 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_rbDatas, "count")}];
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v39 = self->_rbDatas;
    v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v136 objects:v146 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v137;
      do
      {
        for (j = 0; j != v41; j = j + 1)
        {
          if (*v137 != v42)
          {
            objc_enumerationMutation(v39);
          }

          dictionaryRepresentation2 = [*(*(&v136 + 1) + 8 * j) dictionaryRepresentation];
          [v38 addObject:dictionaryRepresentation2];
        }

        v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v136 objects:v146 count:16];
      }

      while (v41);
    }

    [v3 setObject:v38 forKey:@"rb_data"];
  }

  v45 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    v89 = [NSNumber numberWithUnsignedInt:self->_msgId];
    [v3 setObject:v89 forKey:@"msg_id"];

    v45 = *p_has;
    if ((*p_has & 0x20000) == 0)
    {
LABEL_82:
      if ((v45 & 0x400000000000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_165;
    }
  }

  else if ((v45 & 0x20000) == 0)
  {
    goto LABEL_82;
  }

  v90 = [NSNumber numberWithUnsignedInt:self->_eventId];
  [v3 setObject:v90 forKey:@"event_id"];

  v45 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_83:
    if ((v45 & 0x100) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_166;
  }

LABEL_165:
  v91 = [NSNumber numberWithUnsignedInt:self->_responseCode];
  [v3 setObject:v91 forKey:@"response_code"];

  v45 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_84:
    if ((v45 & 0x80000000000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_166:
  v92 = [NSNumber numberWithUnsignedInt:self->_callConnectDur];
  [v3 setObject:v92 forKey:@"call_connect_dur"];

  if ((*p_has & 0x80000000000000) != 0)
  {
LABEL_85:
    v46 = [NSNumber numberWithUnsignedInt:self->_tbMs];
    [v3 setObject:v46 forKey:@"tb_ms"];
  }

LABEL_86:
  if ([(NSMutableArray *)self->_hcStats count])
  {
    v47 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_hcStats, "count")}];
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v48 = self->_hcStats;
    v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v132 objects:v145 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v133;
      do
      {
        for (k = 0; k != v50; k = k + 1)
        {
          if (*v133 != v51)
          {
            objc_enumerationMutation(v48);
          }

          dictionaryRepresentation3 = [*(*(&v132 + 1) + 8 * k) dictionaryRepresentation];
          [v47 addObject:dictionaryRepresentation3];
        }

        v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v132 objects:v145 count:16];
      }

      while (v50);
    }

    [v3 setObject:v47 forKey:@"hc_stat"];
  }

  v54 = *p_has;
  if ((*p_has & 0x10000000000) != 0)
  {
    v93 = [NSNumber numberWithUnsignedInt:self->_numRecvdSpeechPkt];
    [v3 setObject:v93 forKey:@"num_recvd_speech_pkt"];

    v54 = *p_has;
    if ((*p_has & 0x8000000000) == 0)
    {
LABEL_97:
      if ((v54 & 0x800000000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_170;
    }
  }

  else if ((v54 & 0x8000000000) == 0)
  {
    goto LABEL_97;
  }

  v94 = [NSNumber numberWithUnsignedInt:self->_numRecvdSilencePkt];
  [v3 setObject:v94 forKey:@"num_recvd_silence_pkt"];

  v54 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_98:
    if ((v54 & 0x100000000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_171;
  }

LABEL_170:
  v95 = [NSNumber numberWithUnsignedInt:self->_numLostPkt];
  [v3 setObject:v95 forKey:@"num_lost_pkt"];

  v54 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_99:
    if ((v54 & 0x80000000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_172;
  }

LABEL_171:
  v96 = [NSNumber numberWithUnsignedInt:self->_numUflwSpeechPkt];
  [v3 setObject:v96 forKey:@"num_uflw_speech_pkt"];

  v54 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_100:
    if ((v54 & 0x400000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_173;
  }

LABEL_172:
  v97 = [NSNumber numberWithUnsignedInt:self->_numUflwSilencePkt];
  [v3 setObject:v97 forKey:@"num_uflw_silence_pkt"];

  v54 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_101:
    if ((v54 & 0x200000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_174;
  }

LABEL_173:
  v98 = [NSNumber numberWithUnsignedInt:self->_numEnqdSpeechPkt];
  [v3 setObject:v98 forKey:@"num_enqd_speech_pkt"];

  v54 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_102:
    if ((v54 & 0x4000000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_175;
  }

LABEL_174:
  v99 = [NSNumber numberWithUnsignedInt:self->_numEnqdSilencePkt];
  [v3 setObject:v99 forKey:@"num_enqd_silence_pkt"];

  v54 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_103:
    if ((v54 & 0x1000000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_176;
  }

LABEL_175:
  v100 = [NSNumber numberWithUnsignedInt:self->_numPlayedSpeechPkt];
  [v3 setObject:v100 forKey:@"num_played_speech_pkt"];

  v54 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_104:
    if ((v54 & 0x20000000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_177;
  }

LABEL_176:
  v101 = [NSNumber numberWithUnsignedInt:self->_numMissedSpeechPkt];
  [v3 setObject:v101 forKey:@"num_missed_speech_pkt"];

  v54 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_105:
    if ((v54 & 0x10) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

LABEL_177:
  v102 = [NSNumber numberWithUnsignedInt:self->_numSpeechQempty];
  [v3 setObject:v102 forKey:@"num_speech_qempty"];

  if ((*p_has & 0x10) != 0)
  {
LABEL_106:
    v55 = [NSNumber numberWithUnsignedInt:self->_appCallId];
    [v3 setObject:v55 forKey:@"app_call_id"];
  }

LABEL_107:
  v56 = PBRepeatedUInt32NSArray();
  [v3 setObject:v56 forKey:@"delay_cnt"];

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v57 = [NSNumber numberWithUnsignedInt:self->_dedicatedBrInactiveToEndMs];
    [v3 setObject:v57 forKey:@"dedicated_br_inactive_to_end_ms"];
  }

  lastAudioQualityCnt = self->_lastAudioQualityCnt;
  if (lastAudioQualityCnt)
  {
    dictionaryRepresentation4 = [lastAudioQualityCnt dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"last_audio_quality_cnt"];
  }

  v60 = *p_has;
  if ((*p_has & 0x2000000000000) != 0)
  {
    v103 = [NSNumber numberWithUnsignedInt:self->_rtpPktLossPpt];
    [v3 setObject:v103 forKey:@"rtp_pkt_loss_ppt"];

    v60 = *p_has;
    if ((*p_has & 0x400000000000000) == 0)
    {
LABEL_113:
      if ((v60 & 0x40000) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_181;
    }
  }

  else if ((v60 & 0x400000000000000) == 0)
  {
    goto LABEL_113;
  }

  v104 = [NSNumber numberWithUnsignedInt:self->_uflwPktPpt];
  [v3 setObject:v104 forKey:@"uflw_pkt_ppt"];

  v60 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_114:
    if ((v60 & 0x2000000000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_182;
  }

LABEL_181:
  v105 = [NSNumber numberWithUnsignedInt:self->_frErasurePpt];
  [v3 setObject:v105 forKey:@"fr_erasure_ppt"];

  v60 = *p_has;
  if ((*p_has & 0x2000000000000000) == 0)
  {
LABEL_115:
    if ((v60 & 0x40) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_183;
  }

LABEL_182:
  v106 = [NSNumber numberWithBool:self->_badAudioQuality];
  [v3 setObject:v106 forKey:@"bad_audio_quality"];

  v60 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_116:
    if ((v60 & 0x20) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

LABEL_183:
  v107 = [NSNumber numberWithUnsignedInt:self->_audioQualityThresholdPpt];
  [v3 setObject:v107 forKey:@"audio_quality_threshold_ppt"];

  if ((*p_has & 0x20) != 0)
  {
LABEL_117:
    v61 = [NSNumber numberWithUnsignedInt:self->_audioQosDetectWinLenSec];
    [v3 setObject:v61 forKey:@"audio_qos_detect_win_len_sec"];
  }

LABEL_118:
  if ([(NSMutableArray *)self->_rfMeasInfos count])
  {
    v62 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_rfMeasInfos, "count")}];
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v63 = self->_rfMeasInfos;
    v64 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v128 objects:v144 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v129;
      do
      {
        for (m = 0; m != v65; m = m + 1)
        {
          if (*v129 != v66)
          {
            objc_enumerationMutation(v63);
          }

          dictionaryRepresentation5 = [*(*(&v128 + 1) + 8 * m) dictionaryRepresentation];
          [v62 addObject:dictionaryRepresentation5];
        }

        v65 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v128 objects:v144 count:16];
      }

      while (v65);
    }

    [v3 setObject:v62 forKey:@"rf_meas_info"];
  }

  v69 = *p_has;
  if ((*p_has & 0x100000) != 0)
  {
    v108 = [NSNumber numberWithUnsignedInt:self->_hstState];
    [v3 setObject:v108 forKey:@"hst_state"];

    v69 = *p_has;
    if ((*p_has & 0x200000000000) == 0)
    {
LABEL_129:
      if ((v69 & 0x40000000000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_187;
    }
  }

  else if ((v69 & 0x200000000000) == 0)
  {
    goto LABEL_129;
  }

  v109 = [NSNumber numberWithUnsignedInt:self->_psPref];
  [v3 setObject:v109 forKey:@"ps_pref"];

  v69 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_130:
    if ((v69 & 0x100000000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_188;
  }

LABEL_187:
  v110 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v110 forKey:@"num_subs"];

  v69 = *p_has;
  if ((*p_has & 0x100000000) == 0)
  {
LABEL_131:
    if ((v69 & 0x40000000000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_189;
  }

LABEL_188:
  v111 = [NSNumber numberWithUnsignedInt:self->_numCps];
  [v3 setObject:v111 forKey:@"num_cps"];

  v69 = *p_has;
  if ((*p_has & 0x40000000000000) == 0)
  {
LABEL_132:
    if ((v69 & 0x10000000000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_208;
  }

LABEL_189:
  sysModeO = self->_sysModeO;
  if (sysModeO < 0x10 && ((0x9FFFu >> sysModeO) & 1) != 0)
  {
    v113 = *(&off_100318A40 + sysModeO);
  }

  else
  {
    v113 = [NSString stringWithFormat:@"(unknown: %i)", self->_sysModeO];
  }

  [v3 setObject:v113 forKey:@"sys_mode_o"];

  v69 = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_133:
    if ((v69 & 0x80000000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_134;
  }

LABEL_208:
  v126 = [NSNumber numberWithUnsignedInt:self->_sidO];
  [v3 setObject:v126 forKey:@"sid_o"];

  if ((*p_has & 0x80000000) != 0)
  {
LABEL_134:
    v70 = [NSNumber numberWithUnsignedInt:self->_nidO];
    [v3 setObject:v70 forKey:@"nid_o"];
  }

LABEL_135:
  plmnO = self->_plmnO;
  if (plmnO)
  {
    [v3 setObject:plmnO forKey:@"plmn_o"];
  }

  v72 = *p_has;
  if ((*p_has & 0x1000000) != 0)
  {
    v114 = [NSNumber numberWithInt:self->_lastRssi];
    [v3 setObject:v114 forKey:@"last_rssi"];

    v72 = *p_has;
    if ((*p_has & 0x800000) == 0)
    {
LABEL_139:
      if ((v72 & 0x4000000000000000) == 0)
      {
        goto LABEL_140;
      }

LABEL_194:
      v116 = [NSNumber numberWithBool:self->_barredFromSib1];
      [v3 setObject:v116 forKey:@"barred_from_sib1"];

      if ((*p_has & 0x8000000000000000) == 0)
      {
        goto LABEL_141;
      }

      goto LABEL_195;
    }
  }

  else if ((v72 & 0x800000) == 0)
  {
    goto LABEL_139;
  }

  v115 = [NSNumber numberWithInt:self->_lastRsrp];
  [v3 setObject:v115 forKey:@"last_rsrp"];

  v72 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    goto LABEL_194;
  }

LABEL_140:
  if ((v72 & 0x8000000000000000) == 0)
  {
    goto LABEL_141;
  }

LABEL_195:
  v117 = [NSNumber numberWithBool:self->_barredFromSib2];
  [v3 setObject:v117 forKey:@"barred_from_sib2"];

LABEL_141:
  if (*(&self->_has + 8))
  {
    v73 = [NSNumber numberWithBool:self->_connectionRejected];
    [v3 setObject:v73 forKey:@"connection_rejected"];
  }

  v74 = *p_has;
  if ((*p_has & 0x400000) != 0)
  {
    v118 = [NSNumber numberWithUnsignedInt:self->_lastMotionState];
    [v3 setObject:v118 forKey:@"last_motion_state"];

    v74 = *p_has;
    if ((*p_has & 0x10000000) == 0)
    {
LABEL_145:
      if ((v74 & 0x800000000000000) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_198;
    }
  }

  else if ((v74 & 0x10000000) == 0)
  {
    goto LABEL_145;
  }

  v119 = [NSNumber numberWithUnsignedInt:self->_msSinceLastMotionState];
  [v3 setObject:v119 forKey:@"ms_since_last_motion_state"];

  v74 = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_146:
    if ((v74 & 0x20000000000000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_199;
  }

LABEL_198:
  v120 = [NSNumber numberWithUnsignedInt:self->_version];
  [v3 setObject:v120 forKey:@"version"];

  v74 = *p_has;
  if ((*p_has & 0x20000000000000) == 0)
  {
LABEL_147:
    if ((v74 & 0x200000000000000) == 0)
    {
      goto LABEL_148;
    }

LABEL_200:
    typeOfCall = self->_typeOfCall;
    if (typeOfCall >= 5)
    {
      v123 = [NSString stringWithFormat:@"(unknown: %i)", self->_typeOfCall];
    }

    else
    {
      v123 = *(&off_100318AC0 + typeOfCall);
    }

    [v3 setObject:v123 forKey:@"type_of_call"];

    if (*p_has)
    {
      goto LABEL_149;
    }

    goto LABEL_150;
  }

LABEL_199:
  v121 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v121 forKey:@"subs_id"];

  v74 = *p_has;
  if ((*p_has & 0x200000000000000) != 0)
  {
    goto LABEL_200;
  }

LABEL_148:
  if (v74)
  {
LABEL_149:
    v75 = [NSNumber numberWithUnsignedLongLong:self->_nr5gCellId];
    [v3 setObject:v75 forKey:@"nr5g_cell_id"];
  }

LABEL_150:
  v76 = v3;

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = *p_has;
  }

  if ((has & 0x400) != 0)
  {
    callEvent = self->_callEvent;
    PBDataWriterWriteInt32Field();
  }

  if (self->_callId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    direction = self->_direction;
    PBDataWriterWriteInt32Field();
  }

  if ((*(&self->_has + 8) & 4) != 0)
  {
    isAltStart = self->_isAltStart;
    PBDataWriterWriteBOOLField();
  }

  v11 = *p_has;
  if ((*p_has & 0x80000) != 0)
  {
    hoAltSeqNum = self->_hoAltSeqNum;
    PBDataWriterWriteUint32Field();
    v11 = *p_has;
    if ((*p_has & 0x8000) == 0)
    {
LABEL_13:
      if ((v11 & 0x10000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_130;
    }
  }

  else if ((v11 & 0x8000) == 0)
  {
    goto LABEL_13;
  }

  drxOn = self->_drxOn;
  PBDataWriterWriteUint32Field();
  v11 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_14:
    if ((v11 & 0x1000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_131;
  }

LABEL_130:
  endStatus = self->_endStatus;
  PBDataWriterWriteInt32Field();
  v11 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_15:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_132;
  }

LABEL_131:
  rrcRelCause = self->_rrcRelCause;
  PBDataWriterWriteUint32Field();
  v11 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_16:
    if ((v11 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_132:
  callDuration = self->_callDuration;
  PBDataWriterWriteSint32Field();
  if ((*p_has & 8) != 0)
  {
LABEL_17:
    antenna = self->_antenna;
    PBDataWriterWriteInt32Field();
  }

LABEL_18:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    dueToHandover = self->_dueToHandover;
    PBDataWriterWriteBOOLField();
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    cellId = self->_cellId;
    PBDataWriterWriteUint32Field();
  }

  if (self->_simHplmn)
  {
    PBDataWriterWriteDataField();
  }

  v15 = *p_has;
  if ((*p_has & 0x2000000000) != 0)
  {
    numMncDigits = self->_numMncDigits;
    PBDataWriterWriteUint32Field();
    v15 = *p_has;
    if ((*p_has & 0x4000000) == 0)
    {
LABEL_26:
      if ((v15 & 0x8000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_136;
    }
  }

  else if ((v15 & 0x4000000) == 0)
  {
    goto LABEL_26;
  }

  mcc = self->_mcc;
  PBDataWriterWriteUint32Field();
  v15 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_27:
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_137;
  }

LABEL_136:
  mnc = self->_mnc;
  PBDataWriterWriteUint32Field();
  v15 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_28:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_138;
  }

LABEL_137:
  lac = self->_lac;
  PBDataWriterWriteUint32Field();
  v15 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_29:
    if ((v15 & 0x800000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_139;
  }

LABEL_138:
  band = self->_band;
  PBDataWriterWriteUint32Field();
  v15 = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_30:
    if ((v15 & 0x100000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_140;
  }

LABEL_139:
  rfChannel = self->_rfChannel;
  PBDataWriterWriteUint32Field();
  v15 = *p_has;
  if ((*p_has & 0x100000000000000) == 0)
  {
LABEL_31:
    if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_141;
  }

LABEL_140:
  tsAccuracyHour = self->_tsAccuracyHour;
  PBDataWriterWriteUint32Field();
  v15 = *p_has;
  if ((*p_has & 0x1000000000000000) == 0)
  {
LABEL_32:
    if ((v15 & 4) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_142;
  }

LABEL_141:
  accessoryAttached = self->_accessoryAttached;
  PBDataWriterWriteBOOLField();
  v15 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_33:
    if ((v15 & 0x8000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_143;
  }

LABEL_142:
  accessoryAttachedBitmap = self->_accessoryAttachedBitmap;
  PBDataWriterWriteUint32Field();
  v15 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_34:
    if ((v15 & 0x4000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_144;
  }

LABEL_143:
  setupSysMode = self->_setupSysMode;
  PBDataWriterWriteInt32Field();
  v15 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_35:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_145;
  }

LABEL_144:
  setupDirection = self->_setupDirection;
  PBDataWriterWriteInt32Field();
  v15 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_36:
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_145:
  callSetupTimeMs = self->_callSetupTimeMs;
  PBDataWriterWriteUint32Field();
  if ((*p_has & 0x40000000) != 0)
  {
LABEL_37:
    mtplInPoint1Db = self->_mtplInPoint1Db;
    PBDataWriterWriteInt32Field();
  }

LABEL_38:
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v17 = self->_capEvents;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v123 objects:v130 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v124;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v124 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v123 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v123 objects:v130 count:16];
    }

    while (v19);
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    lastXSec = self->_lastXSec;
    PBDataWriterWriteUint32Field();
  }

  v24 = *(&self->_has + 8);
  if ((v24 & 0x10) != 0)
  {
    lastXSecUlMrab = self->_lastXSecUlMrab;
    PBDataWriterWriteBOOLField();
    v24 = *(&self->_has + 8);
  }

  if ((v24 & 8) != 0)
  {
    lastXSecDlMrab = self->_lastXSecDlMrab;
    PBDataWriterWriteBOOLField();
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v27 = self->_rbDatas;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v119 objects:v129 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v120;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v120 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v119 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v119 objects:v129 count:16];
    }

    while (v29);
  }

  v33 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    msgId = self->_msgId;
    PBDataWriterWriteUint32Field();
    v33 = *p_has;
    if ((*p_has & 0x20000) == 0)
    {
LABEL_60:
      if ((v33 & 0x400000000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_149;
    }
  }

  else if ((v33 & 0x20000) == 0)
  {
    goto LABEL_60;
  }

  eventId = self->_eventId;
  PBDataWriterWriteUint32Field();
  v33 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_61:
    if ((v33 & 0x100) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_150;
  }

LABEL_149:
  responseCode = self->_responseCode;
  PBDataWriterWriteUint32Field();
  v33 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_62:
    if ((v33 & 0x80000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_150:
  callConnectDur = self->_callConnectDur;
  PBDataWriterWriteUint32Field();
  if ((*p_has & 0x80000000000000) != 0)
  {
LABEL_63:
    tbMs = self->_tbMs;
    PBDataWriterWriteUint32Field();
  }

LABEL_64:
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v35 = self->_hcStats;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v115 objects:v128 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v116;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v116 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v115 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v115 objects:v128 count:16];
    }

    while (v37);
  }

  v41 = *p_has;
  if ((*p_has & 0x10000000000) != 0)
  {
    numRecvdSpeechPkt = self->_numRecvdSpeechPkt;
    PBDataWriterWriteUint32Field();
    v41 = *p_has;
    if ((*p_has & 0x8000000000) == 0)
    {
LABEL_73:
      if ((v41 & 0x800000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_154;
    }
  }

  else if ((v41 & 0x8000000000) == 0)
  {
    goto LABEL_73;
  }

  numRecvdSilencePkt = self->_numRecvdSilencePkt;
  PBDataWriterWriteUint32Field();
  v41 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_74:
    if ((v41 & 0x100000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_155;
  }

LABEL_154:
  numLostPkt = self->_numLostPkt;
  PBDataWriterWriteUint32Field();
  v41 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_75:
    if ((v41 & 0x80000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_156;
  }

LABEL_155:
  numUflwSpeechPkt = self->_numUflwSpeechPkt;
  PBDataWriterWriteUint32Field();
  v41 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_76:
    if ((v41 & 0x400000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_157;
  }

LABEL_156:
  numUflwSilencePkt = self->_numUflwSilencePkt;
  PBDataWriterWriteUint32Field();
  v41 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_77:
    if ((v41 & 0x200000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_158;
  }

LABEL_157:
  numEnqdSpeechPkt = self->_numEnqdSpeechPkt;
  PBDataWriterWriteUint32Field();
  v41 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_78:
    if ((v41 & 0x4000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_159;
  }

LABEL_158:
  numEnqdSilencePkt = self->_numEnqdSilencePkt;
  PBDataWriterWriteUint32Field();
  v41 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_79:
    if ((v41 & 0x1000000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_160;
  }

LABEL_159:
  numPlayedSpeechPkt = self->_numPlayedSpeechPkt;
  PBDataWriterWriteUint32Field();
  v41 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_80:
    if ((v41 & 0x20000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_161;
  }

LABEL_160:
  numMissedSpeechPkt = self->_numMissedSpeechPkt;
  PBDataWriterWriteUint32Field();
  v41 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_81:
    if ((v41 & 0x10) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_161:
  numSpeechQempty = self->_numSpeechQempty;
  PBDataWriterWriteUint32Field();
  if ((*p_has & 0x10) != 0)
  {
LABEL_82:
    appCallId = self->_appCallId;
    PBDataWriterWriteUint32Field();
  }

LABEL_83:
  if (self->_delayCnts.count)
  {
    v43 = 0;
    do
    {
      v44 = self->_delayCnts.list[v43];
      PBDataWriterWriteUint32Field();
      ++v43;
    }

    while (v43 < self->_delayCnts.count);
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    dedicatedBrInactiveToEndMs = self->_dedicatedBrInactiveToEndMs;
    PBDataWriterWriteUint32Field();
  }

  if (self->_lastAudioQualityCnt)
  {
    PBDataWriterWriteSubmessage();
  }

  v46 = *p_has;
  if ((*p_has & 0x2000000000000) != 0)
  {
    rtpPktLossPpt = self->_rtpPktLossPpt;
    PBDataWriterWriteUint32Field();
    v46 = *p_has;
    if ((*p_has & 0x400000000000000) == 0)
    {
LABEL_92:
      if ((v46 & 0x40000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_165;
    }
  }

  else if ((v46 & 0x400000000000000) == 0)
  {
    goto LABEL_92;
  }

  uflwPktPpt = self->_uflwPktPpt;
  PBDataWriterWriteUint32Field();
  v46 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_93:
    if ((v46 & 0x2000000000000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_166;
  }

LABEL_165:
  frErasurePpt = self->_frErasurePpt;
  PBDataWriterWriteUint32Field();
  v46 = *p_has;
  if ((*p_has & 0x2000000000000000) == 0)
  {
LABEL_94:
    if ((v46 & 0x40) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_167;
  }

LABEL_166:
  badAudioQuality = self->_badAudioQuality;
  PBDataWriterWriteBOOLField();
  v46 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_95:
    if ((v46 & 0x20) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

LABEL_167:
  audioQualityThresholdPpt = self->_audioQualityThresholdPpt;
  PBDataWriterWriteUint32Field();
  if ((*p_has & 0x20) != 0)
  {
LABEL_96:
    audioQosDetectWinLenSec = self->_audioQosDetectWinLenSec;
    PBDataWriterWriteUint32Field();
  }

LABEL_97:
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v48 = self->_rfMeasInfos;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v111 objects:v127 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v112;
    do
    {
      for (m = 0; m != v50; m = m + 1)
      {
        if (*v112 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v111 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v111 objects:v127 count:16];
    }

    while (v50);
  }

  v54 = *p_has;
  if ((*p_has & 0x100000) != 0)
  {
    hstState = self->_hstState;
    PBDataWriterWriteUint32Field();
    v54 = *p_has;
    if ((*p_has & 0x200000000000) == 0)
    {
LABEL_106:
      if ((v54 & 0x40000000000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_171;
    }
  }

  else if ((v54 & 0x200000000000) == 0)
  {
    goto LABEL_106;
  }

  psPref = self->_psPref;
  PBDataWriterWriteUint32Field();
  v54 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_107:
    if ((v54 & 0x100000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_172;
  }

LABEL_171:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  v54 = *p_has;
  if ((*p_has & 0x100000000) == 0)
  {
LABEL_108:
    if ((v54 & 0x40000000000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_173;
  }

LABEL_172:
  numCps = self->_numCps;
  PBDataWriterWriteUint32Field();
  v54 = *p_has;
  if ((*p_has & 0x40000000000000) == 0)
  {
LABEL_109:
    if ((v54 & 0x10000000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_174;
  }

LABEL_173:
  sysModeO = self->_sysModeO;
  PBDataWriterWriteInt32Field();
  v54 = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_110:
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

LABEL_174:
  sidO = self->_sidO;
  PBDataWriterWriteUint32Field();
  if ((*p_has & 0x80000000) != 0)
  {
LABEL_111:
    nidO = self->_nidO;
    PBDataWriterWriteUint32Field();
  }

LABEL_112:
  if (self->_plmnO)
  {
    PBDataWriterWriteDataField();
  }

  v56 = *p_has;
  if ((*p_has & 0x1000000) != 0)
  {
    lastRssi = self->_lastRssi;
    PBDataWriterWriteInt32Field();
    v56 = *p_has;
    if ((*p_has & 0x800000) == 0)
    {
LABEL_116:
      if ((v56 & 0x4000000000000000) == 0)
      {
        goto LABEL_117;
      }

LABEL_178:
      barredFromSib1 = self->_barredFromSib1;
      PBDataWriterWriteBOOLField();
      if ((*p_has & 0x8000000000000000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_179;
    }
  }

  else if ((v56 & 0x800000) == 0)
  {
    goto LABEL_116;
  }

  lastRsrp = self->_lastRsrp;
  PBDataWriterWriteInt32Field();
  v56 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    goto LABEL_178;
  }

LABEL_117:
  if ((v56 & 0x8000000000000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_179:
  barredFromSib2 = self->_barredFromSib2;
  PBDataWriterWriteBOOLField();
LABEL_118:
  if (*(&self->_has + 8))
  {
    connectionRejected = self->_connectionRejected;
    PBDataWriterWriteBOOLField();
  }

  v58 = *p_has;
  if ((*p_has & 0x400000) != 0)
  {
    lastMotionState = self->_lastMotionState;
    PBDataWriterWriteUint32Field();
    v58 = *p_has;
    if ((*p_has & 0x10000000) == 0)
    {
LABEL_122:
      if ((v58 & 0x800000000000000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_182;
    }
  }

  else if ((v58 & 0x10000000) == 0)
  {
    goto LABEL_122;
  }

  msSinceLastMotionState = self->_msSinceLastMotionState;
  PBDataWriterWriteUint32Field();
  v58 = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_123:
    if ((v58 & 0x20000000000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_183;
  }

LABEL_182:
  version = self->_version;
  PBDataWriterWriteUint32Field();
  v58 = *p_has;
  if ((*p_has & 0x20000000000000) == 0)
  {
LABEL_124:
    if ((v58 & 0x200000000000000) == 0)
    {
      goto LABEL_125;
    }

LABEL_184:
    typeOfCall = self->_typeOfCall;
    PBDataWriterWriteInt32Field();
    if ((*p_has & 1) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_183:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  v58 = *p_has;
  if ((*p_has & 0x200000000000000) != 0)
  {
    goto LABEL_184;
  }

LABEL_125:
  if (v58)
  {
LABEL_126:
    nr5gCellId = self->_nr5gCellId;
    PBDataWriterWriteUint64Field();
  }

LABEL_127:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[5] = self->_timestamp;
    toCopy[48] |= 2uLL;
    has = self->_has;
  }

  if ((has & 0x400) != 0)
  {
    *(toCopy + 20) = self->_callEvent;
    toCopy[48] |= 0x400uLL;
  }

  v37 = toCopy;
  if (self->_callId)
  {
    [toCopy setCallId:?];
    toCopy = v37;
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(toCopy + 30) = self->_direction;
    toCopy[48] |= 0x4000uLL;
  }

  if ((*(&self->_has + 8) & 4) != 0)
  {
    *(toCopy + 378) = self->_isAltStart;
    *(toCopy + 392) |= 4u;
  }

  v7 = *p_has;
  if ((*p_has & 0x80000) != 0)
  {
    *(toCopy + 38) = self->_hoAltSeqNum;
    toCopy[48] |= 0x80000uLL;
    v7 = self->_has;
    if ((v7 & 0x8000) == 0)
    {
LABEL_13:
      if ((v7 & 0x10000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_121;
    }
  }

  else if ((v7 & 0x8000) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 31) = self->_drxOn;
  toCopy[48] |= 0x8000uLL;
  v7 = self->_has;
  if ((v7 & 0x10000) == 0)
  {
LABEL_14:
    if ((v7 & 0x1000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(toCopy + 32) = self->_endStatus;
  toCopy[48] |= 0x10000uLL;
  v7 = self->_has;
  if ((v7 & 0x1000000000000) == 0)
  {
LABEL_15:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(toCopy + 78) = self->_rrcRelCause;
  toCopy[48] |= 0x1000000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x200) == 0)
  {
LABEL_16:
    if ((v7 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_123:
  *(toCopy + 19) = self->_callDuration;
  toCopy[48] |= 0x200uLL;
  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    *(toCopy + 13) = self->_antenna;
    toCopy[48] |= 8uLL;
  }

LABEL_18:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    *(toCopy + 377) = self->_dueToHandover;
    *(toCopy + 392) |= 2u;
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    *(toCopy + 28) = self->_cellId;
    toCopy[48] |= 0x1000uLL;
  }

  if (self->_simHplmn)
  {
    [v37 setSimHplmn:?];
    toCopy = v37;
  }

  v8 = *p_has;
  if ((*p_has & 0x2000000000) != 0)
  {
    *(toCopy + 59) = self->_numMncDigits;
    toCopy[48] |= 0x2000000000uLL;
    v8 = self->_has;
    if ((v8 & 0x4000000) == 0)
    {
LABEL_26:
      if ((v8 & 0x8000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_127;
    }
  }

  else if ((v8 & 0x4000000) == 0)
  {
    goto LABEL_26;
  }

  *(toCopy + 48) = self->_mcc;
  toCopy[48] |= 0x4000000uLL;
  v8 = self->_has;
  if ((v8 & 0x8000000) == 0)
  {
LABEL_27:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_128;
  }

LABEL_127:
  *(toCopy + 49) = self->_mnc;
  toCopy[48] |= 0x8000000uLL;
  v8 = self->_has;
  if ((v8 & 0x200000) == 0)
  {
LABEL_28:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_129;
  }

LABEL_128:
  *(toCopy + 40) = self->_lac;
  toCopy[48] |= 0x200000uLL;
  v8 = self->_has;
  if ((v8 & 0x80) == 0)
  {
LABEL_29:
    if ((v8 & 0x800000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_130;
  }

LABEL_129:
  *(toCopy + 17) = self->_band;
  toCopy[48] |= 0x80uLL;
  v8 = self->_has;
  if ((v8 & 0x800000000000) == 0)
  {
LABEL_30:
    if ((v8 & 0x100000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_131;
  }

LABEL_130:
  *(toCopy + 75) = self->_rfChannel;
  toCopy[48] |= 0x800000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x100000000000000) == 0)
  {
LABEL_31:
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_132;
  }

LABEL_131:
  *(toCopy + 89) = self->_tsAccuracyHour;
  toCopy[48] |= 0x100000000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x1000000000000000) == 0)
  {
LABEL_32:
    if ((v8 & 4) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_133;
  }

LABEL_132:
  *(toCopy + 372) = self->_accessoryAttached;
  toCopy[48] |= 0x1000000000000000uLL;
  v8 = self->_has;
  if ((v8 & 4) == 0)
  {
LABEL_33:
    if ((v8 & 0x8000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_134;
  }

LABEL_133:
  *(toCopy + 12) = self->_accessoryAttachedBitmap;
  toCopy[48] |= 4uLL;
  v8 = self->_has;
  if ((v8 & 0x8000000000000) == 0)
  {
LABEL_34:
    if ((v8 & 0x4000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_135;
  }

LABEL_134:
  *(toCopy + 81) = self->_setupSysMode;
  toCopy[48] |= 0x8000000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x4000000000000) == 0)
  {
LABEL_35:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_36;
    }

LABEL_136:
    *(toCopy + 24) = self->_callSetupTimeMs;
    toCopy[48] |= 0x800uLL;
    if ((*&self->_has & 0x40000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_135:
  *(toCopy + 80) = self->_setupDirection;
  toCopy[48] |= 0x4000000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x800) != 0)
  {
    goto LABEL_136;
  }

LABEL_36:
  if ((v8 & 0x40000000) != 0)
  {
LABEL_37:
    *(toCopy + 52) = self->_mtplInPoint1Db;
    toCopy[48] |= 0x40000000uLL;
  }

LABEL_38:
  if ([(CellularVoiceCallEvent *)self capEventsCount])
  {
    [v37 clearCapEvents];
    capEventsCount = [(CellularVoiceCallEvent *)self capEventsCount];
    if (capEventsCount)
    {
      v10 = capEventsCount;
      for (i = 0; i != v10; ++i)
      {
        v12 = [(CellularVoiceCallEvent *)self capEventAtIndex:i];
        [v37 addCapEvent:v12];
      }
    }
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    *(v37 + 47) = self->_lastXSec;
    v37[48] |= 0x2000000uLL;
  }

  v13 = *(&self->_has + 8);
  if ((v13 & 0x10) != 0)
  {
    *(v37 + 380) = self->_lastXSecUlMrab;
    *(v37 + 392) |= 0x10u;
    v13 = *(&self->_has + 8);
  }

  if ((v13 & 8) != 0)
  {
    *(v37 + 379) = self->_lastXSecDlMrab;
    *(v37 + 392) |= 8u;
  }

  if ([(CellularVoiceCallEvent *)self rbDatasCount])
  {
    [v37 clearRbDatas];
    rbDatasCount = [(CellularVoiceCallEvent *)self rbDatasCount];
    if (rbDatasCount)
    {
      v15 = rbDatasCount;
      for (j = 0; j != v15; ++j)
      {
        v17 = [(CellularVoiceCallEvent *)self rbDataAtIndex:j];
        [v37 addRbData:v17];
      }
    }
  }

  v18 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    *(v37 + 51) = self->_msgId;
    v37[48] |= 0x20000000uLL;
    v18 = self->_has;
    if ((v18 & 0x20000) == 0)
    {
LABEL_54:
      if ((v18 & 0x400000000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_140;
    }
  }

  else if ((v18 & 0x20000) == 0)
  {
    goto LABEL_54;
  }

  *(v37 + 33) = self->_eventId;
  v37[48] |= 0x20000uLL;
  v18 = self->_has;
  if ((v18 & 0x400000000000) == 0)
  {
LABEL_55:
    if ((v18 & 0x100) == 0)
    {
      goto LABEL_56;
    }

LABEL_141:
    *(v37 + 18) = self->_callConnectDur;
    v37[48] |= 0x100uLL;
    if ((*&self->_has & 0x80000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_140:
  *(v37 + 74) = self->_responseCode;
  v37[48] |= 0x400000000000uLL;
  v18 = self->_has;
  if ((v18 & 0x100) != 0)
  {
    goto LABEL_141;
  }

LABEL_56:
  if ((v18 & 0x80000000000000) != 0)
  {
LABEL_57:
    *(v37 + 88) = self->_tbMs;
    v37[48] |= 0x80000000000000uLL;
  }

LABEL_58:
  if ([(CellularVoiceCallEvent *)self hcStatsCount])
  {
    [v37 clearHcStats];
    hcStatsCount = [(CellularVoiceCallEvent *)self hcStatsCount];
    if (hcStatsCount)
    {
      v20 = hcStatsCount;
      for (k = 0; k != v20; ++k)
      {
        v22 = [(CellularVoiceCallEvent *)self hcStatAtIndex:k];
        [v37 addHcStat:v22];
      }
    }
  }

  v23 = *p_has;
  if ((*p_has & 0x10000000000) != 0)
  {
    *(v37 + 62) = self->_numRecvdSpeechPkt;
    v37[48] |= 0x10000000000uLL;
    v23 = self->_has;
    if ((v23 & 0x8000000000) == 0)
    {
LABEL_64:
      if ((v23 & 0x800000000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_145;
    }
  }

  else if ((v23 & 0x8000000000) == 0)
  {
    goto LABEL_64;
  }

  *(v37 + 61) = self->_numRecvdSilencePkt;
  v37[48] |= 0x8000000000uLL;
  v23 = self->_has;
  if ((v23 & 0x800000000) == 0)
  {
LABEL_65:
    if ((v23 & 0x100000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(v37 + 57) = self->_numLostPkt;
  v37[48] |= 0x800000000uLL;
  v23 = self->_has;
  if ((v23 & 0x100000000000) == 0)
  {
LABEL_66:
    if ((v23 & 0x80000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(v37 + 66) = self->_numUflwSpeechPkt;
  v37[48] |= 0x100000000000uLL;
  v23 = self->_has;
  if ((v23 & 0x80000000000) == 0)
  {
LABEL_67:
    if ((v23 & 0x400000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v37 + 65) = self->_numUflwSilencePkt;
  v37[48] |= 0x80000000000uLL;
  v23 = self->_has;
  if ((v23 & 0x400000000) == 0)
  {
LABEL_68:
    if ((v23 & 0x200000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(v37 + 56) = self->_numEnqdSpeechPkt;
  v37[48] |= 0x400000000uLL;
  v23 = self->_has;
  if ((v23 & 0x200000000) == 0)
  {
LABEL_69:
    if ((v23 & 0x4000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_150;
  }

LABEL_149:
  *(v37 + 55) = self->_numEnqdSilencePkt;
  v37[48] |= 0x200000000uLL;
  v23 = self->_has;
  if ((v23 & 0x4000000000) == 0)
  {
LABEL_70:
    if ((v23 & 0x1000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(v37 + 60) = self->_numPlayedSpeechPkt;
  v37[48] |= 0x4000000000uLL;
  v23 = self->_has;
  if ((v23 & 0x1000000000) == 0)
  {
LABEL_71:
    if ((v23 & 0x20000000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_152:
    *(v37 + 63) = self->_numSpeechQempty;
    v37[48] |= 0x20000000000uLL;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_151:
  *(v37 + 58) = self->_numMissedSpeechPkt;
  v37[48] |= 0x1000000000uLL;
  v23 = self->_has;
  if ((v23 & 0x20000000000) != 0)
  {
    goto LABEL_152;
  }

LABEL_72:
  if ((v23 & 0x10) != 0)
  {
LABEL_73:
    *(v37 + 14) = self->_appCallId;
    v37[48] |= 0x10uLL;
  }

LABEL_74:
  if ([(CellularVoiceCallEvent *)self delayCntsCount])
  {
    [v37 clearDelayCnts];
    delayCntsCount = [(CellularVoiceCallEvent *)self delayCntsCount];
    if (delayCntsCount)
    {
      v25 = delayCntsCount;
      for (m = 0; m != v25; ++m)
      {
        [v37 addDelayCnt:{-[CellularVoiceCallEvent delayCntAtIndex:](self, "delayCntAtIndex:", m)}];
      }
    }
  }

  v27 = v37;
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v37 + 29) = self->_dedicatedBrInactiveToEndMs;
    v37[48] |= 0x2000uLL;
  }

  if (self->_lastAudioQualityCnt)
  {
    [v37 setLastAudioQualityCnt:?];
    v27 = v37;
  }

  v28 = *p_has;
  if ((*p_has & 0x2000000000000) != 0)
  {
    v27[79] = self->_rtpPktLossPpt;
    *(v27 + 48) |= 0x2000000000000uLL;
    v28 = self->_has;
    if ((v28 & 0x400000000000000) == 0)
    {
LABEL_84:
      if ((v28 & 0x40000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_156;
    }
  }

  else if ((v28 & 0x400000000000000) == 0)
  {
    goto LABEL_84;
  }

  v27[91] = self->_uflwPktPpt;
  *(v27 + 48) |= 0x400000000000000uLL;
  v28 = self->_has;
  if ((v28 & 0x40000) == 0)
  {
LABEL_85:
    if ((v28 & 0x2000000000000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_157;
  }

LABEL_156:
  v27[34] = self->_frErasurePpt;
  *(v27 + 48) |= 0x40000uLL;
  v28 = self->_has;
  if ((v28 & 0x2000000000000000) == 0)
  {
LABEL_86:
    if ((v28 & 0x40) == 0)
    {
      goto LABEL_87;
    }

LABEL_158:
    v27[16] = self->_audioQualityThresholdPpt;
    *(v27 + 48) |= 0x40uLL;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_157:
  *(v27 + 373) = self->_badAudioQuality;
  *(v27 + 48) |= 0x2000000000000000uLL;
  v28 = self->_has;
  if ((v28 & 0x40) != 0)
  {
    goto LABEL_158;
  }

LABEL_87:
  if ((v28 & 0x20) != 0)
  {
LABEL_88:
    v27[15] = self->_audioQosDetectWinLenSec;
    *(v27 + 48) |= 0x20uLL;
  }

LABEL_89:
  if ([(CellularVoiceCallEvent *)self rfMeasInfosCount])
  {
    [v37 clearRfMeasInfos];
    rfMeasInfosCount = [(CellularVoiceCallEvent *)self rfMeasInfosCount];
    if (rfMeasInfosCount)
    {
      v30 = rfMeasInfosCount;
      for (n = 0; n != v30; ++n)
      {
        v32 = [(CellularVoiceCallEvent *)self rfMeasInfoAtIndex:n];
        [v37 addRfMeasInfo:v32];
      }
    }
  }

  v33 = *p_has;
  v34 = v37;
  if ((*p_has & 0x100000) != 0)
  {
    *(v37 + 39) = self->_hstState;
    v37[48] |= 0x100000uLL;
    v33 = self->_has;
    if ((v33 & 0x200000000000) == 0)
    {
LABEL_95:
      if ((v33 & 0x40000000000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_162;
    }
  }

  else if ((v33 & 0x200000000000) == 0)
  {
    goto LABEL_95;
  }

  *(v37 + 70) = self->_psPref;
  v37[48] |= 0x200000000000uLL;
  v33 = self->_has;
  if ((v33 & 0x40000000000) == 0)
  {
LABEL_96:
    if ((v33 & 0x100000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_163;
  }

LABEL_162:
  *(v37 + 64) = self->_numSubs;
  v37[48] |= 0x40000000000uLL;
  v33 = self->_has;
  if ((v33 & 0x100000000) == 0)
  {
LABEL_97:
    if ((v33 & 0x40000000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_164;
  }

LABEL_163:
  *(v37 + 54) = self->_numCps;
  v37[48] |= &_mh_execute_header;
  v33 = self->_has;
  if ((v33 & 0x40000000000000) == 0)
  {
LABEL_98:
    if ((v33 & 0x10000000000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_165;
  }

LABEL_164:
  *(v37 + 87) = self->_sysModeO;
  v37[48] |= 0x40000000000000uLL;
  v33 = self->_has;
  if ((v33 & 0x10000000000000) == 0)
  {
LABEL_99:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_165:
  *(v37 + 82) = self->_sidO;
  v37[48] |= 0x10000000000000uLL;
  if ((*&self->_has & 0x80000000) != 0)
  {
LABEL_100:
    *(v37 + 53) = self->_nidO;
    v37[48] |= 0x80000000uLL;
  }

LABEL_101:
  if (self->_plmnO)
  {
    [v37 setPlmnO:?];
    v34 = v37;
  }

  v35 = *p_has;
  if ((*p_has & 0x1000000) != 0)
  {
    v34[46] = self->_lastRssi;
    *(v34 + 48) |= 0x1000000uLL;
    v35 = self->_has;
    if ((v35 & 0x800000) == 0)
    {
LABEL_105:
      if ((v35 & 0x4000000000000000) == 0)
      {
        goto LABEL_106;
      }

LABEL_169:
      *(v34 + 374) = self->_barredFromSib1;
      *(v34 + 48) |= 0x4000000000000000uLL;
      if ((*&self->_has & 0x8000000000000000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_170;
    }
  }

  else if ((v35 & 0x800000) == 0)
  {
    goto LABEL_105;
  }

  v34[45] = self->_lastRsrp;
  *(v34 + 48) |= 0x800000uLL;
  v35 = self->_has;
  if ((v35 & 0x4000000000000000) != 0)
  {
    goto LABEL_169;
  }

LABEL_106:
  if ((v35 & 0x8000000000000000) == 0)
  {
    goto LABEL_107;
  }

LABEL_170:
  *(v34 + 375) = self->_barredFromSib2;
  *(v34 + 48) |= 0x8000000000000000;
LABEL_107:
  if (*(&self->_has + 8))
  {
    *(v34 + 376) = self->_connectionRejected;
    *(v34 + 392) |= 1u;
  }

  v36 = *p_has;
  if ((*p_has & 0x400000) != 0)
  {
    v34[44] = self->_lastMotionState;
    *(v34 + 48) |= 0x400000uLL;
    v36 = self->_has;
    if ((v36 & 0x10000000) == 0)
    {
LABEL_111:
      if ((v36 & 0x800000000000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_173;
    }
  }

  else if ((v36 & 0x10000000) == 0)
  {
    goto LABEL_111;
  }

  v34[50] = self->_msSinceLastMotionState;
  *(v34 + 48) |= 0x10000000uLL;
  v36 = self->_has;
  if ((v36 & 0x800000000000000) == 0)
  {
LABEL_112:
    if ((v36 & 0x20000000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_174;
  }

LABEL_173:
  v34[92] = self->_version;
  *(v34 + 48) |= 0x800000000000000uLL;
  v36 = self->_has;
  if ((v36 & 0x20000000000000) == 0)
  {
LABEL_113:
    if ((v36 & 0x200000000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_175;
  }

LABEL_174:
  v34[86] = self->_subsId;
  *(v34 + 48) |= 0x20000000000000uLL;
  v36 = self->_has;
  if ((v36 & 0x200000000000000) == 0)
  {
LABEL_114:
    if ((v36 & 1) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

LABEL_175:
  v34[90] = self->_typeOfCall;
  *(v34 + 48) |= 0x200000000000000uLL;
  if (*&self->_has)
  {
LABEL_115:
    *(v34 + 4) = self->_nr5gCellId;
    *(v34 + 48) |= 1uLL;
  }

LABEL_116:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  p_has = &self->_has;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[5] = self->_timestamp;
    v5[48] |= 2uLL;
    has = self->_has;
  }

  if ((has & 0x400) != 0)
  {
    *(v5 + 20) = self->_callEvent;
    v5[48] |= 0x400uLL;
  }

  v9 = [(NSString *)self->_callId copyWithZone:zone];
  v10 = v6[11];
  v6[11] = v9;

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v6 + 30) = self->_direction;
    v6[48] |= 0x4000uLL;
  }

  if ((*(&self->_has + 8) & 4) != 0)
  {
    *(v6 + 378) = self->_isAltStart;
    *(v6 + 392) |= 4u;
  }

  v11 = *p_has;
  if ((*p_has & 0x80000) != 0)
  {
    *(v6 + 38) = self->_hoAltSeqNum;
    v6[48] |= 0x80000uLL;
    v11 = self->_has;
    if ((v11 & 0x8000) == 0)
    {
LABEL_11:
      if ((v11 & 0x10000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_119;
    }
  }

  else if ((v11 & 0x8000) == 0)
  {
    goto LABEL_11;
  }

  *(v6 + 31) = self->_drxOn;
  v6[48] |= 0x8000uLL;
  v11 = self->_has;
  if ((v11 & 0x10000) == 0)
  {
LABEL_12:
    if ((v11 & 0x1000000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_120;
  }

LABEL_119:
  *(v6 + 32) = self->_endStatus;
  v6[48] |= 0x10000uLL;
  v11 = self->_has;
  if ((v11 & 0x1000000000000) == 0)
  {
LABEL_13:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_121;
  }

LABEL_120:
  *(v6 + 78) = self->_rrcRelCause;
  v6[48] |= 0x1000000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x200) == 0)
  {
LABEL_14:
    if ((v11 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_121:
  *(v6 + 19) = self->_callDuration;
  v6[48] |= 0x200uLL;
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    *(v6 + 13) = self->_antenna;
    v6[48] |= 8uLL;
  }

LABEL_16:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    *(v6 + 377) = self->_dueToHandover;
    *(v6 + 392) |= 2u;
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    *(v6 + 28) = self->_cellId;
    v6[48] |= 0x1000uLL;
  }

  v12 = [(NSData *)self->_simHplmn copyWithZone:zone];
  v13 = v6[42];
  v6[42] = v12;

  v14 = *p_has;
  if ((*p_has & 0x2000000000) != 0)
  {
    *(v6 + 59) = self->_numMncDigits;
    v6[48] |= 0x2000000000uLL;
    v14 = self->_has;
    if ((v14 & 0x4000000) == 0)
    {
LABEL_22:
      if ((v14 & 0x8000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_125;
    }
  }

  else if ((v14 & 0x4000000) == 0)
  {
    goto LABEL_22;
  }

  *(v6 + 48) = self->_mcc;
  v6[48] |= 0x4000000uLL;
  v14 = self->_has;
  if ((v14 & 0x8000000) == 0)
  {
LABEL_23:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_126;
  }

LABEL_125:
  *(v6 + 49) = self->_mnc;
  v6[48] |= 0x8000000uLL;
  v14 = self->_has;
  if ((v14 & 0x200000) == 0)
  {
LABEL_24:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_127;
  }

LABEL_126:
  *(v6 + 40) = self->_lac;
  v6[48] |= 0x200000uLL;
  v14 = self->_has;
  if ((v14 & 0x80) == 0)
  {
LABEL_25:
    if ((v14 & 0x800000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_128;
  }

LABEL_127:
  *(v6 + 17) = self->_band;
  v6[48] |= 0x80uLL;
  v14 = self->_has;
  if ((v14 & 0x800000000000) == 0)
  {
LABEL_26:
    if ((v14 & 0x100000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_129;
  }

LABEL_128:
  *(v6 + 75) = self->_rfChannel;
  v6[48] |= 0x800000000000uLL;
  v14 = self->_has;
  if ((v14 & 0x100000000000000) == 0)
  {
LABEL_27:
    if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_130;
  }

LABEL_129:
  *(v6 + 89) = self->_tsAccuracyHour;
  v6[48] |= 0x100000000000000uLL;
  v14 = self->_has;
  if ((v14 & 0x1000000000000000) == 0)
  {
LABEL_28:
    if ((v14 & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_131;
  }

LABEL_130:
  *(v6 + 372) = self->_accessoryAttached;
  v6[48] |= 0x1000000000000000uLL;
  v14 = self->_has;
  if ((v14 & 4) == 0)
  {
LABEL_29:
    if ((v14 & 0x8000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_132;
  }

LABEL_131:
  *(v6 + 12) = self->_accessoryAttachedBitmap;
  v6[48] |= 4uLL;
  v14 = self->_has;
  if ((v14 & 0x8000000000000) == 0)
  {
LABEL_30:
    if ((v14 & 0x4000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_133;
  }

LABEL_132:
  *(v6 + 81) = self->_setupSysMode;
  v6[48] |= 0x8000000000000uLL;
  v14 = self->_has;
  if ((v14 & 0x4000000000000) == 0)
  {
LABEL_31:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_134;
  }

LABEL_133:
  *(v6 + 80) = self->_setupDirection;
  v6[48] |= 0x4000000000000uLL;
  v14 = self->_has;
  if ((v14 & 0x800) == 0)
  {
LABEL_32:
    if ((v14 & 0x40000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_134:
  *(v6 + 24) = self->_callSetupTimeMs;
  v6[48] |= 0x800uLL;
  if ((*&self->_has & 0x40000000) != 0)
  {
LABEL_33:
    *(v6 + 52) = self->_mtplInPoint1Db;
    v6[48] |= 0x40000000uLL;
  }

LABEL_34:
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v15 = self->_capEvents;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v65;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v65 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v64 + 1) + 8 * i) copyWithZone:zone];
        [v6 addCapEvent:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v17);
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    *(v6 + 47) = self->_lastXSec;
    v6[48] |= 0x2000000uLL;
  }

  v21 = *(&self->_has + 8);
  if ((v21 & 0x10) != 0)
  {
    *(v6 + 380) = self->_lastXSecUlMrab;
    *(v6 + 392) |= 0x10u;
    v21 = *(&self->_has + 8);
  }

  if ((v21 & 8) != 0)
  {
    *(v6 + 379) = self->_lastXSecDlMrab;
    *(v6 + 392) |= 8u;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v22 = self->_rbDatas;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v61;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v61 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v60 + 1) + 8 * j) copyWithZone:zone];
        [v6 addRbData:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v24);
  }

  v28 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    *(v6 + 51) = self->_msgId;
    v6[48] |= 0x20000000uLL;
    v28 = self->_has;
    if ((v28 & 0x20000) == 0)
    {
LABEL_56:
      if ((v28 & 0x400000000000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_138;
    }
  }

  else if ((v28 & 0x20000) == 0)
  {
    goto LABEL_56;
  }

  *(v6 + 33) = self->_eventId;
  v6[48] |= 0x20000uLL;
  v28 = self->_has;
  if ((v28 & 0x400000000000) == 0)
  {
LABEL_57:
    if ((v28 & 0x100) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_139;
  }

LABEL_138:
  *(v6 + 74) = self->_responseCode;
  v6[48] |= 0x400000000000uLL;
  v28 = self->_has;
  if ((v28 & 0x100) == 0)
  {
LABEL_58:
    if ((v28 & 0x80000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_139:
  *(v6 + 18) = self->_callConnectDur;
  v6[48] |= 0x100uLL;
  if ((*&self->_has & 0x80000000000000) != 0)
  {
LABEL_59:
    *(v6 + 88) = self->_tbMs;
    v6[48] |= 0x80000000000000uLL;
  }

LABEL_60:
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v29 = self->_hcStats;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v57;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v57 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v56 + 1) + 8 * k) copyWithZone:zone];
        [v6 addHcStat:v34];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v31);
  }

  v35 = *p_has;
  if ((*p_has & 0x10000000000) != 0)
  {
    *(v6 + 62) = self->_numRecvdSpeechPkt;
    v6[48] |= 0x10000000000uLL;
    v35 = self->_has;
    if ((v35 & 0x8000000000) == 0)
    {
LABEL_69:
      if ((v35 & 0x800000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_143;
    }
  }

  else if ((v35 & 0x8000000000) == 0)
  {
    goto LABEL_69;
  }

  *(v6 + 61) = self->_numRecvdSilencePkt;
  v6[48] |= 0x8000000000uLL;
  v35 = self->_has;
  if ((v35 & 0x800000000) == 0)
  {
LABEL_70:
    if ((v35 & 0x100000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(v6 + 57) = self->_numLostPkt;
  v6[48] |= 0x800000000uLL;
  v35 = self->_has;
  if ((v35 & 0x100000000000) == 0)
  {
LABEL_71:
    if ((v35 & 0x80000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(v6 + 66) = self->_numUflwSpeechPkt;
  v6[48] |= 0x100000000000uLL;
  v35 = self->_has;
  if ((v35 & 0x80000000000) == 0)
  {
LABEL_72:
    if ((v35 & 0x400000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(v6 + 65) = self->_numUflwSilencePkt;
  v6[48] |= 0x80000000000uLL;
  v35 = self->_has;
  if ((v35 & 0x400000000) == 0)
  {
LABEL_73:
    if ((v35 & 0x200000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(v6 + 56) = self->_numEnqdSpeechPkt;
  v6[48] |= 0x400000000uLL;
  v35 = self->_has;
  if ((v35 & 0x200000000) == 0)
  {
LABEL_74:
    if ((v35 & 0x4000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v6 + 55) = self->_numEnqdSilencePkt;
  v6[48] |= 0x200000000uLL;
  v35 = self->_has;
  if ((v35 & 0x4000000000) == 0)
  {
LABEL_75:
    if ((v35 & 0x1000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(v6 + 60) = self->_numPlayedSpeechPkt;
  v6[48] |= 0x4000000000uLL;
  v35 = self->_has;
  if ((v35 & 0x1000000000) == 0)
  {
LABEL_76:
    if ((v35 & 0x20000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_150;
  }

LABEL_149:
  *(v6 + 58) = self->_numMissedSpeechPkt;
  v6[48] |= 0x1000000000uLL;
  v35 = self->_has;
  if ((v35 & 0x20000000000) == 0)
  {
LABEL_77:
    if ((v35 & 0x10) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_150:
  *(v6 + 63) = self->_numSpeechQempty;
  v6[48] |= 0x20000000000uLL;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_78:
    *(v6 + 14) = self->_appCallId;
    v6[48] |= 0x10uLL;
  }

LABEL_79:
  PBRepeatedUInt32Copy();
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v6 + 29) = self->_dedicatedBrInactiveToEndMs;
    v6[48] |= 0x2000uLL;
  }

  v36 = [self->_lastAudioQualityCnt copyWithZone:zone];
  v37 = v6[21];
  v6[21] = v36;

  v38 = *p_has;
  if ((*p_has & 0x2000000000000) != 0)
  {
    *(v6 + 79) = self->_rtpPktLossPpt;
    v6[48] |= 0x2000000000000uLL;
    v38 = self->_has;
    if ((v38 & 0x400000000000000) == 0)
    {
LABEL_83:
      if ((v38 & 0x40000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_154;
    }
  }

  else if ((v38 & 0x400000000000000) == 0)
  {
    goto LABEL_83;
  }

  *(v6 + 91) = self->_uflwPktPpt;
  v6[48] |= 0x400000000000000uLL;
  v38 = self->_has;
  if ((v38 & 0x40000) == 0)
  {
LABEL_84:
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_155;
  }

LABEL_154:
  *(v6 + 34) = self->_frErasurePpt;
  v6[48] |= 0x40000uLL;
  v38 = self->_has;
  if ((v38 & 0x2000000000000000) == 0)
  {
LABEL_85:
    if ((v38 & 0x40) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(v6 + 373) = self->_badAudioQuality;
  v6[48] |= 0x2000000000000000uLL;
  v38 = self->_has;
  if ((v38 & 0x40) == 0)
  {
LABEL_86:
    if ((v38 & 0x20) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_156:
  *(v6 + 16) = self->_audioQualityThresholdPpt;
  v6[48] |= 0x40uLL;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_87:
    *(v6 + 15) = self->_audioQosDetectWinLenSec;
    v6[48] |= 0x20uLL;
  }

LABEL_88:
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v39 = self->_rfMeasInfos;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v53;
    do
    {
      for (m = 0; m != v41; m = m + 1)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v52 + 1) + 8 * m) copyWithZone:{zone, v52}];
        [v6 addRfMeasInfo:v44];
      }

      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v41);
  }

  v45 = *p_has;
  if ((*p_has & 0x100000) != 0)
  {
    *(v6 + 39) = self->_hstState;
    v6[48] |= 0x100000uLL;
    v45 = self->_has;
    if ((v45 & 0x200000000000) == 0)
    {
LABEL_97:
      if ((v45 & 0x40000000000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_160;
    }
  }

  else if ((v45 & 0x200000000000) == 0)
  {
    goto LABEL_97;
  }

  *(v6 + 70) = self->_psPref;
  v6[48] |= 0x200000000000uLL;
  v45 = self->_has;
  if ((v45 & 0x40000000000) == 0)
  {
LABEL_98:
    if ((v45 & 0x100000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(v6 + 64) = self->_numSubs;
  v6[48] |= 0x40000000000uLL;
  v45 = self->_has;
  if ((v45 & 0x100000000) == 0)
  {
LABEL_99:
    if ((v45 & 0x40000000000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_162;
  }

LABEL_161:
  *(v6 + 54) = self->_numCps;
  v6[48] |= &_mh_execute_header;
  v45 = self->_has;
  if ((v45 & 0x40000000000000) == 0)
  {
LABEL_100:
    if ((v45 & 0x10000000000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_163;
  }

LABEL_162:
  *(v6 + 87) = self->_sysModeO;
  v6[48] |= 0x40000000000000uLL;
  v45 = self->_has;
  if ((v45 & 0x10000000000000) == 0)
  {
LABEL_101:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

LABEL_163:
  *(v6 + 82) = self->_sidO;
  v6[48] |= 0x10000000000000uLL;
  if ((*&self->_has & 0x80000000) != 0)
  {
LABEL_102:
    *(v6 + 53) = self->_nidO;
    v6[48] |= 0x80000000uLL;
  }

LABEL_103:
  v46 = [(NSData *)self->_plmnO copyWithZone:zone, v52];
  v47 = v6[34];
  v6[34] = v46;

  v48 = *p_has;
  if ((*p_has & 0x1000000) != 0)
  {
    *(v6 + 46) = self->_lastRssi;
    v6[48] |= 0x1000000uLL;
    v48 = self->_has;
    if ((v48 & 0x800000) == 0)
    {
LABEL_105:
      if ((v48 & 0x4000000000000000) == 0)
      {
        goto LABEL_106;
      }

LABEL_167:
      *(v6 + 374) = self->_barredFromSib1;
      v6[48] |= 0x4000000000000000uLL;
      if ((*&self->_has & 0x8000000000000000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_168;
    }
  }

  else if ((v48 & 0x800000) == 0)
  {
    goto LABEL_105;
  }

  *(v6 + 45) = self->_lastRsrp;
  v6[48] |= 0x800000uLL;
  v48 = self->_has;
  if ((v48 & 0x4000000000000000) != 0)
  {
    goto LABEL_167;
  }

LABEL_106:
  if ((v48 & 0x8000000000000000) == 0)
  {
    goto LABEL_107;
  }

LABEL_168:
  *(v6 + 375) = self->_barredFromSib2;
  v6[48] |= 0x8000000000000000;
LABEL_107:
  if (*(&self->_has + 8))
  {
    *(v6 + 376) = self->_connectionRejected;
    *(v6 + 392) |= 1u;
  }

  v49 = *p_has;
  if ((*p_has & 0x400000) != 0)
  {
    *(v6 + 44) = self->_lastMotionState;
    v6[48] |= 0x400000uLL;
    v49 = self->_has;
    if ((v49 & 0x10000000) == 0)
    {
LABEL_111:
      if ((v49 & 0x800000000000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_171;
    }
  }

  else if ((v49 & 0x10000000) == 0)
  {
    goto LABEL_111;
  }

  *(v6 + 50) = self->_msSinceLastMotionState;
  v6[48] |= 0x10000000uLL;
  v49 = self->_has;
  if ((v49 & 0x800000000000000) == 0)
  {
LABEL_112:
    if ((v49 & 0x20000000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_172;
  }

LABEL_171:
  *(v6 + 92) = self->_version;
  v6[48] |= 0x800000000000000uLL;
  v49 = self->_has;
  if ((v49 & 0x20000000000000) == 0)
  {
LABEL_113:
    if ((v49 & 0x200000000000000) == 0)
    {
      goto LABEL_114;
    }

LABEL_173:
    *(v6 + 90) = self->_typeOfCall;
    v6[48] |= 0x200000000000000uLL;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

LABEL_172:
  *(v6 + 86) = self->_subsId;
  v6[48] |= 0x20000000000000uLL;
  v49 = self->_has;
  if ((v49 & 0x200000000000000) != 0)
  {
    goto LABEL_173;
  }

LABEL_114:
  if (v49)
  {
LABEL_115:
    v6[4] = self->_nr5gCellId;
    v6[48] |= 1uLL;
  }

LABEL_116:
  v50 = v6;

  return v50;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_397;
  }

  p_has = &self->_has;
  has = self->_has;
  v7 = equalCopy + 48;
  v8 = equalCopy[48];
  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_timestamp != equalCopy[5])
    {
      goto LABEL_397;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0 || self->_callEvent != *(equalCopy + 20))
    {
      goto LABEL_397;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_397;
  }

  callId = self->_callId;
  if (callId | equalCopy[11])
  {
    if (![(NSString *)callId isEqual:?])
    {
      goto LABEL_397;
    }

    has = *p_has;
  }

  v10 = *v7;
  if ((has & 0x4000) != 0)
  {
    if ((v10 & 0x4000) == 0 || self->_direction != *(equalCopy + 30))
    {
      goto LABEL_397;
    }
  }

  else if ((v10 & 0x4000) != 0)
  {
    goto LABEL_397;
  }

  v11 = *(equalCopy + 392);
  if ((*(&self->_has + 8) & 4) != 0)
  {
    if ((equalCopy[49] & 4) == 0)
    {
      goto LABEL_397;
    }

    v12 = *(equalCopy + 378);
    if (self->_isAltStart)
    {
      if ((*(equalCopy + 378) & 1) == 0)
      {
        goto LABEL_397;
      }
    }

    else if (*(equalCopy + 378))
    {
      goto LABEL_397;
    }
  }

  else if ((equalCopy[49] & 4) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x80000) != 0)
  {
    if ((v10 & 0x80000) == 0 || self->_hoAltSeqNum != *(equalCopy + 38))
    {
      goto LABEL_397;
    }
  }

  else if ((v10 & 0x80000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x8000) != 0)
  {
    if ((v10 & 0x8000) == 0 || self->_drxOn != *(equalCopy + 31))
    {
      goto LABEL_397;
    }
  }

  else if ((v10 & 0x8000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x10000) != 0)
  {
    if ((v10 & 0x10000) == 0 || self->_endStatus != *(equalCopy + 32))
    {
      goto LABEL_397;
    }
  }

  else if ((v10 & 0x10000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x1000000000000) != 0)
  {
    if ((v10 & 0x1000000000000) == 0 || self->_rrcRelCause != *(equalCopy + 78))
    {
      goto LABEL_397;
    }
  }

  else if ((v10 & 0x1000000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x200) != 0)
  {
    if ((v10 & 0x200) == 0 || self->_callDuration != *(equalCopy + 19))
    {
      goto LABEL_397;
    }
  }

  else if ((v10 & 0x200) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_antenna != *(equalCopy + 13))
    {
      goto LABEL_397;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_397;
  }

  if ((*(&self->_has + 8) & 2) != 0)
  {
    if ((equalCopy[49] & 2) == 0)
    {
      goto LABEL_397;
    }

    v13 = *(equalCopy + 377);
    if (self->_dueToHandover)
    {
      if ((*(equalCopy + 377) & 1) == 0)
      {
        goto LABEL_397;
      }
    }

    else if (*(equalCopy + 377))
    {
      goto LABEL_397;
    }
  }

  else if ((equalCopy[49] & 2) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x1000) != 0)
  {
    if ((v10 & 0x1000) == 0 || self->_cellId != *(equalCopy + 28))
    {
      goto LABEL_397;
    }
  }

  else if ((v10 & 0x1000) != 0)
  {
    goto LABEL_397;
  }

  simHplmn = self->_simHplmn;
  if (simHplmn | equalCopy[42])
  {
    if (![(NSData *)simHplmn isEqual:?])
    {
      goto LABEL_397;
    }

    has = *p_has;
  }

  v15 = *v7;
  if ((has & 0x2000000000) != 0)
  {
    if ((v15 & 0x2000000000) == 0 || self->_numMncDigits != *(equalCopy + 59))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 0x2000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x4000000) != 0)
  {
    if ((v15 & 0x4000000) == 0 || self->_mcc != *(equalCopy + 48))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 0x4000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x8000000) != 0)
  {
    if ((v15 & 0x8000000) == 0 || self->_mnc != *(equalCopy + 49))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 0x8000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x200000) != 0)
  {
    if ((v15 & 0x200000) == 0 || self->_lac != *(equalCopy + 40))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 0x200000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x80) != 0)
  {
    if ((v15 & 0x80) == 0 || self->_band != *(equalCopy + 17))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 0x80) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x800000000000) != 0)
  {
    if ((v15 & 0x800000000000) == 0 || self->_rfChannel != *(equalCopy + 75))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 0x800000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x100000000000000) != 0)
  {
    if ((v15 & 0x100000000000000) == 0 || self->_tsAccuracyHour != *(equalCopy + 89))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 0x100000000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x1000000000000000) != 0)
  {
    if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_397;
    }

    v16 = *(equalCopy + 372);
    if (self->_accessoryAttached)
    {
      if ((*(equalCopy + 372) & 1) == 0)
      {
        goto LABEL_397;
      }
    }

    else if (*(equalCopy + 372))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 4) != 0)
  {
    if ((v15 & 4) == 0 || self->_accessoryAttachedBitmap != *(equalCopy + 12))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 4) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x8000000000000) != 0)
  {
    if ((v15 & 0x8000000000000) == 0 || self->_setupSysMode != *(equalCopy + 81))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 0x8000000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x4000000000000) != 0)
  {
    if ((v15 & 0x4000000000000) == 0 || self->_setupDirection != *(equalCopy + 80))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 0x4000000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x800) != 0)
  {
    if ((v15 & 0x800) == 0 || self->_callSetupTimeMs != *(equalCopy + 24))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 0x800) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x40000000) != 0)
  {
    if ((v15 & 0x40000000) == 0 || self->_mtplInPoint1Db != *(equalCopy + 52))
    {
      goto LABEL_397;
    }
  }

  else if ((v15 & 0x40000000) != 0)
  {
    goto LABEL_397;
  }

  capEvents = self->_capEvents;
  if (capEvents | equalCopy[13])
  {
    if (![(NSMutableArray *)capEvents isEqual:?])
    {
      goto LABEL_397;
    }

    has = *p_has;
  }

  v18 = *v7;
  if ((has & 0x2000000) != 0)
  {
    if ((v18 & 0x2000000) == 0 || self->_lastXSec != *(equalCopy + 47))
    {
      goto LABEL_397;
    }
  }

  else if ((v18 & 0x2000000) != 0)
  {
    goto LABEL_397;
  }

  v19 = *(equalCopy + 392);
  if ((*(&self->_has + 8) & 0x10) != 0)
  {
    if ((equalCopy[49] & 0x10) == 0)
    {
      goto LABEL_397;
    }

    v20 = *(equalCopy + 380);
    if (self->_lastXSecUlMrab)
    {
      if ((*(equalCopy + 380) & 1) == 0)
      {
        goto LABEL_397;
      }
    }

    else if (*(equalCopy + 380))
    {
      goto LABEL_397;
    }
  }

  else if ((equalCopy[49] & 0x10) != 0)
  {
    goto LABEL_397;
  }

  if ((*(&self->_has + 8) & 8) != 0)
  {
    if ((equalCopy[49] & 8) == 0)
    {
      goto LABEL_397;
    }

    v21 = *(equalCopy + 379);
    if (self->_lastXSecDlMrab)
    {
      if ((*(equalCopy + 379) & 1) == 0)
      {
        goto LABEL_397;
      }
    }

    else if (*(equalCopy + 379))
    {
      goto LABEL_397;
    }
  }

  else if ((equalCopy[49] & 8) != 0)
  {
    goto LABEL_397;
  }

  rbDatas = self->_rbDatas;
  if (rbDatas | equalCopy[36])
  {
    if (![(NSMutableArray *)rbDatas isEqual:?])
    {
      goto LABEL_397;
    }

    has = *p_has;
  }

  v23 = *v7;
  if ((has & 0x20000000) != 0)
  {
    if ((v23 & 0x20000000) == 0 || self->_msgId != *(equalCopy + 51))
    {
      goto LABEL_397;
    }
  }

  else if ((v23 & 0x20000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x20000) != 0)
  {
    if ((v23 & 0x20000) == 0 || self->_eventId != *(equalCopy + 33))
    {
      goto LABEL_397;
    }
  }

  else if ((v23 & 0x20000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x400000000000) != 0)
  {
    if ((v23 & 0x400000000000) == 0 || self->_responseCode != *(equalCopy + 74))
    {
      goto LABEL_397;
    }
  }

  else if ((v23 & 0x400000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x100) != 0)
  {
    if ((v23 & 0x100) == 0 || self->_callConnectDur != *(equalCopy + 18))
    {
      goto LABEL_397;
    }
  }

  else if ((v23 & 0x100) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x80000000000000) != 0)
  {
    if ((v23 & 0x80000000000000) == 0 || self->_tbMs != *(equalCopy + 88))
    {
      goto LABEL_397;
    }
  }

  else if ((v23 & 0x80000000000000) != 0)
  {
    goto LABEL_397;
  }

  hcStats = self->_hcStats;
  if (hcStats | equalCopy[18])
  {
    if (![(NSMutableArray *)hcStats isEqual:?])
    {
      goto LABEL_397;
    }

    has = *p_has;
  }

  v25 = *v7;
  if ((has & 0x10000000000) != 0)
  {
    if ((v25 & 0x10000000000) == 0 || self->_numRecvdSpeechPkt != *(equalCopy + 62))
    {
      goto LABEL_397;
    }
  }

  else if ((v25 & 0x10000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x8000000000) != 0)
  {
    if ((v25 & 0x8000000000) == 0 || self->_numRecvdSilencePkt != *(equalCopy + 61))
    {
      goto LABEL_397;
    }
  }

  else if ((v25 & 0x8000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x800000000) != 0)
  {
    if ((v25 & 0x800000000) == 0 || self->_numLostPkt != *(equalCopy + 57))
    {
      goto LABEL_397;
    }
  }

  else if ((v25 & 0x800000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x100000000000) != 0)
  {
    if ((v25 & 0x100000000000) == 0 || self->_numUflwSpeechPkt != *(equalCopy + 66))
    {
      goto LABEL_397;
    }
  }

  else if ((v25 & 0x100000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x80000000000) != 0)
  {
    if ((v25 & 0x80000000000) == 0 || self->_numUflwSilencePkt != *(equalCopy + 65))
    {
      goto LABEL_397;
    }
  }

  else if ((v25 & 0x80000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x400000000) != 0)
  {
    if ((v25 & 0x400000000) == 0 || self->_numEnqdSpeechPkt != *(equalCopy + 56))
    {
      goto LABEL_397;
    }
  }

  else if ((v25 & 0x400000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x200000000) != 0)
  {
    if ((v25 & 0x200000000) == 0 || self->_numEnqdSilencePkt != *(equalCopy + 55))
    {
      goto LABEL_397;
    }
  }

  else if ((v25 & 0x200000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x4000000000) != 0)
  {
    if ((v25 & 0x4000000000) == 0 || self->_numPlayedSpeechPkt != *(equalCopy + 60))
    {
      goto LABEL_397;
    }
  }

  else if ((v25 & 0x4000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x1000000000) != 0)
  {
    if ((v25 & 0x1000000000) == 0 || self->_numMissedSpeechPkt != *(equalCopy + 58))
    {
      goto LABEL_397;
    }
  }

  else if ((v25 & 0x1000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x20000000000) != 0)
  {
    if ((v25 & 0x20000000000) == 0 || self->_numSpeechQempty != *(equalCopy + 63))
    {
      goto LABEL_397;
    }
  }

  else if ((v25 & 0x20000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((has & 0x10) != 0)
  {
    if ((v25 & 0x10) == 0 || self->_appCallId != *(equalCopy + 14))
    {
      goto LABEL_397;
    }
  }

  else if ((v25 & 0x10) != 0)
  {
    goto LABEL_397;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_397:
    v38 = 0;
    goto LABEL_398;
  }

  v26 = *p_has;
  v27 = *v7;
  if ((*p_has & 0x2000) != 0)
  {
    if ((v27 & 0x2000) == 0 || self->_dedicatedBrInactiveToEndMs != *(equalCopy + 29))
    {
      goto LABEL_397;
    }
  }

  else if ((v27 & 0x2000) != 0)
  {
    goto LABEL_397;
  }

  lastAudioQualityCnt = self->_lastAudioQualityCnt;
  if (lastAudioQualityCnt | equalCopy[21])
  {
    if (![lastAudioQualityCnt isEqual:?])
    {
      goto LABEL_397;
    }

    v26 = *p_has;
  }

  v29 = *v7;
  if ((v26 & 0x2000000000000) != 0)
  {
    if ((v29 & 0x2000000000000) == 0 || self->_rtpPktLossPpt != *(equalCopy + 79))
    {
      goto LABEL_397;
    }
  }

  else if ((v29 & 0x2000000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x400000000000000) != 0)
  {
    if ((v29 & 0x400000000000000) == 0 || self->_uflwPktPpt != *(equalCopy + 91))
    {
      goto LABEL_397;
    }
  }

  else if ((v29 & 0x400000000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x40000) != 0)
  {
    if ((v29 & 0x40000) == 0 || self->_frErasurePpt != *(equalCopy + 34))
    {
      goto LABEL_397;
    }
  }

  else if ((v29 & 0x40000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x2000000000000000) != 0)
  {
    if ((v29 & 0x2000000000000000) == 0)
    {
      goto LABEL_397;
    }

    v30 = *(equalCopy + 373);
    if (self->_badAudioQuality)
    {
      if ((*(equalCopy + 373) & 1) == 0)
      {
        goto LABEL_397;
      }
    }

    else if (*(equalCopy + 373))
    {
      goto LABEL_397;
    }
  }

  else if ((v29 & 0x2000000000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x40) != 0)
  {
    if ((v29 & 0x40) == 0 || self->_audioQualityThresholdPpt != *(equalCopy + 16))
    {
      goto LABEL_397;
    }
  }

  else if ((v29 & 0x40) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x20) != 0)
  {
    if ((v29 & 0x20) == 0 || self->_audioQosDetectWinLenSec != *(equalCopy + 15))
    {
      goto LABEL_397;
    }
  }

  else if ((v29 & 0x20) != 0)
  {
    goto LABEL_397;
  }

  rfMeasInfos = self->_rfMeasInfos;
  if (rfMeasInfos | equalCopy[38])
  {
    if (![(NSMutableArray *)rfMeasInfos isEqual:?])
    {
      goto LABEL_397;
    }

    v26 = *p_has;
  }

  v32 = *v7;
  if ((v26 & 0x100000) != 0)
  {
    if ((v32 & 0x100000) == 0 || self->_hstState != *(equalCopy + 39))
    {
      goto LABEL_397;
    }
  }

  else if ((v32 & 0x100000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x200000000000) != 0)
  {
    if ((v32 & 0x200000000000) == 0 || self->_psPref != *(equalCopy + 70))
    {
      goto LABEL_397;
    }
  }

  else if ((v32 & 0x200000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x40000000000) != 0)
  {
    if ((v32 & 0x40000000000) == 0 || self->_numSubs != *(equalCopy + 64))
    {
      goto LABEL_397;
    }
  }

  else if ((v32 & 0x40000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x100000000) != 0)
  {
    if ((v32 & 0x100000000) == 0 || self->_numCps != *(equalCopy + 54))
    {
      goto LABEL_397;
    }
  }

  else if ((v32 & 0x100000000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x40000000000000) != 0)
  {
    if ((v32 & 0x40000000000000) == 0 || self->_sysModeO != *(equalCopy + 87))
    {
      goto LABEL_397;
    }
  }

  else if ((v32 & 0x40000000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x10000000000000) != 0)
  {
    if ((v32 & 0x10000000000000) == 0 || self->_sidO != *(equalCopy + 82))
    {
      goto LABEL_397;
    }
  }

  else if ((v32 & 0x10000000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x80000000) != 0)
  {
    if ((v32 & 0x80000000) == 0 || self->_nidO != *(equalCopy + 53))
    {
      goto LABEL_397;
    }
  }

  else if ((v32 & 0x80000000) != 0)
  {
    goto LABEL_397;
  }

  plmnO = self->_plmnO;
  if (plmnO | equalCopy[34])
  {
    if (![(NSData *)plmnO isEqual:?])
    {
      goto LABEL_397;
    }

    v26 = *p_has;
  }

  v34 = *v7;
  if ((v26 & 0x1000000) != 0)
  {
    if ((v34 & 0x1000000) == 0 || self->_lastRssi != *(equalCopy + 46))
    {
      goto LABEL_397;
    }
  }

  else if ((v34 & 0x1000000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x800000) != 0)
  {
    if ((v34 & 0x800000) == 0 || self->_lastRsrp != *(equalCopy + 45))
    {
      goto LABEL_397;
    }
  }

  else if ((v34 & 0x800000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x4000000000000000) != 0)
  {
    if ((v34 & 0x4000000000000000) == 0)
    {
      goto LABEL_397;
    }

    v35 = *(equalCopy + 374);
    if (self->_barredFromSib1)
    {
      if ((*(equalCopy + 374) & 1) == 0)
      {
        goto LABEL_397;
      }
    }

    else if (*(equalCopy + 374))
    {
      goto LABEL_397;
    }
  }

  else if ((v34 & 0x4000000000000000) != 0)
  {
    goto LABEL_397;
  }

  if (v26 < 0)
  {
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_397;
    }

    v36 = *(equalCopy + 375);
    if (self->_barredFromSib2)
    {
      if ((*(equalCopy + 375) & 1) == 0)
      {
        goto LABEL_397;
      }
    }

    else if (*(equalCopy + 375))
    {
      goto LABEL_397;
    }
  }

  else if (v34 < 0)
  {
    goto LABEL_397;
  }

  v37 = *(equalCopy + 392);
  if ((*(&self->_has + 8) & 1) == 0)
  {
    goto LABEL_366;
  }

  if ((equalCopy[49] & 1) == 0)
  {
    goto LABEL_397;
  }

  v37 = *(equalCopy + 376);
  if (!self->_connectionRejected)
  {
LABEL_366:
    if ((v37 & 1) == 0)
    {
      goto LABEL_367;
    }

    goto LABEL_397;
  }

  if ((equalCopy[47] & 1) == 0)
  {
    goto LABEL_397;
  }

LABEL_367:
  if ((v26 & 0x400000) != 0)
  {
    if ((v34 & 0x400000) == 0 || self->_lastMotionState != *(equalCopy + 44))
    {
      goto LABEL_397;
    }
  }

  else if ((v34 & 0x400000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x10000000) != 0)
  {
    if ((v34 & 0x10000000) == 0 || self->_msSinceLastMotionState != *(equalCopy + 50))
    {
      goto LABEL_397;
    }
  }

  else if ((v34 & 0x10000000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x800000000000000) != 0)
  {
    if ((v34 & 0x800000000000000) == 0 || self->_version != *(equalCopy + 92))
    {
      goto LABEL_397;
    }
  }

  else if ((v34 & 0x800000000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x20000000000000) != 0)
  {
    if ((v34 & 0x20000000000000) == 0 || self->_subsId != *(equalCopy + 86))
    {
      goto LABEL_397;
    }
  }

  else if ((v34 & 0x20000000000000) != 0)
  {
    goto LABEL_397;
  }

  if ((v26 & 0x200000000000000) != 0)
  {
    if ((v34 & 0x200000000000000) == 0 || self->_typeOfCall != *(equalCopy + 90))
    {
      goto LABEL_397;
    }
  }

  else if ((v34 & 0x200000000000000) != 0)
  {
    goto LABEL_397;
  }

  if (v26)
  {
    if ((v34 & 1) == 0 || self->_nr5gCellId != equalCopy[4])
    {
      goto LABEL_397;
    }

    v38 = 1;
  }

  else
  {
    v38 = (*v7 & 1) == 0;
  }

LABEL_398:

  return v38;
}

- (unint64_t)hash
{
  p_has = &self->_has;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v91 = 2654435761u * self->_timestamp;
    if ((has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v91 = 0;
    if ((has & 0x400) != 0)
    {
LABEL_3:
      v90 = 2654435761 * self->_callEvent;
      goto LABEL_6;
    }
  }

  v90 = 0;
LABEL_6:
  v89 = [(NSString *)self->_callId hash];
  v5 = *p_has;
  if ((*p_has & 0x4000) != 0)
  {
    v88 = 2654435761 * self->_direction;
  }

  else
  {
    v88 = 0;
  }

  if ((*(p_has + 8) & 4) != 0)
  {
    v87 = 2654435761 * self->_isAltStart;
    if ((v5 & 0x80000) != 0)
    {
LABEL_11:
      v86 = 2654435761 * self->_hoAltSeqNum;
      if ((v5 & 0x8000) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v87 = 0;
    if ((v5 & 0x80000) != 0)
    {
      goto LABEL_11;
    }
  }

  v86 = 0;
  if ((v5 & 0x8000) != 0)
  {
LABEL_12:
    v85 = 2654435761 * self->_drxOn;
    if ((v5 & 0x10000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v85 = 0;
  if ((v5 & 0x10000) != 0)
  {
LABEL_13:
    v84 = 2654435761 * self->_endStatus;
    if ((v5 & 0x1000000000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v84 = 0;
  if ((v5 & 0x1000000000000) != 0)
  {
LABEL_14:
    v83 = 2654435761 * self->_rrcRelCause;
    if ((v5 & 0x200) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  v83 = 0;
  if ((v5 & 0x200) != 0)
  {
LABEL_15:
    v82 = 2654435761 * self->_callDuration;
    if ((v5 & 8) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  v82 = 0;
  if ((v5 & 8) != 0)
  {
LABEL_16:
    v81 = 2654435761 * self->_antenna;
    if ((*(p_has + 8) & 2) != 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    v80 = 0;
    if ((v5 & 0x1000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_25:
  v81 = 0;
  if ((*(p_has + 8) & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  v80 = 2654435761 * self->_dueToHandover;
  if ((v5 & 0x1000) != 0)
  {
LABEL_18:
    v79 = 2654435761 * self->_cellId;
    goto LABEL_28;
  }

LABEL_27:
  v79 = 0;
LABEL_28:
  v78 = [(NSData *)self->_simHplmn hash];
  v6 = *p_has;
  if ((*p_has & 0x2000000000) != 0)
  {
    v77 = 2654435761 * self->_numMncDigits;
    if ((v6 & 0x4000000) != 0)
    {
LABEL_30:
      v76 = 2654435761 * self->_mcc;
      if ((v6 & 0x8000000) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v77 = 0;
    if ((v6 & 0x4000000) != 0)
    {
      goto LABEL_30;
    }
  }

  v76 = 0;
  if ((v6 & 0x8000000) != 0)
  {
LABEL_31:
    v75 = 2654435761 * self->_mnc;
    if ((v6 & 0x200000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_45;
  }

LABEL_44:
  v75 = 0;
  if ((v6 & 0x200000) != 0)
  {
LABEL_32:
    v74 = 2654435761 * self->_lac;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_46;
  }

LABEL_45:
  v74 = 0;
  if ((v6 & 0x80) != 0)
  {
LABEL_33:
    v73 = 2654435761 * self->_band;
    if ((v6 & 0x800000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

LABEL_46:
  v73 = 0;
  if ((v6 & 0x800000000000) != 0)
  {
LABEL_34:
    v72 = 2654435761 * self->_rfChannel;
    if ((v6 & 0x100000000000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_48;
  }

LABEL_47:
  v72 = 0;
  if ((v6 & 0x100000000000000) != 0)
  {
LABEL_35:
    v71 = 2654435761 * self->_tsAccuracyHour;
    if ((v6 & 0x1000000000000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_49;
  }

LABEL_48:
  v71 = 0;
  if ((v6 & 0x1000000000000000) != 0)
  {
LABEL_36:
    v70 = 2654435761 * self->_accessoryAttached;
    if ((v6 & 4) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_50;
  }

LABEL_49:
  v70 = 0;
  if ((v6 & 4) != 0)
  {
LABEL_37:
    v69 = 2654435761 * self->_accessoryAttachedBitmap;
    if ((v6 & 0x8000000000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  v69 = 0;
  if ((v6 & 0x8000000000000) != 0)
  {
LABEL_38:
    v68 = 2654435761 * self->_setupSysMode;
    if ((v6 & 0x4000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

LABEL_51:
  v68 = 0;
  if ((v6 & 0x4000000000000) != 0)
  {
LABEL_39:
    v67 = 2654435761 * self->_setupDirection;
    if ((v6 & 0x800) != 0)
    {
      goto LABEL_40;
    }

LABEL_53:
    v66 = 0;
    if ((v6 & 0x40000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_54;
  }

LABEL_52:
  v67 = 0;
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_53;
  }

LABEL_40:
  v66 = 2654435761 * self->_callSetupTimeMs;
  if ((v6 & 0x40000000) != 0)
  {
LABEL_41:
    v65 = 2654435761 * self->_mtplInPoint1Db;
    goto LABEL_55;
  }

LABEL_54:
  v65 = 0;
LABEL_55:
  v64 = [(NSMutableArray *)self->_capEvents hash];
  if ((*(p_has + 3) & 2) != 0)
  {
    v63 = 2654435761 * self->_lastXSec;
  }

  else
  {
    v63 = 0;
  }

  if ((*(p_has + 8) & 0x10) != 0)
  {
    v62 = 2654435761 * self->_lastXSecUlMrab;
    if ((*(p_has + 8) & 8) != 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v62 = 0;
    if ((*(p_has + 8) & 8) != 0)
    {
LABEL_60:
      v61 = 2654435761 * self->_lastXSecDlMrab;
      goto LABEL_63;
    }
  }

  v61 = 0;
LABEL_63:
  v60 = [(NSMutableArray *)self->_rbDatas hash];
  v7 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    v59 = 2654435761 * self->_msgId;
    if ((v7 & 0x20000) != 0)
    {
LABEL_65:
      v58 = 2654435761 * self->_eventId;
      if ((v7 & 0x400000000000) != 0)
      {
        goto LABEL_66;
      }

      goto LABEL_71;
    }
  }

  else
  {
    v59 = 0;
    if ((v7 & 0x20000) != 0)
    {
      goto LABEL_65;
    }
  }

  v58 = 0;
  if ((v7 & 0x400000000000) != 0)
  {
LABEL_66:
    v57 = 2654435761 * self->_responseCode;
    if ((v7 & 0x100) != 0)
    {
      goto LABEL_67;
    }

LABEL_72:
    v56 = 0;
    if ((v7 & 0x80000000000000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_73;
  }

LABEL_71:
  v57 = 0;
  if ((v7 & 0x100) == 0)
  {
    goto LABEL_72;
  }

LABEL_67:
  v56 = 2654435761 * self->_callConnectDur;
  if ((v7 & 0x80000000000000) != 0)
  {
LABEL_68:
    v55 = 2654435761 * self->_tbMs;
    goto LABEL_74;
  }

LABEL_73:
  v55 = 0;
LABEL_74:
  v54 = [(NSMutableArray *)self->_hcStats hash];
  v8 = *p_has;
  if ((*p_has & 0x10000000000) != 0)
  {
    v53 = 2654435761 * self->_numRecvdSpeechPkt;
    if ((v8 & 0x8000000000) != 0)
    {
LABEL_76:
      v52 = 2654435761 * self->_numRecvdSilencePkt;
      if ((v8 & 0x800000000) != 0)
      {
        goto LABEL_77;
      }

      goto LABEL_88;
    }
  }

  else
  {
    v53 = 0;
    if ((v8 & 0x8000000000) != 0)
    {
      goto LABEL_76;
    }
  }

  v52 = 0;
  if ((v8 & 0x800000000) != 0)
  {
LABEL_77:
    v51 = 2654435761 * self->_numLostPkt;
    if ((v8 & 0x100000000000) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_89;
  }

LABEL_88:
  v51 = 0;
  if ((v8 & 0x100000000000) != 0)
  {
LABEL_78:
    v50 = 2654435761 * self->_numUflwSpeechPkt;
    if ((v8 & 0x80000000000) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_90;
  }

LABEL_89:
  v50 = 0;
  if ((v8 & 0x80000000000) != 0)
  {
LABEL_79:
    v49 = 2654435761 * self->_numUflwSilencePkt;
    if ((v8 & 0x400000000) != 0)
    {
      goto LABEL_80;
    }

    goto LABEL_91;
  }

LABEL_90:
  v49 = 0;
  if ((v8 & 0x400000000) != 0)
  {
LABEL_80:
    v48 = 2654435761 * self->_numEnqdSpeechPkt;
    if ((v8 & 0x200000000) != 0)
    {
      goto LABEL_81;
    }

    goto LABEL_92;
  }

LABEL_91:
  v48 = 0;
  if ((v8 & 0x200000000) != 0)
  {
LABEL_81:
    v47 = 2654435761 * self->_numEnqdSilencePkt;
    if ((v8 & 0x4000000000) != 0)
    {
      goto LABEL_82;
    }

    goto LABEL_93;
  }

LABEL_92:
  v47 = 0;
  if ((v8 & 0x4000000000) != 0)
  {
LABEL_82:
    v46 = 2654435761 * self->_numPlayedSpeechPkt;
    if ((v8 & 0x1000000000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_94;
  }

LABEL_93:
  v46 = 0;
  if ((v8 & 0x1000000000) != 0)
  {
LABEL_83:
    v45 = 2654435761 * self->_numMissedSpeechPkt;
    if ((v8 & 0x20000000000) != 0)
    {
      goto LABEL_84;
    }

LABEL_95:
    v44 = 0;
    if ((v8 & 0x10) != 0)
    {
      goto LABEL_85;
    }

    goto LABEL_96;
  }

LABEL_94:
  v45 = 0;
  if ((v8 & 0x20000000000) == 0)
  {
    goto LABEL_95;
  }

LABEL_84:
  v44 = 2654435761 * self->_numSpeechQempty;
  if ((v8 & 0x10) != 0)
  {
LABEL_85:
    v43 = 2654435761 * self->_appCallId;
    goto LABEL_97;
  }

LABEL_96:
  v43 = 0;
LABEL_97:
  v42 = PBRepeatedUInt32Hash();
  if ((*(p_has + 1) & 0x20) != 0)
  {
    v41 = 2654435761 * self->_dedicatedBrInactiveToEndMs;
  }

  else
  {
    v41 = 0;
  }

  v40 = [self->_lastAudioQualityCnt hash];
  v9 = *p_has;
  if ((*p_has & 0x2000000000000) != 0)
  {
    v39 = 2654435761 * self->_rtpPktLossPpt;
    if ((v9 & 0x400000000000000) != 0)
    {
LABEL_102:
      v38 = 2654435761 * self->_uflwPktPpt;
      if ((v9 & 0x40000) != 0)
      {
        goto LABEL_103;
      }

      goto LABEL_109;
    }
  }

  else
  {
    v39 = 0;
    if ((v9 & 0x400000000000000) != 0)
    {
      goto LABEL_102;
    }
  }

  v38 = 0;
  if ((v9 & 0x40000) != 0)
  {
LABEL_103:
    v37 = 2654435761 * self->_frErasurePpt;
    if ((v9 & 0x2000000000000000) != 0)
    {
      goto LABEL_104;
    }

    goto LABEL_110;
  }

LABEL_109:
  v37 = 0;
  if ((v9 & 0x2000000000000000) != 0)
  {
LABEL_104:
    v36 = 2654435761 * self->_badAudioQuality;
    if ((v9 & 0x40) != 0)
    {
      goto LABEL_105;
    }

LABEL_111:
    v35 = 0;
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_106;
    }

    goto LABEL_112;
  }

LABEL_110:
  v36 = 0;
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_111;
  }

LABEL_105:
  v35 = 2654435761 * self->_audioQualityThresholdPpt;
  if ((v9 & 0x20) != 0)
  {
LABEL_106:
    v34 = 2654435761 * self->_audioQosDetectWinLenSec;
    goto LABEL_113;
  }

LABEL_112:
  v34 = 0;
LABEL_113:
  v32 = [(NSMutableArray *)self->_rfMeasInfos hash];
  v10 = *p_has;
  if ((*p_has & 0x100000) != 0)
  {
    v11 = 2654435761 * self->_hstState;
    if ((v10 & 0x200000000000) != 0)
    {
LABEL_115:
      v12 = 2654435761 * self->_psPref;
      if ((v10 & 0x40000000000) != 0)
      {
        goto LABEL_116;
      }

      goto LABEL_123;
    }
  }

  else
  {
    v11 = 0;
    if ((v10 & 0x200000000000) != 0)
    {
      goto LABEL_115;
    }
  }

  v12 = 0;
  if ((v10 & 0x40000000000) != 0)
  {
LABEL_116:
    v13 = 2654435761 * self->_numSubs;
    if ((v10 & 0x100000000) != 0)
    {
      goto LABEL_117;
    }

    goto LABEL_124;
  }

LABEL_123:
  v13 = 0;
  if ((v10 & 0x100000000) != 0)
  {
LABEL_117:
    v14 = 2654435761 * self->_numCps;
    if ((v10 & 0x40000000000000) != 0)
    {
      goto LABEL_118;
    }

    goto LABEL_125;
  }

LABEL_124:
  v14 = 0;
  if ((v10 & 0x40000000000000) != 0)
  {
LABEL_118:
    v15 = 2654435761 * self->_sysModeO;
    if ((v10 & 0x10000000000000) != 0)
    {
      goto LABEL_119;
    }

LABEL_126:
    v16 = 0;
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_120;
    }

    goto LABEL_127;
  }

LABEL_125:
  v15 = 0;
  if ((v10 & 0x10000000000000) == 0)
  {
    goto LABEL_126;
  }

LABEL_119:
  v16 = 2654435761 * self->_sidO;
  if ((v10 & 0x80000000) != 0)
  {
LABEL_120:
    v17 = 2654435761 * self->_nidO;
    goto LABEL_128;
  }

LABEL_127:
  v17 = 0;
LABEL_128:
  v18 = [(NSData *)self->_plmnO hash];
  v19 = *p_has;
  if ((*p_has & 0x1000000) != 0)
  {
    v20 = 2654435761 * self->_lastRssi;
    if ((v19 & 0x800000) != 0)
    {
LABEL_130:
      v21 = 2654435761 * self->_lastRsrp;
      if ((v19 & 0x4000000000000000) != 0)
      {
        goto LABEL_131;
      }

LABEL_135:
      v22 = 0;
      if (v19 < 0)
      {
        goto LABEL_132;
      }

      goto LABEL_136;
    }
  }

  else
  {
    v20 = 0;
    if ((v19 & 0x800000) != 0)
    {
      goto LABEL_130;
    }
  }

  v21 = 0;
  if ((v19 & 0x4000000000000000) == 0)
  {
    goto LABEL_135;
  }

LABEL_131:
  v22 = 2654435761 * self->_barredFromSib1;
  if (v19 < 0)
  {
LABEL_132:
    v23 = 2654435761 * self->_barredFromSib2;
    goto LABEL_137;
  }

LABEL_136:
  v23 = 0;
LABEL_137:
  if (*(p_has + 8))
  {
    v24 = 2654435761 * self->_connectionRejected;
    if ((v19 & 0x400000) != 0)
    {
LABEL_139:
      v25 = 2654435761 * self->_lastMotionState;
      if ((v19 & 0x10000000) != 0)
      {
        goto LABEL_140;
      }

      goto LABEL_147;
    }
  }

  else
  {
    v24 = 0;
    if ((v19 & 0x400000) != 0)
    {
      goto LABEL_139;
    }
  }

  v25 = 0;
  if ((v19 & 0x10000000) != 0)
  {
LABEL_140:
    v26 = 2654435761 * self->_msSinceLastMotionState;
    if ((v19 & 0x800000000000000) != 0)
    {
      goto LABEL_141;
    }

    goto LABEL_148;
  }

LABEL_147:
  v26 = 0;
  if ((v19 & 0x800000000000000) != 0)
  {
LABEL_141:
    v27 = 2654435761 * self->_version;
    if ((v19 & 0x20000000000000) != 0)
    {
      goto LABEL_142;
    }

    goto LABEL_149;
  }

LABEL_148:
  v27 = 0;
  if ((v19 & 0x20000000000000) != 0)
  {
LABEL_142:
    v28 = 2654435761 * self->_subsId;
    if ((v19 & 0x200000000000000) != 0)
    {
      goto LABEL_143;
    }

LABEL_150:
    v29 = 0;
    if (v19)
    {
      goto LABEL_144;
    }

LABEL_151:
    v30 = 0;
    return v90 ^ v91 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v89 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
  }

LABEL_149:
  v28 = 0;
  if ((v19 & 0x200000000000000) == 0)
  {
    goto LABEL_150;
  }

LABEL_143:
  v29 = 2654435761 * self->_typeOfCall;
  if ((v19 & 1) == 0)
  {
    goto LABEL_151;
  }

LABEL_144:
  v30 = 2654435761u * self->_nr5gCellId;
  return v90 ^ v91 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v89 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = fromCopy + 384;
  v7 = *(fromCopy + 48);
  if ((v7 & 2) != 0)
  {
    self->_timestamp = *(fromCopy + 5);
    *&self->_has |= 2uLL;
    v7 = *(fromCopy + 48);
  }

  if ((v7 & 0x400) != 0)
  {
    self->_callEvent = *(fromCopy + 20);
    *&self->_has |= 0x400uLL;
  }

  if (*(fromCopy + 11))
  {
    [(CellularVoiceCallEvent *)self setCallId:?];
  }

  if ((v6[1] & 0x40) != 0)
  {
    self->_direction = *(v5 + 30);
    *&self->_has |= 0x4000uLL;
  }

  if ((v6[8] & 4) != 0)
  {
    self->_isAltStart = *(v5 + 378);
    *(&self->_has + 8) |= 4u;
  }

  v8 = *v6;
  if ((*v6 & 0x80000) != 0)
  {
    self->_hoAltSeqNum = *(v5 + 38);
    *&self->_has |= 0x80000uLL;
    v8 = *(v5 + 48);
    if ((v8 & 0x8000) == 0)
    {
LABEL_13:
      if ((v8 & 0x10000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_93;
    }
  }

  else if ((v8 & 0x8000) == 0)
  {
    goto LABEL_13;
  }

  self->_drxOn = *(v5 + 31);
  *&self->_has |= 0x8000uLL;
  v8 = *(v5 + 48);
  if ((v8 & 0x10000) == 0)
  {
LABEL_14:
    if ((v8 & 0x1000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_endStatus = *(v5 + 32);
  *&self->_has |= 0x10000uLL;
  v8 = *(v5 + 48);
  if ((v8 & 0x1000000000000) == 0)
  {
LABEL_15:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_rrcRelCause = *(v5 + 78);
  *&self->_has |= 0x1000000000000uLL;
  v8 = *(v5 + 48);
  if ((v8 & 0x200) == 0)
  {
LABEL_16:
    if ((v8 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_95:
  self->_callDuration = *(v5 + 19);
  *&self->_has |= 0x200uLL;
  if ((*(v5 + 48) & 8) != 0)
  {
LABEL_17:
    self->_antenna = *(v5 + 13);
    *&self->_has |= 8uLL;
  }

LABEL_18:
  if ((v6[8] & 2) != 0)
  {
    self->_dueToHandover = *(v5 + 377);
    *(&self->_has + 8) |= 2u;
  }

  if ((v6[1] & 0x10) != 0)
  {
    self->_cellId = *(v5 + 28);
    *&self->_has |= 0x1000uLL;
  }

  if (*(v5 + 42))
  {
    [(CellularVoiceCallEvent *)self setSimHplmn:?];
  }

  v9 = *v6;
  if ((*v6 & 0x2000000000) != 0)
  {
    self->_numMncDigits = *(v5 + 59);
    *&self->_has |= 0x2000000000uLL;
    v9 = *(v5 + 48);
    if ((v9 & 0x4000000) == 0)
    {
LABEL_26:
      if ((v9 & 0x8000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_99;
    }
  }

  else if ((v9 & 0x4000000) == 0)
  {
    goto LABEL_26;
  }

  self->_mcc = *(v5 + 48);
  *&self->_has |= 0x4000000uLL;
  v9 = *(v5 + 48);
  if ((v9 & 0x8000000) == 0)
  {
LABEL_27:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_mnc = *(v5 + 49);
  *&self->_has |= 0x8000000uLL;
  v9 = *(v5 + 48);
  if ((v9 & 0x200000) == 0)
  {
LABEL_28:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_101;
  }

LABEL_100:
  self->_lac = *(v5 + 40);
  *&self->_has |= 0x200000uLL;
  v9 = *(v5 + 48);
  if ((v9 & 0x80) == 0)
  {
LABEL_29:
    if ((v9 & 0x800000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_102;
  }

LABEL_101:
  self->_band = *(v5 + 17);
  *&self->_has |= 0x80uLL;
  v9 = *(v5 + 48);
  if ((v9 & 0x800000000000) == 0)
  {
LABEL_30:
    if ((v9 & 0x100000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_rfChannel = *(v5 + 75);
  *&self->_has |= 0x800000000000uLL;
  v9 = *(v5 + 48);
  if ((v9 & 0x100000000000000) == 0)
  {
LABEL_31:
    if ((v9 & 0x1000000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_104;
  }

LABEL_103:
  self->_tsAccuracyHour = *(v5 + 89);
  *&self->_has |= 0x100000000000000uLL;
  v9 = *(v5 + 48);
  if ((v9 & 0x1000000000000000) == 0)
  {
LABEL_32:
    if ((v9 & 4) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_accessoryAttached = *(v5 + 372);
  *&self->_has |= 0x1000000000000000uLL;
  v9 = *(v5 + 48);
  if ((v9 & 4) == 0)
  {
LABEL_33:
    if ((v9 & 0x8000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_accessoryAttachedBitmap = *(v5 + 12);
  *&self->_has |= 4uLL;
  v9 = *(v5 + 48);
  if ((v9 & 0x8000000000000) == 0)
  {
LABEL_34:
    if ((v9 & 0x4000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_107;
  }

LABEL_106:
  self->_setupSysMode = *(v5 + 81);
  *&self->_has |= 0x8000000000000uLL;
  v9 = *(v5 + 48);
  if ((v9 & 0x4000000000000) == 0)
  {
LABEL_35:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_108;
  }

LABEL_107:
  self->_setupDirection = *(v5 + 80);
  *&self->_has |= 0x4000000000000uLL;
  v9 = *(v5 + 48);
  if ((v9 & 0x800) == 0)
  {
LABEL_36:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_108:
  self->_callSetupTimeMs = *(v5 + 24);
  *&self->_has |= 0x800uLL;
  if ((*(v5 + 48) & 0x40000000) != 0)
  {
LABEL_37:
    self->_mtplInPoint1Db = *(v5 + 52);
    *&self->_has |= 0x40000000uLL;
  }

LABEL_38:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v10 = *(v5 + 13);
  v11 = [v10 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v55;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v55 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(CellularVoiceCallEvent *)self addCapEvent:*(*(&v54 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v12);
  }

  if ((v6[3] & 2) != 0)
  {
    self->_lastXSec = *(v5 + 47);
    *&self->_has |= 0x2000000uLL;
  }

  v15 = v6[8];
  if ((v15 & 0x10) != 0)
  {
    self->_lastXSecUlMrab = *(v5 + 380);
    *(&self->_has + 8) |= 0x10u;
    v15 = v6[8];
  }

  if ((v15 & 8) != 0)
  {
    self->_lastXSecDlMrab = *(v5 + 379);
    *(&self->_has + 8) |= 8u;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v16 = *(v5 + 36);
  v17 = [v16 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v51;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(CellularVoiceCallEvent *)self addRbData:*(*(&v50 + 1) + 8 * j)];
      }

      v18 = [v16 countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v18);
  }

  v21 = *v6;
  if ((*v6 & 0x20000000) != 0)
  {
    self->_msgId = *(v5 + 51);
    *&self->_has |= 0x20000000uLL;
    v21 = *(v5 + 48);
    if ((v21 & 0x20000) == 0)
    {
LABEL_60:
      if ((v21 & 0x400000000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_112;
    }
  }

  else if ((v21 & 0x20000) == 0)
  {
    goto LABEL_60;
  }

  self->_eventId = *(v5 + 33);
  *&self->_has |= 0x20000uLL;
  v21 = *(v5 + 48);
  if ((v21 & 0x400000000000) == 0)
  {
LABEL_61:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_113;
  }

LABEL_112:
  self->_responseCode = *(v5 + 74);
  *&self->_has |= 0x400000000000uLL;
  v21 = *(v5 + 48);
  if ((v21 & 0x100) == 0)
  {
LABEL_62:
    if ((v21 & 0x80000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_113:
  self->_callConnectDur = *(v5 + 18);
  *&self->_has |= 0x100uLL;
  if ((*(v5 + 48) & 0x80000000000000) != 0)
  {
LABEL_63:
    self->_tbMs = *(v5 + 88);
    *&self->_has |= 0x80000000000000uLL;
  }

LABEL_64:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v22 = *(v5 + 18);
  v23 = [v22 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v47;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(CellularVoiceCallEvent *)self addHcStat:*(*(&v46 + 1) + 8 * k)];
      }

      v24 = [v22 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v24);
  }

  v27 = *v6;
  if ((*v6 & 0x10000000000) != 0)
  {
    self->_numRecvdSpeechPkt = *(v5 + 62);
    *&self->_has |= 0x10000000000uLL;
    v27 = *(v5 + 48);
    if ((v27 & 0x8000000000) == 0)
    {
LABEL_73:
      if ((v27 & 0x800000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_117;
    }
  }

  else if ((v27 & 0x8000000000) == 0)
  {
    goto LABEL_73;
  }

  self->_numRecvdSilencePkt = *(v5 + 61);
  *&self->_has |= 0x8000000000uLL;
  v27 = *(v5 + 48);
  if ((v27 & 0x800000000) == 0)
  {
LABEL_74:
    if ((v27 & 0x100000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_118;
  }

LABEL_117:
  self->_numLostPkt = *(v5 + 57);
  *&self->_has |= 0x800000000uLL;
  v27 = *(v5 + 48);
  if ((v27 & 0x100000000000) == 0)
  {
LABEL_75:
    if ((v27 & 0x80000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_119;
  }

LABEL_118:
  self->_numUflwSpeechPkt = *(v5 + 66);
  *&self->_has |= 0x100000000000uLL;
  v27 = *(v5 + 48);
  if ((v27 & 0x80000000000) == 0)
  {
LABEL_76:
    if ((v27 & 0x400000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_120;
  }

LABEL_119:
  self->_numUflwSilencePkt = *(v5 + 65);
  *&self->_has |= 0x80000000000uLL;
  v27 = *(v5 + 48);
  if ((v27 & 0x400000000) == 0)
  {
LABEL_77:
    if ((v27 & 0x200000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_121;
  }

LABEL_120:
  self->_numEnqdSpeechPkt = *(v5 + 56);
  *&self->_has |= 0x400000000uLL;
  v27 = *(v5 + 48);
  if ((v27 & 0x200000000) == 0)
  {
LABEL_78:
    if ((v27 & 0x4000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_122;
  }

LABEL_121:
  self->_numEnqdSilencePkt = *(v5 + 55);
  *&self->_has |= 0x200000000uLL;
  v27 = *(v5 + 48);
  if ((v27 & 0x4000000000) == 0)
  {
LABEL_79:
    if ((v27 & 0x1000000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_123;
  }

LABEL_122:
  self->_numPlayedSpeechPkt = *(v5 + 60);
  *&self->_has |= 0x4000000000uLL;
  v27 = *(v5 + 48);
  if ((v27 & 0x1000000000) == 0)
  {
LABEL_80:
    if ((v27 & 0x20000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_124;
  }

LABEL_123:
  self->_numMissedSpeechPkt = *(v5 + 58);
  *&self->_has |= 0x1000000000uLL;
  v27 = *(v5 + 48);
  if ((v27 & 0x20000000000) == 0)
  {
LABEL_81:
    if ((v27 & 0x10) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_124:
  self->_numSpeechQempty = *(v5 + 63);
  *&self->_has |= 0x20000000000uLL;
  if ((*(v5 + 48) & 0x10) != 0)
  {
LABEL_82:
    self->_appCallId = *(v5 + 14);
    *&self->_has |= 0x10uLL;
  }

LABEL_83:
  delayCntsCount = [v5 delayCntsCount];
  if (delayCntsCount)
  {
    v29 = delayCntsCount;
    for (m = 0; m != v29; ++m)
    {
      -[CellularVoiceCallEvent addDelayCnt:](self, "addDelayCnt:", [v5 delayCntAtIndex:m]);
    }
  }

  if ((v6[1] & 0x20) != 0)
  {
    self->_dedicatedBrInactiveToEndMs = *(v5 + 29);
    *&self->_has |= 0x2000uLL;
  }

  lastAudioQualityCnt = self->_lastAudioQualityCnt;
  v32 = *(v5 + 21);
  if (lastAudioQualityCnt)
  {
    if (v32)
    {
      [lastAudioQualityCnt mergeFrom:?];
    }
  }

  else if (v32)
  {
    [(CellularVoiceCallEvent *)self setLastAudioQualityCnt:?];
  }

  v33 = *v6;
  if ((*v6 & 0x2000000000000) != 0)
  {
    self->_rtpPktLossPpt = *(v5 + 79);
    *&self->_has |= 0x2000000000000uLL;
    v33 = *(v5 + 48);
    if ((v33 & 0x400000000000000) == 0)
    {
LABEL_130:
      if ((v33 & 0x40000) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_168;
    }
  }

  else if ((v33 & 0x400000000000000) == 0)
  {
    goto LABEL_130;
  }

  self->_uflwPktPpt = *(v5 + 91);
  *&self->_has |= 0x400000000000000uLL;
  v33 = *(v5 + 48);
  if ((v33 & 0x40000) == 0)
  {
LABEL_131:
    if ((v33 & 0x2000000000000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_169;
  }

LABEL_168:
  self->_frErasurePpt = *(v5 + 34);
  *&self->_has |= 0x40000uLL;
  v33 = *(v5 + 48);
  if ((v33 & 0x2000000000000000) == 0)
  {
LABEL_132:
    if ((v33 & 0x40) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_170;
  }

LABEL_169:
  self->_badAudioQuality = *(v5 + 373);
  *&self->_has |= 0x2000000000000000uLL;
  v33 = *(v5 + 48);
  if ((v33 & 0x40) == 0)
  {
LABEL_133:
    if ((v33 & 0x20) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_134;
  }

LABEL_170:
  self->_audioQualityThresholdPpt = *(v5 + 16);
  *&self->_has |= 0x40uLL;
  if ((*(v5 + 48) & 0x20) != 0)
  {
LABEL_134:
    self->_audioQosDetectWinLenSec = *(v5 + 15);
    *&self->_has |= 0x20uLL;
  }

LABEL_135:
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v34 = *(v5 + 38);
  v35 = [v34 countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v43;
    do
    {
      for (n = 0; n != v36; n = n + 1)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [(CellularVoiceCallEvent *)self addRfMeasInfo:*(*(&v42 + 1) + 8 * n), v42];
      }

      v36 = [v34 countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v36);
  }

  v39 = *v6;
  if ((*v6 & 0x100000) != 0)
  {
    self->_hstState = *(v5 + 39);
    *&self->_has |= 0x100000uLL;
    v39 = *(v5 + 48);
    if ((v39 & 0x200000000000) == 0)
    {
LABEL_144:
      if ((v39 & 0x40000000000) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_174;
    }
  }

  else if ((v39 & 0x200000000000) == 0)
  {
    goto LABEL_144;
  }

  self->_psPref = *(v5 + 70);
  *&self->_has |= 0x200000000000uLL;
  v39 = *(v5 + 48);
  if ((v39 & 0x40000000000) == 0)
  {
LABEL_145:
    if ((v39 & 0x100000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_175;
  }

LABEL_174:
  self->_numSubs = *(v5 + 64);
  *&self->_has |= 0x40000000000uLL;
  v39 = *(v5 + 48);
  if ((v39 & 0x100000000) == 0)
  {
LABEL_146:
    if ((v39 & 0x40000000000000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_176;
  }

LABEL_175:
  self->_numCps = *(v5 + 54);
  *&self->_has |= &_mh_execute_header;
  v39 = *(v5 + 48);
  if ((v39 & 0x40000000000000) == 0)
  {
LABEL_147:
    if ((v39 & 0x10000000000000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_177;
  }

LABEL_176:
  self->_sysModeO = *(v5 + 87);
  *&self->_has |= 0x40000000000000uLL;
  v39 = *(v5 + 48);
  if ((v39 & 0x10000000000000) == 0)
  {
LABEL_148:
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_177:
  self->_sidO = *(v5 + 82);
  *&self->_has |= 0x10000000000000uLL;
  if ((*(v5 + 48) & 0x80000000) != 0)
  {
LABEL_149:
    self->_nidO = *(v5 + 53);
    *&self->_has |= 0x80000000uLL;
  }

LABEL_150:
  if (*(v5 + 34))
  {
    [(CellularVoiceCallEvent *)self setPlmnO:?];
  }

  v40 = *v6;
  if ((*v6 & 0x1000000) != 0)
  {
    self->_lastRssi = *(v5 + 46);
    *&self->_has |= 0x1000000uLL;
    v40 = *(v5 + 48);
    if ((v40 & 0x800000) == 0)
    {
LABEL_154:
      if ((v40 & 0x4000000000000000) == 0)
      {
        goto LABEL_155;
      }

LABEL_181:
      self->_barredFromSib1 = *(v5 + 374);
      *&self->_has |= 0x4000000000000000uLL;
      if ((*(v5 + 48) & 0x8000000000000000) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_182;
    }
  }

  else if ((v40 & 0x800000) == 0)
  {
    goto LABEL_154;
  }

  self->_lastRsrp = *(v5 + 45);
  *&self->_has |= 0x800000uLL;
  v40 = *(v5 + 48);
  if ((v40 & 0x4000000000000000) != 0)
  {
    goto LABEL_181;
  }

LABEL_155:
  if ((v40 & 0x8000000000000000) == 0)
  {
    goto LABEL_156;
  }

LABEL_182:
  self->_barredFromSib2 = *(v5 + 375);
  *&self->_has |= 0x8000000000000000;
LABEL_156:
  if (v6[8])
  {
    self->_connectionRejected = *(v5 + 376);
    *(&self->_has + 8) |= 1u;
  }

  v41 = *v6;
  if ((*v6 & 0x400000) != 0)
  {
    self->_lastMotionState = *(v5 + 44);
    *&self->_has |= 0x400000uLL;
    v41 = *(v5 + 48);
    if ((v41 & 0x10000000) == 0)
    {
LABEL_160:
      if ((v41 & 0x800000000000000) == 0)
      {
        goto LABEL_161;
      }

      goto LABEL_185;
    }
  }

  else if ((v41 & 0x10000000) == 0)
  {
    goto LABEL_160;
  }

  self->_msSinceLastMotionState = *(v5 + 50);
  *&self->_has |= 0x10000000uLL;
  v41 = *(v5 + 48);
  if ((v41 & 0x800000000000000) == 0)
  {
LABEL_161:
    if ((v41 & 0x20000000000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_186;
  }

LABEL_185:
  self->_version = *(v5 + 92);
  *&self->_has |= 0x800000000000000uLL;
  v41 = *(v5 + 48);
  if ((v41 & 0x20000000000000) == 0)
  {
LABEL_162:
    if ((v41 & 0x200000000000000) == 0)
    {
      goto LABEL_163;
    }

LABEL_187:
    self->_typeOfCall = *(v5 + 90);
    *&self->_has |= 0x200000000000000uLL;
    if ((*(v5 + 48) & 1) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_164;
  }

LABEL_186:
  self->_subsId = *(v5 + 86);
  *&self->_has |= 0x20000000000000uLL;
  v41 = *(v5 + 48);
  if ((v41 & 0x200000000000000) != 0)
  {
    goto LABEL_187;
  }

LABEL_163:
  if (v41)
  {
LABEL_164:
    self->_nr5gCellId = *(v5 + 4);
    *&self->_has |= 1uLL;
  }

LABEL_165:
}

@end