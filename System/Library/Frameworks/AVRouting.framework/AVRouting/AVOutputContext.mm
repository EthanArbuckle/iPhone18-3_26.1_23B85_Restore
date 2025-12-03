@interface AVOutputContext
+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)creator;
+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)creator communicationChannelManagerCreator:(id)managerCreator;
+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)creator outputDeviceTranslator:(id)translator;
+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)creator volumeController:(OpaqueFigVolumeControllerState *)controller;
+ (BOOL)outputContextExistsWithRemoteOutputDevice;
+ (id)addSharedAudioOutputContext;
+ (id)allSharedAudioOutputContexts;
+ (id)auxiliaryOutputContext;
+ (id)commChannelUUIDCommunicationChannelManagerCreator;
+ (id)defaultSharedOutputContext;
+ (id)iTunesAudioContext;
+ (id)outputContext;
+ (id)outputContextForControllingOutputDeviceGroupWithID:(id)d options:(id)options;
+ (id)outputContextForID:(id)d;
+ (id)preferredOutputDevicesForAudioSession:(id)session;
+ (id)sharedAudioPresentationOutputContext;
+ (id)sharedSystemAudioContext;
+ (id)sharedSystemRemoteDisplayContext;
+ (id)sharedSystemRemotePoolContext;
+ (id)sharedSystemScreenContext;
+ (void)initialize;
+ (void)resetOutputDeviceForAllOutputContexts;
- (AVOutputContext)init;
- (AVOutputContext)initWithCoder:(id)coder;
- (AVOutputContext)initWithOutputContextImpl:(id)impl;
- (BOOL)canMute;
- (BOOL)canSetVolume;
- (BOOL)getApplicationProcessID:(int *)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMuted;
- (BOOL)providesControlForAllVolumeFeatures;
- (BOOL)setOutputDevice:(id)device forFeatures:(unint64_t)features;
- (BOOL)supportsMultipleBluetoothOutputDevices;
- (BOOL)supportsMultipleOutputDevices;
- (NSString)deviceName;
- (OpaqueFigRoutingContext)figRoutingContext;
- (float)volume;
- (id)_initWithWebKitPropertyListData:(id)data;
- (id)_webKitPropertyListData;
- (id)contextID;
- (id)description;
- (id)impl;
- (id)openCommunicationChannelWithOptions:(id)options error:(id *)error;
- (id)outgoingCommunicationChannel;
- (id)outputContextType;
- (id)outputDevice;
- (id)outputDevices;
- (id)predictedOutputDevice;
- (int)applicationProcessID;
- (int64_t)volumeControlType;
- (unint64_t)hash;
- (unint64_t)outputDeviceFeatures;
- (void)addOutputDevice:(id)device;
- (void)addOutputDevice:(id)device options:(id)options completionHandler:(id)handler;
- (void)dealloc;
- (void)decreaseVolumeByCount:(int64_t)count;
- (void)encodeWithCoder:(id)coder;
- (void)increaseVolumeByCount:(int64_t)count;
- (void)outputContextImpl:(id)impl didChangeOutputDeviceWithInitiator:(id)initiator;
- (void)outputContextImpl:(id)impl didChangeOutputDevicesWithInitiator:(id)initiator reason:(id)reason deviceID:(id)d previousDeviceIDs:(id)ds;
- (void)outputContextImpl:(id)impl didCloseCommunicationChannel:(id)channel;
- (void)outputContextImpl:(id)impl didExpireWithReplacement:(id)replacement;
- (void)outputContextImpl:(id)impl didInitiateDestinationChange:(id)change;
- (void)outputContextImpl:(id)impl didReceiveData:(id)data fromCommunicationChannel:(id)channel;
- (void)outputContextImplDidChangeCanMute:(id)mute;
- (void)outputContextImplDidChangeCanSetVolume:(id)volume;
- (void)outputContextImplDidChangeGlobalOutputDeviceConfiguration:(id)configuration;
- (void)outputContextImplDidChangeMute:(id)mute;
- (void)outputContextImplDidChangePredictedOutputDevice:(id)device;
- (void)outputContextImplDidChangeProvidesControlForAllVolumeFeatures:(id)features;
- (void)outputContextImplDidChangeVolume:(id)volume;
- (void)outputContextImplDidChangeVolumeControlType:(id)type;
- (void)outputContextImplOutgoingCommunicationChannelDidBecomeAvailable:(id)available;
- (void)removeOutputDevice:(id)device;
- (void)removeOutputDevice:(id)device options:(id)options completionHandler:(id)handler;
- (void)resetPredictedOutputDevice;
- (void)setApplicationProcessID:(int)d;
- (void)setCommunicationChannelDelegate:(id)delegate;
- (void)setOutputDevice:(id)device options:(id)options;
- (void)setOutputDevice:(id)device options:(id)options completionHandler:(id)handler;
- (void)setOutputDevices:(id)devices;
- (void)setOutputDevices:(id)devices options:(id)options completionHandler:(id)handler;
- (void)setVolume:(float)volume;
@end

@implementation AVOutputContext

+ (id)sharedAudioPresentationOutputContext
{
  v2 = [[self alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultOutputContextImplClass"), "sharedAudioPresentationOutputContext")}];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

+ (id)sharedSystemAudioContext
{
  v2 = [[self alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultOutputContextImplClass"), "sharedSystemAudioContext")}];

  return v2;
}

+ (id)commChannelUUIDCommunicationChannelManagerCreator
{
  v2 = [&__block_literal_global_2 copy];

  return v2;
}

AVFigCommChannelUUIDCommunicationChannelManager *__87__AVOutputContext_FigRoutingContext__commChannelUUIDCommunicationChannelManagerCreator__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [[AVFigCommChannelUUIDCommunicationChannelManager alloc] initWithRoutingContext:a2];

  return v2;
}

id __23__AVOutputContext_impl__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)impl
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  ivarAccessQueue = self->_outputContext->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__AVOutputContext_impl__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)providesControlForAllVolumeFeatures
{
  impl = [(AVOutputContext *)self impl];

  return [impl providesControlForAllVolumeFeatures];
}

- (BOOL)canSetVolume
{
  impl = [(AVOutputContext *)self impl];

  return [impl canSetVolume];
}

- (int64_t)volumeControlType
{
  impl = [(AVOutputContext *)self impl];

  return [impl volumeControlType];
}

- (id)outputDevices
{
  impl = [(AVOutputContext *)self impl];

  return [impl outputDevices];
}

- (id)contextID
{
  impl = [(AVOutputContext *)self impl];

  return [impl ID];
}

- (id)outputContextType
{
  impl = [(AVOutputContext *)self impl];

  return [impl outputContextType];
}

- (id)predictedOutputDevice
{
  impl = [(AVOutputContext *)self impl];

  return [impl predictedOutputDevice];
}

- (void)dealloc
{
  outputContext = self->_outputContext;
  if (outputContext)
  {

    outputContext = self->_outputContext;
    ivarAccessQueue = outputContext->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      outputContext = self->_outputContext;
    }
  }

  v5.receiver = self;
  v5.super_class = AVOutputContext;
  [(AVOutputContext *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, ID=%@, type=%@>", NSStringFromClass(v4), self, -[AVOutputContext contextID](self, "contextID"), -[AVOutputContext outputContextType](self, "outputContextType")];
}

+ (id)sharedSystemRemoteDisplayContext
{
  v2 = [[self alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultOutputContextImplClass"), "sharedSystemRemoteDisplayContext")}];

  return v2;
}

- (id)outputDevice
{
  v3 = [-[AVOutputContext impl](self "impl")];
  [(AVOutputContext *)self supportsMultipleOutputDevices];
  return v3;
}

- (BOOL)supportsMultipleBluetoothOutputDevices
{
  impl = [(AVOutputContext *)self impl];

  return [impl supportsMultipleBluetoothOutputDevices];
}

- (BOOL)supportsMultipleOutputDevices
{
  impl = [(AVOutputContext *)self impl];

  return [impl supportsMultipleOutputDevices];
}

+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)creator outputDeviceTranslator:(id)translator
{
  v7 = (*(creator + 2))(creator, a2);
  FigVolumeControllerCopySharedControllerRemote();
  v8 = -[AVFigRoutingContextOutputContextImpl initWithFigRoutingContext:routingContextReplacementBlock:outputDeviceTranslator:volumeController:communicationChannelManagerCreator:]([AVFigRoutingContextOutputContextImpl alloc], "initWithFigRoutingContext:routingContextReplacementBlock:outputDeviceTranslator:volumeController:communicationChannelManagerCreator:", v7, creator, translator, 0, [self defaultCommunicationChannelManagerCreator]);
  v9 = [[AVOutputContext alloc] initWithOutputContextImpl:v8];
  if (v7)
  {
    CFRelease(v7);
  }

  return v9;
}

+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)creator volumeController:(OpaqueFigVolumeControllerState *)controller
{
  v7 = AVOutputContextUsesRouteConfigUpdatedNotification();
  DefaultDeviceTranslator = AVOutputContextGetDefaultDeviceTranslator(v7);
  v9 = (*(creator + 2))(creator);
  v10 = -[AVFigRoutingContextOutputContextImpl initWithFigRoutingContext:routingContextReplacementBlock:outputDeviceTranslator:volumeController:communicationChannelManagerCreator:]([AVFigRoutingContextOutputContextImpl alloc], "initWithFigRoutingContext:routingContextReplacementBlock:outputDeviceTranslator:volumeController:communicationChannelManagerCreator:", v9, creator, DefaultDeviceTranslator, controller, [self defaultCommunicationChannelManagerCreator]);
  v11 = [[AVOutputContext alloc] initWithOutputContextImpl:v10];
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)creator communicationChannelManagerCreator:(id)managerCreator
{
  v6 = (*(creator + 2))(creator, a2);
  v7 = AVOutputContextUsesRouteConfigUpdatedNotification();
  DefaultDeviceTranslator = AVOutputContextGetDefaultDeviceTranslator(v7);
  FigVolumeControllerCopySharedControllerRemote();
  v9 = [[AVFigRoutingContextOutputContextImpl alloc] initWithFigRoutingContext:v6 routingContextReplacementBlock:creator outputDeviceTranslator:DefaultDeviceTranslator volumeController:0 communicationChannelManagerCreator:managerCreator];
  v10 = [[AVOutputContext alloc] initWithOutputContextImpl:v9];
  if (v6)
  {
    CFRelease(v6);
  }

  return v10;
}

+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)creator
{
  v3 = [[AVFigRoutingContextOutputContextImpl alloc] initWithFigRoutingContextCreator:creator];
  v4 = [[AVOutputContext alloc] initWithOutputContextImpl:v3];

  return v4;
}

- (OpaqueFigRoutingContext)figRoutingContext
{
  impl = [(AVOutputContext *)self impl];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [impl figRoutingContext];
}

+ (id)outputContext
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AVOutputContext_outputContext__block_invoke;
  block[3] = &unk_1E794ED28;
  block[4] = self;
  if (outputContext_onceToken != -1)
  {
    dispatch_once(&outputContext_onceToken, block);
  }

  if ([objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
  {
    v3 = outputContext_sSharedContext;
  }

  else
  {
    v3 = [[self alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultOutputContextImplClass"), "platformDependentScreenOrVideoContext")}];
  }

  return v3;
}

uint64_t __32__AVOutputContext_outputContext__block_invoke(uint64_t a1)
{
  result = [objc_alloc(*(a1 + 32)) initWithOutputContextImpl:{objc_msgSend(objc_msgSend(*(a1 + 32), "defaultOutputContextImplClass"), "platformDependentScreenOrVideoContext")}];
  outputContext_sSharedContext = result;
  return result;
}

+ (id)auxiliaryOutputContext
{
  v2 = [[self alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultOutputContextImplClass"), "auxiliaryOutputContext")}];

  return v2;
}

+ (id)sharedSystemScreenContext
{
  v2 = [[self alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultOutputContextImplClass"), "sharedSystemScreenContext")}];

  return v2;
}

+ (id)sharedSystemRemotePoolContext
{
  v2 = [[self alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultOutputContextImplClass"), "sharedSystemRemotePoolContext")}];

  return v2;
}

+ (id)iTunesAudioContext
{
  v2 = [[self alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultOutputContextImplClass"), "iTunesAudioContext")}];

  return v2;
}

+ (id)addSharedAudioOutputContext
{
  v2 = [[self alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultOutputContextImplClass"), "addSharedAudioOutputContextImpl")}];

  return v2;
}

+ (id)allSharedAudioOutputContexts
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = [objc_msgSend(self "defaultOutputContextImplClass")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [[self alloc] initWithOutputContextImpl:*(*(&v12 + 1) + 8 * v8)];
        [array addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
  return array;
}

+ (id)defaultSharedOutputContext
{
  result = [objc_msgSend(self "defaultOutputContextImplClass")];
  if (result)
  {
    v4 = [[self alloc] initWithOutputContextImpl:result];

    return v4;
  }

  return result;
}

+ (id)outputContextForControllingOutputDeviceGroupWithID:(id)d options:(id)options
{
  v4 = [[self alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultOutputContextImplClass"), "outputContextImplForControllingOutputDeviceGroupWithID:options:", d, options)}];

  return v4;
}

+ (id)outputContextForID:(id)d
{
  if (!d)
  {
    return 0;
  }

  v5 = +[AVOutputContextFactory sharedInstance];
  v6 = [(AVOutputContextFactory *)v5 outputContextForContextID:d];
  if (!v6)
  {
    v6 = [[self alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultOutputContextImplClass"), "outputContextImplForID:type:", d, 0)}];
    [(AVOutputContextFactory *)v5 setOutputContext:v6 forContextID:d];
  }

  return v6;
}

- (AVOutputContext)init
{
  v3 = [objc_msgSend(objc_opt_class() "defaultOutputContextImplClass")];

  return [(AVOutputContext *)self initWithOutputContextImpl:v3];
}

- (void)encodeWithCoder:(id)coder
{
  contextID = [(AVOutputContext *)self contextID];
  outputContextType = [(AVOutputContext *)self outputContextType];
  [coder encodeObject:contextID forKey:@"AVOutputContextSerializationKeyContextID"];

  [coder encodeObject:outputContextType forKey:@"AVOutputContextSerializationKeyContextType"];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  impl = [(AVOutputContext *)self impl];
  impl2 = [equal impl];

  return [impl isEqual:impl2];
}

- (unint64_t)hash
{
  impl = [(AVOutputContext *)self impl];

  return [impl hash];
}

- (int)applicationProcessID
{
  v3 = 0;
  [(AVOutputContext *)self getApplicationProcessID:&v3];
  return v3;
}

- (BOOL)getApplicationProcessID:(int *)d
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  ivarAccessQueue = self->_outputContext->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVOutputContext_getApplicationProcessID___block_invoke;
  block[3] = &unk_1E794F000;
  block[4] = self;
  block[5] = &v8;
  block[6] = &v12;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v5 = *(v13 + 24);
  if (v5 == 1)
  {
    *d = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void *__43__AVOutputContext_getApplicationProcessID___block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(*(result[4] + 8) + 32);
  *(*(result[6] + 8) + 24) = *(*(result[4] + 8) + 36);
  return result;
}

- (void)setApplicationProcessID:(int)d
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ivarAccessQueue = self->_outputContext->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVOutputContext_setApplicationProcessID___block_invoke;
  block[3] = &unk_1E794F028;
  block[4] = self;
  dCopy = d;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [-[AVOutputContext impl](self "impl")];
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __43__AVOutputContext_setApplicationProcessID___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 32) = *(result + 40);
  *(*(*(result + 32) + 8) + 36) = 1;
  return result;
}

- (NSString)deviceName
{
  result = [(AVOutputContext *)self outputDevice];
  if (result)
  {

    return [(NSString *)result name];
  }

  return result;
}

- (id)_webKitPropertyListData
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  [v3 setObject:-[AVOutputContext ID](self forKeyedSubscript:{"ID"), @"contextID"}];
  [v3 setObject:-[AVOutputContext outputContextType](self forKeyedSubscript:{"outputContextType"), @"contextType"}];
  return v3;
}

- (void)setOutputDevice:(id)device options:(id)options completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  [options objectForKeyedSubscript:@"AVOutputContextSetOutputDevicePasswordKey"];
  [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceCancelIfAuthRequiredKey"];
  [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceSuppressUserInteractionOnSenderOnlyKey"];
  v9 = [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceInitiatorKey"];
  v10 = [options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionCorrelationID"];
  [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceDefaultAudioToLocalKey"];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v12 = [device description];
  [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceFadePlaybackKey"];
  if (dword_1ED6F6B88)
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = [(AVOutputContext *)self impl:v16];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__AVOutputContext_setOutputDevice_options_completionHandler___block_invoke;
  v18[3] = &unk_1E794F290;
  v18[9] = handler;
  v18[10] = UpTimeNanoseconds;
  v18[4] = self;
  v18[5] = v12;
  v18[6] = v9;
  v18[7] = v10;
  v18[8] = device;
  [v14 setOutputDevice:device options:options completionHandler:v18];
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __61__AVOutputContext_setOutputDevice_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a2 modificationMetrics];
    [v4 setClientModificationStartedTimestamp:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", *(a1 + 80))}];
    v5 = [a2 modificationMetrics];
    [v5 setClientModificationFinishedTimestamp:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", FigGetUpTimeNanoseconds())}];
  }

  FigGetUpTimeNanoseconds();
  if (dword_1ED6F6B88)
  {
    v6 = *(a1 + 80);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([a2 status] == 2 && (objc_msgSend(objc_msgSend(*(a1 + 32), "outputContextType"), "isEqualToString:", @"AVOutputContextTypeGroupControl") & 1) == 0 && (objc_msgSend(objc_msgSend(*(a1 + 32), "outputContextType"), "isEqualToString:", @"AVOutputContextTypeSharedSystemRemotePool") & 1) == 0 && objc_msgSend(*(a1 + 64), "ID"))
  {
    [*(a1 + 64) updateFrecencyScore];
  }

  result = *(a1 + 72);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)outputDeviceFeatures
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_outputContext->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVOutputContext_outputDeviceFeatures__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)setOutputDevice:(id)device forFeatures:(unint64_t)features
{
  v21 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  array = [MEMORY[0x1E695DF70] array];
  v9 = objc_alloc_init(MEMORY[0x1E696AD10]);
  ivarAccessQueue = self->_outputContext->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVOutputContext_setOutputDevice_forFeatures___block_invoke;
  block[3] = &unk_1E794ED50;
  block[4] = self;
  block[5] = features;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__AVOutputContext_setOutputDevice_forFeatures___block_invoke_2;
  v17[3] = &unk_1E794F2B8;
  v17[4] = v9;
  v17[5] = array;
  [(AVOutputContext *)self setOutputDevice:device options:0 completionHandler:v17];
  [v9 lock];
  firstObject = [array firstObject];
  if (firstObject)
  {
    v12 = [firstObject status] == 2;
  }

  else
  {
    v12 = 1;
  }

  [v9 unlock];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __47__AVOutputContext_setOutputDevice_forFeatures___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) lock];
  [*(a1 + 40) addObject:a2];
  v4 = *(a1 + 32);

  return [v4 unlock];
}

- (void)setOutputDevice:(id)device options:(id)options
{
  v11 = *MEMORY[0x1E69E9840];
  [options objectForKeyedSubscript:@"AVOutputContextSetOutputDevicePasswordKey"];
  [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceCancelIfAuthRequiredKey"];
  [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceSuppressUserInteractionOnSenderOnlyKey"];
  [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceInitiatorKey"];
  [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceFadePlaybackKey"];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputContext *)self setOutputDevice:device options:options completionHandler:0, v9, v10];
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)resetOutputDeviceForAllOutputContexts
{
  v20 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    v17 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  defaultOutputContextImplClass = [self defaultOutputContextImplClass];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&defaultOutputContextImplClass count:1];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * i) resetOutputDeviceForAllOutputContexts];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (BOOL)outputContextExistsWithRemoteOutputDevice
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  defaultOutputContextImplClass = [self defaultOutputContextImplClass];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&defaultOutputContextImplClass count:1];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    outputContextExistsWithRemoteOutputDevice = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if (outputContextExistsWithRemoteOutputDevice)
        {
          outputContextExistsWithRemoteOutputDevice = 1;
        }

        else
        {
          outputContextExistsWithRemoteOutputDevice = [*(*(&v10 + 1) + 8 * i) outputContextExistsWithRemoteOutputDevice];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    outputContextExistsWithRemoteOutputDevice = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return outputContextExistsWithRemoteOutputDevice;
}

- (void)outputContextImpl:(id)impl didInitiateDestinationChange:(id)change
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"AVOutputContextDestinationChangeKey";
  v11[0] = change;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImpl:(id)impl didChangeOutputDeviceWithInitiator:(id)initiator
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (initiator)
  {
    v10 = @"AVOutputContextDestinationChangeInitiatorKey";
    v11[0] = initiator;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v5 = 0;
  }

  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImplDidChangeGlobalOutputDeviceConfiguration:(id)configuration
{
  v8 = *MEMORY[0x1E69E9840];
  if (AVOutputContextIsSystemContextAllowed_onceToken != -1)
  {
    AVOutputContextIsSystemContextAllowed_cold_1();
  }

  if (AVOutputContextIsSystemContextAllowed_isAllowed == 1)
  {
    if (dword_1ED6F6B88)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImpl:(id)impl didChangeOutputDevicesWithInitiator:(id)initiator reason:(id)reason deviceID:(id)d previousDeviceIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = dictionary;
  if (initiator)
  {
    [dictionary setObject:initiator forKeyedSubscript:@"AVOutputContextDestinationChangeInitiatorKey"];
  }

  if (reason)
  {
    [v13 setObject:reason forKeyedSubscript:@"AVOutputContextDestinationChangeReasonKey"];
  }

  if (d)
  {
    [v13 setObject:d forKeyedSubscript:@"AVOutputContextDestinationChangeDeviceIDKey"];
  }

  if (ds)
  {
    [v13 setObject:ds forKeyedSubscript:@"AVOutputContextDestinationChangePreviousDeviceIDsKey"];
  }

  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)setOutputDevices:(id)devices
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputContext *)self setOutputDevices:devices options:0 completionHandler:0, v7, v8];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setOutputDevices:(id)devices options:(id)options completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v10 = [devices description];
  [options objectForKeyedSubscript:@"AVOutputContextSetOutputDevicesOptionFadePlayback"];
  if (dword_1ED6F6B88)
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = [(AVOutputContext *)self impl:v14];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__AVOutputContext_setOutputDevices_options_completionHandler___block_invoke;
  v16[3] = &unk_1E794F2E0;
  v16[4] = self;
  v16[5] = v10;
  v16[6] = options;
  v16[7] = devices;
  v16[8] = handler;
  v16[9] = UpTimeNanoseconds;
  [v12 setOutputDevices:devices options:options completionHandler:v16];
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __62__AVOutputContext_setOutputDevices_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a2 modificationMetrics];
    [v4 setClientModificationStartedTimestamp:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", *(a1 + 72))}];
    v5 = [a2 modificationMetrics];
    [v5 setClientModificationFinishedTimestamp:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", FigGetUpTimeNanoseconds())}];
  }

  FigGetUpTimeNanoseconds();
  if (dword_1ED6F6B88)
  {
    v6 = *(a1 + 72);
    v23 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([a2 status] == 2 && (objc_msgSend(objc_msgSend(*(a1 + 32), "outputContextType"), "isEqualToString:", @"AVOutputContextTypeGroupControl") & 1) == 0 && (objc_msgSend(objc_msgSend(*(a1 + 32), "outputContextType"), "isEqualToString:", @"AVOutputContextTypeSharedSystemRemotePool") & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = *(a1 + 56);
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if ([v13 ID])
          {
            [v13 updateFrecencyScore];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v10);
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)addOutputDevice:(id)device options:(id)options completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  [options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionAuthorizationToken"];
  [options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceCancelIfAuthRequiredKey"];
  v9 = [options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionInitiator"];
  v10 = [options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionCorrelationID"];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v12 = [device description];
  [options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionFadePlayback"];
  if (dword_1ED6F6B88)
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = [(AVOutputContext *)self impl:v16];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__AVOutputContext_addOutputDevice_options_completionHandler___block_invoke;
  v18[3] = &unk_1E794F290;
  v18[9] = handler;
  v18[10] = UpTimeNanoseconds;
  v18[4] = self;
  v18[5] = v12;
  v18[6] = v9;
  v18[7] = v10;
  v18[8] = device;
  [v14 addOutputDevice:device options:options completionHandler:v18];
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __61__AVOutputContext_addOutputDevice_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a2 modificationMetrics];
    [v4 setClientModificationStartedTimestamp:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", *(a1 + 80))}];
    v5 = [a2 modificationMetrics];
    [v5 setClientModificationFinishedTimestamp:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", FigGetUpTimeNanoseconds())}];
  }

  FigGetUpTimeNanoseconds();
  if (dword_1ED6F6B88)
  {
    v6 = *(a1 + 80);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([a2 status] == 2 && (objc_msgSend(objc_msgSend(*(a1 + 32), "outputContextType"), "isEqualToString:", @"AVOutputContextTypeGroupControl") & 1) == 0 && (objc_msgSend(objc_msgSend(*(a1 + 32), "outputContextType"), "isEqualToString:", @"AVOutputContextTypeSharedSystemRemotePool") & 1) == 0 && objc_msgSend(*(a1 + 64), "ID"))
  {
    [*(a1 + 64) updateFrecencyScore];
  }

  result = *(a1 + 72);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)addOutputDevice:(id)device
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputContext *)self addOutputDevice:device options:0 completionHandler:0, v7, v8];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeOutputDevice:(id)device options:(id)options completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v10 = [device description];
  [options objectForKeyedSubscript:@"AVOutputContextRemoveOutputDeviceOptionFadePlayback"];
  if (dword_1ED6F6B88)
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = [(AVOutputContext *)self impl:v14];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__AVOutputContext_removeOutputDevice_options_completionHandler___block_invoke;
  v16[3] = &unk_1E794F308;
  v16[7] = handler;
  v16[8] = UpTimeNanoseconds;
  v16[4] = self;
  v16[5] = v10;
  v16[6] = options;
  [v12 removeOutputDevice:device options:options completionHandler:v16];
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __64__AVOutputContext_removeOutputDevice_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a2 modificationMetrics];
    [v4 setClientModificationStartedTimestamp:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", *(a1 + 64))}];
    v5 = [a2 modificationMetrics];
    [v5 setClientModificationFinishedTimestamp:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", FigGetUpTimeNanoseconds())}];
  }

  FigGetUpTimeNanoseconds();
  if (dword_1ED6F6B88)
  {
    v6 = *(a1 + 64);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeOutputDevice:(id)device
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputContext *)self removeOutputDevice:device options:0 completionHandler:0, v7, v8];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImplDidChangePredictedOutputDevice:(id)device
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)resetPredictedOutputDevice
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [-[AVOutputContext impl](self impl];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImplDidChangeProvidesControlForAllVolumeFeatures:(id)features
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69E9840];
}

- (float)volume
{
  impl = [(AVOutputContext *)self impl];

  [impl volume];
  return result;
}

- (void)outputContextImplDidChangeVolume:(id)volume
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImplDidChangeCanSetVolume:(id)volume
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImplDidChangeCanMute:(id)mute
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImplDidChangeMute:(id)mute
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setVolume:(float)volume
{
  impl = [(AVOutputContext *)self impl];
  *&v5 = volume;

  [impl setVolume:v5];
}

- (void)increaseVolumeByCount:(int64_t)count
{
  impl = [(AVOutputContext *)self impl];

  [impl increaseVolumeByCount:count];
}

- (void)decreaseVolumeByCount:(int64_t)count
{
  impl = [(AVOutputContext *)self impl];

  [impl decreaseVolumeByCount:count];
}

- (BOOL)canMute
{
  impl = [(AVOutputContext *)self impl];

  return [impl canMute];
}

- (BOOL)isMuted
{
  impl = [(AVOutputContext *)self impl];

  return [impl isMuted];
}

- (void)outputContextImplDidChangeVolumeControlType:(id)type
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)outgoingCommunicationChannel
{
  impl = [(AVOutputContext *)self impl];

  return [impl outgoingCommunicationChannel];
}

- (id)openCommunicationChannelWithOptions:(id)options error:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [-[AVOutputContext impl](self impl];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setCommunicationChannelDelegate:(id)delegate
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_storeWeak(&self->_outputContext->communicationChannelDelegate, delegate);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImplOutgoingCommunicationChannelDidBecomeAvailable:(id)available
{
  v10 = *MEMORY[0x1E69E9840];
  communicationChannelDelegate = [(AVOutputContext *)self communicationChannelDelegate];
  if (objc_opt_respondsToSelector())
  {
    if (dword_1ED6F6B88)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [communicationChannelDelegate outputContextOutgoingCommunicationChannelDidBecomeAvailable:{self, v8, v9}];
  }

  else if (dword_1ED6F6B88)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImpl:(id)impl didReceiveData:(id)data fromCommunicationChannel:(id)channel
{
  v14 = *MEMORY[0x1E69E9840];
  communicationChannelDelegate = [(AVOutputContext *)self communicationChannelDelegate];
  if (objc_opt_respondsToSelector())
  {
    if (dword_1ED6F6B88)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [communicationChannelDelegate outputContext:self didReceiveData:data fromCommunicationChannel:{channel, v12, v13}];
  }

  else if (dword_1ED6F6B88)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImpl:(id)impl didCloseCommunicationChannel:(id)channel
{
  v12 = *MEMORY[0x1E69E9840];
  communicationChannelDelegate = [(AVOutputContext *)self communicationChannelDelegate];
  if (objc_opt_respondsToSelector())
  {
    if (dword_1ED6F6B88)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [communicationChannelDelegate outputContext:self didCloseCommunicationChannel:{channel, v10, v11}];
  }

  else if (dword_1ED6F6B88)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImpl:(id)impl didExpireWithReplacement:(id)replacement
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  ivarAccessQueue = self->_outputContext->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AVOutputContext_outputContextImpl_didExpireWithReplacement___block_invoke;
  block[3] = &unk_1E794EE90;
  block[5] = replacement;
  block[6] = &v8;
  block[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [v9[5] setParentOutputContext:0];
  [replacement setParentOutputContext:self];
  [(AVOutputContext *)self outputContextImpl:[(AVOutputContext *)self impl] didChangeOutputDevicesWithInitiator:@"server death" reason:0 deviceID:0 previousDeviceIDs:0];
  [(AVOutputContext *)self outputContextImpl:[(AVOutputContext *)self impl] didChangeOutputDevicesWithInitiator:@"server death" reason:0 deviceID:0 previousDeviceIDs:0];
  [(AVOutputContext *)self outputContextImplDidChangeGlobalOutputDeviceConfiguration:[(AVOutputContext *)self impl]];

  _Block_object_dispose(&v8, 8);
}

id __62__AVOutputContext_outputContextImpl_didExpireWithReplacement___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 32) + 8) + 16);

  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 16) = result;
  return result;
}

+ (id)preferredOutputDevicesForAudioSession:(id)session
{
  array = [MEMORY[0x1E695DF70] array];
  theArray = 0;
  v5 = AVCreateRouteDiscovererWithType(2);
  if (!v5 || !+[AVOutputDevice prefersRouteDescriptors](AVOutputDevice, "prefersRouteDescriptors") || (v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(session, "opaqueSessionID")}], (v7 = *(*(CMBaseObjectGetVTable() + 8) + 56)) == 0) || v7(v5, *MEMORY[0x1E69AF308], v6) || (v8 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0)
  {
LABEL_11:
    v10 = theArray;
    goto LABEL_12;
  }

  v9 = v8(v5, *MEMORY[0x1E69AF310], *MEMORY[0x1E695E480], &theArray);
  v10 = theArray;
  if (!v9 && theArray)
  {
    if (CFArrayGetCount(theArray) >= 1)
    {
      v11 = 0;
      v12 = *MEMORY[0x1E69AF188];
      do
      {
        CFArrayGetValueAtIndex(theArray, v11);
        FigCFDictionaryGetBooleanIfPresent();
        ++v11;
      }

      while (v11 < CFArrayGetCount(theArray));
    }

    goto LABEL_11;
  }

LABEL_12:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return array;
}

- (AVOutputContext)initWithOutputContextImpl:(id)impl
{
  v9.receiver = self;
  v9.super_class = AVOutputContext;
  v4 = [(AVOutputContext *)&v9 init];
  if (v4 && (v5 = objc_alloc_init(AVOutputContextInternal), (v4->_outputContext = v5) != 0) && (v4->_outputContext->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.outputcontext.ivars"), v4->_outputContext->impl = impl, (impl = v4->_outputContext->impl) != 0))
  {
    [(AVOutputContextImpl *)impl setParentOutputContext:v4];
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AVOutputContext)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"AVOutputContextSerializationKeyContextID"];
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"AVOutputContextSerializationKeyContextType"];
  if (v5)
  {
    v7 = [objc_msgSend(objc_opt_class() "defaultOutputContextImplClass")];
    if (v7 && (v8 = [(AVOutputContext *)self initWithOutputContextImpl:v7], (self = v8) != 0))
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_initWithWebKitPropertyListData:(id)data
{
  v5 = [data objectForKeyedSubscript:@"contextID"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v6 = [data objectForKeyedSubscript:@"contextType"];
  if (!v6)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = 0;
  if (v5 && (isKindOfClass & 1) != 0)
  {
LABEL_8:
    v9 = [objc_msgSend(objc_opt_class() "defaultOutputContextImplClass")];
    if (v9)
    {
      v10 = [(AVOutputContext *)self initWithOutputContextImpl:v9];
      self = v10;
      if (v10)
      {
        v8 = v10;
        goto LABEL_12;
      }
    }

LABEL_11:
    v8 = 0;
  }

LABEL_12:

  return v8;
}

@end