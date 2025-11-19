@interface AVMIDIPlayer
- (AVMIDIPlayer)initWithContentsOfURL:(NSURL *)inURL soundBankURL:(NSURL *)bankURL error:(NSError *)outError;
- (AVMIDIPlayer)initWithData:(NSData *)data soundBankURL:(NSURL *)bankURL error:(NSError *)outError;
- (BOOL)isPlaying;
- (NSTimeInterval)currentPosition;
- (NSTimeInterval)duration;
- (double)beatsForHostTime:(unint64_t)a3;
- (float)rate;
- (id)initBase;
- (unint64_t)hostTimeForBeats:(double)a3;
- (void)dealloc;
- (void)destroyBase;
- (void)finalize;
- (void)play:(AVMIDIPlayerCompletionHandler)completionHandler;
- (void)prepareToPlay;
- (void)setCurrentPosition:(NSTimeInterval)currentPosition;
- (void)setRate:(float)rate;
- (void)stop;
@end

@implementation AVMIDIPlayer

- (void)setCurrentPosition:(NSTimeInterval)currentPosition
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [(AVMIDIPlayer *)self impl];
  outBeats = 0.0;
  BeatsForSeconds = MusicSequenceGetBeatsForSeconds(v4->var2, currentPosition, &outBeats);
  if (BeatsForSeconds)
  {
    v6 = BeatsForSeconds;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v14 = "AVAEInternal.h";
      v15 = 1024;
      v16 = 104;
      v17 = 2080;
      v18 = "AVMIDIPlayer.mm";
      v19 = 1024;
      v20 = 200;
      v21 = 2080;
      v22 = "[AVMIDIPlayer setCurrentPosition:]";
      v23 = 2080;
      v24 = "MusicSequenceGetBeatsForSeconds(impl->mSequence, (Float64) currentPosition, &positionInBeats)";
      v25 = 1024;
      v26 = v6;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v6}];
  }

  v8 = MusicPlayerSetTime(v4->var1, outBeats);
  if (v8)
  {
    v9 = v8;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v10 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v14 = "AVAEInternal.h";
      v15 = 1024;
      v16 = 104;
      v17 = 2080;
      v18 = "AVMIDIPlayer.mm";
      v19 = 1024;
      v20 = 201;
      v21 = 2080;
      v22 = "[AVMIDIPlayer setCurrentPosition:]";
      v23 = 2080;
      v24 = "MusicPlayerSetTime(impl->mPlayer, positionInBeats)";
      v25 = 1024;
      v26 = v9;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v9}];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSTimeInterval)currentPosition
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [(AVMIDIPlayer *)self impl];
  outSeconds = 0.0;
  outTime = 0.0;
  Time = MusicPlayerGetTime(v2->var1, &outTime);
  if (Time)
  {
    v4 = Time;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v14 = "AVAEInternal.h";
      v15 = 1024;
      v16 = 104;
      v17 = 2080;
      v18 = "AVMIDIPlayer.mm";
      v19 = 1024;
      v20 = 191;
      v21 = 2080;
      v22 = "[AVMIDIPlayer currentPosition]";
      v23 = 2080;
      v24 = "MusicPlayerGetTime(impl->mPlayer, &positionInBeats)";
      v25 = 1024;
      v26 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v4}];
  }

  SecondsForBeats = MusicSequenceGetSecondsForBeats(v2->var2, outTime, &outSeconds);
  if (SecondsForBeats)
  {
    v7 = SecondsForBeats;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v14 = "AVAEInternal.h";
      v15 = 1024;
      v16 = 104;
      v17 = 2080;
      v18 = "AVMIDIPlayer.mm";
      v19 = 1024;
      v20 = 192;
      v21 = 2080;
      v22 = "[AVMIDIPlayer currentPosition]";
      v23 = 2080;
      v24 = "MusicSequenceGetSecondsForBeats(impl->mSequence, positionInBeats, &positionInTime)";
      v25 = 1024;
      v26 = v7;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v7}];
  }

  result = outSeconds;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSTimeInterval)duration
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [(AVMIDIPlayer *)self impl];
  outSeconds = 0.0;
  SecondsForBeats = MusicSequenceGetSecondsForBeats(v2->var2, v2->var3, &outSeconds);
  if (SecondsForBeats)
  {
    v4 = SecondsForBeats;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v10 = "AVAEInternal.h";
      v11 = 1024;
      v12 = 104;
      v13 = 2080;
      v14 = "AVMIDIPlayer.mm";
      v15 = 1024;
      v16 = 182;
      v17 = 2080;
      v18 = "[AVMIDIPlayer duration]";
      v19 = 2080;
      v20 = "MusicSequenceGetSecondsForBeats(impl->mSequence, impl->mLength, &durInSeconds)";
      v21 = 1024;
      v22 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v4}];
  }

  result = outSeconds;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setRate:(float)rate
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MusicPlayerSetPlayRateScalar([(AVMIDIPlayer *)self impl][8], rate);
  if (v3)
  {
    v4 = v3;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v8 = "AVAEInternal.h";
      v9 = 1024;
      v10 = 104;
      v11 = 2080;
      v12 = "AVMIDIPlayer.mm";
      v13 = 1024;
      v14 = 175;
      v15 = 2080;
      v16 = "[AVMIDIPlayer setRate:]";
      v17 = 2080;
      v18 = "MusicPlayerSetPlayRateScalar(impl->mPlayer, rate)";
      v19 = 1024;
      v20 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v4}];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (float)rate
{
  v22 = *MEMORY[0x1E69E9840];
  outScaleRate = 0.0;
  PlayRateScalar = MusicPlayerGetPlayRateScalar([(AVMIDIPlayer *)self impl][8], &outScaleRate);
  if (PlayRateScalar)
  {
    v3 = PlayRateScalar;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 104;
      v12 = 2080;
      v13 = "AVMIDIPlayer.mm";
      v14 = 1024;
      v15 = 168;
      v16 = 2080;
      v17 = "[AVMIDIPlayer rate]";
      v18 = 2080;
      v19 = "MusicPlayerGetPlayRateScalar(impl->mPlayer, &scalar)";
      v20 = 1024;
      v21 = v3;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v3}];
  }

  v5 = *MEMORY[0x1E69E9840];
  return outScaleRate;
}

- (BOOL)isPlaying
{
  v22 = *MEMORY[0x1E69E9840];
  outIsPlaying = 0;
  IsPlaying = MusicPlayerIsPlaying([(AVMIDIPlayer *)self impl][8], &outIsPlaying);
  if (IsPlaying)
  {
    v3 = IsPlaying;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 104;
      v12 = 2080;
      v13 = "AVMIDIPlayer.mm";
      v14 = 1024;
      v15 = 160;
      v16 = 2080;
      v17 = "[AVMIDIPlayer isPlaying]";
      v18 = 2080;
      v19 = "MusicPlayerIsPlaying(impl->mPlayer, &playing)";
      v20 = 1024;
      v21 = v3;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v3}];
  }

  result = outIsPlaying != 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)stop
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(AVMIDIPlayer *)self impl];
  v3 = MusicPlayerStop(v2->var1);
  if (v3)
  {
    v4 = v3;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 104;
      *&buf[18] = 2080;
      *&buf[20] = "AVMIDIPlayer.mm";
      *&buf[28] = 1024;
      *&buf[30] = 303;
      *&buf[34] = 2080;
      *&buf[36] = "stop";
      v10 = 2080;
      v11 = "MusicPlayerStop(mPlayer)";
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v4}];
  }

  var4 = v2->var4;
  if (var4)
  {
    v2->var4 = 0;
    var5 = v2->var5;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN14MIDIPlayerImpl4stopEv_block_invoke;
    *&buf[24] = &unk_1E7EF6548;
    *&buf[32] = var4;
    dispatch_async(var5, buf);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)play:(AVMIDIPlayerCompletionHandler)completionHandler
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [(AVMIDIPlayer *)self impl];
  v4->var4 = _Block_copy(completionHandler);
  v5 = MusicPlayerStart(v4->var1);
  if (v5)
  {
    v6 = v5;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v10 = "AVAEInternal.h";
      v11 = 1024;
      v12 = 104;
      v13 = 2080;
      v14 = "AVMIDIPlayer.mm";
      v15 = 1024;
      v16 = 298;
      v17 = 2080;
      v18 = "start";
      v19 = 2080;
      v20 = "MusicPlayerStart(mPlayer)";
      v21 = 1024;
      v22 = v6;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v6}];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)prepareToPlay
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MusicPlayerPreroll([(AVMIDIPlayer *)self impl][8]);
  if (v2)
  {
    v3 = v2;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v7 = "AVAEInternal.h";
      v8 = 1024;
      v9 = 104;
      v10 = 2080;
      v11 = "AVMIDIPlayer.mm";
      v12 = 1024;
      v13 = 137;
      v14 = 2080;
      v15 = "[AVMIDIPlayer prepareToPlay]";
      v16 = 2080;
      v17 = "MusicPlayerPreroll(impl->mPlayer)";
      v18 = 1024;
      v19 = v3;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v3}];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (double)beatsForHostTime:(unint64_t)a3
{
  outBeats = 0.0;
  BeatsForHostTime = MusicPlayerGetBeatsForHostTime([(AVMIDIPlayer *)self impl][8], a3, &outBeats);
  result = outBeats;
  if (BeatsForHostTime)
  {
    return 0.0;
  }

  return result;
}

- (unint64_t)hostTimeForBeats:(double)a3
{
  outHostTime = 0;
  if (MusicPlayerGetHostTimeForBeats([(AVMIDIPlayer *)self impl][8], a3, &outHostTime))
  {
    return 0;
  }

  else
  {
    return outHostTime;
  }
}

- (AVMIDIPlayer)initWithData:(NSData *)data soundBankURL:(NSURL *)bankURL error:(NSError *)outError
{
  v8 = [(AVMIDIPlayer *)self initBase];
  v9 = v8;
  if (v8)
  {
    if (!data)
    {
LABEL_9:
      v12 = v9;
      return 0;
    }

    if (outError)
    {
      *outError = 0;
    }

    v10 = [(AVMIDIPlayer *)v8 impl];
    v11 = MusicSequenceFileLoadData(v10->var2, data, kMusicSequenceFile_AnyType, 1u);
    if (v11 || (v11 = MIDIPlayerImpl::finishLoad(v10, bankURL)) != 0)
    {
      if (outError)
      {
        *outError = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:v11 userInfo:0];
      }

      goto LABEL_9;
    }
  }

  return v9;
}

- (AVMIDIPlayer)initWithContentsOfURL:(NSURL *)inURL soundBankURL:(NSURL *)bankURL error:(NSError *)outError
{
  v8 = [(AVMIDIPlayer *)self initBase];
  v9 = v8;
  if (v8)
  {
    if (!inURL)
    {
LABEL_9:
      v12 = v9;
      return 0;
    }

    if (outError)
    {
      *outError = 0;
    }

    v10 = [(AVMIDIPlayer *)v8 impl];
    *(v10 + 24) = 0;
    v11 = MusicSequenceFileLoad(*(v10 + 16), inURL, kMusicSequenceFile_AnyType, 1u);
    if (v11 || (v11 = MIDIPlayerImpl::finishLoad(v10, bankURL)) != 0)
    {
      if (outError)
      {
        *outError = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:v11 userInfo:0];
      }

      goto LABEL_9;
    }
  }

  return v9;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (kAVMPScope)
  {
    v3 = *kAVMPScope;
    if (!*kAVMPScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v7 = "AVMIDIPlayer.mm";
    v8 = 1024;
    v9 = 73;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ---> self = %p", buf, 0x1Cu);
  }

LABEL_7:
  [(AVMIDIPlayer *)self destroyBase];
  v5.receiver = self;
  v5.super_class = AVMIDIPlayer;
  [(AVMIDIPlayer *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)finalize
{
  [(AVMIDIPlayer *)self destroyBase];
  v3.receiver = self;
  v3.super_class = AVMIDIPlayer;
  [(AVMIDIPlayer *)&v3 finalize];
}

- (void)destroyBase
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(AVMIDIPlayer *)self impl];
  if (v2)
  {
    v3 = v2;
    if (kAVMPScope)
    {
      v4 = *kAVMPScope;
      if (!*kAVMPScope)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315650;
      v11 = "AVMIDIPlayer.mm";
      v12 = 1024;
      v13 = 268;
      v14 = 2048;
      v15 = v3;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ---> this = %p", &v10, 0x1Cu);
    }

LABEL_9:
    var5 = v3->var5;
    if (var5)
    {
      dispatch_release(var5);
    }

    var1 = v3->var1;
    if (var1)
    {
      DisposeMusicPlayer(var1);
    }

    var2 = v3->var2;
    if (var2)
    {
      DisposeMusicSequence(var2);
    }

    if (v3->var0)
    {
      DisposeAUGraph(v3->var0);
    }

    v9 = *MEMORY[0x1E69E9840];

    JUMPOUT(0x1BFAF5800);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)initBase
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = AVMIDIPlayer;
  if ([(AVMIDIPlayer *)&v4 init])
  {
    if ([AVMIDIPlayer(AVMIDIPlayerPriv) initBase]::once != -1)
    {
      dispatch_once(&[AVMIDIPlayer(AVMIDIPlayerPriv) initBase]::once, &__block_literal_global_3156);
    }

    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

@end