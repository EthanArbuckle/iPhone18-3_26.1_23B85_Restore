@interface AVDismissalExpanseCoordinator
+ (void)coordinateDismissalWithExpanseSessionForPlayer:(id)player cancellable:(BOOL)cancellable dismissalBlock:(id)block;
@end

@implementation AVDismissalExpanseCoordinator

+ (void)coordinateDismissalWithExpanseSessionForPlayer:(id)player cancellable:(BOOL)cancellable dismissalBlock:(id)block
{
  cancellableCopy = cancellable;
  v20 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  blockCopy = block;
  backgroundPIPAuthorizationToken = [playerCopy backgroundPIPAuthorizationToken];

  if (backgroundPIPAuthorizationToken)
  {
    playbackCoordinator = [playerCopy playbackCoordinator];
    coordinationMediumDelegate = [playbackCoordinator coordinationMediumDelegate];

    if (objc_opt_respondsToSelector())
    {
      v12 = coordinationMediumDelegate;
      playbackCoordinator2 = [playerCopy playbackCoordinator];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __107__AVDismissalExpanseCoordinator_coordinateDismissalWithExpanseSessionForPlayer_cancellable_dismissalBlock___block_invoke;
      v16[3] = &unk_1E7208560;
      v17 = blockCopy;
      [v12 playbackCoordinator:playbackCoordinator2 promptForLeaveOrEndSessionAllowingCancellation:cancellableCopy completionHandler:v16];
    }

    else
    {
      v15 = _AVLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "+[AVDismissalExpanseCoordinator coordinateDismissalWithExpanseSessionForPlayer:cancellable:dismissalBlock:]";
        _os_log_impl(&dword_18B49C000, v15, OS_LOG_TYPE_DEFAULT, "%s Playback coordination dismissal delegate not implemented. Dismissing.", buf, 0xCu);
      }

      (*(blockCopy + 2))(blockCopy, 0);
    }
  }

  else
  {
    v14 = _AVLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "+[AVDismissalExpanseCoordinator coordinateDismissalWithExpanseSessionForPlayer:cancellable:dismissalBlock:]";
      _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s Not in Expanse session (AVPlayer.backgroundPIPAuthorizationToken not set). Dismissing.", buf, 0xCu);
    }

    (*(blockCopy + 2))(blockCopy, 0);
  }
}

uint64_t __107__AVDismissalExpanseCoordinator_coordinateDismissalWithExpanseSessionForPlayer_cancellable_dismissalBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v8 = 136315138;
      v9 = "+[AVDismissalExpanseCoordinator coordinateDismissalWithExpanseSessionForPlayer:cancellable:dismissalBlock:]_block_invoke";
      v6 = "%s Playback coordination dismissal delegate completed but cancelled. Not dismissing.";
LABEL_6:
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }
  }

  else if (v5)
  {
    v8 = 136315138;
    v9 = "+[AVDismissalExpanseCoordinator coordinateDismissalWithExpanseSessionForPlayer:cancellable:dismissalBlock:]_block_invoke";
    v6 = "%s Playback coordination dismissal delegate completed. Dismissing.";
    goto LABEL_6;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2);
}

@end