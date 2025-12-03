@interface VCAudioCaptionsBufferInfoCollection
- (NSArray)streamTokens;
- (VCAudioCaptionsBufferInfoCollection)initWithBufferLength:(double)length;
- (id)description;
- (void)dealloc;
@end

@implementation VCAudioCaptionsBufferInfoCollection

- (VCAudioCaptionsBufferInfoCollection)initWithBufferLength:(double)length
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCAudioCaptionsBufferInfoCollection;
  v4 = [(VCAudioCaptionsBufferInfoCollection *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_bufferInfos = v5;
    if (v5)
    {
      v4->_bufferLength = length;
      CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
      v7 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCAudioCaptionsBufferInfoCollection.stateQueue", 0, CustomRootQueue);
      v4->_stateQueue = v7;
      if (v7)
      {
        return v4;
      }

      [VCAudioCaptionsBufferInfoCollection initWithBufferLength:];
    }

    else
    {
      [VCAudioCaptionsBufferInfoCollection initWithBufferLength:v4];
    }

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  v4.receiver = self;
  v4.super_class = VCAudioCaptionsBufferInfoCollection;
  [(VCAudioCaptionsBufferInfoCollection *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@<%p> bufferInfos=%@", NSStringFromClass(v4), self, self->_bufferInfos];
}

- (NSArray)streamTokens
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCAudioCaptionsBufferInfoCollection_streamTokens__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(stateQueue, block);
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v4 initWithCapacity:v12[3]];
  v6 = self->_stateQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__VCAudioCaptionsBufferInfoCollection_streamTokens__block_invoke_2;
  v9[3] = &unk_1E85F37F0;
  v9[4] = self;
  v9[5] = v5;
  dispatch_sync(v6, v9);
  v7 = v5;
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __51__VCAudioCaptionsBufferInfoCollection_streamTokens__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __51__VCAudioCaptionsBufferInfoCollection_streamTokens__block_invoke_2(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VCAudioCaptionsBufferInfoCollection_streamTokens__block_invoke_3;
  v3[3] = &unk_1E85F7CC8;
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

uint64_t __51__VCAudioCaptionsBufferInfoCollection_streamTokens__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a2, "token")}];

  return [v2 addObject:v3];
}

uint64_t __VCAudioCaptionsBufferInfoCollection_GetBufferInfo_block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1[4] + 8);
  result = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = a1[6];
        result = [v7 token];
        if (v8 == result)
        {
          *(*(a1[5] + 8) + 40) = v7;
          return result;
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t __VCAudioCaptionsBufferInfoCollection_AddBufferInfo_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if ([*(v3 + 8) count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [*(v3 + 8) objectAtIndexedSubscript:v4];
      v6 = [v2 token];
      result = [v5 token];
      if (v6 == result)
      {
        break;
      }

      if (++v4 >= [*(v3 + 8) count])
      {
        goto LABEL_5;
      }
    }

    v8 = 0;
  }

  else
  {
LABEL_5:
    result = [*(v3 + 8) addObject:v2];
    v8 = 1;
  }

  *(*(a1[6] + 8) + 24) = v8;
  return result;
}

uint64_t __VCAudioCaptionsBufferInfoCollection_CopyOrderedBufferInfos_block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)initWithBufferLength:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)initWithBufferLength:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v2 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v8 = 99;
        v3 = " [%s] %s:%d Failed to create buffer infos array.";
        v4 = v2;
        v5 = 28;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, v3, v7, v5);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [a1 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        v3 = " [%s] %s:%d %@(%p) Failed to create buffer infos array.";
        v4 = v6;
        v5 = 48;
        goto LABEL_10;
      }
    }
  }
}

@end