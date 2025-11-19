@interface AXTwiceCompanionAirplayReceiver
+ (id)sharedInstance;
- (AXTwiceCompanionAirplayReceiverDelegate)delegate;
- (id)_init;
- (id)start;
- (void)cleanup;
- (void)dealloc;
- (void)didChangeStreamRendererModeTo:(unint64_t)a3 forRenderer:(id)a4;
- (void)didStartStreamingWithRenderer:(id)a3;
- (void)didStopStreamingWithRenderer:(id)a3;
- (void)shouldHideGlobalPasscode;
- (void)shouldShowGlobalPasscodeWithString:(id)a3 withClientName:(id)a4;
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

  v4 = [getAPRKStreamRenderingManagerClass() sharedInstance];
  [v4 setDelegate:self];
  [v4 setAssistedModeEnabled:1];
  [v4 setEnableMixingMediaAudio:1];
  [v4 setOptimizeAudioRenderingLatency:1];
  [v4 startReceiverServer];
  v5 = [v4 assistedInfoForAWDL];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
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

  v3 = [getAPRKStreamRenderingManagerClass() sharedInstance];
  [v3 setAssistedModeEnabled:0];
  [v3 stopReceiverServer];

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

- (void)didChangeStreamRendererModeTo:(unint64_t)a3 forRenderer:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 uniqueID];
    v14 = 136315394;
    v15 = "[AXTwiceCompanionAirplayReceiver didChangeStreamRendererModeTo:forRenderer:]";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_23D6CB000, v6, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v14, 0x16u);
  }

  v8 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 streamRendererMode];
    v14 = 136315394;
    v15 = "[AXTwiceCompanionAirplayReceiver didChangeStreamRendererModeTo:forRenderer:]";
    v16 = 2048;
    v17 = v9;
    _os_log_impl(&dword_23D6CB000, v8, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %lu", &v14, 0x16u);
  }

  v10 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];
  v11 = [v10 mirroringLayer];

  if (v11)
  {
    v12 = [(AXTwiceCompanionAirplayReceiver *)self delegate];
    [v12 airplayDidStartStreamingWithMirroringLayer:v11];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didStartStreamingWithRenderer:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueID];
    v18 = 136315394;
    v19 = "[AXTwiceCompanionAirplayReceiver didStartStreamingWithRenderer:]";
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_23D6CB000, v5, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v18, 0x16u);
  }

  v7 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 streamRendererMode];
    v18 = 136315394;
    v19 = "[AXTwiceCompanionAirplayReceiver didStartStreamingWithRenderer:]";
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_23D6CB000, v7, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %lu", &v18, 0x16u);
  }

  v9 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];

  if (v9)
  {
    v10 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];
    [v10 stop];

    v11 = AXLogTwiceRemoteScreen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AXTwiceCompanionAirplayReceiver *)self didStartStreamingWithRenderer:v4];
    }
  }

  [(AXTwiceCompanionAirplayReceiver *)self setStreamRenderer:v4];
  v12 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];
  [v12 setDelegate:self];

  v13 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];
  v14 = [v13 mirroringLayer];

  if (v14)
  {
    v15 = AXLogTwiceRemoteScreen();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[AXTwiceCompanionAirplayReceiver didStartStreamingWithRenderer:]";
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_23D6CB000, v15, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v18, 0x16u);
    }

    v16 = [(AXTwiceCompanionAirplayReceiver *)self delegate];
    [v16 airplayDidStartStreamingWithMirroringLayer:v14];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didStopStreamingWithRenderer:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueID];
    v11 = 136315394;
    v12 = "[AXTwiceCompanionAirplayReceiver didStopStreamingWithRenderer:]";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_23D6CB000, v5, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v11, 0x16u);
  }

  v7 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];

  if (v7)
  {
    v8 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];

    if (v8 == v4)
    {
      [(AXTwiceCompanionAirplayReceiver *)self setStreamRenderer:0];
      v9 = [(AXTwiceCompanionAirplayReceiver *)self delegate];
      [v9 airplayDidStopStreaming];
    }

    else
    {
      v9 = AXLogTwiceRemoteScreen();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(AXTwiceCompanionAirplayReceiver *)self didStopStreamingWithRenderer:v4];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)shouldShowGlobalPasscodeWithString:(id)a3 withClientName:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AXTwiceCompanionAirplayReceiver shouldShowGlobalPasscodeWithString:withClientName:]";
    v9 = 2112;
    v10 = v4;
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