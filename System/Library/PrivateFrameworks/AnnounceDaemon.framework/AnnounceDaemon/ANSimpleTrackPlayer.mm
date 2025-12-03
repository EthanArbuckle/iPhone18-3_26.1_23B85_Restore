@interface ANSimpleTrackPlayer
- (void)handleInterruptionDelay:(double)delay;
- (void)playInternalWithCompletionHandler:(id)handler;
@end

@implementation ANSimpleTrackPlayer

- (void)playInternalWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    queuePlayer = [(ANTrackPlayer *)self queuePlayer];
    currentItem = [queuePlayer currentItem];
    v8 = currentItem;
    if (currentItem)
    {
      [currentItem duration];
    }

    else
    {
      memset(&v15, 0, sizeof(v15));
    }

    Seconds = CMTimeGetSeconds(&v15);
    LODWORD(v15.value) = 136315394;
    *(&v15.value + 4) = "[ANSimpleTrackPlayer playInternalWithCompletionHandler:]";
    LOWORD(v15.flags) = 2048;
    *(&v15.flags + 2) = Seconds;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%s: Duration = %fs", &v15, 0x16u);
  }

  queuePlayer2 = [(ANTrackPlayer *)self queuePlayer];
  [queuePlayer2 play];

  queuePlayer3 = [(ANTrackPlayer *)self queuePlayer];
  error = [queuePlayer3 error];

  if (error)
  {
    v13 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ANSimpleTrackPlayer *)error playInternalWithCompletionHandler:v13];
    }
  }

  handlerCopy[2](handlerCopy, error);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleInterruptionDelay:(double)delay
{
  v18 = **&MEMORY[0x277CC08F0];
  queuePlayer = [(ANTrackPlayer *)self queuePlayer];
  v5 = queuePlayer;
  if (queuePlayer)
  {
    [queuePlayer currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  [(ANTrackPlayer *)self previousSkipGoesToPreviousTrackDelta];
  if (Seconds > v7)
  {
    [(ANTrackPlayer *)self previousSkipGoesToPreviousTrackDelta];
    v9 = Seconds - v8;
    queuePlayer2 = [(ANTrackPlayer *)self queuePlayer];
    v11 = queuePlayer2;
    if (queuePlayer2)
    {
      [queuePlayer2 currentTime];
      LODWORD(queuePlayer2) = v15;
    }

    else
    {
      v14[5] = 0;
      v15 = 0;
      v16 = 0;
    }

    CMTimeMakeWithSeconds(&v18, v9, queuePlayer2);
  }

  queuePlayer3 = [(ANTrackPlayer *)self queuePlayer];
  currentItem = [queuePlayer3 currentItem];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__ANSimpleTrackPlayer_handleInterruptionDelay___block_invoke;
  v14[3] = &unk_278C86A38;
  v14[4] = self;
  time = v18;
  [currentItem seekToTime:&time completionHandler:v14];
}

void __47__ANSimpleTrackPlayer_handleInterruptionDelay___block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = "unsuccessful";
    if (a2)
    {
      v4 = "successful";
    }

    v6 = 136315394;
    v7 = "[ANSimpleTrackPlayer handleInterruptionDelay:]_block_invoke";
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_INFO, "%s: Attempt to restart announcement after interruption was %s.", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)playInternalWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F525000, a2, OS_LOG_TYPE_ERROR, "Failed to play AVQueuePlayer %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end