@interface BLEMIDIDataReceiver
- (BLEMIDIDataReceiver)init;
- (BLEMIDIDataReceiver)initWithEndpoint:(unsigned int)a3 owner:(MIDIDriverInterface *)a4;
- (const)nextMIDIEventFrom:(const char *)a3 to:(const char *)a4;
- (void)dealloc;
- (void)unpackValue:(id)a3;
@end

@implementation BLEMIDIDataReceiver

- (BLEMIDIDataReceiver)init
{
  sub_BDA4();
  v2 = qword_1D998;
  if (os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "BTLEMIDIDataReceiver.mm";
    v6 = 1024;
    v7 = 24;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Do not call init. Instead call initWithEndpoint.", &v4, 0x12u);
  }

  return 0;
}

- (BLEMIDIDataReceiver)initWithEndpoint:(unsigned int)a3 owner:(MIDIDriverInterface *)a4
{
  v9.receiver = self;
  v9.super_class = BLEMIDIDataReceiver;
  v6 = [(BLEMIDIDataReceiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->endpoint = a3;
    v6->driver = a4;
    v6->packetEmitter.mEP = a3;
    v6->timeStamper = objc_alloc_init(BLEMIDITimeStamper);
    v7->logBuffer[0] = 0;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BLEMIDIDataReceiver;
  [(BLEMIDIDataReceiver *)&v3 dealloc];
}

- (const)nextMIDIEventFrom:(const char *)a3 to:(const char *)a4
{
  v4 = *a3;
  v5 = v4 >> 4;
  if (v4 >> 4 <= 0xF)
  {
    if (((1 << v5) & 0x4F00) != 0)
    {
LABEL_3:
      v6 = a3 + 3;
      goto LABEL_6;
    }

    if (((1 << v5) & 0x3000) != 0)
    {
      goto LABEL_5;
    }

    if (v5 == 15)
    {
      if (*a3 > 0xF1u)
      {
        if (v4 == 242)
        {
          goto LABEL_3;
        }

        if (v4 != 243)
        {
          goto LABEL_20;
        }

        goto LABEL_5;
      }

      if (v4 != 240)
      {
        if (v4 != 241)
        {
LABEL_20:
          v6 = a3 + 1;
          goto LABEL_6;
        }

LABEL_5:
        v6 = a3 + 2;
        goto LABEL_6;
      }
    }
  }

  v8 = a3 + 1;
  do
  {
    v6 = v8;
    if (v8 >= a4)
    {
      break;
    }

    ++v8;
  }

  while ((*v6 & 0x80000000) == 0);
LABEL_6:
  if (v6 >= a4)
  {
    return a4;
  }

  else
  {
    return v6;
  }
}

- (void)unpackValue:(id)a3
{
  driver = self->driver;
  v6 = [a3 length];
  v7 = [a3 bytes];
  if (driver[11])
  {
    return;
  }

  v8 = v7;
  v9 = [(BLEMIDIDataReceiver *)self nowInMS];
  [(BLEMIDITimeStamper *)self->timeStamper setConnectionIntervalNanos:driver[32]];
  [(BLEMIDITimeStamper *)self->timeStamper setReceiveTime:v9];
  v10 = *v8;
  if ((*v8 & 0x80000000) == 0)
  {
    sub_BDA4();
    v11 = qword_1D998;
    if (!os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *buf = 136315650;
    v60 = "BTLEMIDIDataReceiver.mm";
    v61 = 1024;
    v62 = 128;
    v63 = 1024;
    LODWORD(v64[0]) = v10;
    v12 = "%25s:%-5d ERROR: Bad header received (0x%0X). Discarding.";
    v13 = v11;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 24;
LABEL_56:
    _os_log_impl(&dword_0, v13, v14, v12, buf, v15);
    goto LABEL_57;
  }

  v16 = v10 & 0x7F;
  v17 = v10 & 0x3F;
  v18 = v16 > 0x3F;
  if (v16 > 0x3F)
  {
    v16 = v17;
  }

  v55 = v16;
  if (v18)
  {
    sub_BDA4();
    v19 = qword_1D998;
    if (v17)
    {
      if (!os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 136315394;
      v60 = "BTLEMIDIDataReceiver.mm";
      v61 = 1024;
      v62 = 146;
      v12 = "%25s:%-5d Invalid control message received. Discarding packet.";
      v13 = v19;
      v14 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(qword_1D998, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_57;
      }

      *buf = 136315394;
      v60 = "BTLEMIDIDataReceiver.mm";
      v61 = 1024;
      v62 = 142;
      v12 = "%25s:%-5d Ignoring packet due to kBLEMIDIControlMessageIgnorePayload message.";
      v13 = v19;
      v14 = OS_LOG_TYPE_DEBUG;
    }

    v15 = 18;
    goto LABEL_56;
  }

  if (v6 < 2)
  {
    v54 = 0;
LABEL_50:
    if (self->packetEmitter.mIsDirty)
    {
      sub_C6A8(&self->packetEmitter);
    }

    [(BLEMIDITimeStamper *)self->timeStamper addOffset:v54, v49];
    return;
  }

  v49 = v9;
  v52 = a3;
  time = 0;
  v54 = 0;
  v20 = 0;
  v21 = 0;
  v57 = 0;
  v22 = &v8[v6];
  v23 = (v6 - 1);
  v24 = (v8 + 1);
  v53 = &v8[v6];
  while (1)
  {
    v25 = *v24;
    if ((v25 & 0x80000000) == 0)
    {
      if (v24 == (v8 + 1))
      {
        time = self->lastSysExTimeStamp;
        if (v24 >= v22)
        {
LABEL_42:
          LOWORD(v32) = v23;
        }

        else
        {
          v32 = 0;
          while ((v24[v32] & 0x80000000) == 0)
          {
            if (v53 - v24 == ++v32)
            {
              goto LABEL_42;
            }
          }

          v21 = 0;
        }

        goto LABEL_34;
      }

      if (!v21)
      {
        sub_BDA4();
        v43 = qword_1D998;
        if (os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v60 = "BTLEMIDIDataReceiver.mm";
          v61 = 1024;
          v62 = 162;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Expected a timestamp byte, concurrent running status, or SysEx continuation. The full packet will be logged below.", buf, 0x12u);
        }

        v45 = [v52 bytes];
        +[BLEMIDIAccessor logEvent:length:timeStamp:intoBuffer:](BLEMIDIAccessor, "logEvent:length:timeStamp:intoBuffer:", v45, [v52 length], v50, self->logBuffer);
        sub_BDA4();
        v46 = qword_1D998;
        if (os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v60 = "BTLEMIDIDataReceiver.mm";
          v61 = 1024;
          v62 = 164;
          v63 = 2080;
          v64[0] = self->logBuffer;
          v12 = "%25s:%-5d %s";
LABEL_67:
          v13 = v46;
          v14 = OS_LOG_TYPE_ERROR;
          v15 = 28;
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      goto LABEL_20;
    }

    v56 = v21;
    v26 = v22;
    v28 = (v24 + 1);
    v27 = v24[1];
    v29 = v25 & 0x7F;
    v30 = v23 - 1;
    v31 = (v29 < v20) | v57;
    v54 = [BLEMIDIAccessor reconstructWithHighByte:v55 lowByte:v29 overflow:v31 & 1]& 0x1FFF;
    [(BLEMIDITimeStamper *)self->timeStamper generateTimeStampForOffset:?];
    time = __udivti3();
    self->lastSysExTimeStamp = time;
    v57 = v31;
    if (v27 < 0)
    {
      v22 = v26;
      if (*v28 == 245)
      {
        sub_BDA4();
        v40 = qword_1D998;
        v21 = v56;
        if (os_log_type_enabled(qword_1D998, OS_LOG_TYPE_DEBUG))
        {
          v41 = v24[1];
          v42 = v24[2];
          *buf = 136315906;
          v60 = "BTLEMIDIDataReceiver.mm";
          v61 = 1024;
          v62 = 213;
          v63 = 1024;
          LODWORD(v64[0]) = v41;
          WORD2(v64[0]) = 1024;
          *(v64 + 6) = v42;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: Discarding 2-byte message: 0x%0X 0x%0X", buf, 0x1Eu);
        }

        v28 = (v24 + 3);
        v30 = v23 - 3;
      }

      else
      {
        v21 = v56;
      }

      goto LABEL_21;
    }

    ++v24;
    v20 = v29;
    --v23;
    v22 = v26;
    v21 = v56;
    if (!v56)
    {
      break;
    }

LABEL_20:
    *(v24 - 1) = v21;
    v30 = v23 + 1;
    v29 = v20;
    v28 = (v24 - 1);
LABEL_21:
    LOWORD(v32) = [(BLEMIDIDataReceiver *)self nextMIDIEventFrom:v28 to:v22, v49]- v28;
    v33 = *v28;
    v34 = v33 & 0xF8;
    if (v33 <= 0xF7)
    {
      v35 = v8;
    }

    else
    {
      v35 = v28;
    }

    v36 = v34 == 240;
    if (v34 == 240)
    {
      v37 = v8;
    }

    else
    {
      v37 = v35;
    }

    if (v36)
    {
      v38 = 0;
    }

    else
    {
      v38 = v21;
    }

    if (v33 < -16)
    {
      v21 = *v28;
    }

    else
    {
      v8 = v37;
      v21 = v38;
    }

    v20 = v29;
    v24 = v28;
    v23 = v30;
LABEL_34:
    v39 = v32;
    if (v32)
    {
      self->packetEmitter.mIsDirty = 1;
      sub_DB8(&self->packetEmitter, time, v32, v24);
    }

    v23 -= v39;
    v24 += v39;
    if (v24 >= v22)
    {
      goto LABEL_50;
    }
  }

  sub_BDA4();
  v47 = qword_1D998;
  if (os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v60 = "BTLEMIDIDataReceiver.mm";
    v61 = 1024;
    v62 = 204;
    _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Discarding malformed packet. The full packet will be logged below.", buf, 0x12u);
  }

  v48 = [v52 bytes];
  +[BLEMIDIAccessor logEvent:length:timeStamp:intoBuffer:](BLEMIDIAccessor, "logEvent:length:timeStamp:intoBuffer:", v48, [v52 length], v51, self->logBuffer);
  sub_BDA4();
  v46 = qword_1D998;
  if (os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v60 = "BTLEMIDIDataReceiver.mm";
    v61 = 1024;
    v62 = 206;
    v63 = 2080;
    v64[0] = self->logBuffer;
    v12 = "%25s:%-5d %s";
    goto LABEL_67;
  }

LABEL_57:
  self->packetEmitter.mCurPacket = MIDIPacketListInit(self->packetEmitter.mBuf);
}

@end