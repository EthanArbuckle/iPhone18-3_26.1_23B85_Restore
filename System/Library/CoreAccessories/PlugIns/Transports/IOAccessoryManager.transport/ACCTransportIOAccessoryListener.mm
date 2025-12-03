@interface ACCTransportIOAccessoryListener
- (ACCTransportIOAccessoryListener)initWithDelegate:(id)delegate;
- (ACCTransportIOAccessoryListenerProtocol)delegate;
- (void)_startListeningForIOAccessoryAuthCPClass;
- (void)_startListeningForIOAccessoryConfigStreamClass;
- (void)_startListeningForIOAccessoryEAClass;
- (void)_startListeningForIOAccessoryManagerClass;
- (void)_startListeningForIOAccessoryOOBPairingClass;
- (void)_startListeningForIOAccessoryPortClass;
- (void)_stopListeningForIOAccessoryAuthCPClass;
- (void)_stopListeningForIOAccessoryConfigStreamClass;
- (void)_stopListeningForIOAccessoryEAClass;
- (void)_stopListeningForIOAccessoryManagerClass;
- (void)_stopListeningForIOAccessoryOOBPairingClass;
- (void)_stopListeningForIOAccessoryPortClass;
- (void)dealloc;
- (void)startListening;
- (void)stopListening;
@end

@implementation ACCTransportIOAccessoryListener

- (ACCTransportIOAccessoryListener)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = ACCTransportIOAccessoryListener;
  v5 = [(ACCTransportIOAccessoryListener *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_queue_create("com.apple.ACCTransport.IOAccessoryListener", 0);
    ioAccessoryListenerQueue = v6->_ioAccessoryListenerQueue;
    v6->_ioAccessoryListenerQueue = v7;
  }

  return v6;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  [(ACCTransportIOAccessoryListener *)self stopListening];
  v3.receiver = self;
  v3.super_class = ACCTransportIOAccessoryListener;
  [(ACCTransportIOAccessoryListener *)&v3 dealloc];
}

- (void)startListening
{
  [(ACCTransportIOAccessoryListener *)self _startListeningForIOAccessoryManagerClass];
  [(ACCTransportIOAccessoryListener *)self _startListeningForIOAccessoryPortClass];
  [(ACCTransportIOAccessoryListener *)self _startListeningForIOAccessoryAuthCPClass];
  [(ACCTransportIOAccessoryListener *)self _startListeningForIOAccessoryEAClass];
  [(ACCTransportIOAccessoryListener *)self _startListeningForIOAccessoryOOBPairingClass];

  [(ACCTransportIOAccessoryListener *)self _startListeningForIOAccessoryConfigStreamClass];
}

- (void)stopListening
{
  [(ACCTransportIOAccessoryListener *)self _stopListeningForIOAccessoryOOBPairingClass];
  [(ACCTransportIOAccessoryListener *)self _stopListeningForIOAccessoryEAClass];
  [(ACCTransportIOAccessoryListener *)self _stopListeningForIOAccessoryAuthCPClass];
  [(ACCTransportIOAccessoryListener *)self _stopListeningForIOAccessoryPortClass];
  [(ACCTransportIOAccessoryListener *)self _stopListeningForIOAccessoryManagerClass];

  [(ACCTransportIOAccessoryListener *)self _stopListeningForIOAccessoryConfigStreamClass];
}

- (void)_startListeningForIOAccessoryManagerClass
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_stopListeningForIOAccessoryManagerClass
{
  ioAccessoryManagerClassNotify = self->_ioAccessoryManagerClassNotify;
  if (ioAccessoryManagerClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryManagerClassNotify);
  }

  ioAccessoryManagerClassIteratorArrived = self->_ioAccessoryManagerClassIteratorArrived;
  if (ioAccessoryManagerClassIteratorArrived)
  {
    IOObjectRelease(ioAccessoryManagerClassIteratorArrived);
    self->_ioAccessoryManagerClassIteratorArrived = 0;
  }

  ioAccessoryManagerClassIteratorTerminated = self->_ioAccessoryManagerClassIteratorTerminated;
  if (ioAccessoryManagerClassIteratorTerminated)
  {
    IOObjectRelease(ioAccessoryManagerClassIteratorTerminated);
    self->_ioAccessoryManagerClassIteratorTerminated = 0;
  }
}

- (void)_startListeningForIOAccessoryPortClass
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_stopListeningForIOAccessoryPortClass
{
  ioAccessoryPortClassNotify = self->_ioAccessoryPortClassNotify;
  if (ioAccessoryPortClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryPortClassNotify);
    self->_ioAccessoryPortClassNotify = 0;
  }

  ioAccessoryPortClassIteratorArrived = self->_ioAccessoryPortClassIteratorArrived;
  if (ioAccessoryPortClassIteratorArrived)
  {
    IOObjectRelease(ioAccessoryPortClassIteratorArrived);
    self->_ioAccessoryPortClassIteratorArrived = 0;
  }

  ioAccessoryPortClassIteratorTerminated = self->_ioAccessoryPortClassIteratorTerminated;
  if (ioAccessoryPortClassIteratorTerminated)
  {
    IOObjectRelease(ioAccessoryPortClassIteratorTerminated);
    self->_ioAccessoryPortClassIteratorTerminated = 0;
  }
}

- (void)_startListeningForIOAccessoryAuthCPClass
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_stopListeningForIOAccessoryAuthCPClass
{
  ioAccessoryAuthCPClassNotify = self->_ioAccessoryAuthCPClassNotify;
  if (ioAccessoryAuthCPClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryAuthCPClassNotify);
    self->_ioAccessoryAuthCPClassNotify = 0;
  }

  ioAccessoryAuthCPClassIteratorArrived = self->_ioAccessoryAuthCPClassIteratorArrived;
  if (ioAccessoryAuthCPClassIteratorArrived)
  {
    IOObjectRelease(ioAccessoryAuthCPClassIteratorArrived);
    self->_ioAccessoryAuthCPClassIteratorArrived = 0;
  }

  ioAccessoryAuthCPClassIteratorTerminated = self->_ioAccessoryAuthCPClassIteratorTerminated;
  if (ioAccessoryAuthCPClassIteratorTerminated)
  {
    IOObjectRelease(ioAccessoryAuthCPClassIteratorTerminated);
    self->_ioAccessoryAuthCPClassIteratorTerminated = 0;
  }
}

- (void)_startListeningForIOAccessoryEAClass
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_stopListeningForIOAccessoryEAClass
{
  ioAccessoryEAClassNotify = self->_ioAccessoryEAClassNotify;
  if (ioAccessoryEAClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryEAClassNotify);
    self->_ioAccessoryEAClassNotify = 0;
  }

  ioAccessoryEAClassIteratorArrived = self->_ioAccessoryEAClassIteratorArrived;
  if (ioAccessoryEAClassIteratorArrived)
  {
    IOObjectRelease(ioAccessoryEAClassIteratorArrived);
    self->_ioAccessoryEAClassIteratorArrived = 0;
  }

  ioAccessoryEAClassIteratorTerminated = self->_ioAccessoryEAClassIteratorTerminated;
  if (ioAccessoryEAClassIteratorTerminated)
  {
    IOObjectRelease(ioAccessoryEAClassIteratorTerminated);
    self->_ioAccessoryEAClassIteratorTerminated = 0;
  }
}

- (void)_startListeningForIOAccessoryOOBPairingClass
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_stopListeningForIOAccessoryOOBPairingClass
{
  ioAccessoryOOBPairingClassNotify = self->_ioAccessoryOOBPairingClassNotify;
  if (ioAccessoryOOBPairingClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryOOBPairingClassNotify);
    self->_ioAccessoryOOBPairingClassNotify = 0;
  }

  ioAccessoryOOBPairingClassIteratorArrived = self->_ioAccessoryOOBPairingClassIteratorArrived;
  if (ioAccessoryOOBPairingClassIteratorArrived)
  {
    IOObjectRelease(ioAccessoryOOBPairingClassIteratorArrived);
    self->_ioAccessoryOOBPairingClassIteratorArrived = 0;
  }

  ioAccessoryOOBPairingClassIteratorTerminated = self->_ioAccessoryOOBPairingClassIteratorTerminated;
  if (ioAccessoryOOBPairingClassIteratorTerminated)
  {
    IOObjectRelease(ioAccessoryOOBPairingClassIteratorTerminated);
    self->_ioAccessoryOOBPairingClassIteratorTerminated = 0;
  }
}

- (void)_startListeningForIOAccessoryConfigStreamClass
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_stopListeningForIOAccessoryConfigStreamClass
{
  ioAccessoryConfigStreamClassNotify = self->_ioAccessoryConfigStreamClassNotify;
  if (ioAccessoryConfigStreamClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryConfigStreamClassNotify);
    self->_ioAccessoryConfigStreamClassNotify = 0;
  }

  ioAccessoryConfigStreamClassIteratorArrived = self->_ioAccessoryConfigStreamClassIteratorArrived;
  if (ioAccessoryConfigStreamClassIteratorArrived)
  {
    IOObjectRelease(ioAccessoryConfigStreamClassIteratorArrived);
    self->_ioAccessoryConfigStreamClassIteratorArrived = 0;
  }

  ioAccessoryConfigStreamClassIteratorTerminated = self->_ioAccessoryConfigStreamClassIteratorTerminated;
  if (ioAccessoryConfigStreamClassIteratorTerminated)
  {
    IOObjectRelease(ioAccessoryConfigStreamClassIteratorTerminated);
    self->_ioAccessoryConfigStreamClassIteratorTerminated = 0;
  }
}

- (ACCTransportIOAccessoryListenerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end