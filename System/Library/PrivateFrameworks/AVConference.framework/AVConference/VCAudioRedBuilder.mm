@interface VCAudioRedBuilder
+ (unsigned)redOverheadForNumPayloads:(unsigned int)payloads;
- (BOOL)isPayloadTimestampWithinThreshold:(tagVCAudioRedPayload *)threshold forTimestamp:(unsigned int)timestamp;
- (BOOL)redundantPayloads:(id)payloads containsPointer:(void *)pointer;
- (VCAudioRedBuilder)initWithRedPayloadType:(int)type sampleRate:(unsigned int)rate samplesPerFrame:(unsigned int)frame numPayloads:(unsigned int)payloads maxDelay:(unsigned int)delay includeSequenceOffset:(BOOL)offset;
- (char)payloadHistoryDescriptionForInfoIndex:(unsigned __int8)index;
- (char)redPayloadDescription:(tagVCAudioRedPayload *)description;
- (char)redundantPayloadsDescription:(id)description;
- (char)resetOutputPayload:(tagVCAudioRedPayload *)payload;
- (id)selectRedPayloadsForPrimaryPayload:(tagVCAudioRedPayload *)payload;
- (tagVCAudioRedPayload)buildRedPayloadWithPrimaryPayload:(tagVCAudioRedPayload *)payload redPayloads:(id)payloads;
- (tagVCAudioRedPayload)nearestRedPayloadForTimestamp:(unsigned int)timestamp payloadHistory:(tagVCAudioRedPayload *)history payloadHistoryCount:(unsigned int)count;
- (tagVCAudioRedPayload)redPayloadForPrimaryPayload:(tagVCAudioRedPayload *)payload;
- (unsigned)maxDelay;
- (unsigned)numPayloads;
- (void)dealloc;
- (void)resetShortREDHistoryAndPrimaryPayloadHistory:(BOOL)history;
- (void)setMaxDelay:(unsigned int)delay;
- (void)setMaxREDPayloadSize:(unsigned int)size;
- (void)setNumPayloads:(unsigned int)payloads;
@end

@implementation VCAudioRedBuilder

- (void)setMaxREDPayloadSize:(unsigned int)size
{
  objc_sync_enter(self);
  self->_maxREDPayloadSize = size;

  objc_sync_exit(self);
}

- (tagVCAudioRedPayload)buildRedPayloadWithPrimaryPayload:(tagVCAudioRedPayload *)payload redPayloads:(id)payloads
{
  v55 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    __str = 0;
    v7 = objc_opt_class() ? [objc_msgSend(objc_opt_class() "description")] : "<nil>";
    asprintf(&__str, "%s: primaryPayload:%s redPayloads:%s", v7, [(VCAudioRedBuilder *)self redPayloadDescription:payload], [(VCAudioRedBuilder *)self redundantPayloadsDescription:payloads]);
    if (__str)
    {
      __lasts = 0;
      v8 = strtok_r(__str, "\n", &__lasts);
      v9 = MEMORY[0x1E6986640];
      v10 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *v10;
          v13 = *v10;
          if (*v9 == 1)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              *&buf[4] = v11;
              v48 = 2080;
              v49 = "[VCAudioRedBuilder buildRedPayloadWithPrimaryPayload:redPayloads:]";
              v50 = 1024;
              v51 = 157;
              v52 = 2080;
              *v53 = "[VCAudioRedBuilder buildRedPayloadWithPrimaryPayload:redPayloads:]";
              *&v53[8] = 2080;
              v54 = v8;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCAudioRedBuilder [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136316162;
            *&buf[4] = v11;
            v48 = 2080;
            v49 = "[VCAudioRedBuilder buildRedPayloadWithPrimaryPayload:redPayloads:]";
            v50 = 1024;
            v51 = 157;
            v52 = 2080;
            *v53 = "[VCAudioRedBuilder buildRedPayloadWithPrimaryPayload:redPayloads:]";
            *&v53[8] = 2080;
            v54 = v8;
            _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, "VCAudioRedBuilder [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v8 = strtok_r(0, "\n", &__lasts);
      }

      while (v8);
      free(__str);
    }
  }

  p_redPayloadToSend = &self->_redPayloadToSend;
  v14 = [(VCAudioRedBuilder *)self resetOutputPayload:?];
  v15 = [payloads count];
  v16 = 1472;
  v17 = 0;
  v18 = (v15 - 1);
  if (v15 - 1 >= 0)
  {
    v43 = 1472 - 4 * v15;
    while (1)
    {
      v19 = [payloads pointerAtIndex:v18];
      v20 = *(v19 + 16);
      if (v20 >= 0x400)
      {
        break;
      }

      if (self->_includeSequenceOffset)
      {
        v21 = *(v19 + 30);
        if (v21 >= 0x40)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCAudioRedBuilder buildRedPayloadWithPrimaryPayload:redPayloads:];
            }
          }

          goto LABEL_42;
        }

        v22 = 100 * (payload->timestamp - *(v19 + 20)) / self->_sampleRate;
        if (v22 >= 0x100)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCAudioRedBuilder buildRedPayloadWithPrimaryPayload:redPayloads:];
            }
          }

          goto LABEL_42;
        }

        v23 = (v22 << 10) | (v21 << 18);
      }

      else
      {
        v24 = payload->timestamp - *(v19 + 20);
        if (v24 >= 0x4000)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCAudioRedBuilder buildRedPayloadWithPrimaryPayload:redPayloads:];
            }
          }

          goto LABEL_42;
        }

        v23 = v24 << 10;
      }

      if (!v16)
      {
        [(VCAudioRedBuilder *)v14 buildRedPayloadWithPrimaryPayload:buf redPayloads:&__str];
        v31 = __lasts;
        v14 = *buf;
        v16 = __str;
        goto LABEL_58;
      }

      v25 = bswap32(v23 | (*v19 << 24) ^ 0x80000000 | v20);
      if (v17 <= *(v19 + 31))
      {
        v17 = *(v19 + 31);
      }

      *v14 = v25;
      v14 += 4;
      v16 = (v16 - 4);
      ++*(v19 + 29);
      v26 = v18-- <= 0;
      if (v26)
      {
        v16 = v43;
        goto LABEL_43;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioRedBuilder buildRedPayloadWithPrimaryPayload:redPayloads:];
      }
    }

LABEL_42:
    v14 = [(VCAudioRedBuilder *)self resetOutputPayload:p_redPayloadToSend];
LABEL_43:
    if (v16 > 0)
    {
      goto LABEL_44;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioRedBuilder buildRedPayloadWithPrimaryPayload:redPayloads:];
      }
    }

    v31 = 0;
    goto LABEL_58;
  }

LABEL_44:
  *v14++ = payload->payloadType;
  v16 = (v16 - 1);
  v27 = [payloads count];
  v28 = (v27 - 1);
  if (v27 - 1 >= 0)
  {
    while (1)
    {
      v29 = [payloads pointerAtIndex:v28];
      v30 = v29;
      v31 = *(v29 + 16);
      if (v16 < v31)
      {
        break;
      }

      memcpy(v14, *(v29 + 8), v31);
      v32 = *(v30 + 16);
      v14 += v32;
      v16 = (v16 - v32);
      v26 = v28-- <= 0;
      if (v26)
      {
        goto LABEL_50;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_58;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    v37 = *(v30 + 16);
    *buf = 136316162;
    *&buf[4] = v35;
    v48 = 2080;
    v49 = "[VCAudioRedBuilder buildRedPayloadWithPrimaryPayload:redPayloads:]";
    v50 = 1024;
    v51 = 242;
    v52 = 1024;
    *v53 = v37;
    *&v53[4] = 1024;
    *&v53[6] = v16;
    v38 = v36;
    goto LABEL_56;
  }

  v31 = 0;
LABEL_50:
  bufferLength = payload->bufferLength;
  if (v16 >= bufferLength)
  {
    memcpy(v14, payload->buffer, bufferLength);
    self->_redPayloadToSend.bufferLength = v14 + payload->bufferLength - LODWORD(self->_redPayloadToSend.buffer);
    self->_redPayloadToSend.payloadType = self->_redPayloadType;
    self->_redPayloadToSend.timestamp = payload->timestamp;
    self->_redPayloadToSend.priority = v17;
    return p_redPayloadToSend;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v40 = VRTraceErrorLogLevelToCSTR();
    v41 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v42 = payload->bufferLength;
      *buf = 136316162;
      *&buf[4] = v40;
      v48 = 2080;
      v49 = "[VCAudioRedBuilder buildRedPayloadWithPrimaryPayload:redPayloads:]";
      v50 = 1024;
      v51 = 249;
      v52 = 1024;
      *v53 = v42;
      *&v53[4] = 1024;
      *&v53[6] = v16;
      v38 = v41;
LABEL_56:
      _os_log_error_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_ERROR, "VCAudioRedBuilder [%s] %s:%d Buffer size not enough requiredLength %d remainingLength %d", buf, 0x28u);
    }
  }

LABEL_58:
  v39 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Max RED payload size overflow. outputPayloadBufferLength=%ld, lastRedPayloadBufferLength=%d, maxPayloadLength=%zu, remainingLength=%d", v14 - self->_redPayloadToSend.buffer, v31, 1472, v16);
  VCTerminateProcess(v39, @"VCAudioRedBuilder", 0);
  if (v39)
  {
    CFRelease(v39);
  }

  return 0;
}

- (BOOL)isPayloadTimestampWithinThreshold:(tagVCAudioRedPayload *)threshold forTimestamp:(unsigned int)timestamp
{
  v32 = *MEMORY[0x1E69E9840];
  if (!threshold)
  {
    return 0;
  }

  samplesPerFrame = self->_samplesPerFrame;
  v6 = timestamp + 2 * samplesPerFrame;
  v7 = timestamp - 2 * samplesPerFrame;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v8 = 2 * samplesPerFrame;
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        timestamp = threshold->timestamp;
        v18 = 136316674;
        v19 = v9;
        v20 = 2080;
        v21 = "[VCAudioRedBuilder isPayloadTimestampWithinThreshold:forTimestamp:]";
        v22 = 1024;
        v23 = 283;
        v24 = 1024;
        v25 = v8;
        v26 = 1024;
        v27 = v6;
        v28 = 1024;
        v29 = v7;
        v30 = 1024;
        timestampCopy = timestamp;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCAudioRedBuilder [%s] %s:%d timestampOffsetThreshold:%d highThreshold:%d lowThreshold:%d payloadTimestamp:%d", &v18, 0x34u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = threshold->timestamp;
      v18 = 136316674;
      v19 = v9;
      v20 = 2080;
      v21 = "[VCAudioRedBuilder isPayloadTimestampWithinThreshold:forTimestamp:]";
      v22 = 1024;
      v23 = 283;
      v24 = 1024;
      v25 = v8;
      v26 = 1024;
      v27 = v6;
      v28 = 1024;
      v29 = v7;
      v30 = 1024;
      timestampCopy = v17;
      _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, "VCAudioRedBuilder [%s] %s:%d timestampOffsetThreshold:%d highThreshold:%d lowThreshold:%d payloadTimestamp:%d", &v18, 0x34u);
    }
  }

  v13 = threshold->timestamp;
  if (v13 - v7 <= 0x7FFFFFFE && ((v14 = v13 - v6) != 0 ? (v15 = v14 > 0x7FFFFFFE) : (v15 = 1), v15))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

- (char)resetOutputPayload:(tagVCAudioRedPayload *)payload
{
  *&payload->payloadType = 0u;
  *&payload->bufferLength = 0u;
  result = self->_redPayloadBufferToSend;
  payload->buffer = result;
  return result;
}

- (tagVCAudioRedPayload)nearestRedPayloadForTimestamp:(unsigned int)timestamp payloadHistory:(tagVCAudioRedPayload *)history payloadHistoryCount:(unsigned int)count
{
  historyCopy2 = 0;
  v34 = *MEMORY[0x1E69E9840];
  if (history && count)
  {
    v6 = *&timestamp;
    if (history->timestamp - timestamp <= 0x7FFFFFFE)
    {
      v8 = 0;
      v9 = 0;
      historyCopy = history;
      countCopy = count;
      while (--countCopy)
      {
        v8 = &history[v9++];
        historyCopy2 = historyCopy + 1;
        v12 = historyCopy[1].timestamp - timestamp;
        ++historyCopy;
        if (v12 >= 0x7FFFFFFF)
        {
          v8 = historyCopy2 - 1;
          goto LABEL_10;
        }
      }

      historyCopy2 = &history[count - 1];
    }

    else
    {
      v8 = 0;
      historyCopy2 = history;
    }

LABEL_10:
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      __str = 0;
      v13 = objc_opt_class() ? [objc_msgSend(objc_opt_class() "description")] : "<nil>";
      asprintf(&__str, "%s: redTimestamp:%d current:%s previous:%s", v13, v6, [(VCAudioRedBuilder *)self redPayloadDescription:historyCopy2], [(VCAudioRedBuilder *)self redPayloadDescription:v8]);
      if (__str)
      {
        selfCopy = self;
        __lasts = 0;
        v14 = strtok_r(__str, "\n", &__lasts);
        v15 = MEMORY[0x1E6986640];
        v16 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *v16;
            v19 = *v16;
            if (*v15 == 1)
            {
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v25 = v17;
                v26 = 2080;
                v27 = "[VCAudioRedBuilder nearestRedPayloadForTimestamp:payloadHistory:payloadHistoryCount:]";
                v28 = 1024;
                v29 = 316;
                v30 = 2080;
                v31 = "[VCAudioRedBuilder nearestRedPayloadForTimestamp:payloadHistory:payloadHistoryCount:]";
                v32 = 2080;
                v33 = v14;
                _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCAudioRedBuilder [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              v25 = v17;
              v26 = 2080;
              v27 = "[VCAudioRedBuilder nearestRedPayloadForTimestamp:payloadHistory:payloadHistoryCount:]";
              v28 = 1024;
              v29 = 316;
              v30 = 2080;
              v31 = "[VCAudioRedBuilder nearestRedPayloadForTimestamp:payloadHistory:payloadHistoryCount:]";
              v32 = 2080;
              v33 = v14;
              _os_log_debug_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEBUG, "VCAudioRedBuilder [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v14 = strtok_r(0, "\n", &__lasts);
        }

        while (v14);
        free(__str);
        self = selfCopy;
      }
    }

    if (historyCopy2->timestamp != v6)
    {
      if (v8 && v8->timestamp == v6)
      {
        return v8;
      }

      else if (![(VCAudioRedBuilder *)self isPayloadTimestampWithinThreshold:historyCopy2 forTimestamp:v6])
      {
        if ([(VCAudioRedBuilder *)self isPayloadTimestampWithinThreshold:v8 forTimestamp:v6])
        {
          return v8;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return historyCopy2;
}

- (id)selectRedPayloadsForPrimaryPayload:(tagVCAudioRedPayload *)payload
{
  v61 = *MEMORY[0x1E69E9840];
  [(NSPointerArray *)self->_selectedRedPayloads setCount:0];
  if (self->_historyCount)
  {
    LODWORD(v4) = self->_numPayloads;
    v47 = self->_maxREDPayloadSize + ~payload->bufferLength;
    if (self->_includeSequenceOffset)
    {
      v5 = self->_maxDelay / v4;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        __str = 0;
        v6 = objc_opt_class() ? [objc_msgSend(objc_opt_class() "description")] : "<nil>";
        asprintf(&__str, "%s: primary:%s numPayloads:%d maxDelay:%d strideInBlocks:%f", v6, [(VCAudioRedBuilder *)self redPayloadDescription:payload], self->_numPayloads, self->_maxDelay, v5);
        if (__str)
        {
          __lasts = 0;
          v9 = strtok_r(__str, "\n", &__lasts);
          v10 = MEMORY[0x1E6986640];
          v11 = MEMORY[0x1E6986650];
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v12 = VRTraceErrorLogLevelToCSTR();
              v13 = *v11;
              v14 = *v11;
              if (*v10 == 1)
              {
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316162;
                  v53 = v12;
                  v54 = 2080;
                  v55 = "[VCAudioRedBuilder selectRedPayloadsForPrimaryPayload:]";
                  v56 = 1024;
                  v57 = 352;
                  v58 = 2080;
                  *v59 = "[VCAudioRedBuilder selectRedPayloadsForPrimaryPayload:]";
                  *&v59[8] = 2080;
                  *&v59[10] = v9;
                  _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCAudioRedBuilder [%s] %s:%d %s %s", buf, 0x30u);
                }
              }

              else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136316162;
                v53 = v12;
                v54 = 2080;
                v55 = "[VCAudioRedBuilder selectRedPayloadsForPrimaryPayload:]";
                v56 = 1024;
                v57 = 352;
                v58 = 2080;
                *v59 = "[VCAudioRedBuilder selectRedPayloadsForPrimaryPayload:]";
                *&v59[8] = 2080;
                *&v59[10] = v9;
                _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VCAudioRedBuilder [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v9 = strtok_r(0, "\n", &__lasts);
          }

          while (v9);
          free(__str);
        }
      }

      if (self->_numPayloads)
      {
        v15 = 1;
        while (1)
        {
          v16 = vcvtps_s32_f32(v5 * v15);
          v17 = self->_samplesPerFrame * v16;
          v18 = payload->timestamp - v17;
          v19 = self->_historyCount - 1;
          if (v19 >= v15)
          {
            LOBYTE(v19) = v15;
          }

          v20 = [(VCAudioRedBuilder *)self nearestRedPayloadForTimestamp:payload->timestamp - v17 payloadHistory:self->_history[v19].payloadHistory payloadHistoryCount:self->_history[v19].payloadHistoryCount];
          if (VRTraceGetErrorLogLevelForModule() < 8)
          {
            goto LABEL_33;
          }

          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x1E6986650];
          v23 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            break;
          }

          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_33;
          }

          v25 = [(VCAudioRedBuilder *)self redPayloadDescription:v20];
          *buf = 136316674;
          v53 = v21;
          v54 = 2080;
          v55 = "[VCAudioRedBuilder selectRedPayloadsForPrimaryPayload:]";
          v56 = 1024;
          v57 = 364;
          v58 = 1024;
          *v59 = v16;
          *&v59[4] = 1024;
          *&v59[6] = v17;
          *&v59[10] = 1024;
          *&v59[12] = v18;
          *&v59[16] = 2080;
          v60 = v25;
          _os_log_debug_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEBUG, "VCAudioRedBuilder [%s] %s:%d blockOffset:%d timestampOffset:%d redTimestamp:%d redPayload:%s", buf, 0x38u);
          if (v20)
          {
LABEL_34:
            if (self->_numPayloads > v20->redCount && ![(VCAudioRedBuilder *)self redundantPayloads:self->_selectedRedPayloads containsPointer:v20]&& v47 > v20->bufferLength + 4)
            {
              [(NSPointerArray *)self->_selectedRedPayloads addPointer:v20];
              v47 = v47 - v20->bufferLength - 4;
            }
          }

LABEL_38:
          if (++v15 > self->_numPayloads)
          {
            return self->_selectedRedPayloads;
          }
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(VCAudioRedBuilder *)self redPayloadDescription:v20];
          *buf = 136316674;
          v53 = v21;
          v54 = 2080;
          v55 = "[VCAudioRedBuilder selectRedPayloadsForPrimaryPayload:]";
          v56 = 1024;
          v57 = 364;
          v58 = 1024;
          *v59 = v16;
          *&v59[4] = 1024;
          *&v59[6] = v17;
          *&v59[10] = 1024;
          *&v59[12] = v18;
          *&v59[16] = 2080;
          v60 = v24;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCAudioRedBuilder [%s] %s:%d blockOffset:%d timestampOffset:%d redTimestamp:%d redPayload:%s", buf, 0x38u);
          if (v20)
          {
            goto LABEL_34;
          }

          goto LABEL_38;
        }

LABEL_33:
        if (v20)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }
    }

    else
    {
      payloadHistoryCount = self->_history[0].payloadHistoryCount;
      if (payloadHistoryCount >= v4)
      {
        v4 = v4;
      }

      else
      {
        v4 = payloadHistoryCount;
      }

      v48 = v4;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        __str = 0;
        v8 = objc_opt_class() ? [objc_msgSend(objc_opt_class() "description")] : "<nil>";
        asprintf(&__str, "%s: primary:%s numPayloads:%d maxDelay:%d count:%d", v8, [(VCAudioRedBuilder *)self redPayloadDescription:payload], self->_numPayloads, self->_maxDelay, v48);
        if (__str)
        {
          __lasts = 0;
          v26 = strtok_r(__str, "\n", &__lasts);
          v27 = MEMORY[0x1E6986640];
          v28 = MEMORY[0x1E6986650];
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v29 = VRTraceErrorLogLevelToCSTR();
              v30 = *v28;
              v31 = *v28;
              if (*v27 == 1)
              {
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316162;
                  v53 = v29;
                  v54 = 2080;
                  v55 = "[VCAudioRedBuilder selectRedPayloadsForPrimaryPayload:]";
                  v56 = 1024;
                  v57 = 375;
                  v58 = 2080;
                  *v59 = "[VCAudioRedBuilder selectRedPayloadsForPrimaryPayload:]";
                  *&v59[8] = 2080;
                  *&v59[10] = v26;
                  _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCAudioRedBuilder [%s] %s:%d %s %s", buf, 0x30u);
                }
              }

              else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136316162;
                v53 = v29;
                v54 = 2080;
                v55 = "[VCAudioRedBuilder selectRedPayloadsForPrimaryPayload:]";
                v56 = 1024;
                v57 = 375;
                v58 = 2080;
                *v59 = "[VCAudioRedBuilder selectRedPayloadsForPrimaryPayload:]";
                *&v59[8] = 2080;
                *&v59[10] = v26;
                _os_log_debug_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEBUG, "VCAudioRedBuilder [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v26 = strtok_r(0, "\n", &__lasts);
          }

          while (v26);
          free(__str);
        }
      }

      if (v48)
      {
        v32 = 0;
        v33 = 0;
        selfCopy = self;
        do
        {
          historyCount = self->_historyCount;
          v36 = historyCount - 1;
          if (historyCount - 1 >= v32)
          {
            v36 = v32;
          }

          if (historyCount > 1)
          {
            v33 = v36;
          }

          v37 = selfCopy + 344 * v33;
          v38 = payload->timestamp - *(v37 + 21);
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v39 = VRTraceErrorLogLevelToCSTR();
            v40 = *MEMORY[0x1E6986650];
            v41 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = [(VCAudioRedBuilder *)self redPayloadDescription:v37 + 64];
                *buf = 136316162;
                v53 = v39;
                v54 = 2080;
                v55 = "[VCAudioRedBuilder selectRedPayloadsForPrimaryPayload:]";
                v56 = 1024;
                v57 = 387;
                v58 = 1024;
                *v59 = v38;
                *&v59[4] = 2080;
                *&v59[6] = v42;
                _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, "VCAudioRedBuilder [%s] %s:%d timestampOffset:%d redPayload:%s", buf, 0x2Cu);
              }
            }

            else if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              v45 = [(VCAudioRedBuilder *)self redPayloadDescription:v37 + 64];
              *buf = 136316162;
              v53 = v39;
              v54 = 2080;
              v55 = "[VCAudioRedBuilder selectRedPayloadsForPrimaryPayload:]";
              v56 = 1024;
              v57 = 387;
              v58 = 1024;
              *v59 = v38;
              *&v59[4] = 2080;
              *&v59[6] = v45;
              _os_log_debug_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEBUG, "VCAudioRedBuilder [%s] %s:%d timestampOffset:%d redPayload:%s", buf, 0x2Cu);
            }
          }

          if (self->_numPayloads > selfCopy->_history[v33].payloadHistory[0].redCount && v38 >> 14 == 0 && ![(VCAudioRedBuilder *)self redundantPayloads:self->_selectedRedPayloads containsPointer:v37 + 64])
          {
            v44 = selfCopy + 344 * v33;
            if (v47 > *(v44 + 20) + 4)
            {
              [(NSPointerArray *)self->_selectedRedPayloads addPointer:v37 + 64];
              v47 = v47 - *(v44 + 20) - 4;
            }
          }

          ++v32;
          selfCopy = (selfCopy + 32);
        }

        while (v48 != v32);
      }
    }
  }

  return self->_selectedRedPayloads;
}

- (BOOL)redundantPayloads:(id)payloads containsPointer:(void *)pointer
{
  if ([payloads count] < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = [payloads pointerAtIndex:v6];
    v8 = v7 == pointer;
    if (v7 == pointer)
    {
      break;
    }

    ++v6;
  }

  while (v6 < [payloads count]);
  return v8;
}

- (char)redPayloadDescription:(tagVCAudioRedPayload *)description
{
  redPayloadDebugMessage = self->_redPayloadDebugMessage;
  if (description)
  {
    snprintf(self->_redPayloadDebugMessage, 0x101uLL, "{ VCAudioRedPayload payloadType=%d bufferLen=%d timestamp=%u isRedAudio=%d redCount=%d sequenceOffset=%d }", description->payloadType, description->bufferLength, description->timestamp, description->isRedAudio, description->redCount, description->sequenceOffset);
  }

  else
  {
    strcpy(self->_redPayloadDebugMessage, "VCAudioRedPayload NULL");
  }

  return redPayloadDebugMessage;
}

- (char)redundantPayloadsDescription:(id)description
{
  redPayloadHistoryDebugMessage = self->_redPayloadHistoryDebugMessage;
  strncpy(self->_redPayloadHistoryDebugMessage, "{ \n", 0x101uLL);
  if ([description count] >= 1)
  {
    v6 = 0;
    do
    {
      v7 = strncat(redPayloadHistoryDebugMessage, -[VCAudioRedBuilder redPayloadDescription:](self, "redPayloadDescription:", [description pointerAtIndex:v6]), 0x101uLL);
      *&redPayloadHistoryDebugMessage[strlen(v7)] = 10;
      ++v6;
    }

    while (v6 < [description count]);
  }

  strcat(redPayloadHistoryDebugMessage, " }");
  return redPayloadHistoryDebugMessage;
}

- (char)payloadHistoryDescriptionForInfoIndex:(unsigned __int8)index
{
  indexCopy = index;
  redPayloadHistoryDebugMessage = self->_redPayloadHistoryDebugMessage;
  strncpy(self->_redPayloadHistoryDebugMessage, "{ primary:\n", 0x101uLL);
  v6 = self + 344 * indexCopy;
  if (*(v6 + 88))
  {
    v7 = 0;
    v8 = v6 + 32;
    v9 = v6 + 64;
    do
    {
      v10 = strncat(redPayloadHistoryDebugMessage, [(VCAudioRedBuilder *)self redPayloadDescription:v9], 0x101uLL);
      *&redPayloadHistoryDebugMessage[strlen(v10)] = 10;
      ++v7;
      v9 += 32;
    }

    while (v7 < *(v8 + 80));
  }

  strcat(redPayloadHistoryDebugMessage, " }");
  return redPayloadHistoryDebugMessage;
}

- (tagVCAudioRedPayload)redPayloadForPrimaryPayload:(tagVCAudioRedPayload *)payload
{
  objc_sync_enter(self);
  v5 = [(VCAudioRedBuilder *)self buildRedPayloadWithPrimaryPayload:payload redPayloads:[(VCAudioRedBuilder *)self selectRedPayloadsForPrimaryPayload:payload]];
  objc_sync_exit(self);
  return v5;
}

- (void)resetShortREDHistoryAndPrimaryPayloadHistory:(BOOL)history
{
  v27 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  v3 = !history;
  if (self->_historyCount > v3)
  {
    history = self->_history;
    v6 = MEMORY[0x1E6986640];
    v7 = MEMORY[0x1E6986650];
    v13 = self->_history;
    do
    {
      v8 = &history[v3];
      v8->payloadHistoryCount = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        __str = 0;
        asprintf(&__str, "resetPrimaryPayloadHistory=%d historyIndex=%u count=%u history=%s", historyCopy, v3, v8->payloadHistoryCount, [(VCAudioRedBuilder *)self payloadHistoryDescriptionForInfoIndex:v3]);
        if (__str)
        {
          __lasts = 0;
          v9 = strtok_r(__str, "\n", &__lasts);
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v10 = VRTraceErrorLogLevelToCSTR();
              v11 = *v7;
              v12 = *v7;
              if (*v6 == 1)
              {
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316162;
                  v18 = v10;
                  v19 = 2080;
                  v20 = "[VCAudioRedBuilder resetShortREDHistoryAndPrimaryPayloadHistory:]";
                  v21 = 1024;
                  v22 = 492;
                  v23 = 2080;
                  v24 = "";
                  v25 = 2080;
                  v26 = v9;
                  _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCAudioRedBuilder [%s] %s:%d %s %s", buf, 0x30u);
                }
              }

              else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136316162;
                v18 = v10;
                v19 = 2080;
                v20 = "[VCAudioRedBuilder resetShortREDHistoryAndPrimaryPayloadHistory:]";
                v21 = 1024;
                v22 = 492;
                v23 = 2080;
                v24 = "";
                v25 = 2080;
                v26 = v9;
                _os_log_debug_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEBUG, "VCAudioRedBuilder [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v9 = strtok_r(0, "\n", &__lasts);
          }

          while (v9);
          free(__str);
          history = v13;
        }
      }

      ++v3;
    }

    while (v3 < self->_historyCount);
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = &self->_history[v3];
    payloadBufferHistory = v6->payloadBufferHistory;
    if (payloadBufferHistory)
    {
      free(payloadBufferHistory);
      v6->payloadBufferHistory = 0;
    }

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  v8.receiver = self;
  v8.super_class = VCAudioRedBuilder;
  [(VCAudioRedBuilder *)&v8 dealloc];
}

- (VCAudioRedBuilder)initWithRedPayloadType:(int)type sampleRate:(unsigned int)rate samplesPerFrame:(unsigned int)frame numPayloads:(unsigned int)payloads maxDelay:(unsigned int)delay includeSequenceOffset:(BOOL)offset
{
  v24 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = VCAudioRedBuilder;
  v14 = [(VCAudioRedBuilder *)&v23 init];
  v15 = v14;
  if (v14)
  {
    v14->_redPayloadType = type;
    v14->_sampleRate = rate;
    v14->_samplesPerFrame = frame;
    if (delay <= payloads)
    {
      delayCopy = payloads;
    }

    else
    {
      delayCopy = delay;
    }

    v14->_numPayloads = payloads;
    v14->_maxDelay = delayCopy;
    v14->_includeSequenceOffset = offset;
    v14->_maxREDPayloadSize = 1280;
    v17 = 1;
    v14->_historyCount = 1;
    v14->_selectedRedPayloads = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:258];
    v18 = VCFeatureFlagManager_UseShortREDWithACC24();
    v19 = v18;
    if (v18)
    {
      v17 = 2;
    }

    for (i = 360; ; i += 344)
    {
      v21 = malloc_type_calloc(9uLL, 0x5C0uLL, 0x737C9F51uLL);
      *(&v15->super.isa + i) = v21;
      if (!v21)
      {
        break;
      }

      if (!--v17)
      {
        if ((v19 & 1) == 0)
        {
          v15->_history[1].payloadBufferHistory = 0;
        }

        return v15;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioRedBuilder initWithRedPayloadType:sampleRate:samplesPerFrame:numPayloads:maxDelay:includeSequenceOffset:];
      }
    }

    return 0;
  }

  return v15;
}

+ (unsigned)redOverheadForNumPayloads:(unsigned int)payloads
{
  if (payloads)
  {
    return 4 * payloads + 1;
  }

  else
  {
    return 0;
  }
}

- (unsigned)maxDelay
{
  objc_sync_enter(self);
  maxDelay = self->_maxDelay;
  objc_sync_exit(self);
  return maxDelay;
}

- (void)setMaxDelay:(unsigned int)delay
{
  v19 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (delay < 0xA)
  {
    delayCopy = delay;
  }

  else if (VRTraceGetErrorLogLevelForModule() < 5)
  {
    delayCopy = 9;
  }

  else
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    delayCopy = 9;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCAudioRedBuilder setMaxDelay:]";
      v13 = 1024;
      v14 = 594;
      v15 = 1024;
      delayCopy2 = delay;
      v17 = 1024;
      v18 = 9;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCAudioRedBuilder [%s] %s:%d Cap exceeded for maxDelay:%d using %d instead", &v9, 0x28u);
    }
  }

  if (self->_maxDelay != delayCopy)
  {
    self->_maxDelay = delayCopy;
  }

  numPayloads = self->_numPayloads;
  if (numPayloads > delayCopy)
  {
    self->_maxDelay = numPayloads;
  }

  objc_sync_exit(self);
}

- (unsigned)numPayloads
{
  objc_sync_enter(self);
  numPayloads = self->_numPayloads;
  objc_sync_exit(self);
  return numPayloads;
}

- (void)setNumPayloads:(unsigned int)payloads
{
  v18 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (payloads < 4)
  {
    payloadsCopy = payloads;
  }

  else if (VRTraceGetErrorLogLevelForModule() < 5)
  {
    payloadsCopy = 3;
  }

  else
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    payloadsCopy = 3;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCAudioRedBuilder setNumPayloads:]";
      v12 = 1024;
      v13 = 616;
      v14 = 1024;
      payloadsCopy2 = payloads;
      v16 = 1024;
      v17 = 3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCAudioRedBuilder [%s] %s:%d Cap exceeded for number of red payloads:%d using %d instead", &v8, 0x28u);
    }
  }

  if (payloadsCopy != self->_numPayloads)
  {
    self->_numPayloads = payloadsCopy;
    if (payloadsCopy > self->_maxDelay)
    {
      self->_maxDelay = payloadsCopy;
    }
  }

  objc_sync_exit(self);
}

- (void)buildRedPayloadWithPrimaryPayload:redPayloads:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCAudioRedBuilder [%s] %s:%d Discarding Red payload with too old timestamp offset :%d", v2, v3, v4, v5);
}

- (void)buildRedPayloadWithPrimaryPayload:(void *)a3 redPayloads:(_DWORD *)a4 .cold.2(uint64_t a1, _DWORD *a2, void *a3, _DWORD *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315906;
      v12 = v8;
      v13 = 2080;
      OUTLINED_FUNCTION_6();
      v14 = 223;
      v15 = v10;
      v16 = 0;
      _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "VCAudioRedBuilder [%s] %s:%d Buffer size not enough remainingLength %d", &v11, 0x22u);
    }
  }

  *a4 = 0;
  *a3 = a1;
  *a2 = 0;
}

- (void)buildRedPayloadWithPrimaryPayload:redPayloads:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCAudioRedBuilder [%s] %s:%d Discarding Red payload with too old timestamp offset :%d", v2, v3, v4, v5);
}

- (void)buildRedPayloadWithPrimaryPayload:redPayloads:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCAudioRedBuilder [%s] %s:%d Discarding Red payload with too old sequence offset :%d", v2, v3, v4, v5);
}

- (void)buildRedPayloadWithPrimaryPayload:redPayloads:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCAudioRedBuilder [%s] %s:%d Discarding Red payload that is too big :%d", v2, v3, v4, v5);
}

- (void)buildRedPayloadWithPrimaryPayload:redPayloads:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCAudioRedBuilder [%s] %s:%d Buffer size not enough remainingLength %d", v2, v3, v4, v5);
}

- (void)initWithRedPayloadType:sampleRate:samplesPerFrame:numPayloads:maxDelay:includeSequenceOffset:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioRedBuilder [%s] %s:%d Failed to allocate red payload buffer history", v2, v3, v4, v5, v6);
}

@end