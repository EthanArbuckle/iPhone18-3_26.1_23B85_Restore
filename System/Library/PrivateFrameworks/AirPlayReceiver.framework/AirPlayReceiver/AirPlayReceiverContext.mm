@interface AirPlayReceiverContext
- (void)handleMRCommand:(unsigned int)command translatedAPCommand:(unsigned int)pCommand withOptions:(__CFDictionary *)options;
@end

@implementation AirPlayReceiverContext

- (void)handleMRCommand:(unsigned int)command translatedAPCommand:(unsigned int)pCommand withOptions:(__CFDictionary *)options
{
  selfCopy = self;
  if (options)
  {
    CFRetain(options);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__AirPlayReceiverContext_handleMRCommand_translatedAPCommand_withOptions___block_invoke;
  block[3] = &unk_278C5FAD8;
  commandCopy = command;
  pCommandCopy = pCommand;
  block[4] = self;
  block[5] = options;
  dispatch_async(queue, block);
}

void __74__AirPlayReceiverContext_handleMRCommand_translatedAPCommand_withOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50)
    {
      if (gLogCategory_AirPlayReceiverPlatform != -1 || (v3 = _LogCategory_Initialize(), v2 = *(a1 + 32), v3))
      {
        LogPrintF();
        v2 = *(a1 + 32);
      }
    }

    if (AirPlayReceiverSessionSendMediaRemoteCommand(*(v2 + 8), *(a1 + 48), *(a1 + 52), *(a1 + 40)))
    {
      APSLogErrorAt();
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

@end