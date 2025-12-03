@interface AVPlayerConnection
- (AVPlayerConnection)initWithWeakReferenceToPlayer:(id)player weakReferenceToPlayerItem:(id)item;
- (BOOL)addItemToPlayQueueAfterPlaybackItemOfItem:(id)item;
- (id)description;
- (uint64_t)removeItemFromPlayQueue;
- (void)dealloc;
- (void)removeItemFromPlayQueue;
@end

@implementation AVPlayerConnection

- (AVPlayerConnection)initWithWeakReferenceToPlayer:(id)player weakReferenceToPlayerItem:(id)item
{
  v21.receiver = self;
  v21.super_class = AVPlayerConnection;
  v7 = [(AVPlayerConnection *)&v21 init];
  v8 = v7;
  if (!player)
  {
    v10 = v7;
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = "playerReference != nil";
    goto LABEL_8;
  }

  if (!item)
  {
    v19 = v7;
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = "playerItemReference != nil";
LABEL_8:
    v20 = [v16 exceptionWithName:v17 reason:AVMethodExceptionReasonWithObjectAndSelector(v8 userInfo:{a2, @"invalid parameter not satisfying: %s", v11, v12, v13, v14, v15, v18), 0}];
    objc_exception_throw(v20);
  }

  if (v7)
  {
    v7->_playerReference = player;
    v8->_playerItemReference = item;
    v8->_status = 0;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPlayerConnection;
  [(AVPlayerConnection *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, player = %@, playerItem = %@>", NSStringFromClass(v4), self, -[AVPlayerConnection player](self, "player"), -[AVPlayerConnection playerItem](self, "playerItem")];
}

- (BOOL)addItemToPlayQueueAfterPlaybackItemOfItem:(id)item
{
  playerItem = [(AVPlayerConnection *)self playerItem];
  player = [(AVPlayerConnection *)self player];
  status = [(AVPlayerConnection *)self status];
  switch(status)
  {
    case 3:
      return 0;
    case 1:
      v21 = MEMORY[0x1E695DF30];
      v22 = *MEMORY[0x1E695D930];
      v23 = @"Cannot connect a player connection that is already connected";
      goto LABEL_24;
    case 2:
      v21 = MEMORY[0x1E695DF30];
      v22 = *MEMORY[0x1E695D930];
      v23 = @"Player connections are one-shot objects.  Cannot connect a player connection that was already disconnected.  To re-connect an AVPlayerItem to an AVPlayer, create a new player AVPlayerConnection object";
LABEL_24:
      v24 = [v21 exceptionWithName:v22 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v23, v9, v10, v11, v12, v13, v25), 0}];
      objc_exception_throw(v24);
  }

  _copyFigPlaybackItem = [playerItem _copyFigPlaybackItem];
  if (item)
  {
    item = [item _copyFigPlaybackItem];
  }

  if ([playerItem status] == 2)
  {
    v15 = -12780;
    goto LABEL_15;
  }

  [playerItem _setPlaybackCoordinator:{objc_msgSend(player, "_playbackCoordinatorWithoutTriggeringFullSetup")}];
  _copyFigPlayer = [player _copyFigPlayer];
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v18)
  {
    v15 = -12782;
    if (!_copyFigPlayer)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v15 = v18(_copyFigPlayer, _copyFigPlaybackItem, item);
  if (_copyFigPlayer)
  {
LABEL_13:
    CFRelease(_copyFigPlayer);
  }

LABEL_14:
  if (!v15)
  {
    v16 = 1;
    v19 = 1;
    goto LABEL_16;
  }

LABEL_15:
  [(AVPlayerConnection *)self willChangeValueForKey:@"error"];
  self->_error = [AVLocalizedErrorWithUnderlyingOSStatus(v15 0)];
  [(AVPlayerConnection *)self didChangeValueForKey:@"error"];
  v16 = 0;
  v19 = 3;
LABEL_16:
  [(AVPlayerConnection *)self willChangeValueForKey:@"status"];
  self->_status = v19;
  [(AVPlayerConnection *)self didChangeValueForKey:@"status"];
  if (_copyFigPlaybackItem)
  {
    CFRelease(_copyFigPlaybackItem);
  }

  if (item)
  {
    CFRelease(item);
  }

  return v16;
}

- (void)removeItemFromPlayQueue
{
  status = [(AVPlayerConnection *)self status];
  switch(status)
  {
    case 1:
      v12 = [-[AVPlayerConnection player](self "player")];
      if (!v12)
      {
        return;
      }

      v11 = v12;
      v13 = [-[AVPlayerConnection playerItem](self "playerItem")];
      if (!v13)
      {
        goto LABEL_11;
      }

      v10 = v13;
      [(AVPlayerConnection *)v11 removeItemFromPlayQueue];
      break;
    case 3:
      return;
    case 2:
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot disconnect a player connection that was already disconnected", v5, v6, v7, v8, v9, v15), 0}];
      objc_exception_throw(v14);
    default:
      v10 = 0;
      v11 = 0;
      break;
  }

  [(AVPlayerConnection *)self willChangeValueForKey:@"status"];
  self->_status = 2;
  [(AVPlayerConnection *)self didChangeValueForKey:@"status"];
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
LABEL_11:

    CFRelease(v11);
  }
}

- (uint64_t)removeItemFromPlayQueue
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v6)
  {
    v6(self, a3);
  }

  playerItem = [a2 playerItem];

  return [playerItem _setPlaybackCoordinator:0];
}

@end