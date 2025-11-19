@interface EASession
- (EASession)initWithAccessory:(EAAccessory *)accessory forProtocol:(NSString *)protocolString;
- (id)_shortDescription;
- (id)description;
- (void)_endStreams;
- (void)_streamClosed;
- (void)dealloc;
- (void)setOpenCompleted:(BOOL)a3;
@end

@implementation EASession

- (EASession)initWithAccessory:(EAAccessory *)accessory forProtocol:(NSString *)protocolString
{
  v35 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = EASession;
  v6 = [(EASession *)&v31 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_21;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v6->_sock = -1;
  v6->_useSocketInterfaceForEASession = 1;
  v6->_sessionID = 0x10000;
  v26 = 0x10000;
  v6->_accessory = accessory;
  v8 = [(NSString *)protocolString copy];
  v7->_protocolString = v8;
  v7->_eaSessionUUIDFromCoreAccessories = 0;
  v9 = [(EAAccessory *)accessory _protocolIDForProtocolString:v8];
  if ([+[EAAccessoryManager appDeclaresProtocol:"appDeclaresProtocol:"]
  {
    if (v9)
    {
      if ([(EAAccessory *)v7->_accessory createdByCoreAccessories])
      {
        v10 = +[EAAccessoryManager sharedAccessoryManager];
        v11 = [(EAAccessory *)v7->_accessory coreAccessoriesPrimaryUUID];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __43__EASession_initWithAccessory_forProtocol___block_invoke;
        v25[3] = &unk_278A4E3E8;
        v25[4] = v7;
        v25[5] = &v27;
        [(EAAccessoryManager *)v10 createEASessionForProtocol:protocolString accessoryUUID:v11 withReply:v25];
      }

      else
      {
        [(EAAccessory *)accessory _internalConnectionID];
        [v9 unsignedIntValue];
        IAPAppCreateSessionForAccessory();
        v7->_sessionID = v26;
        v7->_useSocketInterfaceForEASession = 1;
      }

      if (v28[3])
      {
        goto LABEL_17;
      }

      if (!v7->_useSocketInterfaceForEASession)
      {
        v7->_inputStream = [[EAInputStream alloc] initWithAccessoryWithoutSocket:accessory forSession:v7];
        v13 = [[EAOutputStream alloc] initWithAccessoryWithoutSocket:accessory forSession:v7];
        goto LABEL_16;
      }

      if (!HIWORD(v7->_sessionID))
      {
        v24 = 1;
        eaSessionUUIDFromCoreAccessories = v7->_eaSessionUUIDFromCoreAccessories;
        if (eaSessionUUIDFromCoreAccessories)
        {
          __snprintf_chk(v32, 0x100uLL, 0, 0x100uLL, "%s/ea.%lu", "/var/mobile/Library/ExternalAccessory", [(NSString *)eaSessionUUIDFromCoreAccessories hash]);
          NSLog(&cfstr_Externalaccess_95.isa, v32);
        }

        else
        {
          [(EAAccessory *)accessory _internalConnectionID];
          sessionID = v7->_sessionID;
          IAPAppToAppSocketPath();
        }

        v17 = socket(1, 1, 0);
        v7->_sock = v17;
        if (v17 < 0)
        {
          v19 = *__error();
          v20 = __error();
          v21 = strerror(*v20);
          NSLog(&cfstr_Externalaccess_96.isa, v19, v21);
          *(v28 + 24) = 1;
          v7->_sock = -1;
          goto LABEL_17;
        }

        v34 = 0;
        memset(v33.sa_data, 0, 96);
        *&v33.sa_len = 362;
        __strlcpy_chk();
        if (connect(v7->_sock, &v33, 0x6Au))
        {
          v18 = __error();
          NSLog(&cfstr_Externalaccess_97.isa, *v18);
          goto LABEL_8;
        }

        if (ioctl(v7->_sock, 0x8004667EuLL, &v24))
        {
          v22 = __error();
          NSLog(&cfstr_Externalaccess_98.isa, *v22);
        }

        v23 = 0x10000;
        setsockopt(v7->_sock, 0xFFFF, 4097, &v23, 4u);
        setsockopt(v7->_sock, 0xFFFF, 4098, &v23, 4u);
        v7->_inputStream = [[EAInputStream alloc] initWithAccessory:accessory forSession:v7 socket:v7->_sock];
        v13 = [[EAOutputStream alloc] initWithAccessory:accessory forSession:v7 socket:v7->_sock];
LABEL_16:
        v7->_outputStream = &v13->super;
        goto LABEL_17;
      }

      NSLog(&cfstr_Externalaccess_99.isa);
    }

    else
    {
      NSLog(&cfstr_Externalaccess_100.isa, protocolString);
    }
  }

  else
  {
    NSLog(&cfstr_Externalaccess_93.isa, protocolString);
  }

LABEL_8:
  *(v28 + 24) = 1;
LABEL_17:
  if (*(v28 + 24) == 1)
  {

    v7 = 0;
  }

  else
  {
    [(EAAccessory *)v7->_accessory _addSession:v7];
  }

  _Block_object_dispose(&v27, 8);
LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

void __43__EASession_initWithAccessory_forProtocol___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  NSLog(&cfstr_Externalaccess_94.isa, a2, a3, a4);
  if (v8)
  {
    [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager saveEASession:"saveEASession:forEASessionUUID:" forEASessionUUID:*(a1 + 32), a5];
    *(*(a1 + 32) + 16) = v6;
    *(*(a1 + 32) + 64) = [a5 copy];
    *(*(a1 + 32) + 56) = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)dealloc
{
  sessionID = self->_sessionID;
  accessory = self->_accessory;
  if (!accessory || sessionID == 0x10000)
  {
    NSLog(&cfstr_Externalaccess_101.isa, a2, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EASession.m", "[EASession dealloc]", 212, accessory, sessionID);
  }

  else if (!self->_eaSessionUUIDFromCoreAccessories)
  {
    [(EAAccessory *)accessory _internalConnectionID];
    v5 = self->_sessionID;
    IAPAppCloseSessionToAccessory();
  }

  eaSessionUUIDFromCoreAccessories = self->_eaSessionUUIDFromCoreAccessories;
  if (eaSessionUUIDFromCoreAccessories)
  {
  }

  sock = self->_sock;
  v8 = +[EAAccessoryManager isLoggingEnabled];
  if (sock == -1)
  {
    if (v8)
    {
      NSLog(&cfstr_Externalaccess_103.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EASession.m", "[EASession dealloc]", 231, sessionID);
    }
  }

  else
  {
    if (v8)
    {
      NSLog(&cfstr_Externalaccess_102.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EASession.m", "[EASession dealloc]", 224, self->_sock, sessionID);
    }

    close(self->_sock);
    self->_sock = -1;
  }

  v9.receiver = self;
  v9.super_class = EASession;
  [(EASession *)&v9 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = EASession;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ {\n  accessory:%@\n  protocolString:%@\n  inputStream:%@\n  outputStream: %@\n}", -[EASession description](&v3, sel_description), -[EAAccessory _shortDescription](self->_accessory, "_shortDescription"), self->_protocolString, self->_inputStream, self->_outputStream];
}

- (id)_shortDescription
{
  v3.receiver = self;
  v3.super_class = EASession;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@", -[EASession description](&v3, sel_description)];
}

- (void)_streamClosed
{
  if ([(NSOutputStream *)self->_outputStream streamStatus]== 6 && [(NSInputStream *)self->_inputStream streamStatus]== 6)
  {
    NSLog(&cfstr_Externalaccess_104.isa, self->_eaSessionUUIDFromCoreAccessories);
    [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager closeEASessionForEASessionUUID:"closeEASessionForEASessionUUID:", self->_eaSessionUUIDFromCoreAccessories];
    accessory = self->_accessory;

    [(EAAccessory *)accessory _removeSession:self];
  }
}

- (void)_endStreams
{
  [(NSInputStream *)self->_inputStream endStream];
  outputStream = self->_outputStream;

  [(NSOutputStream *)outputStream endStream];
}

- (void)setOpenCompleted:(BOOL)a3
{
  if (a3)
  {
    self->_openCompleted = 1;
    [(NSInputStream *)self->_inputStream openCompleted];
    [(NSOutputStream *)self->_outputStream openCompleted];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];

    [v4 postNotificationName:@"EASessionOpenCompletedNotification" object:self];
  }
}

@end