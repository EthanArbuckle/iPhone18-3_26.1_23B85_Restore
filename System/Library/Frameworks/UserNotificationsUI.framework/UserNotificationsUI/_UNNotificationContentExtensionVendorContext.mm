@interface _UNNotificationContentExtensionVendorContext
- (_UNNotificationContentExtensionVendorContainer)notificationExtensionContainer;
- (_UNNotificationContentExtensionVendorContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (void)_activateQueueIfNecessary;
- (void)_extensionDidCompleteNotificationResponse:(id)a3 withOption:(unint64_t)a4;
- (void)_extensionDidUpdateNotificationActions:(id)a3;
- (void)_extensionDidUpdatePlayPauseMediaButton;
- (void)_extensionDidUpdateTitle:(id)a3;
- (void)_extensionMediaPlayingPaused;
- (void)_extensionMediaPlayingStarted;
- (void)_extensionRequestsDefaultAction;
- (void)_extensionRequestsDismiss;
- (void)_extensionSetPlayPauseMediaButtonColor:(id)a3;
- (void)_extensionSetPlayPauseMediaButtonFrame:(CGRect)a3;
- (void)_extensionSetPlayPauseMediaButtonType:(unint64_t)a3;
- (void)_extensionWantsToBecomeFirstResponder:(BOOL)a3;
- (void)_extensionWantsToReceiveActionResponses:(BOOL)a3;
- (void)_hostDidReceiveNotification:(id)a3;
- (void)_hostDidReceiveNotificationResponse:(id)a3;
- (void)_hostDidReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
- (void)_hostWantsMediaToPause;
- (void)_hostWantsMediaToPlay;
- (void)_hostWantsToPreserveInputViews;
- (void)_hostWantsToRestoreInputViews;
- (void)_hostWantsToUpdateMediaPlayPauseButton;
- (void)_updateMediaPlayPauseButton;
- (void)dealloc;
- (void)openURL:(id)a3 completionHandler:(id)a4;
- (void)performNotificationDefaultAction;
- (void)setNotificationActions:(id)a3;
@end

@implementation _UNNotificationContentExtensionVendorContext

- (_UNNotificationContentExtensionVendorContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v26.receiver = self;
  v26.super_class = _UNNotificationContentExtensionVendorContext;
  v5 = [(_UNNotificationContentExtensionVendorContext *)&v26 initWithInputItems:a3 listenerEndpoint:a4 contextUUID:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(_UNNotificationContentExtensionVendorContext *)v5 inputItems];
    v8 = [v7 firstObject];
    v9 = [v8 userInfo];
    v10 = [v9 objectForKey:@"actions"];
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

- (void)openURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74___UNNotificationContentExtensionVendorContext_openURL_completionHandler___block_invoke;
  v10[3] = &unk_278B718A8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

- (void)performNotificationDefaultAction
{
  v3 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 _extensionRequestsDefaultAction];
}

- (void)setNotificationActions:(id)a3
{
  if (self->_notificationActions != a3)
  {
    v4 = [a3 copy];
    notificationActions = self->_notificationActions;
    self->_notificationActions = v4;

    v6 = [MEMORY[0x277CBEB18] array];
    v7 = self->_notificationActions;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71___UNNotificationContentExtensionVendorContext_setNotificationActions___block_invoke;
    v9[3] = &unk_278B718D0;
    v10 = v6;
    v8 = v6;
    [(NSArray *)v7 enumerateObjectsUsingBlock:v9];
    [(_UNNotificationContentExtensionVendorContext *)self _extensionDidUpdateNotificationActions:v8];
  }
}

- (void)_extensionWantsToReceiveActionResponses:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v4 = [v5 remoteObjectProxy];
  [v4 _extensionWantsToReceiveActionResponses:v3];
}

- (void)_extensionWantsToBecomeFirstResponder:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v4 = [v5 remoteObjectProxy];
  [v4 _extensionWantsToBecomeFirstResponder:v3];
}

- (void)_extensionDidCompleteNotificationResponse:(id)a3 withOption:(unint64_t)a4
{
  v6 = a3;
  v8 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v7 = [v8 remoteObjectProxy];
  [v7 _extensionDidCompleteNotificationResponse:v6 withOption:a4];
}

- (void)_extensionSetPlayPauseMediaButtonType:(unint64_t)a3
{
  v5 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v4 = [v5 remoteObjectProxy];
  [v4 _extensionSetPlayPauseMediaButtonType:a3];
}

- (void)_extensionSetPlayPauseMediaButtonFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v7 = [v8 remoteObjectProxy];
  [v7 _extensionSetPlayPauseMediaButtonFrame:{x, y, width, height}];
}

- (void)_extensionSetPlayPauseMediaButtonColor:(id)a3
{
  v4 = a3;
  v6 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 _extensionSetPlayPauseMediaButtonColor:v4];
}

- (void)_extensionMediaPlayingPaused
{
  v3 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 _extensionMediaPlayingPaused];
}

- (void)_extensionMediaPlayingStarted
{
  v3 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 _extensionMediaPlayingStarted];
}

- (void)_extensionRequestsDefaultAction
{
  v3 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 _extensionRequestsDefaultAction];
}

- (void)_extensionRequestsDismiss
{
  v3 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 _extensionRequestsDismiss];
}

- (void)_extensionDidUpdateTitle:(id)a3
{
  v4 = a3;
  v6 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 _extensionDidUpdateTitle:v4];
}

- (void)_extensionDidUpdateNotificationActions:(id)a3
{
  v4 = a3;
  v6 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 _extensionDidUpdateNotificationActions:v4];
}

- (void)_extensionDidUpdatePlayPauseMediaButton
{
  v3 = [(_UNNotificationContentExtensionVendorContext *)self _auxiliaryConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 _extensionDidUpdatePlayPauseMediaButton];
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

- (void)_hostDidReceiveNotification:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76___UNNotificationContentExtensionVendorContext__hostDidReceiveNotification___block_invoke;
  v7[3] = &unk_278B717F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_hostDidReceiveNotificationResponse:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse___block_invoke;
  v7[3] = &unk_278B717F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_hostDidReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse_completionHandler___block_invoke;
  block[3] = &unk_278B71948;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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
  v5 = [(_UNNotificationContentExtensionVendorContext *)self _notificationExtension];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v3 = [v5 mediaPlayPauseButtonType];
    if ((v3 - 1) > 1)
    {
      [(_UNNotificationContentExtensionVendorContext *)self _extensionSetPlayPauseMediaButtonType:0];
    }

    else
    {
      [(_UNNotificationContentExtensionVendorContext *)self _extensionSetPlayPauseMediaButtonType:v3];
      [v5 mediaPlayPauseButtonFrame];
      [(_UNNotificationContentExtensionVendorContext *)self _extensionSetPlayPauseMediaButtonFrame:?];
      if (objc_opt_respondsToSelector())
      {
        v4 = [v5 mediaPlayPauseButtonTintColor];
        [(_UNNotificationContentExtensionVendorContext *)self _extensionSetPlayPauseMediaButtonColor:v4];
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