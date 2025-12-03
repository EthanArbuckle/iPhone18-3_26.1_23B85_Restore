@interface _UNNotificationContentExtensionVendorContext
- (_UNNotificationContentExtensionVendorContainer)notificationExtensionContainer;
- (_UNNotificationContentExtensionVendorContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (void)_activateQueueIfNecessary;
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
- (void)_updateMediaPlayPauseButton;
- (void)dealloc;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)performNotificationDefaultAction;
- (void)setNotificationActions:(id)actions;
@end

@implementation _UNNotificationContentExtensionVendorContext

- (_UNNotificationContentExtensionVendorContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v26.receiver = self;
  v26.super_class = _UNNotificationContentExtensionVendorContext;
  v5 = [(_UNNotificationContentExtensionVendorContext *)&v26 initWithInputItems:items listenerEndpoint:endpoint contextUUID:d];
  v6 = v5;
  if (v5)
  {
    inputItems = [(_UNNotificationContentExtensionVendorContext *)v5 inputItems];
    firstObject = [inputItems firstObject];
    userInfo = [firstObject userInfo];
    v10 = [userInfo objectForKey:@"actions"];
    v11 = MEMORY[0x277CCAAC8];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v25 = 0;
    v15 = [v11 unarchivedObjectOfClasses:v14 fromData:v10 error:&v25];
    v16 = v25;

    v17 = [v15 copy];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v6->_notificationActions, v19);

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_initially_inactive(v20);
    v22 = dispatch_queue_create("com.apple.UserNotificationsUI.ExtensionVendorContext", v21);
    queue = v6->_queue;
    v6->_queue = v22;

    v6->_queueInactive = 1;
  }

  return v6;
}

- (void)dealloc
{
  [(_UNNotificationContentExtensionVendorContext *)self _activateQueueIfNecessary];
  v3.receiver = self;
  v3.super_class = _UNNotificationContentExtensionVendorContext;
  [(_UNNotificationContentExtensionVendorContext *)&v3 dealloc];
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74___UNNotificationContentExtensionVendorContext_openURL_completionHandler___block_invoke;
  v10[3] = &unk_278B718A8;
  v11 = lCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = lCopy;
  dispatch_async(v7, v10);
}

- (void)performNotificationDefaultAction
{
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionRequestsDefaultAction];
}

- (void)setNotificationActions:(id)actions
{
  if (self->_notificationActions != actions)
  {
    v4 = [actions copy];
    notificationActions = self->_notificationActions;
    self->_notificationActions = v4;

    array = [MEMORY[0x277CBEB18] array];
    v7 = self->_notificationActions;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71___UNNotificationContentExtensionVendorContext_setNotificationActions___block_invoke;
    v9[3] = &unk_278B718D0;
    v10 = array;
    v8 = array;
    [(NSArray *)v7 enumerateObjectsUsingBlock:v9];
    [(_UNNotificationContentExtensionVendorContext *)self _extensionDidUpdateNotificationActions:v8];
  }
}

- (void)_extensionWantsToReceiveActionResponses:(BOOL)responses
{
  responsesCopy = responses;
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionWantsToReceiveActionResponses:responsesCopy];
}

- (void)_extensionWantsToBecomeFirstResponder:(BOOL)responder
{
  responderCopy = responder;
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionWantsToBecomeFirstResponder:responderCopy];
}

- (void)_extensionDidCompleteNotificationResponse:(id)response withOption:(unint64_t)option
{
  responseCopy = response;
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionDidCompleteNotificationResponse:responseCopy withOption:option];
}

- (void)_extensionSetPlayPauseMediaButtonType:(unint64_t)type
{
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionSetPlayPauseMediaButtonType:type];
}

- (void)_extensionSetPlayPauseMediaButtonFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionSetPlayPauseMediaButtonFrame:{x, y, width, height}];
}

- (void)_extensionSetPlayPauseMediaButtonColor:(id)color
{
  colorCopy = color;
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionSetPlayPauseMediaButtonColor:colorCopy];
}

- (void)_extensionMediaPlayingPaused
{
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionMediaPlayingPaused];
}

- (void)_extensionMediaPlayingStarted
{
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionMediaPlayingStarted];
}

- (void)_extensionRequestsDefaultAction
{
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionRequestsDefaultAction];
}

- (void)_extensionRequestsDismiss
{
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionRequestsDismiss];
}

- (void)_extensionDidUpdateTitle:(id)title
{
  titleCopy = title;
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionDidUpdateTitle:titleCopy];
}

- (void)_extensionDidUpdateNotificationActions:(id)actions
{
  actionsCopy = actions;
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionDidUpdateNotificationActions:actionsCopy];
}

- (void)_extensionDidUpdatePlayPauseMediaButton
{
  _auxiliaryConnection = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  [remoteObjectProxy _extensionDidUpdatePlayPauseMediaButton];
}

- (void)_hostWantsToPreserveInputViews
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78___UNNotificationContentExtensionVendorContext__hostWantsToPreserveInputViews__block_invoke;
  block[3] = &unk_278B716D0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_hostWantsToRestoreInputViews
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77___UNNotificationContentExtensionVendorContext__hostWantsToRestoreInputViews__block_invoke;
  block[3] = &unk_278B716D0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_hostDidReceiveNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76___UNNotificationContentExtensionVendorContext__hostDidReceiveNotification___block_invoke;
  v7[3] = &unk_278B717F8;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_sync(queue, v7);
}

- (void)_hostDidReceiveNotificationResponse:(id)response
{
  responseCopy = response;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse___block_invoke;
  v7[3] = &unk_278B717F8;
  v7[4] = self;
  v8 = responseCopy;
  v6 = responseCopy;
  dispatch_sync(queue, v7);
}

- (void)_hostDidReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse_completionHandler___block_invoke;
  block[3] = &unk_278B71948;
  block[4] = self;
  v12 = responseCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = responseCopy;
  dispatch_sync(queue, block);
}

- (void)_hostWantsMediaToPause
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70___UNNotificationContentExtensionVendorContext__hostWantsMediaToPause__block_invoke;
  block[3] = &unk_278B716D0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_hostWantsMediaToPlay
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69___UNNotificationContentExtensionVendorContext__hostWantsMediaToPlay__block_invoke;
  block[3] = &unk_278B716D0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_hostWantsToUpdateMediaPlayPauseButton
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86___UNNotificationContentExtensionVendorContext__hostWantsToUpdateMediaPlayPauseButton__block_invoke;
  block[3] = &unk_278B716D0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_updateMediaPlayPauseButton
{
  _notificationExtension = [(_UNNotificationContentExtensionVendorContext *)self _notificationExtension];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    mediaPlayPauseButtonType = [_notificationExtension mediaPlayPauseButtonType];
    if ((mediaPlayPauseButtonType - 1) > 1)
    {
      [(_UNNotificationContentExtensionVendorContext *)self _extensionSetPlayPauseMediaButtonType:0];
    }

    else
    {
      [(_UNNotificationContentExtensionVendorContext *)self _extensionSetPlayPauseMediaButtonType:mediaPlayPauseButtonType];
      [_notificationExtension mediaPlayPauseButtonFrame];
      [(_UNNotificationContentExtensionVendorContext *)self _extensionSetPlayPauseMediaButtonFrame:?];
      if (objc_opt_respondsToSelector())
      {
        mediaPlayPauseButtonTintColor = [_notificationExtension mediaPlayPauseButtonTintColor];
        [(_UNNotificationContentExtensionVendorContext *)self _extensionSetPlayPauseMediaButtonColor:mediaPlayPauseButtonTintColor];
      }
    }
  }

  [(_UNNotificationContentExtensionVendorContext *)self _extensionDidUpdatePlayPauseMediaButton];
}

- (void)_activateQueueIfNecessary
{
  if (self->_queueInactive)
  {
    dispatch_activate(self->_queue);
    self->_queueInactive = 0;
  }
}

- (_UNNotificationContentExtensionVendorContainer)notificationExtensionContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationExtensionContainer);

  return WeakRetained;
}

@end