@interface AVAirMessageDispatcher
+ (id)shared;
- (AVAirMessageDispatcher)init;
- (AVAirMessageDispatcherClientDelegate)delegate;
- (BOOL)haveAirPlayService;
- (NSString)description;
- (void)airTransport:(id)a3 didReceiveObject:(id)a4;
- (void)airTransportInputDidClose:(id)a3;
- (void)airTransportOutputDidOpen:(id)a3;
- (void)didConnectToBonjourService:(id)a3 channel:(id)a4;
- (void)sendMessage:(id)a3 completion:(id)a4;
@end

@implementation AVAirMessageDispatcher

- (AVAirMessageDispatcherClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)airTransport:(id)a3 didReceiveObject:(id)a4
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _avairlog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AVAirMessageDispatcher airTransport:didReceiveObject:]";
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s (call unexpected! message will be dropped)", &v5, 0xCu);
  }
}

- (void)airTransportInputDidClose:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _avairlog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[AVAirMessageDispatcher airTransportInputDidClose:]";
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }
}

- (void)airTransportOutputDidOpen:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = _avairlog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[AVAirMessageDispatcher airTransportOutputDidOpen:]";
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  v5 = [(AVAirMessageDispatcher *)self delegate];
  [v5 didChangeTargetForAirMessageDispatcher:self];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"AVAirMessageDispatcherDidChangeTargetNotification" object:self];
}

- (void)didConnectToBonjourService:(id)a3 channel:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = _avairlog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(AVAirMessageDispatcher *)self delegate];
    v13 = 136315650;
    v14 = "[AVAirMessageDispatcher didConnectToBonjourService:channel:]";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s channel = %@; delegate = %@", &v13, 0x20u);
  }

  [(AVAirMessageDispatcher *)self setCurrentNetService:v7];
  v10 = [AVDataValueTransformer messageTransformerWithClass:objc_opt_class()];
  [v6 setStreamDataTransformer:v10];

  v11 = [v6 delegate];

  if (v11)
  {
    v12 = _avairlog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[AVAirMessageDispatcher didConnectToBonjourService:channel:]";
      _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s the channel.delegate is already set", &v13, 0xCu);
    }
  }

  [v6 setDelegate:self];
  [(AVAirMessageDispatcher *)self setChannel:v6];
  [v6 open];
}

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 copy];
  v8 = [(AVAirMessageDispatcher *)self channel];

  if (v8)
  {
    v9 = [(AVAirMessageDispatcher *)self channel];
    v10 = [v9 isReadyToSend];

    if (v10)
    {
      v11 = [v6 dictionaryRepresentation];
      v12 = _avairlog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[AVAirMessageDispatcher sendMessage:completion:]";
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s telling channel to sendObject (%@)", buf, 0x16u);
      }

      v13 = [(AVAirMessageDispatcher *)self channel];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __49__AVAirMessageDispatcher_sendMessage_completion___block_invoke;
      v16[3] = &unk_1E7207C00;
      v17 = v7;
      [v13 sendObject:v6 receiveResponse:v16];
    }

    else
    {
      v15 = _avairlog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "[AVAirMessageDispatcher sendMessage:completion:]";
        _os_log_impl(&dword_18B49C000, v15, OS_LOG_TYPE_DEFAULT, "%s cannot send message yet; please wait for output stream to finish opening!", buf, 0xCu);
      }

      v7[2](v7, 0, -1903);
    }
  }

  else
  {
    v14 = _avairlog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[AVAirMessageDispatcher sendMessage:completion:]";
      _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s cannot send message; we don't have a channel to the AirPlay receiver (if there is one).", buf, 0xCu);
    }

    v7[2](v7, 0, -1901);
  }
}

void __49__AVAirMessageDispatcher_sendMessage_completion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = _avairlog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[AVAirMessageDispatcher sendMessage:completion:]_block_invoke";
    v13 = 1024;
    v14 = a3;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s sendObject completed with status = %d; response message: %@", &v11, 0x1Cu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v8 isIncomplete])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v8 airMessage];
    v9 = v10;
    if (v10)
    {
      [v10 status];
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)haveAirPlayService
{
  v2 = [(AVAirMessageDispatcher *)self channel];
  v3 = v2 != 0;

  return v3;
}

- (NSString)description
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v4 stringWithFormat:@"<%@ %p>", v7, v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [(AVAirMessageDispatcher *)self bonjourServiceClient];
  v14 = [(AVAirMessageDispatcher *)self channel];
  v15 = [v10 stringWithFormat:@"<%@ %p: serviceClient=%@, channel=%@ delegate=%@>", v12, self, v13, v14, v9];;

  return v15;
}

- (AVAirMessageDispatcher)init
{
  if (+[AVAirMessageDispatcher _isDispatcherEnabled])
  {
    v8.receiver = self;
    v8.super_class = AVAirMessageDispatcher;
    v3 = [(AVAirMessageDispatcher *)&v8 init];
    if (v3)
    {
      v4 = [[AVBonjourServiceClient alloc] initWithNetServiceType:@"_avairtvui._tcp."];
      bonjourServiceClient = v3->_bonjourServiceClient;
      v3->_bonjourServiceClient = v4;

      [(AVBonjourServiceClient *)v3->_bonjourServiceClient setDelegate:v3];
      [(AVBonjourServiceClient *)v3->_bonjourServiceClient beginDiscovery];
    }

    self = v3;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, &__block_literal_global_7459);
  }

  v3 = shared__shared;

  return v3;
}

uint64_t __32__AVAirMessageDispatcher_shared__block_invoke()
{
  v0 = objc_alloc_init(AVAirMessageDispatcher);
  v1 = shared__shared;
  shared__shared = v0;

  [AVAirMessageParts registerClass:objc_opt_class() forMessageVersion:@"AVKitAir/1"];
  v2 = objc_opt_class();

  return [AVAirMessageParts registerClass:v2 forMessageVersion:@"AVKitAirResponse/1"];
}

@end