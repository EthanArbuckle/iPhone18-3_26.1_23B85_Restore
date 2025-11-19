@interface BLEMIDITimeStamper
- (BLEMIDITimeStamper)init;
- (BOOL)offsetIsUsable:(unsigned __int16)a3 numberOfWraps:(unsigned __int16 *)a4;
- (int)modsignWithTimeDifference:(int64_t)a3 range:(unsigned __int16)a4;
- (void)addOffset:(unsigned __int16)a3;
- (void)reset;
- (void)setReceiveTime:(unint64_t)a3;
@end

@implementation BLEMIDITimeStamper

- (BLEMIDITimeStamper)init
{
  v3.receiver = self;
  v3.super_class = BLEMIDITimeStamper;
  result = [(BLEMIDITimeStamper *)&v3 init];
  if (result)
  {
    result->hasBeenReset = 1;
  }

  return result;
}

- (void)reset
{
  self->lastReceivedOffset = 0;
  self->lastGeneratedTimestamp = 0;
  self->lastReceivedOffsetTimestamp = 0;
  self->lastReceivedTime = 0;
  self->hasBeenReset = 1;
}

- (void)setReceiveTime:(unint64_t)a3
{
  receivedTime = self->receivedTime;
  connectionInterval_ns = self->connectionInterval_ns;
  if (a3 - receivedTime <= connectionInterval_ns / 0xF4240)
  {
    v6 = self->connectionInterval_ns;
  }

  else
  {
    v6 = 3 * connectionInterval_ns;
  }

  self->receivedTime = a3;
  self->lastReceivedTime = receivedTime;
  self->lastReceivedOffsetTimestamp = self->lastGeneratedTimestamp;
  self->averageWaitTime_ns = v6 >> 1;
  self->firstOffset = -1;
  sub_B5F8();
  v7 = qword_1D988;
  if (os_log_type_enabled(qword_1D988, OS_LOG_TYPE_DEBUG))
  {
    v8 = self->receivedTime;
    lastReceivedTime = self->lastReceivedTime;
    v10 = 136316162;
    v11 = "BTLEMIDITimeStamper.mm";
    v12 = 1024;
    v13 = 62;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = lastReceivedTime;
    v18 = 2048;
    v19 = v8 - lastReceivedTime;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d receiveTime = %llu, lastReceivedTime = %llu (delta = %llu)", &v10, 0x30u);
  }
}

- (void)addOffset:(unsigned __int16)a3
{
  v3 = a3;
  if (!self->hasBeenReset)
  {
    sub_B5F8();
    v5 = qword_1D988;
    if (os_log_type_enabled(qword_1D988, OS_LOG_TYPE_DEBUG))
    {
      lastReceivedOffset = self->lastReceivedOffset;
      v7 = 136316162;
      v8 = "BTLEMIDITimeStamper.mm";
      v9 = 1024;
      v10 = 68;
      v11 = 1024;
      v12 = v3;
      v13 = 1024;
      v14 = lastReceivedOffset;
      v15 = 1024;
      v16 = v3 - lastReceivedOffset;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d this offset = %d, lastReceivedOffset = %d (delta = %d)", &v7, 0x24u);
    }
  }

  self->hasBeenReset = 0;
  self->lastReceivedOffset = v3;
}

- (BOOL)offsetIsUsable:(unsigned __int16)a3 numberOfWraps:(unsigned __int16 *)a4
{
  v4 = self->receivedTime - self->lastReceivedTime;
  v5 = a3 - self->lastReceivedOffset + ((a3 - self->lastReceivedOffset) >> 31 << 13);
  v6 = v4 - v5;
  if (v6 > -4097)
  {
    v13 = [(BLEMIDITimeStamper *)self modsignWithTimeDifference:v4 - v5 range:0x2000];
    if (v13 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    if (v14 < 0xC78)
    {
      *a4 = ((v6 + 12288) >> 13) - 1;
      LOBYTE(v8) = 1;
      return v8;
    }

    v15 = v13;
    sub_B5F8();
    v16 = qword_1D988;
    v8 = os_log_type_enabled(qword_1D988, OS_LOG_TYPE_INFO);
    if (v8)
    {
      v18 = 136316162;
      v19 = "BTLEMIDITimeStamper.mm";
      v20 = 1024;
      v21 = 157;
      v22 = 2048;
      v23 = v4;
      v24 = 1024;
      v25 = v5;
      v26 = 1024;
      LODWORD(v27) = v15;
      v9 = "%25s:%-5d Bluetooth timestamp is too far away from center line. ltd = %llu, od = %d, m = %d";
      v10 = v16;
      v11 = 40;
      goto LABEL_10;
    }
  }

  else
  {
    sub_B5F8();
    v7 = qword_1D988;
    v8 = os_log_type_enabled(qword_1D988, OS_LOG_TYPE_INFO);
    if (v8)
    {
      v18 = 136316162;
      v19 = "BTLEMIDITimeStamper.mm";
      v20 = 1024;
      v21 = 149;
      v22 = 2048;
      v23 = v4;
      v24 = 1024;
      v25 = v5;
      v26 = 2048;
      v27 = v4 - v5;
      v9 = "%25s:%-5d Bluetooth timestamp is in ambiguous territory. ltd = %llu, od = %d, diff = %lld";
      v10 = v7;
      v11 = 44;
LABEL_10:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, v9, &v18, v11);
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (int)modsignWithTimeDifference:(int64_t)a3 range:(unsigned __int16)a4
{
  v4 = a3 % a4;
  if (v4 >= a4 >> 1)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  if (v4 + (a4 >> 1) < 0 != __OFADD__(v4, a4 >> 1))
  {
    v6 = a4;
  }

  else
  {
    v6 = -v5;
  }

  return v6 + v4;
}

@end