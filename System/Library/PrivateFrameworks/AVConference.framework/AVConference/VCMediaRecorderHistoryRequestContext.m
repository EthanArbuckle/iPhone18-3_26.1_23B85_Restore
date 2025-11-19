@interface VCMediaRecorderHistoryRequestContext
- (VCMediaRecorderHistoryRequestContext)initWithSerializedRequest:(id)a3;
- (id)description;
- (id)deserializeDirectoryURL;
- (id)directoryURLDescription;
- (void)dealloc;
@end

@implementation VCMediaRecorderHistoryRequestContext

- (VCMediaRecorderHistoryRequestContext)initWithSerializedRequest:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCMediaRecorderHistoryRequestContext;
  v4 = [(VCMediaRecorderHistoryRequestContext *)&v9 init];
  if (v4)
  {
    v4[24] = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsMediaType", "intValue"}];
    *(v4 + 4) = [a3 objectForKeyedSubscript:@"vcMomentsTransactionID"];
    *(v4 + 7) = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestTimestamp", "integerValue"}];
    v5 = MEMORY[0x1E6960C70];
    *(v4 + 40) = *MEMORY[0x1E6960C70];
    *(v4 + 7) = *(v5 + 16);
    v6 = [a3 objectForKeyedSubscript:@"vcMediaRecorderMovieFragmentInterval"];
    if (v6)
    {
      CMTimeMakeFromDictionary(&v8, v6);
      *(v4 + 40) = v8;
    }

    *(v4 + 1) = [a3 objectForKeyedSubscript:@"vcMediaRecorderDirectoryURL"];
  }

  else
  {
    [VCMediaRecorderHistoryRequestContext initWithSerializedRequest:];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaRecorderHistoryRequestContext;
  [(VCMediaRecorderHistoryRequestContext *)&v3 dealloc];
}

- (id)directoryURLDescription
{
  v2 = MEMORY[0x1E696AEC0];
  if (self->_directoryURL)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"directoryURL=%@", self->_directoryURL];
  }

  v4 = [(VCMediaRecorderHistoryRequestContext *)self hasDirectoryURL];
  v5 = "NO";
  if (v4)
  {
    v5 = "YES";
  }

  return [v2 stringWithFormat:@"hasDirectoryURL=%s", v5];
}

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  v4 = VCMediaRecorderUtil_CopyDescriptionForMediaType(*MEMORY[0x1E695E480], self->_mediaType);
  time = self->_movieFragmentInterval;
  v5 = CMTimeCopyDescription(v3, &time);
  v8.receiver = self;
  v8.super_class = VCMediaRecorderHistoryRequestContext;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{ %@ mediaType=%@ transactionID=%@ timestamp=%u movieFragmentInterval=%@ %@ }", -[VCMediaRecorderHistoryRequestContext description](&v8, sel_description), v4, self->_transactionID, self->_timestamp, v5, -[VCMediaRecorderHistoryRequestContext directoryURLDescription](self, "directoryURLDescription")];
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

- (id)deserializeDirectoryURL
{
  directoryURL = self->_directoryURL;
  if (!directoryURL)
  {
    if (self->_serializedDirectoryURL)
    {
      directoryURL = [+[VCSandboxedURL deserialize:](VCSandboxedURL "deserialize:"consumeToken"")];
      self->_directoryURL = directoryURL;
    }

    else
    {
      directoryURL = 0;
    }
  }

  v4 = directoryURL;

  return v4;
}

- (void)initWithSerializedRequest:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      v4 = 2080;
      v5 = "[VCMediaRecorderHistoryRequestContext initWithSerializedRequest:]";
      v6 = 1024;
      v7 = 29;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to super init VCMediaRecorderHistoryRequestContext", &v2, 0x1Cu);
    }
  }
}

@end