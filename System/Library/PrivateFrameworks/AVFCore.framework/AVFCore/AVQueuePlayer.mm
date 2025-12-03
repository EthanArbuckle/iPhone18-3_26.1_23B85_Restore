@interface AVQueuePlayer
+ (AVQueuePlayer)queuePlayerWithItems:(NSArray *)items;
+ (void)initialize;
- (AVQueuePlayer)init;
- (AVQueuePlayer)initWithItems:(NSArray *)items;
- (BOOL)canInsertItem:(AVPlayerItem *)item afterItem:(AVPlayerItem *)afterItem;
- (BOOL)canOverlapPlaybackFromPlayerItem:(id)item toPlayerItem:(id)playerItem;
- (NSArray)items;
- (int)_canOverlapPlaybackFromPlayerItem:(id)item toPlayerItem:(id)playerItem;
- (int)_getChannelCountInFirstAudioTrackForItem:(id)item;
- (int)_updateCurrentOverlapStateGiven:(int)given hasStateChanged:(BOOL *)changed;
- (void)_canOverlapPlaybackConditionsChangedFor:(id)for dueTo:(id)to;
- (void)advanceToNextItem;
- (void)dealloc;
- (void)insertItem:(AVPlayerItem *)item afterItem:(AVPlayerItem *)afterItem;
- (void)removeAllItems;
- (void)removeItem:(AVPlayerItem *)item;
- (void)setActionAtItemEnd:(int64_t)end;
@end

@implementation AVQueuePlayer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (AVQueuePlayer)init
{
  v5.receiver = self;
  v5.super_class = AVQueuePlayer;
  v6 = [[AVTelemetryInterval alloc] initAndStartWith:139];
  v2 = [(AVPlayer *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVQueuePlayerInternal);
    v2->_queuePlayer = v3;
    if (v3)
    {
      [(AVQueuePlayer *)v2 setActionAtItemEnd:0];
      +[AVPlayer playbackObjectCreated];
      if ([objc_opt_class() isObservationEnabled])
      {
        v2->_queuePlayer->observationRegistrar = objc_alloc_init(AVQueuePlayerObservationRegistrar);
      }

      v2->_queuePlayer->isOverlapCurrentlyAllowed = 0;
      v2->_queuePlayer->ivarMutex = FigSimpleMutexCreate();
    }

    else
    {

      v2 = 0;
    }
  }

  AVTelemetryIntervalEnd(&v6);
  return v2;
}

+ (AVQueuePlayer)queuePlayerWithItems:(NSArray *)items
{
  v3 = [[self alloc] initWithItems:items];

  return v3;
}

- (AVQueuePlayer)initWithItems:(NSArray *)items
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:140];
  v5 = [(AVQueuePlayer *)self init];
  if (v5)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [(NSArray *)items countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(items);
          }

          [(AVQueuePlayer *)v5 insertItem:*(*(&v10 + 1) + 8 * v8++) afterItem:0];
        }

        while (v6 != v8);
        v6 = [(NSArray *)items countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }
  }

  AVTelemetryIntervalEnd(&v14);
  return v5;
}

- (void)dealloc
{
  if (self->_queuePlayer)
  {
    FigSimpleMutexDestroy();
  }

  v3.receiver = self;
  v3.super_class = AVQueuePlayer;
  [(AVPlayer *)&v3 dealloc];
}

- (void)setActionAtItemEnd:(int64_t)end
{
  v3.receiver = self;
  v3.super_class = AVQueuePlayer;
  [(AVPlayer *)&v3 _setActionAtItemEnd:end allowingAdvance:1];
}

- (NSArray)items
{
  [(AVQueuePlayerObservationRegistrar *)self->_queuePlayer->observationRegistrar accessWithKey:@"items" on:self];

  return [(AVPlayer *)self _items];
}

- (void)advanceToNextItem
{
  v3 = [[AVTelemetryInterval alloc] initAndStartWith:141];
  [(AVQueuePlayerObservationRegistrar *)self->_queuePlayer->observationRegistrar willChangeValueFor:@"items" on:self];
  [(AVPlayer *)self _advanceToNextItem];
  [(AVQueuePlayerObservationRegistrar *)self->_queuePlayer->observationRegistrar didChangeValueFor:@"items" on:self];
  AVTelemetryIntervalEnd(&v3);
}

- (BOOL)canInsertItem:(AVPlayerItem *)item afterItem:(AVPlayerItem *)afterItem
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:142];
  _items = [(AVPlayer *)self _items];
  if (([_items containsObject:item] & 1) == 0)
  {
    v8 = [(AVPlayerItem *)item _canBeAttachedToPlayer:self];
    if (afterItem)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  v8 = 0;
  if (!afterItem)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [_items containsObject:afterItem];
LABEL_6:
  AVTelemetryIntervalEnd(&v11);
  return v8 & v9;
}

- (void)insertItem:(AVPlayerItem *)item afterItem:(AVPlayerItem *)afterItem
{
  v15 = [[AVTelemetryInterval alloc] initAndStartWith:143];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Item must be a non-nil instance of AVPlayerItem.", v8, v9, v10, v11, v12, v14), 0}];
    objc_exception_throw(v13);
  }

  [(AVQueuePlayerObservationRegistrar *)self->_queuePlayer->observationRegistrar willChangeValueFor:@"items" on:self];
  [(AVPlayer *)self _insertItem:item afterItem:afterItem];
  [(AVQueuePlayerObservationRegistrar *)self->_queuePlayer->observationRegistrar didChangeValueFor:@"items" on:self];
  AVTelemetryIntervalEnd(&v15);
}

- (void)removeItem:(AVPlayerItem *)item
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:144];
  [(AVQueuePlayerObservationRegistrar *)self->_queuePlayer->observationRegistrar willChangeValueFor:@"items" on:self];
  [(AVPlayer *)self _removeItem:item];
  [(AVQueuePlayerObservationRegistrar *)self->_queuePlayer->observationRegistrar didChangeValueFor:@"items" on:self];
  AVTelemetryIntervalEnd(&v5);
}

- (void)removeAllItems
{
  v3 = [[AVTelemetryInterval alloc] initAndStartWith:145];
  [(AVQueuePlayerObservationRegistrar *)self->_queuePlayer->observationRegistrar willChangeValueFor:@"items" on:self];
  [(AVPlayer *)self _removeAllItems];
  [(AVQueuePlayerObservationRegistrar *)self->_queuePlayer->observationRegistrar didChangeValueFor:@"items" on:self];
  AVTelemetryIntervalEnd(&v3);
}

- (int)_canOverlapPlaybackFromPlayerItem:(id)item toPlayerItem:(id)playerItem
{
  if ([(AVPlayer *)self actionAtItemEnd])
  {
    return 256;
  }

  multichannelAudioStrategy = [(AVPlayer *)self multichannelAudioStrategy];
  if ([(NSString *)multichannelAudioStrategy isEqualToString:@"PreferExclusivePassthrough"]|| [(NSString *)multichannelAudioStrategy isEqualToString:@"PreferAC3ViaExclusivePassthrough"])
  {
    return 512;
  }

  if ([(AVPlayer *)self isExternalPlaybackActive]&& [(AVPlayer *)self externalPlaybackType]== 1)
  {
    return 768;
  }

  if ([(AVPlayer *)self _isBufferedAirPlayActive]&& !_os_feature_enabled_impl())
  {
    return 1024;
  }

  asset = [item asset];
  asset2 = [playerItem asset];
  if (!-[AVPlayer _supportsAdvanceTimeForOverlappedPlayback](self, "_supportsAdvanceTimeForOverlappedPlayback") && (_os_feature_enabled_impl() & 1) == 0 && (([asset _isStreaming] & 1) != 0 || (objc_msgSend(asset2, "_isStreaming") & 1) != 0))
  {
    return 1280;
  }

  if (([asset _isStreaming] & 1) == 0 && objc_msgSend(objc_msgSend(asset, "tracks"), "count") != 1)
  {
    return 1536;
  }

  if (([asset2 _isStreaming] & 1) == 0 && objc_msgSend(objc_msgSend(asset2, "tracks"), "count") != 1)
  {
    return 1792;
  }

  if (([asset _isStreaming] & 1) == 0 && !objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(asset, "tracks"), "firstObject"), "mediaType"), "isEqual:", @"soun"))
  {
    return 1536;
  }

  if (([asset2 _isStreaming] & 1) == 0 && !objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(asset2, "tracks"), "firstObject"), "mediaType"), "isEqual:", @"soun"))
  {
    return 2560;
  }

  if (![(AVPlayer *)self _isBufferedAirPlayActive])
  {
    return 1;
  }

  v11 = [(AVQueuePlayer *)self _getChannelCountInFirstAudioTrackForItem:item];
  v12 = [(AVQueuePlayer *)self _getChannelCountInFirstAudioTrackForItem:playerItem];
  result = 2;
  if (v11 >= 1 && v12 >= 1)
  {
    if (v11 >= 3)
    {
      v13 = 4;
    }

    else
    {
      v13 = 3072;
    }

    if (v11 >= 3)
    {
      v14 = 2816;
    }

    else
    {
      v14 = 3;
    }

    if (v12 <= 2)
    {
      return v14;
    }

    else
    {
      return v13;
    }
  }

  return result;
}

- (int)_updateCurrentOverlapStateGiven:(int)given hasStateChanged:(BOOL *)changed
{
  FigSimpleMutexLock();
  queuePlayer = self->_queuePlayer;
  isOverlapCurrentlyAllowed = queuePlayer->isOverlapCurrentlyAllowed;
  if (isOverlapCurrentlyAllowed)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3328;
  }

  if (given == 2)
  {
    given = v9;
  }

  v10 = given != 0;
  if (isOverlapCurrentlyAllowed != v10)
  {
    queuePlayer->isOverlapCurrentlyAllowed = v10;
  }

  FigSimpleMutexUnlock();
  if (changed)
  {
    *changed = isOverlapCurrentlyAllowed != v10;
  }

  return given;
}

- (BOOL)canOverlapPlaybackFromPlayerItem:(id)item toPlayerItem:(id)playerItem
{
  v6 = [AVQueuePlayer _canOverlapPlaybackFromPlayerItem:"_canOverlapPlaybackFromPlayerItem:toPlayerItem:" toPlayerItem:?];
  if ([(AVPlayer *)self currentItem]== item)
  {
    LOBYTE(v6) = [(AVQueuePlayer *)self _updateCurrentOverlapStateGiven:v6 hasStateChanged:0];
  }

  if (dword_1ED5AC198)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v6 != 0;
}

- (void)_canOverlapPlaybackConditionsChangedFor:(id)for dueTo:(id)to
{
  if ([@"AVPlayerItemTracksDidChangeNotification" isEqual:to] && -[AVQueuePlayer supportsAdvanceTimeForOverlappedPlayback](self, "supportsAdvanceTimeForOverlappedPlayback"))
  {
    [for _cacheTrackInformation];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__AVQueuePlayer_AVPlayer_OverlapPlaybackConditions___canOverlapPlaybackConditionsChangedFor_dueTo___block_invoke;
  v8[3] = &unk_1E7460E90;
  v8[4] = self;
  v8[5] = to;
  v8[6] = for;
  AVSerializeOnQueueAsyncIfNecessary(global_queue, v8);
}

void __99__AVQueuePlayer_AVPlayer_OverlapPlaybackConditions___canOverlapPlaybackConditionsChangedFor_dueTo___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [*(a1 + 32) items];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  if ([v2 count] < 2 || (v4 = objc_msgSend(v2, "objectAtIndex:", 1)) == 0)
  {
    [*(a1 + 32) _updateCurrentOverlapStateGiven:3584 hasStateChanged:&v19];
    if (v19 != 1)
    {
      return;
    }

    if (dword_1ED5AC198)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = [*(a1 + 32) _stateDispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__AVQueuePlayer_AVPlayer_OverlapPlaybackConditions___canOverlapPlaybackConditionsChangedFor_dueTo___block_invoke_69;
    block[3] = &unk_1E7460C00;
    block[4] = *(a1 + 32);
    v12 = block;
    goto LABEL_24;
  }

  v5 = v4;
  v6 = *(a1 + 48);
  v8 = v4 == v6 || v6 == 0 || v3 == v6;
  if (v8 && (![*(a1 + 32) _isBufferedAirPlayActive] || objc_msgSend(v3, "_isReadyForInspectionOfTracks") && objc_msgSend(v5, "_isReadyForInspectionOfTracks")))
  {
    [*(a1 + 32) _updateCurrentOverlapStateGiven:objc_msgSend(*(a1 + 32) hasStateChanged:{"_canOverlapPlaybackFromPlayerItem:toPlayerItem:", v3, v5), &v19}];
    if (v19 == 1)
    {
      if (dword_1ED5AC198)
      {
        v18 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v11 = [*(a1 + 32) _stateDispatchQueue];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __99__AVQueuePlayer_AVPlayer_OverlapPlaybackConditions___canOverlapPlaybackConditionsChangedFor_dueTo___block_invoke_75;
      v15[3] = &unk_1E7460C00;
      v15[4] = *(a1 + 32);
      v12 = v15;
LABEL_24:
      dispatch_async(v11, v12);
    }
  }
}

uint64_t __99__AVQueuePlayer_AVPlayer_OverlapPlaybackConditions___canOverlapPlaybackConditionsChangedFor_dueTo___block_invoke_69(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"AVQueuePlayerCanOverlapPlaybackConditionsDidChangeNotification" object:v3];
}

uint64_t __99__AVQueuePlayer_AVPlayer_OverlapPlaybackConditions___canOverlapPlaybackConditionsChangedFor_dueTo___block_invoke_75(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"AVQueuePlayerCanOverlapPlaybackConditionsDidChangeNotification" object:v3];
}

- (int)_getChannelCountInFirstAudioTrackForItem:(id)item
{
  v16 = *MEMORY[0x1E69E9840];
  [item _setClientCaresAboutOverlappedPlayback];
  LODWORD(v4) = [item _isReadyForInspectionOfTracks];
  if (v4)
  {
    tracks = [item tracks];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [tracks countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v12;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(tracks);
          }

          assetTrack = [*(*(&v11 + 1) + 8 * v8) assetTrack];
          if ([objc_msgSend(assetTrack "mediaType")])
          {
            if (assetTrack)
            {
              LODWORD(v4) = [item _audioChannelCountForTrack:assetTrack];
              if (!v4)
              {
                [item _cacheTrackInformation];
                LODWORD(v4) = [item _audioChannelCountForTrack:assetTrack];
              }
            }

            else
            {
              LODWORD(v4) = 0;
            }

            return v4;
          }

          ++v8;
        }

        while (v6 != v8);
        v4 = [tracks countByEnumeratingWithState:&v11 objects:v15 count:16];
        v6 = v4;
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

  return v4;
}

@end