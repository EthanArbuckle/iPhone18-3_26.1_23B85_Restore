@interface CMProxPDPAndALSPhoneManagerInternal
- (CMProxPDPAndALSPhoneManagerInternal)init;
- (void)_startALSPhoneUpdatesWithHandler:(id)handler;
- (void)_startPDPUpdatesWithHandler:(id)handler;
- (void)dealloc;
@end

@implementation CMProxPDPAndALSPhoneManagerInternal

- (CMProxPDPAndALSPhoneManagerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMProxPDPAndALSPhoneManagerInternal;
  v2 = [(CMProxPDPAndALSPhoneManagerInternal *)&v4 init];
  if (v2)
  {
    v2->fPrivateQueue = dispatch_queue_create("com.apple.CoreMotionCMProxPDPAndALSPhoneManagerPrivateQueue", 0);
    *&v2->fStartedPDPUpdates = 0;
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->fPrivateQueue);
  self->fPrivateQueue = 0;
  v3.receiver = self;
  v3.super_class = CMProxPDPAndALSPhoneManagerInternal;
  [(CMProxPDPAndALSPhoneManagerInternal *)&v3 dealloc];
}

- (void)_startPDPUpdatesWithHandler:(id)handler
{
  fPrivateQueue = self->fPrivateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B5E19F8;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = handler;
  dispatch_async(fPrivateQueue, v4);
}

- (void)_startALSPhoneUpdatesWithHandler:(id)handler
{
  fPrivateQueue = self->fPrivateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B5E22FC;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = handler;
  dispatch_async(fPrivateQueue, v4);
}

@end