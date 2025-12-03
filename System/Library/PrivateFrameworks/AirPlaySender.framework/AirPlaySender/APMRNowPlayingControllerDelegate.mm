@interface APMRNowPlayingControllerDelegate
- (APMRNowPlayingControllerDelegate)initWithMetadataSource:(OpaqueAPMetadataSource *)source;
- (void)controller:(id)controller clientPropertiesDidChangeFrom:(id)from to:(id)to;
- (void)controller:(id)controller contentItemsDidUpdateWithContentItemChanges:(id)changes;
- (void)controller:(id)controller didLoadArtworkForContentItems:(id)items;
- (void)controller:(id)controller didLoadResponse:(id)response;
- (void)controller:(id)controller playbackQueueDidChangeFrom:(id)from to:(id)to;
- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to;
- (void)controller:(id)controller playerPathDidChange:(id)change;
- (void)controller:(id)controller supportedCommandsDidChangeFrom:(id)from to:(id)to;
- (void)dealloc;
- (void)flushMetadata;
- (void)notifyContentItemUpdates:(id)updates;
- (void)notifyNewContentItems:(id)items;
- (void)notifyNewNowPlayingClient:(id)client;
- (void)notifyNewPlaybackState:(unsigned int)state;
- (void)notifyNewProxiableSupportedCommands:(id)commands;
- (void)start;
- (void)stop;
@end

@implementation APMRNowPlayingControllerDelegate

- (APMRNowPlayingControllerDelegate)initWithMetadataSource:(OpaqueAPMetadataSource *)source
{
  v14.receiver = self;
  v14.super_class = APMRNowPlayingControllerDelegate;
  v4 = [(APMRNowPlayingControllerDelegate *)&v14 init];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v4->_metadataSource = CFRetain(source);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v5 = getMRNowPlayingControllerConfigurationClass_softClass;
  v24 = __Block_byref_object_dispose_;
  v25 = getMRNowPlayingControllerConfigurationClass_softClass;
  if (!getMRNowPlayingControllerConfigurationClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMRNowPlayingControllerConfigurationClass_block_invoke;
    v18 = &unk_27849ACC8;
    v19 = &v20;
    __getMRNowPlayingControllerConfigurationClass_block_invoke(&v15);
    v5 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  v6 = [[v5 alloc] initWithDestination:source->var11];
  v7 = v6;
  if (!v6)
  {
    v13 = 1414;
LABEL_15:
    [(APMRNowPlayingControllerDelegate *)v13 initWithMetadataSource:v4];
    v4 = 0;
    goto LABEL_12;
  }

  [v6 setRequestPlaybackState:1];
  [v7 setRequestSupportedCommands:1];
  [v7 setRequestClientProperties:1];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v8 = getMRPlaybackQueueRequestClass_softClass;
  v24 = __Block_byref_object_dispose_;
  v25 = getMRPlaybackQueueRequestClass_softClass;
  if (!getMRPlaybackQueueRequestClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMRPlaybackQueueRequestClass_block_invoke;
    v18 = &unk_27849ACC8;
    v19 = &v20;
    __getMRPlaybackQueueRequestClass_block_invoke(&v15);
    v8 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  defaultPlaybackQueueRequest = [v8 defaultPlaybackQueueRequest];
  [defaultPlaybackQueueRequest setArtworkHeight:600.0];
  [defaultPlaybackQueueRequest setArtworkWidth:600.0];
  [v7 setPlaybackQueueRequest:defaultPlaybackQueueRequest];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v10 = getMRNowPlayingControllerClass_softClass;
  v24 = __Block_byref_object_dispose_;
  v25 = getMRNowPlayingControllerClass_softClass;
  if (!getMRNowPlayingControllerClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMRNowPlayingControllerClass_block_invoke;
    v18 = &unk_27849ACC8;
    v19 = &v20;
    __getMRNowPlayingControllerClass_block_invoke(&v15);
    v10 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  v11 = [[v10 alloc] initWithConfiguration:v7];
  v4->_nowPlayingController = v11;
  if (!v11)
  {
    v13 = 1426;
    goto LABEL_15;
  }

  [(MRNowPlayingController *)v11 setDelegate:v4];
LABEL_12:

  return v4;
}

- (void)dealloc
{
  metadataSource = self->_metadataSource;
  if (metadataSource)
  {
    CFRelease(metadataSource);
    self->_metadataSource = 0;
  }

  self->_nowPlayingController = 0;
  v4.receiver = self;
  v4.super_class = APMRNowPlayingControllerDelegate;
  [(APMRNowPlayingControllerDelegate *)&v4 dealloc];
}

- (void)start
{
  [(MRNowPlayingController *)self->_nowPlayingController beginLoadingUpdates];
  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    [APMRNowPlayingControllerDelegate start];
  }
}

- (void)stop
{
  [(MRNowPlayingController *)self->_nowPlayingController endLoadingUpdates];
  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    [APMRNowPlayingControllerDelegate stop];
  }
}

- (void)flushMetadata
{
  metadataSource = self->_metadataSource;
  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(metadataSource);
  var1 = metadataSource->var1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__APMRNowPlayingControllerDelegate_flushMetadata__block_invoke;
  block[3] = &unk_27849AC08;
  block[4] = self;
  block[5] = metadataSource;
  dispatch_async(var1, block);
}

void __49__APMRNowPlayingControllerDelegate_flushMetadata__block_invoke(uint64_t a1)
{
  if (gLogCategory_APMetadataSource <= 40 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    __49__APMRNowPlayingControllerDelegate_flushMetadata__block_invoke_cold_1();
  }

  v2 = *(*(*(a1 + 32) + 8) + 88);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 32) + 8) + 88) = 0;
  }

  v3 = *(a1 + 40);
  Empty = CFDictionaryGetEmpty();
  metadataSource_handleNowPlayingInfoChangedInternal(v3, Empty, @"replace", 1);
  metadataSource_handleMRPlaybackStateChangedInternal(*(a1 + 40));
  metadataSource_handleMRSupportedCommandsChangedInternal(*(a1 + 40), MEMORY[0x277CBEBF8]);
  v5 = *(a1 + 40);
  v6 = [getMRClientClass() localClient];
  metadataSource_handleNowPlayingClientChangedInternal(v5, v6);
  v7 = *(a1 + 40);

  CFRelease(v7);
}

void __58__APMRNowPlayingControllerDelegate_notifyNewContentItems___block_invoke(uint64_t a1)
{
  if (gLogCategory_APMetadataSource <= 40 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    __58__APMRNowPlayingControllerDelegate_notifyNewContentItems___block_invoke_cold_1(a1);
  }

  v2 = *(*(*(a1 + 32) + 8) + 88);
  v3 = [*(a1 + 40) identifier];
  *(*(*(a1 + 32) + 8) + 88) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    __58__APMRNowPlayingControllerDelegate_notifyNewContentItems___block_invoke_cold_2();
  }

  metadataSource_handleNowPlayingInfoChangedInternal(*(a1 + 48), [*(a1 + 40) nowPlayingInfo], @"replace", 0);
  CFRelease(*(a1 + 48));
  v4 = *(a1 + 40);
}

- (void)notifyContentItemUpdates:(id)updates
{
  metadataSource = self->_metadataSource;
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:updates copyItems:1];
  if (v6)
  {
    CFRetain(metadataSource);
    v7 = v6;
    var1 = metadataSource->var1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__APMRNowPlayingControllerDelegate_notifyContentItemUpdates___block_invoke;
    block[3] = &unk_27849AC58;
    block[4] = updates;
    block[5] = self;
    block[6] = v6;
    block[7] = metadataSource;
    dispatch_async(var1, block);
  }

  else
  {
    [APMRNowPlayingControllerDelegate notifyContentItemUpdates:];
  }
}

- (void)notifyNewPlaybackState:(unsigned int)state
{
  metadataSource = self->_metadataSource;
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(metadataSource);
  var1 = metadataSource->var1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__APMRNowPlayingControllerDelegate_notifyNewPlaybackState___block_invoke;
  block[3] = &__block_descriptor_44_e5_v8__0l;
  block[4] = metadataSource;
  stateCopy = state;
  dispatch_async(var1, block);
}

void __59__APMRNowPlayingControllerDelegate_notifyNewPlaybackState___block_invoke(uint64_t a1)
{
  metadataSource_handleMRPlaybackStateChangedInternal(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __72__APMRNowPlayingControllerDelegate_notifyNewProxiableSupportedCommands___block_invoke(uint64_t a1)
{
  metadataSource_handleMRSupportedCommandsChangedInternal(*(a1 + 40), *(a1 + 32));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);
}

- (void)notifyNewNowPlayingClient:(id)client
{
  if (client)
  {
    metadataSource = self->_metadataSource;
    if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
    {
      v8 = metadataSource;
      clientCopy = client;
      LogPrintF();
    }

    v5 = [client copy];
    if (v5)
    {
      CFRetain(metadataSource);
      v6 = v5;
      var1 = metadataSource->var1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__APMRNowPlayingControllerDelegate_notifyNewNowPlayingClient___block_invoke;
      block[3] = &unk_27849AC30;
      block[5] = v5;
      block[6] = metadataSource;
      block[4] = client;
      dispatch_async(var1, block);
    }

    else
    {
      [APMRNowPlayingControllerDelegate notifyNewNowPlayingClient:];
    }
  }

  else
  {
    [APMRNowPlayingControllerDelegate notifyNewNowPlayingClient:];
    v5 = 0;
  }
}

void __62__APMRNowPlayingControllerDelegate_notifyNewNowPlayingClient___block_invoke(uint64_t a1)
{
  metadataSource_handleNowPlayingClientChangedInternal(*(a1 + 48), *(a1 + 32));
  CFRelease(*(a1 + 48));
  v2 = *(a1 + 40);
}

- (void)controller:(id)controller didLoadResponse:(id)response
{
  playbackState = [response playbackState];
  proxiableSupportedCommands = [response proxiableSupportedCommands];
  clientProperties = [response clientProperties];
  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    metadataSource = self->_metadataSource;
    v10 = [proxiableSupportedCommands count];
    if (gLogCategory_APMetadataSource > 40)
    {
      v11 = 0;
    }

    else
    {
      v11 = gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize() != 0;
    }

    v16 = v11;
    playbackQueue = [response playbackQueue];
    v14 = v10;
    v15 = clientProperties;
    v12 = metadataSource;
    v13 = playbackState;
    LogPrintF();
  }

  -[APMRNowPlayingControllerDelegate notifyNewContentItems:](self, "notifyNewContentItems:", [objc_msgSend(response playbackQueue]);
  [(APMRNowPlayingControllerDelegate *)self notifyNewPlaybackState:playbackState];
  [(APMRNowPlayingControllerDelegate *)self notifyNewProxiableSupportedCommands:proxiableSupportedCommands];

  [(APMRNowPlayingControllerDelegate *)self notifyNewNowPlayingClient:clientProperties];
}

- (void)controller:(id)controller playbackQueueDidChangeFrom:(id)from to:(id)to
{
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    metadataSource = self->_metadataSource;
    toCopy = to;
    LogPrintF();
  }

  contentItems = [to contentItems];

  [(APMRNowPlayingControllerDelegate *)self notifyNewContentItems:contentItems];
}

- (void)controller:(id)controller contentItemsDidUpdateWithContentItemChanges:(id)changes
{
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(APMRNowPlayingControllerDelegate *)self notifyContentItemUpdates:changes];
}

- (void)controller:(id)controller didLoadArtworkForContentItems:(id)items
{
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    metadataSource = self->_metadataSource;
    itemsCopy = items;
    LogPrintF();
  }

  response = [objc_msgSend(objc_msgSend(controller response];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__APMRNowPlayingControllerDelegate_controller_didLoadArtworkForContentItems___block_invoke;
  v10[3] = &unk_27849ACA0;
  v10[4] = items;
  -[APMRNowPlayingControllerDelegate notifyContentItemUpdates:](self, "notifyContentItemUpdates:", [response filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithBlock:", v10)}]);
}

- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to
{
  v5 = *&to;
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(APMRNowPlayingControllerDelegate *)self notifyNewPlaybackState:v5];
}

- (void)controller:(id)controller supportedCommandsDidChangeFrom:(id)from to:(id)to
{
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    [APMRNowPlayingControllerDelegate controller:supportedCommandsDidChangeFrom:to:];
  }

  v7 = [objc_msgSend(controller "response")];

  [(APMRNowPlayingControllerDelegate *)self notifyNewProxiableSupportedCommands:v7];
}

- (void)controller:(id)controller clientPropertiesDidChangeFrom:(id)from to:(id)to
{
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(APMRNowPlayingControllerDelegate *)self notifyNewNowPlayingClient:to];
}

- (void)controller:(id)controller playerPathDidChange:(id)change
{
  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(APMRNowPlayingControllerDelegate *)self flushMetadata];
}

- (void)notifyNewContentItems:(id)items
{
  metadataSource = self->_metadataSource;
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    v9 = metadataSource;
    itemsCopy = items;
    OUTLINED_FUNCTION_4_1();
  }

  firstObject = [objc_msgSend(items firstObject];
  if (firstObject)
  {
    CFRetain(metadataSource);
    v7 = firstObject;
    var1 = metadataSource->var1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__APMRNowPlayingControllerDelegate_notifyNewContentItems___block_invoke;
    block[3] = &unk_27849AC30;
    block[4] = self;
    block[5] = firstObject;
    block[6] = metadataSource;
    dispatch_async(var1, block);
  }
}

void __61__APMRNowPlayingControllerDelegate_notifyContentItemUpdates___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 56) + 88))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      Count = CFArrayGetCount(*(a1 + 32));
      if (Count >= 1)
      {
        v4 = Count;
        v5 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
          [ValueAtIndex identifier];
          if (FigCFEqual())
          {
            break;
          }

          if (v4 == ++v5)
          {
            goto LABEL_14;
          }
        }

        if (ValueAtIndex)
        {
          if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
          {
            v8 = *(*(a1 + 40) + 8);
            v9 = ValueAtIndex;
            OUTLINED_FUNCTION_4_1();
          }

          metadataSource_handleNowPlayingInfoChangedInternal(*(a1 + 56), [ValueAtIndex nowPlayingInfo], @"update", 0);
        }
      }
    }

    else
    {
      APSLogErrorAt();
    }
  }

LABEL_14:
  CFRelease(*(a1 + 56));
  v7 = *(a1 + 48);
}

- (void)notifyNewProxiableSupportedCommands:(id)commands
{
  commandsCopy = commands;
  if (commands)
  {
    metadataSource = self->_metadataSource;
    if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
    {
      v7 = metadataSource;
      v8 = [commandsCopy count];
      OUTLINED_FUNCTION_4_1();
    }

    commandsCopy = [commandsCopy copy];
    if (commandsCopy)
    {
      CFRetain(metadataSource);
      v5 = commandsCopy;
      var1 = metadataSource->var1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__APMRNowPlayingControllerDelegate_notifyNewProxiableSupportedCommands___block_invoke;
      block[3] = &unk_27849AC08;
      block[4] = commandsCopy;
      block[5] = metadataSource;
      dispatch_async(var1, block);
    }

    else
    {
      APSLogErrorAt();
    }
  }
}

@end