@interface ADAMAudioDataReceiver
- (ADAMAudioDataReceiver)initWithIdentifier:(id)identifier;
- (ADAMAudioDataReceiverDelegate)delegate;
- (id)setupConnection;
- (void)dealloc;
- (void)handleAndLogError:(id)error;
- (void)receiveAudioSample:(id)sample;
- (void)reconnect;
- (void)reset;
- (void)stopMeasuringAudioSampleType:(unsigned int)type;
@end

@implementation ADAMAudioDataReceiver

- (ADAMAudioDataReceiver)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = ADAMAudioDataReceiver;
  v6 = [(ADAMAudioDataReceiver *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, identifier);
    setupConnection = [(ADAMAudioDataReceiver *)v7 setupConnection];
    connection = v7->_connection;
    v7->_connection = setupConnection;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sensorStatus = v7->_sensorStatus;
    v7->_sensorStatus = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    callbacks = v7->_callbacks;
    v7->_callbacks = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    configs = v7->_configs;
    v7->_configs = v14;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)reset
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }

  name = self->_name;
  self->_name = 0;

  v5 = self->_connection;
  self->_connection = 0;

  sensorStatus = self->_sensorStatus;
  self->_sensorStatus = 0;

  callbacks = self->_callbacks;
  self->_callbacks = 0;

  configs = self->_configs;
  self->_configs = 0;
}

void __68__ADAMAudioDataReceiver_startReceivingAudioSampleType_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ADAFLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__ADAMAudioDataReceiver_startReceivingAudioSampleType_withCallback___block_invoke_cold_1(a1);
  }
}

uint64_t __68__ADAMAudioDataReceiver_startReceivingAudioSampleType_withCallback___block_invoke_6(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleAndLogError:a2];
  }

  return result;
}

void __55__ADAMAudioDataReceiver_startReceivingAudioSampleType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ADAFLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__ADAMAudioDataReceiver_startReceivingAudioSampleType_withCallback___block_invoke_cold_1(a1);
  }
}

uint64_t __55__ADAMAudioDataReceiver_startReceivingAudioSampleType___block_invoke_10(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleAndLogError:a2];
  }

  return result;
}

void __54__ADAMAudioDataReceiver_stopReceivingAudioSampleType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ADAFLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__ADAMAudioDataReceiver_stopReceivingAudioSampleType___block_invoke_cold_1(a1);
  }
}

uint64_t __54__ADAMAudioDataReceiver_stopReceivingAudioSampleType___block_invoke_11(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleAndLogError:a2];
  }

  return result;
}

void __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

uint64_t __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_15(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleAndLogError:a2];
  }

  return result;
}

- (void)stopMeasuringAudioSampleType:(unsigned int)type
{
  v20 = *MEMORY[0x277D85DE8];
  verifyInvariants = [(ADAMAudioDataReceiver *)self verifyInvariants];
  if (type == 1702260324 && verifyInvariants)
  {
    v6 = ADAFLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [ADAFUtil stringFromDataType:1702260324];
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_241579000, v6, OS_LOG_TYPE_DEFAULT, "attempting to stop measuring %@", buf, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    sensorStatus = self->_sensorStatus;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1702260324];
    v10 = [(NSMutableDictionary *)sensorStatus objectForKey:v9];

    if (v10)
    {
      v11 = self->_sensorStatus;
      v12 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1702260324];
      [(NSMutableDictionary *)v11 setObject:v12 forKey:v13];
    }

    os_unfair_lock_unlock(&self->_lock);
    v14 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_17];
    name = self->_name;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__ADAMAudioDataReceiver_stopMeasuringAudioSampleType___block_invoke_18;
    v17[3] = &unk_278CE10C8;
    v17[4] = self;
    [v14 stopMeasuringAudioSampleTypeWithIdentifier:name type:1702260324 andReply:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __54__ADAMAudioDataReceiver_stopMeasuringAudioSampleType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

uint64_t __54__ADAMAudioDataReceiver_stopMeasuringAudioSampleType___block_invoke_18(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleAndLogError:a2];
  }

  return result;
}

void __64__ADAMAudioDataReceiver_configureAudioSampleType_configuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

uint64_t __64__ADAMAudioDataReceiver_configureAudioSampleType_configuration___block_invoke_21(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleAndLogError:a2];
  }

  return result;
}

void __67__ADAMAudioDataReceiver_getCurrentConfigurationForAudioSampleType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

intptr_t __67__ADAMAudioDataReceiver_getCurrentConfigurationForAudioSampleType___block_invoke_24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v6);
}

void __59__ADAMAudioDataReceiver_isMeasurementOnForAudioSampleType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

intptr_t __59__ADAMAudioDataReceiver_isMeasurementOnForAudioSampleType___block_invoke_28(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v4 = ADAFLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "OFF";
    if (a2)
    {
      v5 = "ON";
    }

    v8 = 136315138;
    v9 = v5;
    _os_log_impl(&dword_241579000, v4, OS_LOG_TYPE_DEFAULT, "measurement is %s", &v8, 0xCu);
  }

  result = dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)receiveAudioSample:(id)sample
{
  v16 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  v5 = ADAFLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = sampleCopy;
    _os_log_impl(&dword_241579000, v5, OS_LOG_TYPE_INFO, "receieved audio data analysis sample %@", &v12, 0xCu);
  }

  delegate = [(ADAMAudioDataReceiver *)self delegate];

  if (delegate)
  {
    v7 = ADAFLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      uuid = [sampleCopy uuid];
      WeakRetained = objc_loadWeakRetained(&self->delegate);
      v12 = 138412546;
      v13 = uuid;
      v14 = 2112;
      v15 = WeakRetained;
      _os_log_impl(&dword_241579000, v7, OS_LOG_TYPE_INFO, "sending sample [%@] to delegate %@", &v12, 0x16u);
    }

    delegate2 = [(ADAMAudioDataReceiver *)self delegate];
    [delegate2 receiveAudioSample:sampleCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)setupConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.audio.adam.xpc" options:4096];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28533EB90];
  [v3 setRemoteObjectInterface:v4];

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28533D668];
  [v3 setExportedInterface:v5];

  [v3 setExportedObject:self];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__ADAMAudioDataReceiver_setupConnection__block_invoke;
  v10[3] = &unk_278CE1180;
  objc_copyWeak(&v11, &location);
  [v3 setInterruptionHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__ADAMAudioDataReceiver_setupConnection__block_invoke_97;
  v8[3] = &unk_278CE1180;
  objc_copyWeak(&v9, &location);
  [v3 setInvalidationHandler:v8];
  v6 = objc_loadWeakRetained(&location);
  [v6 setConnectionDidInvalidate:0];

  [v3 resume];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v3;
}

void __40__ADAMAudioDataReceiver_setupConnection__block_invoke(uint64_t a1)
{
  v2 = ADAFLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__ADAMAudioDataReceiver_setupConnection__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reconnect];
}

void __40__ADAMAudioDataReceiver_setupConnection__block_invoke_97(uint64_t a1)
{
  v2 = ADAFLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__ADAMAudioDataReceiver_setupConnection__block_invoke_97_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnectionDidInvalidate:1];
}

- (void)reconnect
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __34__ADAMAudioDataReceiver_reconnect__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 unsignedIntegerValue];
  v8 = [v6 BOOLValue];

  if (v8)
  {
    v9 = [*(*(a1 + 32) + 32) objectForKey:v5];
    v10 = ADAFLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [ADAFUtil stringFromDataType:v7];
      *buf = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_241579000, v10, OS_LOG_TYPE_DEFAULT, "*restart* measuring '%@' with cfg: %@", buf, 0x16u);
    }

    v12 = [*(*(a1 + 32) + 40) remoteObjectProxyWithErrorHandler:&__block_literal_global_100];
    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __34__ADAMAudioDataReceiver_reconnect__block_invoke_101;
    v16[3] = &unk_278CE10C8;
    v16[4] = v13;
    [v12 startMeasuringAudioSampleTypeWithIdentifier:v14 type:v7 withConfiguration:v9 andReply:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __34__ADAMAudioDataReceiver_reconnect__block_invoke_98(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

uint64_t __34__ADAMAudioDataReceiver_reconnect__block_invoke_101(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleAndLogError:a2];
  }

  return result;
}

void __34__ADAMAudioDataReceiver_reconnect__block_invoke_103(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

uint64_t __34__ADAMAudioDataReceiver_reconnect__block_invoke_106(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleAndLogError:a2];
  }

  return result;
}

- (void)handleAndLogError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_12;
  }

  code = [errorCopy code];
  if (code == 560164457)
  {
LABEL_5:
    [(ADAMAudioDataReceiver *)self reset];
    goto LABEL_9;
  }

  if (code != 1969974894)
  {
    if (code != 560295540)
    {
      v7 = ADAFLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ADAMAudioDataReceiver handleAndLogError:];
      }

      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_9:
  v8 = ADAFLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ADAMAudioDataReceiver handleAndLogError:];
  }

LABEL_12:
}

- (void)dealloc
{
  [(ADAMAudioDataReceiver *)self reset];
  v3.receiver = self;
  v3.super_class = ADAMAudioDataReceiver;
  [(ADAMAudioDataReceiver *)&v3 dealloc];
}

- (ADAMAudioDataReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)receiveAudioSample:type:metadata:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__ADAMAudioDataReceiver_startReceivingAudioSampleType_withCallback___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_241579000, v1, v2, "%@ : connection error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __54__ADAMAudioDataReceiver_stopReceivingAudioSampleType___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_241579000, v1, v2, "%@ : connection error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __40__ADAMAudioDataReceiver_setupConnection__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__ADAMAudioDataReceiver_setupConnection__block_invoke_97_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleAndLogError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleAndLogError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end