@interface AVSCoreSpeechBridge
+ (id)sharedInstance;
- (AVSCoreSpeechBridge)init;
- (const)recordingASBD;
- (void)commandControlListener:(id)a3 hasLPCMBufferAvailable:(id)a4;
- (void)commandControlListener:(id)a3 hasLPCMBufferAvailable:(id)a4 hostTime:(unint64_t)a5;
- (void)startListening:(id)a3;
- (void)stopListening:(id)a3;
@end

@implementation AVSCoreSpeechBridge

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AVSCoreSpeechBridge sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __37__AVSCoreSpeechBridge_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(AVSCoreSpeechBridge);

  return MEMORY[0x2821F96F8]();
}

- (AVSCoreSpeechBridge)init
{
  v6.receiver = self;
  v6.super_class = AVSCoreSpeechBridge;
  v2 = [(AVSCoreSpeechBridge *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D014F8]);
    commandControlListener = v2->_commandControlListener;
    v2->_commandControlListener = v3;

    [(CSCommandControlListener *)v2->_commandControlListener setDelegate:v2];
  }

  return v2;
}

- (const)recordingASBD
{
  v2 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  v3 = [v2 streamDescription];

  return v3;
}

- (void)startListening:(id)a3
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = objc_alloc_init(MEMORY[0x277D01500]);
  commandControlListener = self->_commandControlListener;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __38__AVSCoreSpeechBridge_startListening___block_invoke;
  v18 = &unk_278C5C178;
  v20 = &v28;
  v21 = &v22;
  v8 = v5;
  v19 = v8;
  [(CSCommandControlListener *)commandControlListener startListenWithOption:v6 completion:&v15];
  v9 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    *(v29 + 24) = 0;
    v10 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA470];
    v33[0] = @"Timed out";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:{1, v15, v16, v17, v18}];
    v12 = [v10 errorWithDomain:@"CoreSpeechBridge" code:-1 userInfo:v11];
    v13 = v23[5];
    v23[5] = v12;
  }

  if (v4)
  {
    v4[2](v4, *(v29 + 24), v23[5]);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  v14 = *MEMORY[0x277D85DE8];
}

void __38__AVSCoreSpeechBridge_startListening___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)stopListening:(id)a3
{
  v5 = a3;
  [(CSCommandControlListener *)self->_commandControlListener stopListenWithCompletion:&__block_literal_global_294];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 1, 0);
    v4 = v5;
  }
}

- (void)commandControlListener:(id)a3 hasLPCMBufferAvailable:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AVSCoreSpeechBridge *)self commandControlListener:v7 hasLPCMBufferAvailable:v6 hostTime:mach_absolute_time()];
}

- (void)commandControlListener:(id)a3 hasLPCMBufferAvailable:(id)a4 hostTime:(unint64_t)a5
{
  v6 = a4;
  if (v6 && self->_onBufferReceived)
  {
    v12 = v6;
    v7 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
    v8 = [v12 length] >> 1;
    v9 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v7 frameCapacity:v8];
    [v9 setFrameLength:{objc_msgSend(v9, "frameCapacity")}];
    v10 = *[v9 int16ChannelData];
    v11 = v12;
    memcpy(v10, [v12 bytes], objc_msgSend(v12, "length"));

    (*(self->_onBufferReceived + 2))();
    v6 = v12;
  }
}

@end