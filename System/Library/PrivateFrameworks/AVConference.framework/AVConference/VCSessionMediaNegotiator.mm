@interface VCSessionMediaNegotiator
+ (BOOL)initializeLocalConfiguration:(id)configuration negotiationData:(id)data deviceRole:(int)role preferredAudioPayload:(int)payload;
+ (id)mediaBlobForVersion:(int)version negotiationData:(id)data;
+ (id)negotiationDataWithVersion1:(id)version1 version2:(id)version2;
+ (id)negotiationDataWithVersion:(int)version mediaBlob:(id)blob;
+ (id)serializeNegotiationData:(id)data;
+ (id)streamGroupIDsWithMediaBlob:(id)blob;
+ (id)unserializeNegotiationData:(id)data;
- (BOOL)processRemoteNegotiationData:(id)data;
- (VCSessionMediaNegotiator)initWithLocalConfiguration:(id)configuration;
- (id)negotiationData;
- (void)dealloc;
@end

@implementation VCSessionMediaNegotiator

- (VCSessionMediaNegotiator)initWithLocalConfiguration:(id)configuration
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCSessionMediaNegotiator;
  v4 = [(VCSessionMediaNegotiator *)&v11 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v4->_mediaNegotiatorMap = v5;
    if (v5)
    {
      v6 = [[VCMediaNegotiator alloc] initWithLocalSettings:configuration];
      if (v6)
      {
        v7 = v6;
        [(NSMutableDictionary *)v4->_mediaNegotiatorMap setObject:v6 forKeyedSubscript:&unk_1F5799A38];

        v8 = [(VCMediaNegotiatorBase *)[VCMediaNegotiatorV2 alloc] initWithLocalSettings:configuration];
        if (v8)
        {
          v9 = v8;
          [(NSMutableDictionary *)v4->_mediaNegotiatorMap setObject:v8 forKeyedSubscript:&unk_1F5799A50];

          v4->_localSettings = configuration;
          return v4;
        }

        [VCSessionMediaNegotiator initWithLocalConfiguration:];
      }

      else
      {
        [VCSessionMediaNegotiator initWithLocalConfiguration:];
      }
    }

    else
    {
      [VCSessionMediaNegotiator initWithLocalConfiguration:];
    }

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionMediaNegotiator;
  [(VCSessionMediaNegotiator *)&v3 dealloc];
}

+ (id)mediaBlobForVersion:(int)version negotiationData:(id)data
{
  v4 = *&version;
  v5 = [VCSessionMediaNegotiator unserializeNegotiationData:data];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v4];

  return [v5 objectForKeyedSubscript:v6];
}

+ (id)negotiationDataWithVersion:(int)version mediaBlob:(id)blob
{
  v5 = *&version;
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  [v6 setObject:blob forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v5)}];

  return [VCSessionMediaNegotiator serializeNegotiationData:v6];
}

+ (id)negotiationDataWithVersion1:(id)version1 version2:(id)version2
{
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  [v6 setObject:version1 forKeyedSubscript:&unk_1F5799A38];
  [v6 setObject:version2 forKeyedSubscript:&unk_1F5799A50];

  return [VCSessionMediaNegotiator serializeNegotiationData:v6];
}

- (id)negotiationData
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  p_mediaNegotiatorMap = &self->_mediaNegotiatorMap;
  v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_mediaNegotiatorMap, "count")}];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v3 = *p_mediaNegotiatorMap;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__VCSessionMediaNegotiator_negotiationData__block_invoke;
  v6[3] = &unk_1E85F64C8;
  v6[4] = &v7;
  v6[5] = &v11;
  [(NSMutableDictionary *)v3 enumerateKeysAndObjectsUsingBlock:v6];
  if (*(v8 + 24) == 1)
  {
    v4 = [VCSessionMediaNegotiator serializeNegotiationData:v12[5]];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __43__VCSessionMediaNegotiator_negotiationData__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = [a3 negotiationData];
  if (!v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);

  return [v8 setObject:v7 forKeyedSubscript:a2];
}

- (BOOL)processRemoteNegotiationData:(id)data
{
  p_activeNegotiator = &self->_activeNegotiator;
  if (self->_activeNegotiator)
  {
    [VCSessionMediaNegotiator processRemoteNegotiationData:];
    return v10;
  }

  else
  {
    v5 = [VCSessionMediaNegotiator unserializeNegotiationData:data];
    if ([v5 count] == 1)
    {
      v6 = [objc_msgSend(v5 "allKeys")];
      v7 = [(NSMutableDictionary *)self->_mediaNegotiatorMap objectForKeyedSubscript:v6];
      if (v7)
      {
        v8 = v7;
        if ([v7 processRemoteNegotiationData:{objc_msgSend(v5, "objectForKeyedSubscript:", v6)}])
        {
          *p_activeNegotiator = v8;
          return 1;
        }

        else
        {
          [VCSessionMediaNegotiator processRemoteNegotiationData:];
          return v12;
        }
      }

      else
      {
        [VCSessionMediaNegotiator processRemoteNegotiationData:];
        return v13;
      }
    }

    else
    {
      [VCSessionMediaNegotiator processRemoteNegotiationData:];
      return v11;
    }
  }
}

+ (id)streamGroupIDsWithMediaBlob:(id)blob
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [VCSessionMediaNegotiator unserializeNegotiationData:blob];
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x2020000000;
  v20 = -1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__VCSessionMediaNegotiator_streamGroupIDsWithMediaBlob___block_invoke;
  v11[3] = &unk_1E85F64F0;
  v11[4] = &v18;
  v11[5] = &v12;
  [v3 enumerateKeysAndObjectsUsingBlock:v11];
  if (!v13[5])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionMediaNegotiator streamGroupIDsWithMediaBlob:v10];
      }
    }

    goto LABEL_10;
  }

  v4 = *(v19[0] + 24);
  if (!v4)
  {
    v5 = off_1E85F1F70;
    goto LABEL_6;
  }

  if (v4 != 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCSessionMediaNegotiator *)v7 streamGroupIDsWithMediaBlob:v19, v8];
      }
    }

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = off_1E85F1F78;
LABEL_6:
  v6 = [(__objc2_class *)*v5 streamGroupIDsWithMediaBlob:?];
LABEL_11:
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v6;
}

uint64_t __56__VCSessionMediaNegotiator_streamGroupIDsWithMediaBlob___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 intValue];
  if (result <= 1)
  {
    v6 = *(*(a1 + 32) + 8);
    if (result > *(v6 + 24))
    {
      *(v6 + 24) = result;
      *(*(*(a1 + 40) + 8) + 40) = a3;
    }
  }

  return result;
}

+ (BOOL)initializeLocalConfiguration:(id)configuration negotiationData:(id)data deviceRole:(int)role preferredAudioPayload:(int)payload
{
  v6 = *&payload;
  v7 = *&role;
  v9 = [VCSessionMediaNegotiator unserializeNegotiationData:data];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    for (i = 1; ; i = 0)
    {
      v13 = i;
      v14 = [v10 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v11)}];
      if (!v14)
      {
        +[VCSessionMediaNegotiator initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:];
        LOBYTE(v11) = v19;
        return v11;
      }

      v15 = v14;
      v16 = v11 ? VCMediaNegotiatorV2 : VCMediaNegotiator;
      if (([(__objc2_class *)v16 initializeLocalConfiguration:configuration negotiationData:v15 deviceRole:v7 preferredAudioPayload:v6]& 1) == 0)
      {
        break;
      }

      v11 = 1;
      if ((v13 & 1) == 0)
      {
        return v11;
      }
    }

    +[VCSessionMediaNegotiator initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:];
    LOBYTE(v11) = v18;
  }

  else
  {
    +[VCSessionMediaNegotiator initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:];
    LOBYTE(v11) = v20;
  }

  return v11;
}

+ (id)serializeNegotiationData:(id)data
{
  v3 = MEMORY[0x1E696ACC8];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:data];

  return [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
}

+ (id)unserializeNegotiationData:(id)data
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v8 = MEMORY[0x1E696ACD0];

  return [v8 _strictlyUnarchivedObjectOfClasses:v7 fromData:data error:0];
}

- (void)initWithLocalConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the negotiator for version 2 of the media blob", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithLocalConfiguration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the negotiator for version 1 of the media blob", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithLocalConfiguration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the negotiator map", v2, v3, v4, v5, v6);
    }
  }
}

- (void)processRemoteNegotiationData:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)processRemoteNegotiationData:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)processRemoteNegotiationData:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)processRemoteNegotiationData:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)streamGroupIDsWithMediaBlob:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(*a2 + 24);
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "+[VCSessionMediaNegotiator streamGroupIDsWithMediaBlob:]";
  v8 = 1024;
  v9 = 173;
  v10 = 1024;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unknown blob version=%d", &v4, 0x22u);
}

+ (void)streamGroupIDsWithMediaBlob:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 164;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to extract the media blob from the negotiation data", &v2, 0x1Cu);
}

+ (void)initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

@end