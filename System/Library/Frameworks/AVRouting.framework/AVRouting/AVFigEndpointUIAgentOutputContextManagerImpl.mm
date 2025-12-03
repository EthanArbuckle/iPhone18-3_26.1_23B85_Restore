@interface AVFigEndpointUIAgentOutputContextManagerImpl
+ (OpaqueFigEndpointUIAgent)copySharedEndpointUIAgent;
- (AVFigEndpointUIAgentOutputContextManagerImpl)initWithEndpointUIAgent:(OpaqueFigEndpointUIAgent *)agent;
- (void)_showErrorPromptForRouteDescriptor:(__CFDictionary *)descriptor reason:(__CFString *)reason didFailToConnectToOutputDeviceDictionary:(__CFDictionary *)dictionary;
- (void)dealloc;
@end

@implementation AVFigEndpointUIAgentOutputContextManagerImpl

+ (OpaqueFigEndpointUIAgent)copySharedEndpointUIAgent
{
  if (copySharedEndpointUIAgent_onceToken != -1)
  {
    +[AVFigEndpointUIAgentOutputContextManagerImpl copySharedEndpointUIAgent];
  }

  dispatch_sync(sSharedAgentQueue, &__block_literal_global_373);
  return sSharedAgent;
}

dispatch_queue_t __73__AVFigEndpointUIAgentOutputContextManagerImpl_copySharedEndpointUIAgent__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.avfoundation.avoutputcontext.uiagentqueue", v0);
  sSharedAgentQueue = result;
  return result;
}

CFTypeRef __73__AVFigEndpointUIAgentOutputContextManagerImpl_copySharedEndpointUIAgent__block_invoke_2()
{
  result = sSharedAgent;
  if (sSharedAgent || (v1 = *MEMORY[0x1E695E480], result = FigEndpointUIAgentXPCRemoteCreate(), sSharedAgent) && (CMNotificationCenterGetDefaultLocalCenter(), v2 = *MEMORY[0x1E69AF240], CMNotificationCenterAddListener(), (result = sSharedAgent) != 0))
  {

    return CFRetain(result);
  }

  return result;
}

- (void)dealloc
{
  if (self->_weakObserver)
  {
    [+[AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:](AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", self->_weakObserver, AVOutputContextManagerShowErrorPrompt, *MEMORY[0x1E69AF250], self->_agent}];
  }

  agent = self->_agent;
  if (agent)
  {
    CFRelease(agent);
  }

  v4.receiver = self;
  v4.super_class = AVFigEndpointUIAgentOutputContextManagerImpl;
  [(AVFigEndpointUIAgentOutputContextManagerImpl *)&v4 dealloc];
}

- (void)_showErrorPromptForRouteDescriptor:(__CFDictionary *)descriptor reason:(__CFString *)reason didFailToConnectToOutputDeviceDictionary:(__CFDictionary *)dictionary
{
  v7 = [AVOutputDevice outputDeviceWithRouteDescriptor:descriptor withRoutingContext:0];
  v8 = *MEMORY[0x1E69AF270];
  if (FigCFEqual())
  {
    v9 = AVOutputContextDeviceConnectionFailureReasonDeviceInUse;
LABEL_13:
    v15 = *v9;
    goto LABEL_14;
  }

  v10 = *MEMORY[0x1E69AF2A8];
  if (FigCFEqual())
  {
    v9 = AVOutputContextDeviceConnectionFailureReasonDeviceOutOfRange;
    goto LABEL_13;
  }

  v11 = *MEMORY[0x1E69AF290];
  if (FigCFEqual())
  {
    v9 = AVOutputContextDeviceConnectionFailureReasonNotAPeerInHomeGroup;
    goto LABEL_13;
  }

  v12 = *MEMORY[0x1E69AF288];
  if (FigCFEqual())
  {
    v9 = AVOutputContextDeviceConnectionFailureReasonDeviceNotConnectedToInternet;
    goto LABEL_13;
  }

  v13 = *MEMORY[0x1E69AF268];
  if (FigCFEqual())
  {
    v9 = AVOutputContextDeviceConnectionFailureReasonDeviceNotMFiCertified;
    goto LABEL_13;
  }

  v14 = *MEMORY[0x1E69AF278];
  if (FigCFEqual())
  {
    v9 = AVOutputContextDeviceConnectionFailureReasonInfraRelayFailed2GHzNetwork;
    goto LABEL_13;
  }

  v17 = *MEMORY[0x1E69AF280];
  if (FigCFEqual())
  {
    v15 = @"AVOutputContextDeviceConnectionFailureReasonInfraRelayFailedMultiDFSNetwork";
  }

  else
  {
    v15 = 0;
  }

LABEL_14:
  parentOutputContextManager = [(AVFigEndpointUIAgentOutputContextManagerImpl *)self parentOutputContextManager];

  [(AVOutputContextManager *)parentOutputContextManager outputContextManagerImpl:self observedFailureToConnectToOutputDevice:v7 reason:v15 didFailToConnectToOutputDeviceDictionary:dictionary];
}

- (AVFigEndpointUIAgentOutputContextManagerImpl)initWithEndpointUIAgent:(OpaqueFigEndpointUIAgent *)agent
{
  OUTLINED_FUNCTION_5();
  [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v17.receiver = v3;
  v17.super_class = AVFigEndpointUIAgentOutputContextManagerImpl;
  v5 = [(AVFigEndpointUIAgentOutputContextManagerImpl *)&v17 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  if (!v4)
  {
    v15 = 0;
    v5->_agent = 0;
    goto LABEL_9;
  }

  v7 = CFRetain(v4);
  v6[1] = v7;
  if (!v7)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_9;
  }

  v8 = [[AVRoutingWeakReference alloc] initWithReferencedObject:v6];
  v6[2] = v8;
  OUTLINED_FUNCTION_0(v8, v9, v8, v10, *MEMORY[0x1E69AF250], v6[1]);
  v11 = v6[1];
  VTable = CMBaseObjectGetVTable();
  v13 = *(*(VTable + 16) + 24);
  if (v13)
  {
    v14 = *(VTable + 16) + 24;
    v13(v11, 1);
  }

  v15 = v6;
LABEL_9:

  return v15;
}

@end