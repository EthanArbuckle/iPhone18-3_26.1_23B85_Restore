@interface LPStreamingAudioPlayer
+ (id)playerWithAudio:(id)a3;
- (LPStreamingAudioPlayer)initWithAudio:(id)a3;
- (float)progress;
- (void)addClient:(id)a3;
- (void)dealloc;
- (void)dispatchDidChangeProgressToAllClients:(float)a3;
- (void)dispatchDidFailToPlayToAllClients;
- (void)dispatchDidTransitionToStateToAllClients:(unint64_t)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)play;
- (void)resetPlaybackState;
- (void)setActive:(BOOL)a3;
- (void)setPlaying:(BOOL)a3;
- (void)transitionToState:(unint64_t)a3;
@end

@implementation LPStreamingAudioPlayer

+ (id)playerWithAudio:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = allStreamingAudioPlayers();
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = *v22;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9[1] streamingURL];
        v11 = [v4 streamingURL];
        v12 = [v10 isEqual:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [v9[1] fileURL];
          v14 = [v4 fileURL];
          v15 = [v13 isEqual:v14];

          if ((v15 & 1) == 0)
          {
            v16 = [v9[1] _asset];
            v17 = [v4 _asset];
            v18 = v16 == v17;

            if (!v18)
            {
              continue;
            }
          }
        }

        v19 = v9;

        goto LABEL_13;
      }

      v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v19 = [[a1 alloc] initWithAudio:v4];
LABEL_13:

  return v19;
}

- (LPStreamingAudioPlayer)initWithAudio:(id)a3
{
  v5 = a3;
  v6 = [(LPStreamingAudioPlayer *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audio, a3);
    v7->_state = 0;
    v8 = +[LPMediaPlaybackManager shared];
    [v8 addMediaPlayer:v7];

    v9 = allStreamingAudioPlayers();
    [v9 addObject:v7];

    v10 = v7;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_timeObserver)
  {
    [(AVPlayer *)self->_player removeTimeObserver:?];
  }

  if (self->_endObserver)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_endObserver name:*MEMORY[0x1E6987A10] object:self->_item];
  }

  player = self->_player;
  if (player)
  {
    [(AVPlayer *)player removeObserver:self forKeyPath:@"timeControlStatus" context:timeControlStatusKVOContext_0];
  }

  v5 = +[LPMediaPlaybackManager shared];
  [v5 removeMediaPlayer:self];

  v6 = allStreamingAudioPlayers();
  [v6 removeObject:self];

  v7.receiver = self;
  v7.super_class = LPStreamingAudioPlayer;
  [(LPStreamingAudioPlayer *)&v7 dealloc];
}

- (void)play
{
  objc_storeStrong(&currentlyPlayingPlayer, self);
  player = self->_player;
  if (!player)
  {
    v4 = objc_alloc(MEMORY[0x1E69880B0]);
    v5 = [(LPAudio *)self->_audio _asset];
    v6 = [v4 initWithAsset:v5];
    item = self->_item;
    self->_item = v6;

    v8 = [objc_alloc(MEMORY[0x1E6988098]) initWithPlayerItem:self->_item];
    v9 = self->_player;
    self->_player = v8;

    v10 = +[LPMediaPlaybackManager shared];
    v11 = [v10 audioSession];
    [(AVPlayer *)self->_player setAudioSession:v11];

    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"timeControlStatus" options:5 context:timeControlStatusKVOContext_0];
    objc_initWeak(&location, self);
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *MEMORY[0x1E6987A10];
    v14 = self->_item;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __30__LPStreamingAudioPlayer_play__block_invoke;
    v20 = &unk_1E7A36A98;
    objc_copyWeak(&v21, &location);
    v15 = [v12 addObserverForName:v13 object:v14 queue:0 usingBlock:&v17];
    endObserver = self->_endObserver;
    self->_endObserver = v15;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    player = self->_player;
  }

  [(AVPlayer *)player play:v17];
}

void __30__LPStreamingAudioPlayer_play__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 3);
    v4 = *MEMORY[0x1E6960CC0];
    v5 = *(MEMORY[0x1E6960CC0] + 16);
    [v3 seekToTime:&v4];
    [v2 transitionToState:4];
  }
}

- (float)progress
{
  LODWORD(v4) = 1.0;
  if (self->_state != 4)
  {
    v13 = v6;
    v14 = v5;
    v15 = v2;
    v16 = v3;
    item = self->_item;
    if (item)
    {
      [(AVPlayerItem *)item currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    v10 = self->_item;
    if (v10)
    {
      [(AVPlayerItem *)v10 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    *&v4 = Seconds / CMTimeGetSeconds(&time);
  }

  return *&v4;
}

- (void)addClient:(id)a3
{
  v4 = a3;
  clients = self->_clients;
  v8 = v4;
  if (!clients)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_clients;
    self->_clients = v6;

    clients = self->_clients;
    v4 = v8;
  }

  [(NSHashTable *)clients addObject:v4];
}

- (void)dispatchDidChangeProgressToAllClients:(float)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_clients;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        *&v7 = a3;
        [*(*(&v10 + 1) + 8 * v9++) audioPlayer:self didChangeProgress:{v7, v10}];
      }

      while (v6 != v9);
      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)dispatchDidTransitionToStateToAllClients:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_clients;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) audioPlayer:self didTransitionToState:{a3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dispatchDidFailToPlayToAllClients
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_clients;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) audioPlayerDidFailToPlay:{self, v7}];
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setActive:(BOOL)a3
{
  player = self->_player;
  if (a3)
  {
    [(AVPlayer *)player play];
  }

  else
  {
    [(AVPlayer *)player pause];
  }
}

- (void)setPlaying:(BOOL)a3
{
  if (a3)
  {
    [(LPStreamingAudioPlayer *)self play];
  }

  else
  {
    [(LPStreamingAudioPlayer *)self pause];
  }
}

- (void)resetPlaybackState
{
  [(LPStreamingAudioPlayer *)self setPlaying:0];
  player = self->_player;
  v4 = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  [(AVPlayer *)player seekToTime:&v4];
  [(LPStreamingAudioPlayer *)self transitionToState:0];
}

- (void)transitionToState:(unint64_t)a3
{
  state = self->_state;
  self->_state = a3;
  switch(a3)
  {
    case 4uLL:
      if (self->_timeObserver)
      {
        [(AVPlayer *)self->_player removeTimeObserver:?];
        timeObserver = self->_timeObserver;
        self->_timeObserver = 0;
      }

      goto LABEL_13;
    case 3uLL:
      if (state == 4)
      {
        self->_state = 4;
        break;
      }

      if (self->_timeObserver)
      {
        [(AVPlayer *)self->_player removeTimeObserver:?];
        v13 = self->_timeObserver;
        self->_timeObserver = 0;
      }

      else
      {
        [(LPStreamingAudioPlayer *)self dispatchDidFailToPlayToAllClients];
        self->_state = 0;
      }

LABEL_13:
      v14 = +[LPMediaPlaybackManager shared];
      [v14 mediaPlayer:self didChangePlayingState:0];

      break;
    case 2uLL:
      objc_initWeak(&location, self);
      player = self->_player;
      CMTimeMake(&v18, 1, 30);
      v7 = MEMORY[0x1E69E96A0];
      v8 = MEMORY[0x1E69E96A0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __44__LPStreamingAudioPlayer_transitionToState___block_invoke;
      v16[3] = &unk_1E7A36AC0;
      objc_copyWeak(&v17, &location);
      v9 = [(AVPlayer *)player addPeriodicTimeObserverForInterval:&v18 queue:v7 usingBlock:v16];
      v10 = self->_timeObserver;
      self->_timeObserver = v9;

      v11 = +[LPMediaPlaybackManager shared];
      [v11 mediaPlayer:self didChangePlayingState:1];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
      goto LABEL_17;
  }

  if (a3 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = currentlyPlayingPlayer;
    if (currentlyPlayingPlayer == self)
    {
      currentlyPlayingPlayer = 0;
    }
  }

LABEL_17:
  if (state != self->_state)
  {
    [(LPStreamingAudioPlayer *)self dispatchDidTransitionToStateToAllClients:?];
  }
}

void __44__LPStreamingAudioPlayer_transitionToState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progress];
  [WeakRetained dispatchDidChangeProgressToAllClients:?];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (timeControlStatusKVOContext_0 == a6)
  {
    v13 = [(AVPlayer *)self->_player timeControlStatus];
    if (v13)
    {
      if (v13 == AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate)
      {
        v15 = [(AVPlayer *)self->_player reasonForWaitingToPlay];
        v16 = *MEMORY[0x1E6987AD0];

        if (v15 != v16)
        {
          goto LABEL_11;
        }

        v14 = 1;
      }

      else
      {
        if (v13 != AVPlayerTimeControlStatusPlaying)
        {
          goto LABEL_11;
        }

        v14 = 2;
      }
    }

    else
    {
      v14 = 3;
    }

    [(LPStreamingAudioPlayer *)self transitionToState:v14];
    goto LABEL_11;
  }

  v17.receiver = self;
  v17.super_class = LPStreamingAudioPlayer;
  [(LPStreamingAudioPlayer *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_11:
}

@end