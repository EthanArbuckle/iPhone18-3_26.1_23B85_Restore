@interface MPAVItem
+ (id)URLFromPath:(id)path;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_playerItemDurationIfAvailable;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)forwardPlaybackEndTime;
- (AVAsset)asset;
- (AVPlayerItem)playerItem;
- (AVPlayerItemAccessLog)accessLog;
- (BOOL)_shouldPublishArtworkURL;
- (BOOL)displayableTextLoaded;
- (BOOL)isPlaceholder;
- (BOOL)isStreamable;
- (BOOL)supportsFastForward;
- (BOOL)supportsRating;
- (BOOL)supportsRewind;
- (CGSize)naturalSize;
- (CGSize)presentationSize;
- (MPAVItem)initWithAsset:(id)asset;
- (MPAVItem)initWithPlayerItem:(id)item;
- (MPAVItem)initWithURL:(id)l;
- (MPAVItem)initWithURL:(id)l options:(id)options;
- (MPAVItemObserver)observer;
- (MPNowPlayingContentItem)contentItem;
- (MPQueueFeeder)feeder;
- (NSArray)adjunctErrors;
- (NSError)playbackError;
- (NSNumber)bookmarkTime;
- (NSNumber)initialPlaybackStartTime;
- (NSNumber)playbackInfoStartTime;
- (NSString)lyrics;
- (NSString)storeItemID;
- (OpaqueCMTimebase)timebase;
- (double)_durationFromExternalMetadataIfAvailable;
- (double)_expectedStartTimeWithPlaybackInfo:(id)info;
- (double)_expectedStopTimeWithPlaybackInfo:(id)info;
- (double)_playableDurationForLoadedTimeRanges:(id)ranges;
- (double)durationIfAvailable;
- (double)durationInSeconds;
- (double)timeOfSeekableEnd;
- (double)timeOfSeekableStart;
- (id)_contentItemDeviceSpecificUserInfo;
- (id)_contentItemUserInfo;
- (id)_imageChapterTrackIDsForAsset:(id)asset;
- (id)_initialPlaybackStartTimeForPlaybackInfo:(id)info;
- (id)_seekableTimeRanges;
- (id)artworkCatalogBlock;
- (id)artworkCatalogForPlaybackTime:(double)time;
- (id)description;
- (id)path;
- (id)url;
- (int64_t)likedState;
- (void)_addObservationsForAVPlayerItem:(id)item;
- (void)_clearAssetNow;
- (void)_copyPlayerItem;
- (void)_internalLikedStateDidChangeNotification:(id)notification;
- (void)_itemAttributeAvailableKey:(id)key;
- (void)_likedStateDidChange;
- (void)_loadAssetAndPlayerItemWithTask:(id)task completion:(id)completion;
- (void)_loadAssetProperties;
- (void)_performContentItemUpdate:(id)update debounceWithIdentifier:(id)identifier;
- (void)_pickupContentItemFrom:(id)from;
- (void)_removeObservationsForAVPlayerItem:(id)item;
- (void)_setCurrentPlaybackRate:(float)rate;
- (void)_setNeedsPersistedLikedStateUpdate;
- (void)_updateContentItemIncludingPlaybackState:(BOOL)state;
- (void)_updateDurationSnapshotWithElapsedTime:(double)time playbackRate:(float)rate;
- (void)_updateHasFinishedDownloading;
- (void)_updateSoundCheckVolumeNormalizationForPlayerItem;
- (void)addAdjunctError:(id)error;
- (void)clearAdjunctErrors;
- (void)dealloc;
- (void)invalidateContentItemAudioFormatInfo;
- (void)invalidateContentItemDeviceSpecificUserInfo;
- (void)invalidateContentItemUserInfo;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForRate:(float)rate completionHandler:(id)handler;
- (void)reevaluateHasProtectedContent;
- (void)reevaluateType;
- (void)replacePlayerItemWithPlayerItem:(id)item;
- (void)resolvePlaybackError:(id)error withCompletion:(id)completion;
- (void)setAutoPlayItem:(BOOL)item;
- (void)setContentItemID:(id)d queueSectionID:(id)iD queueItemID:(id)itemID;
- (void)setExplicitBadge:(id)badge;
- (void)setExplicitContentState:(int64_t)state;
- (void)setFeeder:(id)feeder;
- (void)setLastChangeDirection:(int64_t)direction;
- (void)setLastPlayPerformanceTime:(double)time;
- (void)setLikedState:(int64_t)state forUserIdentity:(id)identity;
- (void)setPlayerItem:(id)item;
- (void)setSharedListeningItem:(BOOL)item;
- (void)setSoundCheckVolumeNormalization:(float)normalization;
- (void)setupEQPresetWithDefaultPreset:(int64_t)preset;
- (void)setupWithPlaybackInfo;
@end

@implementation MPAVItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  contentItemID = [(MPAVItem *)self contentItemID];
  v6 = [v3 stringWithFormat:@"<%@: %p> (%@)", v4, self, contentItemID];

  return v6;
}

- (BOOL)isPlaceholder
{
  v2 = objc_opt_class();

  return [v2 isPlaceholder];
}

- (BOOL)supportsRewind
{
  if (![(MPAVItem *)self isAssetLoaded])
  {
    return 1;
  }

  playerItem = [(MPAVItem *)self playerItem];
  canPlayFastReverse = [playerItem canPlayFastReverse];

  return canPlayFastReverse;
}

- (BOOL)supportsFastForward
{
  if ([(MPAVItem *)self isAssetLoaded])
  {
    playerItem = [(MPAVItem *)self playerItem];
    canPlayFastForward = [playerItem canPlayFastForward];

    return canPlayFastForward;
  }

  else
  {

    return [(MPAVItem *)self isAlwaysLive];
  }
}

- (int64_t)likedState
{
  result = self->_likedState;
  if (!result)
  {
    result = [(MPAVItem *)self _persistedLikedState];
    self->_likedState = result;
  }

  return result;
}

- (id)artworkCatalogBlock
{
  mediaItem = [(MPAVItem *)self mediaItem];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__MPAVItem_MPArtworkCatalog__artworkCatalogBlock__block_invoke;
  aBlock[3] = &unk_1E76753F8;
  v7 = mediaItem;
  v3 = mediaItem;
  v4 = _Block_copy(aBlock);

  return v4;
}

id __49__MPAVItem_MPArtworkCatalog__artworkCatalogBlock__block_invoke(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) chapters];
  v5 = [v4 count];

  if (!v5 || ([*(a1 + 32) chapterOfType:2 atTime:a2], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "artworkCatalog"), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = [*(a1 + 32) artworkCatalog];
  }

  return v7;
}

- (id)artworkCatalogForPlaybackTime:(double)time
{
  artworkCatalogBlock = [(MPAVItem *)self artworkCatalogBlock];
  v5 = artworkCatalogBlock;
  if (artworkCatalogBlock)
  {
    v6 = (*(artworkCatalogBlock + 16))(artworkCatalogBlock, time);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MPAVItemObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)clearAdjunctErrors
{
  os_unfair_lock_lock(&self->_lock);
  adjunctErrors = self->_adjunctErrors;
  self->_adjunctErrors = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addAdjunctError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPAVItem.m" lineNumber:2010 description:@"Error must be nonnil"];
  }

  os_unfair_lock_lock(&self->_lock);
  adjunctErrors = self->_adjunctErrors;
  if (adjunctErrors)
  {
    [(NSMutableArray *)adjunctErrors addObject:errorCopy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithObject:errorCopy];
    v7 = self->_adjunctErrors;
    self->_adjunctErrors = v6;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)adjunctErrors
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_adjunctErrors copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLastPlayPerformanceTime:(double)time
{
  self->_lastPlayPerformanceTime = time;
  if (MSVDeviceOSIsInternalInstall())
  {

    [(MPAVItem *)self invalidateContentItemUserInfo];
  }
}

- (void)_updateHasFinishedDownloading
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self->_hasFinishedDownloading && [(MPAVItem *)self isAssetLoaded])
  {
    playerItem = [(MPAVItem *)self playerItem];
    asset = [playerItem asset];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([asset URL], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isFileURL"), v5, v6))
    {
      self->_hasFinishedDownloading = 1;
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
      if (playerItem)
      {
        [playerItem duration];
        if ((v24.flags & 0x1D) == 1)
        {
          loadedTimeRanges = [playerItem loadedTimeRanges];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v8 = [loadedTimeRanges countByEnumeratingWithState:&v20 objects:v27 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v21;
            v11 = 0.0;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v21 != v10)
                {
                  objc_enumerationMutation(loadedTimeRanges);
                }

                v13 = *(*(&v20 + 1) + 8 * i);
                if (v13)
                {
                  [v13 CMTimeRangeValue];
                }

                else
                {
                  memset(v19, 0, sizeof(v19));
                  v18 = 0u;
                }

                time = *&v19[1];
                v11 = v11 + CMTimeGetSeconds(&time);
              }

              v9 = [loadedTimeRanges countByEnumeratingWithState:&v20 objects:v27 count:16];
            }

            while (v9);
          }

          else
          {
            v11 = 0.0;
          }

          time = v24;
          Seconds = CMTimeGetSeconds(&time);
          if (v11 - self->_lastLoggedTotalDuration > Seconds / 50.0)
          {
            v15 = os_log_create("com.apple.amp.mediaplayer", "Playback");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(time.value) = 138543874;
              *(&time.value + 4) = self;
              LOWORD(time.flags) = 2048;
              *(&time.flags + 2) = v11;
              HIWORD(time.epoch) = 2048;
              v26 = Seconds;
              _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "🎥 %{public}@ loadedTimeRanges %.2f of %.2f", &time, 0x20u);
            }

            self->_lastLoggedTotalDuration = v11;
          }

          if (v11 >= Seconds)
          {
            v16 = os_log_create("com.apple.amp.mediaplayer", "Playback");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(time.value) = 138543874;
              *(&time.value + 4) = self;
              LOWORD(time.flags) = 2048;
              *(&time.flags + 2) = v11;
              HIWORD(time.epoch) = 2048;
              v26 = Seconds;
              _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_DEFAULT, "🎥 %{public}@ Finished downloading asset with loadedTimeRanges: %.2f of %.2f", &time, 0x20u);
            }

            self->_hasFinishedDownloading = 1;
          }
        }
      }

      if (!self->_hasFinishedDownloading)
      {
        goto LABEL_31;
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPAVItemHasFinishedDownloadingDidChangeNotification" object:self];

LABEL_31:
  }
}

- (void)resolvePlaybackError:(id)error withCompletion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  feeder = [(MPAVItem *)self feeder];
  v9 = [feeder errorResolverForItem:self];
  if (v9)
  {
    v10 = [[MPAVErrorResolverBlockHandler alloc] initWithErrorResolver:v9];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__MPAVItem_resolvePlaybackError_withCompletion___block_invoke;
    v11[3] = &unk_1E7681D70;
    v12 = completionCopy;
    [(MPAVErrorResolverBlockHandler *)v10 setResolutionHandler:v11];
    [(MPAVErrorResolverBlockHandler *)v10 resolveError:errorCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

uint64_t __48__MPAVItem_resolvePlaybackError_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * (a2 == 1);
    }

    return (*(result + 16))(result, v3, 0);
  }

  return result;
}

- (void)replacePlayerItemWithPlayerItem:(id)item
{
  itemCopy = item;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MPAVItemPlayerItemWillChangeNotification" object:self];

  assetQueue = self->_assetQueue;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __44__MPAVItem_replacePlayerItemWithPlayerItem___block_invoke;
  v12 = &unk_1E76823C0;
  selfCopy = self;
  v14 = itemCopy;
  v7 = itemCopy;
  dispatch_sync(assetQueue, &v9);
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"MPAVItemPlayerItemDidChangeNotification" object:self];

  [(MPAVItem *)self _updateSoundCheckVolumeNormalizationForPlayerItem];
  [(MPAVItem *)self updatePlayerItemMetadata];
}

- (void)reevaluateType
{
  v42 = *MEMORY[0x1E69E9840];
  asset = [(MPAVItem *)self asset];
  v4 = [(MPAVItem *)self _imageChapterTrackIDsForAsset:asset];

  if ([(MPAVItem *)self isAssetLoaded])
  {
    playerItem = [(MPAVItem *)self playerItem];
    hasVideo = [playerItem hasVideo];

    if (hasVideo)
    {
      tracks = os_log_create("com.apple.amp.mediaplayer", "Playback");
      if (os_log_type_enabled(tracks, OS_LOG_TYPE_DEFAULT))
      {
        type = self->_type;
        if (type >= 3)
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown - %ld", self->_type];
        }

        else
        {
          v9 = off_1E767FF30[type];
        }

        *buf = 138543618;
        v39 = v9;
        v40 = 2114;
        v41 = @"Video";
        _os_log_impl(&dword_1A238D000, tracks, OS_LOG_TYPE_DEFAULT, "Updating item type [hasVideo]: %{public}@ -> %{public}@", buf, 0x16u);
      }

      v10 = 2;
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      playerItem2 = [(MPAVItem *)self playerItem];
      tracks = [playerItem2 tracks];

      v12 = [tracks countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v12)
      {
        v13 = v12;
        v10 = 0;
        v14 = *v34;
        v31 = *MEMORY[0x1E6987608];
        v32 = *MEMORY[0x1E69875A0];
        v29 = *MEMORY[0x1E69875E8];
        v30 = *MEMORY[0x1E69875E0];
        v28 = *MEMORY[0x1E69875B8];
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(tracks);
            }

            v16 = *(*(&v33 + 1) + 8 * i);
            assetTrack = [v16 assetTrack];
            if ([v16 isEnabled])
            {
              v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(assetTrack, "trackID")}];
              v19 = [v4 containsObject:v18];

              if ((v19 & 1) == 0)
              {
                v20 = v4;
                mediaType = [assetTrack mediaType];
                if ([mediaType isEqualToString:v32])
                {
                  if (v10 <= 0)
                  {
                    v22 = os_log_create("com.apple.amp.mediaplayer", "Playback");
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      v23 = self->_type;
                      if (v23 >= 3)
                      {
                        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown - %ld", self->_type];
                      }

                      else
                      {
                        v24 = off_1E767FF30[v23];
                      }

                      *buf = 138543618;
                      v39 = v24;
                      v40 = 2114;
                      v41 = @"Audio";
                      _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEFAULT, "Updating item type [tracks]: %{public}@ -> %{public}@", buf, 0x16u);
                    }
                  }

                  v10 = 1;
                }

                else if (([mediaType isEqualToString:v31] & 1) != 0 || (objc_msgSend(mediaType, "isEqualToString:", v30) & 1) != 0 || (objc_msgSend(mediaType, "isEqualToString:", v29) & 1) != 0 || objc_msgSend(mediaType, "isEqualToString:", v28))
                {
                  v25 = os_log_create("com.apple.amp.mediaplayer", "Playback");
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    v26 = self->_type;
                    if (v26 >= 3)
                    {
                      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown - %ld", self->_type];
                    }

                    else
                    {
                      v27 = off_1E767FF30[v26];
                    }

                    *buf = 138543618;
                    v39 = v27;
                    v40 = 2114;
                    v41 = @"Video";
                    _os_log_impl(&dword_1A238D000, v25, OS_LOG_TYPE_DEFAULT, "Updating item type [tracks]: %{public}@ -> %{public}@", buf, 0x16u);
                  }

                  v10 = 2;
                  v4 = v20;
                  goto LABEL_42;
                }

                v4 = v20;
              }
            }
          }

          v13 = [tracks countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v10 = 0;
      }
    }

LABEL_42:
  }

  else
  {
    v10 = 0;
  }

  [(MPAVItem *)self willChangeValueForKey:@"type"];
  self->_type = v10;
  [(MPAVItem *)self didChangeValueForKey:@"type"];
}

- (void)reevaluateHasProtectedContent
{
  if (!self->_hasLoadedHasProtectedContent && [(MPAVItem *)self isAssetLoaded])
  {
    playerItem = [(MPAVItem *)self playerItem];
    status = [playerItem status];

    if (status == 1)
    {
      self->_hasLoadedHasProtectedContent = 1;
      self->_hasProtectedContent = [(AVAsset *)self->_asset hasProtectedContent];
    }
  }
}

- (void)invalidateContentItemAudioFormatInfo
{
  if (self->_contentItem)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __48__MPAVItem_invalidateContentItemAudioFormatInfo__block_invoke;
    v2[3] = &unk_1E767FEE8;
    v2[4] = self;
    [(MPAVItem *)self _performContentItemUpdate:v2 debounceWithIdentifier:@"audioFormatInfo"];
  }
}

- (void)invalidateContentItemDeviceSpecificUserInfo
{
  if (self->_contentItem)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __55__MPAVItem_invalidateContentItemDeviceSpecificUserInfo__block_invoke;
    v2[3] = &unk_1E767FEE8;
    v2[4] = self;
    [(MPAVItem *)self _performContentItemUpdate:v2 debounceWithIdentifier:@"deviceSpecificUserInfo"];
  }
}

void __55__MPAVItem_invalidateContentItemDeviceSpecificUserInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _contentItemDeviceSpecificUserInfo];
  [v3 setDeviceSpecificUserInfo:v4];
}

- (void)invalidateContentItemUserInfo
{
  if (self->_contentItem)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __41__MPAVItem_invalidateContentItemUserInfo__block_invoke;
    v2[3] = &unk_1E767FEE8;
    v2[4] = self;
    [(MPAVItem *)self _performContentItemUpdate:v2 debounceWithIdentifier:@"userInfo"];
  }
}

void __41__MPAVItem_invalidateContentItemUserInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _contentItemUserInfo];
  [v3 setUserInfo:v4];
}

- (void)setExplicitContentState:(int64_t)state
{
  if (self->_explicitContentState != state)
  {
    self->_explicitContentState = state;
    [(MPAVItem *)self invalidateContentItemUserInfo];
  }
}

- (void)setSharedListeningItem:(BOOL)item
{
  if (self->_sharedListeningItem != item)
  {
    self->_sharedListeningItem = item;
    [(MPAVItem *)self invalidateContentItemUserInfo];
  }
}

- (void)setAutoPlayItem:(BOOL)item
{
  if (self->_autoPlayItem != item)
  {
    self->_autoPlayItem = item;
    [(MPAVItem *)self invalidateContentItemUserInfo];
  }
}

- (void)_setNeedsPersistedLikedStateUpdate
{
  likedState = self->_likedState;
  self->_likedState = 0;
  if (likedState)
  {
    likedState = [(MPAVItem *)self likedState];
    if (likedState != likedState)
    {
      self->_likedState = likedState;

      [(MPAVItem *)self _likedStateDidChange];
    }
  }
}

- (void)_setCurrentPlaybackRate:(float)rate
{
  if (vabds_f32(self->_currentPlaybackRate, rate) > 0.00000011921)
  {
    self->_currentPlaybackRate = rate;
    [(MPAVItem *)self _currentPlaybackRateDidChange:?];
  }
}

- (double)_expectedStopTimeWithPlaybackInfo:(id)info
{
  v4 = [info objectForKey:@"MPAVItemPlaybackProperties_EndTime"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
  }

  else
  {
    memset(&v9[1], 0, sizeof(CMTime));
    [(MPAVItem *)self _playerItemDurationIfAvailable];
    if (0 >> 96 == 1)
    {
      v9[0] = v9[1];
      Seconds = CMTimeGetSeconds(v9);
    }

    else
    {
      [(MPAVItem *)self durationFromExternalMetadata];
    }
  }

  v7 = Seconds;

  return v7;
}

- (double)_expectedStartTimeWithPlaybackInfo:(id)info
{
  v3 = [info objectForKey:@"MPAVItemPlaybackProperties_StartTime"];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)_updateDurationSnapshotWithElapsedTime:(double)time playbackRate:(float)rate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__MPAVItem__updateDurationSnapshotWithElapsedTime_playbackRate___block_invoke;
  v4[3] = &unk_1E767FEC0;
  v4[4] = self;
  *&v4[5] = time;
  rateCopy = rate;
  [(MPAVItem *)self _performContentItemUpdate:v4 debounceWithIdentifier:@"durationSnapshot"];
}

void __64__MPAVItem__updateDurationSnapshotWithElapsedTime_playbackRate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setInTransition:{objc_msgSend(*(a1 + 32), "isInTransition")}];
  [v6 setAlwaysLiveItem:{objc_msgSend(*(a1 + 32), "isAlwaysLive")}];
  LODWORD(v3) = *(a1 + 48);
  [v6 setElapsedTime:*(a1 + 40) playbackRate:v3];
  [*(a1 + 32) defaultPlaybackRate];
  [v6 setDefaultPlaybackRate:?];
  v4 = *(a1 + 32);
  if (*(v4 + 202) == 1)
  {
    if ([*(v4 + 24) isPlaybackBufferFull])
    {
      v5 = 0;
    }

    else
    {
      v5 = [*(*(a1 + 32) + 24) isPlaybackLikelyToKeepUp] ^ 1;
    }
  }

  else
  {
    v5 = 1;
  }

  [v6 setLoading:v5];
}

- (void)setupWithPlaybackInfo
{
  v52 = *MEMORY[0x1E69E9840];
  if ([(MPAVItem *)self isAssetLoaded])
  {
    playerItem = [(MPAVItem *)self playerItem];
    playbackInfo = [(MPAVItem *)self playbackInfo];
    initialPlaybackStartTimeOverride = [(MPAVItem *)self initialPlaybackStartTimeOverride];
    v6 = initialPlaybackStartTimeOverride;
    if (initialPlaybackStartTimeOverride)
    {
      [initialPlaybackStartTimeOverride doubleValue];
      v8 = v7;
    }

    else
    {
      v9 = [(MPAVItem *)self _initialPlaybackStartTimeForPlaybackInfo:playbackInfo];
      [v9 doubleValue];
      v8 = v10;
    }

    memset(&v49, 0, sizeof(v49));
    if (!playerItem || ([playerItem currentTime], (v49.flags & 0x1D) != 1) || (buf = v49, vabdd_f64(CMTimeGetSeconds(&buf), v8) >= 0.01))
    {
      v11 = os_log_create("com.apple.amp.mediaplayer", "Playback");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        initialPlaybackStartTimeOverride2 = [(MPAVItem *)self initialPlaybackStartTimeOverride];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = self;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = v8;
        HIWORD(buf.epoch) = 1024;
        v51 = initialPlaybackStartTimeOverride2 != 0;
        _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Seeking to start time: %f [override: %{BOOL}u]", &buf, 0x1Cu);
      }

      CMTimeMakeWithSeconds(&buf, v8, 10000);
      v47 = *MEMORY[0x1E6960CC0];
      v48 = *(MEMORY[0x1E6960CC0] + 16);
      v45 = v47;
      v46 = v48;
      [playerItem seekToTime:&buf toleranceBefore:&v47 toleranceAfter:&v45 completionHandler:0];
    }

    v13 = [playbackInfo objectForKey:@"MPAVItemPlaybackProperties_EndTime"];
    v14 = v13;
    if (v13)
    {
      [v13 doubleValue];
      v16 = v15;
      v17 = os_log_create("com.apple.amp.mediaplayer", "Playback");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 138543618;
        *(&buf.value + 4) = self;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = v16;
        _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting forward playback end time to: %f", &buf, 0x16u);
      }

      CMTimeMakeWithSeconds(&v44, v16, 10000);
      buf = v44;
      [playerItem setForwardPlaybackEndTime:&buf];
    }

    v18 = [playbackInfo objectForKey:@"MPAVItemPlaybackProperties_AudibleDRMGroupID"];

    if (v18)
    {
      v19 = os_log_create("com.apple.amp.mediaplayer", "Playback");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 138543618;
        *(&buf.value + 4) = self;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v18;
        _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting Audible DRM info: %{public}@", &buf, 0x16u);
      }

      v20 = [MEMORY[0x1E695DF20] dictionaryWithObject:v18 forKey:@"AudibleDRMInfoGroupID"];
      [playerItem _setAudibleDRMInfo:v20];
    }

    v21 = [playbackInfo objectForKey:@"AVItemPlaybackProperties_RampInDuration"];

    if (v21)
    {
      v22 = v21;
    }

    v23 = [playbackInfo objectForKey:@"MPAVItemPlaybackProperties_RampInDuration"];

    if (v23)
    {
      v24 = v23;

      v21 = v24;
    }

    v25 = [playbackInfo objectForKey:@"AVItemPlaybackProperties_RampOutDuration"];

    if (v25)
    {
      v26 = v25;
    }

    v27 = [playbackInfo objectForKey:@"MPAVItemPlaybackProperties_RampOutDuration"];

    if (v27)
    {
      v28 = v27;

      v29 = v21 != 0;
      v30 = 1;
      v25 = v28;
    }

    else
    {
      v29 = v21 != 0;
      v30 = v25 != 0;
      if (!(v21 | v25))
      {
        v25 = 0;
LABEL_37:
        if ((*(self + 108) & 4) == 0)
        {
          objc_initWeak(&buf, self);
          asset = [(MPAVItem *)self asset];
          v35 = [playbackInfo objectForKey:@"MPAVItemPlaybackProperties_LookForLyrics"];
          bOOLValue = [v35 BOOLValue];

          if (bOOLValue)
          {
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __33__MPAVItem_setupWithPlaybackInfo__block_invoke;
            v41[3] = &unk_1E767FE98;
            objc_copyWeak(&v43, &buf);
            v42 = asset;
            [v42 loadValuesAsynchronouslyForKeys:&unk_1F150AC00 completionHandler:v41];

            objc_destroyWeak(&v43);
          }

          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __33__MPAVItem_setupWithPlaybackInfo__block_invoke_3;
          v38[3] = &unk_1E767FE98;
          objc_copyWeak(&v40, &buf);
          v37 = asset;
          v39 = v37;
          [v37 loadValuesAsynchronouslyForKeys:&unk_1F150AC18 completionHandler:v38];
          *(self + 108) |= 4u;

          objc_destroyWeak(&v40);
          objc_destroyWeak(&buf);
        }

        goto LABEL_42;
      }
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v32 = dictionary;
    if (v29)
    {
      [dictionary setObject:v21 forKey:@"RampInOutInfoInDuration"];
    }

    if (v30)
    {
      [v32 setObject:v25 forKey:@"RampInOutInfoOutDuration"];
    }

    v33 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 138543618;
      *(&buf.value + 4) = self;
      LOWORD(buf.flags) = 2114;
      *(&buf.flags + 2) = v27;
      _os_log_impl(&dword_1A238D000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting ramp in/out info: %{public}@", &buf, 0x16u);
    }

    [playerItem _setRampInOutInfo:v32];
    goto LABEL_37;
  }

  playerItem = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(playerItem, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf.value) = 138543362;
    *(&buf.value + 4) = self;
    _os_log_impl(&dword_1A238D000, playerItem, OS_LOG_TYPE_FAULT, "%{public}@: setupPlaybackInfo called without an asset loaded", &buf, 0xCu);
  }

LABEL_42:
}

void __33__MPAVItem_setupWithPlaybackInfo__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v3, (a1 + 40));
  v2 = *(a1 + 32);
  msv_dispatch_on_main_queue();

  objc_destroyWeak(&v3);
}

void __33__MPAVItem_setupWithPlaybackInfo__block_invoke_3(uint64_t a1)
{
  objc_copyWeak(&v3, (a1 + 40));
  v2 = *(a1 + 32);
  msv_dispatch_on_main_queue();

  objc_destroyWeak(&v3);
}

void __33__MPAVItem_setupWithPlaybackInfo__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isAssetLoaded] && objc_msgSend(*(a1 + 32), "statusOfValueForKey:error:", @"duration", 0) == 2)
  {
    [WeakRetained _itemAttributeAvailableKey:@"duration"];
  }
}

void __33__MPAVItem_setupWithPlaybackInfo__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isAssetLoaded] && objc_msgSend(*(a1 + 32), "statusOfValueForKey:error:", @"lyrics", 0) == 2)
  {
    [WeakRetained _itemAttributeAvailableKey:@"lyrics"];
  }
}

- (void)setupEQPresetWithDefaultPreset:(int64_t)preset
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(MPAVItem *)self isAssetLoaded])
  {
    presetCopy = [(MPAVItem *)self customAVEQPreset];
    if (!presetCopy)
    {
      if ([(MPAVItem *)self allowsEQ])
      {
        presetCopy = preset;
      }

      else
      {
        presetCopy = 0;
      }
    }

    playerItem = [(MPAVItem *)self playerItem];
    [playerItem _setEQPreset:presetCopy];

    v7 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      playerItem2 = [(MPAVItem *)self playerItem];
      v9 = 138543618;
      selfCopy = playerItem2;
      v11 = 1024;
      v12 = presetCopy;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Setting item %{public}@ EQ to %d", &v9, 0x12u);
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_FAULT, "%{public}@: setupEQPresetWithDefaultPreset called without an asset loaded", &v9, 0xCu);
    }
  }
}

- (id)_contentItemDeviceSpecificUserInfo
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  if ([(MPAVItem *)self persistentID]!= -1 && [(MPAVItem *)self persistentID])
  {
    *(v59 + 24) = 1;
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MPAVItem persistentID](self, "persistentID")}];
    [dictionary setObject:v4 forKeyedSubscript:@"pid"];
  }

  if ([(MPAVItem *)self cloudID])
  {
    *(v55 + 24) = 1;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MPAVItem cloudID](self, "cloudID")}];
    [dictionary setObject:v5 forKeyedSubscript:@"clid"];
  }

  cloudAlbumID = [(MPAVItem *)self cloudAlbumID];
  v7 = [cloudAlbumID length];

  if (v7)
  {
    *(v55 + 24) = 1;
    cloudAlbumID2 = [(MPAVItem *)self cloudAlbumID];
    [dictionary setObject:cloudAlbumID2 forKeyedSubscript:@"claid"];
  }

  cloudUniversalLibraryID = [(MPAVItem *)self cloudUniversalLibraryID];
  v10 = [cloudUniversalLibraryID length];

  if (v10)
  {
    cloudUniversalLibraryID2 = [(MPAVItem *)self cloudUniversalLibraryID];
    [dictionary setObject:cloudUniversalLibraryID2 forKeyedSubscript:@"ulid"];
  }

  if ([(MPAVItem *)self albumPersistentID]!= -1 && [(MPAVItem *)self albumPersistentID])
  {
    *(v59 + 24) = 1;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MPAVItem albumPersistentID](self, "albumPersistentID")}];
    [dictionary setObject:v12 forKeyedSubscript:@"apid"];
  }

  if ([(MPAVItem *)self albumArtistPersistentID]!= -1 && [(MPAVItem *)self albumArtistPersistentID])
  {
    *(v59 + 24) = 1;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MPAVItem albumArtistPersistentID](self, "albumArtistPersistentID")}];
    [dictionary setObject:v13 forKeyedSubscript:@"aarpid"];
  }

  if ([(MPAVItem *)self artistPersistentID]!= -1 && [(MPAVItem *)self artistPersistentID])
  {
    *(v59 + 24) = 1;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MPAVItem artistPersistentID](self, "artistPersistentID")}];
    [dictionary setObject:v14 forKeyedSubscript:@"arpid"];
  }

  if ([(MPAVItem *)self genrePersistentID]!= -1 && [(MPAVItem *)self genrePersistentID])
  {
    *(v59 + 24) = 1;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MPAVItem genrePersistentID](self, "genrePersistentID")}];
    [dictionary setObject:v15 forKeyedSubscript:@"gpid"];
  }

  if ([(MPAVItem *)self composerPersistentID]!= -1 && [(MPAVItem *)self composerPersistentID])
  {
    *(v59 + 24) = 1;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MPAVItem composerPersistentID](self, "composerPersistentID")}];
    [dictionary setObject:v16 forKeyedSubscript:@"cpid"];
  }

  if ([(MPAVItem *)self storePurchasedAdamID])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MPAVItem storePurchasedAdamID](self, "storePurchasedAdamID")}];
    [dictionary setObject:v17 forKeyedSubscript:@"purID"];
  }

  libraryLyrics = [(MPAVItem *)self libraryLyrics];

  if (libraryLyrics)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"hsLibLy"];
  }

  modelGenericObject = [(MPAVItem *)self modelGenericObject];
  type = [modelGenericObject type];

  if (type == 5)
  {
    modelGenericObject2 = [(MPAVItem *)self modelGenericObject];
    identifiers = [modelGenericObject2 identifiers];
    library = [identifiers library];
    persistentID = [library persistentID];

    if (persistentID)
    {
      *(v59 + 24) = 1;
      v25 = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID];
      [dictionary setObject:v25 forKeyedSubscript:@"peid"];
    }
  }

  libraryLyrics2 = [(MPAVItem *)self libraryLyrics];
  v27 = [libraryLyrics2 dataUsingEncoding:4];

  if (v27)
  {
    v28 = MSVGzipCompressData();
    [dictionary setObject:v28 forKeyedSubscript:@"lrcsGzpData"];
  }

  [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"supART"];
  modelPlayEvent = [(MPAVItem *)self modelPlayEvent];
  modelGenericObject3 = [(MPAVItem *)self modelGenericObject];
  flattenedGenericObject = [modelGenericObject3 flattenedGenericObject];
  anyObject = [flattenedGenericObject anyObject];

  if ([modelPlayEvent itemType] == 3)
  {
    v46 = MEMORY[0x1E69E9820];
    v47 = 3221225472;
    v48 = __46__MPAVItem__contentItemDeviceSpecificUserInfo__block_invoke;
    v49 = &unk_1E767FE70;
    v50 = modelPlayEvent;
    v51 = dictionary;
    v52 = &v58;
    v53 = &v54;
    [MPModelObject performWithoutEnforcement:&v46];
  }

  if (*(v59 + 24) == 1)
  {
    databaseID = [(MPAVItem *)self databaseID];
    [dictionary setObject:databaseID forKeyedSubscript:@"did"];
  }

  if (*(v55 + 24) == 1)
  {
    personID = [(MPAVItem *)self personID];
    [dictionary setObject:personID forKeyedSubscript:@"prid"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [anyObject isDisliked])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isDisliked"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [anyObject isFavorite])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isFav"];
  }

  if (objc_opt_respondsToSelector())
  {
    if ([anyObject isLibraryAdded])
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"libAdded"];
      if ([modelPlayEvent itemType] == 1)
      {
        [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"colLibAdded"];
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [anyObject isPinned])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"libPinned"];
  }

  if (objc_opt_respondsToSelector())
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(anyObject, "keepLocalEnableState")}];
    [dictionary setObject:v35 forKeyedSubscript:@"klEnable"];
  }

  if (objc_opt_respondsToSelector())
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(anyObject, "keepLocalManagedStatus")}];
    [dictionary setObject:v36 forKeyedSubscript:@"klStatus"];
  }

  if (objc_opt_respondsToSelector())
  {
    localFileAsset = [anyObject localFileAsset];
    if ([localFileAsset isNonPurgeable])
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"nonPurge"];
    }

    v38 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(localFileAsset, "protectionType", v46, v47, v48, v49)}];
    [dictionary setObject:v38 forKeyedSubscript:@"procType"];
  }

  if (objc_opt_respondsToSelector())
  {
    storeAsset = [anyObject storeAsset];
    v40 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(storeAsset, "endpointType")}];
    [dictionary setObject:v40 forKeyedSubscript:@"endpt"];
  }

  if (objc_opt_respondsToSelector())
  {
    [anyObject userRating];
    if (v41 > 0.00000011921)
    {
      v42 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      [dictionary setObject:v42 forKeyedSubscript:@"rating"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    playbackPosition = [anyObject playbackPosition];
    if ([playbackPosition shouldRememberBookmarkTime])
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"rembok"];
    }
  }

  v44 = dictionary;

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);

  return v44;
}

void __46__MPAVItem__contentItemDeviceSpecificUserInfo__block_invoke(uint64_t a1)
{
  v16 = [*(a1 + 32) playlist];
  if ([v16 isLibraryAdded])
  {
    [*(a1 + 40) setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"colLibAdded"];
  }

  v2 = [v16 identifiers];
  v3 = [v2 library];
  v4 = [v3 persistentID];

  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [v16 identifiers];
    v7 = [v6 library];
    v8 = [v5 numberWithLongLong:{objc_msgSend(v7, "persistentID")}];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:@"ppid"];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v9 = [v16 identifiers];
  v10 = [v9 personalizedStore];
  v11 = [v10 cloudID];

  if (v11)
  {
    v12 = MEMORY[0x1E696AD98];
    v13 = [v16 identifiers];
    v14 = [v13 personalizedStore];
    v15 = [v12 numberWithUnsignedLongLong:{objc_msgSend(v14, "cloudID")}];
    [*(a1 + 40) setObject:v15 forKeyedSubscript:@"pclid"];

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (id)_contentItemUserInfo
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__48370;
  v48 = __Block_byref_object_dispose__48371;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  modelPlayEvent = [(MPAVItem *)self modelPlayEvent];
  if ([modelPlayEvent itemType] == 4)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __32__MPAVItem__contentItemUserInfo__block_invoke;
    v29[3] = &unk_1E767FE48;
    v30 = modelPlayEvent;
    v33 = &v44;
    v34 = &v40;
    v35 = &v36;
    v31 = dictionary;
    selfCopy = self;
    [MPModelObject performWithoutEnforcement:v29];
  }

  if ([modelPlayEvent itemType] == 3)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __32__MPAVItem__contentItemUserInfo__block_invoke_2;
    v26 = &unk_1E76823C0;
    v27 = modelPlayEvent;
    v28 = dictionary;
    [MPModelObject performWithoutEnforcement:&v23];
  }

  if (v41[3])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [dictionary setObject:v5 forKeyedSubscript:@"raTy"];
  }

  if (v37[3])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [dictionary setObject:v6 forKeyedSubscript:@"raSty"];
  }

  v7 = v45[5];
  if (v7)
  {
    [dictionary setObject:v7 forKeyedSubscript:@"raAttrLbl"];
  }

  if ([objc_opt_class() isPlaceholder])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"phold"];
  }

  if ([(MPAVItem *)self _shouldPublishArtworkURL:v23])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"supART"];
  }

  if ([(MPAVItem *)self isAssetLoaded])
  {
    v8 = MEMORY[0x1E696AD98];
    [(MPAVItem *)self timeOfSeekableEnd];
    v9 = [v8 numberWithDouble:?];
    [dictionary setObject:v9 forKeyedSubscript:@"endT"];
  }

  if ([(MPAVItem *)self shouldShowComposer])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"shComp"];
  }

  if ([(MPAVItem *)self hasStoreLyrics])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"hsStLy"];
  }

  if ([(MPAVItem *)self hasTimeSyncedLyrics])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"hsTSL"];
  }

  containerUniqueID = [(MPAVItem *)self containerUniqueID];
  if ([containerUniqueID length])
  {
    [dictionary setObject:containerUniqueID forKeyedSubscript:@"cntrUID"];
  }

  storeFrontIdentifier = [(MPAVItem *)self storeFrontIdentifier];
  if (storeFrontIdentifier)
  {
    [dictionary setObject:storeFrontIdentifier forKeyedSubscript:@"sfid"];
  }

  modelGenericObject = [(MPAVItem *)self modelGenericObject];
  flattenedGenericObject = [modelGenericObject flattenedGenericObject];
  anyObject = [flattenedGenericObject anyObject];

  if (objc_opt_respondsToSelector())
  {
    storeAsset = [anyObject storeAsset];
    if ([storeAsset isRedownloadable])
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"rdwn"];
    }

    if ([storeAsset isSubscriptionRequired])
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"subReq"];
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [anyObject isLibraryAddEligible])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"libEligible"];
  }

  explicitBadge = [(MPAVItem *)self explicitBadge];
  v17 = [explicitBadge length];

  if (v17)
  {
    explicitBadge2 = [(MPAVItem *)self explicitBadge];
    [dictionary setObject:explicitBadge2 forKeyedSubscript:@"ex"];
  }

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPAVItem lastChangeDirection](self, "lastChangeDirection")}];
  [dictionary setObject:v19 forKeyedSubscript:@"lcd"];

  if ([(MPAVItem *)self isAutoPlayItem])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"aPly"];
  }

  if ([(MPAVItem *)self isSharedListeningItem])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"shLis"];
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:self->_explicitContentState];
    [dictionary setObject:v20 forKeyedSubscript:@"eConSt"];
  }

  if ([(MPAVItem *)self isArtistUploadedContent])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"arUp"];
  }

  v21 = dictionary;

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  return v21;
}

void __32__MPAVItem__contentItemUserInfo__block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) radioStation];
  v2 = [v9 attributionLabel];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 64) + 8) + 24) = [v9 type];
  *(*(*(a1 + 72) + 8) + 24) = [v9 subtype];
  v5 = [v9 providerUniversalLink];
  v6 = [v5 absoluteString];
  [*(a1 + 40) setObject:v6 forKeyedSubscript:@"raPUL"];

  v7 = [v9 providerBundleIdentifier];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:@"raBID"];

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 48), "stationProviderID")}];
  [*(a1 + 40) setObject:v8 forKeyedSubscript:@"raPrID"];
}

void __32__MPAVItem__contentItemUserInfo__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) playlist];
  if ([v3 isCollaborative])
  {
    [*(a1 + 40) setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"piclb"];
  }

  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "collaboratorStatus")}];
  [*(a1 + 40) setObject:v2 forKeyedSubscript:@"pclbStatus"];
}

- (void)_updateContentItemIncludingPlaybackState:(BOOL)state
{
  stateCopy = state;
  v69[1] = *MEMORY[0x1E69E9840];
  persistentID = [(MPAVItem *)self persistentID];
  storeSubscriptionAdamID = persistentID;
  if (persistentID == -1)
  {
    storeSubscriptionAdamID = [(MPAVItem *)self storeSubscriptionAdamID];
    if (!storeSubscriptionAdamID)
    {
      goto LABEL_5;
    }
  }

  else if (!persistentID)
  {
LABEL_5:
    storeSubscriptionAdamID = [(MPAVItem *)self storeItemInt64ID];
    if (!storeSubscriptionAdamID)
    {
      goto LABEL_7;
    }
  }

  [(MPNowPlayingContentItem *)self->_contentItem setLegacyUniqueID:storeSubscriptionAdamID];
LABEL_7:
  if (stateCopy)
  {
    [(MPContentItem *)self->_contentItem setPlayable:1];
    memset(&v66, 0, sizeof(v66));
    [(MPAVItem *)self _playerItemDurationIfAvailable];
    Seconds = 0.0;
    if (0 >> 96 == 1)
    {
      time = v66;
      Seconds = CMTimeGetSeconds(&time);
    }

    [(MPNowPlayingContentItem *)self->_contentItem setDuration:Seconds];
    [(MPAVItem *)self defaultPlaybackRate];
    [(MPNowPlayingContentItem *)self->_contentItem setDefaultPlaybackRate:?];
    initialPlaybackStartTime = [(MPAVItem *)self initialPlaybackStartTime];
    [initialPlaybackStartTime doubleValue];
    [(MPNowPlayingContentItem *)self->_contentItem setElapsedTime:?];

    [(MPNowPlayingContentItem *)self->_contentItem setPlaybackRate:0.0];
    isAssetLoaded = [(MPAVItem *)self isAssetLoaded];
    v10 = 0.0;
    if (isAssetLoaded)
    {
      [(MPAVItem *)self timeOfSeekableStart];
    }

    [(MPNowPlayingContentItem *)self->_contentItem setStartTime:v10];
  }

  [(MPNowPlayingContentItem *)self->_contentItem setInTransition:[(MPAVItem *)self isInTransition]];
  transitionInfo = [(MPAVItem *)self transitionInfo];
  [(MPNowPlayingContentItem *)self->_contentItem setTransitionInfo:transitionInfo];

  [(MPNowPlayingContentItem *)self->_contentItem setStoreID:[(MPAVItem *)self storeItemInt64ID]];
  [(MPNowPlayingContentItem *)self->_contentItem setStoreAlbumID:[(MPAVItem *)self albumStoreID]];
  [(MPNowPlayingContentItem *)self->_contentItem setStoreAlbumArtistID:[(MPAVItem *)self storeAlbumArtistID]];
  [(MPNowPlayingContentItem *)self->_contentItem setStoreArtistID:[(MPAVItem *)self artistStoreID]];
  [(MPNowPlayingContentItem *)self->_contentItem setStoreSubscriptionID:[(MPAVItem *)self storeSubscriptionAdamID]];
  [(MPNowPlayingContentItem *)self->_contentItem setReportingAdamID:[(MPAVItem *)self reportingAdamID]];
  [(MPNowPlayingContentItem *)self->_contentItem setLyricsAdamID:[(MPAVItem *)self lyricsAdamID]];
  mainTitle = [(MPAVItem *)self mainTitle];
  [(MPContentItem *)self->_contentItem setTitle:mainTitle];

  subtitle = [(MPAVItem *)self subtitle];
  [(MPContentItem *)self->_contentItem setSubtitle:subtitle];

  subtitleShort = [(MPAVItem *)self subtitleShort];
  [(MPNowPlayingContentItem *)self->_contentItem setSubtitleShort:subtitleShort];

  album = [(MPAVItem *)self album];
  v16 = album;
  if (album)
  {
    v17 = album;
  }

  else
  {
    v17 = &stru_1F149ECA8;
  }

  [(MPNowPlayingContentItem *)self->_contentItem setAlbumName:v17];

  quot = [(MPAVItem *)self albumYear];
  v19 = quot;
  if (quot)
  {
    v20 = v68;
    do
    {
      v21 = ldiv(quot, 10);
      quot = v21.quot;
      if (v21.rem >= 0)
      {
        LOBYTE(v22) = v21.rem;
      }

      else
      {
        v22 = -v21.rem;
      }

      *(v20 - 2) = v22 + 48;
      v23 = v20 - 2;
      --v20;
    }

    while (v21.quot);
    if (v19 < 0)
    {
      *(v20 - 2) = 45;
      v23 = v20 - 2;
    }

    v24 = CFStringCreateWithBytes(0, v23, &v67 - v23, 0x8000100u, 0);
  }

  else
  {
    v24 = @"0";
  }

  p_contentItem = &self->_contentItem;
  [(MPNowPlayingContentItem *)self->_contentItem setAlbumYear:v24];

  releaseDate = [(MPAVItem *)self releaseDate];
  [(MPNowPlayingContentItem *)self->_contentItem setReleaseDate:releaseDate];

  artist = [(MPAVItem *)self artist];
  v28 = artist;
  if (artist)
  {
    v29 = artist;
  }

  else
  {
    v29 = &stru_1F149ECA8;
  }

  [(MPNowPlayingContentItem *)*p_contentItem setTrackArtistName:v29];

  albumArtist = [(MPAVItem *)self albumArtist];
  v31 = albumArtist;
  if (albumArtist)
  {
    v32 = albumArtist;
  }

  else
  {
    v32 = &stru_1F149ECA8;
  }

  [(MPNowPlayingContentItem *)*p_contentItem setAlbumArtistName:v32];

  composer = [(MPAVItem *)self composer];
  v34 = composer;
  if (composer)
  {
    v35 = composer;
  }

  else
  {
    v35 = &stru_1F149ECA8;
  }

  [(MPNowPlayingContentItem *)*p_contentItem setComposerName:v35];

  genre = [(MPAVItem *)self genre];
  v37 = genre;
  if (genre)
  {
    v38 = genre;
  }

  else
  {
    v38 = &stru_1F149ECA8;
  }

  [(MPNowPlayingContentItem *)*p_contentItem setGenreName:v38];

  [(MPNowPlayingContentItem *)*p_contentItem setDiscNumber:[(MPAVItem *)self discNumber]];
  [(MPNowPlayingContentItem *)*p_contentItem setTotalDiscCount:[(MPAVItem *)self discCount]];
  [(MPNowPlayingContentItem *)*p_contentItem setTrackNumber:[(MPAVItem *)self albumTrackNumber]];
  [(MPNowPlayingContentItem *)*p_contentItem setTotalTrackCount:[(MPAVItem *)self albumTrackCount]];
  [(MPNowPlayingContentItem *)*p_contentItem setMediaType:[(MPAVItem *)self mediaType]];
  externalContentIdentifier = [(MPAVItem *)self externalContentIdentifier];
  [(MPNowPlayingContentItem *)*p_contentItem setExternalContentIdentifier:externalContentIdentifier];

  [(MPContentItem *)*p_contentItem setExplicitContent:[(MPAVItem *)self isExplicitTrack]];
  [(MPNowPlayingContentItem *)*p_contentItem setAlwaysLiveItem:[(MPAVItem *)self isAlwaysLive]];
  modelPlayEvent = [(MPAVItem *)self modelPlayEvent];
  if ([modelPlayEvent itemType] == 4)
  {
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __53__MPAVItem__updateContentItemIncludingPlaybackState___block_invoke;
    v62[3] = &unk_1E76823C0;
    v63 = modelPlayEvent;
    selfCopy = self;
    [MPModelObject performWithoutEnforcement:v62];
  }

  else
  {
    [(MPNowPlayingContentItem *)self->_contentItem setRadioStationName:0];
    [(MPNowPlayingContentItem *)self->_contentItem setRadioStationStringIdentifier:0];
  }

  contentItemCollectionInfo = [modelPlayEvent contentItemCollectionInfo];
  v42 = &self->_contentItem;
  [(MPNowPlayingContentItem *)self->_contentItem setCollectionInfo:contentItemCollectionInfo];

  if ([objc_opt_class() isPlaceholder])
  {
    v43 = 0;
  }

  else
  {
    v43 = 3;
  }

  [(MPNowPlayingContentItem *)self->_contentItem setLoading:?];
  if ([(MPAVItem *)self isAlwaysLive])
  {
    v43 &= 2u;
  }

  if ([(MPAVItem *)self isSelectionDisabled])
  {
    v44 = v43 | 4;
  }

  else
  {
    v44 = v43;
  }

  [(MPNowPlayingContentItem *)*v42 setEditingStyleFlags:v44];
  v45 = [(MPAVItem *)self artworkCatalogForPlaybackTime:0.0];
  v46 = *v42;
  if (v45)
  {
    [(MPNowPlayingContentItem *)v46 setHasArtwork:1];
    visualIdenticalityIdentifier = [v45 visualIdenticalityIdentifier];
    if (objc_opt_respondsToSelector())
    {
      stringRepresentation = [visualIdenticalityIdentifier stringRepresentation];
      if ([stringRepresentation length])
      {
        [(MPNowPlayingContentItem *)self->_contentItem setArtworkIdentifier:stringRepresentation];
      }
    }

    if ([v45 hasExportableArtworkProperties])
    {
      v69[0] = @"MRContentItemArtworkFormatStandard";
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
      [(MPNowPlayingContentItem *)self->_contentItem setSupportedRemoteArtworkFormats:v49];
    }

    if ([(MPAVItem *)self _shouldPublishArtworkURL])
    {
      v50 = self->_exportableArtworkRevision + 1;
      self->_exportableArtworkRevision = v50;
      v66.value = 0;
      *&v66.timescale = &v66;
      v66.epoch = 0x2020000000;
      v67 = 1;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __53__MPAVItem__updateContentItemIncludingPlaybackState___block_invoke_2;
      v61[3] = &unk_1E767FE20;
      v61[5] = &v66;
      v61[6] = v50;
      v61[4] = self;
      [v45 requestExportableArtworkPropertiesWithCompletion:v61];
      *(*&v66.timescale + 24) = 0;
      _Block_object_dispose(&v66, 8);
    }
  }

  else
  {
    [(MPNowPlayingContentItem *)v46 setHasArtwork:0];
    [(MPNowPlayingContentItem *)self->_contentItem setArtworkIdentifier:0];
  }

  libraryLyrics = [(MPAVItem *)self libraryLyrics];

  if (libraryLyrics)
  {
    v52 = [MPNowPlayingInfoLyricsItem alloc];
    libraryLyrics2 = [(MPAVItem *)self libraryLyrics];
    v54 = [(MPNowPlayingInfoLyricsItem *)v52 initWithLyrics:libraryLyrics2 userProvided:1];
    [(MPNowPlayingContentItem *)self->_contentItem setLyrics:v54];

    hasStoreLyrics = 0;
  }

  else
  {
    [(MPNowPlayingContentItem *)self->_contentItem setLyrics:0];
    hasStoreLyrics = [(MPAVItem *)self hasStoreLyrics];
  }

  v56 = &self->_contentItem;
  [(MPNowPlayingContentItem *)self->_contentItem setHasLyrics:hasStoreLyrics];
  itemDescription = [(MPAVItem *)self itemDescription];
  [(MPNowPlayingContentItem *)self->_contentItem setHasDescription:itemDescription != 0];

  associatedParticipantIdentifier = [(MPAVItem *)self associatedParticipantIdentifier];
  [(MPNowPlayingContentItem *)self->_contentItem setAssociatedParticipantIdentifier:associatedParticipantIdentifier];

  [(MPAVItem *)self _updateAudioFormatInfoForContentItem:self->_contentItem];
  _contentItemUserInfo = [(MPAVItem *)self _contentItemUserInfo];
  [(MPNowPlayingContentItem *)self->_contentItem setUserInfo:_contentItemUserInfo];

  _contentItemDeviceSpecificUserInfo = [(MPAVItem *)self _contentItemDeviceSpecificUserInfo];
  [(MPNowPlayingContentItem *)*v56 setDeviceSpecificUserInfo:_contentItemDeviceSpecificUserInfo];
}

void __53__MPAVItem__updateContentItemIncludingPlaybackState___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) radioStation];
  v2 = [v6 name];
  [*(*(a1 + 40) + 96) setRadioStationName:v2];

  v3 = [v6 identifiers];
  v4 = [v3 radio];
  v5 = [v4 stationStringID];

  [*(*(a1 + 40) + 96) setRadioStationStringIdentifier:v5];
}

void __53__MPAVItem__updateContentItemIncludingPlaybackState___block_invoke_2(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Failed to get exportable URL with error: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__MPAVItem__updateContentItemIncludingPlaybackState___block_invoke_260;
    aBlock[3] = &unk_1E767FDF8;
    v8 = a1[4];
    v17 = a1[6];
    aBlock[4] = v8;
    v9 = v5;
    v16 = v9;
    v10 = _Block_copy(aBlock);
    v11 = v10;
    if (*(*(a1[5] + 8) + 24) == 1)
    {
      (*(v10 + 2))(v10, v9);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__MPAVItem__updateContentItemIncludingPlaybackState___block_invoke_2_262;
      block[3] = &unk_1E76824C8;
      v14 = v10;
      v13 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __53__MPAVItem__updateContentItemIncludingPlaybackState___block_invoke_260(uint64_t a1)
{
  if (*(a1 + 48) == *(*(a1 + 32) + 160))
  {
    v2 = [*(a1 + 40) resolvedURLString];
    v3 = [v2 length];

    if (v3)
    {
      v4 = [*(a1 + 40) resolvedURLString];
      [*(*(a1 + 32) + 96) setArtworkURL:v4];
    }

    v5 = [*(a1 + 40) artworkTemplateItems];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [*(a1 + 40) artworkTemplateItems];
      [*(*(a1 + 32) + 96) setArtworkURLTemplates:v7];
    }
  }
}

- (void)_pickupContentItemFrom:(id)from
{
  fromCopy = from;
  contentItemID = [(MPAVItem *)self contentItemID];
  contentItemID2 = [fromCopy contentItemID];
  v7 = [contentItemID isEqualToString:contentItemID2];

  if ((v7 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    contentItemID3 = [fromCopy contentItemID];
    contentItemID4 = [(MPAVItem *)self contentItemID];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPAVItem.m" lineNumber:1160 description:{@"fromItem contentItemID %@ does not match this item %@", contentItemID3, contentItemID4}];
  }

  objc_storeStrong(&self->_contentItem, fromCopy[12]);
}

- (void)_clearAssetNow
{
  assetQueue = self->_assetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__MPAVItem__clearAssetNow__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(assetQueue, block);
}

uint64_t __26__MPAVItem__clearAssetNow__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 32) == 1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    *(v1 + 8) = 0;

    result = [*(v2 + 32) setPlayerItem:0];
    *(*(v2 + 32) + 202) = 0;
    *(*(v2 + 32) + 32) = 0;
  }

  return result;
}

- (void)_copyPlayerItem
{
  dispatch_assert_queue_V2(self->_assetQueue);
  if (![(MPAVItem *)self isAssetLoaded])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPAVItem.m" lineNumber:1143 description:@"Asset must be already loaded to copy player item"];
  }

  v5 = [(AVPlayerItem *)self->_avPlayerItem copy];
  [(MPAVItem *)self setPlayerItem:v5];
}

- (void)_performContentItemUpdate:(id)update debounceWithIdentifier:(id)identifier
{
  updateCopy = update;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    goto LABEL_5;
  }

  os_unfair_lock_lock(&self->_lock);
  if (([(NSMutableSet *)self->_pendingContentItemUpdates containsObject:identifierCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_pendingContentItemUpdates addObject:identifierCopy];
    os_unfair_lock_unlock(&self->_lock);
LABEL_5:
    v8 = identifierCopy;
    v9 = updateCopy;
    msv_dispatch_on_main_queue();

    goto LABEL_6;
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_6:
}

void __61__MPAVItem__performContentItemUpdate_debounceWithIdentifier___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    os_unfair_lock_lock((*(a1 + 40) + 112));
    [*(*(a1 + 40) + 192) removeObject:*(a1 + 32)];
    os_unfair_lock_unlock((*(a1 + 40) + 112));
  }

  v2 = *(*(a1 + 40) + 96);
  if (!v2)
  {
    v3 = [MPNowPlayingContentItem alloc];
    v4 = [*(a1 + 40) contentItemID];
    v5 = [(MPContentItem *)v3 initWithIdentifier:v4];

    v2 = v5;
  }

  v6 = v2;
  (*(*(a1 + 48) + 16))();
}

- (BOOL)_shouldPublishArtworkURL
{
  if ((MSVDeviceIsAudioAccessory() & 1) == 0 && !MSVDeviceIsAppleTV())
  {
    return 0;
  }

  v3 = [(MPAVItem *)self artworkCatalogForPlaybackTime:0.0];
  v4 = v3 != 0;

  return v4;
}

- (void)_updateSoundCheckVolumeNormalizationForPlayerItem
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(MPAVItem *)self isAssetLoaded])
  {
    v3 = fabsf(self->_soundCheckVolumeNormalization);
    v4 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3 <= 0.00000011921)
    {
      if (v5)
      {
        soundCheckVolumeNormalization = self->_soundCheckVolumeNormalization;
        playerItem = [(MPAVItem *)self playerItem];
        v11 = 138543874;
        selfCopy2 = self;
        v13 = 2048;
        v14 = soundCheckVolumeNormalization;
        v15 = 2114;
        v16 = playerItem;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: ignoring volume normalization %f on %{public}@", &v11, 0x20u);
      }
    }

    else
    {
      if (v5)
      {
        v6 = self->_soundCheckVolumeNormalization;
        playerItem2 = [(MPAVItem *)self playerItem];
        v11 = 138543874;
        selfCopy2 = self;
        v13 = 2048;
        v14 = v6;
        v15 = 2114;
        v16 = playerItem2;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting volume normalization to %f on %{public}@", &v11, 0x20u);
      }

      *&v8 = self->_soundCheckVolumeNormalization;
      [(AVPlayerItem *)self->_avPlayerItem setSoundCheckVolumeNormalization:v8];
    }
  }
}

- (void)_loadAssetProperties
{
  asset = self->_asset;
  if (asset)
  {
    [(AVAsset *)asset loadValuesAsynchronouslyForKeys:&unk_1F150ABE8 completionHandler:0];
  }
}

- (double)_playableDurationForLoadedTimeRanges:(id)ranges
{
  rangesCopy = ranges;
  if ([rangesCopy count])
  {
    memset(&v11, 0, sizeof(v11));
    v5 = [rangesCopy objectAtIndex:0];
    v6 = v5;
    if (v5)
    {
      [v5 CMTimeRangeValue];
    }

    else
    {
      memset(&v11, 0, sizeof(v11));
    }

    v9 = v11;
    CMTimeRangeGetEnd(&time, &v9);
    Seconds = CMTimeGetSeconds(&time);
    self->_cachedPlayableDuration = Seconds;
  }

  else
  {
    self->_cachedPlayableDuration = NAN;
    Seconds = NAN;
  }

  return Seconds;
}

- (id)_seekableTimeRanges
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  if ([(MPAVItem *)self isAssetLoaded]&& v4 - self->_seekableTimeRangesCacheTime > 0.2)
  {
    playerItem = [(MPAVItem *)self playerItem];
    seekableTimeRanges = [playerItem seekableTimeRanges];
    v7 = [seekableTimeRanges copy];
    cachedSeekableTimeRanges = self->_cachedSeekableTimeRanges;
    self->_cachedSeekableTimeRanges = v7;

    self->_seekableTimeRangesCacheTime = v4;
  }

  v9 = self->_cachedSeekableTimeRanges;

  return v9;
}

- (id)_initialPlaybackStartTimeForPlaybackInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKey:@"MPAVItemPlaybackProperties_NextPlayStartTime"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [infoCopy objectForKey:@"MPAVItemPlaybackProperties_StartTime"];

  if (v8)
  {
    [v8 doubleValue];
  }

  else
  {
    v9 = 0.0;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v7 >= v9)
  {
    v9 = v7;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
LABEL_10:

  return v5;
}

- (void)_likedStateDidChange
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_MPAVItemInternalLikedStateDidChangeNotification" object:self];
  [defaultCenter postNotificationName:@"MPAVItemLikedStateDidChangeNotification" object:self];
}

- (void)_removeObservationsForAVPlayerItem:(id)item
{
  itemCopy = item;
  [itemCopy removeObserver:self forKeyPath:@"duration" context:@"MPAVItemDurationObservationContext"];
  [itemCopy removeObserver:self forKeyPath:@"loadedTimeRanges" context:@"MPAVItemLoadedTimeRangesObservationContext"];
  [itemCopy removeObserver:self forKeyPath:@"timebase" context:@"MPAVItemTimebaseObservationContext"];
  if (self->_metadataOutput)
  {
    [itemCopy removeOutput:?];
    metadataOutput = self->_metadataOutput;
    self->_metadataOutput = 0;
  }
}

- (void)_addObservationsForAVPlayerItem:(id)item
{
  itemCopy = item;
  [itemCopy addObserver:self forKeyPath:@"duration" options:3 context:@"MPAVItemDurationObservationContext"];
  [itemCopy addObserver:self forKeyPath:@"loadedTimeRanges" options:3 context:@"MPAVItemLoadedTimeRangesObservationContext"];
  [itemCopy addObserver:self forKeyPath:@"timebase" options:7 context:@"MPAVItemTimebaseObservationContext"];
  if ([(MPAVItem *)self conformsToProtocol:&unk_1F15AA290])
  {
    v4 = [objc_alloc(MEMORY[0x1E69880C8]) initWithIdentifiers:0];
    metadataOutput = self->_metadataOutput;
    self->_metadataOutput = v4;

    [(AVPlayerItemMetadataOutput *)self->_metadataOutput setDelegate:self queue:MEMORY[0x1E69E96A0]];
    [itemCopy addOutput:self->_metadataOutput];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (context == @"MPAVItemLoadedTimeRangesObservationContext")
  {
    v14 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    [(MPAVItem *)self _playableDurationForLoadedTimeRanges:v14];

    [(MPAVItem *)self _updateHasFinishedDownloading];
  }

  else if (context == @"MPAVItemDurationObservationContext")
  {
    v15 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    v16 = v15;
    if (v15)
    {
      [v15 CMTimeValue];
    }

    else
    {
      v26 = 0uLL;
      v27 = 0;
    }

    *&self->_playerItemDuration.value = v26;
    self->_playerItemDuration.epoch = v27;

    self->_hasValidPlayerItemDuration = 1;
    [(MPAVItem *)self _updateHasFinishedDownloading];
    v26 = 0uLL;
    v27 = 0;
    [(MPAVItem *)self _playerItemDurationIfAvailable];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __59__MPAVItem_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v23[3] = &__block_descriptor_56_e33_v16__0__MPNowPlayingContentItem_8l;
    v24 = v26;
    v25 = v27;
    [(MPAVItem *)self _performContentItemUpdate:v23 debounceWithIdentifier:@"duration"];
  }

  else if (context == @"MPAVItemTimebaseObservationContext")
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __59__MPAVItem_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v21 = &unk_1E7682518;
    selfCopy = self;
    msv_dispatch_on_main_queue();
  }

  else
  {
    v17.receiver = self;
    v17.super_class = MPAVItem;
    [(MPAVItem *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __59__MPAVItem_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  Seconds = 0.0;
  if ((*(a1 + 44) & 0x1D) == 1)
  {
    v5 = *(a1 + 32);
    Seconds = CMTimeGetSeconds(&v5);
  }

  [v3 setDuration:Seconds];
}

void __59__MPAVItem_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPAVItemTimebaseDidChangeNotification" object:*(a1 + 32)];
}

- (void)_itemAttributeAvailableKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"lyrics"])
  {
    asset = [(MPAVItem *)self asset];
    lyrics = [asset lyrics];

    *(self + 108) |= 8u;
    if (lyrics)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MPAVItemDisplayableTextAvailableNotification" object:self userInfo:0];
    }

LABEL_9:

    goto LABEL_10;
  }

  if ([keyCopy isEqualToString:@"duration"])
  {
    asset2 = [(MPAVItem *)self asset];
    v9 = asset2;
    if (asset2)
    {
      [asset2 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    self->_cachedDuration = CMTimeGetSeconds(&time);

    lyrics = [MEMORY[0x1E696AD88] defaultCenter];
    [lyrics postNotificationName:@"MPAVItemDurationAvailableNotification" object:self];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_internalLikedStateDidChangeNotification:(id)notification
{
  object = [notification object];
  if (object != self)
  {
    v7 = object;
    v5 = [(MPAVItem *)self isEqual:object];
    object = v7;
    if (v5)
    {
      likedState = [(MPAVItem *)v7 likedState];
      object = v7;
      self->_likedState = likedState;
    }
  }
}

- (double)timeOfSeekableEnd
{
  v18 = *MEMORY[0x1E69E9840];
  [(MPAVItem *)self _seekableTimeRanges];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        memset(&v12, 0, sizeof(v12));
        if (v8)
        {
          [v8 CMTimeRangeValue];
        }

        else
        {
          memset(&v11, 0, sizeof(v11));
        }

        CMTimeRangeGetEnd(&v12, &v11);
        if ((v12.flags & 0x1D) == 1)
        {
          v11.start = v12;
          Seconds = CMTimeGetSeconds(&v11.start);

          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  Seconds = self->_cachedDuration;
LABEL_14:

  return Seconds;
}

- (double)timeOfSeekableStart
{
  v9 = *MEMORY[0x1E69E9840];
  _seekableTimeRanges = [(MPAVItem *)self _seekableTimeRanges];
  memset(v7, 0, sizeof(v7));
  if ([_seekableTimeRanges countByEnumeratingWithState:v7 objects:v8 count:16])
  {
    if (**(&v7[0] + 1))
    {
      [**(&v7[0] + 1) CMTimeRangeValue];
    }

    else
    {
      memset(&v5, 0, sizeof(v5));
    }

    time = v5;
    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    Seconds = 0.0;
  }

  return Seconds;
}

- (OpaqueCMTimebase)timebase
{
  if (![(MPAVItem *)self isAssetLoaded])
  {
    return 0;
  }

  playerItem = [(MPAVItem *)self playerItem];
  timebase = [playerItem timebase];

  return timebase;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_playerItemDurationIfAvailable
{
  if (BYTE6(self[4].var3) == 1)
  {
    *&retstr->var0 = *&self[5].var3;
    v4 = *&self[6].var1;
LABEL_5:
    retstr->var3 = v4;
    return self;
  }

  self = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self _durationFromExternalMetadataIfAvailable];
  if (v5 < -2.22044605e-16)
  {
    v6 = MEMORY[0x1E6960C68];
    *&retstr->var0 = *MEMORY[0x1E6960C68];
    v4 = *(v6 + 16);
    goto LABEL_5;
  }

  return CMTimeMakeWithSeconds(retstr, v5, 1000);
}

- (double)durationIfAvailable
{
  [(MPAVItem *)self playbackMode];
  if (self->_hasValidPlayerItemDuration)
  {
    time = self->_playerItemDuration;
    return CMTimeGetSeconds(&time);
  }

  else
  {
    result = self->_cachedDuration;
    if (result < 0.00000011920929)
    {

      [(MPAVItem *)self _durationFromExternalMetadataIfAvailable];
    }
  }

  return result;
}

- (double)_durationFromExternalMetadataIfAvailable
{
  [(MPAVItem *)self durationFromExternalMetadata];
  if (result < 0.00000011920929)
  {
    return NAN;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  asset = [(MPAVItem *)self asset];
  if (asset)
  {
    v6 = asset;
    [asset duration];
    asset = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (id)_imageChapterTrackIDsForAsset:(id)asset
{
  assetCopy = asset;
  v5 = [(AVAsset *)self->_asset statusOfValueForKey:@"trackReferences" error:0];
  v6 = 0;
  if (v5 == 2)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    trackReferences = [assetCopy trackReferences];
    v8 = [trackReferences objectForKey:*MEMORY[0x1E6987230]];
    if ([v8 count] >= 2)
    {
      v9 = *MEMORY[0x1E6987608];
      v10 = 1;
      do
      {
        v11 = [v8 objectAtIndex:v10];
        v12 = [assetCopy trackWithTrackID:{objc_msgSend(v11, "intValue")}];
        mediaType = [v12 mediaType];
        v14 = [mediaType isEqualToString:v9];

        if (v14)
        {
          [v6 addObject:v11];
        }

        v10 += 2;
      }

      while (v10 < [v8 count]);
    }
  }

  return v6;
}

- (MPNowPlayingContentItem)contentItem
{
  contentItem = self->_contentItem;
  if (!contentItem)
  {
    v4 = [MPNowPlayingContentItem alloc];
    contentItemID = [(MPAVItem *)self contentItemID];
    v6 = [(MPContentItem *)v4 initWithIdentifier:contentItemID];
    v7 = self->_contentItem;
    self->_contentItem = v6;

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __23__MPAVItem_contentItem__block_invoke;
    v9[3] = &unk_1E7682518;
    v9[4] = self;
    [MPContentItem performSuppressingChangeNotifications:v9];
    [(MPContentItem *)self->_contentItem postChangeNotificationImmediately:0];
    contentItem = self->_contentItem;
  }

  return contentItem;
}

- (void)setContentItemID:(id)d queueSectionID:(id)iD queueItemID:(id)itemID
{
  dCopy = d;
  iDCopy = iD;
  contentItemID = self->_contentItemID;
  itemIDCopy = itemID;
  if (![(NSString *)contentItemID isEqualToString:dCopy])
  {
    v11 = [dCopy copy];
    v12 = self->_contentItemID;
    self->_contentItemID = v11;

    contentItem = self->_contentItem;
    self->_contentItem = 0;
  }

  v14 = [iDCopy copy];
  queueSectionID = self->_queueSectionID;
  self->_queueSectionID = v14;

  v16 = [itemIDCopy copy];
  queueItemID = self->_queueItemID;
  self->_queueItemID = v16;
}

- (BOOL)supportsRating
{
  mediaItem = [(MPAVItem *)self mediaItem];
  v4 = [mediaItem objectForKeyedSubscript:@"isInMyLibrary"];
  bOOLValue = [v4 BOOLValue];

  mediaItem2 = [(MPAVItem *)self mediaItem];
  v7 = [mediaItem2 objectForKeyedSubscript:@"storeSagaID"];
  longLongValue = [v7 longLongValue];

  mediaItem3 = [(MPAVItem *)self mediaItem];
  mediaLibrary = [mediaItem3 mediaLibrary];

  if (longLongValue)
  {
    v11 = 1;
  }

  else
  {
    v11 = bOOLValue;
  }

  return mediaLibrary && v11;
}

- (NSString)storeItemID
{
  v9 = *MEMORY[0x1E69E9840];
  quot = [(MPAVItem *)self storeItemInt64ID];
  if (quot)
  {
    v3 = quot;
    v4 = &v9 + 1;
    do
    {
      v5 = lldiv(quot, 10);
      quot = v5.quot;
      if (v5.rem >= 0)
      {
        LOBYTE(v6) = v5.rem;
      }

      else
      {
        v6 = -v5.rem;
      }

      *(v4 - 2) = v6 + 48;
      v7 = (v4 - 2);
      --v4;
    }

    while (v5.quot);
    if ((v3 & 0x8000000000000000) != 0)
    {
      *(v4 - 2) = 45;
      v7 = (v4 - 2);
    }

    quot = CFStringCreateWithBytes(0, v7, &v9 - v7, 0x8000100u, 0);
  }

  return quot;
}

- (void)setSoundCheckVolumeNormalization:(float)normalization
{
  if (self->_soundCheckVolumeNormalization != normalization)
  {
    self->_soundCheckVolumeNormalization = normalization;
    [(MPAVItem *)self _updateSoundCheckVolumeNormalizationForPlayerItem];
  }
}

- (void)setLikedState:(int64_t)state forUserIdentity:(id)identity
{
  identityCopy = identity;
  if ([(MPAVItem *)self likedState]!= state)
  {
    self->_likedState = state;
    [(MPAVItem *)self _likedStateDidChange];
    [(MPAVItem *)self _handleUpdatedLikedState:state forUserIdentity:identityCopy completion:&__block_literal_global_48424];
  }
}

- (void)setFeeder:(id)feeder
{
  feederCopy = feeder;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_feeder, feederCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)forwardPlaybackEndTime
{
  result = [(MPAVItem *)self isAssetLoaded];
  if (result)
  {
    playerItem = [(MPAVItem *)self playerItem];
    if (playerItem)
    {
      v8 = playerItem;
      [playerItem forwardPlaybackEndTime];
      playerItem = v8;
    }

    else
    {
      retstr->var0 = 0;
      *&retstr->var1 = 0;
      retstr->var3 = 0;
    }
  }

  else
  {
    v7 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v7 + 16);
  }

  return result;
}

- (CGSize)presentationSize
{
  if ([(MPAVItem *)self isAssetLoaded])
  {
    playerItem = [(MPAVItem *)self playerItem];
    [playerItem presentationSize];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v7 = 0x7FF8000000000000;
    v5 = 0x7FF8000000000000;
  }

  v8 = *&v5;
  v9 = *&v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)prepareForRate:(float)rate completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, rate);
  }
}

- (CGSize)naturalSize
{
  if ([(MPAVItem *)self isAssetLoaded]&& [(MPAVItem *)self status]== 1)
  {
    playerItem = [(MPAVItem *)self playerItem];
    [playerItem presentationSize];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v7 = 0x7FF8000000000000;
    v5 = 0x7FF8000000000000;
  }

  v8 = *&v5;
  v9 = *&v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)isStreamable
{
  v2 = *(self + 108) & 3;
  if (v2 == 2)
  {
    path = [(MPAVItem *)self path];
    if ([path compare:@"https://" options:1 range:{0, objc_msgSend(@"https://", "length")}])
    {
      path2 = [(MPAVItem *)self path];
      if ([path2 compare:@"http://" options:1 range:{0, objc_msgSend(@"http://", "length")}])
      {
        path3 = [(MPAVItem *)self path];
        v7 = [path3 compare:@"home-sharing://" options:1 range:{0, objc_msgSend(@"home-sharing://", "length")}];

        if (v7)
        {
          v8 = *(self + 108) & 0xFC;
LABEL_9:
          *(self + 108) = v8;
          v2 = v8 & 3;
          return v2 != 0;
        }

LABEL_8:
        v8 = *(self + 108) & 0xFC | 1;
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  return v2 != 0;
}

- (NSString)lyrics
{
  if ((*(self + 108) & 8) != 0 && [(MPAVItem *)self isAssetLoaded])
  {
    asset = [(MPAVItem *)self asset];
    lyrics = [asset lyrics];
  }

  else
  {
    lyrics = 0;
  }

  return lyrics;
}

- (MPQueueFeeder)feeder
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_feeder);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (BOOL)displayableTextLoaded
{
  if ((*(self + 108) & 8) != 0)
  {
    return 1;
  }

  displayableText = [(MPAVItem *)self displayableText];
  v3 = [displayableText length] != 0;

  return v3;
}

- (void)setLastChangeDirection:(int64_t)direction
{
  if (self->_lastChangeDirection != direction)
  {
    self->_lastChangeDirection = direction;
    [(MPAVItem *)self invalidateContentItemUserInfo];
  }
}

- (void)setExplicitBadge:(id)badge
{
  badgeCopy = badge;
  explicitBadge = self->_explicitBadge;
  if (explicitBadge != badgeCopy)
  {
    v9 = badgeCopy;
    v6 = [(NSString *)explicitBadge isEqual:badgeCopy];
    badgeCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_explicitBadge;
      self->_explicitBadge = v7;

      [(MPAVItem *)self invalidateContentItemUserInfo];
      badgeCopy = v9;
    }
  }
}

- (AVPlayerItemAccessLog)accessLog
{
  if ([(MPAVItem *)self isAssetLoaded])
  {
    playerItem = [(MPAVItem *)self playerItem];
    accessLog = [playerItem accessLog];
  }

  else
  {
    accessLog = 0;
  }

  return accessLog;
}

- (id)url
{
  if ([(MPAVItem *)self isAssetLoaded]&& ([(MPAVItem *)self asset], v3 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) != 0))
  {
    asset = [(MPAVItem *)self asset];
    v6 = [asset URL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)path
{
  if ([(MPAVItem *)self isAssetLoaded]&& ([(MPAVItem *)self asset], v3 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) != 0))
  {
    asset = [(MPAVItem *)self asset];
    v6 = [asset URL];
    absoluteString = [v6 absoluteString];
  }

  else
  {
    absoluteString = &stru_1F149ECA8;
  }

  return absoluteString;
}

- (double)durationInSeconds
{
  if (self->_cachedDuration < 0.00000011920929 && [(MPAVItem *)self isAssetLoaded])
  {
    asset = [(MPAVItem *)self asset];
    v4 = asset;
    if (asset)
    {
      [asset duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    self->_cachedDuration = CMTimeGetSeconds(&time);
  }

  return self->_cachedDuration;
}

- (NSNumber)playbackInfoStartTime
{
  playbackInfo = [(MPAVItem *)self playbackInfo];
  v4 = [(MPAVItem *)self _initialPlaybackStartTimeForPlaybackInfo:playbackInfo];

  return v4;
}

- (NSNumber)initialPlaybackStartTime
{
  initialPlaybackStartTimeOverride = [(MPAVItem *)self initialPlaybackStartTimeOverride];
  v4 = initialPlaybackStartTimeOverride;
  if (initialPlaybackStartTimeOverride)
  {
    playbackInfoStartTime = initialPlaybackStartTimeOverride;
  }

  else
  {
    playbackInfoStartTime = [(MPAVItem *)self playbackInfoStartTime];
  }

  v6 = playbackInfoStartTime;

  return v6;
}

- (NSNumber)bookmarkTime
{
  mediaItem = [(MPAVItem *)self mediaItem];
  v3 = mediaItem;
  if (mediaItem && [mediaItem rememberBookmarkTime])
  {
    v4 = MEMORY[0x1E696AD98];
    [v3 bookmarkTime];
    v5 = [v4 numberWithDouble:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSError)playbackError
{
  if ([(MPAVItem *)self isAssetLoaded])
  {
    playerItem = [(MPAVItem *)self playerItem];
    error = [playerItem error];
  }

  else
  {
    error = 0;
  }

  return error;
}

- (void)setPlayerItem:(id)item
{
  v13 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (self->_avPlayerItem != itemCopy)
  {
    [(MPAVItem *)self _removeObservationsForAVPlayerItem:?];
    objc_storeStrong(&self->_avPlayerItem, item);
    v6 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      avPlayerItem = self->_avPlayerItem;
      *buf = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = avPlayerItem;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "MP->AV Asset Log Mapping: %{public}@ -> %{public}@", buf, 0x16u);
    }

    self->_canReusePlayerItem = 1;
    self->_hasValidPlayerItemDuration = 0;
    [(MPAVItem *)self _addObservationsForAVPlayerItem:self->_avPlayerItem];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__MPAVItem_setPlayerItem___block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (AVPlayerItem)playerItem
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__48370;
  v8 = __Block_byref_object_dispose__48371;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __22__MPAVItem_playerItem__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v12 = v3;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "MPAVItem playerItem property is being used without prior loadAssetAndPlayerItem %{public}@", buf, 0xCu);
    }

    v4 = MEMORY[0x1E69B13D8];
    v5 = *MEMORY[0x1E69B1340];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AF00] callStackSymbols];
    v8 = [v6 stringWithFormat:@"%@", v7];
    v10 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [v4 snapshotWithDomain:v5 type:@"Bug" subType:@"MPAVItem" context:@"PlayerItem is nil" triggerThresholdValues:0 events:v9 completion:0];
  }
}

- (AVAsset)asset
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__48370;
  v8 = __Block_byref_object_dispose__48371;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __17__MPAVItem_asset__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 8));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v12 = v3;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "MPAVItem asset property is being used without prior loadAssetAndPlayerItem %{public}@", buf, 0xCu);
    }

    v4 = MEMORY[0x1E69B13D8];
    v5 = *MEMORY[0x1E69B1340];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AF00] callStackSymbols];
    v8 = [v6 stringWithFormat:@"%@", v7];
    v10 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [v4 snapshotWithDomain:v5 type:@"Bug" subType:@"MPAVItem" context:@"Asset is nil" triggerThresholdValues:0 events:v9 completion:0];
  }
}

- (void)_loadAssetAndPlayerItemWithTask:(id)task completion:(id)completion
{
  taskCopy = task;
  completionCopy = completion;
  v8 = qos_class_self();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__MPAVItem__loadAssetAndPlayerItemWithTask_completion___block_invoke;
  aBlock[3] = &unk_1E767FD30;
  v20 = v8;
  v19 = completionCopy;
  v9 = completionCopy;
  v10 = _Block_copy(aBlock);
  assetQueue = self->_assetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MPAVItem__loadAssetAndPlayerItemWithTask_completion___block_invoke_3;
  block[3] = &unk_1E7681568;
  v16 = taskCopy;
  v17 = v10;
  block[4] = self;
  v12 = taskCopy;
  v13 = v10;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8, 0, block);
  dispatch_async(assetQueue, v14);
}

void __55__MPAVItem__loadAssetAndPlayerItemWithTask_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(*(a1 + 40), 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MPAVItem__loadAssetAndPlayerItemWithTask_completion___block_invoke_2;
  block[3] = &unk_1E7681568;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __55__MPAVItem__loadAssetAndPlayerItemWithTask_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) clearAdjunctErrors];
  v2 = MPProcessInfoSystemWallClockUptime();
  *(*(a1 + 32) + 202) = 1;
  v3 = *(a1 + 32);
  if (*(v3 + 32) != 1)
  {
    goto LABEL_7;
  }

  v8 = *(v3 + 24);
  if (!v8 || ![*(a1 + 32) canUseLoadedAsset] || (objc_msgSend(v8, "error"), (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, v6 = objc_msgSend(v8, "status"), v5, v6 == 2))
  {

    v3 = *(a1 + 32);
LABEL_7:
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__MPAVItem__loadAssetAndPlayerItemWithTask_completion___block_invoke_4;
    v10[3] = &unk_1E767FD80;
    v10[4] = v3;
    v12 = v2;
    v7 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v3 loadAssetAndPlayerItemWithTask:v7 completion:v10];

    return;
  }

  if (([*(a1 + 32) canReusePlayerItem] & 1) == 0)
  {
    [*(a1 + 32) _copyPlayerItem];
  }

  (*(*(a1 + 48) + 16))();
}

void __55__MPAVItem__loadAssetAndPlayerItemWithTask_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 40);
  v6 = v8;
  v7 = v5;
  msv_dispatch_async_on_queue();
}

uint64_t __55__MPAVItem__loadAssetAndPlayerItemWithTask_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v3 = v2[3];
    [v2 setIsAssetLoaded:v3 != 0];
    if (v3)
    {
      [*(a1 + 32) _loadAssetProperties];
      v4 = +[MPMediaLibraryPrivacyContext contextForDefaultClient];
      v5 = *(a1 + 32);
      v6 = *(v5 + 168);
      *(v5 + 168) = v4;

      [*(*(a1 + 32) + 168) beginAccessInterval];
    }
  }

  else
  {
    [v2 setIsAssetLoaded:0];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__MPAVItem__loadAssetAndPlayerItemWithTask_completion___block_invoke_6;
  v8[3] = &unk_1E7682398;
  v8[4] = *(a1 + 32);
  v8[5] = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], v8);
  return (*(*(a1 + 56) + 16))();
}

void __55__MPAVItem__loadAssetAndPlayerItemWithTask_completion___block_invoke_6(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) updatePlayerItemMetadata];
  [*(a1 + 32) _updateSoundCheckVolumeNormalizationForPlayerItem];
  v2 = MPProcessInfoSystemWallClockUptime();
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v7 = @"MPAVItemUserInfoKeyLoadDuration";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v2 - *(a1 + 40)];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v3 postNotificationName:@"MPAVItemAssetIsLoadedNotification" object:v4 userInfo:v6];
}

- (void)dealloc
{
  [(MPMediaLibraryPrivacyContext *)self->_privacyContext endAccessInterval];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_MPAVItemInternalLikedStateDidChangeNotification" object:0];
  [(MPAVItem *)self _removeObservationsForAVPlayerItem:self->_avPlayerItem];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];

  v4.receiver = self;
  v4.super_class = MPAVItem;
  [(MPAVItem *)&v4 dealloc];
}

- (MPAVItem)initWithPlayerItem:(id)item
{
  v23 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = MPAVItem;
  v5 = [(MPAVItem *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_create("com.apple.MediaPlayer.MPAVItem.assetQueue", 0);
    assetQueue = v6->_assetQueue;
    v6->_assetQueue = v7;

    if (itemCopy)
    {
      asset = [itemCopy asset];
      asset = v6->_asset;
      v6->_asset = asset;

      [(MPAVItem *)v6 setPlayerItem:itemCopy];
      v6->_isAssetLoaded = 1;
      v6->_isPreloadedAsset = 1;
      v6->_didAttemptToLoadAsset = 1;
      [(MPAVItem *)v6 _loadAssetProperties];
      v11 = os_log_create("com.apple.amp.mediaplayer", "Playback");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        avPlayerItem = v6->_avPlayerItem;
        *buf = 138543362;
        v22 = avPlayerItem;
        _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "    AVPlayerItem: %{public}@", buf, 0xCu);
      }
    }

    v6->_defaultPlaybackRate = 1.0;
    *&v6->_cachedDuration = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v6 + 108) = *(v6 + 108) & 0xFC | 2;
    v6->_likedState = 0;
    v6->_type = 0;
    v6->_nowPlayingInfoQueueIndex = 0x7FFFFFFFFFFFFFFFLL;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    contentItemID = v6->_contentItemID;
    v6->_contentItemID = uUIDString;

    v16 = [MEMORY[0x1E695DFA8] set];
    pendingContentItemUpdates = v6->_pendingContentItemUpdates;
    v6->_pendingContentItemUpdates = v16;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__internalLikedStateDidChangeNotification_ name:@"_MPAVItemInternalLikedStateDidChangeNotification" object:0];
  }

  return v6;
}

- (MPAVItem)initWithAsset:(id)asset
{
  if (asset)
  {
    v4 = [MEMORY[0x1E69880B0] playerItemWithAsset:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(MPAVItem *)self initWithPlayerItem:v4];

  return v5;
}

- (MPAVItem)initWithURL:(id)l options:(id)options
{
  v5 = [MEMORY[0x1E6988168] URLAssetWithURL:l options:options];
  v6 = [(MPAVItem *)self initWithAsset:v5];

  return v6;
}

- (MPAVItem)initWithURL:(id)l
{
  v4 = [MEMORY[0x1E6988168] URLAssetWithURL:l options:0];
  v5 = [(MPAVItem *)self initWithAsset:v4];

  return v5;
}

+ (id)URLFromPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:pathCopy relativeToURL:0];
    scheme = [v4 scheme];

    if (scheme)
    {
      v6 = v4;
    }

    else
    {
      stringByRemovingPercentEncoding = [pathCopy stringByRemovingPercentEncoding];
      uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
      v9 = [stringByRemovingPercentEncoding stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

      v10 = [MEMORY[0x1E695DFF8] URLWithString:v9 relativeToURL:0];

      scheme2 = [v10 scheme];

      if (!scheme2)
      {
        v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];

        v10 = v12;
      }

      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end