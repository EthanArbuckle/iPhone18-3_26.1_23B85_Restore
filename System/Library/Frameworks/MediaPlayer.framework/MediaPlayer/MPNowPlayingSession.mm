@interface MPNowPlayingSession
+ (id)nowPlayingSessionForPlayerID:(id)a3;
+ (id)nowPlayingSessionForPlayerPath:(id)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)netTimeForGrossTime:(SEL)a3;
- (AVAudioSession)audioSession;
- (BOOL)hasInvalidAdTimeRange:(id)a3 totalDuration:(id)a4;
- (MPNowPlayingInfoCenter)nowPlayingInfoCenter;
- (MPNowPlayingSession)initWithPlayerPath:(id)a3 routingContextID:(id)a4;
- (MPNowPlayingSession)initWithPlayers:(NSArray *)players;
- (float)effectivePlaybackRateWithPlayer:(id)a3;
- (id)delegate;
- (id)mediaExperienceIDs;
- (unsigned)audioSessionID;
- (void)_playerItemNowPlayingInfoDidChange:(id)a3;
- (void)activePlayerDidChangeNotification:(id)a3;
- (void)addPlayer:(AVPlayer *)player;
- (void)addPlayerItemObservers:(id)a3;
- (void)addPlayerObservers:(id)a3;
- (void)becomeActiveIfPossibleWithCompletion:(void *)completion;
- (void)dealloc;
- (void)endpointWithCompletion:(id)a3;
- (void)extractNowPlayingInfoFromPlayersAndUpdateAdRanges;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playerItemDidPlayToEnd:(id)a3;
- (void)playerItemPlaybackStalled:(id)a3;
- (void)playerItemTimeJumped:(id)a3;
- (void)playerPictureInPictureEnabledDidChangeNotification:(id)a3;
- (void)playerRateDidChange:(id)a3;
- (void)removePlayer:(AVPlayer *)player;
- (void)removePlayerItemObservers:(id)a3;
- (void)removePlayerObservers:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setAutomaticallyPublishesNowPlayingInfo:(BOOL)automaticallyPublishesNowPlayingInfo;
- (void)setCanBecomeActive:(BOOL)a3;
- (void)setCurrentAdTimeRanges:(id)a3;
- (void)setCurrentAssetNetCreditsStartTime:(double)a3;
- (void)setPictureInPictureEnabled:(BOOL)a3;
- (void)updateAudioSession:(id)a3;
- (void)updateMediaExperienceIDs;
- (void)updateNowPlayingInfo;
@end

@implementation MPNowPlayingSession

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)endpointWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MPNowPlayingSession.m" lineNumber:808 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E69B0998]);
  v7 = [(MPNowPlayingSession *)self routingContextID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__MPNowPlayingSession_endpointWithCompletion___block_invoke;
  v10[3] = &unk_1E7680D68;
  v11 = v5;
  v8 = v5;
  [v6 searchEndpointsForRoutingContextUID:v7 timeout:@"MPNowPlayingSession.endpointWithCompletion" reason:MEMORY[0x1E69E96A0] queue:v10 completion:7.0];
}

- (void)playerPictureInPictureEnabledDidChangeNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__MPNowPlayingSession_playerPictureInPictureEnabledDidChangeNotification___block_invoke;
  v6[3] = &unk_1E76823C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __74__MPNowPlayingSession_playerPictureInPictureEnabledDidChangeNotification___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69B1310]];

    v4 = *(*(a1 + 32) + 144);
    if ([v3 isEqual:v4])
    {
      v5 = v4;
      MRMediaRemoteGetPictureInPictureStatusForPlayer();
    }
  }
}

uint64_t __74__MPNowPlayingSession_playerPictureInPictureEnabledDidChangeNotification___block_invoke_2(uint64_t result, char a2)
{
  v3 = *(result + 32);
  if ((*(v3 + 8) & 1) == 0)
  {
    v4 = result;
    *(v3 + 27) = a2;
    CanBecomeActivePlayer = MRMediaRemoteCanBecomeActivePlayer();
    v6 = *(v4 + 32);

    return [v6 setCanBecomeActive:CanBecomeActivePlayer];
  }

  return result;
}

- (void)activePlayerDidChangeNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__MPNowPlayingSession_activePlayerDidChangeNotification___block_invoke;
  v6[3] = &unk_1E76823C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __57__MPNowPlayingSession_activePlayerDidChangeNotification___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    v3 = [*(a1 + 40) userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B1310]];

    [*(a1 + 32) setActive:{objc_msgSend(*(*(a1 + 32) + 144), "isEqual:", v4)}];
    [*(a1 + 32) setCanBecomeActive:MRMediaRemoteCanBecomeActivePlayer()];
  }
}

- (void)playerItemDidPlayToEnd:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v5 = v7;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEBUG, "<%@: %p> playerItemDidPlayToEnd", &v6, 0x16u);
  }

  [(MPNowPlayingSession *)self updateNowPlayingInfo];
}

- (void)playerItemPlaybackStalled:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v5 = v7;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEBUG, "<%@: %p> playerItemPlaybackStalled", &v6, 0x16u);
  }

  [(MPNowPlayingSession *)self updateNowPlayingInfo];
}

- (void)playerItemTimeJumped:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v5 = v7;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEBUG, "<%@: %p> playerItemTimeJumped", &v6, 0x16u);
  }

  [(MPNowPlayingSession *)self updateNowPlayingInfo];
}

- (void)_playerItemNowPlayingInfoDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v5 = v7;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEBUG, "<%@: %p> _playerItemNowPlayingInfoDidChange", &v6, 0x16u);
  }

  [(MPNowPlayingSession *)self extractNowPlayingInfoFromPlayersAndUpdateAdRanges];
  [(MPNowPlayingSession *)self updateNowPlayingInfo];
}

- (void)playerRateDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v5 = v7;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEBUG, "<%@: %p> playerRateDidChange", &v6, 0x16u);
  }

  [(MPNowPlayingSession *)self updateNowPlayingInfo];
}

- (void)removePlayerItemObservers:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v7 = [v4 defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x1E6987A50] object:v5];
  [v7 removeObserver:self name:*MEMORY[0x1E6987A48] object:v5];
  [v7 removeObserver:self name:*MEMORY[0x1E6987A10] object:v5];
  v6 = NSStringFromSelector(sel_duration);
  [v5 removeObserver:self forKeyPath:v6 context:MPNowPlayingPublisherPlayerItemDurationObserverContext];
}

- (void)addPlayerItemObservers:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v7 = [v4 defaultCenter];
  [v7 addObserver:self selector:sel_playerItemTimeJumped_ name:*MEMORY[0x1E6987A50] object:v5];
  [v7 addObserver:self selector:sel_playerItemPlaybackStalled_ name:*MEMORY[0x1E6987A48] object:v5];
  [v7 addObserver:self selector:sel_playerItemDidPlayToEnd_ name:*MEMORY[0x1E6987A10] object:v5];
  v6 = NSStringFromSelector(sel_duration);
  [v5 addObserver:self forKeyPath:v6 options:1 context:MPNowPlayingPublisherPlayerItemDurationObserverContext];
}

- (void)removePlayerObservers:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v8 = [v4 defaultCenter];
  [v8 removeObserver:self name:*MEMORY[0x1E6987A70] object:v5];
  v6 = NSStringFromSelector(sel_currentItem);
  [v5 removeObserver:self forKeyPath:v6 context:MPNowPlayingPublisherPlayerItemObserverContext];

  v7 = NSStringFromSelector(sel_timeControlStatus);
  [v5 removeObserver:self forKeyPath:v7 context:MPNowPlayingPublisherPlayerTimeControlObserverContext];
}

- (void)addPlayerObservers:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v8 = [v4 defaultCenter];
  [v8 addObserver:self selector:sel_playerRateDidChange_ name:*MEMORY[0x1E6987A70] object:v5];
  v6 = NSStringFromSelector(sel_currentItem);
  [v5 addObserver:self forKeyPath:v6 options:3 context:MPNowPlayingPublisherPlayerItemObserverContext];

  v7 = NSStringFromSelector(sel_timeControlStatus);
  [v5 addObserver:self forKeyPath:v7 options:0 context:MPNowPlayingPublisherPlayerTimeControlObserverContext];
}

- (void)updateNowPlayingInfo
{
  v3 = [(MPNowPlayingSession *)self players];
  v4 = [v3 firstObject];

  v5 = [v4 currentItem];
  if (!v5)
  {
    [(MPNowPlayingInfoCenter *)self->_nowPlayingInfoCenter setNowPlayingInfo:0];
    goto LABEL_15;
  }

  v6 = [(MPNowPlayingSession *)self baseNowPlayingInfo];
  v7 = [v6 mutableCopy];

  v8 = MEMORY[0x1E696AD98];
  [(MPNowPlayingSession *)self effectivePlaybackRateWithPlayer:v4];
  v9 = [v8 numberWithFloat:?];
  [v7 setObject:v9 forKeyedSubscript:@"MPNowPlayingInfoPropertyPlaybackRate"];

  v23 = 0uLL;
  v24 = 0;
  if (!v4 || ([v4 currentTime], (~HIDWORD(v23) & 0x11) != 0))
  {
    v20 = v23;
    v21 = v24;
    [(MPNowPlayingSession *)self netTimeForGrossTime:&v20];
    Seconds = CMTimeGetSeconds(&time);
    [(MPNowPlayingSession *)self currentAssetNetDuration];
    v14 = v13;
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v7 setObject:v15 forKeyedSubscript:@"playbackDuration"];

    v16 = [MEMORY[0x1E696AD98] numberWithDouble:Seconds];
    [v7 setObject:v16 forKeyedSubscript:@"MPNowPlayingInfoPropertyElapsedPlaybackTime"];

    [(MPNowPlayingSession *)self currentAssetNetCreditsStartTime];
    if (v17 <= 0.0)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    v19 = 0.0;
    if (v18 > 0.0)
    {
      v19 = Seconds / v18 * 100.0;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithDouble:round(v19) / 100.0];
    v11 = @"MPNowPlayingInfoPropertyPlaybackProgress";
    goto LABEL_12;
  }

  [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"MPNowPlayingInfoPropertyIsLiveStream"];
  v10 = [v5 currentDate];
  if (v10)
  {
    v11 = @"MPNowPlayingInfoPropertyCurrentPlaybackDate";
LABEL_12:
    [v7 setObject:v10 forKeyedSubscript:v11];
  }

  [(MPNowPlayingInfoCenter *)self->_nowPlayingInfoCenter setNowPlayingInfo:v7];
LABEL_15:
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)netTimeForGrossTime:(SEL)a3
{
  if ((a4->var2 & 0x11) == 1)
  {
    v6 = self;
    v7 = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self currentAdTimeRanges];
    if (v7)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3810000000;
      v19 = "";
      v20 = *MEMORY[0x1E6960CC0];
      v21 = *(MEMORY[0x1E6960CC0] + 16);
      v8 = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)v6 currentAdTimeRanges];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __43__MPNowPlayingSession_netTimeForGrossTime___block_invoke;
      v13[3] = &unk_1E7680D18;
      v14 = *&a4->var0;
      var3 = a4->var3;
      v13[4] = &v16;
      [v8 enumerateObjectsUsingBlock:v13];

      lhs = *a4;
      v11 = *(v17 + 4);
      CMTimeSubtract(retstr, &lhs, &v11);
      _Block_object_dispose(&v16, 8);
    }

    else
    {
      v10 = MEMORY[0x1E6960C70];
      *&retstr->var0 = *MEMORY[0x1E6960C70];
      retstr->var3 = *(v10 + 16);
    }
  }

  else
  {
    v9 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v9 + 16);
  }

  return self;
}

void __43__MPNowPlayingSession_netTimeForGrossTime___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    [v6 timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  time = *(a1 + 40);
  if (CMTimeRangeContainsTime(&range, &time))
  {
    memset(&range, 0, 24);
    if (v7)
    {
      [v7 timeRange];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

    *&time.value = v16;
    time.epoch = v17;
    lhs = *(a1 + 40);
    CMTimeSubtract(&range.start, &lhs, &time);
    time = *(*(*(a1 + 32) + 8) + 32);
    lhs = range.start;
    CMTimeAdd(&v14, &time, &lhs);
    *(*(*(a1 + 32) + 8) + 32) = v14;
LABEL_13:
    *a4 = 1;
    goto LABEL_14;
  }

  if (v7)
  {
    [v7 timeRange];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  *&range.start.value = v11;
  range.start.epoch = v12;
  time = *(a1 + 40);
  if ((CMTimeCompare(&range.start, &time) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(*(a1 + 32) + 8);
  if (v7)
  {
    [v7 timeRange];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  *&range.start.value = *(v9 + 8);
  range.start.epoch = *(&v9[1] + 1);
  time = *(v8 + 32);
  CMTimeAdd(&v10, &time, &range.start);
  *(*(*(a1 + 32) + 8) + 32) = v10;
LABEL_14:
}

- (float)effectivePlaybackRateWithPlayer:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 timeControlStatus] == 2)
  {
    memset(&v28, 0, sizeof(v28));
    if (v4)
    {
      [v4 currentTime];
    }

    v5 = [(MPNowPlayingSession *)self currentAdTimeRanges];
    if ([v5 count])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v25;
        v21 = *MEMORY[0x1E6960CC0];
        v10 = *(MEMORY[0x1E6960CC0] + 16);
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v25 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v24 + 1) + 8 * i);
            memset(&buf, 0, sizeof(buf));
            if (v12)
            {
              [v12 timeRange];
            }

            *&time1.start.value = v21;
            time1.start.epoch = v10;
            time2 = v28;
            if (CMTimeCompare(&time1.start, &time2) >= 1)
            {
              *&time1.start.value = v21;
              time1.start.epoch = v10;
              time2 = buf.start;
              if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0)
              {
                *&time1.start.value = *&buf.start.value;
                time1.start.epoch = buf.start.epoch;
                rhs = v28;
                CMTimeAdd(&time2, &time1.start, &rhs);
                rhs = buf.duration;
                CMTimeRangeMake(&time1, &time2, &rhs);
                buf = time1;
              }
            }

            time1 = buf;
            time2 = v28;
            if (CMTimeRangeContainsTime(&time1, &time2))
            {
              v17 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = objc_opt_class();
                LODWORD(time1.start.value) = 138412546;
                *(&time1.start.value + 4) = v18;
                LOWORD(time1.start.flags) = 2048;
                *(&time1.start.flags + 2) = self;
                v19 = v18;
                _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "<%@: %p> effective playback rate 0 due to ad", &time1, 0x16u);
              }

              v14 = 0.0;
              goto LABEL_26;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v24 objects:v31 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }

    [v4 rate];
    v14 = v13;
LABEL_26:
  }

  else
  {
    v15 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.start.value) = 138412546;
      *(&buf.start.value + 4) = objc_opt_class();
      LOWORD(buf.start.flags) = 2048;
      *(&buf.start.flags + 2) = self;
      v16 = *(&buf.start.value + 4);
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEBUG, "<%@: %p> effective playback rate 0 due to non-playing time control", &buf, 0x16u);
    }

    v14 = 0.0;
  }

  return v14;
}

- (void)setCurrentAdTimeRanges:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v22 = a3;
  objc_storeStrong(&self->_currentAdTimeRanges, a3);
  v5 = [(MPNowPlayingSession *)self players];
  v23 = [v5 firstObject];

  objc_initWeak(&location, self);
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = [(MPNowPlayingSession *)self currentAdTimeRanges];
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v8)
  {
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = MEMORY[0x1E696B098];
        if (v11)
        {
          [*(*(&v40 + 1) + 8 * i) timeRange];
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
        }

        *&v39.value = v36;
        v39.epoch = v37;
        v13 = [v12 valueWithCMTime:{&v39, v22}];
        [v24 addObject:v13];

        v14 = MEMORY[0x1E696B098];
        if (v11)
        {
          [v11 timeRange];
          *&lhs.value = v32;
          lhs.epoch = v33;
          [v11 timeRange];
        }

        else
        {
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&lhs, 0, sizeof(lhs));
          v29 = 0u;
          memset(v30, 0, sizeof(v30));
        }

        rhs = *(v30 + 8);
        CMTimeAdd(&v39, &lhs, &rhs);
        v15 = [v14 valueWithCMTime:&v39];
        [v6 addObject:v15];
      }

      v8 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v8);
  }

  v16 = [v24 copy];
  v17 = [(MPNowPlayingSession *)self privateQueue];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __46__MPNowPlayingSession_setCurrentAdTimeRanges___block_invoke;
  v27[3] = &unk_1E76825E8;
  objc_copyWeak(&v28, &location);
  v18 = [v23 addBoundaryTimeObserverForTimes:v16 queue:v17 usingBlock:v27];

  [(MPNowPlayingSession *)self setAdTimeRangesStartObserverToken:v18];
  v19 = [v6 copy];
  v20 = [(MPNowPlayingSession *)self privateQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __46__MPNowPlayingSession_setCurrentAdTimeRanges___block_invoke_74;
  v25[3] = &unk_1E76825E8;
  objc_copyWeak(&v26, &location);
  v21 = [v23 addBoundaryTimeObserverForTimes:v19 queue:v20 usingBlock:v25];

  [(MPNowPlayingSession *)self setAdTimeRangesEndObserverToken:v21];
  objc_destroyWeak(&v26);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __46__MPNowPlayingSession_setCurrentAdTimeRanges___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = objc_opt_class();
      v9 = 2048;
      v10 = WeakRetained;
      v3 = v8;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "<%@: %p> enter ad break start boundary time observer block", &v7, 0x16u);
    }

    [WeakRetained updateNowPlayingInfo];
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v7 = 138412546;
      v8 = v5;
      v9 = 2048;
      v10 = WeakRetained;
      v6 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "<%@: %p> exit ad break start boundary time observer block", &v7, 0x16u);
    }
  }
}

void __46__MPNowPlayingSession_setCurrentAdTimeRanges___block_invoke_74(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = objc_opt_class();
      v9 = 2048;
      v10 = WeakRetained;
      v3 = v8;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "<%@: %p> enter ad break end boundary time observer block", &v7, 0x16u);
    }

    [WeakRetained updateNowPlayingInfo];
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v7 = 138412546;
      v8 = v5;
      v9 = 2048;
      v10 = WeakRetained;
      v6 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "<%@: %p> exit ad break end boundary time observer block", &v7, 0x16u);
    }
  }
}

- (void)setCurrentAssetNetCreditsStartTime:(double)a3
{
  v31 = *MEMORY[0x1E69E9840];
  self->_currentAssetNetCreditsStartTime = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(MPNowPlayingSession *)self currentAdTimeRanges];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = *v26;
    v8 = a3;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        memset(v24, 0, sizeof(v24));
        if (v10)
        {
          [v10 timeRange];
        }

        time = v24[0];
        if (CMTimeGetSeconds(&time) < a3)
        {
          time = v24[1];
          v8 = v8 + CMTimeGetSeconds(&time);
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = a3;
  }

  v11 = [(MPNowPlayingSession *)self players];
  v12 = [v11 firstObject];

  memset(v24, 0, 24);
  CMTimeMakeWithSeconds(v24, v8, 1000000000);
  objc_initWeak(&location, self);
  time = v24[0];
  v13 = [MEMORY[0x1E696B098] valueWithCMTime:&time];
  v29 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v15 = [(MPNowPlayingSession *)self privateQueue];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __58__MPNowPlayingSession_setCurrentAssetNetCreditsStartTime___block_invoke;
  v20 = &unk_1E76825E8;
  objc_copyWeak(&v21, &location);
  v16 = [v12 addBoundaryTimeObserverForTimes:v14 queue:v15 usingBlock:&v17];

  [(MPNowPlayingSession *)self setCreditsTimeObserverToken:v16, v17, v18, v19, v20];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __58__MPNowPlayingSession_setCurrentAssetNetCreditsStartTime___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = objc_opt_class();
      v9 = 2048;
      v10 = WeakRetained;
      v3 = v8;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "<%@: %p> enter credits boundary time observer block", &v7, 0x16u);
    }

    [WeakRetained updateNowPlayingInfo];
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v7 = 138412546;
      v8 = v5;
      v9 = 2048;
      v10 = WeakRetained;
      v6 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "<%@: %p> exit credits boundary time observer block", &v7, 0x16u);
    }
  }
}

- (BOOL)hasInvalidAdTimeRange:(id)a3 totalDuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3810000000;
  v23 = "";
  v24 = *MEMORY[0x1E6960CC0];
  v25 = *(MEMORY[0x1E6960CC0] + 16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__MPNowPlayingSession_hasInvalidAdTimeRange_totalDuration___block_invoke;
  v15[3] = &unk_1E7680CF0;
  v18 = &v26;
  v7 = v6;
  v16 = v7;
  v8 = v5;
  v17 = v8;
  v19 = &v20;
  [v8 enumerateObjectsUsingBlock:v15];
  if (v7)
  {
    v14 = *(v21 + 4);
    Seconds = CMTimeGetSeconds(&v14);
    [v7 floatValue];
    v11 = v27;
    if (Seconds >= v10)
    {
      *(v27 + 24) = 1;
    }
  }

  else
  {
    v11 = v27;
  }

  v12 = *(v11 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

void __59__MPNowPlayingSession_hasInvalidAdTimeRange_totalDuration___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    [v7 timeRange];
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    if (a3)
    {
      goto LABEL_6;
    }
  }

  *&time1.start.value = *MEMORY[0x1E6960CC0];
  time1.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  *&time2.start.value = v26;
  time2.start.epoch = v27;
  if (CMTimeCompare(&time1.start, &time2.start) >= 1)
  {
LABEL_22:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_25;
  }

LABEL_6:
  memset(&v25, 0, sizeof(v25));
  if (v8)
  {
    [v8 timeRange];
    *&time1.start.value = v22;
    time1.start.epoch = v23;
    [v8 timeRange];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    memset(&time1, 0, 24);
    v20 = 0u;
    memset(v21, 0, sizeof(v21));
  }

  *&time2.start.value = *(v21 + 8);
  time2.start.epoch = *(&v21[1] + 1);
  CMTimeAdd(&v25, &time1.start, &time2.start);
  memset(&v19, 0, sizeof(v19));
  v9 = [*(a1 + 32) intValue];
  CMTimeMake(&v19, v9, v25.timescale);
  if (*(a1 + 32))
  {
    if ([*(a1 + 40) count] - 1 == a3)
    {
      time1.start = v25;
      time2.start = v19;
      if (CMTimeCompare(&time1.start, &time2.start) >= 1)
      {
        goto LABEL_22;
      }
    }
  }

  if ([*(a1 + 40) count] - 1 > a3)
  {
    memset(&time1, 0, sizeof(time1));
    v10 = [*(a1 + 40) objectAtIndex:a3 + 1];
    v11 = v10;
    if (v10)
    {
      [v10 timeRange];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    memset(&time2, 0, sizeof(time2));
    if (v8)
    {
      [v8 timeRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    otherRange = time1;
    CMTimeRangeGetIntersection(&time2, &range, &otherRange);
    *&range.start.value = *MEMORY[0x1E6960CC0];
    range.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    otherRange.start = time2.duration;
    if (CMTimeCompare(&range.start, &otherRange.start) < 0)
    {
      goto LABEL_22;
    }
  }

  v12 = *(*(a1 + 56) + 8);
  if (v8)
  {
    [v8 timeRange];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  *&time1.start.value = *(v13 + 8);
  time1.start.epoch = *(&v13[1] + 1);
  *&time2.start.value = *(v12 + 32);
  time2.start.epoch = *(v12 + 48);
  CMTimeAdd(&v14, &time2.start, &time1.start);
  *(*(*(a1 + 56) + 8) + 32) = v14;
LABEL_25:
}

- (void)extractNowPlayingInfoFromPlayersAndUpdateAdRanges
{
  v64[3] = *MEMORY[0x1E69E9840];
  v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v64[0] = @"MPNowPlayingInfoPropertyPlaybackRate";
  v64[1] = @"MPNowPlayingInfoPropertyElapsedPlaybackTime";
  v64[2] = @"playbackDuration";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:3];
  [(MPNowPlayingSession *)self players];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v55 = 0u;
  v5 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  v46 = v4;
  if (v5)
  {
    v6 = v5;
    v7 = *v53;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v53 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v52 + 1) + 8 * i);
        v10 = [v9 currentItem];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 nowPlayingInfo];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 mutableCopy];
            [v14 removeObjectsForKeys:v4];
            [v3 addEntriesFromDictionary:v14];
          }

          else
          {
            v14 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v16 = objc_opt_class();
              *buf = 138412802;
              v58 = v16;
              v59 = 2048;
              v60 = self;
              v61 = 2112;
              v62 = v11;
              v17 = self;
              v18 = v3;
              v19 = v16;
              _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "<%@: %p> player item has no nowPlayingInfo dictionary: %@", buf, 0x20u);

              v3 = v18;
              self = v17;
              v4 = v46;
            }
          }
        }

        else
        {
          v13 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          v15 = objc_opt_class();
          *buf = 138412802;
          v58 = v15;
          v59 = 2048;
          v60 = self;
          v61 = 2112;
          v62 = v9;
          v14 = v15;
          _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEFAULT, "<%@: %p> player has no player item: %@", buf, 0x20u);
        }

LABEL_14:
      }

      v6 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v6);
  }

  v20 = [v3 objectForKey:{@"MPNowPlayingInfoPropertyAdTimeRanges", v44}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = self;
    v22 = v3;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v23 = v20;
    v24 = [v23 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v49;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v49 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v48 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v45 addObject:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v25);
    }

    v29 = [v45 allObjects];
    v30 = [v29 sortedArrayUsingComparator:&__block_literal_global_68_53208];

    v31 = [v3 objectForKey:@"playbackDuration"];
    if ([(MPNowPlayingSession *)v21 hasInvalidAdTimeRange:v30 totalDuration:v31])
    {

      v32 = [(MPRemoteCommandCenter *)v21->_remoteCommandCenter seekForwardCommand];
      [v32 setForceDisabled:1];

      v33 = [(MPRemoteCommandCenter *)v21->_remoteCommandCenter specialSeekForwardCommand];
      [v33 setForceDisabled:1];

      v34 = [(MPRemoteCommandCenter *)v21->_remoteCommandCenter seekForwardCommand];
      [v34 setDisabledReason:3];

      v35 = [(MPRemoteCommandCenter *)v21->_remoteCommandCenter specialSeekForwardCommand];
      [v35 setDisabledReason:3];
      v30 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v36 = [(MPRemoteCommandCenter *)v21->_remoteCommandCenter seekForwardCommand];
      [v36 setForceDisabled:0];

      v35 = [(MPRemoteCommandCenter *)v21->_remoteCommandCenter specialSeekForwardCommand];
      [v35 setForceDisabled:0];
    }

    v37 = [(MPNowPlayingSession *)v21 currentAdTimeRanges];
    v38 = [v37 isEqual:v30];

    if ((v38 & 1) == 0)
    {
      [(MPNowPlayingSession *)v21 setCurrentAdTimeRanges:v30];
    }

    v3 = v22;
    self = v21;
  }

  v39 = [v3 objectForKey:@"MPNowPlayingInfoPropertyCreditsStartTime"];
  v40 = 0.0;
  if (v39)
  {
    objc_opt_class();
    v41 = v45;
    if (objc_opt_isKindOfClass())
    {
      [v39 doubleValue];
      v40 = v42;
    }
  }

  else
  {
    v41 = v45;
  }

  [(MPNowPlayingSession *)self currentAssetNetCreditsStartTime];
  if (v43 != v40)
  {
    [(MPNowPlayingSession *)self setCurrentAssetNetCreditsStartTime:v40];
  }

  [(MPNowPlayingSession *)self setBaseNowPlayingInfo:v3];
}

uint64_t __72__MPNowPlayingSession_extractNowPlayingInfoFromPlayersAndUpdateAdRanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    [v4 timeRange];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  *&time1.value = v10;
  time1.epoch = v11;
  if (v5)
  {
    [v5 timeRange];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  time2 = v8;
  v6 = CMTimeCompare(&time1, &time2);

  return v6;
}

- (void)setPictureInPictureEnabled:(BOOL)a3
{
  if (!self->_invalidated && self->_pictureInPictureEnabled != a3)
  {
    self->_pictureInPictureEnabled = a3;
    MRMediaRemoteSetPictureInPictureStatusForPlayer();
  }
}

uint64_t __50__MPNowPlayingSession_setPictureInPictureEnabled___block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 8) & 1) == 0)
  {
    v2 = result;
    CanBecomeActivePlayer = MRMediaRemoteCanBecomeActivePlayer();
    v4 = *(v2 + 32);

    return [v4 setCanBecomeActive:CanBecomeActivePlayer];
  }

  return result;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained nowPlayingSessionDidChangeActive:self];
    }
  }
}

- (void)becomeActiveIfPossibleWithCompletion:(void *)completion
{
  v4 = completion;
  nowPlayingInfoCenter = self->_nowPlayingInfoCenter;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MPNowPlayingSession_becomeActiveIfPossibleWithCompletion___block_invoke;
  v7[3] = &unk_1E7680CA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MPNowPlayingInfoCenter *)nowPlayingInfoCenter _becomeActiveIfPossibleWithCompletion:v7];
}

void __60__MPNowPlayingSession_becomeActiveIfPossibleWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MPNowPlayingSession_becomeActiveIfPossibleWithCompletion___block_invoke_2;
  block[3] = &unk_1E7681568;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __60__MPNowPlayingSession_becomeActiveIfPossibleWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setActive:*(a1 + 40) == 0];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setCanBecomeActive:(BOOL)a3
{
  if (self->_canBecomeActive != a3)
  {
    self->_canBecomeActive = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained nowPlayingSessionDidChangeCanBecomeActive:self];
    }
  }
}

- (AVAudioSession)audioSession
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_audioSession;
  objc_sync_exit(v2);

  return v3;
}

- (unsigned)audioSessionID
{
  v2 = [(MPNowPlayingSession *)self audioSession];
  v3 = [v2 opaqueSessionID];

  return v3;
}

- (void)updateAudioSession:(id)a3
{
  v7 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_audioSession, a3);
  objc_sync_exit(v5);

  if (!v5->_invalidated)
  {
    [v7 opaqueSessionID];
    MRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayer();
  }

  v6 = [(MPNowPlayingSession *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 nowPlayingSession:v5 audioSessionDidChange:v7];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if ([(NSMutableSet *)self->_playerSet containsObject:a4])
  {
    v12 = [(MPNowPlayingSession *)self mxSessionIDKeyPath];
    v13 = [v10 isEqualToString:v12];

    if (v13)
    {
      [(MPNowPlayingSession *)self updateMediaExperienceIDs];
      goto LABEL_20;
    }
  }

  if (MPNowPlayingPublisherPlayerItemObserverContext == a6)
  {
    v14 = [v11 objectForKey:*MEMORY[0x1E696A500]];
    v15 = [v11 objectForKey:*MEMORY[0x1E696A4F0]];
    if (v14)
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      v17 = [v14 isEqual:v16];

      if ((v17 & 1) == 0)
      {
        [(MPNowPlayingSession *)self removePlayerItemObservers:v14];
      }
    }

    if (v15)
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      v19 = [v15 isEqual:v18];

      if ((v19 & 1) == 0)
      {
        [(MPNowPlayingSession *)self addPlayerItemObservers:v15];
        [(MPNowPlayingSession *)self extractNowPlayingInfoFromPlayersAndUpdateAdRanges];
      }
    }

    [(MPNowPlayingSession *)self updateNowPlayingInfo];

    goto LABEL_19;
  }

  if (MPNowPlayingPublisherPlayerItemDurationObserverContext == a6)
  {
    v20 = [v11 objectForKey:*MEMORY[0x1E696A4F0]];
    v14 = v20;
    memset(&v21[56], 0, 24);
    if (!v20 || ([v20 CMTimeValue], (~*&v21[68] & 0x11) != 0))
    {
      memset(&v21[32], 0, 24);
      *v21 = *&v21[56];
      [(MPNowPlayingSession *)self netTimeForGrossTime:v21];
      *v21 = *&v21[32];
      [(MPNowPlayingSession *)self setCurrentAssetNetDuration:CMTimeGetSeconds(v21)];
    }

    [(MPNowPlayingSession *)self updateNowPlayingInfo];
LABEL_19:

    goto LABEL_20;
  }

  if (MPNowPlayingPublisherPlayerTimeControlObserverContext == a6)
  {
    [(MPNowPlayingSession *)self updateNowPlayingInfo];
  }

LABEL_20:
}

- (void)updateMediaExperienceIDs
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMutableSet count](self->_playerSet, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_playerSet;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 mxSessionID];

        if (v10)
        {
          v11 = [v9 mxSessionID];
          [v3 addObject:v11];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  mxSessionIDs = self->_mxSessionIDs;
  self->_mxSessionIDs = v12;

  if (!self->_invalidated)
  {
    MRMediaRemoteSetMXSessionIDForPlayer();
  }
}

void __47__MPNowPlayingSession_updateMediaExperienceIDs__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 128);
      v7 = *(v5 + 144);
      v8 = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = a2;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Failed to update MXSessionIDs: %{public}@ for player path: %{public}@. Error: %{public}@", &v8, 0x20u);
    }
  }
}

- (void)removePlayer:(AVPlayer *)player
{
  playerSet = self->_playerSet;
  v5 = player;
  [(NSMutableSet *)playerSet removeObject:v5];
  v6 = [(MPNowPlayingSession *)self mxSessionIDKeyPath];
  [(AVPlayer *)v5 removeObserver:self forKeyPath:v6];

  [(MPNowPlayingSession *)self updateMediaExperienceIDs];
  [(MPNowPlayingSession *)self removePlayerObservers:v5];
  v8 = [(AVPlayer *)v5 currentItem];

  v7 = v8;
  if (v8)
  {
    [(MPNowPlayingSession *)self removePlayerItemObservers:v8];
    v7 = v8;
  }
}

- (void)addPlayer:(AVPlayer *)player
{
  v8 = player;
  [(NSMutableSet *)self->_playerSet addObject:v8];
  v4 = [(MPNowPlayingSession *)self mxSessionIDKeyPath];
  [(AVPlayer *)v8 addObserver:self forKeyPath:v4 options:1 context:0];

  [(MPNowPlayingSession *)self updateMediaExperienceIDs];
  v5 = [(MPNowPlayingSession *)self automaticallyPublishesNowPlayingInfo];
  v6 = v8;
  if (v5)
  {
    [(MPNowPlayingSession *)self addPlayerObservers:v8];
    v7 = [(AVPlayer *)v8 currentItem];
    if (v7)
    {
      [(MPNowPlayingSession *)self addPlayerItemObservers:v7];
    }

    v6 = v8;
  }
}

- (id)mediaExperienceIDs
{
  v2 = [(NSSet *)self->_mxSessionIDs copy];

  return v2;
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  self->_invalidated = 1;
  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    playerPath = self->_playerPath;
    v8 = 138412802;
    v9 = v4;
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = playerPath;
    v6 = v4;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p - %@> invalidated", &v8, 0x20u);
  }

  [(MPNowPlayingInfoCenter *)self->_nowPlayingInfoCenter invalidate];
  [(MPRemoteCommandCenter *)self->_remoteCommandCenter invalidate];
  v7 = objc_opt_class();
  objc_sync_enter(v7);
  [__nowPlayingSessionMap removeObjectForKey:self->_playerPath];
  objc_sync_exit(v7);

  MRMediaRemoteRemovePlayer();
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  MRMediaRemoteSetWantsNowPlayingNotifications();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_playerSet;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(MPNowPlayingSession *)self mxSessionIDKeyPath];
        [v8 removeObserver:self forKeyPath:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = MPNowPlayingSession;
  [(MPNowPlayingSession *)&v10 dealloc];
}

- (MPNowPlayingInfoCenter)nowPlayingInfoCenter
{
  if ([(MPNowPlayingSession *)self automaticallyPublishesNowPlayingInfo])
  {
    v3 = os_log_create("MediaPlayer", "RuntimeIssues");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_1A238D000, v3, OS_LOG_TYPE_FAULT, "WARNING: using MPNowPlayingInfoCenter is unsupported when using automatic publishing.", v6, 2u);
    }
  }

  nowPlayingInfoCenter = self->_nowPlayingInfoCenter;

  return nowPlayingInfoCenter;
}

- (void)setAutomaticallyPublishesNowPlayingInfo:(BOOL)automaticallyPublishesNowPlayingInfo
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_automaticallyPublishesNowPlayingInfo != automaticallyPublishesNowPlayingInfo)
  {
    v3 = automaticallyPublishesNowPlayingInfo;
    v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      playerPath = self->_playerPath;
      *buf = 138413314;
      v24 = v6;
      v25 = 2048;
      v26 = self;
      v27 = 2112;
      v28 = playerPath;
      v29 = 2080;
      v30 = "[MPNowPlayingSession setAutomaticallyPublishesNowPlayingInfo:]";
      v31 = 1024;
      v32 = v3;
      v8 = v6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_INFO, "<%@: %p - %@> %s %d", buf, 0x30u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [(MPNowPlayingSession *)self playerSet];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if (self->_automaticallyPublishesNowPlayingInfo)
          {
            [(MPNowPlayingSession *)self removePlayerObservers:v14];
          }

          else
          {
            [(MPNowPlayingSession *)self addPlayerObservers:v14];
          }

          v15 = [v14 currentItem];
          if (v15)
          {
            [(MPNowPlayingSession *)self addPlayerItemObservers:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    self->_automaticallyPublishesNowPlayingInfo = v3;
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = v16;
    if (v3)
    {
      [v16 addObserver:self selector:sel__playerItemNowPlayingInfoDidChange_ name:@"MPPlayerItemNowPlayingInfoDidChangeNotification" object:0];
    }

    else
    {
      [v16 removeObserver:self name:@"MPPlayerItemNowPlayingInfoDidChangeNotification" object:0];
    }

    [(MPNowPlayingSession *)self extractNowPlayingInfoFromPlayersAndUpdateAdRanges];
    [(MPNowPlayingSession *)self updateNowPlayingInfo];
  }
}

- (MPNowPlayingSession)initWithPlayers:(NSArray *)players
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = players;
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];

  v8 = [objc_alloc(MEMORY[0x1E69B0AC8]) initWithIdentifier:v7 displayName:v7];
  v9 = objc_alloc(MEMORY[0x1E69B0AD0]);
  v10 = [MEMORY[0x1E69B0AA0] localOrigin];
  v11 = [MEMORY[0x1E69B09D8] localClient];
  v12 = [v9 initWithOrigin:v10 client:v11 player:v8];

  v13 = [(MPNowPlayingSession *)self initWithPlayerPath:v12 routingContextID:0];
  if (v13)
  {
    v25 = v8;
    if (!v5 || ![(NSArray *)v5 count])
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:v13 file:@"MPNowPlayingSession.m" lineNumber:156 description:@"MPNowPlayingSession must be initialized with one or more AVPlayer instances."];
    }

    v14 = [MEMORY[0x1E695DFA8] setWithArray:v5];
    playerSet = v13->_playerSet;
    v13->_playerSet = v14;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v13->_playerSet;
    v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        v20 = 0;
        do
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v26 + 1) + 8 * v20);
          v22 = [(MPNowPlayingSession *)v13 mxSessionIDKeyPath];
          [v21 addObserver:v13 forKeyPath:v22 options:1 context:0];

          ++v20;
        }

        while (v18 != v20);
        v18 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    [(MPNowPlayingSession *)v13 updateMediaExperienceIDs];
    v8 = v25;
  }

  return v13;
}

- (MPNowPlayingSession)initWithPlayerPath:(id)a3 routingContextID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = MPNowPlayingSession;
  v9 = [(MPNowPlayingSession *)&v30 init];
  v10 = v9;
  if (v9)
  {
    currentAdTimeRanges = v9->_currentAdTimeRanges;
    v9->_currentAdTimeRanges = MEMORY[0x1E695E0F0];

    v12 = dispatch_queue_create(0, 0);
    privateQueue = v10->_privateQueue;
    v10->_privateQueue = v12;

    v14 = [MEMORY[0x1E69B0AD0] localResolvedPlayerPathFromPlayerPath:v7];
    playerPath = v10->_playerPath;
    v10->_playerPath = v14;

    objc_storeStrong(&v10->_routingContextID, a4);
    v16 = objc_opt_class();
    objc_sync_enter(v16);
    if (initWithPlayerPath_routingContextID__onceToken != -1)
    {
      dispatch_once(&initWithPlayerPath_routingContextID__onceToken, &__block_literal_global_53237);
    }

    v17 = [objc_opt_class() nowPlayingSessionForPlayerPath:v10->_playerPath];

    if (v17)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:a2 object:v10 file:@"MPNowPlayingSession.m" lineNumber:126 description:{@"Cannot have two MPNowPlayingSession for the same playerPath: %@", v7}];
    }

    [__nowPlayingSessionMap setObject:v10 forKey:v7];
    objc_sync_exit(v16);

    v18 = [MPNowPlayingInfoCenter infoCenterForPlayerPath:v7];
    nowPlayingInfoCenter = v10->_nowPlayingInfoCenter;
    v10->_nowPlayingInfoCenter = v18;

    if (!v10->_nowPlayingInfoCenter)
    {
      v20 = [[MPNowPlayingInfoCenter alloc] initWithPlayerPath:v10->_playerPath];
      v21 = v10->_nowPlayingInfoCenter;
      v10->_nowPlayingInfoCenter = v20;
    }

    v22 = [MPRemoteCommandCenter commandCenterForPlayerPath:v10->_playerPath];
    remoteCommandCenter = v10->_remoteCommandCenter;
    v10->_remoteCommandCenter = v22;

    if (!v10->_remoteCommandCenter)
    {
      v24 = [[MPRemoteCommandCenter alloc] initWithPlayerPath:v7];
      v25 = v10->_remoteCommandCenter;
      v10->_remoteCommandCenter = v24;
    }

    v10->_canBecomeActive = MRMediaRemoteCanBecomeActivePlayer();
    MRMediaRemoteSetWantsNowPlayingNotifications();
    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    [v26 addObserver:v10 selector:sel_activePlayerDidChangeNotification_ name:*MEMORY[0x1E69B0C28] object:0];

    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:v10 selector:sel_playerPictureInPictureEnabledDidChangeNotification_ name:*MEMORY[0x1E69B12C0] object:0];
  }

  return v10;
}

void __59__MPNowPlayingSession_initWithPlayerPath_routingContextID___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = __nowPlayingSessionMap;
  __nowPlayingSessionMap = v0;
}

+ (id)nowPlayingSessionForPlayerPath:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [__nowPlayingSessionMap objectForKey:v3];
  objc_sync_exit(v4);

  return v5;
}

+ (id)nowPlayingSessionForPlayerID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69B0AC8]) initWithIdentifier:v3 displayName:v3];
  }

  else
  {
    v4 = [MEMORY[0x1E69B0AC8] defaultPlayer];
  }

  v5 = v4;
  v6 = objc_alloc(MEMORY[0x1E69B0AD0]);
  v7 = [MEMORY[0x1E69B0AA0] localOrigin];
  v8 = [MEMORY[0x1E69B09D8] localClient];
  v9 = [v6 initWithOrigin:v7 client:v8 player:v5];

  v10 = [objc_opt_class() nowPlayingSessionForPlayerPath:v9];

  return v10;
}

@end