@interface CMCatherineFeederInternal
- (CMCatherineFeederInternal)init;
- (void)_feedCatherine:(double)a3 confidence:(double)a4 timestamp:(double)a5;
- (void)_startDaemonConnection;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMCatherineFeederInternal

- (CMCatherineFeederInternal)init
{
  v4.receiver = self;
  v4.super_class = CMCatherineFeederInternal;
  v2 = [(CMCatherineFeederInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMCatherineFeeder.internal", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMCatherineFeederInternal;
  [(CMCatherineFeederInternal *)&v3 dealloc];
}

- (void)_teardown
{
  fLocationdConnection = self->fLocationdConnection;
  if (fLocationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0](fLocationdConnection, a2);
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_startDaemonConnection
{
  fLocationdConnection = self->fLocationdConnection;
  CLConnectionClient::setDefaultMessageHandler();
  v4 = self->fLocationdConnection;

  CLConnectionClient::start(v4);
}

- (void)_feedCatherine:(double)a3 confidence:(double)a4 timestamp:(double)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = [CMCatherineData alloc];
  v11 = objc_msgSend_initWithCatherine_confidence_timestamp_(v8, v9, v10, a3, a4, a5);
  v13 = @"kCLConnectionMessageCatherineDataKey";
  v14[0] = v11;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v14, &v13, 1);

  sub_19B66451C();
}

@end