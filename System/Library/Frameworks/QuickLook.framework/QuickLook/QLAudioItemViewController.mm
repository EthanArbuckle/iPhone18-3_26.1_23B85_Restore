@interface QLAudioItemViewController
- (double)waveformImageDimension;
- (void)addScrubberWithDeferral;
- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dealloc;
- (void)didChangePlayingStatus;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setPlayControlsHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setupConstraints;
- (void)transitionDidStart:(BOOL)start;
@end

@implementation QLAudioItemViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__QLAudioItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
  v13[3] = &unk_278B582D8;
  selfCopy = self;
  v16 = handlerCopy;
  v14 = contextCopy;
  v12.receiver = self;
  v12.super_class = QLAudioItemViewController;
  v10 = handlerCopy;
  v11 = contextCopy;
  [(QLMediaItemViewController *)&v12 loadPreviewControllerWithContents:contents context:v11 completionHandler:v13];
}

void __89__QLAudioItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
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
      v32 = 138412546;
      v33 = v8;
      v34 = 2112;
      v35 = v3;
      _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_ERROR, "Error while loading preview controller with preview item with name: %@: %@ #Generic", &v32, 0x16u);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, v3);
    }
  }

  else
  {
    v10 = [*(a1 + 40) scrollView];
    v11 = [v10 pinchGestureRecognizer];
    [v11 setEnabled:0];

    v12 = [*(a1 + 40) scrollView];
    v13 = [v12 panGestureRecognizer];
    [v13 setEnabled:0];

    v14 = MEMORY[0x277D755D0];
    [*(a1 + 40) waveformImageDimension];
    v15 = [v14 configurationWithPointSize:3 weight:-1 scale:?];
    v16 = [*(a1 + 40) iconImageWithConfiguration:v15];
    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v16];
    v18 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v17 setTintColor:v18];

    v19 = [*(a1 + 40) imageAccessibilityIdentifier];
    [v17 setAccessibilityIdentifier:v19];

    v20 = [*(a1 + 40) view];
    [v20 addSubview:v17];

    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong((*(a1 + 40) + 1384), v17);
    v21 = objc_alloc_init(QLOverlayPlayButton);
    v22 = *(a1 + 40);
    v23 = *(v22 + 1392);
    *(v22 + 1392) = v21;

    [*(*(a1 + 40) + 1392) setTarget:*(a1 + 40) action:sel_play];
    [*(*(a1 + 40) + 1392) setAlpha:0.0];
    [*(*(a1 + 40) + 1392) setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [*(a1 + 40) view];
    [v24 addSubview:*(*(a1 + 40) + 1392)];

    [*(a1 + 40) setupConstraints];
    v25 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:*(a1 + 40) action:sel__tapRecognized_];
    v26 = [*(a1 + 40) view];
    [v26 addGestureRecognizer:v25];

    if ([*(a1 + 40) usesScrubber])
    {
      v27 = objc_alloc_init(_QLAudioScrubberViewContainer);
      v28 = *(a1 + 40);
      v29 = *(v28 + 1400);
      *(v28 + 1400) = v27;

      [*(*(a1 + 40) + 1400) setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(*(a1 + 40) + 1400) setUserInteractionEnabled:1];
      [*(*(a1 + 40) + 1400) setAlpha:1.0];
      [*(a1 + 40) addScrubberWithDeferral];
    }

    v30 = *(a1 + 48);
    if (v30)
    {
      (*(v30 + 16))(v30, 0);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(QLVideoScrubberView *)self->_scrubber removeObserver:self forKeyPath:@"userInteractingWithScrubber" context:0];
  v3.receiver = self;
  v3.super_class = QLAudioItemViewController;
  [(QLMediaItemViewController *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (self->_scrubber == object)
  {
    if ([path isEqualToString:@"userInteractingWithScrubber"])
    {
      if ([(QLVideoScrubberView *)self->_scrubber isUserInteractingWithScrubber])
      {
        [(QLMediaItemViewController *)self showTimeLabelIfNeeded];
      }

      else
      {
        [(QLMediaItemViewController *)self hideTimeLabelAfterDelay];
      }

      [(QLAudioItemViewController *)self didChangePlayingStatus];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = QLAudioItemViewController;
    [QLMediaItemViewController observeValueForKeyPath:sel_observeValueForKeyPath_ofObject_change_context_ ofObject:path change:? context:?];
  }
}

- (void)addScrubberWithDeferral
{
  if (!self->_scrubber)
  {
    block[7] = v2;
    block[8] = v3;
    if (self->_scrubberContainer)
    {
      v5 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__QLAudioItemViewController_addScrubberWithDeferral__block_invoke;
      block[3] = &unk_278B57190;
      block[4] = self;
      dispatch_after(v5, MEMORY[0x277D85CD0], block);
    }
  }
}

uint64_t __52__QLAudioItemViewController_addScrubberWithDeferral__block_invoke(uint64_t result)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if (!*(v1 + 1416) && *(v1 + 1432))
  {
    v2 = result;
    v3 = objc_opt_new();
    v4 = *(v2 + 32);
    v5 = *(v4 + 1408);
    *(v4 + 1408) = v3;

    [*(*(v2 + 32) + 1408) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(*(v2 + 32) + 1408) setShowsHorizontalScrollIndicator:0];
    [*(*(v2 + 32) + 1408) setBounces:0];
    v6 = objc_opt_new();
    v7 = *(v2 + 32);
    v8 = *(v7 + 1416);
    *(v7 + 1416) = v6;

    v9 = objc_alloc_init(QLWaveformScrubberViewProvider);
    v10 = *(v2 + 32);
    v11 = *(v10 + 1424);
    *(v10 + 1424) = v9;

    v12 = [*(v2 + 32) player];
    v13 = [*(*(v2 + 32) + 1416) photosScrubber];
    [v13 setPlayer:v12];

    v14 = *(v2 + 32);
    v15 = *(v14 + 1424);
    v16 = [*(v14 + 1416) photosScrubber];
    [v16 setFilmstripViewProvider:v15];

    [*(*(v2 + 32) + 1416) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v2 + 32) mediaDuration];
    v18 = v17;
    v19 = [*(*(v2 + 32) + 1416) photosScrubber];
    [v19 setEstimatedDuration:v18];

    [*(*(v2 + 32) + 1416) addObserver:*(v2 + 32) forKeyPath:@"userInteractingWithScrubber" options:1 context:0];
    v20 = [*(*(v2 + 32) + 1416) scrollView];
    [v20 setContentInsetAdjustmentBehavior:2];

    [*(*(v2 + 32) + 1416) setAlpha:0.0];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __52__QLAudioItemViewController_addScrubberWithDeferral__block_invoke_2;
    v44[3] = &unk_278B57190;
    v44[4] = *(v2 + 32);
    [MEMORY[0x277D75D18] animateWithDuration:v44 animations:0.2];
    [*(*(v2 + 32) + 1408) addSubview:*(*(v2 + 32) + 1416)];
    [*(*(v2 + 32) + 1400) addSubview:*(*(v2 + 32) + 1408)];
    v21 = [*(*(v2 + 32) + 1400) leadingAnchor];
    v22 = [*(*(v2 + 32) + 1416) leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    v24 = [*(*(v2 + 32) + 1400) trailingAnchor];
    v25 = [*(*(v2 + 32) + 1416) trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v27 = [*(*(v2 + 32) + 1400) topAnchor];
    v28 = [*(*(v2 + 32) + 1416) topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-4.0];
    [v29 setActive:1];

    v30 = [*(*(v2 + 32) + 1400) bottomAnchor];
    v31 = [*(*(v2 + 32) + 1416) bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:4.0];
    [v32 setActive:1];

    v33 = *(v2 + 32);
    v34 = *(v33 + 1400);
    v35 = MEMORY[0x277CCAAD0];
    v47 = @"scrubberContainerScrollView";
    v48[0] = *(v33 + 1408);
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v37 = [v35 constraintsWithVisualFormat:@"H:|[scrubberContainerScrollView]|" options:0 metrics:0 views:v36];
    [v34 addConstraints:v37];

    v38 = *(v2 + 32);
    v39 = *(v38 + 1400);
    v40 = MEMORY[0x277CCAAD0];
    v45 = @"scrubberContainerScrollView";
    v46 = *(v38 + 1408);
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v42 = [v40 constraintsWithVisualFormat:@"V:|[scrubberContainerScrollView]|" options:0 metrics:0 views:v41];
    [v39 addConstraints:v42];

    result = [*(v2 + 32) showTimeLabelIfNeeded];
  }

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([identifierCopy isEqualToString:@"QLDoneButtonIdentifier"])
  {
    [(QLMediaItemBaseViewController *)self stop];
  }

  v8.receiver = self;
  v8.super_class = QLAudioItemViewController;
  [(QLMediaItemBaseViewController *)&v8 buttonPressedWithIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)setPlayControlsHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  [(QLOverlayPlayButton *)self->_playButton alpha];
  if (v7 == hiddenCopy)
  {
    if (animatedCopy)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __60__QLAudioItemViewController_setPlayControlsHidden_animated___block_invoke;
      v9[3] = &unk_278B57340;
      v9[4] = self;
      v10 = hiddenCopy;
      [MEMORY[0x277D75D18] animateWithDuration:v9 animations:0.2];
    }

    else
    {
      playButton = self->_playButton;

      [(QLOverlayPlayButton *)playButton setAlpha:!hiddenCopy];
    }
  }
}

- (void)didChangePlayingStatus
{
  playingStatus = [(QLMediaItemBaseViewController *)self playingStatus];
  isUserInteractingWithScrubber = [(QLVideoScrubberView *)self->_scrubber isUserInteractingWithScrubber];
  v5 = 1;
  if (!isUserInteractingWithScrubber && playingStatus != 1)
  {
    v5 = [(QLMediaItemBaseViewController *)self playable]^ 1;
  }

  [(QLAudioItemViewController *)self setPlayControlsHidden:v5 animated:0];
}

- (void)transitionDidStart:(BOOL)start
{
  startCopy = start;
  if (!start || [(QLMediaItemBaseViewController *)self playingStatus]!= 1)
  {

    [(QLAudioItemViewController *)self setPlayControlsHidden:!startCopy animated:1];
  }
}

- (void)setupConstraints
{
  if (self->_backgroundIconImageView)
  {
    [(QLAudioItemViewController *)self waveformImageDimension];
    v4 = v3;
    [(QLAudioItemViewController *)self maximumWaveformDimension];
    v6 = v4 / v5 * 13.0;
    view = [(QLAudioItemViewController *)self view];
    v8 = MEMORY[0x277CCAAD0];
    view2 = [(QLAudioItemViewController *)self view];
    v10 = [v8 constraintWithItem:view2 attribute:10 relatedBy:0 toItem:self->_backgroundIconImageView attribute:10 multiplier:1.0 constant:v6];
    [view addConstraint:v10];

    view3 = [(QLAudioItemViewController *)self view];
    v12 = MEMORY[0x277CCAAD0];
    view4 = [(QLAudioItemViewController *)self view];
    v14 = [v12 constraintWithItem:view4 attribute:9 relatedBy:0 toItem:self->_backgroundIconImageView attribute:9 multiplier:1.0 constant:0.0];
    [view3 addConstraint:v14];
  }

  if (self->_playButton)
  {
    view5 = [(QLAudioItemViewController *)self view];
    v16 = MEMORY[0x277CCAAD0];
    view6 = [(QLAudioItemViewController *)self view];
    v18 = [v16 constraintWithItem:view6 attribute:9 relatedBy:0 toItem:self->_playButton attribute:9 multiplier:1.0 constant:0.0];
    [view5 addConstraint:v18];

    view7 = [(QLAudioItemViewController *)self view];
    v19 = MEMORY[0x277CCAAD0];
    view8 = [(QLAudioItemViewController *)self view];
    v21 = [v19 constraintWithItem:view8 attribute:10 relatedBy:0 toItem:self->_playButton attribute:10 multiplier:1.0 constant:0.0];
    [view7 addConstraint:v21];
  }
}

- (double)waveformImageDimension
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v8 = v7;

  if (v5 >= v8)
  {
    v5 = v8;
  }

  [(QLAudioItemViewController *)self maximumWaveformDimension];
  v10 = v5 - v9;
  [(QLAudioItemViewController *)self maximumWaveformDimension];
  if (v10 < result)
  {
    return v10;
  }

  return result;
}

@end