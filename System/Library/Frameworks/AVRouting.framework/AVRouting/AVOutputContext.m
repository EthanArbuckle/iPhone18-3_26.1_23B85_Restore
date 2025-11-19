@interface AVOutputContext
+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)a3;
+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)a3 communicationChannelManagerCreator:(id)a4;
+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)a3 outputDeviceTranslator:(id)a4;
+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)a3 volumeController:(OpaqueFigVolumeControllerState *)a4;
+ (BOOL)outputContextExistsWithRemoteOutputDevice;
+ (id)addSharedAudioOutputContext;
+ (id)allSharedAudioOutputContexts;
+ (id)auxiliaryOutputContext;
+ (id)commChannelUUIDCommunicationChannelManagerCreator;
+ (id)defaultSharedOutputContext;
+ (id)iTunesAudioContext;
+ (id)outputContext;
+ (id)outputContextForControllingOutputDeviceGroupWithID:(id)a3 options:(id)a4;
+ (id)outputContextForID:(id)a3;
+ (id)preferredOutputDevicesForAudioSession:(id)a3;
+ (id)sharedAudioPresentationOutputContext;
+ (id)sharedSystemAudioContext;
+ (id)sharedSystemRemoteDisplayContext;
+ (id)sharedSystemRemotePoolContext;
+ (id)sharedSystemScreenContext;
+ (void)initialize;
+ (void)resetOutputDeviceForAllOutputContexts;
- (AVOutputContext)init;
- (AVOutputContext)initWithCoder:(id)a3;
- (AVOutputContext)initWithOutputContextImpl:(id)a3;
- (BOOL)canMute;
- (BOOL)canSetVolume;
- (BOOL)getApplicationProcessID:(int *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMuted;
- (BOOL)providesControlForAllVolumeFeatures;
- (BOOL)setOutputDevice:(id)a3 forFeatures:(unint64_t)a4;
- (BOOL)supportsMultipleBluetoothOutputDevices;
- (BOOL)supportsMultipleOutputDevices;
- (NSString)deviceName;
- (OpaqueFigRoutingContext)figRoutingContext;
- (float)volume;
- (id)_initWithWebKitPropertyListData:(id)a3;
- (id)_webKitPropertyListData;
- (id)contextID;
- (id)description;
- (id)impl;
- (id)openCommunicationChannelWithOptions:(id)a3 error:(id *)a4;
- (id)outgoingCommunicationChannel;
- (id)outputContextType;
- (id)outputDevice;
- (id)outputDevices;
- (id)predictedOutputDevice;
- (int)applicationProcessID;
- (int64_t)volumeControlType;
- (unint64_t)hash;
- (unint64_t)outputDeviceFeatures;
- (void)addOutputDevice:(id)a3;
- (void)addOutputDevice:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)decreaseVolumeByCount:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)increaseVolumeByCount:(int64_t)a3;
- (void)outputContextImpl:(id)a3 didChangeOutputDeviceWithInitiator:(id)a4;
- (void)outputContextImpl:(id)a3 didChangeOutputDevicesWithInitiator:(id)a4 reason:(id)a5 deviceID:(id)a6 previousDeviceIDs:(id)a7;
- (void)outputContextImpl:(id)a3 didCloseCommunicationChannel:(id)a4;
- (void)outputContextImpl:(id)a3 didExpireWithReplacement:(id)a4;
- (void)outputContextImpl:(id)a3 didInitiateDestinationChange:(id)a4;
- (void)outputContextImpl:(id)a3 didReceiveData:(id)a4 fromCommunicationChannel:(id)a5;
- (void)outputContextImplDidChangeCanMute:(id)a3;
- (void)outputContextImplDidChangeCanSetVolume:(id)a3;
- (void)outputContextImplDidChangeGlobalOutputDeviceConfiguration:(id)a3;
- (void)outputContextImplDidChangeMute:(id)a3;
- (void)outputContextImplDidChangePredictedOutputDevice:(id)a3;
- (void)outputContextImplDidChangeProvidesControlForAllVolumeFeatures:(id)a3;
- (void)outputContextImplDidChangeVolume:(id)a3;
- (void)outputContextImplDidChangeVolumeControlType:(id)a3;
- (void)outputContextImplOutgoingCommunicationChannelDidBecomeAvailable:(id)a3;
- (void)removeOutputDevice:(id)a3;
- (void)removeOutputDevice:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)resetPredictedOutputDevice;
- (void)setApplicationProcessID:(int)a3;
- (void)setCommunicationChannelDelegate:(id)a3;
- (void)setOutputDevice:(id)a3 options:(id)a4;
- (void)setOutputDevice:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)setOutputDevices:(id)a3;
- (void)setOutputDevices:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)setVolume:(float)a3;
@end

@implementation AVOutputContext

+ (id)sharedAudioPresentationOutputContext
{
  v2 = [[a1 alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultOutputContextImplClass"), "sharedAudioPresentationOutputContext")}];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

+ (id)sharedSystemAudioContext
{
  v2 = [[a1 alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultOutputContextImplClass"), "sharedSystemAudioContext")}];

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
  v2 = [(AVOutputContext *)self impl];

  return [v2 providesControlForAllVolumeFeatures];
}

- (BOOL)canSetVolume
{
  v2 = [(AVOutputContext *)self impl];

  return [v2 canSetVolume];
}

- (int64_t)volumeControlType
{
  v2 = [(AVOutputContext *)self impl];

  return [v2 volumeControlType];
}

- (id)outputDevices
{
  v2 = [(AVOutputContext *)self impl];

  return [v2 outputDevices];
}

- (id)contextID
{
  v2 = [(AVOutputContext *)self impl];

  return [v2 ID];
}

- (id)outputContextType
{
  v2 = [(AVOutputContext *)self impl];

  return [v2 outputContextType];
}

- (id)predictedOutputDevice
{
  v2 = [(AVOutputContext *)self impl];

  return [v2 predictedOutputDevice];
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
  v2 = [[a1 alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultOutputContextImplClass"), "sharedSystemRemoteDisplayContext")}];

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
  v2 = [(AVOutputContext *)self impl];

  return [v2 supportsMultipleBluetoothOutputDevices];
}

- (BOOL)supportsMultipleOutputDevices
{
  v2 = [(AVOutputContext *)self impl];

  return [v2 supportsMultipleOutputDevices];
}

+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)a3 outputDeviceTranslator:(id)a4
{
  v7 = (*(a3 + 2))(a3, a2);
  FigVolumeControllerCopySharedControllerRemote();
  v8 = -[AVFigRoutingContextOutputContextImpl initWithFigRoutingContext:routingContextReplacementBlock:outputDeviceTranslator:volumeController:communicationChannelManagerCreator:]([AVFigRoutingContextOutputContextImpl alloc], "initWithFigRoutingContext:routingContextReplacementBlock:outputDeviceTranslator:volumeController:communicationChannelManagerCreator:", v7, a3, a4, 0, [a1 defaultCommunicationChannelManagerCreator]);
  v9 = [[AVOutputContext alloc] initWithOutputContextImpl:v8];
  if (v7)
  {
    CFRelease(v7);
  }

  return v9;
}

+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)a3 volumeController:(OpaqueFigVolumeControllerState *)a4
{
  v7 = AVOutputContextUsesRouteConfigUpdatedNotification();
  DefaultDeviceTranslator = AVOutputContextGetDefaultDeviceTranslator(v7);
  v9 = (*(a3 + 2))(a3);
  v10 = -[AVFigRoutingContextOutputContextImpl initWithFigRoutingContext:routingContextReplacementBlock:outputDeviceTranslator:volumeController:communicationChannelManagerCreator:]([AVFigRoutingContextOutputContextImpl alloc], "initWithFigRoutingContext:routingContextReplacementBlock:outputDeviceTranslator:volumeController:communicationChannelManagerCreator:", v9, a3, DefaultDeviceTranslator, a4, [a1 defaultCommunicationChannelManagerCreator]);
  v11 = [[AVOutputContext alloc] initWithOutputContextImpl:v10];
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)a3 communicationChannelManagerCreator:(id)a4
{
  v6 = (*(a3 + 2))(a3, a2);
  v7 = AVOutputContextUsesRouteConfigUpdatedNotification();
  DefaultDeviceTranslator = AVOutputContextGetDefaultDeviceTranslator(v7);
  FigVolumeControllerCopySharedControllerRemote();
  v9 = [[AVFigRoutingContextOutputContextImpl alloc] initWithFigRoutingContext:v6 routingContextReplacementBlock:a3 outputDeviceTranslator:DefaultDeviceTranslator volumeController:0 communicationChannelManagerCreator:a4];
  v10 = [[AVOutputContext alloc] initWithOutputContextImpl:v9];
  if (v6)
  {
    CFRelease(v6);
  }

  return v10;
}

+ (AVOutputContext)outputContextWithFigRoutingContextCreator:(id)a3
{
  v3 = [[AVFigRoutingContextOutputContextImpl alloc] initWithFigRoutingContextCreator:a3];
  v4 = [[AVOutputContext alloc] initWithOutputContextImpl:v3];

  return v4;
}

- (OpaqueFigRoutingContext)figRoutingContext
{
  v2 = [(AVOutputContext *)self impl];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 figRoutingContext];
}

+ (id)outputContext
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AVOutputContext_outputContext__block_invoke;
  block[3] = &unk_1E794ED28;
  block[4] = a1;
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
    v3 = [[a1 alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultOutputContextImplClass"), "platformDependentScreenOrVideoContext")}];
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
  v2 = [[a1 alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultOutputContextImplClass"), "auxiliaryOutputContext")}];

  return v2;
}

+ (id)sharedSystemScreenContext
{
  v2 = [[a1 alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultOutputContextImplClass"), "sharedSystemScreenContext")}];

  return v2;
}

+ (id)sharedSystemRemotePoolContext
{
  v2 = [[a1 alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultOutputContextImplClass"), "sharedSystemRemotePoolContext")}];

  return v2;
}

+ (id)iTunesAudioContext
{
  v2 = [[a1 alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultOutputContextImplClass"), "iTunesAudioContext")}];

  return v2;
}

+ (id)addSharedAudioOutputContext
{
  v2 = [[a1 alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultOutputContextImplClass"), "addSharedAudioOutputContextImpl")}];

  return v2;
}

+ (id)allSharedAudioOutputContexts
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [objc_msgSend(a1 "defaultOutputContextImplClass")];
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

        v9 = [[a1 alloc] initWithOutputContextImpl:*(*(&v12 + 1) + 8 * v8)];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)defaultSharedOutputContext
{
  result = [objc_msgSend(a1 "defaultOutputContextImplClass")];
  if (result)
  {
    v4 = [[a1 alloc] initWithOutputContextImpl:result];

    return v4;
  }

  return result;
}

+ (id)outputContextForControllingOutputDeviceGroupWithID:(id)a3 options:(id)a4
{
  v4 = [[a1 alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultOutputContextImplClass"), "outputContextImplForControllingOutputDeviceGroupWithID:options:", a3, a4)}];

  return v4;
}

+ (id)outputContextForID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = +[AVOutputContextFactory sharedInstance];
  v6 = [(AVOutputContextFactory *)v5 outputContextForContextID:a3];
  if (!v6)
  {
    v6 = [[a1 alloc] initWithOutputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultOutputContextImplClass"), "outputContextImplForID:type:", a3, 0)}];
    [(AVOutputContextFactory *)v5 setOutputContext:v6 forContextID:a3];
  }

  return v6;
}

- (AVOutputContext)init
{
  v3 = [objc_msgSend(objc_opt_class() "defaultOutputContextImplClass")];

  return [(AVOutputContext *)self initWithOutputContextImpl:v3];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(AVOutputContext *)self contextID];
  v6 = [(AVOutputContext *)self outputContextType];
  [a3 encodeObject:v5 forKey:@"AVOutputContextSerializationKeyContextID"];

  [a3 encodeObject:v6 forKey:@"AVOutputContextSerializationKeyContextType"];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVOutputContext *)self impl];
  v6 = [a3 impl];

  return [v5 isEqual:v6];
}

- (unint64_t)hash
{
  v2 = [(AVOutputContext *)self impl];

  return [v2 hash];
}

- (int)applicationProcessID
{
  v3 = 0;
  [(AVOutputContext *)self getApplicationProcessID:&v3];
  return v3;
}

- (BOOL)getApplicationProcessID:(int *)a3
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
    *a3 = *(v9 + 6);
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

- (void)setApplicationProcessID:(int)a3
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
  v9 = a3;
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

- (void)setOutputDevice:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  [a4 objectForKeyedSubscript:@"AVOutputContextSetOutputDevicePasswordKey"];
  [a4 objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceCancelIfAuthRequiredKey"];
  [a4 objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceSuppressUserInteractionOnSenderOnlyKey"];
  v9 = [a4 objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceInitiatorKey"];
  v10 = [a4 objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionCorrelationID"];
  [a4 objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceDefaultAudioToLocalKey"];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v12 = [a3 description];
  [a4 objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceFadePlaybackKey"];
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
  v18[9] = a5;
  v18[10] = UpTimeNanoseconds;
  v18[4] = self;
  v18[5] = v12;
  v18[6] = v9;
  v18[7] = v10;
  v18[8] = a3;
  [v14 setOutputDevice:a3 options:a4 completionHandler:v18];
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

- (BOOL)setOutputDevice:(id)a3 forFeatures:(unint64_t)a4
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

  v8 = [MEMORY[0x1E695DF70] array];
  v9 = objc_alloc_init(MEMORY[0x1E696AD10]);
  ivarAccessQueue = self->_outputContext->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVOutputContext_setOutputDevice_forFeatures___block_invoke;
  block[3] = &unk_1E794ED50;
  block[4] = self;
  block[5] = a4;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__AVOutputContext_setOutputDevice_forFeatures___block_invoke_2;
  v17[3] = &unk_1E794F2B8;
  v17[4] = v9;
  v17[5] = v8;
  [(AVOutputContext *)self setOutputDevice:a3 options:0 completionHandler:v17];
  [v9 lock];
  v11 = [v8 firstObject];
  if (v11)
  {
    v12 = [v11 status] == 2;
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

- (void)setOutputDevice:(id)a3 options:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  [a4 objectForKeyedSubscript:@"AVOutputContextSetOutputDevicePasswordKey"];
  [a4 objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceCancelIfAuthRequiredKey"];
  [a4 objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceSuppressUserInteractionOnSenderOnlyKey"];
  [a4 objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceInitiatorKey"];
  [a4 objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceFadePlaybackKey"];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputContext *)self setOutputDevice:a3 options:a4 completionHandler:0, v9, v10];
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
  v18 = [a1 defaultOutputContextImplClass];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
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
  v14 = [a1 defaultOutputContextImplClass];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if (v5)
        {
          v5 = 1;
        }

        else
        {
          v5 = [*(*(&v10 + 1) + 8 * i) outputContextExistsWithRemoteOutputDevice];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)outputContextImpl:(id)a3 didInitiateDestinationChange:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"AVOutputContextDestinationChangeKey";
  v11[0] = a4;
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

- (void)outputContextImpl:(id)a3 didChangeOutputDeviceWithInitiator:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v10 = @"AVOutputContextDestinationChangeInitiatorKey";
    v11[0] = a4;
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

- (void)outputContextImplDidChangeGlobalOutputDeviceConfiguration:(id)a3
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

- (void)outputContextImpl:(id)a3 didChangeOutputDevicesWithInitiator:(id)a4 reason:(id)a5 deviceID:(id)a6 previousDeviceIDs:(id)a7
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = v12;
  if (a4)
  {
    [v12 setObject:a4 forKeyedSubscript:@"AVOutputContextDestinationChangeInitiatorKey"];
  }

  if (a5)
  {
    [v13 setObject:a5 forKeyedSubscript:@"AVOutputContextDestinationChangeReasonKey"];
  }

  if (a6)
  {
    [v13 setObject:a6 forKeyedSubscript:@"AVOutputContextDestinationChangeDeviceIDKey"];
  }

  if (a7)
  {
    [v13 setObject:a7 forKeyedSubscript:@"AVOutputContextDestinationChangePreviousDeviceIDsKey"];
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

- (void)setOutputDevices:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputContext *)self setOutputDevices:a3 options:0 completionHandler:0, v7, v8];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setOutputDevices:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v10 = [a3 description];
  [a4 objectForKeyedSubscript:@"AVOutputContextSetOutputDevicesOptionFadePlayback"];
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
  v16[6] = a4;
  v16[7] = a3;
  v16[8] = a5;
  v16[9] = UpTimeNanoseconds;
  [v12 setOutputDevices:a3 options:a4 completionHandler:v16];
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

- (void)addOutputDevice:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  [a4 objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionAuthorizationToken"];
  [a4 objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceCancelIfAuthRequiredKey"];
  v9 = [a4 objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionInitiator"];
  v10 = [a4 objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionCorrelationID"];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v12 = [a3 description];
  [a4 objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionFadePlayback"];
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
  v18[9] = a5;
  v18[10] = UpTimeNanoseconds;
  v18[4] = self;
  v18[5] = v12;
  v18[6] = v9;
  v18[7] = v10;
  v18[8] = a3;
  [v14 addOutputDevice:a3 options:a4 completionHandler:v18];
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

- (void)addOutputDevice:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputContext *)self addOutputDevice:a3 options:0 completionHandler:0, v7, v8];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeOutputDevice:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v10 = [a3 description];
  [a4 objectForKeyedSubscript:@"AVOutputContextRemoveOutputDeviceOptionFadePlayback"];
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
  v16[7] = a5;
  v16[8] = UpTimeNanoseconds;
  v16[4] = self;
  v16[5] = v10;
  v16[6] = a4;
  [v12 removeOutputDevice:a3 options:a4 completionHandler:v16];
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

- (void)removeOutputDevice:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputContext *)self removeOutputDevice:a3 options:0 completionHandler:0, v7, v8];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImplDidChangePredictedOutputDevice:(id)a3
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

- (void)outputContextImplDidChangeProvidesControlForAllVolumeFeatures:(id)a3
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
  v2 = [(AVOutputContext *)self impl];

  [v2 volume];
  return result;
}

- (void)outputContextImplDidChangeVolume:(id)a3
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

- (void)outputContextImplDidChangeCanSetVolume:(id)a3
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

- (void)outputContextImplDidChangeCanMute:(id)a3
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

- (void)outputContextImplDidChangeMute:(id)a3
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

- (void)setVolume:(float)a3
{
  v4 = [(AVOutputContext *)self impl];
  *&v5 = a3;

  [v4 setVolume:v5];
}

- (void)increaseVolumeByCount:(int64_t)a3
{
  v4 = [(AVOutputContext *)self impl];

  [v4 increaseVolumeByCount:a3];
}

- (void)decreaseVolumeByCount:(int64_t)a3
{
  v4 = [(AVOutputContext *)self impl];

  [v4 decreaseVolumeByCount:a3];
}

- (BOOL)canMute
{
  v2 = [(AVOutputContext *)self impl];

  return [v2 canMute];
}

- (BOOL)isMuted
{
  v2 = [(AVOutputContext *)self impl];

  return [v2 isMuted];
}

- (void)outputContextImplDidChangeVolumeControlType:(id)a3
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
  v2 = [(AVOutputContext *)self impl];

  return [v2 outgoingCommunicationChannel];
}

- (id)openCommunicationChannelWithOptions:(id)a3 error:(id *)a4
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

- (void)setCommunicationChannelDelegate:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_storeWeak(&self->_outputContext->communicationChannelDelegate, a3);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImplOutgoingCommunicationChannelDidBecomeAvailable:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(AVOutputContext *)self communicationChannelDelegate];
  if (objc_opt_respondsToSelector())
  {
    if (dword_1ED6F6B88)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v4 outputContextOutgoingCommunicationChannelDidBecomeAvailable:{self, v8, v9}];
  }

  else if (dword_1ED6F6B88)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImpl:(id)a3 didReceiveData:(id)a4 fromCommunicationChannel:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = [(AVOutputContext *)self communicationChannelDelegate];
  if (objc_opt_respondsToSelector())
  {
    if (dword_1ED6F6B88)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v8 outputContext:self didReceiveData:a4 fromCommunicationChannel:{a5, v12, v13}];
  }

  else if (dword_1ED6F6B88)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImpl:(id)a3 didCloseCommunicationChannel:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = [(AVOutputContext *)self communicationChannelDelegate];
  if (objc_opt_respondsToSelector())
  {
    if (dword_1ED6F6B88)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v6 outputContext:self didCloseCommunicationChannel:{a4, v10, v11}];
  }

  else if (dword_1ED6F6B88)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)outputContextImpl:(id)a3 didExpireWithReplacement:(id)a4
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
  block[5] = a4;
  block[6] = &v8;
  block[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [v9[5] setParentOutputContext:0];
  [a4 setParentOutputContext:self];
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

+ (id)preferredOutputDevicesForAudioSession:(id)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  theArray = 0;
  v5 = AVCreateRouteDiscovererWithType(2);
  if (!v5 || !+[AVOutputDevice prefersRouteDescriptors](AVOutputDevice, "prefersRouteDescriptors") || (v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "opaqueSessionID")}], (v7 = *(*(CMBaseObjectGetVTable() + 8) + 56)) == 0) || v7(v5, *MEMORY[0x1E69AF308], v6) || (v8 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0)
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

  return v4;
}

- (AVOutputContext)initWithOutputContextImpl:(id)a3
{
  v9.receiver = self;
  v9.super_class = AVOutputContext;
  v4 = [(AVOutputContext *)&v9 init];
  if (v4 && (v5 = objc_alloc_init(AVOutputContextInternal), (v4->_outputContext = v5) != 0) && (v4->_outputContext->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.outputcontext.ivars"), v4->_outputContext->impl = a3, (impl = v4->_outputContext->impl) != 0))
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

- (AVOutputContext)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AVOutputContextSerializationKeyContextID"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AVOutputContextSerializationKeyContextType"];
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

- (id)_initWithWebKitPropertyListData:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"contextID"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v6 = [a3 objectForKeyedSubscript:@"contextType"];
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