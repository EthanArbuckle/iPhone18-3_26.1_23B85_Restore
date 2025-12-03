@interface AVCMomentsRequest
+ (id)invalidDelegateInstanceError;
- (AVCMomentsRequest)initWithConfiguration:(id)configuration requesterID:(id)d;
- (AVCMomentsRequest)initWithConfiguration:(id)configuration requesterID:(id)d transactionID:(id)iD;
- (BOOL)endWithError:(id *)error;
- (BOOL)rejectWithError:(id *)error;
- (BOOL)setUpDirectoryURLWithConfiguration:(id)configuration;
- (BOOL)setUpMovieFragmentIntervalWithConfiguration:(id)configuration;
- (BOOL)startWithError:(id *)error;
- (BOOL)validateWithError:(id *)error;
- (id)description;
- (id)serialize;
- (void)dealloc;
@end

@implementation AVCMomentsRequest

- (BOOL)startWithError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  delegate = [(AVCMomentsRequest *)self delegate];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCMediaRecorderRequest-startWithError");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316418;
      v11 = v6;
      v12 = 2080;
      v13 = "[AVCMomentsRequest startWithError:]";
      v14 = 1024;
      v15 = 40;
      v16 = 2112;
      selfCopy = self;
      v18 = 2112;
      v19 = delegate;
      v20 = 2048;
      errorCopy = error;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCMediaRecorderRequest-startWithError self=%@ delegate=%@ error=%p", &v10, 0x3Au);
    }
  }

  if (delegate)
  {
    return [(AVCMediaRecorderRequestDelegate *)delegate avcMediaRecorderRequestDidStartRequest:self withError:error];
  }

  if (!error)
  {
    return 0;
  }

  v9 = +[AVCMomentsRequest invalidDelegateInstanceError];
  result = 0;
  *error = v9;
  return result;
}

- (BOOL)endWithError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  delegate = [(AVCMomentsRequest *)self delegate];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCMediaRecorderRequest-endWithError");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316418;
      v11 = v6;
      v12 = 2080;
      v13 = "[AVCMomentsRequest endWithError:]";
      v14 = 1024;
      v15 = 51;
      v16 = 2112;
      selfCopy = self;
      v18 = 2112;
      v19 = delegate;
      v20 = 2048;
      errorCopy = error;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCMediaRecorderRequest-endWithError self=%@ delegate=%@ error=%p", &v10, 0x3Au);
    }
  }

  if (delegate)
  {
    return [(AVCMediaRecorderRequestDelegate *)delegate avcMediaRecorderRequestDidEndRequest:self withError:error];
  }

  if (!error)
  {
    return 0;
  }

  v9 = +[AVCMomentsRequest invalidDelegateInstanceError];
  result = 0;
  *error = v9;
  return result;
}

- (BOOL)rejectWithError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  delegate = [(AVCMomentsRequest *)self delegate];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCMediaRecorderRequest-rejectWithError");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316418;
      v11 = v6;
      v12 = 2080;
      v13 = "[AVCMomentsRequest rejectWithError:]";
      v14 = 1024;
      v15 = 61;
      v16 = 2112;
      selfCopy = self;
      v18 = 2112;
      v19 = delegate;
      v20 = 2048;
      errorCopy = error;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCMediaRecorderRequest-rejectWithError self=%@ delegate=%@ error=%p", &v10, 0x3Au);
    }
  }

  if (delegate)
  {
    return [(AVCMediaRecorderRequestDelegate *)delegate avcMediaRecorderRequestDidRejectRequest:self withError:error];
  }

  if (!error)
  {
    return 0;
  }

  v9 = +[AVCMomentsRequest invalidDelegateInstanceError];
  result = 0;
  *error = v9;
  return result;
}

- (BOOL)setUpDirectoryURLWithConfiguration:(id)configuration
{
  v10 = *MEMORY[0x1E69E9840];
  directoryURL = [configuration directoryURL];
  if (!directoryURL)
  {
    return 1;
  }

  v5 = directoryURL;
  if (!VCFeatureFlagManager_RecordingResiliencyEnabled())
  {
    return 1;
  }

  if (self->_mode != 1)
  {
    [(AVCMomentsRequest *)v5 setUpDirectoryURLWithConfiguration:v9];
    return v9[0];
  }

  v8 = 0;
  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    [AVCMomentsRequest setUpDirectoryURLWithConfiguration:];
    return v9[1];
  }

  if ((v8 & 1) == 0)
  {
    [AVCMomentsRequest setUpDirectoryURLWithConfiguration:];
    return v9[2];
  }

  if (access([objc_msgSend(objc_msgSend(v5 "URLByStandardizingPath")], 6))
  {
    [AVCMomentsRequest setUpDirectoryURLWithConfiguration:];
    return v9[3];
  }

  v6 = [[VCSandboxedURL alloc] initWithURL:v5 accessType:2];
  self->_directoryURL = v6;
  if (v6)
  {
    return 1;
  }

  [AVCMomentsRequest setUpDirectoryURLWithConfiguration:];
  return v9[4];
}

- (BOOL)setUpMovieFragmentIntervalWithConfiguration:(id)configuration
{
  v17 = *MEMORY[0x1E69E9840];
  self->_movieFragmentInterval = **&MEMORY[0x1E6960C70];
  memset(&v10, 170, sizeof(v10));
  if (!configuration)
  {
    goto LABEL_6;
  }

  [configuration movieFragmentInterval];
  if ((v10.flags & 1) == 0 || !VCFeatureFlagManager_RecordingResiliencyEnabled())
  {
    goto LABEL_6;
  }

  if (self->_mode == 1)
  {
    self->_movieFragmentInterval = v10;
LABEL_6:
    LOBYTE(v4) = 1;
    return v4;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    time = v10;
    Seconds = CMTimeGetSeconds(&time);
    mode = self->_mode;
    LODWORD(time.value) = 136316162;
    *(&time.value + 4) = v5;
    LOWORD(time.flags) = 2080;
    *(&time.flags + 2) = "[AVCMomentsRequest setUpMovieFragmentIntervalWithConfiguration:]";
    HIWORD(time.epoch) = 1024;
    v12 = 114;
    v13 = 2048;
    v14 = Seconds;
    v15 = 1024;
    v16 = mode;
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Providing a movieFragmentInterval=%f is unsupported with a non-local request mode=%hhu", &time, 0x2Cu);
  }

  LOBYTE(v4) = 0;
  return v4;
}

- (AVCMomentsRequest)initWithConfiguration:(id)configuration requesterID:(id)d transactionID:(id)iD
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = AVCMomentsRequest;
  v8 = [(AVCMomentsRequest *)&v10 init];
  if (!v8)
  {
    [AVCMomentsRequest initWithConfiguration:requesterID:transactionID:];
LABEL_10:

    return 0;
  }

  if (!configuration)
  {
    [AVCMomentsRequest initWithConfiguration:requesterID:transactionID:];
    goto LABEL_10;
  }

  v8->_transactionID = [iD copy];
  v8->_requesterID = [d copy];
  v8->_requesteeID = [objc_msgSend(configuration "requesteeID")];
  v8->_mediaType = [configuration mediaType];
  v8->_mode = [configuration requestMode];
  if (![(AVCMomentsRequest *)v8 setUpDirectoryURLWithConfiguration:configuration])
  {
    [AVCMomentsRequest initWithConfiguration:requesterID:transactionID:];
    goto LABEL_10;
  }

  if (![(AVCMomentsRequest *)v8 setUpMovieFragmentIntervalWithConfiguration:configuration])
  {
    [AVCMomentsRequest initWithConfiguration:requesterID:transactionID:];
    goto LABEL_10;
  }

  return v8;
}

- (AVCMomentsRequest)initWithConfiguration:(id)configuration requesterID:(id)d
{
  v7 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];

  return [(AVCMomentsRequest *)self initWithConfiguration:configuration requesterID:d transactionID:v7];
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVCMomentsRequest dealloc]";
      v10 = 1024;
      v11 = 151;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  objc_storeWeak(&self->_weakDelegate, 0);

  v5.receiver = self;
  v5.super_class = AVCMomentsRequest;
  [(AVCMomentsRequest *)&v5 dealloc];
}

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  v4 = VCMediaRecorderUtil_CopyDescriptionForMediaType(*MEMORY[0x1E695E480], self->_mediaType);
  time = self->_movieFragmentInterval;
  v5 = CMTimeCopyDescription(v3, &time);
  v8.receiver = self;
  v8.super_class = AVCMomentsRequest;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{ %@ transactionID=%@ mediaType=%@ requesterID=%@ requesteeID=%@ directoryURL=%@ movieFragmentInterval=%@ }", -[AVCMomentsRequest description](&v8, sel_description), self->_transactionID, v4, self->_requesterID, self->_requesteeID, self->_directoryURL, v5];
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

- (id)serialize
{
  v13[3] = *MEMORY[0x1E69E9840];
  v13[0] = self->_transactionID;
  v12[0] = @"vcMomentsTransactionID";
  v12[1] = @"vcMomentsMediaType";
  v13[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_mediaType];
  v12[2] = @"vcMomentsRequestMode";
  v13[2] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_mode];
  v3 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:{3), "mutableCopy"}];
  v4 = v3;
  requesterID = self->_requesterID;
  if (requesterID)
  {
    [v3 setObject:requesterID forKeyedSubscript:@"vcMomentsRequesterID"];
  }

  requesteeID = self->_requesteeID;
  if (requesteeID)
  {
    [v4 setObject:requesteeID forKeyedSubscript:@"vcMomentsRequesteeID"];
  }

  directoryURL = self->_directoryURL;
  if (directoryURL)
  {
    [v4 setObject:-[VCSandboxedURL serialize](directoryURL forKeyedSubscript:{"serialize"), @"vcMediaRecorderDirectoryURL"}];
  }

  if (self->_movieFragmentInterval.flags)
  {
    v8 = *MEMORY[0x1E695E480];
    movieFragmentInterval = self->_movieFragmentInterval;
    v9 = CMTimeCopyAsDictionary(&movieFragmentInterval, v8);
    [v4 setObject:v9 forKeyedSubscript:@"vcMediaRecorderMovieFragmentInterval"];
    if (v9)
    {
      CFRelease(v9);
    }
  }

  return v4;
}

- (BOOL)validateWithError:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (self->_transactionID)
  {
    if (self->_mediaType)
    {
      if (self->_mode)
      {
        LOBYTE(v5) = 1;
        return v5;
      }

      v6 = -4;
      v7 = "mode is invalid";
    }

    else
    {
      v6 = -3;
      v7 = "media type is invalid";
    }
  }

  else
  {
    v6 = -1;
    v7 = "transactionID is nil";
  }

  if (error)
  {
    v8 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    *error = [v8 errorWithDomain:@"AVCMomentsRequest" code:v6 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v23, &v22, 1)}];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v5 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v5)
    {
      return v5;
    }

    v12 = 136316162;
    v13 = v9;
    v14 = 2080;
    v15 = "[AVCMomentsRequest validateWithError:]";
    v16 = 1024;
    v17 = 215;
    v18 = 2048;
    selfCopy = self;
    v20 = 2080;
    v21 = v7;
    _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %p failed validation: %s", &v12, 0x30u);
  }

  LOBYTE(v5) = 0;
  return v5;
}

+ (id)invalidDelegateInstanceError
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696A578];
  v5[0] = @"Attempting to invoke on request with no valid parent class";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCMomentsRequest" code:-5 userInfo:v2];
}

- (void)setUpDirectoryURLWithConfiguration:(_BYTE *)a3 .cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
    }
  }

  *a3 = 0;
}

- (void)setUpDirectoryURLWithConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }

  *v0 = 0;
}

- (void)setUpDirectoryURLWithConfiguration:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }

  *v0 = 0;
}

- (void)setUpDirectoryURLWithConfiguration:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      v1 = __error();
      strerror(*v1);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
    }
  }

  *v0 = 0;
}

- (void)setUpDirectoryURLWithConfiguration:.cold.5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }

  *v0 = 0;
}

- (void)initWithConfiguration:requesterID:transactionID:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to set up directoryURL", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfiguration:requesterID:transactionID:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Fsiled to set up movieFragmentInterval", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfiguration:requesterID:transactionID:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid configuration passed", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfiguration:requesterID:transactionID:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to super init request", v2, v3, v4, v5, v6);
    }
  }
}

@end