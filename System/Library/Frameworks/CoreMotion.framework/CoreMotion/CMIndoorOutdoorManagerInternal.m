@interface CMIndoorOutdoorManagerInternal
- (CMIndoorOutdoorManagerInternal)init;
- (void)_lastKnownIndoorOutdoorStateWithHandler:(id)a3;
- (void)_startIndoorOutdoorUpdates;
- (void)_stopIndoorOutdoorUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMIndoorOutdoorManagerInternal

- (CMIndoorOutdoorManagerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMIndoorOutdoorManagerInternal;
  v2 = [(CMIndoorOutdoorManagerInternal *)&v4 init];
  if (v2)
  {
    v2->_internalQueue = dispatch_queue_create("com.apple.CoreMotion.CMIndoorOutdoor.InternalQueue", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->_internalQueue);
  self->_internalQueue = 0;
  v3.receiver = self;
  v3.super_class = CMIndoorOutdoorManagerInternal;
  [(CMIndoorOutdoorManagerInternal *)&v3 dealloc];
}

- (void)_teardown
{
  connection = self->_connection;
  sub_19B428B50(&__p, "kCLConnectionMessageIndoorOutdoorUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (self->_connection)
  {
    v4 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->_connection = 0;
}

- (void)_startIndoorOutdoorUpdates
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B65A838;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_stopIndoorOutdoorUpdates
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B65AE00;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_lastKnownIndoorOutdoorStateWithHandler:(id)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B65B140;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(internalQueue, v4);
}

@end