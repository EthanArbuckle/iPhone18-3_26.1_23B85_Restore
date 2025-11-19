@interface ANAnchorTrackPlayer
- (void)handleInterruptionDelay:(double)a3;
- (void)playInternalWithCompletionHandler:(id)a3;
- (void)setStartTime:(id *)a3;
@end

@implementation ANAnchorTrackPlayer

- (void)playInternalWithCompletionHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ANAnchorTrackPlayer playInternalWithCompletionHandler:]";
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [(ANTrackPlayer *)self queuePlayer];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__ANAnchorTrackPlayer_playInternalWithCompletionHandler___block_invoke;
  v10[3] = &unk_278C86DA0;
  objc_copyWeak(&v12, buf);
  v10[4] = self;
  v13 = 1065353216;
  v7 = v4;
  v11 = v7;
  LODWORD(v8) = 1.0;
  [v6 prerollAtRate:v10 completionHandler:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];
}

void __57__ANAnchorTrackPlayer_playInternalWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 67109120;
    HIDWORD(buf.value) = a2;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Preroll Finished: %d", &buf, 8u);
  }

  if ((a2 & 1) == 0)
  {
    v6 = [WeakRetained log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __57__ANAnchorTrackPlayer_playInternalWithCompletionHandler___block_invoke_cold_1(v6);
    }
  }

  memset(&v29, 0, sizeof(v29));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v29, HostTimeClock);
  memset(&v28[1], 0, sizeof(CMTime));
  if (WeakRetained)
  {
    [WeakRetained startTime];
  }

  memset(v28, 0, 24);
  v8 = [WeakRetained queuePlayer];
  v9 = v8;
  if (v8)
  {
    [v8 currentTime];
  }

  else
  {
    memset(v28, 0, 24);
  }

  memset(&v27, 0, sizeof(v27));
  buf = v28[1];
  v26 = v29;
  CMTimeSubtract(&v27, &buf, &v26);
  v10 = [WeakRetained log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 134218752;
    *(&buf.value + 4) = v28[0].value;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = v28[1].value;
    HIWORD(buf.epoch) = 2048;
    value = v29.value;
    v32 = 2048;
    v33 = v27.value / v27.timescale;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "AVQueuePlayer Current Time %lld, Target Host Time: %lld, Now: %lld, Delta(sec): %f", &buf, 0x2Au);
  }

  buf = v29;
  v26 = v28[1];
  if (CMTimeCompare(&buf, &v26) == 1)
  {
    v11 = [WeakRetained log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Start Time is in the past. Will use play", &buf, 2u);
    }

    v12 = [WeakRetained queuePlayer];
    [v12 play];

    v13 = [WeakRetained queuePlayer];
    v14 = [v13 error];
  }

  else
  {
    v15 = [*(a1 + 32) queuePlayer];
    [v15 setAutomaticallyWaitsToMinimizeStalling:0];

    v16 = [WeakRetained log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [WeakRetained queuePlayer];
      v18 = [WeakRetained queuePlayer];
      [v18 rate];
      LODWORD(buf.value) = 138412546;
      *(&buf.value + 4) = v17;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v19;
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "Will Set Rate on AVQueuePlayer %@, rate = %f", &buf, 0x16u);
    }

    v20 = [WeakRetained queuePlayer];
    LODWORD(v21) = *(a1 + 56);
    buf = v28[0];
    v26 = v28[1];
    [v20 setRate:&buf time:&v26 atHostTime:v21];

    v13 = [WeakRetained log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [WeakRetained queuePlayer];
      v23 = [WeakRetained queuePlayer];
      [v23 rate];
      LODWORD(buf.value) = 138412546;
      *(&buf.value + 4) = v22;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v24;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "Did set Rate on AVQueuePlayer %@, rate = %f", &buf, 0x16u);
    }

    v14 = 0;
  }

  (*(*(a1 + 40) + 16))();
  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleInterruptionDelay:(double)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ANAnchorTrackPlayer handleInterruptionDelay:]";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%s: amountOfTimeInterrupted %f", buf, 0x16u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(ANTrackPlayer *)self playerItems];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 playerItem];
        v13 = [(ANTrackPlayer *)self queuePlayer];
        v14 = [v13 currentItem];

        if (v12 == v14)
        {
          v15 = [v11 trackType];
          v16 = [(ANTrackPlayer *)self queuePlayer];
          v17 = v16;
          if (v15)
          {
            [v16 advanceToNextItem];
          }

          else
          {
            v18 = [v16 currentItem];
            v20[0] = MEMORY[0x277D85DD0];
            v20[1] = 3221225472;
            v20[2] = __47__ANAnchorTrackPlayer_handleInterruptionDelay___block_invoke;
            v20[3] = &unk_278C86A38;
            v20[4] = self;
            *buf = *MEMORY[0x277CC08F0];
            *&buf[16] = *(MEMORY[0x277CC08F0] + 16);
            [v18 seekToTime:buf completionHandler:v20];
          }

          goto LABEL_16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
}

void __47__ANAnchorTrackPlayer_handleInterruptionDelay___block_invoke(uint64_t a1, int a2)
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
    v7 = "[ANAnchorTrackPlayer handleInterruptionDelay:]_block_invoke";
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_INFO, "%s: Attempt to restart announcement after interruption was %s.", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setStartTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_startTime.value = *&a3->var0;
  self->_startTime.epoch = var3;
}

@end