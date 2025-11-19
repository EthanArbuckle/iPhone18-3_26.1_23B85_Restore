@interface _SWCollaborationCoordinator
+ (SWCollaborationCoordinator)sharedManager;
- (void)_sendStartCollaborationAction:(id)a3;
- (void)_sendUpdateCollaborationParticipantsAction:(id)a3;
@end

@implementation _SWCollaborationCoordinator

+ (SWCollaborationCoordinator)sharedManager
{
  v2 = objc_opt_class();

  return [v2 sharedCoordinator];
}

- (void)_sendStartCollaborationAction:(id)a3
{
  v4 = a3;
  v5 = [(SWCollaborationCoordinator *)self actionHandler];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2C1D000, v7, OS_LOG_TYPE_DEFAULT, "_sendStartCollaborationAction: invoking the action handler", buf, 2u);
    }

    v8 = [(SWCollaborationCoordinator *)self actionHandler];
    [v8 handleStartCollaborationAction:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _SWCollaborationCoordinator;
    [(SWCollaborationCoordinator *)&v9 _sendStartCollaborationAction:v4];
  }
}

- (void)_sendUpdateCollaborationParticipantsAction:(id)a3
{
  v4 = a3;
  v5 = [(SWCollaborationCoordinator *)self actionHandler];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74___SWCollaborationCoordinator__sendUpdateCollaborationParticipantsAction___block_invoke;
    block[3] = &unk_1E84126A0;
    block[4] = self;
    v9 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SWCollaborationCoordinator;
    [(SWCollaborationCoordinator *)&v7 _sendUpdateCollaborationParticipantsAction:v4];
  }
}

@end