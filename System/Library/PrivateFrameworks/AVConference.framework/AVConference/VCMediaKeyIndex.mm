@interface VCMediaKeyIndex
+ (id)makeInvalidKey;
+ (id)newMKIWithBytes:(char *)bytes bufferSize:(unsigned int)size;
- (BOOL)isEqual:(id)equal;
- (BOOL)isStartingWithPrefix:(id)prefix;
- (VCMediaKeyIndex)initWithBytes:(char *)bytes bufferSize:(unsigned int)size uniquePrefixLength:(unint64_t)length;
- (VCMediaKeyIndex)initWithNSUUID:(id)d uniquePrefixLength:(unint64_t)length;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unsigned)activeSize;
- (void)dealloc;
- (void)fullKeyBytes:(unsigned __int8)bytes[16];
- (void)setActiveSize:(unsigned int)size;
@end

@implementation VCMediaKeyIndex

- (VCMediaKeyIndex)initWithBytes:(char *)bytes bufferSize:(unsigned int)size uniquePrefixLength:(unint64_t)length
{
  v25 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCMediaKeyIndex;
  v8 = [(VCMediaKeyIndex *)&v14 init];
  v9 = v8;
  if (v8)
  {
    if (bytes)
    {
      if (size - 17 >= 0xFFFFFFF0 && size >= length)
      {
        *v8->_MKI = 0;
        v8->_activeSize = size;
        v8->_uniquePrefixLength = length;
        *&v8->_MKI[8] = 0;
        memcpy(v8->_MKI, bytes, size);
        return v9;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v16 = v11;
          v17 = 2080;
          v18 = "[VCMediaKeyIndex initWithBytes:bufferSize:uniquePrefixLength:]";
          v19 = 1024;
          v20 = 39;
          v21 = 1024;
          sizeCopy = size;
          v23 = 2048;
          lengthCopy = length;
          _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid size of input data bufferSize=%d, uniquePrefixLength=%llu", buf, 0x2Cu);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaKeyIndex initWithBytes:v10 bufferSize:? uniquePrefixLength:?];
      }
    }

    return 0;
  }

  return v9;
}

- (VCMediaKeyIndex)initWithNSUUID:(id)d uniquePrefixLength:(unint64_t)length
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  [d getUUIDBytes:v7];
  return [(VCMediaKeyIndex *)self initWithBytes:v7 bufferSize:16 uniquePrefixLength:length];
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = VCMediaKeyIndex;
  [(VCMediaKeyIndex *)&v2 dealloc];
}

+ (id)newMKIWithBytes:(char *)bytes bufferSize:(unsigned int)size
{
  v4 = *&size;
  v6 = [VCMediaKeyIndex alloc];

  return [(VCMediaKeyIndex *)v6 initWithBytes:bytes bufferSize:v4];
}

- (unsigned)activeSize
{
  objc_sync_enter(self);
  activeSize = self->_activeSize;
  objc_sync_exit(self);
  return activeSize;
}

- (void)setActiveSize:(unsigned int)size
{
  objc_sync_enter(self);
  self->_activeSize = size;

  objc_sync_exit(self);
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self->_MKI];
  objc_sync_enter(self);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%d):%zu", objc_msgSend(v3, "UUIDString"), self->_activeSize, self->_uniquePrefixLength];
  objc_sync_exit(self);

  return v4;
}

- (void)fullKeyBytes:(unsigned __int8)bytes[16]
{
  objc_sync_enter(self);
  *bytes = *self->_MKI;

  objc_sync_exit(self);
}

+ (id)makeInvalidKey
{
  v2 = [[VCMediaKeyIndex alloc] initWithBytes:&invalidMKI bufferSize:16];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  v7 = *MEMORY[0x1E69E9840];
  if ([equal isMemberOfClass:objc_opt_class()])
  {

    return VCMediaKeyIndex_isEqual(self, equal);
  }

  else
  {
    [VCMediaKeyIndex isEqual:?];
    return v6;
  }
}

- (BOOL)isStartingWithPrefix:(id)prefix
{
  v7 = *MEMORY[0x1E69E9840];
  if ([prefix isMemberOfClass:objc_opt_class()])
  {

    return VCMediaKeyIndex_isStartingWithPrefix(self, prefix);
  }

  else
  {
    [VCMediaKeyIndex isStartingWithPrefix:?];
    return v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_sync_enter(self);
  v5 = [[VCMediaKeyIndex allocWithZone:?], "initWithUUID:", self->_MKI];
  [(VCMediaKeyIndex *)v5 setActiveSize:self->_activeSize];
  [(VCMediaKeyIndex *)v5 setUniquePrefixLength:self->_uniquePrefixLength];
  objc_sync_exit(self);
  return v5;
}

- (void)initWithBytes:(uint64_t)a1 bufferSize:uniquePrefixLength:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 33;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameters 'buffer' passed to the method", &v2, 0x1Cu);
}

- (void)isEqual:(_BYTE *)a1 .cold.1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d keyToCompare is not of VCMediaKeyIndex class", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

- (void)isStartingWithPrefix:(_BYTE *)a1 .cold.1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d prefix is not of VCMediaKeyIndex class", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

@end