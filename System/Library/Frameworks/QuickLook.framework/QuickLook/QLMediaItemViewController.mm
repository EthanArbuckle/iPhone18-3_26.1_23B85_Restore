@interface QLMediaItemViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (id)_playingInfoWithPlaybackDuration:(double)a3 elapsedTime:(double)a4;
- (id)labelTextWithFormat:(int64_t)a3 elapsedInterval:(double)a4 remainingInterval:(double)a5;
- (id)registeredKeyCommands;
- (id)stringFromTimeInterval:(double)a3;
- (int64_t)playbackTimeFormat;
- (int64_t)togglePlaybackFromControlCenter:(id)a3;
- (int64_t)userScrubbedInControlCenter:(id)a3;
- (int64_t)userTappedPauseInControlCenter:(id)a3;
- (int64_t)userTappedPlayInControlCenter:(id)a3;
- (void)_registerForCommandCenterHandlers;
- (void)_unregisterForCommandCenterHandlers;
- (void)_updateCommandCenterPlayingInfoWithCurrentPlaybackTimeInformation;
- (void)dealloc;
- (void)handlePerformedKeyCommandIfNeeded:(id)a3;
- (void)hideTimeLabelAfterDelay;
- (void)hideTimeLabelAnimated:(BOOL)a3;
- (void)hostApplicationDidEnterBackground:(id)a3;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)observePlayingTime:(id *)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)previewIsAppearingWithProgress:(double)a3;
- (void)removeTimeLabel;
- (void)scrubber:(id)a3 didChangeValue:(float)a4;
- (void)setTimeLabelNeedsUpdate;
- (void)setUpTimeLabelIfNeeded;
- (void)showTimeLabel;
- (void)showTimeLabelIfNeeded;
- (void)tapToPlayGestureChanged:(id)a3;
@end

@implementation QLMediaItemViewController

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__QLMediaItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
  v11[3] = &unk_278B58F28;
  v11[4] = self;
  v12 = v8;
  v10.receiver = self;
  v10.super_class = QLMediaItemViewController;
  v9 = v8;
  [(QLMediaItemBaseViewController *)&v10 loadPreviewControllerWithContents:a3 context:a4 completionHandler:v11];
}

uint64_t __89__QLMediaItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (!a2)
  {
    v5 = *(a1 + 32);
    return QLRunInMainThread();
  }

  return result;
}

void __89__QLMediaItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [QLMediaScrubberGesture alloc];
  v3 = [*(a1 + 32) player];
  v4 = [(QLMediaScrubberGesture *)v2 initWithPlayer:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1368);
  *(v5 + 1368) = v4;

  [*(*(a1 + 32) + 1368) setDelegate:?];
  [*(*(a1 + 32) + 1368) setScrubberDelegate:?];
  LODWORD(v7) = 1.0;
  [*(*(a1 + 32) + 1368) setMaximumValue:v7];
  [*(*(a1 + 32) + 1368) setMinimumValue:0.0];
  v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:*(a1 + 32) action:sel_tapToPlayGestureChanged_];
  v9 = *(a1 + 32);
  v10 = *(v9 + 1376);
  *(v9 + 1376) = v8;

  [*(*(a1 + 32) + 1376) setDelegate:?];
  v11 = [*(a1 + 32) view];
  [v11 addGestureRecognizer:*(*(a1 + 32) + 1368)];

  v12 = [*(a1 + 32) view];
  [v12 addGestureRecognizer:*(*(a1 + 32) + 1376)];
}

- (void)previewIsAppearingWithProgress:(double)a3
{
  v6.receiver = self;
  v6.super_class = QLMediaItemViewController;
  [(QLMediaItemBaseViewController *)&v6 previewIsAppearingWithProgress:?];
  v5 = [(QLItemViewController *)self accessoryView];
  [v5 setAlpha:a3];
}

- (void)dealloc
{
  [(UIScrollView *)self->_scrubberScrollView removeObserver:self forKeyPath:@"contentOffset"];
  v3.receiver = self;
  v3.super_class = QLMediaItemViewController;
  [(QLMediaItemBaseViewController *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (self->_scrubberScrollView == a6)
  {
    if ([a3 isEqualToString:{@"contentOffset", a4, a5}])
    {

      [(QLMediaItemViewController *)self setTimeLabelNeedsUpdate];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = QLMediaItemViewController;
    [(QLMediaItemBaseViewController *)&v7 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)hostApplicationDidEnterBackground:(id)a3
{
  if (([a3 BOOLValue] & 1) == 0)
  {

    [(QLMediaItemViewController *)self _updateCommandCenterPlayingInfoWithCurrentPlaybackTimeInformation];
  }
}

- (void)observePlayingTime:(id *)a3
{
  v5.receiver = self;
  v5.super_class = QLMediaItemViewController;
  v4 = *a3;
  [(QLMediaItemBaseViewController *)&v5 observePlayingTime:&v4];
  [(QLMediaItemViewController *)self setTimeLabelNeedsUpdate];
}

- (void)setUpTimeLabelIfNeeded
{
  v60[1] = *MEMORY[0x277D85DE8];
  if (!self->_timeLabelBackground)
  {
    v51 = [(QLMediaItemViewController *)self timeLabelScrollView];
    v3 = objc_opt_new();
    timeLabelBackground = self->_timeLabelBackground;
    self->_timeLabelBackground = v3;

    v5 = [(UIView *)self->_timeLabelBackground layer];
    [v5 setCornerRadius:2.0];

    v6 = self->_timeLabelBackground;
    v7 = MEMORY[0x277D75348];
    v8 = QLFrameworkBundle();
    v9 = [v7 colorNamed:@"QLSquaredLabelBackgroundColor" inBundle:v8 compatibleWithTraitCollection:0];
    [(UIView *)v6 setBackgroundColor:v9];

    [(UIView *)self->_timeLabelBackground setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_timeLabelBackground setAlpha:0.0];
    v10 = [(QLMediaItemViewController *)self view];
    [v10 addSubview:self->_timeLabelBackground];

    v11 = MEMORY[0x277CCAAD0];
    v12 = self->_timeLabelBackground;
    v13 = [(QLMediaItemViewController *)self view];
    v14 = [v11 constraintWithItem:v12 attribute:9 relatedBy:0 toItem:v13 attribute:9 multiplier:1.0 constant:0.0];
    timeLabelConstraintX = self->_timeLabelConstraintX;
    self->_timeLabelConstraintX = v14;

    v16 = [(QLMediaItemViewController *)self view];
    [v16 addConstraint:self->_timeLabelConstraintX];

    v17 = MEMORY[0x277CCAAD0];
    v18 = self->_timeLabelBackground;
    v19 = [(QLMediaItemViewController *)self view];
    v20 = [v17 constraintWithItem:v18 attribute:4 relatedBy:0 toItem:v19 attribute:4 multiplier:1.0 constant:0.0];
    v21 = [v20 ql_activatedConstraint];
    timeLabelConstraintY = self->_timeLabelConstraintY;
    self->_timeLabelConstraintY = v21;

    v23 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76940]];
    v24 = [v23 fontDescriptor];
    v59 = *MEMORY[0x277D74338];
    v25 = *MEMORY[0x277D74388];
    v56[0] = *MEMORY[0x277D74398];
    v56[1] = v25;
    v57[0] = &unk_284D730F0;
    v57[1] = &unk_284D73108;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
    v58 = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    v60[0] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v29 = [v24 fontDescriptorByAddingAttributes:v28];

    v30 = MEMORY[0x277D74300];
    [v23 pointSize];
    v31 = [v30 fontWithDescriptor:v29 size:?];

    v32 = objc_opt_new();
    timeLabel = self->_timeLabel;
    self->_timeLabel = v32;

    [(UILabel *)self->_timeLabel setFont:v31];
    [(UILabel *)self->_timeLabel setTextAlignment:1];
    [(UILabel *)self->_timeLabel setNumberOfLines:1];
    v34 = self->_timeLabel;
    v35 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v34 setBackgroundColor:v35];

    v36 = self->_timeLabel;
    v37 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v36 setTextColor:v37];

    [(UILabel *)self->_timeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_timeLabelBackground addSubview:self->_timeLabel];
    v38 = self->_timeLabelBackground;
    v39 = MEMORY[0x277CCAAD0];
    v40 = self->_timeLabel;
    v54 = @"label";
    v55 = v40;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v42 = [v39 constraintsWithVisualFormat:@"V:|-(2)-[label]-(2)-|" options:0 metrics:0 views:v41];
    [(UIView *)v38 addConstraints:v42];

    v43 = self->_timeLabelBackground;
    v44 = MEMORY[0x277CCAAD0];
    v52 = @"label";
    v53 = self->_timeLabel;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v46 = [v44 constraintsWithVisualFormat:@"H:|-(8)-[label]-(8)-|" options:0 metrics:0 views:v45];
    [(UIView *)v43 addConstraints:v46];

    scrubberScrollView = self->_scrubberScrollView;
    if (scrubberScrollView && scrubberScrollView != v51)
    {
      [(UIScrollView *)scrubberScrollView removeObserver:self forKeyPath:@"contentOffset"];
    }

    v48 = self->_scrubberScrollView;
    self->_scrubberScrollView = v51;
    v49 = v51;

    [(UIScrollView *)self->_scrubberScrollView addObserver:self forKeyPath:@"contentOffset" options:1 context:self->_scrubberScrollView];
    [(QLMediaItemViewController *)self setTimeLabelNeedsUpdate];
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)removeTimeLabel
{
  [(UIView *)self->_timeLabelBackground removeFromSuperview];
  timeLabelBackground = self->_timeLabelBackground;
  self->_timeLabelBackground = 0;

  [(UILabel *)self->_timeLabel removeFromSuperview];
  timeLabel = self->_timeLabel;
  self->_timeLabel = 0;

  [(UIScrollView *)self->_scrubberScrollView removeObserver:self forKeyPath:@"contentOffset"];
  scrubberScrollView = self->_scrubberScrollView;
  self->_scrubberScrollView = 0;
}

- (int64_t)playbackTimeFormat
{
  if ([(QLMediaItemBaseViewController *)self playingStatus]== 2)
  {
    [(QLMediaItemBaseViewController *)self remainingTime];
    if (v3 > 1.0)
    {
      return 2;
    }
  }

  if ([(QLMediaItemBaseViewController *)self playingStatus]!= 1)
  {
    return 1;
  }

  [(QLMediaItemBaseViewController *)self elapsedTime];
  if (v5 < 5.0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)setTimeLabelNeedsUpdate
{
  self->_playbackTimeFormat = [(QLMediaItemViewController *)self playbackTimeFormat];
  if ([(UIScrollView *)self->_scrubberScrollView isDragging]|| [(UIScrollView *)self->_scrubberScrollView isDecelerating]|| [(QLMediaScrubberGesture *)self->_scrubGesture state]== 1 || [(QLMediaScrubberGesture *)self->_scrubGesture state]== 2)
  {
    self->_playbackTimeFormat = 1;
    [(QLMediaItemViewController *)self showTimeLabelIfNeeded];
    [(QLMediaItemViewController *)self hideTimeLabelAfterDelay];
    [(UIScrollView *)self->_scrubberScrollView contentOffset];
    v4 = v3;
    [(UIScrollView *)self->_scrubberScrollView contentSize];
    v6 = v5;
    [(UIScrollView *)self->_scrubberScrollView contentInset];
    v8 = v7;
    [(UIScrollView *)self->_scrubberScrollView contentInset];
    if (v4 >= -v9)
    {
      v11 = 0.0;
      if (v4 <= v6 - v8)
      {
LABEL_10:
        [(NSLayoutConstraint *)self->_timeLabelConstraintX setConstant:v11];
        goto LABEL_11;
      }

      v10 = v4 - (v6 - v8);
    }

    else
    {
      v10 = v4 + v9;
    }

    v11 = -v10;
    goto LABEL_10;
  }

LABEL_11:
  timeLabel = self->_timeLabel;
  playbackTimeFormat = self->_playbackTimeFormat;
  [(QLMediaItemBaseViewController *)self elapsedTime];
  v15 = v14;
  [(QLMediaItemBaseViewController *)self remainingTime];
  v17 = [(QLMediaItemViewController *)self labelTextWithFormat:playbackTimeFormat elapsedInterval:v15 remainingInterval:v16];
  [(UILabel *)timeLabel setText:v17];

  [(UILabel *)self->_timeLabel sizeToFit];
  v18 = [(QLItemViewController *)self appearance];
  [v18 bottomInset];
  v20 = -(v19 + 5.0);

  [(NSLayoutConstraint *)self->_timeLabelConstraintY constant];
  if (v21 != v20)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__QLMediaItemViewController_setTimeLabelNeedsUpdate__block_invoke;
    v22[3] = &unk_278B57318;
    v22[4] = self;
    *&v22[5] = v20;
    [MEMORY[0x277D75D18] animateWithDuration:v22 animations:0.2];
  }

  [(QLMediaItemViewController *)self _updateCommandCenterPlayingInfoWithCurrentPlaybackTimeInformation];
}

- (void)showTimeLabelIfNeeded
{
  if ([(QLMediaItemBaseViewController *)self isFullScreen])
  {
    return;
  }

  v6 = [(QLItemViewController *)self appearance];
  if ([v6 presentationMode] == 4)
  {
    goto LABEL_6;
  }

  v3 = [(QLItemViewController *)self appearance];
  if ([v3 presentationMode] == 3)
  {

LABEL_6:

    return;
  }

  v4 = [(QLItemViewController *)self appearance];
  v5 = [v4 presentationMode];

  if (v5)
  {
    [(QLMediaItemViewController *)self showTimeLabel];

    [(QLMediaItemViewController *)self hideTimeLabelAfterDelay];
  }
}

- (void)showTimeLabel
{
  [(QLMediaItemViewController *)self setUpTimeLabelIfNeeded];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__QLMediaItemViewController_showTimeLabel__block_invoke;
  v3[3] = &unk_278B57190;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.5];
}

- (void)hideTimeLabelAfterDelay
{
  playbackTimeHiddenTimer = self->_playbackTimeHiddenTimer;
  if (playbackTimeHiddenTimer)
  {
    [(NSTimer *)playbackTimeHiddenTimer invalidate];
    v4 = self->_playbackTimeHiddenTimer;
    self->_playbackTimeHiddenTimer = 0;
  }

  [(UIView *)self->_timeLabelBackground alpha];
  if (v5 == 1.0)
  {
    v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_hideTimeLabel selector:0 userInfo:0 repeats:2.0];
    v7 = self->_playbackTimeHiddenTimer;
    self->_playbackTimeHiddenTimer = v6;

    MEMORY[0x2821F96F8](v6, v7);
  }
}

- (void)hideTimeLabelAnimated:(BOOL)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__QLMediaItemViewController_hideTimeLabelAnimated___block_invoke;
  aBlock[3] = &unk_278B57190;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (v3)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.4];
  }

  else
  {
    (*(v5 + 2))(v5);
  }

  playbackTimeHiddenTimer = self->_playbackTimeHiddenTimer;
  if (playbackTimeHiddenTimer)
  {
    [(NSTimer *)playbackTimeHiddenTimer invalidate];
    v8 = self->_playbackTimeHiddenTimer;
    self->_playbackTimeHiddenTimer = 0;
  }
}

- (id)labelTextWithFormat:(int64_t)a3 elapsedInterval:(double)a4 remainingInterval:(double)a5
{
  switch(a3)
  {
    case 3:
      v11 = MEMORY[0x277CCACA8];
      v8 = [(QLMediaItemViewController *)self stringFromTimeInterval:a4];
      v12 = [(QLMediaItemViewController *)self stringFromTimeInterval:a5];
      v10 = [v11 stringWithFormat:@"%@ / -%@", v8, v12];

      goto LABEL_8;
    case 2:
      v9 = MEMORY[0x277CCACA8];
      v8 = [(QLMediaItemViewController *)self stringFromTimeInterval:a5];
      [v9 stringWithFormat:@"-%@", v8];
      goto LABEL_6;
    case 1:
      v7 = MEMORY[0x277CCACA8];
      v8 = [(QLMediaItemViewController *)self stringFromTimeInterval:a4];
      [v7 stringWithFormat:@" %@", v8];
      v10 = LABEL_6:;
LABEL_8:

      goto LABEL_10;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)stringFromTimeInterval:(double)a3
{
  if (stringFromTimeInterval__onceToken_0 != -1)
  {
    [QLMediaItemViewController stringFromTimeInterval:];
  }

  v4 = &stringFromTimeInterval__hourMinuteSecondFormatter;
  if (a3 < 3600.0)
  {
    v4 = &stringFromTimeInterval__minuteSecondFormatter_0;
  }

  v5 = *v4;

  return [v5 stringFromTimeInterval:a3];
}

uint64_t __52__QLMediaItemViewController_stringFromTimeInterval___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA958]);
  v1 = stringFromTimeInterval__minuteSecondFormatter_0;
  stringFromTimeInterval__minuteSecondFormatter_0 = v0;

  [stringFromTimeInterval__minuteSecondFormatter_0 setAllowedUnits:192];
  [stringFromTimeInterval__minuteSecondFormatter_0 setUnitsStyle:0];
  [stringFromTimeInterval__minuteSecondFormatter_0 setZeroFormattingBehavior:0x10000];
  v2 = objc_alloc_init(MEMORY[0x277CCA958]);
  v3 = stringFromTimeInterval__hourMinuteSecondFormatter;
  stringFromTimeInterval__hourMinuteSecondFormatter = v2;

  [stringFromTimeInterval__hourMinuteSecondFormatter setAllowedUnits:224];
  [stringFromTimeInterval__hourMinuteSecondFormatter setUnitsStyle:0];
  v4 = stringFromTimeInterval__hourMinuteSecondFormatter;

  return [v4 setZeroFormattingBehavior:0x10000];
}

- (id)_playingInfoWithPlaybackDuration:(double)a3 elapsedTime:(double)a4
{
  if (!self->_playingInfo)
  {
    v7 = MEMORY[0x277CD5DE0];
    v8 = [(QLMediaItemBaseViewController *)self mediaAsset];
    v9 = [(QLItemViewController *)self context];
    v10 = [v9 previewTitle];
    v11 = [v7 playingInfoFromAsset:v8 withDefaultTitle:v10];
    v12 = [v11 mutableCopy];
    playingInfo = self->_playingInfo;
    self->_playingInfo = v12;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)self->_playingInfo setObject:v14 forKeyedSubscript:*MEMORY[0x277CD57E8]];

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [(NSMutableDictionary *)self->_playingInfo setObject:v15 forKeyedSubscript:*MEMORY[0x277CD5CC8]];

  v16 = self->_playingInfo;

  return v16;
}

- (void)_registerForCommandCenterHandlers
{
  v7 = [MEMORY[0x277CD6028] sharedCommandCenter];
  v3 = [v7 playCommand];
  [v3 addTarget:self action:sel_userTappedPlayInControlCenter_];

  v4 = [v7 pauseCommand];
  [v4 addTarget:self action:sel_userTappedPauseInControlCenter_];

  v5 = [v7 changePlaybackPositionCommand];
  [v5 addTarget:self action:sel_userScrubbedInControlCenter_];

  v6 = [v7 togglePlayPauseCommand];
  [v6 addTarget:self action:sel_togglePlaybackFromControlCenter_];
}

- (void)_unregisterForCommandCenterHandlers
{
  v7 = [MEMORY[0x277CD6028] sharedCommandCenter];
  v3 = [v7 pauseCommand];
  [v3 removeTarget:self];

  v4 = [v7 playCommand];
  [v4 removeTarget:self];

  v5 = [v7 changePlaybackPositionCommand];
  [v5 removeTarget:self];

  v6 = [v7 togglePlayPauseCommand];
  [v6 removeTarget:self];
}

- (int64_t)userTappedPlayInControlCenter:(id)a3
{
  if ([(QLMediaItemBaseViewController *)self play])
  {
    return 0;
  }

  else
  {
    return 200;
  }
}

- (int64_t)userTappedPauseInControlCenter:(id)a3
{
  if ([(QLMediaItemBaseViewController *)self pause])
  {
    return 0;
  }

  else
  {
    return 200;
  }
}

- (int64_t)userScrubbedInControlCenter:(id)a3
{
  memset(&v14, 0, sizeof(v14));
  [a3 positionTime];
  v5 = v4;
  v6 = [(QLMediaItemBaseViewController *)self player];
  v7 = v6;
  if (v6)
  {
    [v6 currentTime];
    LODWORD(v6) = v12;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  CMTimeMakeWithSeconds(&v14, v5, v6);

  v8 = [(QLMediaItemBaseViewController *)self player];
  v10 = v14;
  [v8 seekToTime:&v10];

  return 0;
}

- (int64_t)togglePlaybackFromControlCenter:(id)a3
{
  if ([(QLMediaItemBaseViewController *)self togglePlayback])
  {
    return 0;
  }

  else
  {
    return 200;
  }
}

- (void)_updateCommandCenterPlayingInfoWithCurrentPlaybackTimeInformation
{
  if ([(QLMediaItemBaseViewController *)self isVisible]&& [(QLMediaItemViewController *)self shouldHandleRegisteringForCommandCenterHandlers])
  {
    v3 = [MEMORY[0x277CD5FE8] defaultCenter];
    [(QLMediaItemBaseViewController *)self mediaDuration];
    v5 = v4;
    [(QLMediaItemBaseViewController *)self elapsedTime];
    v7 = [(QLMediaItemViewController *)self _playingInfoWithPlaybackDuration:v5 elapsedTime:v6];
    [v3 setNowPlayingInfo:v7];

    v10 = [MEMORY[0x277CD5FE8] defaultCenter];
    v8 = [(QLItemViewController *)self presentingDelegate];
    v9 = [v8 parentApplicationDisplayIdentifier];
    [v10 setRepresentedApplicationBundleIdentifier:v9];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_scrubGesture != a3)
  {
    return self->_tapToPlayGesture == a3;
  }

  v4 = [(QLMediaItemBaseViewController *)self player];
  [v4 rate];
  v3 = v5 != 0.0;

  return v3;
}

- (void)tapToPlayGestureChanged:(id)a3
{
  if ([a3 state] == 3)
  {

    [(QLMediaItemBaseViewController *)self togglePlayback];
  }
}

- (id)registeredKeyCommands
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75650] keyCommandWithInput:@" " modifierFlags:0 action:sel_togglePlayback];
  v4 = QLLocalizedString();
  [v3 setDiscoverabilityTitle:v4];

  v5 = [MEMORY[0x277D43F80] keyCommandWithKeyCommand:v3 identifier:4];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v11.receiver = self;
  v11.super_class = QLMediaItemViewController;
  v7 = [(QLItemViewController *)&v11 registeredKeyCommands];
  v8 = [v7 arrayByAddingObjectsFromArray:v6];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)handlePerformedKeyCommandIfNeeded:(id)a3
{
  v4 = a3;
  if ([v4 keyCommandIdentifier] == 4)
  {
    [(QLMediaItemBaseViewController *)self togglePlayback];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = QLMediaItemViewController;
    [(QLItemViewController *)&v5 handlePerformedKeyCommandIfNeeded:v4];
  }
}

- (void)scrubber:(id)a3 didChangeValue:(float)a4
{
  v6 = a3;
  v7 = self->_isSeeking;
  objc_sync_enter(v7);
  v8 = [(NSNumber *)self->_isSeeking BOOLValue];
  objc_sync_exit(v7);

  if (!v8)
  {
    [(QLMediaItemViewController *)self showTimeLabel];
    memset(&v25, 0, sizeof(v25));
    v9 = [(QLMediaItemBaseViewController *)self player];
    v10 = [v9 currentItem];
    v11 = [v10 asset];
    v12 = v11;
    if (v11)
    {
      [v11 duration];
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    memset(&v24, 0, sizeof(v24));
    time = v25;
    CMTimeMultiplyByFloat64(&v24, &time, a4);
    v13 = self->_isSeeking;
    objc_sync_enter(v13);
    isSeeking = self->_isSeeking;
    self->_isSeeking = MEMORY[0x277CBEC38];

    objc_sync_exit(v13);
    objc_initWeak(&location, self);
    v15 = [(QLMediaItemBaseViewController *)self player];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__QLMediaItemViewController_scrubber_didChangeValue___block_invoke;
    v20[3] = &unk_278B58890;
    objc_copyWeak(&v21, &location);
    time = v24;
    v18 = *MEMORY[0x277CC08F0];
    v19 = *(MEMORY[0x277CC08F0] + 16);
    v16 = v18;
    v17 = v19;
    [v15 seekToTime:&time toleranceBefore:&v18 toleranceAfter:&v16 completionHandler:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __53__QLMediaItemViewController_scrubber_didChangeValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = WeakRetained[170];
    objc_sync_enter(v2);
    v3 = v4[170];
    v4[170] = MEMORY[0x277CBEC28];

    objc_sync_exit(v2);
    WeakRetained = v4;
  }
}

@end