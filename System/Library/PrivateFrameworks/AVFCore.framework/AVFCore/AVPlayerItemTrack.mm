@interface AVPlayerItemTrack
+ (AVPlayerItemTrack)playerItemTrackWithFigPlaybackItem:(OpaqueFigPlaybackItem *)item readyForInspection:(BOOL)inspection trackID:(int)d asset:(id)asset playerItem:(id)playerItem;
- (AVAssetTrack)assetTrack;
- (BOOL)_figPlaybackItemIsReadyForInspection;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)willTrimShortDurationAudioSamples;
- (NSArray)outputs;
- (float)currentVideoFrameRate;
- (id)_initWithFigPlaybackItem:(OpaqueFigPlaybackItem *)item readyForInspection:(BOOL)inspection trackID:(int)d asset:(id)asset playerItem:(id)playerItem;
- (id)description;
- (id)effectiveLoudnessInfo;
- (id)fallbackTrack;
- (int)effectiveEQPreset;
- (unint64_t)hash;
- (void)_attachToFigPlaybackItemOfPlayerItem:(id)item;
- (void)_respondToFigPlaybackItemBecomingReadyForInpection;
- (void)_transferActiveHapticChannelIndexToFig;
- (void)_transferDisableColorMatchingToFig;
- (void)_transferEnabledToFig;
- (void)_transferHapticVolumeToFig;
- (void)_transferLoudnessInfoToFig;
- (void)_transferMutesHapticsToFig;
- (void)_transferVideoEnhancementOptionsToFig;
- (void)_updateTrackExtractionIDArrayProperty;
- (void)addOutput:(id)output;
- (void)dealloc;
- (void)removeOutput:(id)output;
- (void)setActiveHapticChannelIndex:(int64_t)index;
- (void)setDisableColorMatching:(BOOL)matching;
- (void)setEnabled:(BOOL)enabled;
- (void)setHapticVolume:(float)volume;
- (void)setLoudnessInfo:(id)info;
- (void)setMutesHaptics:(BOOL)haptics;
- (void)setVideoEnhancementFilterOptions:(id)options;
@end

@implementation AVPlayerItemTrack

+ (AVPlayerItemTrack)playerItemTrackWithFigPlaybackItem:(OpaqueFigPlaybackItem *)item readyForInspection:(BOOL)inspection trackID:(int)d asset:(id)asset playerItem:(id)playerItem
{
  v7 = [[AVPlayerItemTrack alloc] _initWithFigPlaybackItem:item readyForInspection:inspection trackID:*&d asset:asset playerItem:playerItem];

  return v7;
}

- (id)_initWithFigPlaybackItem:(OpaqueFigPlaybackItem *)item readyForInspection:(BOOL)inspection trackID:(int)d asset:(id)asset playerItem:(id)playerItem
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  v17.receiver = self;
  v17.super_class = AVPlayerItemTrack;
  v12 = [(AVPlayerItemTrack *)&v17 init];
  if (v12)
  {
    v13 = objc_alloc_init(AVPlayerItemTrackInternal);
    v12->_playerItemTrack = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

    CFRetain(v13);
    v12->_playerItemTrack->weakReferenceToPlayerItem = [playerItem _weakReference];
    v14 = item ? CFRetain(item) : 0;
    v12->_playerItemTrack->figPlaybackItem = v14;
    v12->_playerItemTrack->figPlaybackItemIsReadyForInspection = inspection;
    v12->_playerItemTrack->asset = asset;
    v12->_playerItemTrack->trackID = d;
    v12->_playerItemTrack->disableColorMatching = 0;
    v12->_playerItemTrack->disableColorMatchingWasSet = 0;
    v12->_playerItemTrack->activeHapticChannelIndex = 1;
    v12->_playerItemTrack->activeHapticChannelIndexWasSet = 0;
    v12->_playerItemTrack->sampleBufferOutputs = 0;
    v12->_playerItemTrack->hapticVolume = 1.0;
    v12->_playerItemTrack->hapticVolumeWasSet = 0;
    v12->_playerItemTrack->mutesHaptics = 0;
    v12->_playerItemTrack->mutesHapticsWasSet = 0;
    v12->_playerItemTrack->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avplayeritemtrack.ivars");
    +[AVPlayer playbackObjectCreated];
    if (+[AVPlayer isObservationEnabled])
    {
      v12->_playerItemTrack->observationRegistrar = objc_alloc_init(AVPlayerItemTrackObservationRegistrar);
    }

    if (!d)
    {
LABEL_9:

      return 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  playerItemTrack = self->_playerItemTrack;
  if (playerItemTrack)
  {
    figPlaybackItem = playerItemTrack->figPlaybackItem;
    if (figPlaybackItem)
    {
      CFRelease(figPlaybackItem);
      playerItemTrack = self->_playerItemTrack;
    }

    v5 = self->_playerItemTrack;
    if (v5[14])
    {
      dispatch_release(v5[14]);
      v5 = self->_playerItemTrack;
    }

    CFRelease(v5);
  }

  v6.receiver = self;
  v6.super_class = AVPlayerItemTrack;
  [(AVPlayerItemTrack *)&v6 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, assetTrack = %@>", NSStringFromClass(v4), self, -[AVPlayerItemTrack assetTrack](self, "assetTrack")];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  result = 0;
  if (objc_opt_isKindOfClass())
  {
    trackID = [(AVPlayerItemTrack *)self trackID];
    if (trackID == [equal trackID])
    {
      weakReferenceToPlayerItem = self->_playerItemTrack->weakReferenceToPlayerItem;
      if (weakReferenceToPlayerItem == [equal _weakReferenceToPlayerItem])
      {
        return 1;
      }
    }
  }

  return result;
}

- (unint64_t)hash
{
  playerItemTrack = self->_playerItemTrack;
  trackID = playerItemTrack->trackID;
  return [(AVWeakReference *)playerItemTrack->weakReferenceToPlayerItem hash]^ trackID;
}

- (AVAssetTrack)assetTrack
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:15];
  AVTelemetryGenerateID();
  v3 = [(AVAsset *)self->_playerItemTrack->asset trackWithTrackID:self->_playerItemTrack->trackID];
  AVTelemetryIntervalEnd(&v5);
  return v3;
}

- (BOOL)isEnabled
{
  v29 = [[AVTelemetryInterval alloc] initAndStartWith:184];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  [(AVPlayerItemTrackObservationRegistrar *)self->_playerItemTrack->observationRegistrar accessWithKey:@"isEnabled" on:self];
  ivarAccessQueue = self->_playerItemTrack->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AVPlayerItemTrack_isEnabled__block_invoke;
  block[3] = &unk_1E7463108;
  block[4] = self;
  block[5] = &v25;
  block[6] = &v21;
  block[7] = &v17;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  if ((v22[3] & 1) == 0 && *(v18 + 24) == 1)
  {
    cf = 0;
    playerItemTrack = self->_playerItemTrack;
    figPlaybackItem = playerItemTrack->figPlaybackItem;
    trackID = playerItemTrack->trackID;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v7)
    {
      v8 = v7(figPlaybackItem, trackID, *MEMORY[0x1E6972D20], *MEMORY[0x1E695E480], &cf);
      v9 = cf;
      if (!v8)
      {
        if (!cf)
        {
          goto LABEL_9;
        }

        bOOLValue = [cf BOOLValue];
        *(v26 + 24) = bOOLValue;
        v11 = self->_playerItemTrack->ivarAccessQueue;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __30__AVPlayerItemTrack_isEnabled__block_invoke_2;
        v14[3] = &unk_1E7460EE0;
        v14[4] = self;
        v14[5] = &v25;
        av_readwrite_dispatch_queue_write(v11, v14);
        v9 = cf;
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

LABEL_9:
  v12 = *(v26 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  AVTelemetryIntervalEnd(&v29);
  return v12;
}

void *__30__AVPlayerItemTrack_isEnabled__block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(*(result[4] + 8) + 72);
  *(*(result[6] + 8) + 24) = *(*(result[4] + 8) + 73);
  v1 = *(result[4] + 8);
  if (*(v1 + 16))
  {
    if (*(v1 + 24) == 1)
    {
      *(*(result[7] + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t __30__AVPlayerItemTrack_isEnabled__block_invoke_2(uint64_t result)
{
  *(*(*(result + 32) + 8) + 72) = *(*(*(result + 40) + 8) + 24);
  *(*(*(result + 32) + 8) + 73) = 1;
  return result;
}

- (void)setEnabled:(BOOL)enabled
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:185];
  [(AVPlayerItemTrackObservationRegistrar *)self->_playerItemTrack->observationRegistrar willChangeValueFor:@"isEnabled" on:self];
  ivarAccessQueue = self->_playerItemTrack->ivarAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__AVPlayerItemTrack_setEnabled___block_invoke;
  v9[3] = &unk_1E7460E40;
  v9[4] = self;
  v10 = enabled;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
  v6 = [-[AVPlayerItemTrack _playerItem](self "_playerItem")];
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__AVPlayerItemTrack_setEnabled___block_invoke_2;
    v8[3] = &unk_1E7460C00;
    v8[4] = self;
    AVSerializeOnQueueAsyncIfNecessary(v6, v8);
    dispatch_release(v7);
  }

  [(AVPlayerItemTrackObservationRegistrar *)self->_playerItemTrack->observationRegistrar didChangeValueFor:@"isEnabled" on:self];
  AVTelemetryIntervalEnd(&v11);
}

uint64_t __32__AVPlayerItemTrack_setEnabled___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 72) = *(result + 40);
  *(*(*(result + 32) + 8) + 73) = 1;
  return result;
}

- (id)fallbackTrack
{
  v3 = [-[AVAssetTrack _fallbackTrack](-[AVPlayerItemTrack assetTrack](self "assetTrack")];
  _playerItem = [(AVPlayerItemTrack *)self _playerItem];

  return [_playerItem _trackWithTrackID:v3];
}

- (float)currentVideoFrameRate
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = [[AVTelemetryInterval alloc] initAndStartWith:186];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  ivarAccessQueue = self->_playerItemTrack->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVPlayerItemTrack_currentVideoFrameRate__block_invoke;
  block[3] = &unk_1E7460EE0;
  block[4] = self;
  block[5] = &v23;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = 0.0;
  if (*(v24 + 24) != 1)
  {
    goto LABEL_18;
  }

  cf = 0;
  playerItemTrack = self->_playerItemTrack;
  figPlaybackItem = playerItemTrack->figPlaybackItem;
  trackID = playerItemTrack->trackID;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v8)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = v8(figPlaybackItem, trackID, *MEMORY[0x1E6972D00], *MEMORY[0x1E695E480], &cf);
    v11 = cf;
    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = cf == 0;
    }

    if (v12)
    {
      goto LABEL_16;
    }

    TypeID = CFNumberGetTypeID();
    if (TypeID != CFGetTypeID(cf))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      Mutable = CFStringCreateMutable(v9, 0);
      v16 = FigCFCopyCompactDescription();
      CFStringAppendFormat(Mutable, 0, @"<rdar://100445728> CurrentVideoFrameRate type is not CFNumberRef, value = {%@}\n", v16);
      if (v16)
      {
        CFRelease(v16);
      }

      v28 = 0;
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      v18 = "<rdar://100445728> failed to get content of CurrentVideoFrameRate";
      if (CStringPtrAndBufferToFree)
      {
        v18 = CStringPtrAndBufferToFree;
      }

      qword_1EAEFCC78 = v18;
      free(v28);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    [cf floatValue];
    v4 = v19;
  }

  v11 = cf;
LABEL_16:
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_18:
  _Block_object_dispose(&v23, 8);
  AVTelemetryIntervalEnd(&v27);
  return v4;
}

uint64_t __42__AVPlayerItemTrack_currentVideoFrameRate__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 16))
  {
    if (*(v1 + 24) == 1)
    {
      *(*(*(result + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

- (id)effectiveLoudnessInfo
{
  if (!self->_playerItemTrack->figPlaybackItem || ![(AVPlayerItemTrack *)self _figPlaybackItemIsReadyForInspection])
  {
    return 0;
  }

  v9 = 0;
  playerItemTrack = self->_playerItemTrack;
  figPlaybackItem = playerItemTrack->figPlaybackItem;
  trackID = playerItemTrack->trackID;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v6)
  {
    v6(figPlaybackItem, trackID, *MEMORY[0x1E6972D18], *MEMORY[0x1E695E480], &v9);
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_transferLoudnessInfoToFig
{
  playerItemTrack = self->_playerItemTrack;
  figPlaybackItem = playerItemTrack->figPlaybackItem;
  if (figPlaybackItem)
  {
    trackID = playerItemTrack->trackID;
    loudnessInfo = playerItemTrack->loudnessInfo;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v6)
    {
      v7 = *MEMORY[0x1E6972D48];

      v6(figPlaybackItem, trackID, v7, loudnessInfo);
    }
  }
}

- (void)setLoudnessInfo:(id)info
{
  loudnessInfo = self->_playerItemTrack->loudnessInfo;
  if (loudnessInfo != info)
  {

    self->_playerItemTrack->loudnessInfo = [info copy];

    [(AVPlayerItemTrack *)self _transferLoudnessInfoToFig];
  }
}

- (int)effectiveEQPreset
{
  if (!self->_playerItemTrack->figPlaybackItem)
  {
    return -1;
  }

  if (![(AVPlayerItemTrack *)self _figPlaybackItemIsReadyForInspection])
  {
    return -1;
  }

  cf = 0;
  playerItemTrack = self->_playerItemTrack;
  figPlaybackItem = playerItemTrack->figPlaybackItem;
  trackID = playerItemTrack->trackID;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6 || v6(figPlaybackItem, trackID, *MEMORY[0x1E6972D10], *MEMORY[0x1E695E480], &cf))
  {
    return -1;
  }

  intValue = [cf intValue];
  if (cf)
  {
    CFRelease(cf);
  }

  return intValue;
}

- (BOOL)willTrimShortDurationAudioSamples
{
  if (!self->_playerItemTrack->figPlaybackItem)
  {
    return 1;
  }

  if (![(AVPlayerItemTrack *)self _figPlaybackItemIsReadyForInspection])
  {
    return 1;
  }

  BOOLean = 0;
  playerItemTrack = self->_playerItemTrack;
  figPlaybackItem = playerItemTrack->figPlaybackItem;
  trackID = playerItemTrack->trackID;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6 || v6(figPlaybackItem, trackID, *MEMORY[0x1E6972D78], *MEMORY[0x1E695E480], &BOOLean))
  {
    return 1;
  }

  v7 = CFBooleanGetValue(BOOLean) != 0;
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v7;
}

- (void)_transferVideoEnhancementOptionsToFig
{
  playerItemTrack = self->_playerItemTrack;
  figPlaybackItem = playerItemTrack->figPlaybackItem;
  if (figPlaybackItem)
  {
    trackID = playerItemTrack->trackID;
    videoEnhancementFilterOptions = playerItemTrack->videoEnhancementFilterOptions;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v6)
    {

      v6(figPlaybackItem, trackID, @"VideoEnhancementFilterOptions", videoEnhancementFilterOptions);
    }
  }
}

- (void)setVideoEnhancementFilterOptions:(id)options
{
  videoEnhancementFilterOptions = self->_playerItemTrack->videoEnhancementFilterOptions;
  if (videoEnhancementFilterOptions != options)
  {

    self->_playerItemTrack->videoEnhancementFilterOptions = [options copy];

    [(AVPlayerItemTrack *)self _transferVideoEnhancementOptionsToFig];
  }
}

- (void)_transferDisableColorMatchingToFig
{
  playerItemTrack = self->_playerItemTrack;
  figPlaybackItem = playerItemTrack->figPlaybackItem;
  if (figPlaybackItem && playerItemTrack->disableColorMatchingWasSet)
  {
    trackID = playerItemTrack->trackID;
    v5 = (playerItemTrack->disableColorMatching ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v6)
    {
      v7 = *v5;

      v6(figPlaybackItem, trackID, @"DisableColorMatching", v7);
    }
  }
}

- (void)setDisableColorMatching:(BOOL)matching
{
  self->_playerItemTrack->disableColorMatching = matching;
  self->_playerItemTrack->disableColorMatchingWasSet = 1;
  [(AVPlayerItemTrack *)self _transferDisableColorMatchingToFig];
}

- (void)setActiveHapticChannelIndex:(int64_t)index
{
  self->_playerItemTrack->activeHapticChannelIndex = index;
  self->_playerItemTrack->activeHapticChannelIndexWasSet = 1;
  [(AVPlayerItemTrack *)self _transferActiveHapticChannelIndexToFig];
}

- (void)_transferActiveHapticChannelIndexToFig
{
  playerItemTrack = self->_playerItemTrack;
  figPlaybackItem = playerItemTrack->figPlaybackItem;
  if (figPlaybackItem)
  {
    if (playerItemTrack->activeHapticChannelIndexWasSet)
    {
      trackID = playerItemTrack->trackID;
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:playerItemTrack->activeHapticChannelIndex];
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v6)
      {

        v6(figPlaybackItem, trackID, @"ActiveHapticChannelIndex", v5);
      }
    }
  }
}

- (void)setHapticVolume:(float)volume
{
  self->_playerItemTrack->hapticVolume = volume;
  self->_playerItemTrack->hapticVolumeWasSet = 1;
  [(AVPlayerItemTrack *)self _transferHapticVolumeToFig];
}

- (void)setMutesHaptics:(BOOL)haptics
{
  self->_playerItemTrack->mutesHaptics = haptics;
  self->_playerItemTrack->mutesHapticsWasSet = 1;
  [(AVPlayerItemTrack *)self _transferMutesHapticsToFig];
}

- (void)_transferHapticVolumeToFig
{
  playerItemTrack = self->_playerItemTrack;
  figPlaybackItem = playerItemTrack->figPlaybackItem;
  if (figPlaybackItem)
  {
    if (playerItemTrack->hapticVolumeWasSet)
    {
      trackID = playerItemTrack->trackID;
      *&v2 = playerItemTrack->hapticVolume;
      v6 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v7)
      {

        v7(figPlaybackItem, trackID, @"Volume", v6);
      }
    }
  }
}

- (void)_transferMutesHapticsToFig
{
  playerItemTrack = self->_playerItemTrack;
  figPlaybackItem = playerItemTrack->figPlaybackItem;
  if (figPlaybackItem && playerItemTrack->mutesHapticsWasSet)
  {
    trackID = playerItemTrack->trackID;
    v5 = (playerItemTrack->mutesHaptics ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v6)
    {
      v7 = *v5;

      v6(figPlaybackItem, trackID, @"Muted", v7);
    }
  }
}

- (void)_updateTrackExtractionIDArrayProperty
{
  v19 = *MEMORY[0x1E69E9840];
  playerItemTrack = self->_playerItemTrack;
  if (playerItemTrack->figPlaybackItem && playerItemTrack->sampleBufferOutputs)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    sampleBufferOutputs = self->_playerItemTrack->sampleBufferOutputs;
    v6 = [(NSMutableArray *)sampleBufferOutputs countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(sampleBufferOutputs);
          }

          [v4 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(*(*(&v14 + 1) + 8 * i), "_extractionID"))}];
        }

        v7 = [(NSMutableArray *)sampleBufferOutputs countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v10 = self->_playerItemTrack;
    figPlaybackItem = v10->figPlaybackItem;
    trackID = v10->trackID;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v13)
    {
      v13(figPlaybackItem, trackID, *MEMORY[0x1E6972D30], v4);
    }
  }
}

- (void)_attachToFigPlaybackItemOfPlayerItem:(id)item
{
  v5 = [-[AVPlayerItemTrack _playerItem](self "_playerItem")];
  if (v5)
  {
    dispatch_release(v5);
  }

  if (!self->_playerItemTrack->figPlaybackItem)
  {
    self->_playerItemTrack->figPlaybackItem = [item _copyFigPlaybackItem];
    playerItemTrack = self->_playerItemTrack;
    if (playerItemTrack->enabledWasSet)
    {
      [(AVPlayerItemTrack *)self _transferEnabledToFig];
      playerItemTrack = self->_playerItemTrack;
    }

    if (playerItemTrack->loudnessInfo)
    {
      [(AVPlayerItemTrack *)self _transferLoudnessInfoToFig];
      playerItemTrack = self->_playerItemTrack;
    }

    if (playerItemTrack->videoEnhancementFilterOptions)
    {
      [(AVPlayerItemTrack *)self _transferVideoEnhancementOptionsToFig];
      playerItemTrack = self->_playerItemTrack;
    }

    if (playerItemTrack->disableColorMatchingWasSet)
    {
      [(AVPlayerItemTrack *)self _transferDisableColorMatchingToFig];
      playerItemTrack = self->_playerItemTrack;
    }

    if (playerItemTrack->activeHapticChannelIndexWasSet)
    {
      [(AVPlayerItemTrack *)self _transferActiveHapticChannelIndexToFig];
      playerItemTrack = self->_playerItemTrack;
    }

    if (playerItemTrack->hapticVolumeWasSet)
    {
      [(AVPlayerItemTrack *)self _transferHapticVolumeToFig];
      playerItemTrack = self->_playerItemTrack;
    }

    if (playerItemTrack->mutesHapticsWasSet)
    {
      [(AVPlayerItemTrack *)self _transferMutesHapticsToFig];
    }

    [(AVPlayerItemTrack *)self _updateTrackExtractionIDArrayProperty];
  }
}

- (BOOL)_figPlaybackItemIsReadyForInspection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItemTrack->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__AVPlayerItemTrack__figPlaybackItemIsReadyForInspection__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_respondToFigPlaybackItemBecomingReadyForInpection
{
  ivarAccessQueue = self->_playerItemTrack->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__AVPlayerItemTrack__respondToFigPlaybackItemBecomingReadyForInpection__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (void)addOutput:(id)output
{
  v23[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot add any AVPlayerItemOutput other than AVPlayerItemSampleBufferOutput to AVPlayerItemTrack", v6, v7, v8, v9, v10, v21), 0}];
    objc_exception_throw(v20);
  }

  sampleBufferOutputs = self->_playerItemTrack->sampleBufferOutputs;
  if (!sampleBufferOutputs)
  {
    self->_playerItemTrack->sampleBufferOutputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    sampleBufferOutputs = self->_playerItemTrack->sampleBufferOutputs;
  }

  if (([(NSMutableArray *)sampleBufferOutputs containsObject:output]& 1) == 0)
  {
    [(NSMutableArray *)self->_playerItemTrack->sampleBufferOutputs addObject:output];
    [output _setTrackID:self->_playerItemTrack->trackID];
    v12 = FigAtomicAdd32();
    [output _setExtractionID:v12];
    [output _attachToPlayerItemTrack:self figPlaybackItem:self->_playerItemTrack->figPlaybackItem];
    [output _advanceInterval];
    if (v13 > 0.0)
    {
      v22 = [MEMORY[0x1E696AD98] numberWithInt:v12];
      v14 = MEMORY[0x1E696AD98];
      [output _advanceInterval];
      v23[0] = [v14 numberWithDouble:?];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      playerItemTrack = self->_playerItemTrack;
      figPlaybackItem = playerItemTrack->figPlaybackItem;
      trackID = playerItemTrack->trackID;
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v19)
      {
        v19(figPlaybackItem, trackID, *MEMORY[0x1E6972D38], v15);
      }
    }

    [(AVPlayerItemTrack *)self _updateTrackExtractionIDArrayProperty];
    [output _setTimebase:{objc_msgSend(-[AVPlayerItemTrack _playerItem](self, "_playerItem"), "unfoldedTimebase")}];
  }
}

- (void)removeOutput:(id)output
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot remove any AVPlayerItemOutput other than AVPlayerItemSampleBufferOutput from AVPlayerItemTrack", v6, v7, v8, v9, v10, v12), 0}];
    objc_exception_throw(v11);
  }

  if ([(NSMutableArray *)self->_playerItemTrack->sampleBufferOutputs containsObject:output])
  {
    [(NSMutableArray *)self->_playerItemTrack->sampleBufferOutputs removeObject:output];
    [output _detachFromPlayerItemTrack];
    [output _setTimebase:0];

    [(AVPlayerItemTrack *)self _updateTrackExtractionIDArrayProperty];
  }
}

- (NSArray)outputs
{
  sampleBufferOutputs = self->_playerItemTrack->sampleBufferOutputs;
  if (sampleBufferOutputs)
  {
    v4 = [(NSMutableArray *)sampleBufferOutputs copy];

    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E695DEC8];

    return [v6 array];
  }
}

- (void)_transferEnabledToFig
{
  v3 = [-[AVPlayerItemTrack _playerItem](self "_playerItem")];
  if (v3)
  {
    v4 = v3;
    playerItemTrack = self->_playerItemTrack;
    figPlaybackItem = playerItemTrack->figPlaybackItem;
    if (figPlaybackItem)
    {
      trackID = playerItemTrack->trackID;
      v8 = ([(AVPlayerItemTrack *)self isEnabled]? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v9)
      {
        v9(figPlaybackItem, trackID, *MEMORY[0x1E6972D20], *v8);
      }
    }

    dispatch_release(v4);
  }
}

@end