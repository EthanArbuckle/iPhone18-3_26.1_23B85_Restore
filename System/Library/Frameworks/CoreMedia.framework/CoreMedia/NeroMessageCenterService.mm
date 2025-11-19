@interface NeroMessageCenterService
- (BOOL)sendMemoryBlock:(void *)a3 withLength:(unint64_t)a4;
- (NeroMessageCenterService)initWithIDSService:(id)a3 connection:(OpaqueFigTransportConnection *)a4;
- (int)activateConnection;
- (void)deactivateConnection;
- (void)dealloc;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation NeroMessageCenterService

- (NeroMessageCenterService)initWithIDSService:(id)a3 connection:(OpaqueFigTransportConnection *)a4
{
  v11.receiver = self;
  v11.super_class = NeroMessageCenterService;
  v6 = [(NeroMessageCenterService *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_connection = a4;
    v6->_service = a3;
    v8 = dispatch_queue_create([@"FigTransportConnectionIDS.delegate" UTF8String], 0);
    v7->_options = 0;
    v7->_serviceQueue = v8;
    v7->_isActive = 0;
    service = v7->_service;
    if (!service || ![(IDSService *)service canSend]|| !v7->_serviceQueue)
    {
      return 0;
    }
  }

  return v7;
}

void __48__NeroMessageCenterService_deactivateConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 56) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 48) = 0;
  *(*(a1 + 32) + 40) = 0;
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = [a5 bytes];
  v10 = [a5 length];
  DerivedStorage = CMBaseObjectGetDerivedStorage(self->_connection);
  if (self->_isActive && v10 != 0)
  {
    v13 = DerivedStorage;
    v14 = 0;
    p_incomingPackage = &self->_incomingPackage;
    v16 = *MEMORY[0x1E695E480];
    do
    {
      v17 = *p_incomingPackage;
      if (v10 > 3)
      {
        if (!v17)
        {
          v18 = *v9;
          self->_incomingPackageSize = v18;
          if (CMBlockBufferCreateWithMemoryBlock(v16, 0, v18, *(v13 + 64), 0, 0, v18, 1u, &self->_incomingPackage))
          {
            return;
          }

          v17 = *p_incomingPackage;
        }
      }

      else if (!v17)
      {
        return;
      }

      numBytesReceivedForIncomingPackage = self->_numBytesReceivedForIncomingPackage;
      if (v10 >= self->_incomingPackageSize - numBytesReceivedForIncomingPackage)
      {
        v20 = self->_incomingPackageSize - numBytesReceivedForIncomingPackage;
      }

      else
      {
        v20 = v10;
      }

      if (CMBlockBufferReplaceDataBytes(v9, v17, numBytesReceivedForIncomingPackage, v20))
      {
        break;
      }

      v21 = self->_numBytesReceivedForIncomingPackage + v20;
      self->_numBytesReceivedForIncomingPackage = v21;
      if (v21 == self->_incomingPackageSize)
      {
        ids_didReceivePackage(self->_connection, self->_incomingPackage);
        incomingPackage = self->_incomingPackage;
        if (incomingPackage)
        {
          CFRelease(incomingPackage);
          *p_incomingPackage = 0;
        }

        self->_incomingPackageSize = 0;
        self->_numBytesReceivedForIncomingPackage = 0;
      }

      v14 += v20;
    }

    while (v14 < v10);
  }
}

- (void)dealloc
{
  [(NeroMessageCenterService *)self deactivateConnection];
  serviceQueue = self->_serviceQueue;
  if (serviceQueue)
  {
    dispatch_release(serviceQueue);
    self->_serviceQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = NeroMessageCenterService;
  [(NeroMessageCenterService *)&v4 dealloc];
}

- (int)activateConnection
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (self->_isActive)
  {
    return 0;
  }

  [(IDSService *)self->_service addDelegate:self queue:self->_serviceQueue];
  v5[0] = *_MergedGlobals_30;
  v6[0] = &unk_1F0B8F5E8;
  service = self->_service;
  v5[1] = *qword_1ED4CC948;
  v6[1] = &unk_1F0B8F600;
  v5[2] = *qword_1ED4CC950;
  v6[2] = &unk_1F0B8F600;
  -[IDSService setLinkPreferences:](service, "setLinkPreferences:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3]);
  if (![(IDSService *)self->_service canSend])
  {
    return -12057;
  }

  result = 0;
  self->_incomingPackage = 0;
  self->_incomingPackageSize = 0;
  self->_numBytesReceivedForIncomingPackage = 0;
  self->_isActive = 1;
  return result;
}

- (void)deactivateConnection
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (self->_isActive)
  {
    self->_isActive = 0;
    service = self->_service;
    v6[0] = *_MergedGlobals_30;
    v7[0] = &unk_1F0B8F618;
    v6[1] = *qword_1ED4CC948;
    v7[1] = &unk_1F0B8F618;
    v6[2] = *qword_1ED4CC950;
    v7[2] = &unk_1F0B8F618;
    -[IDSService setLinkPreferences:](service, "setLinkPreferences:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3]);
    [(IDSService *)self->_service removeDelegate:self];
    OUTLINED_FUNCTION_1();
    v5[1] = 3221225472;
    v5[2] = __48__NeroMessageCenterService_deactivateConnection__block_invoke;
    v5[3] = &unk_1E749CE18;
    v5[4] = self;
    dispatch_async(v4, v5);
  }
}

- (BOOL)sendMemoryBlock:(void *)a3 withLength:(unint64_t)a4
{
  v9 = 0;
  v10 = 0;
  v7 = [MEMORY[0x1E695DFD8] setWithObject:@"__IDS_DEFAULT_PAIRED_DEVICE__"];
  if (!self->_isActive)
  {
    return 1;
  }

  -[IDSService sendData:toDestinations:priority:options:identifier:error:](self->_service, "sendData:toDestinations:priority:options:identifier:error:", [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:a3 length:a4 freeWhenDone:1], v7, 300, self->_options, &v10, &v9);
  [v9 code];
  return v9 == 0;
}

@end