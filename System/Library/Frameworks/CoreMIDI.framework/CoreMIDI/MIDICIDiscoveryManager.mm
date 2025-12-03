@interface MIDICIDiscoveryManager
+ (MIDICIDiscoveryManager)sharedInstance;
- (id)handleNotification:(const MIDINotification *)notification;
- (void)dealloc;
- (void)discoverWithHandler:(MIDICIDiscoveryResponseBlock)completedHandler;
@end

@implementation MIDICIDiscoveryManager

- (id)handleNotification:(const MIDINotification *)notification
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  __dst[0] = 0uLL;
  *(&__dst[1] + 5) = 0;
  *&__dst[1] = 0;
  messageID = notification->messageID;
  messageSize = notification->messageSize;
  if (messageID > 21)
  {
    if (messageID <= 30)
    {
      if (messageID == 22)
      {
        v7 = "Profile Disabled";
        goto LABEL_25;
      }

      if (messageID == 23)
      {
        v7 = "Profile Specific Data";
        goto LABEL_25;
      }
    }

    else
    {
      switch(messageID)
      {
        case 0x1F:
          v7 = "Property Supported";
          goto LABEL_25;
        case 0x20:
          v7 = "Property SysEx Data";
          goto LABEL_25;
        case 0x28:
          v7 = "Done w/ Capabilities";
          goto LABEL_25;
      }
    }
  }

  else if (messageID <= 11)
  {
    if (messageID == 10)
    {
      v7 = "MUID";
      goto LABEL_25;
    }

    if (messageID == 11)
    {
      v7 = "Peer Info";
      goto LABEL_25;
    }
  }

  else
  {
    switch(messageID)
    {
      case 0xC:
        v7 = "Peer Info Empty";
        goto LABEL_25;
      case 0x14:
        v7 = "Profile Supported";
        goto LABEL_25;
      case 0x15:
        v7 = "Profile Enabled";
        goto LABEL_25;
    }
  }

  v7 = "Unknown Notification Type";
LABEL_25:
  NSLog(&cfstr_Handlenotifica.isa, notification, messageID, v7, messageSize, __dst[0], __dst[1]);
  if ((messageID - 10) > 2)
  {
    NSLog(&cfstr_DisallowedMess.isa);
  }

  else
  {
    v8 = 0;
    v9 = messageID;
    while (v9 == 11)
    {
      v10 = notification + 1;
      memcpy(__dst, v10, messageSize);
      v11 = BYTE12(__dst[1]);
      v12 = *(__dst + 4);
      v13 = DWORD1(__dst[1]);
      v14 = [MIDICIDiscoveredNode alloc];
      v15 = [(MIDICIDiscoveredNode *)v14 initWithDestination:DWORD2(__dst[1]) deviceID:v12 profilesSupported:(v11 >> 2) & 1 propertiesSupported:(v11 >> 3) & 1 maxSysExSize:v13];

      NSLog(&cfstr_PeerDiscovered.isa, v15);
      [v4 addObject:v15];
      notification = (v10 + messageSize);
      v9 = notification->messageID;
      messageSize = notification->messageSize;
      v8 = v15;
    }

    if (v9 == 12 || v9 == 40)
    {
      NSLog(&cfstr_DoneWithCapabi.isa);
    }

    else
    {
      NSLog(&cfstr_UnrecognizedMs.isa, v9, 0);
    }
  }

  return v4;
}

- (void)dealloc
{
  mClient = self->_mClient;
  if (mClient)
  {
    MIDIClientDispose(mClient);
  }

  v4.receiver = self;
  v4.super_class = MIDICIDiscoveryManager;
  [(MIDICIDiscoveryManager *)&v4 dealloc];
}

- (void)discoverWithHandler:(MIDICIDiscoveryResponseBlock)completedHandler
{
  v6 = completedHandler;
  v4 = _Block_copy(v6);
  NSLog(&cfstr_Discoverwithha.isa, v4);

  [(MIDICIDiscoveryManager *)self setResponseBlock:v6];
  selfCopy = self;
  [(MIDICIDiscoveryManager *)selfCopy discover];
}

+ (MIDICIDiscoveryManager)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MIDICIDiscoveryManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MIDICIDiscoveryManager sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[MIDICIDiscoveryManager sharedInstance]::onceToken, block);
  }

  v2 = +[MIDICIDiscoveryManager sharedInstance]::theSharedInstance;

  return v2;
}

void __40__MIDICIDiscoveryManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = +[MIDICIDiscoveryManager sharedInstance]::theSharedInstance;
  +[MIDICIDiscoveryManager sharedInstance]::theSharedInstance = v1;

  [+[MIDICIDiscoveryManager sharedInstance]::theSharedInstance setupManager];
  NSLog(&cfstr_Midicidiscover_0.isa, +[MIDICIDiscoveryManager sharedInstance]::theSharedInstance);
}

@end