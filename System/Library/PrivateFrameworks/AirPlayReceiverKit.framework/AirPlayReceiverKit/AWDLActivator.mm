@interface AWDLActivator
- (AWDLActivator)init;
- (void)_stopInternal;
- (void)startWithMaxDuration:(int64_t)a3;
- (void)stop;
@end

@implementation AWDLActivator

- (AWDLActivator)init
{
  v12.receiver = self;
  v12.super_class = AWDLActivator;
  v2 = [(AWDLActivator *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.aprk.awdlactivator", 0);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 2));
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    objc_initWeak(&location, v2);
    v7 = *(v2 + 3);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __21__AWDLActivator_init__block_invoke;
    v9[3] = &unk_278C62C50;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(v7, v9);
    dispatch_source_set_timer(*(v2 + 3), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(v2 + 3));
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __21__AWDLActivator_init__block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __21__AWDLActivator_init__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopInternal];
}

- (void)_stopInternal
{
  if (self->_browser)
  {
    BonjourBrowser_Stop();
    if (self->_browser)
    {
      BonjourBrowser_Stop();
      CFRelease(self->_browser);
      self->_browser = 0;
    }
  }

  timer = self->_timer;

  dispatch_source_set_timer(timer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__AWDLActivator_stop__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)startWithMaxDuration:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__AWDLActivator_startWithMaxDuration___block_invoke;
  v4[3] = &unk_278C62A70;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

void __38__AWDLActivator_startWithMaxDuration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
LABEL_8:
    v3 = *(v2 + 24);
    v4 = dispatch_time(0, 1000000000 * *(a1 + 40));

    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    return;
  }

  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __38__AWDLActivator_startWithMaxDuration___block_invoke_cold_1();
  }

  if (BonjourBrowser_Create())
  {
    __38__AWDLActivator_startWithMaxDuration___block_invoke_cold_2();
  }

  else
  {
    if (!BonjourBrowser_Start())
    {
      usleep(0x186A0u);
      v2 = *(a1 + 32);
      goto LABEL_8;
    }

    __38__AWDLActivator_startWithMaxDuration___block_invoke_cold_3();
  }

  if (*(*(a1 + 32) + 8))
  {
    BonjourBrowser_Stop();
    CFRelease(*(*(a1 + 32) + 8));
    *(*(a1 + 32) + 8) = 0;
  }

  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __38__AWDLActivator_startWithMaxDuration___block_invoke_cold_4();
  }
}

@end