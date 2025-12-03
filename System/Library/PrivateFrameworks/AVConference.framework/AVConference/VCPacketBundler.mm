@interface VCPacketBundler
- (BOOL)_copyInputBytes:(void *)bytes numInputBytes:(unsigned int)inputBytes payloadType:(int)type timestamp:(unsigned int)timestamp;
- (BOOL)bundleAudioLegacy:(void *)legacy numInputBytes:(unsigned int)bytes payloadType:(int)type timestamp:(unsigned int)timestamp;
- (BOOL)bundleAudioRFC3640:(void *)c3640 numInputBytes:(unsigned int)bytes payloadType:(int)type timestamp:(unsigned int)timestamp;
- (BOOL)reallocateBufferWithMaxPacketSize:(unsigned int)size maxPacketCount:(unsigned int)count;
- (VCPacketBundler)initWithOperatingMode:(int)mode bundlingScheme:(int)scheme;
- (char)encodedBuffer;
- (char)encodedBufferForRFC3640;
- (unsigned)accessUnitHeaderSectionSize;
- (unsigned)encodedBufferSize;
- (void)dealloc;
- (void)initLock;
- (void)resetBuffer;
- (void)setMaxPacketSize:(unsigned int)size;
@end

@implementation VCPacketBundler

- (VCPacketBundler)initWithOperatingMode:(int)mode bundlingScheme:(int)scheme
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCPacketBundler;
  v6 = [(VCPacketBundler *)&v13 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v6->_cdrxBundleInfoRef = 0;
  p_cdrxBundleInfoRef = &v6->_cdrxBundleInfoRef;
  *&v6->_packetsPerBundle = 0x8000000001;
  v6->_maxPacketSize = 512;
  v9 = 1;
  v6->_allowLargePackets = 1;
  v6->_operatingMode = mode;
  v6->_bundlingScheme = scheme;
  if (scheme != 3)
  {
    goto LABEL_5;
  }

  v10 = malloc_type_calloc(1uLL, 0x58uLL, 0x10200404CEB7EB2uLL);
  *p_cdrxBundleInfoRef = v10;
  if (v10)
  {
    if (!CMSimpleQueueCreate(*MEMORY[0x1E695E480], 8, v10 + 10))
    {
      goto LABEL_5;
    }

    [VCPacketBundler initWithOperatingMode:bundlingScheme:];
  }

  else
  {
    [VCPacketBundler initWithOperatingMode:bundlingScheme:];
  }

  if (*p_cdrxBundleInfoRef)
  {
    _VCPacketBundler_CleanupCDRXInfo(&v7->_cdrxBundleInfoRef);
  }

  v9 = 0;
LABEL_5:
  [(VCPacketBundler *)v7 initLock];
  v11 = [(VCPacketBundler *)v7 reallocateBufferWithMaxPacketSize:v7->_maxPacketSize maxPacketCount:v7->_packetsPerBundle];
  if (!v9 || !v11)
  {
    [VCPacketBundler initWithOperatingMode:bundlingScheme:];
LABEL_8:

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  buffer = self->_buffer;
  if (buffer)
  {
    free(buffer);
    self->_buffer = 0;
  }

  if (self->_cdrxBundleInfoRef)
  {
    _VCPacketBundler_CleanupCDRXInfo(&self->_cdrxBundleInfoRef);
  }

  pthread_mutex_destroy(&self->_mutex);
  v4.receiver = self;
  v4.super_class = VCPacketBundler;
  [(VCPacketBundler *)&v4 dealloc];
}

- (BOOL)reallocateBufferWithMaxPacketSize:(unsigned int)size maxPacketCount:(unsigned int)count
{
  v4 = *&count;
  v5 = *&size;
  [(VCPacketBundler *)self lock];
  v7 = [(VCPacketBundler *)self bundleBufferSizeWidthMaxPacketSize:v5 maxPacketCount:v4];
  if (v7 > self->_bufferSize)
  {
    v8 = v7;
    v9 = malloc_type_realloc(self->_buffer, v7, 0x85201ECAuLL);
    self->_buffer = v9;
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    self->_bufferSize = v10;
  }

  self->_packetsPerBundle = v4;
  self->_maxPacketSize = v5;
  if (self->_bundledPackets >= v4)
  {
    self->_isFull = 1;
  }

  v11 = self->_buffer != 0;
  [(VCPacketBundler *)self unlock];
  return v11;
}

- (void)setMaxPacketSize:(unsigned int)size
{
  if (self->_maxPacketSize != size)
  {
    [VCPacketBundler reallocateBufferWithMaxPacketSize:"reallocateBufferWithMaxPacketSize:maxPacketCount:" maxPacketCount:?];
  }
}

- (char)encodedBuffer
{
  if (self->_bundlingScheme == 2)
  {
    return [(VCPacketBundler *)self encodedBufferForRFC3640];
  }

  else
  {
    return self->_buffer;
  }
}

- (unsigned)encodedBufferSize
{
  if (self->_bundlingScheme == 2)
  {
    return [(VCPacketBundler *)self encodedBufferSizeForRFC3640];
  }

  else
  {
    return self->_encodedBufferSize;
  }
}

- (char)encodedBufferForRFC3640
{
  accessUnitHeaderSectionSize = [(VCPacketBundler *)self accessUnitHeaderSectionSize];
  result = [(VCPacketBundler *)self accessUnitDataSectionHead];
  v5 = result;
  if (accessUnitHeaderSectionSize)
  {
    result -= accessUnitHeaderSectionSize;
    *result = bswap32(16 * self->_accessUnitHeaderInfo.accessUnitCount) >> 16;
    if (self->_accessUnitHeaderInfo.accessUnitCount)
    {
      v6 = 0;
      v7 = &v5[-accessUnitHeaderSectionSize + 2];
      do
      {
        *(v7 + 2 * v6) = bswap32(8 * self->_accessUnitHeaderInfo.accessUnitSize[v6]) >> 16;
        ++v6;
      }

      while (v6 < self->_accessUnitHeaderInfo.accessUnitCount);
    }
  }

  return result;
}

- (unsigned)accessUnitHeaderSectionSize
{
  if (self->_accessUnitHeaderInfo.accessUnitCount)
  {
    return 2 * self->_accessUnitHeaderInfo.accessUnitCount + 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)bundleAudioRFC3640:(void *)c3640 numInputBytes:(unsigned int)bytes payloadType:(int)type timestamp:(unsigned int)timestamp
{
  v7 = *&type;
  v45 = *MEMORY[0x1E69E9840];
  accessUnitDataSectionHead = [(VCPacketBundler *)self accessUnitDataSectionHead];
  accessUnitDataSectionSize = self->_accessUnitDataSectionSize;
  v13 = [VCPayloadUtils canBundleExternallyForPayload:v7 forBundlingScheme:2 operatingMode:self->_operatingMode];
  v14 = self->_accessUnitDataSectionSize + bytes;
  if (v13)
  {
    if (v14 + [(VCPacketBundler *)self accessUnitHeaderSectionSizeMaximum]> self->_bufferSize)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        v17 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (v17)
        {
          bufferSize = self->_bufferSize;
          v19 = self->_accessUnitDataSectionSize;
          bundledPackets = self->_bundledPackets;
          v31 = 136316674;
          v32 = v15;
          v33 = 2080;
          v34 = "[VCPacketBundler bundleAudioRFC3640:numInputBytes:payloadType:timestamp:]";
          v35 = 1024;
          v36 = 263;
          v37 = 1024;
          bytesCopy2 = bytes;
          v39 = 1024;
          v40 = bufferSize;
          v41 = 1024;
          v42 = v19;
          v43 = 1024;
          v44 = bundledPackets;
          v21 = " [%s] %s:%d RFC3640 bundling encountered an error: inputBytes=%u bufferSize=%u accessUnitDataSectionSize=%u bundledCount=%u";
LABEL_10:
          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, v21, &v31, 0x34u);
          goto LABEL_11;
        }

        return v17;
      }

LABEL_11:
      LOBYTE(v17) = 0;
      return v17;
    }

    accessUnitCount = self->_accessUnitHeaderInfo.accessUnitCount;
    self->_accessUnitHeaderInfo.accessUnitSize[accessUnitCount] = bytes;
    self->_accessUnitHeaderInfo.accessUnitCount = accessUnitCount + 1;
LABEL_13:
    memcpy(&accessUnitDataSectionHead[accessUnitDataSectionSize], c3640, bytes);
    v27 = self->_bundledPackets;
    self->_accessUnitDataSectionSize += bytes;
    if (!v27)
    {
      self->_payload = v7;
      self->_timestamp = timestamp;
    }

    v28 = v27 + 1;
    self->_bundledPackets = v28;
    v29 = !v13 || v28 == self->_packetsPerBundle;
    self->_isFull = v29;
    LOBYTE(v17) = 1;
    return v17;
  }

  if (v14 <= self->_bufferSize)
  {
    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_11;
  }

  v22 = VRTraceErrorLogLevelToCSTR();
  v16 = *MEMORY[0x1E6986650];
  v17 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v17)
  {
    v23 = self->_bufferSize;
    v24 = self->_accessUnitDataSectionSize;
    v25 = self->_bundledPackets;
    v31 = 136316674;
    v32 = v22;
    v33 = 2080;
    v34 = "[VCPacketBundler bundleAudioRFC3640:numInputBytes:payloadType:timestamp:]";
    v35 = 1024;
    v36 = 270;
    v37 = 1024;
    bytesCopy2 = bytes;
    v39 = 1024;
    v40 = v23;
    v41 = 1024;
    v42 = v24;
    v43 = 1024;
    v44 = v25;
    v21 = " [%s] %s:%d Bundling encountered an error: inputBytes=%u bufferSize=%u accessUnitDataSectionSize=%u bundledCount=%u";
    goto LABEL_10;
  }

  return v17;
}

- (BOOL)_copyInputBytes:(void *)bytes numInputBytes:(unsigned int)inputBytes payloadType:(int)type timestamp:(unsigned int)timestamp
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = self->_encodedBufferSize + inputBytes;
  bufferSize = self->_bufferSize;
  if (v8 > bufferSize)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v15 = self->_bufferSize;
        encodedBufferSize = self->_encodedBufferSize;
        bundledPackets = self->_bundledPackets;
        v18 = 136316674;
        v19 = v12;
        v20 = 2080;
        v21 = "[VCPacketBundler _copyInputBytes:numInputBytes:payloadType:timestamp:]";
        v22 = 1024;
        v23 = 360;
        v24 = 1024;
        inputBytesCopy = inputBytes;
        v26 = 1024;
        v27 = v15;
        v28 = 1024;
        v29 = encodedBufferSize;
        v30 = 1024;
        v31 = bundledPackets;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Bundling encountered an error: inputBytes=%u bufferSize=%u encodedBufferSize=%u bundledCount=%u", &v18, 0x34u);
      }
    }
  }

  else
  {
    memcpy(self->_buffer, bytes, inputBytes);
    self->_timestamp = timestamp;
    self->_encodedBufferSize = inputBytes;
    self->_payload = type;
    self->_bundledPackets = 1;
    self->_isFull = 1;
  }

  return v8 <= bufferSize;
}

- (BOOL)bundleAudioLegacy:(void *)legacy numInputBytes:(unsigned int)bytes payloadType:(int)type timestamp:(unsigned int)timestamp
{
  v49 = *MEMORY[0x1E69E9840];
  v11 = &self->_buffer[self->_encodedBufferSize];
  v12 = [VCPayloadUtils canBundleExternallyForPayload:*&type forBundlingScheme:1 operatingMode:self->_operatingMode];
  if (v12)
  {
    if (bytes >= 0x100 && self->_allowLargePackets)
    {
      maxPacketSize = self->_maxPacketSize;
      if (maxPacketSize >= 0x2FF)
      {
        maxPacketSize = 767;
      }

      if (maxPacketSize < bytes || bytes + self->_encodedBufferSize + 2 > self->_bufferSize)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (v16)
          {
            bufferSize = self->_bufferSize;
            encodedBufferSize = self->_encodedBufferSize;
            bundledPackets = self->_bundledPackets;
            v35 = 136316674;
            v36 = v14;
            v37 = 2080;
            v38 = "[VCPacketBundler bundleAudioLegacy:numInputBytes:payloadType:timestamp:]";
            v39 = 1024;
            v40 = 383;
            v41 = 1024;
            bytesCopy3 = bytes;
            v43 = 1024;
            v44 = bufferSize;
            v45 = 1024;
            v46 = encodedBufferSize;
            v47 = 1024;
            v48 = bundledPackets;
            v20 = " [%s] %s:%d : Large packet bundling encountered an error: inputBytes=%u bufferSize=%u encodedBufferSize=%u bundledCount=%u";
LABEL_20:
            _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, v20, &v35, 0x34u);
            goto LABEL_21;
          }

          return v16;
        }

LABEL_21:
        LOBYTE(v16) = 0;
        return v16;
      }

      *v11 = bytes & 1;
      v11[1] = (bytes >> 1) ^ 0x80;
      v11 += 2;
    }

    else
    {
      if (bytes - 256 < 0xFFFFFF02 || bytes + self->_encodedBufferSize + 1 > self->_bufferSize)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (v16)
          {
            v26 = self->_bufferSize;
            v27 = self->_encodedBufferSize;
            v28 = self->_bundledPackets;
            v35 = 136316674;
            v36 = v25;
            v37 = 2080;
            v38 = "[VCPacketBundler bundleAudioLegacy:numInputBytes:payloadType:timestamp:]";
            v39 = 1024;
            v40 = 391;
            v41 = 1024;
            bytesCopy3 = bytes;
            v43 = 1024;
            v44 = v26;
            v45 = 1024;
            v46 = v27;
            v47 = 1024;
            v48 = v28;
            v20 = " [%s] %s:%d Small packet bundling encountered an error: inputBytes=%u bufferSize=%u encodedBufferSize=%u bundledCount=%u";
            goto LABEL_20;
          }

          return v16;
        }

        goto LABEL_21;
      }

      *v11++ = bytes;
    }

LABEL_24:
    memcpy(v11, legacy, bytes);
    self->_encodedBufferSize = v11 + bytes - LODWORD(self->_buffer);
    v29 = self->_bundledPackets;
    if (!v29)
    {
      self->_payload = type;
      self->_timestamp = timestamp;
    }

    v30 = v29 + 1;
    self->_bundledPackets = v30;
    v33 = !v12 || bytes < 7 && type == 108 || v30 == self->_packetsPerBundle;
    self->_isFull = v33;
    LOBYTE(v16) = 1;
    return v16;
  }

  if (self->_encodedBufferSize + bytes <= self->_bufferSize)
  {
    goto LABEL_24;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_21;
  }

  v21 = VRTraceErrorLogLevelToCSTR();
  v15 = *MEMORY[0x1E6986650];
  v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v16)
  {
    v22 = self->_bufferSize;
    v23 = self->_encodedBufferSize;
    v24 = self->_bundledPackets;
    v35 = 136316674;
    v36 = v21;
    v37 = 2080;
    v38 = "[VCPacketBundler bundleAudioLegacy:numInputBytes:payloadType:timestamp:]";
    v39 = 1024;
    v40 = 397;
    v41 = 1024;
    bytesCopy3 = bytes;
    v43 = 1024;
    v44 = v22;
    v45 = 1024;
    v46 = v23;
    v47 = 1024;
    v48 = v24;
    v20 = " [%s] %s:%d Bundling encountered an error: inputBytes=%u bufferSize=%u encodedBufferSize=%u bundledCount=%u";
    goto LABEL_20;
  }

  return v16;
}

- (void)resetBuffer
{
  *&self->_accessUnitDataSectionSize = 0;
  self->_encodedBufferSize = 0;
  self->_accessUnitHeaderInfo = 0;
  self->_lastBundleVoiceActivity = self->_currentBundleVoiceActivity;
  self->_currentBundleVoiceActivity = 0;
  self->_isFull = 0;
  self->_priority = 0;
  cdrxBundleInfoRef = self->_cdrxBundleInfoRef;
  if (cdrxBundleInfoRef)
  {
    *&cdrxBundleInfoRef->var0[1].var3 = 0;
    *&cdrxBundleInfoRef->var0[0].var0 = 0u;
    *&cdrxBundleInfoRef->var0[0].var4 = 0u;
  }
}

- (void)initLock
{
  v4 = *MEMORY[0x1E69E9840];
  v3.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v3.__opaque = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_settype(&v3, 2);
  pthread_mutex_init(&self->_mutex, &v3);
  pthread_mutexattr_destroy(&v3);
}

- (void)initWithOperatingMode:bundlingScheme:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)initWithOperatingMode:bundlingScheme:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithOperatingMode:bundlingScheme:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

@end