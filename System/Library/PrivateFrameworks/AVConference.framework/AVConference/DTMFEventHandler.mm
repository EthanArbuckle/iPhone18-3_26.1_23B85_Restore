@interface DTMFEventHandler
- (BOOL)insertStartBlockWithEvent:(unsigned __int8)event volume:(unsigned __int8)volume timestamp:(unsigned int)timestamp;
- (BOOL)insertStopBlockWithEndTimestamp:(unsigned int)timestamp withPauseCompleteTimestamp:(unsigned int)completeTimestamp;
- (BOOL)shouldAdjustForLastPauseCompleteTimestamp:(unsigned int *)timestamp;
- (BOOL)shouldTransmitDTMFWithTimestamp:(unsigned int)timestamp;
- (DTMFEventHandler)init;
- (int)constructDTMFEventPacketWithEvent:(unsigned __int8)event volume:(unsigned __int8)volume durationCounter:(unsigned int)counter dataBuffer:(char *)buffer isEnd:(BOOL)end;
- (void)dealloc;
- (void)sendDTMFEvent:(id)event atTimestamp:(unsigned int)timestamp withSampleRate:(unsigned int)rate;
- (void)sendingDTMFEventWithTimeStamp:(unsigned int)stamp interval:(unsigned int)interval RTPHandle:(tagHANDLE *)handle;
- (void)setDTMFRTPEventDurationForPayload:(int)payload;
- (void)stopDTMFEventAtTimestamp:(unsigned int)timestamp withSampleRate:(unsigned int)rate;
@end

@implementation DTMFEventHandler

- (DTMFEventHandler)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = DTMFEventHandler;
  v2 = [(DTMFEventHandler *)&v5 init];
  if (v2)
  {
    v2->dtmfEventQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->dtmfQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCDTMFEventHandler.dtmfQueue", 0, CustomRootQueue);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  dispatch_release(self->dtmfQueue);
  v3.receiver = self;
  v3.super_class = DTMFEventHandler;
  [(DTMFEventHandler *)&v3 dealloc];
}

- (void)setDTMFRTPEventDurationForPayload:(int)payload
{
  if ((payload - 97) > 0xE)
  {
    goto LABEL_7;
  }

  if (((1 << (payload - 97)) & 0x4C02) == 0)
  {
    if (payload == 97)
    {
      v3 = 160;
      goto LABEL_4;
    }

LABEL_7:
    v3 = 0;
    goto LABEL_4;
  }

  v3 = 320;
LABEL_4:
  self->_rtpEventDuration = v3;
}

- (BOOL)insertStartBlockWithEvent:(unsigned __int8)event volume:(unsigned __int8)volume timestamp:(unsigned int)timestamp
{
  v5 = *&timestamp;
  volumeCopy = volume;
  eventCopy = event;
  v13[3] = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  dtmfEventQueue = self->dtmfEventQueue;
  v12[0] = @"event";
  v13[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:eventCopy];
  v12[1] = @"volume";
  v13[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:volumeCopy];
  v12[2] = @"startTimestamp";
  v13[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  -[NSMutableArray addObject:](dtmfEventQueue, "addObject:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3]);
  objc_autoreleasePoolPop(v9);
  return 1;
}

- (BOOL)insertStopBlockWithEndTimestamp:(unsigned int)timestamp withPauseCompleteTimestamp:(unsigned int)completeTimestamp
{
  v4 = *&completeTimestamp;
  v5 = *&timestamp;
  v11[2] = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  dtmfEventQueue = self->dtmfEventQueue;
  v10[0] = @"endTimestamp";
  v10[1] = @"pauseCompleteTimestamp";
  v11[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v11[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  -[NSMutableArray addObject:](dtmfEventQueue, "addObject:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2]);
  objc_autoreleasePoolPop(v7);
  return 1;
}

- (void)sendDTMFEvent:(id)event atTimestamp:(unsigned int)timestamp withSampleRate:(unsigned int)rate
{
  v13 = *MEMORY[0x1E69E9840];
  if ([event objectForKeyedSubscript:@"event"])
  {
    dtmfQueue = self->dtmfQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__DTMFEventHandler_sendDTMFEvent_atTimestamp_withSampleRate___block_invoke;
    v10[3] = &unk_1E85F50D8;
    v10[4] = event;
    v10[5] = self;
    timestampCopy = timestamp;
    rateCopy = rate;
    dispatch_async(dtmfQueue, v10);
  }
}

void __61__DTMFEventHandler_sendDTMFEvent_atTimestamp_withSampleRate___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"volume", "unsignedIntegerValue"}];
  v3 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"duration", "unsignedIntegerValue"}];
  v4 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"interval", "unsignedIntegerValue"}];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:{objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"event"}];
  v6 = [v5 count];
  LODWORD(v7) = *(a1 + 48);
  v18 = -1431655766;
  v8 = [*(a1 + 40) shouldAdjustForLastPauseCompleteTimestamp:&v18];
  if (v6 >= 1)
  {
    v9 = 0;
    if ((v8 & (v18 - v7 < 0x7FFFFFFF)) != 0)
    {
      v7 = v18;
    }

    else
    {
      v7 = v7;
    }

    v11 = v3 == 0xFFFF && v6 == 1;
    v12 = v3 - 20;
    v13 = v6 & 0x7FFFFFFF;
    while (1)
    {
      v14 = [objc_msgSend(v5 objectAtIndexedSubscript:{v9), "unsignedIntegerValue"}];
      v15 = v14;
      if (v14 >= 0x11u)
      {
        break;
      }

      [*(a1 + 40) insertStartBlockWithEvent:v14 volume:v2 timestamp:v7];
      if (!v11)
      {
        v7 = *(a1 + 52) * v12 / 0x3E8u + v7 + *(a1 + 52) * v4 / 0x3E8;
        [*(a1 + 40) insertStopBlockWithEndTimestamp:? withPauseCompleteTimestamp:?];
      }

      if (v13 == ++v9)
      {
        goto LABEL_20;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __61__DTMFEventHandler_sendDTMFEvent_atTimestamp_withSampleRate___block_invoke_cold_1(v16, v15, v17);
      }
    }
  }

LABEL_20:
}

- (void)sendingDTMFEventWithTimeStamp:(unsigned int)stamp interval:(unsigned int)interval RTPHandle:(tagHANDLE *)handle
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = -1431655766;
  v28 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  dtmfQueue = self->dtmfQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__DTMFEventHandler_sendingDTMFEventWithTimeStamp_interval_RTPHandle___block_invoke;
  block[3] = &unk_1E85F9068;
  block[4] = self;
  block[5] = &v23;
  stampCopy = stamp;
  block[6] = &v19;
  dispatch_sync(dtmfQueue, block);
  if (*(v24 + 24) == 1)
  {
    if (self->currentEventNeedsEndBlock)
    {
      v10 = 0;
    }

    else
    {
      v11 = self->currentEndTimestamp - stamp;
      if (v11)
      {
        v12 = v11 > 0x7FFFFFFE;
      }

      else
      {
        v12 = 1;
      }

      v10 = v12;
    }

    if ([(DTMFEventHandler *)self constructDTMFEventPacketWithEvent:self->currentEvent volume:self->currentVolume durationCounter:self->currentDurationCounter dataBuffer:&v28 isEnd:v10]== 1)
    {
      ++self->currentEventRetransmitFinalPacketCount;
    }

    v13 = *(v20 + 24);
    currentStartTimestamp = self->currentStartTimestamp;
    v15 = micro();
    RTPSendRTP(handle, 117, v13, currentStartTimestamp, &v28, 4u, &v27, 0, v15, interval, 0, 0, 0, 0, 0, 0);
    currentEventRetransmitFinalPacketCount = self->currentEventRetransmitFinalPacketCount;
    if (v10)
    {
      if (currentEventRetransmitFinalPacketCount >= 3)
      {
        self->_currentEventState = 2;
      }
    }

    else if (currentEventRetransmitFinalPacketCount >= 3)
    {
      self->currentStartTimestamp = stamp;
      self->currentDurationCounter = 1;
      self->currentEventRetransmitFinalPacketCount = 0;
    }

    else
    {
      ++self->currentDurationCounter;
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

uint64_t __69__DTMFEventHandler_sendingDTMFEventWithTimeStamp_interval_RTPHandle___block_invoke(uint64_t result)
{
  v1 = result;
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  if (!*(v2 + 24))
  {
    v4 = [*(v2 + 16) objectAtIndexedSubscript:0];
    if ([v4 objectForKeyedSubscript:@"event"])
    {
      v5 = 1;
      *(*(v1 + 32) + 24) = 1;
      *(*(v1 + 32) + 28) = 1;
      *(*(v1 + 32) + 32) = 0;
      *(*(v1 + 32) + 40) = [objc_msgSend(v4 objectForKeyedSubscript:{@"event", "unsignedIntegerValue"}];
      *(*(v1 + 32) + 41) = [objc_msgSend(v4 objectForKeyedSubscript:{@"volume", "unsignedIntegerValue"}];
      *(*(v1 + 32) + 44) = [objc_msgSend(v4 objectForKeyedSubscript:{@"startTimestamp", "unsignedIntegerValue"}];
      *(*(v1 + 32) + 64) = *(v1 + 56) - *(*(v1 + 32) + 44);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        v8 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(v1 + 32);
            v10 = *(v9 + 64);
            v11 = *(v9 + 40);
            v12 = *(v1 + 56);
            LODWORD(v9) = *(v9 + 44);
            v22 = 136316674;
            v23 = v6;
            v24 = 2080;
            v25 = "[DTMFEventHandler sendingDTMFEventWithTimeStamp:interval:RTPHandle:]_block_invoke";
            v26 = 1024;
            v27 = 181;
            v28 = 1024;
            v29 = v10;
            v30 = 1024;
            v31 = v11;
            v32 = 1024;
            v33 = v12;
            v34 = 1024;
            v35 = v9;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Timestamp delta between the current packet timestamp and the timestamp when the DTMF event was originated from IPT=%d, current event=%d, timestamp=%d, currentStartTimestamp=%d", &v22, 0x34u);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v18 = *(v1 + 32);
          v19 = *(v18 + 64);
          v20 = *(v18 + 40);
          v21 = *(v1 + 56);
          LODWORD(v18) = *(v18 + 44);
          v22 = 136316674;
          v23 = v6;
          v24 = 2080;
          v25 = "[DTMFEventHandler sendingDTMFEventWithTimeStamp:interval:RTPHandle:]_block_invoke";
          v26 = 1024;
          v27 = 181;
          v28 = 1024;
          v29 = v19;
          v30 = 1024;
          v31 = v20;
          v32 = 1024;
          v33 = v21;
          v34 = 1024;
          v35 = v18;
          _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Timestamp delta between the current packet timestamp and the timestamp when the DTMF event was originated from IPT=%d, current event=%d, timestamp=%d, currentStartTimestamp=%d", &v22, 0x34u);
        }
      }

      *(*(v1 + 32) + 44) += *(*(v1 + 32) + 64);
      *(*(v1 + 32) + 48) = 1;
      *(*(v1 + 32) + 56) = 0;
      v15 = 48;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315650;
          v23 = v13;
          v24 = 2080;
          v25 = "[DTMFEventHandler sendingDTMFEventWithTimeStamp:interval:RTPHandle:]_block_invoke";
          v26 = 1024;
          v27 = 170;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DTMF: error, not a start block", &v22, 0x1Cu);
        }
      }

      v5 = 0;
      v15 = 40;
    }

    *(*(*(v1 + v15) + 8) + 24) = v5;
    return [*(*(v1 + 32) + 16) removeObjectAtIndex:0];
  }

  if (*(v2 + 28) == 1)
  {
    result = [*(v2 + 16) count];
    if (result)
    {
      v3 = [*(*(v1 + 32) + 16) objectAtIndexedSubscript:0];
      if ([v3 objectForKeyedSubscript:@"endTimestamp"] && objc_msgSend(v3, "objectForKeyedSubscript:", @"pauseCompleteTimestamp"))
      {
        *(*(v1 + 32) + 52) = *(*(v1 + 32) + 64) + [objc_msgSend(v3 objectForKeyedSubscript:{@"endTimestamp", "unsignedIntegerValue"}];
        *(*(v1 + 32) + 56) = *(*(v1 + 32) + 64) + [objc_msgSend(v3 objectForKeyedSubscript:{@"pauseCompleteTimestamp", "unsignedIntegerValue"}];
        *(*(v1 + 32) + 28) = 0;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v22 = 136315650;
            v23 = v16;
            v24 = 2080;
            v25 = "[DTMFEventHandler sendingDTMFEventWithTimeStamp:interval:RTPHandle:]_block_invoke";
            v26 = 1024;
            v27 = 196;
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DTMF: error, not a stop block", &v22, 0x1Cu);
          }
        }

        *(*(*(v1 + 40) + 8) + 24) = 0;
      }

      return [*(*(v1 + 32) + 16) removeObjectAtIndex:0];
    }
  }

  return result;
}

- (void)stopDTMFEventAtTimestamp:(unsigned int)timestamp withSampleRate:(unsigned int)rate
{
  v8 = *MEMORY[0x1E69E9840];
  dtmfQueue = self->dtmfQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__DTMFEventHandler_stopDTMFEventAtTimestamp_withSampleRate___block_invoke;
  block[3] = &unk_1E85F40E0;
  timestampCopy = timestamp;
  rateCopy = rate;
  block[4] = self;
  dispatch_async(dtmfQueue, block);
}

- (BOOL)shouldTransmitDTMFWithTimestamp:(unsigned int)timestamp
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -86;
  dtmfQueue = self->dtmfQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__DTMFEventHandler_shouldTransmitDTMFWithTimestamp___block_invoke;
  v6[3] = &unk_1E85F64A0;
  timestampCopy = timestamp;
  v6[4] = self;
  v6[5] = &v8;
  dispatch_sync(dtmfQueue, v6);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __52__DTMFEventHandler_shouldTransmitDTMFWithTimestamp___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  if (result && (result = [objc_msgSend(*(*(a1 + 32) + 16) objectAtIndexedSubscript:{0), "objectForKey:", @"startTimestamp"}]) != 0)
  {
    result = [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16) objectAtIndexedSubscript:{0), "objectForKey:", @"startTimestamp", "unsignedIntegerValue"}];
    v3 = result - *(a1 + 48);
    if (v3)
    {
      v4 = v3 > 0x7FFFFFFE;
    }

    else
    {
      v4 = 1;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  if (v7 == 2)
  {
    v8 = *(v6 + 56) - *(a1 + 48);
    if (v8)
    {
      v9 = v8 >= 0x7FFFFFFF;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      return result;
    }

    *(v6 + 24) = 0;
    v10 = *(*(a1 + 40) + 8);
  }

  else
  {
    v10 = *(*(a1 + 40) + 8);
    v5 = (v7 == 1) | v5 & 1;
  }

  *(v10 + 24) = v5;
  return result;
}

- (int)constructDTMFEventPacketWithEvent:(unsigned __int8)event volume:(unsigned __int8)volume durationCounter:(unsigned int)counter dataBuffer:(char *)buffer isEnd:(BOOL)end
{
  *buffer = event;
  if (end)
  {
    v7 = 0x80;
  }

  else
  {
    v7 = 0;
  }

  buffer[1] = v7 & 0xC0 | volume & 0x3F;
  v8 = self->_rtpEventDuration * counter;
  if (v8 >= 0xFFFF)
  {
    v9 = 0xFFFF;
  }

  else
  {
    v9 = self->_rtpEventDuration * counter;
  }

  *(buffer + 1) = bswap32(v9) >> 16;
  return v8 > 0xFFFE || end;
}

- (BOOL)shouldAdjustForLastPauseCompleteTimestamp:(unsigned int *)timestamp
{
  if (-[NSMutableArray count](self->dtmfEventQueue, "count") && (v5 = [-[NSMutableArray lastObject](self->dtmfEventQueue "lastObject")]) != 0)
  {
    currentPauseCompleteTimestamp = [v5 unsignedIntegerValue];
  }

  else
  {
    if (!self->_currentEventState || self->currentEventNeedsEndBlock)
    {
      return 0;
    }

    currentPauseCompleteTimestamp = self->_currentPauseCompleteTimestamp;
  }

  *timestamp = currentPauseCompleteTimestamp;
  return 1;
}

void __61__DTMFEventHandler_sendDTMFEvent_atTimestamp_withSampleRate___block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[DTMFEventHandler sendDTMFEvent:atTimestamp:withSampleRate:]_block_invoke";
  v7 = 1024;
  v8 = 139;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d DTMF: error, unsupported event %u", &v3, 0x22u);
}

@end