@interface AVAirMessageNotificationCenter
+ (void)prepare;
- (AVAirMessageNotificationCenter)init;
- (AVAirMessageNotificationCenterDelegate)delegate;
- (id)_initPrivate;
- (id)bonjourServiceAdditionalTXTRecordInfo:(id)info;
- (id)playerItemForIdentifier:(id)identifier;
- (void)airTransport:(id)transport didReceiveObject:(id)object;
- (void)airTransportInputDidClose:(id)close;
- (void)bonjourService:(id)service didAcceptConnectionChannel:(id)channel;
- (void)bonjourService:(id)service didCloseChannel:(id)channel;
- (void)dealloc;
- (void)handleCommandMessage:(id)message completion:(id)completion;
- (void)start;
- (void)stop;
@end

@implementation AVAirMessageNotificationCenter

- (AVAirMessageNotificationCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)airTransportInputDidClose:(id)close
{
  v13 = *MEMORY[0x1E69E9840];
  closeCopy = close;
  activeChannels = [(AVAirMessageNotificationCenter *)self activeChannels];
  v6 = [activeChannels containsObject:closeCopy];

  if (v6)
  {
    v7 = _avairlog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[AVAirMessageNotificationCenter airTransportInputDidClose:]";
      v11 = 2112;
      v12 = closeCopy;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s Removing channel from active list (%@)", &v9, 0x16u);
    }

    activeChannels2 = [(AVAirMessageNotificationCenter *)self activeChannels];
    [activeChannels2 removeObject:closeCopy];
  }
}

- (void)airTransport:(id)transport didReceiveObject:(id)object
{
  v24 = *MEMORY[0x1E69E9840];
  transportCopy = transport;
  objectCopy = object;
  activeChannels = [(AVAirMessageNotificationCenter *)self activeChannels];
  v9 = [activeChannels containsObject:transportCopy];

  if (!v9)
  {
    v10 = _avairlog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[AVAirMessageNotificationCenter airTransport:didReceiveObject:]";
      v22 = 2112;
      v23 = transportCopy;
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s Unexpectedly received object from inactive channel (%@)", buf, 0x16u);
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objectCopy;
    airMessage = [v10 airMessage];
    if (airMessage)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __64__AVAirMessageNotificationCenter_airTransport_didReceiveObject___block_invoke;
        v18[3] = &unk_1E72074F8;
        v19 = transportCopy;
        [(AVAirMessageNotificationCenter *)self handleCommandMessage:airMessage completion:v18];
        v12 = v19;
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v12 = _avairlog();
      v17 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (isKindOfClass)
      {
        if (!v17)
        {
          goto LABEL_17;
        }

        *buf = 136315138;
        v21 = "[AVAirMessageNotificationCenter airTransport:didReceiveObject:]";
        v13 = "%s unexpectedly received a response -- expected a message only";
      }

      else
      {
        if (!v17)
        {
          goto LABEL_17;
        }

        *buf = 136315138;
        v21 = "[AVAirMessageNotificationCenter airTransport:didReceiveObject:]";
        v13 = "%s I just received something, I know not what";
      }

      v14 = v12;
      v15 = 12;
    }

    else
    {
      v12 = _avairlog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 136315394;
      v21 = "[AVAirMessageNotificationCenter airTransport:didReceiveObject:]";
      v22 = 2114;
      v23 = v10;
      v13 = "%s unable to receive message : %{public}@";
      v14 = v12;
      v15 = 22;
    }

    _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    goto LABEL_17;
  }

LABEL_19:
}

void __64__AVAirMessageNotificationCenter_airTransport_didReceiveObject___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _avairlog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[AVAirMessageNotificationCenter airTransport:didReceiveObject:]_block_invoke";
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s responding with result %d", &v6, 0x12u);
  }

  v5 = [[AVAirMessageResponse alloc] initWithStatus:a2 localizedDescription:0];
  [*(a1 + 32) sendResponse:v5];
}

- (void)bonjourService:(id)service didCloseChannel:(id)channel
{
  v12 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  v6 = _avairlog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVAirMessageNotificationCenter bonjourService:didCloseChannel:]";
    v10 = 2114;
    v11 = channelCopy;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v8, 0x16u);
  }

  [channelCopy setDelegate:0];
  [channelCopy close];
  activeChannels = [(AVAirMessageNotificationCenter *)self activeChannels];
  [activeChannels removeObject:channelCopy];
}

- (id)bonjourServiceAdditionalTXTRecordInfo:(id)info
{
  v9[1] = *MEMORY[0x1E69E9840];
  delegate = [(AVAirMessageNotificationCenter *)self delegate];
  v5 = [delegate airTrafficControllerCurrentItemIdentifier:self];

  if ([v5 length])
  {
    v8 = @"currentItemIdentifier";
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)bonjourService:(id)service didAcceptConnectionChannel:(id)channel
{
  v16 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  v6 = _avairlog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    activeChannels = [(AVAirMessageNotificationCenter *)self activeChannels];
    v10 = 136315650;
    v11 = "[AVAirMessageNotificationCenter bonjourService:didAcceptConnectionChannel:]";
    v12 = 2112;
    v13 = channelCopy;
    v14 = 2112;
    v15 = activeChannels;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s new channel %@; activeChannels has %@", &v10, 0x20u);
  }

  activeChannels2 = [(AVAirMessageNotificationCenter *)self activeChannels];
  [activeChannels2 addObject:channelCopy];

  v9 = [AVDataValueTransformer messageTransformerWithClass:objc_opt_class()];
  [channelCopy setStreamDataTransformer:v9];

  [channelCopy setDelegate:self];
  [channelCopy open];
}

- (void)handleCommandMessage:(id)message completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v7 = [completion copy];
  delegate = [(AVAirMessageNotificationCenter *)self delegate];

  if (delegate)
  {
    v9 = _avairlog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[AVAirMessageNotificationCenter handleCommandMessage:completion:]";
      v14 = 2114;
      v15 = messageCopy;
      _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s received message %{public}@", &v12, 0x16u);
    }

    type = [messageCopy type];
    if (type <= 209)
    {
      if (type != 100 && type != 200)
      {
        goto LABEL_13;
      }
    }

    else if (type != 210 && type != 400 && type != 300)
    {
LABEL_13:
      v7[2](v7, -1999, 0);
      goto LABEL_14;
    }

    delegate2 = [(AVAirMessageNotificationCenter *)self delegate];
    [delegate2 airTrafficController:self didReceiveMessage:messageCopy completion:v7];
  }

  else
  {
    v7[2](v7, -1, 0);
  }

LABEL_14:
}

- (id)playerItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    nowPlayingPlayerItem = [(AVAirMessageNotificationCenter *)self nowPlayingPlayerItem];
    v6 = nowPlayingPlayerItem;
    if (nowPlayingPlayerItem)
    {
      avkitACMIdentifier = [nowPlayingPlayerItem avkitACMIdentifier];
      if ([avkitACMIdentifier isEqualToString:identifierCopy])
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)stop
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    activeChannels = [(AVAirMessageNotificationCenter *)self activeChannels];
    v4 = [activeChannels copy];

    v5 = [MEMORY[0x1E695DFA8] set];
    [(AVAirMessageNotificationCenter *)self setActiveChannels:v5];

    self->_started = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) invalidate];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)start
{
  if (!self->_started)
  {
    self->_started = 1;
  }
}

- (void)dealloc
{
  [(AVAirMessageNotificationCenter *)self stop];
  [(AVBonjourService *)self->_mainService stop];
  v3.receiver = self;
  v3.super_class = AVAirMessageNotificationCenter;
  [(AVAirMessageNotificationCenter *)&v3 dealloc];
}

- (id)_initPrivate
{
  v8.receiver = self;
  v8.super_class = AVAirMessageNotificationCenter;
  v2 = [(AVAirMessageNotificationCenter *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.avkit.AirMessageNotificationCenter", MEMORY[0x1E69E96A8]);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x1E695DFA8] set];
    activeChannels = v2->_activeChannels;
    v2->_activeChannels = v5;

    [(AVBonjourService *)v2->_mainService setDelegate:v2];
    [AVAirMessageParts registerClass:objc_opt_class() forMessageVersion:@"AVKitAir/1"];
    [AVAirMessageParts registerClass:objc_opt_class() forMessageVersion:@"AVKitAirResponse/1"];
    [(AVBonjourService *)v2->_mainService start];
  }

  return v2;
}

- (AVAirMessageNotificationCenter)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"do not create your own AVAirMessageNotificationCenter"];

  return 0;
}

+ (void)prepare
{
  if (prepare_onceToken != -1)
  {
    dispatch_once(&prepare_onceToken, &__block_literal_global_2723);
  }
}

uint64_t __41__AVAirMessageNotificationCenter_prepare__block_invoke()
{
  result = +[AVAirMessageNotificationCenter _isNotificationCenterEnabled];
  if (result)
  {
    v1 = [[AVAirMessageNotificationCenter alloc] _initPrivate];
    v2 = _shared;
    _shared = v1;

    return MEMORY[0x1EEE66BB8](v1, v2);
  }

  return result;
}

@end