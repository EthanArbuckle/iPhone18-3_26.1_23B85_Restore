@interface _UNNotificationContentExtensionHostContext
- (CGRect)playPauseMediaButtonFrame;
- (_UNNotificationContentExtensionHostContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (_UNNotificationContentExtensionHostContextDelegate)delegate;
- (void)_extensionDidCompleteNotificationResponse:(id)response withOption:(unint64_t)option;
- (void)_extensionDidUpdateNotificationActions:(id)actions;
- (void)_extensionDidUpdatePlayPauseMediaButton;
- (void)_extensionDidUpdateTitle:(id)title;
- (void)_extensionMediaPlayingPaused;
- (void)_extensionMediaPlayingStarted;
- (void)_extensionRequestsDefaultAction;
- (void)_extensionRequestsDismiss;
- (void)_extensionSetPlayPauseMediaButtonColor:(id)color;
- (void)_extensionSetPlayPauseMediaButtonFrame:(CGRect)frame;
- (void)_extensionSetPlayPauseMediaButtonType:(unint64_t)type;
- (void)_extensionWantsToBecomeFirstResponder:(BOOL)responder;
- (void)_extensionWantsToReceiveActionResponses:(BOOL)responses;
- (void)_hostDidReceiveNotification:(id)notification;
- (void)_hostDidReceiveNotificationResponse:(id)response;
- (void)_hostDidReceiveNotificationResponse:(id)response completionHandler:(id)handler;
- (void)_hostWantsMediaToPause;
- (void)_hostWantsMediaToPlay;
- (void)_hostWantsToPreserveInputViews;
- (void)_hostWantsToRestoreInputViews;
- (void)_hostWantsToUpdateMediaPlayPauseButton;
- (void)_resumeDelegateQueueIfNecessary;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation _UNNotificationContentExtensionHostContext

- (_UNNotificationContentExtensionHostContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v10.receiver = self;
  v10.super_class = _UNNotificationContentExtensionHostContext;
  v5 = [(_UNNotificationContentExtensionHostContext *)&v10 initWithInputItems:items listenerEndpoint:endpoint contextUUID:d];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.usernotificationsui.hostcontext.delegate", v6);
    v8 = *(v5 + 7);
    *(v5 + 7) = v7;

    *(v5 + 26) = 1;
    dispatch_suspend(*(v5 + 7));
  }

  return v5;
}

- (void)dealloc
{
  [(_UNNotificationContentExtensionHostContext *)self _resumeDelegateQueueIfNecessary];
  v3.receiver = self;
  v3.super_class = _UNNotificationContentExtensionHostContext;
  [(_UNNotificationContentExtensionHostContext *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  if (delegate)
  {

    [(_UNNotificationContentExtensionHostContext *)self _resumeDelegateQueueIfNecessary];
  }
}

- (void)_hostDidReceiveNotification:(id)notification
{
  notificationCopy = notification;
  _auxiliaryConnection = [(_UNNotificationContentExtensionHostContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _hostDidReceiveNotification:notificationCopy];
}

- (void)_hostDidReceiveNotificationResponse:(id)response
{
  responseCopy = response;
  _auxiliaryConnection = [(_UNNotificationContentExtensionHostContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _hostDidReceiveNotificationResponse:responseCopy];
}

- (void)_hostDidReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  handlerCopy = handler;
  responseCopy = response;
  _auxiliaryConnection = [(_UNNotificationContentExtensionHostContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _hostDidReceiveNotificationResponse:responseCopy completionHandler:handlerCopy];
}

- (void)_hostWantsMediaToPause
{
  _auxiliaryConnection = [(_UNNotificationContentExtensionHostContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _hostWantsMediaToPause];
}

- (void)_hostWantsMediaToPlay
{
  _auxiliaryConnection = [(_UNNotificationContentExtensionHostContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _hostWantsMediaToPlay];
}

- (void)_hostWantsToUpdateMediaPlayPauseButton
{
  _auxiliaryConnection = [(_UNNotificationContentExtensionHostContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _hostWantsToUpdateMediaPlayPauseButton];
}

- (void)_hostWantsToPreserveInputViews
{
  _auxiliaryConnection = [(_UNNotificationContentExtensionHostContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _hostWantsToPreserveInputViews];
}

- (void)_hostWantsToRestoreInputViews
{
  _auxiliaryConnection = [(_UNNotificationContentExtensionHostContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _hostWantsToRestoreInputViews];
}

- (void)_extensionDidUpdatePlayPauseMediaButton
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85___UNNotificationContentExtensionHostContext__extensionDidUpdatePlayPauseMediaButton__block_invoke;
  block[3] = &unk_278B716D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_extensionWantsToReceiveActionResponses:(BOOL)responses
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __86___UNNotificationContentExtensionHostContext__extensionWantsToReceiveActionResponses___block_invoke;
  v3[3] = &unk_278B71780;
  v3[4] = self;
  responsesCopy = responses;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)_extensionWantsToBecomeFirstResponder:(BOOL)responder
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __84___UNNotificationContentExtensionHostContext__extensionWantsToBecomeFirstResponder___block_invoke;
  v3[3] = &unk_278B71780;
  v3[4] = self;
  responderCopy = responder;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)_extensionSetPlayPauseMediaButtonType:(unint64_t)type
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __84___UNNotificationContentExtensionHostContext__extensionSetPlayPauseMediaButtonType___block_invoke;
  v3[3] = &unk_278B717A8;
  v3[4] = self;
  v3[5] = type;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)_extensionSetPlayPauseMediaButtonFrame:(CGRect)frame
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85___UNNotificationContentExtensionHostContext__extensionSetPlayPauseMediaButtonFrame___block_invoke;
  block[3] = &unk_278B717D0;
  block[4] = self;
  frameCopy = frame;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_extensionSetPlayPauseMediaButtonColor:(id)color
{
  colorCopy = color;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85___UNNotificationContentExtensionHostContext__extensionSetPlayPauseMediaButtonColor___block_invoke;
  v6[3] = &unk_278B717F8;
  v6[4] = self;
  v7 = colorCopy;
  v5 = colorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_extensionDidCompleteNotificationResponse:(id)response withOption:(unint64_t)option
{
  responseCopy = response;
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99___UNNotificationContentExtensionHostContext__extensionDidCompleteNotificationResponse_withOption___block_invoke;
  block[3] = &unk_278B71820;
  block[4] = self;
  v10 = responseCopy;
  optionCopy = option;
  v8 = responseCopy;
  dispatch_async(delegateQueue, block);
}

- (void)_extensionMediaPlayingStarted
{
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___UNNotificationContentExtensionHostContext__extensionMediaPlayingStarted__block_invoke;
  block[3] = &unk_278B716D0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)_extensionMediaPlayingPaused
{
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___UNNotificationContentExtensionHostContext__extensionMediaPlayingPaused__block_invoke;
  block[3] = &unk_278B716D0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)_extensionRequestsDefaultAction
{
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77___UNNotificationContentExtensionHostContext__extensionRequestsDefaultAction__block_invoke;
  block[3] = &unk_278B716D0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)_extensionRequestsDismiss
{
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___UNNotificationContentExtensionHostContext__extensionRequestsDismiss__block_invoke;
  block[3] = &unk_278B716D0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)_extensionDidUpdateTitle:(id)title
{
  titleCopy = title;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71___UNNotificationContentExtensionHostContext__extensionDidUpdateTitle___block_invoke;
  v7[3] = &unk_278B717F8;
  v7[4] = self;
  v8 = titleCopy;
  v6 = titleCopy;
  dispatch_async(delegateQueue, v7);
}

- (void)_extensionDidUpdateNotificationActions:(id)actions
{
  actionsCopy = actions;
  array = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __85___UNNotificationContentExtensionHostContext__extensionDidUpdateNotificationActions___block_invoke;
    v10[3] = &unk_278B71848;
    v11 = array;
    [actionsCopy enumerateObjectsUsingBlock:v10];
  }

  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85___UNNotificationContentExtensionHostContext__extensionDidUpdateNotificationActions___block_invoke_2;
  block[3] = &unk_278B717F8;
  block[4] = self;
  v9 = array;
  v7 = array;
  dispatch_async(delegateQueue, block);
}

- (void)_resumeDelegateQueueIfNecessary
{
  if (self->_delegateQueueSuspended)
  {
    dispatch_resume(self->_delegateQueue);
    self->_delegateQueueSuspended = 0;
  }
}

- (CGRect)playPauseMediaButtonFrame
{
  x = self->_playPauseMediaButtonFrame.origin.x;
  y = self->_playPauseMediaButtonFrame.origin.y;
  width = self->_playPauseMediaButtonFrame.size.width;
  height = self->_playPauseMediaButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_UNNotificationContentExtensionHostContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end