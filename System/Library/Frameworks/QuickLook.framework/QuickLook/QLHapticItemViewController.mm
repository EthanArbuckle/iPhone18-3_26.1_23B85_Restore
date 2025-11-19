@interface QLHapticItemViewController
- (BOOL)canPlayHaptics;
- (BOOL)play;
- (id)filterPatternDictionary:(id)a3;
- (id)makeAVAssetFromAHAP:(id)a3 error:(id *)a4;
- (id)playbackObserverBlock;
- (id)player;
- (id)playerItem;
- (id)stringFromTimeInterval:(double)a3;
- (id)toolbarButtonsForTraitCollection:(id)a3;
- (opaqueCMSampleBuffer)createSampleBufferFromAHAP:(id)a3 error:(id *)a4;
- (void)_setupMissingAudioCustomLabel;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)setupConstraints;
- (void)showTimeLabelIfNeeded;
- (void)viewDidLoad;
@end

@implementation QLHapticItemViewController

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277D43EF8];
  v12 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v12 = *v11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23A714000, v12, OS_LOG_TYPE_INFO, "QLHapticItemViewController loadPreviewControllerWithContents #Media", buf, 2u);
  }

  [(QLHapticItemViewController *)self setHasAudioCustom:0];
  objc_initWeak(buf, self);
  v13 = v8;
  objc_copyWeak(&v16, buf);
  v15 = v10;
  v14 = v9;
  QLRunInBackgroundThread();

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __90__QLHapticItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) string];
  v3 = [v2 string];

  v4 = [v3 dataUsingEncoding:4];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v21 = 0;
  v6 = [WeakRetained makeAVAssetFromAHAP:v4 error:&v21];
  v7 = v21;

  if (!v6 || v7)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 64));
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 145, v6);
      if ([v9 canPlayHaptics])
      {
        if ([v9 hasAudioCustom])
        {
          v19[1] = MEMORY[0x277D85DD0];
          v19[2] = 3221225472;
          v19[3] = __90__QLHapticItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_1;
          v19[4] = &unk_278B57858;
          objc_copyWeak(&v20, (a1 + 64));
          QLRunInMainThread();
          objc_destroyWeak(&v20);
        }

        v15 = v6;
        v16 = *(a1 + 40);
        v18 = *(a1 + 56);
        objc_copyWeak(v19, (a1 + 64));
        v17 = *(a1 + 48);
        QLRunInMainThread();
        objc_destroyWeak(v19);
      }

      else
      {
        v12 = MEMORY[0x277D43EF8];
        v13 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          QLSInitLogging();
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23A714000, v13, OS_LOG_TYPE_INFO, "Device does not support haptics. Calling for unavailable config #AnyItemViewController", buf, 2u);
        }

        [v9 _setNeedsUpdateContentUnavailableConfiguration];
        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v10 = MEMORY[0x277D43EF8];
      v11 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v11 = *v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "[QLHapticItemViewController loadPreviewControllerWithContents:context:completionHandler:]_block_invoke";
        _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_INFO, "%s: is not available #AnyItemViewController", buf, 0xCu);
      }

      [0 _setNeedsUpdateContentUnavailableConfiguration];
      (*(*(a1 + 56) + 16))();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __90__QLHapticItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupMissingAudioCustomLabel];
}

void __90__QLHapticItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__QLHapticItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_3;
  v6[3] = &unk_278B58150;
  v7 = v2;
  v8 = *(a1 + 56);
  objc_copyWeak(&v9, (a1 + 64));
  v5.receiver = v3;
  v5.super_class = QLHapticItemViewController;
  objc_msgSendSuper2(&v5, sel_loadPreviewControllerWithContents_context_completionHandler_, v4, v7, v6);
  objc_destroyWeak(&v9);
}

void __90__QLHapticItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 previewTitle];
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_ERROR, "Error while loading preview controller with preview item with name: %@: %@ #AnyItemViewController", &v14, 0x16u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_10:
      v10();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained showTimeLabelIfNeeded];

    v12 = *(a1 + 40);
    if (v12)
    {
      v10 = *(v12 + 16);
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setupMissingAudioCustomLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  missingAudioCustomLabel = self->_missingAudioCustomLabel;
  self->_missingAudioCustomLabel = v3;

  v5 = self->_missingAudioCustomLabel;
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(UILabel *)v5 setFont:v6];

  v7 = self->_missingAudioCustomLabel;
  v8 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v7 setTextColor:v8];

  [(UILabel *)self->_missingAudioCustomLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_missingAudioCustomLabel setTextAlignment:1];
  [(UILabel *)self->_missingAudioCustomLabel setNumberOfLines:0];
  [(UILabel *)self->_missingAudioCustomLabel setLineBreakMode:0];
  v9 = self->_missingAudioCustomLabel;
  v10 = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)v9 setBackgroundColor:v10];

  [(UILabel *)self->_missingAudioCustomLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = MEMORY[0x277CCACA8];
  v12 = QLLocalizedString();
  v13 = [v11 localizedStringWithFormat:v12];
  [(UILabel *)self->_missingAudioCustomLabel setText:v13];

  v14 = [(QLHapticItemViewController *)self view];
  [v14 addSubview:self->_missingAudioCustomLabel];
}

- (BOOL)canPlayHaptics
{
  v2 = [(QLHapticItemViewController *)self playerItem];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBF6B0] capabilitiesForHardware];
  v5 = [v4 supportsHaptics];

  return v5;
}

- (id)playerItem
{
  playerItem = self->_playerItem;
  if (!playerItem)
  {
    if (self->super.super.super._mediaAsset)
    {
      v4 = [MEMORY[0x277CE65B0] playerItemWithAsset:?];
      v5 = self->_playerItem;
      self->_playerItem = v4;

      playerItem = self->_playerItem;
    }

    else
    {
      playerItem = 0;
    }
  }

  return playerItem;
}

- (id)player
{
  player = self->super.super.super._player;
  if (!player)
  {
    if (self->super.super.super._mediaAsset)
    {
      v4 = [(QLHapticItemViewController *)self playerItem];
      if (objc_opt_respondsToSelector())
      {
        [v4 setPlayHapticTracks:1];
      }

      v5 = [MEMORY[0x277CE6598] playerWithPlayerItem:v4];
      v6 = self->super.super.super._player;
      self->super.super.super._player = v5;

      player = self->super.super.super._player;
    }

    else
    {
      player = 0;
    }
  }

  return player;
}

- (void)showTimeLabelIfNeeded
{
  if ([(QLMediaItemBaseViewController *)self isFullScreen])
  {
    return;
  }

  v6 = [(QLItemViewController *)self appearance];
  if ([v6 presentationMode] != 4)
  {
    v3 = [(QLItemViewController *)self appearance];
    if ([v3 presentationMode] != 3)
    {
      v4 = [(QLItemViewController *)self appearance];
      if ([v4 presentationMode])
      {
        v5 = [(QLHapticItemViewController *)self canPlayHaptics];

        if (v5)
        {

          [(QLMediaItemViewController *)self showTimeLabel];
        }

        return;
      }
    }
  }
}

- (void)setupConstraints
{
  v48[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  missingAudioCustomLabel = self->_missingAudioCustomLabel;
  v5 = 0x277CBE000;
  if (missingAudioCustomLabel)
  {
    v6 = [(UILabel *)missingAudioCustomLabel topAnchor];
    v7 = [(QLHapticItemViewController *)self view];
    v8 = [v7 layoutMarginsGuide];
    v9 = [v8 topAnchor];
    v10 = [v6 constraintEqualToAnchor:v9 constant:8.0];

    v11 = [(UILabel *)self->_missingAudioCustomLabel leftAnchor];
    v12 = [(QLHapticItemViewController *)self view];
    v13 = [v12 layoutMarginsGuide];
    v14 = [v13 leftAnchor];
    v15 = [v11 constraintEqualToAnchor:v14];

    v16 = [(UILabel *)self->_missingAudioCustomLabel rightAnchor];
    v17 = [(QLHapticItemViewController *)self view];
    v18 = [v17 layoutMarginsGuide];
    v19 = [v18 rightAnchor];
    v20 = [v16 constraintEqualToAnchor:v19];

    v5 = 0x277CBE000uLL;
    [(UILabel *)self->_missingAudioCustomLabel sizeToFit];
    v48[0] = v10;
    v48[1] = v15;
    v48[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
    [v3 addObjectsFromArray:v21];
  }

  backgroundIconImageView = self->super._backgroundIconImageView;
  if (backgroundIconImageView)
  {
    v23 = [(UIImageView *)backgroundIconImageView centerXAnchor];
    v24 = [(QLHapticItemViewController *)self view];
    v25 = [v24 centerXAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];

    v27 = [(UIImageView *)self->super._backgroundIconImageView centerYAnchor];
    v28 = [(QLHapticItemViewController *)self view];
    v29 = [v28 centerYAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];

    if (self->_missingAudioCustomLabel)
    {
      LODWORD(v31) = 1131741184;
      [v30 setPriority:v31];
      v32 = [(UIImageView *)self->super._backgroundIconImageView topAnchor];
      v33 = [(UILabel *)self->_missingAudioCustomLabel bottomAnchor];
      v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33 constant:8.0];
      [v3 addObject:v34];
    }

    v47[0] = v26;
    v47[1] = v30;
    v35 = [*(v5 + 2656) arrayWithObjects:v47 count:2];
    [v3 addObjectsFromArray:v35];

    v36 = v5;
    playButton = self->super._playButton;
    if (playButton)
    {
      v38 = [(QLOverlayPlayButton *)playButton centerYAnchor];
      v39 = [(UIImageView *)self->super._backgroundIconImageView centerYAnchor];
      v40 = [v38 constraintEqualToAnchor:v39];
      v41 = [(QLOverlayPlayButton *)self->super._playButton centerXAnchor];
      v42 = [(UIImageView *)self->super._backgroundIconImageView centerXAnchor];
      v43 = [v41 constraintEqualToAnchor:v42];
      v46[1] = v43;
      v44 = [*(v36 + 2656) arrayWithObjects:v46 count:2];
      [v3 addObjectsFromArray:v44];
    }
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v3];

  v45 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = QLHapticItemViewController;
  [(QLHapticItemViewController *)&v9 viewDidLoad];
  objc_initWeak(&location, self);
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__QLHapticItemViewController_viewDidLoad__block_invoke;
  v6[3] = &unk_278B57168;
  objc_copyWeak(&v7, &location);
  v4 = [(QLHapticItemViewController *)self registerForTraitChanges:v3 withHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __41__QLHapticItemViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[183];
  if (v2)
  {
    v4 = WeakRetained;
    v2 = [v2 sizeToFit];
    WeakRetained = v4;
  }

  return MEMORY[0x2821F96F8](v2, WeakRetained);
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  if (![(QLHapticItemViewController *)self canPlayHaptics])
  {
    v10 = [MEMORY[0x277D75390] emptyProminentConfiguration];
    v4 = MEMORY[0x277CCACA8];
    v5 = QLLocalizedString();
    v6 = [v4 localizedStringWithFormat:v5];
    [v10 setText:v6];

    v7 = MEMORY[0x277CCACA8];
    v8 = QLLocalizedString();
    v9 = [v7 localizedStringWithFormat:v8];
    [v10 setSecondaryText:v9];

    [(QLHapticItemViewController *)self _setContentUnavailableConfiguration:v10];
  }
}

- (BOOL)play
{
  v3 = [(QLMediaItemBaseViewController *)self isVisible];
  if (v3)
  {
    v4 = [(QLHapticItemViewController *)self player];
    v5 = [v4 status];

    if (v5 == 1)
    {
      v6 = [(QLHapticItemViewController *)self player];
      v9 = *MEMORY[0x277CC08F0];
      v10 = *(MEMORY[0x277CC08F0] + 16);
      [v6 seekToTime:&v9];

      v7 = [(QLHapticItemViewController *)self player];
      [v7 play];

      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (id)playbackObserverBlock
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__QLHapticItemViewController_playbackObserverBlock__block_invoke;
  aBlock[3] = &unk_278B581C8;
  objc_copyWeak(&v6, &location);
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __51__QLHapticItemViewController_playbackObserverBlock__block_invoke(uint64_t a1, CMTime *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = *a2;
  [WeakRetained observePlayingTime:&v13];

  v13 = *a2;
  *(*(a1 + 32) + 1472) = CMTimeGetSeconds(&v13);
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 player];
  v7 = [v6 currentItem];
  v8 = [v7 asset];
  v9 = v8;
  if (v8)
  {
    [v8 duration];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  Seconds = CMTimeGetSeconds(&v13);
  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 elapsedTime];
  *(*(a1 + 32) + 1480) = Seconds - v12;
}

- (id)stringFromTimeInterval:(double)a3
{
  if (stringFromTimeInterval__onceToken != -1)
  {
    [QLHapticItemViewController stringFromTimeInterval:];
  }

  HIDWORD(v4) = 1078853632;
  if (a3 <= 60.0)
  {
    v6 = stringFromTimeInterval__millisecondTimeFormatter;
    *&v4 = a3;
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    v8 = [v6 stringFromNumber:v7];

    v9 = MEMORY[0x277CCACA8];
    v10 = QLLocalizedStringWithDefaultValue();
    v5 = [v9 localizedStringWithFormat:v10, v8];
  }

  else
  {
    v5 = [stringFromTimeInterval__minuteSecondFormatter stringFromTimeInterval:a3];
  }

  return v5;
}

void __53__QLHapticItemViewController_stringFromTimeInterval___block_invoke()
{
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v0 = objc_alloc(MEMORY[0x277CBEAF8]);
  v1 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v2 = [v1 localeIdentifier];
  v3 = [v0 initWithLocaleIdentifier:v2];

  [v8 setLocale:v3];
  v4 = objc_alloc_init(MEMORY[0x277CCA958]);
  v5 = stringFromTimeInterval__minuteSecondFormatter;
  stringFromTimeInterval__minuteSecondFormatter = v4;

  [stringFromTimeInterval__minuteSecondFormatter setCalendar:v8];
  [stringFromTimeInterval__minuteSecondFormatter setAllowedUnits:192];
  [stringFromTimeInterval__minuteSecondFormatter setUnitsStyle:0];
  [stringFromTimeInterval__minuteSecondFormatter setZeroFormattingBehavior:0x10000];
  [stringFromTimeInterval__minuteSecondFormatter setAllowsFractionalUnits:1];
  v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v7 = stringFromTimeInterval__millisecondTimeFormatter;
  stringFromTimeInterval__millisecondTimeFormatter = v6;

  [stringFromTimeInterval__millisecondTimeFormatter setNumberStyle:1];
  [stringFromTimeInterval__millisecondTimeFormatter setRoundingMode:5];
  [stringFromTimeInterval__millisecondTimeFormatter setLocale:v3];
  [stringFromTimeInterval__millisecondTimeFormatter setPaddingPosition:0];
  [stringFromTimeInterval__millisecondTimeFormatter setPaddingCharacter:@"0"];
  [stringFromTimeInterval__millisecondTimeFormatter setMinimumIntegerDigits:2];
  [stringFromTimeInterval__millisecondTimeFormatter setMinimumFractionDigits:1];
  [stringFromTimeInterval__millisecondTimeFormatter setMaximumFractionDigits:1];
}

- (id)toolbarButtonsForTraitCollection:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([(QLMediaItemBaseViewController *)self shouldDisplayPlayButtonInNavigationBar]&& [(QLMediaItemBaseViewController *)self playable])
  {
    v4 = [objc_alloc(MEMORY[0x277D43FB0]) initWithIdentifier:@"togglePlay"];
    [v4 setPlacement:0];
    if ([(QLMediaItemBaseViewController *)self playingStatus]== 1)
    {
      [v4 setSymbolImageName:@"stop.fill"];
      v5 = QLMediaItemViewControllerBarPlayButtonPlayingAccessibilityIdentifier;
    }

    else
    {
      [v4 setSymbolImageName:0];
      [v4 setSystemItem:17];
      v5 = QLMediaItemViewControllerBarPlayButtonPausedAccessibilityIdentifier;
    }

    [v4 setAccessibilityIdentifier:*v5];
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)makeAVAssetFromAHAP:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [(QLHapticItemViewController *)self createSampleBufferFromAHAP:a3 error:?];
  if (v5 && !*a4)
  {
    v10 = v5;
    v11 = MEMORY[0x277CE6560];
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:&movieHeaderMPEG4 length:148];
    v13 = [v11 movieWithData:v12 options:0 error:a4];

    if (v13 && !*a4)
    {
      v17 = [MEMORY[0x277CBEBC0] _QLCreateTemporaryDirectory:a4];
      if (v17 && !*a4)
      {
        v21 = [MEMORY[0x277CCAD78] UUID];
        v22 = [v21 UUIDString];
        v23 = [v17 URLByAppendingPathComponent:v22];

        v24 = [objc_alloc(MEMORY[0x277CE64F0]) initWithURL:v23 options:0];
        [v13 setDefaultMediaDataStorage:v24];

        v25 = [v13 addMutableTrackWithMediaType:*MEMORY[0x277CE5E68] copySettingsFromTrack:0 options:0];
        if ([v25 appendSampleBuffer:v10 decodeTime:0 presentationTime:0 error:a4])
        {
          memset(&buf, 0, sizeof(buf));
          CMSampleBufferGetDuration(&duration.start, v10);
          *&v30.start.value = *MEMORY[0x277CC08F0];
          v30.start.epoch = *(MEMORY[0x277CC08F0] + 16);
          CMTimeRangeMake(&buf, &v30.start, &duration.start);
          duration = buf;
          v30 = buf;
          [v25 insertMediaTimeRange:&duration intoTimeRange:&v30];
          v9 = v13;
        }

        else
        {
          v26 = QLSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = *a4;
            LODWORD(buf.start.value) = 138412290;
            *(&buf.start.value + 4) = v27;
            _os_log_impl(&dword_23A714000, v26, OS_LOG_TYPE_ERROR, "Failed to create an AVMutableMovieTrack for haptics: %@ #AnyItemViewController", &buf, 0xCu);
          }

          v9 = 0;
        }
      }

      else
      {
        v18 = MEMORY[0x277D43EF8];
        v19 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          QLSInitLogging();
          v19 = *v18;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *a4;
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = v20;
          _os_log_impl(&dword_23A714000, v19, OS_LOG_TYPE_ERROR, "Failed to create a temporary directory: %@ #AnyItemViewController", &buf, 0xCu);
        }

        v9 = 0;
      }
    }

    else
    {
      v14 = MEMORY[0x277D43EF8];
      v15 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v15 = *v14;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *a4;
        LODWORD(buf.start.value) = 138412290;
        *(&buf.start.value + 4) = v16;
        _os_log_impl(&dword_23A714000, v15, OS_LOG_TYPE_ERROR, "Failed to create an AVMutableMovie: %@ #AnyItemViewController", &buf, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v6 = MEMORY[0x277D43EF8];
    v7 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a4;
      LODWORD(buf.start.value) = 138412290;
      *(&buf.start.value + 4) = v8;
      _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_ERROR, "Failed to create a sample buffer with AHAP contents: %@ #AnyItemViewController", &buf, 0xCu);
    }

    v9 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)filterPatternDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"Pattern"];
  v6 = [v5 indexesOfObjectsPassingTest:&__block_literal_global_78];
  if ([v6 count])
  {
    self->_hasAudioCustom = 1;
    v7 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
    [v7 removeObjectsAtIndexes:v6];
    [v4 setObject:v7 forKey:@"Pattern"];
  }

  v8 = [v4 copy];

  return v8;
}

uint64_t __54__QLHapticItemViewController_filterPatternDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"Event"];
  v3 = [v2 objectForKeyedSubscript:@"EventType"];
  v4 = [v3 isEqualToString:@"AudioCustom"];

  return v4;
}

- (opaqueCMSampleBuffer)createSampleBufferFromAHAP:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  formatDescriptionOut = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CMFormatDescriptionCreate(*MEMORY[0x277CBECE8], 0x68617074u, 0x61686172u, 0, &formatDescriptionOut);
  if (!v8)
  {
    v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:4 error:a4];
    v14 = [v13 mutableCopy];
    v15 = [(QLHapticItemViewController *)self filterPatternDictionary:v14];

    v16 = [objc_alloc(MEMORY[0x277CBF6D0]) initWithDictionary:v15 error:a4];
    memset(&v38, 0, sizeof(v38));
    [v16 duration];
    CMTimeMakeWithSeconds(&v38, v17, 10000);
    buf.duration = v38;
    v34 = *MEMORY[0x277CC08F0];
    *&time2.value = *MEMORY[0x277CC08F0];
    v18 = *(MEMORY[0x277CC08F0] + 16);
    time2.epoch = v18;
    if (CMTimeCompare(&buf.duration, &time2) <= 0)
    {
      v41 = *MEMORY[0x277CCA450];
      v42 = @"Computed negative pattern duration, which is not possible.";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v26 = objc_alloc(MEMORY[0x277CCA9B8]);
      *a4 = [v26 initWithDomain:*MEMORY[0x277D43FD0] code:-1 userInfo:v25];
      v27 = MEMORY[0x277D43EF8];
      v28 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v28 = *v27;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.duration.value) = 0;
        _os_log_impl(&dword_23A714000, v28, OS_LOG_TYPE_ERROR, "Duration cannot be less than 0. #AnyItemViewController", &buf, 2u);
      }

      goto LABEL_24;
    }

    theBuffer = 0;
    v19 = CMBlockBufferCreateWithMemoryBlock(v7, [v6 bytes], objc_msgSend(v6, "length"), v7, 0, 0, objc_msgSend(v6, "length"), 0, &theBuffer);
    if (v19)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v19 userInfo:0];
      v20 = MEMORY[0x277D43EF8];
      v21 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v21 = *v20;
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v22 = *a4;
      LODWORD(buf.duration.value) = 138412290;
      *(&buf.duration.value + 4) = v22;
      v23 = "Failed to allocate memory block: %@ #AnyItemViewController";
      p_buf = &buf;
    }

    else
    {
      sampleSizeArray = CMBlockBufferGetDataLength(theBuffer);
      buf.duration = v38;
      *&buf.presentationTimeStamp.value = v34;
      buf.presentationTimeStamp.epoch = v18;
      buf.decodeTimeStamp = **&MEMORY[0x277CC0898];
      sampleBufferOut = 0;
      v29 = CMSampleBufferCreateReady(v7, theBuffer, formatDescriptionOut, 1, 1, &buf, 1, &sampleSizeArray, &sampleBufferOut);
      if (!v29)
      {
        v12 = sampleBufferOut;
        goto LABEL_25;
      }

      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v29 userInfo:0];
      v30 = MEMORY[0x277D43EF8];
      v21 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v21 = *v30;
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_24:
        v12 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v31 = *a4;
      LODWORD(time2.value) = 138412290;
      *(&time2.value + 4) = v31;
      v23 = "Failed to create sample buffer: %@ #AnyItemViewController";
      p_buf = &time2;
    }

    _os_log_impl(&dword_23A714000, v21, OS_LOG_TYPE_ERROR, v23, p_buf, 0xCu);
    goto LABEL_24;
  }

  *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v8 userInfo:0];
  v9 = MEMORY[0x277D43EF8];
  v10 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v10 = *v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *a4;
    LODWORD(buf.duration.value) = 138412290;
    *(&buf.duration.value + 4) = v11;
    _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "Failed to get format descriptor: %@ #AnyItemViewController", &buf, 0xCu);
  }

  v12 = 0;
LABEL_26:

  v32 = *MEMORY[0x277D85DE8];
  return v12;
}

@end