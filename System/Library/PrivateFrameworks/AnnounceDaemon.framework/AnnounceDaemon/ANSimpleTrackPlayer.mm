@interface ANSimpleTrackPlayer
- (void)handleInterruptionDelay:(double)a3;
- (void)playInternalWithCompletionHandler:(id)a3;
@end

@implementation ANSimpleTrackPlayer

- (void)playInternalWithCompletionHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ANTrackPlayer *)self queuePlayer];
    v7 = [v6 currentItem];
    v8 = v7;
    if (v7)
    {
      [v7 duration];
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

  v10 = [(ANTrackPlayer *)self queuePlayer];
  [v10 play];

  v11 = [(ANTrackPlayer *)self queuePlayer];
  v12 = [v11 error];

  if (v12)
  {
    v13 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ANSimpleTrackPlayer *)v12 playInternalWithCompletionHandler:v13];
    }
  }

  v4[2](v4, v12);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleInterruptionDelay:(double)a3
{
  v18 = **&MEMORY[0x277CC08F0];
  v4 = [(ANTrackPlayer *)self queuePlayer];
  v5 = v4;
  if (v4)
  {
    [v4 currentTime];
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
    v10 = [(ANTrackPlayer *)self queuePlayer];
    v11 = v10;
    if (v10)
    {
      [v10 currentTime];
      LODWORD(v10) = v15;
    }

    else
    {
      v14[5] = 0;
      v15 = 0;
      v16 = 0;
    }

    CMTimeMakeWithSeconds(&v18, v9, v10);
  }

  v12 = [(ANTrackPlayer *)self queuePlayer];
  v13 = [v12 currentItem];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__ANSimpleTrackPlayer_handleInterruptionDelay___block_invoke;
  v14[3] = &unk_278C86A38;
  v14[4] = self;
  time = v18;
  [v13 seekToTime:&time completionHandler:v14];
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