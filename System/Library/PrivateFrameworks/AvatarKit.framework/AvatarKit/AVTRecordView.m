@interface AVTRecordView
- (AVTRecordView)init;
- (AVTRecordView)initWithCoder:(id)a3;
- (AVTRecordView)initWithFrame:(CGRect)a3;
- (AVTRecordView)initWithFrame:(CGRect)a3 options:(id)a4;
- (AVTRecordViewDelegate)recordDelegate;
- (BOOL)exportMovieToURL:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (BOOL)faceIsFullyActive;
- (BOOL)mergeAudio:(id)a3 andVideoTo:(id)a4 error:(id *)a5;
- (double)_renderer:(id)a3 inputTimeForCurrentFrameWithTime:(double)a4;
- (double)currentAudioTime;
- (double)finalVideoDuration;
- (double)recordingDuration;
- (id)_tmpAudioURL;
- (id)_tmpMaskVideoURL;
- (id)_tmpVideoURL;
- (id)faceTrackingRecordingURL;
- (opaqueCMSampleBuffer)createSilentAudioAtFrame:(int64_t)a3 nFrames:(int)a4 sampleRate:(double)a5 numChannels:(int)a6;
- (void)_avt_commonInit;
- (void)_didLostTrackingForAWhile;
- (void)_drawAtTime:(double)a3;
- (void)_playLivePreviewAnimation;
- (void)_processInfoThermalStateDidChange:(id)a3;
- (void)_renderer:(id)a3 updateAtTime:(double)a4;
- (void)_setEffectivePreferredFramesPerSecond;
- (void)_smoothRecordedData;
- (void)_updateFrameRateForThermalState:(int64_t)a3;
- (void)_updateTrackingState;
- (void)addRecordedAnimationToAvatar:(id)a3;
- (void)audioPlayerItemDidReachEnd:(id)a3;
- (void)audioSessionDidInterrupt:(id)a3;
- (void)avatarDidChange;
- (void)cancelRecording;
- (void)cancelRecordingAudio;
- (void)convertRecordedDataToAnimationGroup;
- (void)dealloc;
- (void)drawableNotAvailableForTime:(double)a3;
- (void)faceTracker:(id)a3 session:(id)a4 didFailWithError:(id)a5;
- (void)faceTracker:(id)a3 session:(id)a4 didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)a5;
- (void)faceTracker:(id)a3 sessionInterruptionEnded:(id)a4;
- (void)faceTracker:(id)a3 sessionWasInterrupted:(id)a4;
- (void)faceTrackerDidUpdate:(id)a3 withARFrame:(id)a4;
- (void)fadePuppetToWhite:(float)a3;
- (void)finalizeAudioFile;
- (void)playPreviewOnce;
- (void)removeRecordedAnimationFromAvatar:(id)a3;
- (void)setAvatar:(id)a3;
- (void)setFaceTrackingRecordingURL:(id)a3;
- (void)setMute:(BOOL)a3;
- (void)setPlayBakedAnimation:(BOOL)a3;
- (void)startPlayingAudio;
- (void)startPreviewing;
- (void)startRecording;
- (void)startRecordingAudio;
- (void)stopPlayingAudio;
- (void)stopPreviewing;
- (void)stopRecording;
- (void)stopRecordingAudio;
- (void)trimRecordedData;
- (void)updateAudioState;
- (void)updateForChangedFaceTrackingPaused;
@end

@implementation AVTRecordView

- (void)_avt_commonInit
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (AVTRecordView)init
{
  v5.receiver = self;
  v5.super_class = AVTRecordView;
  v2 = [(AVTRecordView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AVTRecordView *)v2 _avt_commonInit];
  }

  return v3;
}

- (AVTRecordView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVTRecordView;
  v3 = [(AVTView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AVTRecordView *)v3 _avt_commonInit];
  }

  return v4;
}

- (AVTRecordView)initWithFrame:(CGRect)a3 options:(id)a4
{
  v7.receiver = self;
  v7.super_class = AVTRecordView;
  v4 = [(AVTView *)&v7 initWithFrame:a4 options:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(AVTRecordView *)v4 _avt_commonInit];
  }

  return v5;
}

- (AVTRecordView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AVTRecordView;
  v3 = [(AVTView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVTRecordView *)v3 _avt_commonInit];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E696A7E0] object:0];

  v4.receiver = self;
  v4.super_class = AVTRecordView;
  [(AVTView *)&v4 dealloc];
}

- (void)_setEffectivePreferredFramesPerSecond
{
  preferredFramesPerSecond_thermal = self->_preferredFramesPerSecond_thermal;
  preferredFramesPerSecond_user = self->_preferredFramesPerSecond_user;
  if (preferredFramesPerSecond_thermal)
  {
    if (preferredFramesPerSecond_user)
    {
      if (preferredFramesPerSecond_user < preferredFramesPerSecond_thermal)
      {
        preferredFramesPerSecond_thermal = self->_preferredFramesPerSecond_user;
      }

      [(AVTRecordView *)&v6 setPreferredFramesPerSecond:preferredFramesPerSecond_thermal, v4.receiver, v4.super_class, v5.receiver, v5.super_class, self, AVTRecordView];
    }

    else
    {
      [(AVTRecordView *)&v5 setPreferredFramesPerSecond:preferredFramesPerSecond_thermal, v4.receiver, v4.super_class, self, AVTRecordView, v6.receiver, v6.super_class];
    }
  }

  else
  {
    [(AVTRecordView *)&v4 setPreferredFramesPerSecond:preferredFramesPerSecond_user, self, AVTRecordView, v5.receiver, v5.super_class, v6.receiver, v6.super_class];
  }
}

- (void)_updateFrameRateForThermalState:(int64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.UIKit"];
  if (([v5 BOOLForKey:@"avatarKit.disableThermalDrivenFPS"] & 1) == 0)
  {
    if (a3 <= 3)
    {
      self->_preferredFramesPerSecond_thermal = qword_1BB4F0E90[a3];
    }

    [(AVTRecordView *)self _setEffectivePreferredFramesPerSecond];
  }
}

- (void)_processInfoThermalStateDidChange:(id)a3
{
  v4 = [a3 object];
  -[AVTRecordView _updateFrameRateForThermalState:](self, "_updateFrameRateForThermalState:", [v4 thermalState]);
}

- (id)faceTrackingRecordingURL
{
  v2 = [(AVTView *)self faceTracker];
  v3 = [v2 faceTrackingRecordingURL];

  return v3;
}

- (void)setFaceTrackingRecordingURL:(id)a3
{
  v4 = a3;
  v5 = [(AVTView *)self faceTracker];
  [v5 setFaceTrackingRecordingURL:v4];
}

- (void)faceTracker:(id)a3 session:(id)a4 didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)a5
{
  [(NSLock *)self->_audioLock lock:a3];
  if (self->_audioWriterInput)
  {
    p_currentAudioTime = &self->_currentAudioTime;
    CMSampleBufferGetPresentationTimeStamp(&v10, a5);
    self->_currentAudioTime = v10;
    if (!self->_audioIsRecording)
    {
      audioWriter = self->_audioWriter;
      *&v10.value = *&p_currentAudioTime->value;
      v10.epoch = self->_currentAudioTime.epoch;
      [(AVAssetWriter *)audioWriter startSessionAtSourceTime:&v10];
      epoch = self->_currentAudioTime.epoch;
      *&self->_startAudioTime.value = *&p_currentAudioTime->value;
      self->_startAudioTime.epoch = epoch;
      self->_audioIsRecording = 1;
    }

    if ([(AVAssetWriterInput *)self->_audioWriterInput isReadyForMoreMediaData])
    {
      self->_recordedSampleCount += CMSampleBufferGetNumSamples(a5);
      [(AVAssetWriterInput *)self->_audioWriterInput appendSampleBuffer:a5];
    }
  }

  [(NSLock *)self->_audioLock unlock];
}

- (void)faceTracker:(id)a3 session:(id)a4 didFailWithError:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [(AVTRecordView *)self recordDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(AVTRecordView *)self recordDelegate];
    [v10 recordView:self session:v14 didFailWithError:v7];
  }

  v11 = [(AVTView *)self faceTrackingDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(AVTView *)self faceTrackingDelegate];
    [v13 avatarView:self faceTrackingSessionFailedWithError:v7];
  }
}

- (void)faceTracker:(id)a3 sessionWasInterrupted:(id)a4
{
  v11 = a4;
  v5 = [(AVTRecordView *)self recordDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVTRecordView *)self recordDelegate];
    [v7 recordView:self sessionWasInterrupted:v11];
  }

  v8 = [(AVTView *)self faceTrackingDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(AVTView *)self faceTrackingDelegate];
    [v10 avatarViewFaceTrackingSessionInterruptionDidBegin:self];
  }
}

- (void)faceTracker:(id)a3 sessionInterruptionEnded:(id)a4
{
  v11 = a4;
  v5 = [(AVTRecordView *)self recordDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVTRecordView *)self recordDelegate];
    [v7 recordView:self sessionInterruptionEnded:v11];
  }

  v8 = [(AVTView *)self faceTrackingDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(AVTView *)self faceTrackingDelegate];
    [v10 avatarViewFaceTrackingSessionInterruptionDidEnd:self];
  }
}

- (void)faceTrackerDidUpdate:(id)a3 withARFrame:(id)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = AVTRecordView;
  [(AVTView *)&v26 faceTrackerDidUpdate:v6 withARFrame:a4];
  if (!self->_exportingMovie)
  {
    v7 = [v6 faceIsTracked] && !self->_exportingMovie && !-[AVTView faceTrackingIsPaused](self, "faceTrackingIsPaused");
    [(AVTView *)self setRendersContinuously:v7];
    if (self->_recording)
    {
      if (self->_recordedCount >= self->_recordingCapacity)
      {
        [(AVTRecordView *)self stopRecording];
      }

      else
      {
        v8 = [v6 faceTrackingInfo];
        v9 = [v8 trackingData];
        [(NSMutableData *)self->_rawTimesData increaseLengthBy:8];
        v10 = *v9;
        *([(NSMutableData *)self->_rawTimesData mutableBytes]+ 8 * self->_recordedCount) = v10;
        [(NSMutableData *)self->_rawBlendShapesData increaseLengthBy:204];
        v11 = [(NSMutableData *)self->_rawBlendShapesData mutableBytes]+ 204 * self->_recordedCount;
        *v11 = *(v9 + 256);
        v12 = *(v9 + 400);
        v13 = *(v9 + 416);
        v14 = *(v9 + 432);
        *(v11 + 188) = *(v9 + 444);
        v11[10] = v13;
        v11[11] = v14;
        v11[9] = v12;
        v15 = *(v9 + 336);
        v16 = *(v9 + 352);
        v17 = *(v9 + 384);
        v11[7] = *(v9 + 368);
        v11[8] = v17;
        v11[5] = v15;
        v11[6] = v16;
        v18 = *(v9 + 272);
        v19 = *(v9 + 288);
        v20 = *(v9 + 320);
        v11[3] = *(v9 + 304);
        v11[4] = v20;
        v11[1] = v18;
        v11[2] = v19;
        [(NSMutableData *)self->_rawTransformsData increaseLengthBy:64];
        v21 = [(NSMutableData *)self->_rawTransformsData mutableBytes]+ (self->_recordedCount << 6);
        [v6 rawTransform];
        *v21 = v22;
        v21[1] = v23;
        v21[2] = v24;
        v21[3] = v25;
        [(NSMutableData *)self->_rawParametersData increaseLengthBy:4];
        *([(NSMutableData *)self->_rawParametersData mutableBytes]+ 4 * self->_recordedCount++) = *(v9 + 464);
      }
    }
  }
}

- (void)_didLostTrackingForAWhile
{
  v3 = [(AVTRecordView *)self recordDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVTRecordView *)self recordDelegate];
    [v5 recordViewDidLostTrackingWhileRecording:self];
  }
}

- (void)_renderer:(id)a3 updateAtTime:(double)a4
{
  v6 = a3;
  if ([(AVTRecordView *)self isPreviewing])
  {
    memset(&v13[1], 0, sizeof(CMTime));
    audioPlayer = self->_audioPlayer;
    if (audioPlayer)
    {
      [(AVPlayer *)audioPlayer currentTime];
    }

    v13[0] = v13[1];
    v8 = fmax(CMTimeGetSeconds(v13), 0.0);
    lastAudioPlayerTime = self->_lastAudioPlayerTime;
    if (v8 != 0.0 && lastAudioPlayerTime == v8)
    {
      v8 = lastAudioPlayerTime + a4 - self->_lastAudioSystemTime;
    }

    else
    {
      self->_lastAudioPlayerTime = v8;
      self->_lastAudioSystemTime = a4;
    }

    v11 = [v6 world];
    v12 = [v11 clock];
    [v12 setTime:v8];
  }

  [(AVTView *)self updateAtTime:a4];
}

- (double)_renderer:(id)a3 inputTimeForCurrentFrameWithTime:(double)a4
{
  result = 0.0;
  if (!self->_playing && !self->_exportingMovie)
  {
    [(AVTView *)self currentlyRenderedTrackingDate:a3];
    if (result == 0.0)
    {
      return a4;
    }
  }

  return result;
}

- (void)setAvatar:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5.receiver = self;
  v5.super_class = AVTRecordView;
  [(AVTView *)&v5 setAvatar:v4];

  kdebug_trace();
}

- (void)avatarDidChange
{
  [(AVTView *)self lockAvatar];
  [(AVTRecordView *)self convertRecordedDataToAnimationGroup];
  v3 = [(AVTView *)self environment];
  v4 = [(AVTView *)self avatar];
  v5 = [(AVTView *)self presentationConfiguration];
  [v3 avatarDidChange:v4 presentationConfiguration:v5];

  if (!self->_recordedAnimationGroup)
  {
    self->_referenceAnimationBeginTime = CACurrentMediaTime();
  }

  v6 = [(AVTView *)self avatar];
  [v6 setBakedAnimationReferenceTime:self->_referenceAnimationBeginTime];

  [(AVTView *)self unlockAvatar];
}

- (void)startRecording
{
  [(AVTView *)self lockAvatar];
  self->_playing = 0;
  v3 = (self->_maxRecordingDuration * 60.0);
  self->_recordingCapacity = v3;
  v4 = [MEMORY[0x1E695DF88] dataWithCapacity:8 * v3];
  rawTimesData = self->_rawTimesData;
  self->_rawTimesData = v4;

  v6 = [MEMORY[0x1E695DF88] dataWithCapacity:204 * self->_recordingCapacity];
  rawBlendShapesData = self->_rawBlendShapesData;
  self->_rawBlendShapesData = v6;

  v8 = [MEMORY[0x1E695DF88] dataWithCapacity:self->_recordingCapacity << 6];
  rawTransformsData = self->_rawTransformsData;
  self->_rawTransformsData = v8;

  v10 = [MEMORY[0x1E695DF88] dataWithCapacity:4 * self->_recordingCapacity];
  rawParametersData = self->_rawParametersData;
  self->_rawParametersData = v10;

  self->_recording = 1;
  self->_recordingStartTime = CACurrentMediaTime();
  self->_recordedCount = 0;
  recordedAnimationGroup = self->_recordedAnimationGroup;
  self->_recordedAnimationGroup = 0;

  v13 = [(AVTView *)self faceTracker];
  [v13 startRecording];

  [(AVTRecordView *)self cancelRecordingAudio];
  [(AVTRecordView *)self startRecordingAudio];

  [(AVTView *)self unlockAvatar];
}

- (void)cancelRecording
{
  [(AVTView *)self lockAvatar];
  rawTimesData = self->_rawTimesData;
  self->_rawTimesData = 0;

  rawBlendShapesData = self->_rawBlendShapesData;
  self->_rawBlendShapesData = 0;

  rawTransformsData = self->_rawTransformsData;
  self->_rawTransformsData = 0;

  rawParametersData = self->_rawParametersData;
  self->_rawParametersData = 0;

  self->_recording = 0;
  self->_recordedCount = 0;
  recordedAnimationGroup = self->_recordedAnimationGroup;
  self->_recordedAnimationGroup = 0;

  v8 = [(AVTView *)self faceTracker];
  [v8 stopRecording];

  [(AVTRecordView *)self cancelRecordingAudio];

  [(AVTView *)self unlockAvatar];
}

- (void)_smoothRecordedData
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopRecording
{
  [(AVTView *)self lockAvatar];
  if (self->_recording)
  {
    self->_recording = 0;
    v3 = [(AVTView *)self faceTracker];
    [v3 stopRecording];

    [(AVTRecordView *)self stopRecordingAudio];
    [(AVTRecordView *)self trimRecordedData];
    [(AVTRecordView *)self finalizeAudioFile];
    [(AVTRecordView *)self _smoothRecordedData];
    [(AVTRecordView *)self convertRecordedDataToAnimationGroup];
  }

  [(AVTView *)self unlockAvatar];
}

- (void)addRecordedAnimationToAvatar:(id)a3
{
  v12 = a3;
  [v12 pauseBakedAnimation];
  v4 = self->_recordedAnimationGroup;
  v5 = [v12 bakedAnimationCopy];
  v6 = v5;
  if (v5)
  {
    [v5 setBeginTime:0.0];
    [v6 setTimeOffset:self->_recordingStartTime - self->_referenceAnimationBeginTime];
    v7 = [(CAAnimationGroup *)v4 copy];

    v8 = [(CAAnimationGroup *)v7 animations];
    v9 = [v8 arrayByAddingObject:v6];
    [(CAAnimationGroup *)v7 setAnimations:v9];

    v4 = v7;
  }

  v10 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:v4];
  [v10 setRemovedOnCompletion:0];
  v11 = [v12 avatarNode];
  [v11 addAnimation:v10 forKey:@"kAVTRecordViewLivePreview"];
}

- (void)removeRecordedAnimationFromAvatar:(id)a3
{
  v4 = a3;
  v3 = [v4 avatarNode];
  [v3 removeAnimationForKey:@"kAVTRecordViewLivePreview"];

  [v4 resumeBakedAnimation];
}

- (void)_playLivePreviewAnimation
{
  v6 = [(AVTView *)self avatar];
  v3 = [(AVTView *)self environment];
  v4 = [v3 showReticle];

  if (v4)
  {
    v5 = [(AVTView *)self environment];
    [v5 setShowReticle:0];

    [(AVTView *)self setFaceIsTracked:1];
  }

  [(AVTRecordView *)self addRecordedAnimationToAvatar:v6];
}

- (void)startPreviewing
{
  [(AVTView *)self lockAvatar];
  self->_playing = 1;
  [(AVTRecordView *)self _playLivePreviewAnimation];
  [(AVTRecordView *)self updateAudioState];
  [(AVTRecordView *)self _updateTrackingState];
  [(AVTView *)self unlockAvatar];
  v3 = [(AVTRecordView *)self recordDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVTRecordView *)self recordDelegate];
    [v5 recordView:self previewDidChangeStatus:0];
  }
}

- (void)playPreviewOnce
{
  if (self->_playing)
  {
    v3 = [(AVTRecordView *)self recordDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(AVTRecordView *)self recordDelegate];
      [v5 recordView:self previewDidChangeStatus:1];
    }

    [(AVTView *)self lockAvatar];
    [(AVTRecordView *)self _playLivePreviewAnimation];
    [(AVTRecordView *)self stopPlayingAudio];
    [(AVTRecordView *)self startPlayingAudio];
    [(AVTRecordView *)self _updateTrackingState];
    [(AVTView *)self unlockAvatar];
    v6 = [(AVTRecordView *)self recordDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(AVTRecordView *)self recordDelegate];
      [v8 recordView:self previewDidChangeStatus:0];
    }
  }

  else
  {

    [(AVTRecordView *)self startPreviewing];
  }
}

- (void)stopPreviewing
{
  [(AVTView *)self lockAvatar];
  self->_playing = 0;
  v6 = [(AVTView *)self avatar];
  [(AVTRecordView *)self removeRecordedAnimationFromAvatar:?];
  [(AVTRecordView *)self updateAudioState];
  [(AVTRecordView *)self stopPlayingAudio];
  [(AVTRecordView *)self _updateTrackingState];
  [(AVTView *)self unlockAvatar];
  v3 = [(AVTRecordView *)self recordDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVTRecordView *)self recordDelegate];
    [v5 recordView:self previewDidChangeStatus:1];
  }
}

- (void)setPlayBakedAnimation:(BOOL)a3
{
  if (self->_playBakedAnimation != a3)
  {
    self->_playBakedAnimation = a3;
    [(AVTRecordView *)self _updateTrackingState];
  }
}

- (void)_updateTrackingState
{
  if (self->_playBakedAnimation || [(AVTView *)self faceTrackingIsPaused]|| self->_playing || self->_exportingMovie)
  {
    v3 = [(AVTView *)self faceTracker];
    [v3 pauseByPausingARSession];
  }

  else
  {
    v3 = [(AVTView *)self faceTracker];
    [v3 run];
  }
}

- (void)updateForChangedFaceTrackingPaused
{
  v3 = [(AVTView *)self faceTrackingIsPaused];
  v4 = [(AVTRecordView *)self world];
  v5 = [v4 clock];
  [v5 setPaused:v3];

  [(AVTRecordView *)self _updateTrackingState];
}

- (BOOL)faceIsFullyActive
{
  v2 = [(AVTView *)self environment];
  v3 = [v2 faceIsFullyVisible];

  return v3;
}

- (void)trimRecordedData
{
  v3 = [(NSMutableData *)self->_rawTimesData mutableBytes];
  v4 = [(NSMutableData *)self->_rawBlendShapesData mutableBytes];
  __dst = [(NSMutableData *)self->_rawTransformsData mutableBytes];
  v17 = [(NSMutableData *)self->_rawParametersData mutableBytes];
  time = self->_startAudioTime;
  Seconds = CMTimeGetSeconds(&time);
  time = self->_stopAudioTime;
  v6 = CMTimeGetSeconds(&time);
  recordedCount = self->_recordedCount;
  if (recordedCount < 1)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = 0;
    while (v3[v8] <= Seconds)
    {
      if (recordedCount == ++v8)
      {
        LODWORD(v8) = self->_recordedCount;
        goto LABEL_12;
      }
    }
  }

  if (v8 >= recordedCount)
  {
LABEL_12:
    v9 = v8;
    LODWORD(recordedCount) = v8;
  }

  else
  {
    v9 = v8;
    v10 = v8;
    while (v3[v10] <= v6)
    {
      if (recordedCount <= ++v10)
      {
        goto LABEL_14;
      }
    }

    LODWORD(recordedCount) = v10;
  }

LABEL_14:
  v11 = recordedCount - v8;
  self->_recordedCount = v11;
  v12 = 8 * v11;
  memmove(v3, &v3[v9], v12);
  [(NSMutableData *)self->_rawTimesData setLength:v12];
  v13 = 204 * self->_recordedCount;
  memmove(v4, &v4[4 * (51 * v8)], v13);
  [(NSMutableData *)self->_rawBlendShapesData setLength:v13];
  v14 = self->_recordedCount << 6;
  memmove(__dst, &__dst[64 * v9], v14);
  [(NSMutableData *)self->_rawTransformsData setLength:v14];
  v15 = 4 * self->_recordedCount;
  memmove(v17, &v17[4 * v9], v15);
  [(NSMutableData *)self->_rawParametersData setLength:v15];
}

- (double)recordingDuration
{
  v3 = [(NSMutableData *)self->_rawTimesData mutableBytes];
  recordedCount = self->_recordedCount;
  if (recordedCount <= 1)
  {
    recordedCount = 1;
  }

  return v3[recordedCount - 1] - *v3;
}

- (double)finalVideoDuration
{
  v17 = *MEMORY[0x1E69E9840];
  [(AVTRecordView *)self recordingDuration];
  v3 = v2 + 0.25;
  *&v2 = (v2 + 0.25) * 60.0;
  v4 = vcvtps_u32_f32(*&v2);
  v5 = avt_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v3;
    v9 = 134218752;
    v10 = (v4 / 60.0);
    v11 = 1024;
    v12 = v4;
    v13 = 1024;
    v14 = 60;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1BB472000, v5, OS_LOG_TYPE_DEFAULT, "[Record view] Final video duration: %.3fs (for %d frames at %dfps ; exact duration: %.3fs)", &v9, 0x22u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return (v4 / 60.0);
}

- (void)convertRecordedDataToAnimationGroup
{
  v3 = [(NSMutableData *)self->_rawTimesData mutableBytes];
  v4 = [(NSMutableData *)self->_rawBlendShapesData mutableBytes];
  v5 = [(NSMutableData *)self->_rawTransformsData mutableBytes];
  v6 = [(NSMutableData *)self->_rawParametersData mutableBytes];
  if (self->_recordedCount)
  {
    v7 = v6;
    [(AVTRecordView *)self recordingDuration];
    if (v8 > 0.0)
    {
      v9 = v8;
      v66 = v4;
      v63 = v5;
      v10 = self->_recordedCount + 1;
      v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v69 = v10;
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
      v12 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
      if (self->_recordedCount > 1)
      {
        v13 = 0;
        do
        {
          [v11 addObject:v12];
          ++v13;
        }

        while (v13 < self->_recordedCount - 1);
      }

      v14 = v9 + 0.25;
      v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v11 addObject:v15];

      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v69];
      if (self->_recordedCount >= 1)
      {
        v17 = 0;
        do
        {
          v18 = [MEMORY[0x1E696AD98] numberWithDouble:(v3[v17] - *v3) / v14];
          [v16 addObject:v18];

          ++v17;
        }

        while (v17 < self->_recordedCount);
      }

      [v16 addObject:&unk_1F39E2E58];
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __52__AVTRecordView_convertRecordedDataToAnimationGroup__block_invoke;
      v82[3] = &__block_descriptor_48_e37_f40__0Q8Q16__NSNumber_24__NSNumber_32l;
      v82[4] = v66;
      v82[5] = v7;
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v74 = __52__AVTRecordView_convertRecordedDataToAnimationGroup__block_invoke_2;
      v75 = &unk_1E7F49E40;
      v76 = self;
      v79 = v14;
      v67 = v11;
      v77 = v67;
      v80 = v69;
      v81 = v82;
      v65 = v16;
      v78 = v65;
      v19 = AVTBlendShapeLocationToARIndex(*MEMORY[0x1E6986408]);
      v72 = 0u;
      v20 = [(AVTView *)self avatar];
      v21 = v20;
      if (v20)
      {
        [v20 morphInfoForARKitBlendShapeIndex:v19];
      }

      else
      {
        v72 = 0u;
      }

      if (BYTE8(v72) == 1)
      {
        v22 = v74(v73, v19, 0);
        if (v22)
        {
          [v68 addObject:v22];
        }
      }

      else
      {
        v22 = 0;
      }

      for (i = 0; i != 52; ++i)
      {
        if (v19 != i)
        {
          BYTE8(v71) = 0;
          v24 = [(AVTView *)self avatar];
          v25 = v24;
          if (v24)
          {
            [v24 morphInfoForARKitBlendShapeIndex:i];
          }

          else
          {
            v71 = 0u;
          }

          if (BYTE8(v71))
          {
            v26 = v74(v73, i, v22);
            if (v26)
            {
              [v68 addObject:v26];
            }
          }
        }
      }

      v27 = [MEMORY[0x1E6979390] animationWithKeyPath:{@"/root_JNT.translation", 0.0}];
      [v27 setDuration:v14];
      v64 = *MEMORY[0x1E69797E0];
      [v27 setFillMode:?];
      [v27 setTimingFunctions:v67];
      v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v69];
      if (self->_recordedCount)
      {
        v29 = 0;
        v30 = (v63 + 48);
        do
        {
          v31 = *v30;
          v30 += 4;
          v32 = [MEMORY[0x1E696B098] avt_valueWithFloat3_usableWithKVCForSCNVector3:*&v31];
          [v28 addObject:v32];

          ++v29;
        }

        while (v29 < self->_recordedCount);
      }

      v33 = [MEMORY[0x1E696B098] avt_valueWithFloat3_usableWithKVCForSCNVector3:*(v63 + 6)];
      [v28 addObject:v33];

      [v27 setKeyTimes:v65];
      [v27 setValues:v28];
      [v68 addObject:v27];
      v34 = [MEMORY[0x1E6979390] animationWithKeyPath:@"/head_JNT.orientation"];

      [v34 setDuration:v14];
      [v34 setFillMode:v64];
      v62 = v34;
      [v34 setTimingFunctions:v67];
      v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v69];

      if (self->_recordedCount)
      {
        v36 = 0;
        v37 = (v63 + 32);
        do
        {
          v38 = v37[-2];
          v39 = v37[-1];
          v40 = vmulq_f32(v38, v38);
          *&v41 = v40.f32[2] + vaddv_f32(*v40.f32);
          *v40.f32 = vrsqrte_f32(v41);
          *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)));
          v42 = vmulq_n_f32(v38, vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
          v43 = vmulq_f32(v39, v39);
          *&v44 = v43.f32[2] + vaddv_f32(*v43.f32);
          *v43.f32 = vrsqrte_f32(v44);
          *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)));
          v45 = vmulq_n_f32(v39, vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32))).f32[0]);
          v46 = vmulq_f32(*v37, *v37);
          *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
          *v46.f32 = vrsqrte_f32(v47);
          *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32)));
          v48 = vmulq_n_f32(*v37, vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32))).f32[0]);
          v49 = (*v42.i32 + *&v45.i32[1]) + *&v48.i32[2];
          if (v49 <= 0.0)
          {
            if (*v42.i32 <= *&v45.i32[1] || *v42.i32 <= *&v48.i32[2])
            {
              if (*&v45.i32[1] <= *&v48.i32[2])
              {
                *v51.f32 = vadd_f32(*&vzip2q_s32(v42, v45), *v48.i8);
                v50 = ((*&v48.i32[2] + 1.0) - *v42.i32) - *&v45.i32[1];
                v51.f32[2] = v50;
                v51.f32[3] = *&v42.i32[1] - *v45.i32;
              }

              else
              {
                v51.f32[0] = *&v42.i32[1] + *v45.i32;
                v50 = ((*&v45.i32[1] + 1.0) - *v42.i32) - *&v48.i32[2];
                v53 = vzip2q_s32(v42, v45).u64[0];
                v51.f32[1] = v50;
                *&v51.u32[2] = vext_s8(vadd_f32(*v48.i8, v53), vsub_f32(*v48.i8, v53), 4uLL);
              }
            }

            else
            {
              v50 = ((*v42.i32 + 1.0) - *&v45.i32[1]) - *&v48.i32[2];
              v54 = *&v42.i32[1];
              v55 = vzip2q_s32(v42, v45).u64[0];
              LODWORD(v56) = vadd_f32(v55, *v48.i8).u32[0];
              HIDWORD(v56) = vsub_f32(v55, *&v48).i32[1];
              v51.i64[0] = __PAIR64__(v54 + *v45.i32, LODWORD(v50));
              v51.i64[1] = v56;
            }
          }

          else
          {
            *v51.f32 = vsub_f32(*&vzip2q_s32(v45, vuzp1q_s32(v45, v48)), *&vtrn2q_s32(v48, vzip2q_s32(v48, v42)));
            v51.f32[2] = *&v42.i32[1] - *v45.i32;
            v50 = v49 + 1.0;
            v51.f32[3] = v49 + 1.0;
          }

          *&v70 = vmulq_n_f32(v51, 0.5 / sqrtf(v50)).u64[0];
          if ([(AVTView *)self arMode])
          {
            v57 = v70;
          }

          else
          {
            [AVTAvatar applyGazeCorrectionWithInputAngle:v70 translation:*v37[1].i64];
          }

          v58 = [MEMORY[0x1E696B098] avt_valueWithFloat4_usableWithKVCForSCNVector4:v57];
          [v35 addObject:v58];

          ++v36;
          v37 += 4;
        }

        while (v36 < self->_recordedCount);
      }

      v59 = [v35 objectAtIndex:0];
      [v35 addObject:v59];

      [v62 setKeyTimes:v65];
      [v62 setValues:v35];
      [v68 addObject:v62];
      v60 = [MEMORY[0x1E6979308] animation];
      [(CAAnimationGroup *)v60 setAnimations:v68];
      [(CAAnimationGroup *)v60 setDuration:v14];
      [(CAAnimationGroup *)v60 setFillMode:v64];
      recordedAnimationGroup = self->_recordedAnimationGroup;
      self->_recordedAnimationGroup = v60;
    }
  }
}

float __52__AVTRecordView_convertRecordedDataToAnimationGroup__block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  if (a2 > 0x32)
  {
    v11 = (*(a1 + 40) + 4 * a2 + 4 * a3 - 204);
  }

  else
  {
    v11 = (*(a1 + 32) + 204 * a3 + 4 * a2);
  }

  v12 = *v11;
  v13 = AVTBlendShapeLocationFromARIndex(a2);
  v14 = AVTMorphWeightApplyBlinkCorrection(v13, v12);
  v15 = AVTBlendShapeLocationFromARIndex(a2);

  if (v9 && v15 == *MEMORY[0x1E6986408])
  {
    [v9 floatValue];
    v14 = v16 + ((v14 - v16) * 0.3);
  }

  if (v10)
  {
    [v10 floatValue];
    v18 = v17;
  }

  else
  {
    v18 = -1.0;
  }

  v19 = AVTMorphWeightApplyCorrectionForTongue(v13, v14, v18);

  return v19;
}

id __52__AVTRecordView_convertRecordedDataToAnimationGroup__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v33 = 0u;
  v6 = [*(a1 + 32) avatar];
  v7 = v6;
  if (v6)
  {
    [v6 morphInfoForARKitBlendShapeIndex:a2];
  }

  else
  {
    v33 = 0u;
  }

  v8 = AVTBlendShapeLocationFromARIndex(a2);
  v9 = [*(&v33 + 1) name];
  if (!v9)
  {
    __52__AVTRecordView_convertRecordedDataToAnimationGroup__block_invoke_2_cold_2();
  }

  v10 = MEMORY[0x1E6979390];
  v31 = v9;
  v32 = v8;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@.morpher.weights[%@]", v9, v8];
  v12 = [v10 animationWithKeyPath:v11];

  [v12 setDuration:*(a1 + 56)];
  [v12 setFillMode:*MEMORY[0x1E69797E0]];
  v30 = v12;
  [v12 setTimingFunctions:*(a1 + 40)];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 64)];
  if (*(*(a1 + 32) + 872))
  {
    v14 = 0;
    do
    {
      v15 = *(a1 + 72);
      v16 = [v13 lastObject];
      v17 = [v5 values];
      v18 = [v17 objectAtIndexedSubscript:v14];
      v19 = (*(v15 + 16))(v15, a2, v14, v16, v18);

      if (v19 == -1.0)
      {
        __52__AVTRecordView_convertRecordedDataToAnimationGroup__block_invoke_2_cold_1();
      }

      *&v20 = v19;
      v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
      [v13 addObject:v21];

      ++v14;
    }

    while (v14 < *(*(a1 + 32) + 872));
  }

  v22 = *(a1 + 72);
  v23 = [v13 lastObject];
  v24 = [v5 values];
  v25 = [v24 objectAtIndexedSubscript:*(*(a1 + 32) + 872)];
  v26 = (*(v22 + 16))(v22, a2, 0, v23, v25);

  *&v27 = v26;
  v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
  [v13 addObject:v28];

  [v30 setKeyTimes:*(a1 + 48)];
  [v30 setValues:v13];

  return v30;
}

- (id)_tmpAudioURL
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 temporaryDirectory];

  v4 = [v3 URLByAppendingPathComponent:@"avtpuppet-audio.mp4"];

  return v4;
}

- (id)_tmpVideoURL
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 temporaryDirectory];

  v4 = [v3 URLByAppendingPathComponent:@"avtpuppet-video.mov"];

  return v4;
}

- (id)_tmpMaskVideoURL
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 temporaryDirectory];

  v4 = [v3 URLByAppendingPathComponent:@"avtpuppet-video-alpha.mov"];

  return v4;
}

- (BOOL)mergeAudio:(id)a3 andVideoTo:(id)a4 error:(id *)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v49 = a3;
  v51 = a4;
  v52 = [MEMORY[0x1E6988048] composition];
  v50 = [(AVTRecordView *)self _tmpVideoURL];
  v7 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v50 options:0];
  if (v7)
  {
    goto LABEL_5;
  }

  v8 = avt_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AVTRecordView mergeAudio:andVideoTo:error:];
  }

  sleep(1u);
  v7 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v50 options:0];
  if (v7)
  {
LABEL_5:
    memset(&v59, 0, sizeof(v59));
    [v7 duration];
    v9 = 0;
  }

  else
  {
    v44 = avt_default_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView mergeAudio:andVideoTo:error:];
    }

    v7 = 0;
    memset(&v59, 0, sizeof(v59));
    memset(&duration, 0, 24);
    v9 = 1;
  }

  v45 = *MEMORY[0x1E6960CC0];
  *&start.start.value = *MEMORY[0x1E6960CC0];
  v10 = *(MEMORY[0x1E6960CC0] + 16);
  start.start.epoch = v10;
  CMTimeRangeMake(&v59, &start.start, &duration.start);
  if (!self->_mute)
  {
    memset(&duration, 0, sizeof(duration));
    if (v9)
    {
      memset(&start, 0, 24);
    }

    else
    {
      [v7 duration];
    }

    *&v58.value = v45;
    v58.epoch = v10;
    CMTimeRangeMake(&duration, &v58, &start.start);
    v11 = *MEMORY[0x1E69875A0];
    v12 = [v52 addMutableTrackWithMediaType:*MEMORY[0x1E69875A0] preferredTrackID:0];
    v13 = [v49 tracksWithMediaType:v11];
    v14 = [v13 firstObject];

    if (v14)
    {
      start = duration;
      *&v58.value = v45;
      v58.epoch = v10;
      [v12 insertTimeRange:&start ofTrack:v14 atTime:&v58 error:0];
    }

    else
    {
      v15 = avt_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [AVTRecordView mergeAudio:v49 andVideoTo:? error:?];
      }
    }
  }

  v16 = *MEMORY[0x1E6987608];
  v48 = [v52 addMutableTrackWithMediaType:*MEMORY[0x1E6987608] preferredTrackID:{0, v45}];
  v17 = [v7 tracksWithMediaType:v16];
  v18 = [v17 firstObject];

  if (v18)
  {
    duration = v59;
    *&start.start.value = v46;
    start.start.epoch = v10;
    [v48 insertTimeRange:&duration ofTrack:v18 atTime:&start error:0];
    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = [v51 path];
    v21 = [v19 fileExistsAtPath:v20];

    if (v21)
    {
      v22 = [MEMORY[0x1E696AC08] defaultManager];
      v23 = [v51 path];
      [v22 removeItemAtPath:v23 error:0];
    }

    v24 = objc_alloc(MEMORY[0x1E6987E60]);
    v25 = [v24 initWithAsset:v52 presetName:*MEMORY[0x1E6987338]];
    [v25 setOutputFileType:*MEMORY[0x1E69874C0]];
    [v25 setOutputURL:v51];
    v26 = [MEMORY[0x1E6988050] metadataItem];
    v27 = *MEMORY[0x1E6987858];
    [v26 setKeySpace:*MEMORY[0x1E6987858]];
    [v26 setKey:@"LOOP"];
    LODWORD(start.start.value) = 0;
    v28 = *MEMORY[0x1E6960260];
    [v26 setDataType:*MEMORY[0x1E6960260]];
    v29 = [MEMORY[0x1E695DEF0] dataWithBytes:&start length:4];
    [v26 setValue:v29];

    v30 = [MEMORY[0x1E6988050] metadataItem];
    [v30 setKeySpace:v27];
    [v30 setKey:@"GREY"];
    [v30 setDataType:v28];
    v31 = [MEMORY[0x1E695DEF0] dataWithBytes:&start length:4];
    [v30 setValue:v31];

    v60[0] = v26;
    v60[1] = v30;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
    [v25 setMetadata:v32];

    v33 = dispatch_semaphore_create(0);
    v34 = avt_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(duration.start.value) = 138412290;
      *(&duration.start.value + 4) = v25;
      _os_log_impl(&dword_1BB472000, v34, OS_LOG_TYPE_DEFAULT, "[Record view] Video export will start with session %@", &duration, 0xCu);
    }

    duration.start.value = 0;
    *&duration.start.timescale = &duration;
    duration.start.epoch = 0x3032000000;
    duration.duration.value = __Block_byref_object_copy__8;
    *&duration.duration.timescale = __Block_byref_object_dispose__8;
    duration.duration.epoch = 0;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __45__AVTRecordView_mergeAudio_andVideoTo_error___block_invoke;
    v53[3] = &unk_1E7F49E68;
    v35 = v25;
    v54 = v35;
    p_duration = &duration;
    v36 = v33;
    v55 = v36;
    [v35 exportAsynchronouslyWithCompletionHandler:v53];
    v37 = dispatch_time(0, 20000000000);
    dispatch_semaphore_wait(v36, v37);
    v38 = *(*&duration.start.timescale + 40);
    v39 = v38 == 0;
    if (a5 && v38)
    {
      *a5 = v38;
    }

    _Block_object_dispose(&duration, 8);
  }

  else
  {
    v40 = avt_default_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView mergeAudio:v7 andVideoTo:v49 error:?];
    }

    if (!a5)
    {
      v39 = 0;
      goto LABEL_30;
    }

    v41 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A578];
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get video track"];
    v62 = v35;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    [v41 errorWithDomain:@"AVTErrorDomain" code:1 userInfo:v26];
    *a5 = v39 = 0;
  }

LABEL_30:
  v42 = *MEMORY[0x1E69E9840];
  return v39;
}

intptr_t __45__AVTRecordView_mergeAudio_andVideoTo_error___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) status] == 3 && (objc_msgSend(*v2, "error"), v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = avt_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BB472000, v4, OS_LOG_TYPE_DEFAULT, "[Record view] Video export did complete", v9, 2u);
    }
  }

  else
  {
    v4 = avt_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__AVTRecordView_mergeAudio_andVideoTo_error___block_invoke_cold_1(v2);
    }
  }

  v5 = [*(a1 + 32) error];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)fadePuppetToWhite:(float)a3
{
  v5 = [(AVTView *)self environment];
  *&v4 = a3;
  [v5 setFadeFactor:v4];
}

- (BOOL)exportMovieToURL:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v88 = *MEMORY[0x1E69E9840];
  v8 = COERCE_DOUBLE(a3);
  v9 = a4;
  v10 = a5;
  [(AVTRecordView *)self stopRecording];
  v11 = [(AVTRecordView *)self world];

  if (v11)
  {
    exportingMovie = self->_exportingMovie;
    v13 = avt_default_log();
    v14 = v13;
    if (exportingMovie)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [AVTRecordView exportMovieToURL:options:completionHandler:];
      }

      v15 = 0;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v87 = v8;
        _os_log_impl(&dword_1BB472000, v14, OS_LOG_TYPE_DEFAULT, "[Record view] Video export: exporting movie to %@", buf, 0xCu);
      }

      self->_exportingMovie = 1;
      v16 = [MEMORY[0x1E696AE38] currentProgress];
      v64 = v8;
      if (v16)
      {
        v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
      }

      else
      {
        v14 = 0;
      }

      [v14 becomeCurrentWithPendingUnitCount:1];
      [(AVTRecordView *)self _updateTrackingState];
      [(AVTRecordView *)self fadePuppetToWhite:0.0];
      v17 = [(AVTRecordView *)self pointOfView];
      v18 = [v17 camera];
      [v17 position];
      v62 = v19;
      [v18 zFar];
      v21 = v20;
      [(AVTView *)self lockAvatar];
      [MEMORY[0x1E69DF378] lock];
      v22 = [(AVTView *)self avatar];
      v23 = [v22 copy];

      [v23 updateWithOptions:0];
      [(AVTRecordView *)self addRecordedAnimationToAvatar:v23];
      [(CAAnimationGroup *)self->_recordedAnimationGroup duration];
      v25 = v24;
      [MEMORY[0x1E69DF378] unlock];
      [(AVTView *)self unlockAvatar];
      v15 = v25 > 0.0166666667;
      if (v25 > 0.0166666667)
      {
        v26 = avt_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v25;
          *buf = 134217984;
          v87 = v27;
          _os_log_impl(&dword_1BB472000, v26, OS_LOG_TYPE_DEFAULT, "[Record view] Video export: scene duration %.3fs", buf, 0xCu);
        }

        v28 = [v9 objectForKeyedSubscript:@"size"];
        v63 = v18;
        v59 = v28;
        v60 = v10;
        if (v28)
        {
          [v28 CGSizeValue];
          v30 = v29;
          v32 = v31;
        }

        else
        {
          v32 = 0x4074000000000000;
          v30 = 0x4074000000000000;
        }

        v33 = [v9 mutableCopy];
        v34 = [v9 objectForKeyedSubscript:@"codec"];
        v35 = MEMORY[0x1E6987CB0];
        if (v34)
        {
          [v33 setObject:v34 forKeyedSubscript:*MEMORY[0x1E6987CB0]];
          [v33 removeObjectForKey:@"codec"];
        }

        v58 = v34;
        v36 = [v9 objectForKeyedSubscript:@"AVTMovieTransparentBackground"];
        v61 = [v36 BOOLValue];

        v37 = [v9 objectForKeyedSubscript:@"AVTMovieTransparentBackground"];

        if (v37)
        {
          [v33 removeObjectForKey:@"AVTMovieTransparentBackground"];
        }

        if (v61)
        {
          [v33 setObject:*MEMORY[0x1E6987CF8] forKeyedSubscript:*v35];
        }

        v38 = *MEMORY[0x1E6987D10];
        v39 = *MEMORY[0x1E6987DE8];
        v84[0] = *MEMORY[0x1E6987D08];
        v84[1] = v39;
        v40 = *MEMORY[0x1E6987DF8];
        v85[0] = v38;
        v85[1] = v40;
        v84[2] = *MEMORY[0x1E6987E10];
        v85[2] = *MEMORY[0x1E6987E18];
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:3];
        [v33 setObject:v41 forKeyedSubscript:*MEMORY[0x1E6987D20]];

        [v33 removeObjectForKey:@"AVTMovieGenerateAlphaMask-NoLongerImplemented"];
        [v33 removeObjectForKey:@"size"];
        v82 = *MEMORY[0x1E6987D40];
        v83 = &unk_1F39D9470;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        [v33 setObject:v42 forKeyedSubscript:*MEMORY[0x1E6987D30]];

        v80 = @"AVTRendererOptionInitiallyConfigureForARMode";
        v81 = MEMORY[0x1E695E110];
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v44 = [(VFXRenderer *)AVTRenderer rendererWithDevice:0 options:v43];

        LODWORD(v45) = 2.0;
        [v44 set_superSamplingFactor:v45];
        if (v61)
        {
          [MEMORY[0x1E69DC888] clearColor];
        }

        else
        {
          [MEMORY[0x1E69DC888] whiteColor];
        }
        v46 = ;
        [v44 setBackgroundColor:v46];

        [v44 setAvatar:v23];
        v47 = [v44 world];
        [v47 setStartTime:0.0];
        [v47 setEndTime:v25];
        [MEMORY[0x1E69DF378] begin];
        [MEMORY[0x1E69DF378] setAnimationDuration:0.5];
        [v17 setPosition:*&v62];
        [v63 zFar];
        *&v49 = v48 + 20.0;
        [v63 setZFar:v49];
        v50 = MEMORY[0x1E69DF378];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __60__AVTRecordView_exportMovieToURL_options_completionHandler___block_invoke;
        v65[3] = &unk_1E7F49E90;
        v67 = self;
        v68 = v14;
        v69 = v44;
        v77 = v30;
        v78 = v32;
        v70 = v33;
        v71 = v47;
        v72 = *&v64;
        v73 = v23;
        v76 = v60;
        v74 = v17;
        v66 = v62;
        v75 = v63;
        v79 = v21;
        v51 = v47;
        v52 = v33;
        v10 = v60;
        v53 = v52;
        v54 = v44;
        v55 = v50;
        v18 = v63;
        [v55 setCompletionBlock:v65];
        [MEMORY[0x1E69DF378] commit];
      }

      v8 = v64;
    }
  }

  else
  {
    v15 = 0;
  }

  v56 = *MEMORY[0x1E69E9840];
  return v15;
}

void __60__AVTRecordView_exportMovieToURL_options_completionHandler___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  [*(a1 + 48) setRendersContinuously:0];
  v2 = [*(a1 + 48) world];
  v3 = [v2 clock];
  [v3 setPaused:1];

  [*(a1 + 56) resignCurrent];
  [*(a1 + 56) becomeCurrentWithPendingUnitCount:99];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = [*(a1 + 48) _tmpVideoURL];
  v6 = [v5 path];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    [v9 removeItemAtPath:v6 error:0];
  }

  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v41 = 0;
  v12 = [v10 renderMovieToURL:v5 size:0 antialiasingMode:v11 attributes:&v41 error:{*(a1 + 128), *(a1 + 136)}];
  v13 = v41;
  if (v12)
  {
    v14 = CFAbsoluteTimeGetCurrent();
    v15 = avt_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v14 - Current;
      v17 = v16;
      v18 = v17;
      [*(a1 + 80) endTime];
      v20 = v19;
      [*(a1 + 80) endTime];
      *&v21 = v21 * 60.0 / v16;
      *buf = 134218496;
      v43 = v18;
      v44 = 2048;
      v45 = v20;
      v46 = 2048;
      v47 = *&v21;
      _os_log_impl(&dword_1BB472000, v15, OS_LOG_TYPE_DEFAULT, "[Record view] Video export: movie rendered in %.3fs for a length of %.3fs (%.3f frames rendered per second)", buf, 0x20u);
    }

    v22 = [*(a1 + 48) _tmpAudioURL];
    v23 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v22 options:0];
    v24 = *(a1 + 48);
    v25 = *(a1 + 88);
    v40 = v13;
    v26 = [v24 mergeAudio:v23 andVideoTo:v25 error:&v40];
    v27 = v40;

    if (v26)
    {
      v13 = v27;
    }

    else
    {
      v28 = avt_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __60__AVTRecordView_exportMovieToURL_options_completionHandler___block_invoke_cold_2();
      }

      sleep(1u);
      v29 = *(a1 + 48);
      v30 = *(a1 + 88);
      v39 = v27;
      v31 = [v29 mergeAudio:v23 andVideoTo:v30 error:&v39];
      v13 = v39;

      v32 = avt_default_log();
      v33 = v32;
      if (v31)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BB472000, v33, OS_LOG_TYPE_DEFAULT, "[Record view] Video export: audio merge succeeded after 2nd try", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __60__AVTRecordView_exportMovieToURL_options_completionHandler___block_invoke_cold_3();
      }
    }
  }

  else
  {
    v22 = avt_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __60__AVTRecordView_exportMovieToURL_options_completionHandler___block_invoke_cold_1();
    }
  }

  [*(a1 + 56) resignCurrent];
  [*(a1 + 96) willRemoveFromWorld:*(a1 + 80)];
  v34 = [*(a1 + 48) world];
  v35 = [v34 clock];
  [v35 setPaused:0];

  v36 = *(a1 + 120);
  if (v36)
  {
    (*(v36 + 16))(v36, v13);
  }

  *(*(a1 + 48) + 816) = 0;
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:0.75];
  [*(a1 + 104) setPosition:*(a1 + 32)];
  LODWORD(v37) = *(a1 + 144);
  [*(a1 + 112) setZFar:v37];
  [*(a1 + 48) _updateTrackingState];
  [MEMORY[0x1E69DF378] commit];

  v38 = *MEMORY[0x1E69E9840];
}

- (void)startRecordingAudio
{
  v33 = *MEMORY[0x1E69E9840];
  self->_recordedSampleCount = 0;
  v3 = [(AVTRecordView *)self _tmpAudioURL];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  [v4 removeItemAtURL:v3 error:0];

  self->_audioIsRecording = 0;
  v5 = *MEMORY[0x1E69874B8];
  v26 = v3;
  v27 = 0;
  v6 = [MEMORY[0x1E6987ED8] assetWriterWithURL:v3 fileType:v5 error:&v27];
  v7 = v27;
  audioWriter = self->_audioWriter;
  self->_audioWriter = v6;

  if (v7)
  {
    v9 = avt_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v7;
      _os_log_impl(&dword_1BB472000, v9, OS_LOG_TYPE_DEFAULT, "[Record view] Audio: failed to create AVAssetWriter with error %@", buf, 0xCu);
    }
  }

  v25 = v7;
  v30 = 0;
  v29 = 0;
  v32 = 0;
  v31 = 0;
  *buf = 6553601;
  v24 = MEMORY[0x1E695DF20];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:1633772320];
  v11 = *MEMORY[0x1E69582B0];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v13 = *MEMORY[0x1E6958300];
  LODWORD(v14) = 1194083328;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  v16 = *MEMORY[0x1E6958348];
  v17 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:32];
  v18 = *MEMORY[0x1E6958258];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:64000];
  v20 = [v24 dictionaryWithObjectsAndKeys:{v10, v11, v12, v13, v15, v16, v17, v18, v19, *MEMORY[0x1E6958280], 0}];

  v21 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:*MEMORY[0x1E69875A0] outputSettings:v20];
  [v21 setExpectsMediaDataInRealTime:1];
  if ([(AVAssetWriter *)self->_audioWriter canAddInput:v21])
  {
    [(AVAssetWriter *)self->_audioWriter addInput:v21];
    [(AVAssetWriter *)self->_audioWriter startWriting];
    [(NSLock *)self->_audioLock lock];
    objc_storeStrong(&self->_audioWriterInput, v21);
    [(NSLock *)self->_audioLock unlock];
  }

  else
  {
    v22 = avt_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView startRecordingAudio];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (opaqueCMSampleBuffer)createSilentAudioAtFrame:(int64_t)a3 nFrames:(int)a4 sampleRate:(double)a5 numChannels:(int)a6
{
  v10 = 2 * a6;
  destinationBuffer = 0;
  v11 = *MEMORY[0x1E695E480];
  v12 = 2 * a6 * a4;
  if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v12, 0, 0, 0, v12, 1u, &destinationBuffer))
  {
    v13 = avt_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView createSilentAudioAtFrame:nFrames:sampleRate:numChannels:];
    }

LABEL_10:

    return 0;
  }

  if (CMBlockBufferFillDataBytes(0, destinationBuffer, 0, v12))
  {
    v13 = avt_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView createSilentAudioAtFrame:nFrames:sampleRate:numChannels:];
    }

    goto LABEL_10;
  }

  asbd.mSampleRate = a5;
  *&asbd.mFormatID = 0x46C70636DLL;
  asbd.mBytesPerPacket = v10;
  asbd.mFramesPerPacket = 1;
  asbd.mBytesPerFrame = v10;
  asbd.mChannelsPerFrame = a6;
  *&asbd.mBitsPerChannel = 16;
  formatDescriptionOut = 0;
  if (CMAudioFormatDescriptionCreate(v11, &asbd, 0, 0, 0, 0, 0, &formatDescriptionOut))
  {
    v13 = avt_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView createSilentAudioAtFrame:nFrames:sampleRate:numChannels:];
    }

    goto LABEL_10;
  }

  sampleBufferOut = 0;
  v15 = destinationBuffer;
  v16 = formatDescriptionOut;
  CMTimeMake(&presentationTimeStamp, a3, 1);
  v17 = CMAudioSampleBufferCreateReadyWithPacketDescriptions(v11, v15, v16, a4, &presentationTimeStamp, 0, &sampleBufferOut);
  CFRelease(destinationBuffer);
  if (v17)
  {
    v18 = avt_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView createSilentAudioAtFrame:nFrames:sampleRate:numChannels:];
    }

    return 0;
  }

  return sampleBufferOut;
}

- (void)stopRecordingAudio
{
  if (self->_audioWriter)
  {
    [(NSLock *)self->_audioLock lock];
    epoch = self->_currentAudioTime.epoch;
    *&self->_stopAudioTime.value = *&self->_currentAudioTime.value;
    self->_stopAudioTime.epoch = epoch;
    audioLock = self->_audioLock;

    [(NSLock *)audioLock unlock];
  }
}

- (void)finalizeAudioFile
{
  v28 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_audioLock lock];
  [(AVTRecordView *)self finalVideoDuration];
  v3 = self->_recordedSampleCount / 44100.0;
  v5 = fmax(v4 - v3, 0.0) + 0.0166666667;
  v6 = avt_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3 + v5;
    recordedSampleCount = self->_recordedSampleCount;
    *buf = 134219008;
    v9 = v3;
    v19 = v7;
    v20 = 2048;
    v21 = v9;
    v22 = 1024;
    v23 = recordedSampleCount;
    v24 = 1024;
    v25 = 44100;
    v26 = 1024;
    v27 = (v5 * 44100.0);
    _os_log_impl(&dword_1BB472000, v6, OS_LOG_TYPE_DEFAULT, "[Record view] Final audio duration: %.3fs (exact duration: %.3fs for %d samples at %dHz ; %d generated silent samples)", buf, 0x28u);
  }

  if (v5 > 0.0 && self->_audioIsRecording)
  {
    v10 = [(AVTRecordView *)self createSilentAudioAtFrame:self->_recordedSampleCount nFrames:(v5 * 44100.0) sampleRate:1 numChannels:44100.0];
    if (v10)
    {
      v11 = v10;
      [(AVAssetWriterInput *)self->_audioWriterInput appendSampleBuffer:v10];
      CFRelease(v11);
    }
  }

  audioWriterInput = self->_audioWriterInput;
  self->_audioWriterInput = 0;

  audioWriter = self->_audioWriter;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __34__AVTRecordView_finalizeAudioFile__block_invoke;
  v17[3] = &unk_1E7F47F90;
  v17[4] = self;
  [(AVAssetWriter *)audioWriter finishWritingWithCompletionHandler:v17];
  [(NSLock *)self->_audioLock lock];
  [(NSLock *)self->_audioLock unlock];
  v14 = self->_audioWriter;
  self->_audioWriter = 0;

  [(AVCaptureMovieFileOutput *)self->_movieFileOutput stopRecording];
  movieFileOutput = self->_movieFileOutput;
  self->_movieFileOutput = 0;

  v16 = *MEMORY[0x1E69E9840];
}

void __34__AVTRecordView_finalizeAudioFile__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 912);
  if ([v2 status] == 2 && (objc_msgSend(v2, "error"), v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = avt_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_1BB472000, v4, OS_LOG_TYPE_DEFAULT, "[Record view] Audio writing did finish", v8, 2u);
    }
  }

  else
  {
    v4 = avt_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(*(a1 + 32) + 912) status];
      v6 = [*(*(a1 + 32) + 912) error];
      v8[0] = 67109378;
      v8[1] = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1BB472000, v4, OS_LOG_TYPE_DEFAULT, "[Record view] Audio writing did finish with status:%d, error:%@", v8, 0x12u);
    }
  }

  [*(*(a1 + 32) + 920) unlock];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)cancelRecordingAudio
{
  [(AVCaptureMovieFileOutput *)self->_movieFileOutput stopRecording];
  movieFileOutput = self->_movieFileOutput;
  self->_movieFileOutput = 0;
}

- (void)updateAudioState
{
  if (self->_playing)
  {
    [(AVTRecordView *)self startPlayingAudio];
  }
}

- (void)setMute:(BOOL)a3
{
  if (self->_mute != a3)
  {
    self->_mute = a3;
    [(AVTRecordView *)self updateMuteState];
  }
}

- (void)audioPlayerItemDidReachEnd:(id)a3
{
  v4 = [(AVTRecordView *)self recordDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVTRecordView *)self recordDelegate];
    [v6 recordView:self previewDidChangeStatus:2];
  }
}

- (void)startPlayingAudio
{
  if (!self->_audioPlayer)
  {
    v10 = [(AVTRecordView *)self _tmpAudioURL];
    v3 = [objc_alloc(MEMORY[0x1E69880B0]) initWithURL:v10];
    v4 = [MEMORY[0x1E6988098] playerWithPlayerItem:v3];
    audioPlayer = self->_audioPlayer;
    self->_audioPlayer = v4;

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E6987A10];
    v8 = [(AVPlayer *)self->_audioPlayer currentItem];
    [v6 addObserver:self selector:sel_audioPlayerItemDidReachEnd_ name:v7 object:v8];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:self selector:sel_audioSessionDidInterrupt_ name:*MEMORY[0x1E69580D8] object:0];

    [(AVTRecordView *)self updateMuteState];
    [(AVPlayer *)self->_audioPlayer play];
  }
}

- (void)audioSessionDidInterrupt:(id)a3
{
  if (self->_playing)
  {
    v19 = v3;
    v20 = v4;
    v6 = [a3 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E6958100]];
    v8 = [v7 unsignedLongValue];
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_13;
      }

      v9 = avt_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB472000, v9, OS_LOG_TYPE_DEFAULT, "[Record view] Audio session was interrupted", buf, 2u);
      }

      v10 = [(AVTRecordView *)self recordDelegate];
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        goto LABEL_13;
      }

      v12 = [(AVTRecordView *)self recordDelegate];
      v13 = [MEMORY[0x1E6958460] sharedInstance];
      [v12 recordView:self audioSessionWasInterrupted:v13];
    }

    else
    {
      v14 = avt_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1BB472000, v14, OS_LOG_TYPE_DEFAULT, "[Record view] Audio session interruption ended", v17, 2u);
      }

      [(AVPlayer *)self->_audioPlayer play];
      v15 = [(AVTRecordView *)self recordDelegate];
      v16 = objc_opt_respondsToSelector();

      if ((v16 & 1) == 0)
      {
        goto LABEL_13;
      }

      v12 = [(AVTRecordView *)self recordDelegate];
      v13 = [MEMORY[0x1E6958460] sharedInstance];
      [v12 recordView:self audioSessionInterruptionEnded:v13];
    }

LABEL_13:
  }
}

- (void)stopPlayingAudio
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E6987A10];
  v5 = [(AVPlayer *)self->_audioPlayer currentItem];
  [v3 removeObserver:self name:v4 object:v5];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x1E69580D8] object:0];

  [(AVPlayer *)self->_audioPlayer pause];
  audioPlayer = self->_audioPlayer;
  self->_audioPlayer = 0;
}

- (double)currentAudioTime
{
  audioPlayer = self->_audioPlayer;
  if (audioPlayer)
  {
    [(AVPlayer *)audioPlayer currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (void)_drawAtTime:(double)a3
{
  if (!self->_checkDrawableAvailable)
  {
    goto LABEL_4;
  }

  v5 = self->_backingLayer;
  if (([(CALayer *)v5 isDrawableAvailable]& 1) != 0)
  {

LABEL_4:
    v6.receiver = self;
    v6.super_class = AVTRecordView;
    [(AVTView *)&v6 _drawAtTime:a3];
    return;
  }

  if (self->_doubleBuffer)
  {
    [(AVTRecordView *)self drawableNotAvailableForTime:a3];
  }
}

- (void)drawableNotAvailableForTime:(double)a3
{
  droppedDoubleBufferFrames = self->_droppedDoubleBufferFrames;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [(NSMutableArray *)droppedDoubleBufferFrames addObject:v6];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if ([(AVTRecordView *)self preferredFramesPerSecond]< 1)
  {
    v7 = 60;
  }

  else
  {
    v7 = [(AVTRecordView *)self preferredFramesPerSecond];
  }

  v8 = 1.0 / v7;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v9 = self->_droppedDoubleBufferFrames;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__AVTRecordView_drawableNotAvailableForTime___block_invoke;
  v12[3] = &unk_1E7F49EB8;
  v12[4] = &v18;
  v12[5] = v13;
  *&v12[7] = a3 + v8 * -12.0;
  *&v12[8] = v8;
  v12[6] = &v14;
  [(NSMutableArray *)v9 enumerateObjectsUsingBlock:v12];
  [(NSMutableArray *)self->_droppedDoubleBufferFrames removeObjectsInRange:0, v19[3]];
  if (v15[3] >= 5 && [(CALayer *)self->_backingLayer isMemberOfClass:objc_opt_class()])
  {
    v10 = avt_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BB472000, v10, OS_LOG_TYPE_DEFAULT, "[Record view] *****drawableNotAvailableForTime: SWITCHING TO TRIPLE BUFFERING", v11, 2u);
    }

    self->_doubleBuffer = 0;
    [(CALayer *)self->_backingLayer setMaximumDrawableCount:3];
  }

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

uint64_t __45__AVTRecordView_drawableNotAvailableForTime___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 doubleValue];
  if (v6 >= *(a1 + 56))
  {
    if (*(*(*(a1 + 40) + 8) + 24) + *(a1 + 64) * 1.5 < v6)
    {
      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  return result;
}

- (AVTRecordViewDelegate)recordDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recordDelegate);

  return WeakRetained;
}

- (void)mergeAudio:andVideoTo:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  [0 statusOfValueForKey:@"tracks" error:0];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)mergeAudio:(void *)a1 andVideoTo:error:.cold.3(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 statusOfValueForKey:@"tracks" error:0];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mergeAudio:(uint64_t)a1 andVideoTo:(void *)a2 error:.cold.4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  [a2 statusOfValueForKey:@"tracks" error:0];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

void __45__AVTRecordView_mergeAudio_andVideoTo_error___block_invoke_cold_1(id *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*a1 status];
  v8 = [*a1 error];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x1E69E9840];
}

void __60__AVTRecordView_exportMovieToURL_options_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __60__AVTRecordView_exportMovieToURL_options_completionHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __60__AVTRecordView_exportMovieToURL_options_completionHandler___block_invoke_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createSilentAudioAtFrame:nFrames:sampleRate:numChannels:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createSilentAudioAtFrame:nFrames:sampleRate:numChannels:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createSilentAudioAtFrame:nFrames:sampleRate:numChannels:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createSilentAudioAtFrame:nFrames:sampleRate:numChannels:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end