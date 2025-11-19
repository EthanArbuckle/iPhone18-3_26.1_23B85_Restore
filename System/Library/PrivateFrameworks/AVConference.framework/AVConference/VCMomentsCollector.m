@interface VCMomentsCollector
- (VCMomentsCollector)initWithStreamToken:(int64_t)a3;
- (void)cleanUpActiveRequests;
- (void)dealloc;
@end

@implementation VCMomentsCollector

- (VCMomentsCollector)initWithStreamToken:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCMomentsCollector;
  v4 = [(VCMomentsCollector *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_streamToken = a3;
    v6 = [[VCMediaRecorder alloc] initWithStreamToken:a3 delegate:0 reportingAgent:0];
    v5->_mediaRecorder = v6;
    [(VCMediaRecorder *)v6 setCapabilities:0];
    [+[VCMediaRecorderManager sharedInstance](VCMediaRecorderManager registerMediaRecorder:"registerMediaRecorder:withStreamToken:" withStreamToken:v5->_mediaRecorder, a3];
  }

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      *buf = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCMomentsCollector dealloc]";
      v11 = 1024;
      v12 = 28;
      v13 = 1024;
      v14 = streamToken;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMomentsCollector: dealloc for streamToken=%u", buf, 0x22u);
    }
  }

  [(VCMediaRecorder *)self->_mediaRecorder invalidate];

  v6.receiver = self;
  v6.super_class = VCMomentsCollector;
  [(VCMomentsCollector *)&v6 dealloc];
}

- (void)cleanUpActiveRequests
{
  VCMediaRecorder_ClearHistoryBuffer(self->_mediaRecorder);
  mediaRecorder = self->_mediaRecorder;

  VCMediaRecorder_StopProcessingAllRequests(mediaRecorder);
}

@end