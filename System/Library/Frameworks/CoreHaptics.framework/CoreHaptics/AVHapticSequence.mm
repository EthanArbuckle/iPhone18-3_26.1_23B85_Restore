@interface AVHapticSequence
- (AVHapticPlayer)player;
- (AVHapticSequence)initWithData:(id)a3 player:(id)a4 error:(id *)a5;
- (AVHapticSequence)initWithDictionary:(id)a3 player:(id)a4 error:(id *)a5;
- (AVHapticSequence)initWithEvents:(id)a3 player:(id)a4 error:(id *)a5;
- (BOOL)activateChannelByIndex:(unint64_t)a3 atTime:(double)a4 error:(id *)a5;
- (BOOL)cancelAndReturnError:(id *)a3;
- (BOOL)earlyUnduckAudioAtTime:(double)a3 error:(id *)a4;
- (BOOL)invalidated;
- (BOOL)pauseAtTime:(double)a3 error:(id *)a4;
- (BOOL)playAtTime:(double)a3 offset:(double)a4 error:(id *)a5;
- (BOOL)prepareToPlayAndReturnError:(id *)a3;
- (BOOL)resetAtTime:(double)a3 error:(id *)a4;
- (BOOL)resumeAtTime:(double)a3 error:(id *)a4;
- (BOOL)seekToTime:(double)a3 error:(id *)a4;
- (BOOL)setLoopLength:(float)a3 error:(id *)a4;
- (BOOL)setParameter:(unint64_t)a3 value:(float)a4 channel:(unint64_t)a5 atTime:(double)a6 error:(id *)a7;
- (BOOL)setVolume:(float)a3 atTime:(double)a4 error:(id *)a5;
- (BOOL)stopAtTime:(double)a3 error:(id *)a4;
- (id)completionHandler;
- (unint64_t)getChannelCount;
- (void)dealloc;
- (void)setCompletionHandler:(id)a3;
- (void)setEventBehavior:(unint64_t)a3;
- (void)setPlaybackRate:(float)a3;
@end

@implementation AVHapticSequence

- (AVHapticSequence)initWithData:(id)a3 player:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "AVHapticPlayer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 868;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticSequence initWithData:player:error:]";
    *&buf[28] = 2048;
    *&buf[30] = v8;
    *&buf[38] = 2048;
    v31 = v9;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: starting init with data %p, player %p", buf, 0x30u);
  }

LABEL_8:
  v29.receiver = self;
  v29.super_class = AVHapticSequence;
  v12 = [(AVHapticSequence *)&v29 init];
  v13 = v12;
  if (v12)
  {
    if (v9)
    {
      [(AVHapticSequence *)v12 setPlayer:v9];
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0xFFFFFFFFLL;
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__4;
      *&buf[32] = __Block_byref_object_dispose__4;
      v31 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __46__AVHapticSequence_initWithData_player_error___block_invoke;
      v16[3] = &unk_2781C93F8;
      v16[4] = &v25;
      v16[5] = &v21;
      v16[6] = &v17;
      v16[7] = buf;
      if ([v9 loadAndPrepareHapticSequenceFromData:v8 reply:v16])
      {
        [(AVHapticSequence *)v13 setSeqID:v26[3]];
        [(AVHapticSequence *)v13 setLastStartTime:-1.0];
        *&v13->_loopIsEnabled = 0;
        v13->_playbackRate = 1.0;
        *&v13->_duration = v22[3];
        v13->_channelCount = v18[3];
        v13->_activeChannel = 0;
        if (!a5)
        {
          goto LABEL_18;
        }
      }

      else
      {

        v13 = 0;
        if (!a5)
        {
LABEL_18:
          _Block_object_dispose(buf, 8);

          _Block_object_dispose(&v17, 8);
          _Block_object_dispose(&v21, 8);
          _Block_object_dispose(&v25, 8);
          goto LABEL_19;
        }
      }

      *a5 = *(*&buf[8] + 40);
      goto LABEL_18;
    }

    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
    }

    v13 = 0;
  }

LABEL_19:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __46__AVHapticSequence_initWithData_player_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136316418;
    v16 = "AVHapticPlayer.mm";
    v17 = 1024;
    v18 = 886;
    v19 = 2080;
    v20 = "[AVHapticSequence initWithData:player:error:]_block_invoke";
    v21 = 1024;
    v22 = a2;
    v23 = 1024;
    v24 = a3;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initWithData: reply block for hapticPlayer loadAndPrepareHapticSequenceFromData: replyID: %u, replyChannelCount: %u, replyError: %@", &v15, 0x32u);
  }

LABEL_8:
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a5;
  *(*(a1[6] + 8) + 24) = a3;
  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;

  v14 = *MEMORY[0x277D85DE8];
}

- (AVHapticSequence)initWithEvents:(id)a3 player:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVHapticPlayer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 915;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticSequence initWithEvents:player:error:]";
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: starting init with event array", buf, 0x1Cu);
  }

LABEL_8:
  v29.receiver = self;
  v29.super_class = AVHapticSequence;
  v12 = [(AVHapticSequence *)&v29 init];
  v13 = v12;
  if (v12)
  {
    [(AVHapticSequence *)v12 setPlayer:v9];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0xFFFFFFFFLL;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v31 = __Block_byref_object_dispose__4;
    v32 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __48__AVHapticSequence_initWithEvents_player_error___block_invoke;
    v16[3] = &unk_2781C93F8;
    v16[4] = &v25;
    v16[5] = &v21;
    v16[6] = &v17;
    v16[7] = buf;
    if ([v9 loadAndPrepareHapticSequenceFromEvents:v8 reply:v16])
    {
      [(AVHapticSequence *)v13 setSeqID:v26[3]];
      [(AVHapticSequence *)v13 setLastStartTime:-1.0];
      *&v13->_loopIsEnabled = 0;
      v13->_playbackRate = 1.0;
      *&v13->_duration = v22[3];
      v13->_channelCount = v18[3];
      v13->_activeChannel = 0;
      if (!a5)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v13 = 0;
      if (!a5)
      {
LABEL_14:
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v17, 8);
        _Block_object_dispose(&v21, 8);
        _Block_object_dispose(&v25, 8);
        goto LABEL_15;
      }
    }

    *a5 = *(*&buf[8] + 40);
    goto LABEL_14;
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __48__AVHapticSequence_initWithEvents_player_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136316418;
    v16 = "AVHapticPlayer.mm";
    v17 = 1024;
    v18 = 928;
    v19 = 2080;
    v20 = "[AVHapticSequence initWithEvents:player:error:]_block_invoke";
    v21 = 1024;
    v22 = a2;
    v23 = 1024;
    v24 = a3;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initWithEvents: reply block for hapticPlayer loadAndPrepareHapticSequenceFromEvents: replyID: %u, replyChannelCount: %u, replyError: %@", &v15, 0x32u);
  }

LABEL_8:
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a5;
  *(*(a1[6] + 8) + 24) = a3;
  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;

  v14 = *MEMORY[0x277D85DE8];
}

- (AVHapticSequence)initWithDictionary:(id)a3 player:(id)a4 error:(id *)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVHapticPlayer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 957;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticSequence initWithDictionary:player:error:]";
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: starting init with dictionary", buf, 0x1Cu);
  }

LABEL_8:
  v21.receiver = self;
  v21.super_class = AVHapticSequence;
  v12 = [(AVHapticSequence *)&v21 init];
  v13 = v12;
  if (v12)
  {
    [(AVHapticSequence *)v12 setPlayer:v9];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0xFFFFFFFFLL;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v23 = __Block_byref_object_dispose__4;
    v24 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__AVHapticSequence_initWithDictionary_player_error___block_invoke;
    v16[3] = &unk_2781C9380;
    v16[4] = &v17;
    v16[5] = buf;
    if ([v9 loadAndPrepareHapticSequenceFromVibePattern:v8 reply:v16])
    {
      [(AVHapticSequence *)v13 setSeqID:v18[3]];
      [(AVHapticSequence *)v13 setLastStartTime:-1.0];
      *&v13->_loopIsEnabled = 0;
      v13->_playbackRate = 1.0;
      v13->_duration = 5.0;
      *&v13->_channelCount = xmmword_2156F3A50;
      if (!a5)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v13 = 0;
      if (!a5)
      {
LABEL_14:
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v17, 8);
        goto LABEL_15;
      }
    }

    *a5 = *(*&buf[8] + 40);
    goto LABEL_14;
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __52__AVHapticSequence_initWithDictionary_player_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136316162;
    v12 = "AVHapticPlayer.mm";
    v13 = 1024;
    v14 = 968;
    v15 = 2080;
    v16 = "[AVHapticSequence initWithDictionary:player:error:]_block_invoke";
    v17 = 1024;
    v18 = a2;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initWithDictionary: reply block for hapticPlayer loadAndPrepareHapticSequenceFromVibePattern: replyID: %u, replyError: %@", &v11, 0x2Cu);
  }

LABEL_8:
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(AVHapticSequence *)self player];
    v7 = [v6 client];
    *buf = 136316162;
    v15 = "AVHapticPlayer.mm";
    v16 = 1024;
    v17 = 994;
    v18 = 2080;
    v19 = "[AVHapticSequence dealloc]";
    v20 = 2048;
    v21 = self;
    v22 = 2048;
    v23 = [v7 clientID];
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: dealloc seq %p, clientID: 0x%lx", buf, 0x30u);
  }

LABEL_8:
  if (self->_loopIsEnabled)
  {
    if (kAVHCScope)
    {
      v8 = *kAVHCScope;
      if (!v8)
      {
LABEL_16:
        v10 = [(AVHapticSequence *)self player];
        [v10 enableSequenceLooping:self->_seqID enable:0 error:0];

        goto LABEL_17;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = "AVHapticPlayer.mm";
      v16 = 1024;
      v17 = 996;
      v18 = 2080;
      v19 = "[AVHapticSequence dealloc]";
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Destroying a sequence that is still looping!  Disabling loop.", buf, 0x1Cu);
    }

    goto LABEL_16;
  }

LABEL_17:
  v11 = [(AVHapticSequence *)self player];
  [v11 detachHapticSequence:self->_seqID];

  self->_seqID = -1;
  v13.receiver = self;
  v13.super_class = AVHapticSequence;
  [(AVHapticSequence *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setEventBehavior:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(AVHapticSequence *)self player];
    v9 = [v8 client];
    v18 = 136316418;
    v19 = "AVHapticPlayer.mm";
    v20 = 1024;
    v21 = 1011;
    v22 = 2080;
    v23 = "[AVHapticSequence setEventBehavior:]";
    v24 = 2048;
    v25 = [v9 clientID];
    v26 = 1024;
    v27 = [(AVHapticSequence *)self seqID];
    v28 = 1024;
    v29 = a3;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: clientID: 0x%lx seqID: %u behavior: %u", &v18, 0x32u);
  }

LABEL_8:
  if (self->_eventBehavior != a3)
  {
    if (a3 > 7)
    {
      if (kAVHCScope)
      {
        v15 = *kAVHCScope;
        if (!v15)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v15 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315906;
        v19 = "AVHapticPlayer.mm";
        v20 = 1024;
        v21 = 1014;
        v22 = 2080;
        v23 = "[AVHapticSequence setEventBehavior:]";
        v24 = 1024;
        LODWORD(v25) = a3;
        _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Illegal event behavior: %u", &v18, 0x22u);
      }
    }

    else
    {
      if (![(AVHapticSequence *)self channelCount])
      {
        goto LABEL_14;
      }

      v10 = 0;
      v11 = 1;
      do
      {
        v12 = [(AVHapticSequence *)self player];
        v13 = [v12 client];
        v14 = [v13 setSequenceEventBehavior:-[AVHapticSequence seqID](self behavior:"seqID") channel:{a3, v10}];

        v11 &= v14;
        ++v10;
      }

      while (v10 < [(AVHapticSequence *)self channelCount]);
      if (v11)
      {
LABEL_14:
        self->_eventBehavior = a3;
      }
    }
  }

LABEL_22:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)setCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = [(AVHapticSequence *)self player];
  v5 = [v4 client];
  [v5 setSequenceFinishedHandlerForID:self->_seqID finishedHandler:v6];
}

- (id)completionHandler
{
  v3 = [(AVHapticSequence *)self player];
  v4 = [v3 client];
  v5 = [v4 getSequenceFinishedHandlerForID:self->_seqID];

  return v5;
}

- (unint64_t)getChannelCount
{
  v2 = self;
  objc_sync_enter(v2);
  channelCount = v2->_channelCount;
  objc_sync_exit(v2);

  return channelCount;
}

- (BOOL)setLoopLength:(float)a3 error:(id *)a4
{
  v7 = [(AVHapticSequence *)self player];
  *&v8 = a3;
  v9 = [v7 setSequenceLoopLength:self->_seqID length:a4 error:v8];

  if (v9)
  {
    self->_loopLength = a3;
  }

  return v9;
}

- (void)setPlaybackRate:(float)a3
{
  v5 = [(AVHapticSequence *)self player];
  *&v6 = a3;
  v7 = [v5 setSequencePlaybackRate:self->_seqID rate:0 error:v6];

  if (v7)
  {
    self->_playbackRate = a3;
  }
}

- (BOOL)prepareToPlayAndReturnError:(id *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(AVHapticSequence *)v4 player];
    v9 = [v8 client];
    v23 = 136315906;
    v24 = "AVHapticPlayer.mm";
    v25 = 1024;
    v26 = 1089;
    v27 = 2080;
    v28 = "[AVHapticSequence prepareToPlayAndReturnError:]";
    v29 = 2048;
    v30 = [v9 clientID];
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: prepare to play seq: clientID: 0x%lx", &v23, 0x26u);
  }

LABEL_8:
  v10 = [(AVHapticSequence *)v4 player];
  v11 = [v10 resourcesAllocated];

  if ((v11 & 1) == 0)
  {
    v17 = -4807;
    v18 = "self.player.resourcesAllocated";
    v19 = 1090;
LABEL_16:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v19, "[AVHapticSequence prepareToPlayAndReturnError:]", v18, v17, a3);
    v16 = 0;
    v20 = 0;
    goto LABEL_19;
  }

  if (v4->_seqID == -1)
  {
    v17 = -4812;
    v18 = "_seqID != kInvalidSequenceID";
    v19 = 1091;
    goto LABEL_16;
  }

  v12 = [(AVHapticSequence *)v4 player];
  v13 = [v12 prepareHapticSequence:v4->_seqID error:a3];

  if (v13)
  {
    if (-[AVHapticSequence loopingEnabled](v4, "loopingEnabled") && (-[AVHapticSequence player](v4, "player"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 enableSequenceLooping:v4->_seqID enable:1 error:a3], v14, (v15 & 1) == 0))
    {
      v16 = 0;
      v4->_loopIsEnabled = 0;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = 1;
LABEL_19:
  objc_sync_exit(v4);

  v21 = *MEMORY[0x277D85DE8];
  return v16 & v20;
}

- (BOOL)playAtTime:(double)a3 offset:(double)a4 error:(id *)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = self;
  objc_sync_enter(v8);
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(AVHapticSequence *)v8 seqID];
    v13 = [(AVHapticSequence *)v8 player];
    v14 = [v13 client];
    v15 = [v14 clientID];
    playbackRate = v8->_playbackRate;
    isMuted = v8->_isMuted;
    *v50 = 136317186;
    *&v50[4] = "AVHapticPlayer.mm";
    *&v50[12] = 1024;
    *&v50[14] = 1108;
    v51 = 2080;
    v52 = "[AVHapticSequence playAtTime:offset:error:]";
    v53 = 1024;
    v54 = v12;
    v55 = 2048;
    *v56 = v15;
    *&v56[8] = 2048;
    *&v56[10] = a3;
    v57 = 2048;
    v58 = a4;
    v59 = 2048;
    v60 = playbackRate;
    v61 = 1024;
    v62 = isMuted;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: play seq %u: clientID: 0x%lx time: %.3f offsetTime: %.3f playback rate: %.1f muted: %d", v50, 0x50u);
  }

LABEL_8:
  v18 = [(AVHapticSequence *)v8 player];
  v19 = [v18 resourcesAllocated];

  if ((v19 & 1) == 0)
  {
    v29 = -4807;
    v30 = "self.player.resourcesAllocated";
    v31 = 1109;
LABEL_23:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v31, "[AVHapticSequence playAtTime:offset:error:]", v30, v29, a5);
    v32 = 0;
    v33 = 0;
    goto LABEL_24;
  }

  v20 = [(AVHapticSequence *)v8 player];
  v21 = [v20 client];
  v22 = [v21 clientID] == -1;

  if (v22)
  {
    v29 = -4812;
    v30 = "self.player.client.clientID != kInvalidClientID";
    v31 = 1110;
    goto LABEL_23;
  }

  v23 = [(AVHapticSequence *)v8 player];
  v24 = [v23 client];
  v25 = [v24 running];

  if ((v25 & 1) == 0)
  {
    v29 = -4805;
    v30 = "self.player.client.running";
    v31 = 1111;
    goto LABEL_23;
  }

  if (v8->_seqID == -1)
  {
    v29 = -4812;
    v30 = "_seqID != kInvalidSequenceID";
    v31 = 1112;
    goto LABEL_23;
  }

  if ([(AVHapticSequence *)v8 loopingEnabled])
  {
    v26 = [(AVHapticSequence *)v8 player];
    v27 = [v26 enableSequenceLooping:v8->_seqID enable:1 error:a5];

    if ((v27 & 1) == 0)
    {
      v8->_loopIsEnabled = 0;
    }
  }

  if ([(AVHapticSequence *)v8 channelCount]< 2)
  {
    goto LABEL_37;
  }

  if (!kAVHCScope)
  {
    v28 = MEMORY[0x277D86220];
    v36 = MEMORY[0x277D86220];
    goto LABEL_26;
  }

  v28 = *kAVHCScope;
  if (v28)
  {
LABEL_26:
    v37 = v28;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = [(AVHapticSequence *)v8 seqID];
      v39 = [(AVHapticSequence *)v8 activeChannel];
      v40 = "";
      v41 = v8->_isMuted;
      *&v50[4] = "AVHapticPlayer.mm";
      *v50 = 136316418;
      *&v50[12] = 1024;
      if (v41)
      {
        v40 = "but sequence was muted";
      }

      *&v50[14] = 1120;
      v51 = 2080;
      v52 = "[AVHapticSequence playAtTime:offset:error:]";
      v53 = 1024;
      v54 = v38;
      v55 = 1024;
      *v56 = v39;
      *&v56[4] = 2080;
      *&v56[6] = v40;
      _os_log_impl(&dword_21569A000, v37, OS_LOG_TYPE_INFO, "%25s:%-5d %s: soloing sequence ID: %u track %u %s", v50, 0x32u);
    }
  }

  v42 = [(AVHapticSequence *)v8 channelCount];
  if (v42 - 1 >= 0)
  {
    do
    {
      --v42;
      v43 = 1.0;
      if (!v8->_isMuted)
      {
        if (v42 == [(AVHapticSequence *)v8 activeChannel])
        {
          v43 = 0.0;
        }

        else
        {
          v43 = 1.0;
        }
      }

      v44 = [(AVHapticSequence *)v8 player];
      *&v45 = v43;
      [v44 setSequenceChannelParam:v8->_seqID atTime:v42 channel:1014 param:a5 value:a3 error:v45];

      v46 = [(AVHapticSequence *)v8 player];
      *&v47 = v43;
      [v46 setSequenceChannelParam:v8->_seqID atTime:v42 channel:2014 param:a5 value:a3 error:v47];
    }

    while (v42 > 0);
  }

LABEL_37:
  v48 = [(AVHapticSequence *)v8 player];
  v49 = [v48 playHapticSequence:v8->_seqID atTime:a3 offset:a4];

  if (v49)
  {
    [(AVHapticSequence *)v8 setLastStartTime:a3];
    v32 = 1;
    v33 = 1;
  }

  else
  {
    v33 = 0;
    v32 = 1;
  }

LABEL_24:
  objc_sync_exit(v8);

  v34 = *MEMORY[0x277D85DE8];
  return v32 & v33;
}

- (BOOL)stopAtTime:(double)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AVHapticSequence *)v6 player];
    v11 = [v10 client];
    v27 = 136316162;
    v28 = "AVHapticPlayer.mm";
    v29 = 1024;
    v30 = 1140;
    v31 = 2080;
    v32 = "[AVHapticSequence stopAtTime:error:]";
    v33 = 2048;
    v34 = [v11 clientID];
    v35 = 2048;
    v36 = a3;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: stop seq: clientID: 0x%lx time: %.3f", &v27, 0x30u);
  }

LABEL_8:
  v12 = [(AVHapticSequence *)v6 player];
  v13 = [v12 resourcesAllocated];

  if ((v13 & 1) == 0)
  {
    v22 = -4807;
    v23 = "self.player.resourcesAllocated";
    v24 = 1141;
LABEL_19:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v24, "[AVHapticSequence stopAtTime:error:]", v23, v22, a4);
    LOBYTE(a4) = 0;
    v21 = 0;
    goto LABEL_20;
  }

  v14 = [(AVHapticSequence *)v6 player];
  v15 = [v14 client];
  v16 = [v15 clientID] == -1;

  if (v16)
  {
    v22 = -4812;
    v23 = "self.player.client.clientID != kInvalidClientID";
    v24 = 1142;
    goto LABEL_19;
  }

  v17 = [(AVHapticSequence *)v6 player];
  v18 = [v17 client];
  v19 = [v18 running];

  if ((v19 & 1) == 0)
  {
    v22 = -4805;
    v23 = "self.player.client.running";
    v24 = 1143;
    goto LABEL_19;
  }

  if (v6->_seqID == -1)
  {
    v22 = -4812;
    v23 = "_seqID != kInvalidSequenceID";
    v24 = 1144;
    goto LABEL_19;
  }

  v20 = [(AVHapticSequence *)v6 player];
  LODWORD(a4) = [v20 stopHapticSequence:v6->_seqID atTime:a3];

  if (a4)
  {
    [(AVHapticSequence *)v6 setLastStartTime:-1.0];
    LOBYTE(a4) = 1;
  }

  v21 = 1;
LABEL_20:
  objc_sync_exit(v6);

  v25 = *MEMORY[0x277D85DE8];
  return a4 & v21;
}

- (BOOL)pauseAtTime:(double)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AVHapticSequence *)v6 player];
    v11 = [v10 client];
    v27 = 136316162;
    v28 = "AVHapticPlayer.mm";
    v29 = 1024;
    v30 = 1158;
    v31 = 2080;
    v32 = "[AVHapticSequence pauseAtTime:error:]";
    v33 = 2048;
    v34 = [v11 clientID];
    v35 = 2048;
    v36 = a3;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: pause seq: clientID: 0x%lx time: %.3f", &v27, 0x30u);
  }

LABEL_8:
  v12 = [(AVHapticSequence *)v6 player];
  v13 = [v12 resourcesAllocated];

  if ((v13 & 1) == 0)
  {
    v22 = -4807;
    v23 = "self.player.resourcesAllocated";
    v24 = 1159;
LABEL_17:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v24, "[AVHapticSequence pauseAtTime:error:]", v23, v22, a4);
    v21 = 0;
    goto LABEL_18;
  }

  v14 = [(AVHapticSequence *)v6 player];
  v15 = [v14 client];
  v16 = [v15 clientID] == -1;

  if (v16)
  {
    v22 = -4812;
    v23 = "self.player.client.clientID != kInvalidClientID";
    v24 = 1160;
    goto LABEL_17;
  }

  v17 = [(AVHapticSequence *)v6 player];
  v18 = [v17 client];
  v19 = [v18 running];

  if ((v19 & 1) == 0)
  {
    v22 = -4805;
    v23 = "self.player.client.running";
    v24 = 1161;
    goto LABEL_17;
  }

  if (v6->_seqID == -1)
  {
    v22 = -4812;
    v23 = "_seqID != kInvalidSequenceID";
    v24 = 1162;
    goto LABEL_17;
  }

  v20 = [(AVHapticSequence *)v6 player];
  v21 = [v20 pauseHapticSequence:v6->_seqID atTime:a3];

LABEL_18:
  objc_sync_exit(v6);

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)resumeAtTime:(double)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AVHapticSequence *)v6 player];
    v11 = [v10 client];
    v27 = 136316162;
    v28 = "AVHapticPlayer.mm";
    v29 = 1024;
    v30 = 1173;
    v31 = 2080;
    v32 = "[AVHapticSequence resumeAtTime:error:]";
    v33 = 2048;
    v34 = [v11 clientID];
    v35 = 2048;
    v36 = a3;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: resume seq: clientID: 0x%lx time: %.3f", &v27, 0x30u);
  }

LABEL_8:
  v12 = [(AVHapticSequence *)v6 player];
  v13 = [v12 resourcesAllocated];

  if ((v13 & 1) == 0)
  {
    v22 = -4807;
    v23 = "self.player.resourcesAllocated";
    v24 = 1174;
LABEL_17:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v24, "[AVHapticSequence resumeAtTime:error:]", v23, v22, a4);
    v21 = 0;
    goto LABEL_18;
  }

  v14 = [(AVHapticSequence *)v6 player];
  v15 = [v14 client];
  v16 = [v15 clientID] == -1;

  if (v16)
  {
    v22 = -4812;
    v23 = "self.player.client.clientID != kInvalidClientID";
    v24 = 1175;
    goto LABEL_17;
  }

  v17 = [(AVHapticSequence *)v6 player];
  v18 = [v17 client];
  v19 = [v18 running];

  if ((v19 & 1) == 0)
  {
    v22 = -4805;
    v23 = "self.player.client.running";
    v24 = 1176;
    goto LABEL_17;
  }

  if (v6->_seqID == -1)
  {
    v22 = -4812;
    v23 = "_seqID != kInvalidSequenceID";
    v24 = 1177;
    goto LABEL_17;
  }

  v20 = [(AVHapticSequence *)v6 player];
  v21 = [v20 resumeHapticSequence:v6->_seqID atTime:a3];

LABEL_18:
  objc_sync_exit(v6);

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)seekToTime:(double)a3 error:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AVHapticSequence *)v6 player];
    v11 = [v10 client];
    v27 = 136315906;
    v28 = "AVHapticPlayer.mm";
    v29 = 1024;
    v30 = 1188;
    v31 = 2080;
    v32 = "[AVHapticSequence seekToTime:error:]";
    v33 = 2048;
    v34 = [v11 clientID];
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: seek seq: clientID: 0x%lx time: NOW", &v27, 0x26u);
  }

LABEL_8:
  v12 = [(AVHapticSequence *)v6 player];
  v13 = [v12 resourcesAllocated];

  if ((v13 & 1) == 0)
  {
    v22 = -4807;
    v23 = "self.player.resourcesAllocated";
    v24 = 1189;
LABEL_17:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v24, "[AVHapticSequence seekToTime:error:]", v23, v22, a4);
    v21 = 0;
    goto LABEL_18;
  }

  v14 = [(AVHapticSequence *)v6 player];
  v15 = [v14 client];
  v16 = [v15 clientID] == -1;

  if (v16)
  {
    v22 = -4812;
    v23 = "self.player.client.clientID != kInvalidClientID";
    v24 = 1190;
    goto LABEL_17;
  }

  v17 = [(AVHapticSequence *)v6 player];
  v18 = [v17 client];
  v19 = [v18 running];

  if ((v19 & 1) == 0)
  {
    v22 = -4805;
    v23 = "self.player.client.running";
    v24 = 1191;
    goto LABEL_17;
  }

  if (v6->_seqID == -1)
  {
    v22 = -4812;
    v23 = "_seqID != kInvalidSequenceID";
    v24 = 1192;
    goto LABEL_17;
  }

  v20 = [(AVHapticSequence *)v6 player];
  v21 = [v20 seekHapticSequence:v6->_seqID toTime:a3];

LABEL_18:
  objc_sync_exit(v6);

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)resetAtTime:(double)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AVHapticSequence *)v6 player];
    v11 = [v10 client];
    v24 = 136316162;
    v25 = "AVHapticPlayer.mm";
    v26 = 1024;
    v27 = 1205;
    v28 = 2080;
    v29 = "[AVHapticSequence resetAtTime:error:]";
    v30 = 2048;
    v31 = [v11 clientID];
    v32 = 2048;
    v33 = a3;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: reset parameters on seq: clientID: 0x%lx time: %.3f ", &v24, 0x30u);
  }

LABEL_8:
  v12 = [(AVHapticSequence *)v6 player];
  v13 = [v12 resourcesAllocated];

  if ((v13 & 1) == 0)
  {
    v19 = -4807;
    v20 = "self.player.resourcesAllocated";
    v21 = 1206;
LABEL_15:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v21, "[AVHapticSequence resetAtTime:error:]", v20, v19, a4);
    v18 = 0;
    goto LABEL_16;
  }

  v14 = [(AVHapticSequence *)v6 player];
  v15 = [v14 client];
  v16 = [v15 clientID] == -1;

  if (v16)
  {
    v19 = -4812;
    v20 = "self.player.client.clientID != kInvalidClientID";
    v21 = 1207;
    goto LABEL_15;
  }

  if (v6->_seqID == -1)
  {
    v19 = -4812;
    v20 = "_seqID != kInvalidSequenceID";
    v21 = 1208;
    goto LABEL_15;
  }

  v17 = [(AVHapticSequence *)v6 player];
  v18 = [v17 resetHapticSequence:v6->_seqID atTime:a3];

LABEL_16:
  objc_sync_exit(v6);

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)setParameter:(unint64_t)a3 value:(float)a4 channel:(unint64_t)a5 atTime:(double)a6 error:(id *)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v12 = self;
  objc_sync_enter(v12);
  if (kAVHCScope)
  {
    v13 = *kAVHCScope;
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  v15 = v13;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(AVHapticSequence *)v12 player];
    v17 = [v16 client];
    v34 = 136316930;
    v35 = "AVHapticPlayer.mm";
    v36 = 1024;
    v37 = 1219;
    v38 = 2080;
    v39 = "[AVHapticSequence setParameter:value:channel:atTime:error:]";
    v40 = 2048;
    v41 = [v17 clientID];
    v42 = 1024;
    v43 = a3;
    v44 = 2048;
    v45 = a4;
    v46 = 1024;
    v47 = a5;
    v48 = 2048;
    v49 = a6;
    _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: set param on seq: clientID: 0x%lx type: %u value: %.2f channelIndex: %u atTime: %.3f", &v34, 0x46u);
  }

LABEL_8:
  if ([(AVHapticSequence *)v12 channelCount]<= a5)
  {
    v29 = -4804;
    v30 = "channelIndex < self.channelCount";
    v31 = 1220;
LABEL_19:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v31, "[AVHapticSequence setParameter:value:channel:atTime:error:]", v30, v29, a7);
    v28 = 0;
    goto LABEL_20;
  }

  v18 = [(AVHapticSequence *)v12 player];
  v19 = [v18 resourcesAllocated];

  if ((v19 & 1) == 0)
  {
    v29 = -4807;
    v30 = "self.player.resourcesAllocated";
    v31 = 1221;
    goto LABEL_19;
  }

  v20 = [(AVHapticSequence *)v12 player];
  v21 = [v20 client];
  v22 = [v21 clientID] == -1;

  if (v22)
  {
    v29 = -4812;
    v30 = "self.player.client.clientID != kInvalidClientID";
    v31 = 1222;
    goto LABEL_19;
  }

  v23 = [(AVHapticSequence *)v12 player];
  v24 = [v23 client];
  v25 = [v24 running];

  if ((v25 & 1) == 0)
  {
    v29 = -4805;
    v30 = "self.player.client.running";
    v31 = 1223;
    goto LABEL_19;
  }

  if (v12->_seqID == -1)
  {
    v29 = -4812;
    v30 = "_seqID != kInvalidSequenceID";
    v31 = 1224;
    goto LABEL_19;
  }

  v26 = [(AVHapticSequence *)v12 player];
  *&v27 = a4;
  v28 = [v26 setSequenceChannelParam:v12->_seqID atTime:a5 channel:a3 param:a7 value:a6 error:v27];

LABEL_20:
  objc_sync_exit(v12);

  v32 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)cancelAndReturnError:(id *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(AVHapticSequence *)v4 player];
    v9 = [v8 client];
    v25 = 136315906;
    v26 = "AVHapticPlayer.mm";
    v27 = 1024;
    v28 = 1234;
    v29 = 2080;
    v30 = "[AVHapticSequence cancelAndReturnError:]";
    v31 = 2048;
    v32 = [v9 clientID];
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: cancel seq: clientID: 0x%lx", &v25, 0x26u);
  }

LABEL_8:
  v10 = [(AVHapticSequence *)v4 player];
  v11 = [v10 resourcesAllocated];

  if ((v11 & 1) == 0)
  {
    v20 = -4807;
    v21 = "self.player.resourcesAllocated";
    v22 = 1235;
LABEL_17:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v22, "[AVHapticSequence cancelAndReturnError:]", v21, v20, a3);
    v19 = 0;
    goto LABEL_18;
  }

  v12 = [(AVHapticSequence *)v4 player];
  v13 = [v12 client];
  v14 = [v13 clientID] == -1;

  if (v14)
  {
    v20 = -4812;
    v21 = "self.player.client.clientID != kInvalidClientID";
    v22 = 1236;
    goto LABEL_17;
  }

  v15 = [(AVHapticSequence *)v4 player];
  v16 = [v15 client];
  v17 = [v16 running];

  if ((v17 & 1) == 0)
  {
    v20 = -4805;
    v21 = "self.player.client.running";
    v22 = 1237;
    goto LABEL_17;
  }

  if (v4->_seqID == -1)
  {
    v20 = -4812;
    v21 = "_seqID != kInvalidSequenceID";
    v22 = 1238;
    goto LABEL_17;
  }

  v18 = [(AVHapticSequence *)v4 player];
  v19 = [v18 clearSequenceEvents:v4->_seqID atTime:0.0];

LABEL_18:
  objc_sync_exit(v4);

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)activateChannelByIndex:(unint64_t)a3 atTime:(double)a4 error:(id *)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = self;
  objc_sync_enter(v8);
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(AVHapticSequence *)v8 seqID];
    v13 = [(AVHapticSequence *)v8 player];
    v14 = [v13 client];
    v15 = [v14 clientID];
    isMuted = v8->_isMuted;
    v46 = 136316930;
    v47 = "AVHapticPlayer.mm";
    v48 = 1024;
    v49 = 1250;
    v50 = 2080;
    v51 = "[AVHapticSequence activateChannelByIndex:atTime:error:]";
    v52 = 1024;
    *v53 = v12;
    *&v53[4] = 2048;
    *&v53[6] = v15;
    v54 = 2048;
    v55 = a4;
    v56 = 1024;
    v57 = a3;
    v58 = 1024;
    v59 = isMuted;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: activating seqID %u track index: clientID: 0x%lx time: %.3f index: %u muted: %d", &v46, 0x42u);
  }

LABEL_8:
  if ([(AVHapticSequence *)v8 channelCount]<= a3)
  {
    v32 = -4804;
    v33 = "index < self.channelCount";
    v34 = 1251;
LABEL_25:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v34, "[AVHapticSequence activateChannelByIndex:atTime:error:]", v33, v32, a5);
    v35 = 0;
    goto LABEL_26;
  }

  v17 = [(AVHapticSequence *)v8 player];
  v18 = [v17 resourcesAllocated];

  if ((v18 & 1) == 0)
  {
    v32 = -4807;
    v33 = "self.player.resourcesAllocated";
    v34 = 1252;
    goto LABEL_25;
  }

  v19 = [(AVHapticSequence *)v8 player];
  v20 = [v19 client];
  v21 = [v20 clientID] == -1;

  if (v21)
  {
    v32 = -4812;
    v33 = "self.player.client.clientID != kInvalidClientID";
    v34 = 1253;
    goto LABEL_25;
  }

  if (v8->_seqID == -1)
  {
    v32 = -4812;
    v33 = "_seqID != kInvalidSequenceID";
    v34 = 1254;
    goto LABEL_25;
  }

  if ([(AVHapticSequence *)v8 activeChannel]== a3)
  {
LABEL_42:
    v35 = 1;
    goto LABEL_26;
  }

  [(AVHapticSequence *)v8 setActiveChannel:a3];
  v22 = [(AVHapticSequence *)v8 player];
  v23 = [v22 client];
  v24 = [v23 running];

  if (!v24)
  {
    if (kAVHCScope)
    {
      v38 = *kAVHCScope;
      if (!v38)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v38 = MEMORY[0x277D86220];
      v45 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v46 = 136315650;
      v47 = "AVHapticPlayer.mm";
      v48 = 1024;
      v49 = 1270;
      v50 = 2080;
      v51 = "[AVHapticSequence activateChannelByIndex:atTime:error:]";
      _os_log_impl(&dword_21569A000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Associated player is not running - action delayed until sequence start", &v46, 0x1Cu);
    }

    goto LABEL_42;
  }

  [(AVHapticSequence *)v8 lastStartTime];
  if (v25 == -1.0 || ([(AVHapticSequence *)v8 lastStartTime], v26 <= a4))
  {
    v29 = a4;
  }

  else
  {
    [(AVHapticSequence *)v8 lastStartTime];
    v29 = v28;
    if (v28 > a4)
    {
      v30 = CALog::LogObjIfEnabled(3, kAVHCScope, v27);
      v31 = v30;
      if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v46 = 136315906;
        v47 = "AVHapticPlayer.mm";
        v48 = 1024;
        v49 = 1262;
        v50 = 2080;
        v51 = "[AVHapticSequence activateChannelByIndex:atTime:error:]";
        v52 = 2048;
        *v53 = v29;
        _os_log_impl(&dword_21569A000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: request pushed out to pending play request at time %.3f", &v46, 0x26u);
      }
    }
  }

  v39 = 0;
  v35 = 1;
  while (v39 < [(AVHapticSequence *)v8 channelCount])
  {
    v40 = 1.0;
    if (!v8->_isMuted)
    {
      if (v39 == [(AVHapticSequence *)v8 activeChannel])
      {
        v40 = 0.0;
      }

      else
      {
        v40 = 1.0;
      }
    }

    v41 = [(AVHapticSequence *)v8 player];
    *&v42 = v40;
    [v41 setSequenceChannelParam:v8->_seqID atTime:v39 channel:1014 param:a5 value:v29 error:v42];

    v43 = [(AVHapticSequence *)v8 player];
    *&v44 = v40;
    v35 = [v43 setSequenceChannelParam:v8->_seqID atTime:v39 channel:2014 param:a5 value:v29 error:v44];

    ++v39;
  }

LABEL_26:
  objc_sync_exit(v8);

  v36 = *MEMORY[0x277D85DE8];
  return v35 & 1;
}

- (BOOL)setVolume:(float)a3 atTime:(double)a4 error:(id *)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = self;
  objc_sync_enter(v8);
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(AVHapticSequence *)v8 player];
    v13 = [v12 client];
    v30 = 136316418;
    v31 = "AVHapticPlayer.mm";
    v32 = 1024;
    v33 = 1283;
    v34 = 2080;
    v35 = "[AVHapticSequence setVolume:atTime:error:]";
    v36 = 2048;
    v37 = [v13 clientID];
    v38 = 2048;
    v39 = a4;
    v40 = 2048;
    v41 = a3;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: set volume on seq: clientID: 0x%lx time: %.3f volume: %.3f", &v30, 0x3Au);
  }

LABEL_8:
  v14 = [(AVHapticSequence *)v8 player];
  v15 = [v14 resourcesAllocated];

  if ((v15 & 1) == 0)
  {
    v24 = -4807;
    v25 = "self.player.resourcesAllocated";
    v26 = 1284;
LABEL_18:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v26, "[AVHapticSequence setVolume:atTime:error:]", v25, v24, a5);
    v27 = 0;
    goto LABEL_19;
  }

  v16 = [(AVHapticSequence *)v8 player];
  v17 = [v16 client];
  v18 = [v17 clientID] == -1;

  if (v18)
  {
    v24 = -4812;
    v25 = "self.player.client.clientID != kInvalidClientID";
    v26 = 1285;
    goto LABEL_18;
  }

  if (v8->_seqID == -1)
  {
    v24 = -4812;
    v25 = "_seqID != kInvalidSequenceID";
    v26 = 1286;
    goto LABEL_18;
  }

  for (i = 0; i < [(AVHapticSequence *)v8 channelCount]; ++i)
  {
    v20 = [(AVHapticSequence *)v8 player];
    *&v21 = a3;
    [v20 setSequenceChannelParam:v8->_seqID atTime:i channel:1002 param:a5 value:a4 error:v21];

    v22 = [(AVHapticSequence *)v8 player];
    *&v23 = a3;
    [v22 setSequenceChannelParam:v8->_seqID atTime:i channel:2002 param:a5 value:a4 error:v23];
  }

  v27 = 1;
LABEL_19:
  objc_sync_exit(v8);

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)earlyUnduckAudioAtTime:(double)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AVHapticSequence *)v6 player];
    v11 = [v10 client];
    v24 = 136316162;
    v25 = "AVHapticPlayer.mm";
    v26 = 1024;
    v27 = 1299;
    v28 = 2080;
    v29 = "[AVHapticSequence earlyUnduckAudioAtTime:error:]";
    v30 = 2048;
    v31 = [v11 clientID];
    v32 = 2048;
    v33 = a3;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: early unduck audio on seq: clientID: 0x%lx time: %.3f", &v24, 0x30u);
  }

LABEL_8:
  v12 = [(AVHapticSequence *)v6 player];
  v13 = [v12 resourcesAllocated];

  if ((v13 & 1) == 0)
  {
    v19 = -4807;
    v20 = "self.player.resourcesAllocated";
    v21 = 1300;
LABEL_15:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v21, "[AVHapticSequence earlyUnduckAudioAtTime:error:]", v20, v19, a4);
    v18 = 0;
    goto LABEL_16;
  }

  v14 = [(AVHapticSequence *)v6 player];
  v15 = [v14 client];
  v16 = [v15 clientID] == -1;

  if (v16)
  {
    v19 = -4812;
    v20 = "self.player.client.clientID != kInvalidClientID";
    v21 = 1301;
    goto LABEL_15;
  }

  if (v6->_seqID == -1)
  {
    v19 = -4812;
    v20 = "_seqID != kInvalidSequenceID";
    v21 = 1302;
    goto LABEL_15;
  }

  v17 = [(AVHapticSequence *)v6 player];
  v18 = [v17 sendUnduckAudioCommand:v6->_seqID atTime:a3];

LABEL_16:
  objc_sync_exit(v6);

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)invalidated
{
  v3 = [(AVHapticSequence *)self player];
  if (v3)
  {
    v4 = [(AVHapticSequence *)self player];
    v5 = [v4 client];
    v6 = [v5 clientID] == -1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (AVHapticPlayer)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

@end