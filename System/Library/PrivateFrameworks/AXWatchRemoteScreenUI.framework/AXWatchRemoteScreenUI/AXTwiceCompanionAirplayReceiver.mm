@interface AXTwiceCompanionAirplayReceiver
+ (id)sharedInstance;
- (AXTwiceCompanionAirplayReceiverDelegate)delegate;
- (id)_init;
- (id)start;
- (void)cleanup;
- (void)dealloc;
- (void)didChangeStreamRendererModeTo:(unint64_t)to forRenderer:(id)renderer;
- (void)didStartStreamingWithRenderer:(id)renderer;
- (void)didStopStreamingWithRenderer:(id)renderer;
- (void)shouldHideGlobalPasscode;
- (void)shouldShowGlobalPasscodeWithString:(id)string withClientName:(id)name;
@end

@implementation AXTwiceCompanionAirplayReceiver

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXTwiceCompanionAirplayReceiver sharedInstance];
  }

  v3 = sharedInstance__Shared;

  return v3;
}

uint64_t __49__AXTwiceCompanionAirplayReceiver_sharedInstance__block_invoke()
{
  sharedInstance__Shared = [[AXTwiceCompanionAirplayReceiver alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)start
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[AXTwiceCompanionAirplayReceiver start]";
    _os_log_impl(&dword_23D6CB000, v3, OS_LOG_TYPE_DEFAULT, "[TWICE] %s", &v8, 0xCu);
  }

  sharedInstance = [getAPRKStreamRenderingManagerClass() sharedInstance];
  [sharedInstance setDelegate:self];
  [sharedInstance setAssistedModeEnabled:1];
  [sharedInstance setEnableMixingMediaAudio:1];
  [sharedInstance setOptimizeAudioRenderingLatency:1];
  [sharedInstance startReceiverServer];
  assistedInfoForAWDL = [sharedInstance assistedInfoForAWDL];

  v6 = *MEMORY[0x277D85DE8];

  return assistedInfoForAWDL;
}

- (void)cleanup
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AXTwiceCompanionAirplayReceiver cleanup]";
    _os_log_impl(&dword_23D6CB000, v2, OS_LOG_TYPE_DEFAULT, "[TWICE] %s", &v5, 0xCu);
  }

  sharedInstance = [getAPRKStreamRenderingManagerClass() sharedInstance];
  [sharedInstance setAssistedModeEnabled:0];
  [sharedInstance stopReceiverServer];

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = AXTwiceCompanionAirplayReceiver;
  return [(AXTwiceCompanionAirplayReceiver *)&v3 init];
}

- (void)dealloc
{
  [(AXTwiceCompanionAirplayReceiver *)self cleanup];
  v3.receiver = self;
  v3.super_class = AXTwiceCompanionAirplayReceiver;
  [(AXTwiceCompanionAirplayReceiver *)&v3 dealloc];
}

- (void)didChangeStreamRendererModeTo:(unint64_t)to forRenderer:(id)renderer
{
  v18 = *MEMORY[0x277D85DE8];
  rendererCopy = renderer;
  v6 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [rendererCopy uniqueID];
    v14 = 136315394;
    v15 = "[AXTwiceCompanionAirplayReceiver didChangeStreamRendererModeTo:forRenderer:]";
    v16 = 2112;
    v17 = uniqueID;
    _os_log_impl(&dword_23D6CB000, v6, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v14, 0x16u);
  }

  v8 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    streamRendererMode = [rendererCopy streamRendererMode];
    v14 = 136315394;
    v15 = "[AXTwiceCompanionAirplayReceiver didChangeStreamRendererModeTo:forRenderer:]";
    v16 = 2048;
    v17 = streamRendererMode;
    _os_log_impl(&dword_23D6CB000, v8, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %lu", &v14, 0x16u);
  }

  streamRenderer = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];
  mirroringLayer = [streamRenderer mirroringLayer];

  if (mirroringLayer)
  {
    delegate = [(AXTwiceCompanionAirplayReceiver *)self delegate];
    [delegate airplayDidStartStreamingWithMirroringLayer:mirroringLayer];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didStartStreamingWithRenderer:(id)renderer
{
  v22 = *MEMORY[0x277D85DE8];
  rendererCopy = renderer;
  v5 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [rendererCopy uniqueID];
    v18 = 136315394;
    v19 = "[AXTwiceCompanionAirplayReceiver didStartStreamingWithRenderer:]";
    v20 = 2112;
    v21 = uniqueID;
    _os_log_impl(&dword_23D6CB000, v5, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v18, 0x16u);
  }

  v7 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    streamRendererMode = [rendererCopy streamRendererMode];
    v18 = 136315394;
    v19 = "[AXTwiceCompanionAirplayReceiver didStartStreamingWithRenderer:]";
    v20 = 2048;
    v21 = streamRendererMode;
    _os_log_impl(&dword_23D6CB000, v7, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %lu", &v18, 0x16u);
  }

  streamRenderer = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];

  if (streamRenderer)
  {
    streamRenderer2 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];
    [streamRenderer2 stop];

    v11 = AXLogTwiceRemoteScreen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AXTwiceCompanionAirplayReceiver *)self didStartStreamingWithRenderer:rendererCopy];
    }
  }

  [(AXTwiceCompanionAirplayReceiver *)self setStreamRenderer:rendererCopy];
  streamRenderer3 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];
  [streamRenderer3 setDelegate:self];

  streamRenderer4 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];
  mirroringLayer = [streamRenderer4 mirroringLayer];

  if (mirroringLayer)
  {
    v15 = AXLogTwiceRemoteScreen();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[AXTwiceCompanionAirplayReceiver didStartStreamingWithRenderer:]";
      v20 = 2112;
      v21 = mirroringLayer;
      _os_log_impl(&dword_23D6CB000, v15, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v18, 0x16u);
    }

    delegate = [(AXTwiceCompanionAirplayReceiver *)self delegate];
    [delegate airplayDidStartStreamingWithMirroringLayer:mirroringLayer];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didStopStreamingWithRenderer:(id)renderer
{
  v15 = *MEMORY[0x277D85DE8];
  rendererCopy = renderer;
  v5 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [rendererCopy uniqueID];
    v11 = 136315394;
    v12 = "[AXTwiceCompanionAirplayReceiver didStopStreamingWithRenderer:]";
    v13 = 2112;
    v14 = uniqueID;
    _os_log_impl(&dword_23D6CB000, v5, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v11, 0x16u);
  }

  streamRenderer = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];

  if (streamRenderer)
  {
    streamRenderer2 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];

    if (streamRenderer2 == rendererCopy)
    {
      [(AXTwiceCompanionAirplayReceiver *)self setStreamRenderer:0];
      delegate = [(AXTwiceCompanionAirplayReceiver *)self delegate];
      [delegate airplayDidStopStreaming];
    }

    else
    {
      delegate = AXLogTwiceRemoteScreen();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
      {
        [(AXTwiceCompanionAirplayReceiver *)self didStopStreamingWithRenderer:rendererCopy];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)shouldShowGlobalPasscodeWithString:(id)string withClientName:(id)name
{
  v11 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AXTwiceCompanionAirplayReceiver shouldShowGlobalPasscodeWithString:withClientName:]";
    v9 = 2112;
    v10 = stringCopy;
    _os_log_impl(&dword_23D6CB000, v5, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)shouldHideGlobalPasscode
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[AXTwiceCompanionAirplayReceiver shouldHideGlobalPasscode]";
    _os_log_impl(&dword_23D6CB000, v2, OS_LOG_TYPE_DEFAULT, "[TWICE] %s", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (AXTwiceCompanionAirplayReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didStartStreamingWithRenderer:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 streamRenderer];
  [v3 streamRendererMode];
  [a2 streamRendererMode];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23D6CB000, v4, v5, "[TWICE] Stop %lu before assigning %lu", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)didStopStreamingWithRenderer:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 streamRenderer];
  [v3 streamRendererMode];
  [a2 streamRendererMode];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23D6CB000, v4, v5, "[TWICE] mismatch renderer %lu - %lu", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end