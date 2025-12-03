@interface VCWRMHandler
- (VCWRMHandler)init;
- (unsigned)processRemoteWRMSuggestion:(int)suggestion isRemoteDuplicating:(BOOL)duplicating;
@end

@implementation VCWRMHandler

- (VCWRMHandler)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCWRMHandler;
  result = [(VCWRMHandler *)&v3 init];
  if (result)
  {
    *&result->_localWRMLinkTypeSuggestion = -1;
  }

  return result;
}

- (unsigned)processRemoteWRMSuggestion:(int)suggestion isRemoteDuplicating:(BOOL)duplicating
{
  v22 = *MEMORY[0x1E69E9840];
  if (suggestion == -1)
  {
    return 0;
  }

  if (self->_remoteWRMLinkTypeSuggestion == suggestion && self->_isRemoteDuplicating == duplicating)
  {
    return 1;
  }

  self->_isRemoteDuplicating = duplicating;
  self->_remoteWRMLinkTypeSuggestion = suggestion;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = "WiFi";
      isRemoteDuplicating = self->_isRemoteDuplicating;
      v12 = 136316162;
      v13 = v7;
      if (!suggestion)
      {
        v9 = "Cellular";
      }

      v15 = "[VCWRMHandler processRemoteWRMSuggestion:isRemoteDuplicating:]";
      v16 = 1024;
      v11 = "with";
      v17 = 115;
      v14 = 2080;
      v18 = 2080;
      if (!isRemoteDuplicating)
      {
        v11 = "without";
      }

      v19 = v9;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Receive and cache remote iRAT suggestion to %s %s duplication", &v12, 0x30u);
    }
  }

  return 3;
}

@end