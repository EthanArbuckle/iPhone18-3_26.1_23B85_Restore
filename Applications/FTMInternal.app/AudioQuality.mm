@interface AudioQuality
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)delayCntAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasNumEnqdSpeechPkt:(BOOL)pkt;
- (void)setHasNumLostPkt:(BOOL)pkt;
- (void)setHasNumMissedSpeechPkt:(BOOL)pkt;
- (void)setHasNumPlayedSpeechPkt:(BOOL)pkt;
- (void)setHasNumRecvdSilencePkt:(BOOL)pkt;
- (void)setHasNumRecvdSpeechPkt:(BOOL)pkt;
- (void)setHasNumSpeechQempty:(BOOL)qempty;
- (void)setHasNumUflwSilencePkt:(BOOL)pkt;
- (void)setHasNumUflwSpeechPkt:(BOOL)pkt;
- (void)writeTo:(id)to;
@end

@implementation AudioQuality

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AudioQuality;
  [(AudioQuality *)&v3 dealloc];
}

- (void)setHasNumRecvdSpeechPkt:(BOOL)pkt
{
  if (pkt)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumRecvdSilencePkt:(BOOL)pkt
{
  if (pkt)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNumLostPkt:(BOOL)pkt
{
  if (pkt)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasNumUflwSpeechPkt:(BOOL)pkt
{
  if (pkt)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasNumUflwSilencePkt:(BOOL)pkt
{
  if (pkt)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNumEnqdSpeechPkt:(BOOL)pkt
{
  if (pkt)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasNumPlayedSpeechPkt:(BOOL)pkt
{
  if (pkt)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumMissedSpeechPkt:(BOOL)pkt
{
  if (pkt)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNumSpeechQempty:(BOOL)qempty
{
  if (qempty)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = AudioQuality;
  v3 = [(AudioQuality *)&v7 description];
  dictionaryRepresentation = [(AudioQuality *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  recordType = self->_recordType;
  if (recordType)
  {
    [v3 setObject:recordType forKey:@"record_type"];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v10 = [NSNumber numberWithUnsignedInt:self->_numRecvdSpeechPkt];
    [v4 setObject:v10 forKey:@"num_recvd_speech_pkt"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  v11 = [NSNumber numberWithUnsignedInt:self->_numRecvdSilencePkt];
  [v4 setObject:v11 forKey:@"num_recvd_silence_pkt"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [NSNumber numberWithUnsignedInt:self->_numLostPkt];
  [v4 setObject:v12 forKey:@"num_lost_pkt"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [NSNumber numberWithUnsignedInt:self->_numUflwSpeechPkt];
  [v4 setObject:v13 forKey:@"num_uflw_speech_pkt"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = [NSNumber numberWithUnsignedInt:self->_numUflwSilencePkt];
  [v4 setObject:v14 forKey:@"num_uflw_silence_pkt"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = [NSNumber numberWithUnsignedInt:self->_numEnqdSpeechPkt];
  [v4 setObject:v15 forKey:@"num_enqd_speech_pkt"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v16 = [NSNumber numberWithUnsignedInt:self->_numEnqdSilencePkt];
  [v4 setObject:v16 forKey:@"num_enqd_silence_pkt"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v17 = [NSNumber numberWithUnsignedInt:self->_numPlayedSpeechPkt];
  [v4 setObject:v17 forKey:@"num_played_speech_pkt"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_25:
  v18 = [NSNumber numberWithUnsignedInt:self->_numMissedSpeechPkt];
  [v4 setObject:v18 forKey:@"num_missed_speech_pkt"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_13:
    v7 = [NSNumber numberWithUnsignedInt:self->_numSpeechQempty];
    [v4 setObject:v7 forKey:@"num_speech_qempty"];
  }

LABEL_14:
  v8 = PBRepeatedUInt32NSArray();
  [v4 setObject:v8 forKey:@"delay_cnt"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v19 = toCopy;
  if (self->_recordType)
  {
    PBDataWriterWriteStringField();
    toCopy = v19;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    numRecvdSpeechPkt = self->_numRecvdSpeechPkt;
    PBDataWriterWriteUint32Field();
    toCopy = v19;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  numRecvdSilencePkt = self->_numRecvdSilencePkt;
  PBDataWriterWriteUint32Field();
  toCopy = v19;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  numLostPkt = self->_numLostPkt;
  PBDataWriterWriteUint32Field();
  toCopy = v19;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  numUflwSpeechPkt = self->_numUflwSpeechPkt;
  PBDataWriterWriteUint32Field();
  toCopy = v19;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  numUflwSilencePkt = self->_numUflwSilencePkt;
  PBDataWriterWriteUint32Field();
  toCopy = v19;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  numEnqdSpeechPkt = self->_numEnqdSpeechPkt;
  PBDataWriterWriteUint32Field();
  toCopy = v19;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  numEnqdSilencePkt = self->_numEnqdSilencePkt;
  PBDataWriterWriteUint32Field();
  toCopy = v19;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  numPlayedSpeechPkt = self->_numPlayedSpeechPkt;
  PBDataWriterWriteUint32Field();
  toCopy = v19;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_28:
  numMissedSpeechPkt = self->_numMissedSpeechPkt;
  PBDataWriterWriteUint32Field();
  toCopy = v19;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_13:
    numSpeechQempty = self->_numSpeechQempty;
    PBDataWriterWriteUint32Field();
    toCopy = v19;
  }

LABEL_14:
  p_delayCnts = &self->_delayCnts;
  if (p_delayCnts->count)
  {
    v8 = 0;
    do
    {
      v9 = p_delayCnts->list[v8];
      PBDataWriterWriteUint32Field();
      toCopy = v19;
      ++v8;
    }

    while (v8 < p_delayCnts->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_recordType)
  {
    [toCopy setRecordType:?];
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(toCopy + 14) = self->_numRecvdSpeechPkt;
    *(toCopy + 40) |= 0x40u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 13) = self->_numRecvdSilencePkt;
  *(toCopy + 40) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(toCopy + 10) = self->_numLostPkt;
  *(toCopy + 40) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 17) = self->_numUflwSpeechPkt;
  *(toCopy + 40) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(toCopy + 16) = self->_numUflwSilencePkt;
  *(toCopy + 40) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(toCopy + 9) = self->_numEnqdSpeechPkt;
  *(toCopy + 40) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(toCopy + 8) = self->_numEnqdSilencePkt;
  *(toCopy + 40) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_29:
    *(toCopy + 11) = self->_numMissedSpeechPkt;
    *(toCopy + 40) |= 8u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_28:
  *(toCopy + 12) = self->_numPlayedSpeechPkt;
  *(toCopy + 40) |= 0x10u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((has & 0x80) != 0)
  {
LABEL_13:
    *(toCopy + 15) = self->_numSpeechQempty;
    *(toCopy + 40) |= 0x80u;
  }

LABEL_14:
  if ([(AudioQuality *)self delayCntsCount])
  {
    [v9 clearDelayCnts];
    delayCntsCount = [(AudioQuality *)self delayCntsCount];
    if (delayCntsCount)
    {
      v7 = delayCntsCount;
      for (i = 0; i != v7; ++i)
      {
        [v9 addDelayCnt:{-[AudioQuality delayCntAtIndex:](self, "delayCntAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_recordType copyWithZone:zone];
  v7 = v5[9];
  v5[9] = v6;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v5 + 14) = self->_numRecvdSpeechPkt;
    *(v5 + 40) |= 0x40u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 13) = self->_numRecvdSilencePkt;
  *(v5 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 10) = self->_numLostPkt;
  *(v5 + 40) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 17) = self->_numUflwSpeechPkt;
  *(v5 + 40) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 16) = self->_numUflwSilencePkt;
  *(v5 + 40) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 9) = self->_numEnqdSpeechPkt;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 8) = self->_numEnqdSilencePkt;
  *(v5 + 40) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    *(v5 + 11) = self->_numMissedSpeechPkt;
    *(v5 + 40) |= 8u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + 12) = self->_numPlayedSpeechPkt;
  *(v5 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((has & 0x80) != 0)
  {
LABEL_11:
    *(v5 + 15) = self->_numSpeechQempty;
    *(v5 + 40) |= 0x80u;
  }

LABEL_12:
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  recordType = self->_recordType;
  if (recordType | *(equalCopy + 9))
  {
    if (![(NSString *)recordType isEqual:?])
    {
      goto LABEL_55;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 40);
  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_numRecvdSpeechPkt != *(equalCopy + 14))
    {
      goto LABEL_55;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
LABEL_55:
    IsEqual = 0;
    goto LABEL_56;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_numRecvdSilencePkt != *(equalCopy + 13))
    {
      goto LABEL_55;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_numLostPkt != *(equalCopy + 10))
    {
      goto LABEL_55;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_55;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 40) & 0x200) == 0 || self->_numUflwSpeechPkt != *(equalCopy + 17))
    {
      goto LABEL_55;
    }
  }

  else if ((*(equalCopy + 40) & 0x200) != 0)
  {
    goto LABEL_55;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 40) & 0x100) == 0 || self->_numUflwSilencePkt != *(equalCopy + 16))
    {
      goto LABEL_55;
    }
  }

  else if ((*(equalCopy + 40) & 0x100) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_numEnqdSpeechPkt != *(equalCopy + 9))
    {
      goto LABEL_55;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_55;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_numEnqdSilencePkt != *(equalCopy + 8))
    {
      goto LABEL_55;
    }
  }

  else if (v7)
  {
    goto LABEL_55;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_numPlayedSpeechPkt != *(equalCopy + 12))
    {
      goto LABEL_55;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_numMissedSpeechPkt != *(equalCopy + 11))
    {
      goto LABEL_55;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_numSpeechQempty != *(equalCopy + 15))
    {
      goto LABEL_55;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_55;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_56:

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_recordType hash];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v5 = 2654435761 * self->_numRecvdSpeechPkt;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_numRecvdSilencePkt;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_numLostPkt;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_numUflwSpeechPkt;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_6:
    v9 = 2654435761 * self->_numUflwSilencePkt;
    if ((has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = 0;
  if ((has & 2) != 0)
  {
LABEL_7:
    v10 = 2654435761 * self->_numEnqdSpeechPkt;
    if (has)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
  if (has)
  {
LABEL_8:
    v11 = 2654435761 * self->_numEnqdSilencePkt;
    if ((has & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_9:
    v12 = 2654435761 * self->_numPlayedSpeechPkt;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v13 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v14 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ PBRepeatedUInt32Hash();
  }

LABEL_19:
  v12 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v13 = 2654435761 * self->_numMissedSpeechPkt;
  if ((has & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v14 = 2654435761 * self->_numSpeechQempty;
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (*(fromCopy + 9))
  {
    [(AudioQuality *)self setRecordType:?];
    fromCopy = v9;
  }

  v5 = *(fromCopy + 40);
  if ((v5 & 0x40) != 0)
  {
    self->_numRecvdSpeechPkt = fromCopy[14];
    *&self->_has |= 0x40u;
    v5 = *(fromCopy + 40);
    if ((v5 & 0x20) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_5;
  }

  self->_numRecvdSilencePkt = fromCopy[13];
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 40);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_numLostPkt = fromCopy[10];
  *&self->_has |= 4u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_numUflwSpeechPkt = fromCopy[17];
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_numUflwSilencePkt = fromCopy[16];
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 40);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_numEnqdSpeechPkt = fromCopy[9];
  *&self->_has |= 2u;
  v5 = *(fromCopy + 40);
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_numEnqdSilencePkt = fromCopy[8];
  *&self->_has |= 1u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_numPlayedSpeechPkt = fromCopy[12];
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 40);
  if ((v5 & 8) == 0)
  {
LABEL_12:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_28:
  self->_numMissedSpeechPkt = fromCopy[11];
  *&self->_has |= 8u;
  if ((fromCopy[20] & 0x80) != 0)
  {
LABEL_13:
    self->_numSpeechQempty = fromCopy[15];
    *&self->_has |= 0x80u;
  }

LABEL_14:
  delayCntsCount = [fromCopy delayCntsCount];
  if (delayCntsCount)
  {
    v7 = delayCntsCount;
    for (i = 0; i != v7; ++i)
    {
      -[AudioQuality addDelayCnt:](self, "addDelayCnt:", [v9 delayCntAtIndex:i]);
    }
  }
}

@end