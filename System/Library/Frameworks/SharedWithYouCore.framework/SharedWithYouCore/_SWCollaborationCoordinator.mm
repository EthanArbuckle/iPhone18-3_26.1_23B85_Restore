@interface _SWCollaborationCoordinator
+ (SWCollaborationCoordinator)sharedManager;
- (void)_sendStartCollaborationAction:(id)action;
- (void)_sendUpdateCollaborationParticipantsAction:(id)action;
@end

@implementation _SWCollaborationCoordinator

+ (SWCollaborationCoordinator)sharedManager
{
  v2 = objc_opt_class();

  return [v2 sharedCoordinator];
}

- (void)_sendStartCollaborationAction:(id)action
{
  actionCopy = action;
  actionHandler = [(SWCollaborationCoordinator *)self actionHandler];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2C1D000, v7, OS_LOG_TYPE_DEFAULT, "_sendStartCollaborationAction: invoking the action handler", buf, 2u);
    }

    actionHandler2 = [(SWCollaborationCoordinator *)self actionHandler];
    [actionHandler2 handleStartCollaborationAction:actionCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _SWCollaborationCoordinator;
    [(SWCollaborationCoordinator *)&v9 _sendStartCollaborationAction:actionCopy];
  }
}

- (void)_sendUpdateCollaborationParticipantsAction:(id)action
{
  actionCopy = action;
  actionHandler = [(SWCollaborationCoordinator *)self actionHandler];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74___SWCollaborationCoordinator__sendUpdateCollaborationParticipantsAction___block_invoke;
    block[3] = &unk_1E84126A0;
    block[4] = self;
    v9 = actionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SWCollaborationCoordinator;
    [(SWCollaborationCoordinator *)&v7 _sendUpdateCollaborationParticipantsAction:actionCopy];
  }
}

@end