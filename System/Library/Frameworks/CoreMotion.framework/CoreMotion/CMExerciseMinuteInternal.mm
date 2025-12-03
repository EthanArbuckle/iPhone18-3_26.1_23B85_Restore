@interface CMExerciseMinuteInternal
- (CMExerciseMinuteInternal)init;
- (void)_queryExerciseMinutesFromRecord:(id)record handler:(id)handler;
- (void)_startUpdatesFromRecord:(id)record handler:(id)handler;
- (void)_startUpdatesWithHandler:(id)handler;
- (void)_stopUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMExerciseMinuteInternal

- (CMExerciseMinuteInternal)init
{
  v4.receiver = self;
  v4.super_class = CMExerciseMinuteInternal;
  v2 = [(CMExerciseMinuteInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMExerciseMinute.InternalQueue", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  self->fInternalQueue = 0;
  dispatch_release(self->fAppQueue);
  self->fAppQueue = 0;
  v3.receiver = self;
  v3.super_class = CMExerciseMinuteInternal;
  [(CMExerciseMinuteInternal *)&v3 dealloc];
}

- (void)_teardown
{
  self->fHandler = 0;

  self->fMostRecentRecord = 0;
  fLocationdConnection = self->fLocationdConnection;
  sub_19B428B50(&__p, "kCLConnectionMessageExerciseMinuteUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (self->fLocationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_startUpdatesFromRecord:(id)record handler:(id)handler
{
  objc_msgSend__queryExerciseMinutesFromRecord_handler_(self, a2, record);
  objc_msgSend__startUpdatesWithHandler_(self, v7, handler);

  self->fMostRecentRecord = 0;
  self->fMostRecentRecord = record;
}

- (void)_stopUpdates
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B671E44;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);
}

- (void)_startUpdatesWithHandler:(id)handler
{
  fInternalQueue = self->fInternalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6721BC;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = handler;
  dispatch_async(fInternalQueue, v4);
}

- (void)_queryExerciseMinutesFromRecord:(id)record handler:(id)handler
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B672984;
  block[3] = &unk_1E7532C80;
  block[5] = record;
  block[6] = handler;
  block[4] = self;
  dispatch_async(fInternalQueue, block);
}

@end