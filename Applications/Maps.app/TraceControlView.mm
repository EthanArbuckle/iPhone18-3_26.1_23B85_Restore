@interface TraceControlView
- (BOOL)_isSpanningTwoLines;
- (NSDateComponentsFormatter)timePositionFormatter;
- (TraceControlView)initWithFrame:(CGRect)frame;
- (TraceControlViewDelegate)delegate;
- (unint64_t)_currentPlaySpeedIndex;
- (void)_bookmarksButtonPressed:(id)pressed;
- (void)_ffButtonPressed:(id)pressed;
- (void)_frButtonPressed:(id)pressed;
- (void)_jumpBackButtonPressed:(id)pressed;
- (void)_playButtonPressed:(id)pressed;
- (void)_saveCameraSnapshotButtonPressed:(id)pressed;
- (void)_testLoggingButtonPressed:(id)pressed;
- (void)_viewCameraSnapshotsButtonPressed:(id)pressed;
- (void)layoutSubviews;
- (void)setIsPlaying:(BOOL)playing;
- (void)setPlaySpeed:(double)speed;
- (void)setPosition:(double)position;
@end

@implementation TraceControlView

- (TraceControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_testLoggingButtonPressed:(id)pressed
{
  [(TraceControlView *)self setIsLogging:!self->_isLogging];
  isLogging = [(TraceControlView *)self isLogging];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (isLogging)
  {
    [WeakRetained traceControlViewPressedStartLoggingButton:self];
  }

  else
  {
    [WeakRetained traceControlViewPressedEndLoggingButton:self];
  }
}

- (NSDateComponentsFormatter)timePositionFormatter
{
  timePositionFormatter = self->_timePositionFormatter;
  if (!timePositionFormatter)
  {
    v4 = objc_alloc_init(NSDateComponentsFormatter);
    v5 = self->_timePositionFormatter;
    self->_timePositionFormatter = v4;

    [(NSDateComponentsFormatter *)self->_timePositionFormatter setZeroFormattingBehavior:0];
    [(NSDateComponentsFormatter *)self->_timePositionFormatter setUnitsStyle:0];
    timePositionFormatter = self->_timePositionFormatter;
  }

  return timePositionFormatter;
}

- (void)setPosition:(double)position
{
  if (self->_useDistanceAsPosition)
  {
    distancePositionFormatter = self->_distancePositionFormatter;
    if (!distancePositionFormatter)
    {
      v6 = objc_alloc_init(NSNumberFormatter);
      v7 = self->_distancePositionFormatter;
      self->_distancePositionFormatter = v6;

      [(NSNumberFormatter *)self->_distancePositionFormatter setFormatterBehavior:1];
      [(NSNumberFormatter *)self->_distancePositionFormatter setNumberStyle:1];
      [(NSNumberFormatter *)self->_distancePositionFormatter setMaximumFractionDigits:0];
      distancePositionFormatter = self->_distancePositionFormatter;
    }

    timePositionFormatter2 = [NSNumber numberWithDouble:position];
    v8 = [(NSNumberFormatter *)distancePositionFormatter stringFromNumber:?];
    v9 = [NSString stringWithFormat:@"%@m", v8];
    [(UILabel *)self->_positionLabel setText:v9];
  }

  else
  {
    v10 = floor(position);
    if (v10 == self->_lastPositionInLabel)
    {
      return;
    }

    self->_lastPositionInLabel = v10;
    if (v10 >= 3600.0)
    {
      v11 = 224;
    }

    else
    {
      v11 = 192;
    }

    timePositionFormatter = [(TraceControlView *)self timePositionFormatter];
    [timePositionFormatter setAllowedUnits:v11];

    timePositionFormatter2 = [(TraceControlView *)self timePositionFormatter];
    v8 = [timePositionFormatter2 stringFromTimeInterval:v10];
    [(UILabel *)self->_positionLabel setText:v8];
  }
}

- (void)setPlaySpeed:(double)speed
{
  self->_playSpeed = speed;
  if (speed == 1.0)
  {
    v4 = @"     ";
  }

  else
  {
    if (vabdd_f64(speed, (speed + 0.05)) >= 0.1)
    {
      [NSString stringWithFormat:@"%.1fx", *&speed];
    }

    else
    {
      [NSString stringWithFormat:@"%dx", (speed + 0.05)];
    }
    v4 = ;
  }

  v5 = v4;
  [(UIButton *)self->_ffButton setTitle:v4 forState:0];
}

- (void)_viewCameraSnapshotsButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained traceControlViewPressedViewCameraSnapshotsButton:self];
}

- (void)_saveCameraSnapshotButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained traceControlViewPressedSaveCameraSnapshotButton:self];
}

- (void)_bookmarksButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained traceControlViewPressedBookmarksButton:self];
}

- (void)_ffButtonPressed:(id)pressed
{
  _currentPlaySpeedIndex = [(TraceControlView *)self _currentPlaySpeedIndex];
  v5 = 10;
  if (_currentPlaySpeedIndex + 1 < 0xA)
  {
    v5 = _currentPlaySpeedIndex + 1;
  }

  v6 = dbl_101213348[v5];
  if (v6 != self->_playSpeed)
  {
    [(TraceControlView *)self setPlaySpeed:v6];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained traceControlView:self setPlaySpeed:v6];
  }
}

- (void)_frButtonPressed:(id)pressed
{
  _currentPlaySpeedIndex = [(TraceControlView *)self _currentPlaySpeedIndex];
  v5 = _currentPlaySpeedIndex - 1;
  if (!_currentPlaySpeedIndex)
  {
    v5 = 0;
  }

  v6 = dbl_101213348[v5];
  if (v6 != self->_playSpeed)
  {
    [(TraceControlView *)self setPlaySpeed:v6];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained traceControlView:self setPlaySpeed:v6];
  }
}

- (unint64_t)_currentPlaySpeedIndex
{
  for (i = 0; i != 11; ++i)
  {
    if (self->_playSpeed <= dbl_101213348[i])
    {
      break;
    }
  }

  if (i >= 0xA)
  {
    return 10;
  }

  else
  {
    return i;
  }
}

- (void)setIsPlaying:(BOOL)playing
{
  self->_isPlaying = playing;
  if (playing)
  {
    v4 = @"MN-pause.png";
  }

  else
  {
    v4 = @"MN-play.png";
  }

  v5 = [UIImage imageNamed:v4];
  [(UIButton *)self->_playButton setImage:v5 forState:0];
}

- (void)_playButtonPressed:(id)pressed
{
  [(TraceControlView *)self setIsPlaying:!self->_isPlaying];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained traceControlView:self setPlaying:self->_isPlaying];
}

- (void)_jumpBackButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained traceControlViewJumpedBack:self];
}

- (BOOL)_isSpanningTwoLines
{
  superview = [(UIStackView *)self->_secondLineStack superview];
  if (superview)
  {
    v4 = [(UIStackView *)self->_secondLineStack isHidden]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = TraceControlView;
  [(TraceControlView *)&v47 layoutSubviews];
  _shouldSpanTwoLines = [(TraceControlView *)self _shouldSpanTwoLines];
  if (_shouldSpanTwoLines != [(TraceControlView *)self _isSpanningTwoLines])
  {
    if (_shouldSpanTwoLines)
    {
      superview = [(UIStackView *)self->_secondLineStack superview];

      if (!superview)
      {
        v5 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        secondLineStack = self->_secondLineStack;
        self->_secondLineStack = v5;

        [(UIStackView *)self->_secondLineStack setAxis:0];
        [(UIStackView *)self->_secondLineStack setDistribution:4];
        [(UIStackView *)self->_secondLineStack setAlignment:3];
        [(UIStackView *)self->_secondLineStack setSpacing:0.0];
        [(UIStackView *)self->_secondLineStack setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIStackView *)self->_secondLineStack setHidden:1];
        [(TraceControlView *)self addSubview:self->_secondLineStack];
        v7 = objc_alloc_init(NSMutableArray);
        leadingAnchor = [(UIStackView *)self->_secondLineStack leadingAnchor];
        leadingAnchor2 = [(UIStackView *)self->_firstLineStack leadingAnchor];
        v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        [v7 addObject:v10];

        trailingAnchor = [(UIStackView *)self->_secondLineStack trailingAnchor];
        trailingAnchor2 = [(UIStackView *)self->_firstLineStack trailingAnchor];
        v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        [v7 addObject:v13];

        topAnchor = [(UIStackView *)self->_secondLineStack topAnchor];
        bottomAnchor = [(UIStackView *)self->_firstLineStack bottomAnchor];
        v16 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:8.0];
        [v7 addObject:v16];

        [NSLayoutConstraint activateConstraints:v7];
        bottomAnchor2 = [(UIStackView *)self->_secondLineStack bottomAnchor];
        bottomAnchor3 = [(TraceControlView *)self bottomAnchor];
        v19 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
        secondLineBottomToBottomConstraint = self->_secondLineBottomToBottomConstraint;
        self->_secondLineBottomToBottomConstraint = v19;
      }

      v21 = objc_alloc_init(NSMutableArray);
      v22 = v21;
      if (self->_viewCameraSnapshotsButton)
      {
        [v21 addObject:?];
      }

      if (self->_saveCameraSnapshotButton)
      {
        [v22 addObject:?];
      }

      if (self->_jumpBackButton)
      {
        [v22 addObject:?];
      }

      if (self->_testLoggingButton)
      {
        [v22 addObject:?];
      }

      if (self->_positionLabel)
      {
        [v22 addObject:?];
      }

      if (self->_bookmarksButton)
      {
        [v22 addObject:?];
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v44;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v43 + 1) + 8 * i);
            [v28 removeFromSuperview];
            [(UIStackView *)self->_secondLineStack addArrangedSubview:v28];
          }

          v25 = [v23 countByEnumeratingWithState:&v43 objects:v49 count:16];
        }

        while (v25);
      }

      [(NSLayoutConstraint *)self->_firstLineBottomToBottomConstraint setActive:0];
      [(NSLayoutConstraint *)self->_secondLineBottomToBottomConstraint setActive:1];
    }

    else
    {
      v29 = objc_alloc_init(NSMutableArray);
      v30 = objc_alloc_init(NSMutableArray);
      if (self->_viewCameraSnapshotsButton)
      {
        [v29 addObject:?];
      }

      if (self->_saveCameraSnapshotButton)
      {
        [v29 addObject:?];
      }

      if (self->_jumpBackButton)
      {
        [v29 addObject:?];
      }

      if (self->_testLoggingButton)
      {
        [v30 addObject:?];
      }

      if (self->_positionLabel)
      {
        [v30 addObject:?];
      }

      if (self->_bookmarksButton)
      {
        [v30 addObject:?];
      }

      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1006F40C0;
      v42[3] = &unk_1016604D8;
      v42[4] = self;
      [v29 enumerateObjectsUsingBlock:v42];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v39;
        do
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v39 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v38 + 1) + 8 * j);
            [v36 removeFromSuperview];
            [(UIStackView *)self->_firstLineStack addArrangedSubview:v36];
          }

          v33 = [v31 countByEnumeratingWithState:&v38 objects:v48 count:16];
        }

        while (v33);
      }

      [(NSLayoutConstraint *)self->_secondLineBottomToBottomConstraint setActive:0];
      [(NSLayoutConstraint *)self->_firstLineBottomToBottomConstraint setActive:1];
    }

    [(UIStackView *)self->_secondLineStack setHidden:_shouldSpanTwoLines ^ 1];
    v37.receiver = self;
    v37.super_class = TraceControlView;
    [(TraceControlView *)&v37 layoutSubviews];
  }
}

- (TraceControlView)initWithFrame:(CGRect)frame
{
  v83.receiver = self;
  v83.super_class = TraceControlView;
  v3 = [(TraceControlView *)&v83 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TraceControlView *)v3 setBackgroundColor:v4];

    v3->_playSpeed = 1.0;
    v5 = [UIStackView alloc];
    [(TraceControlView *)v3 bounds];
    v6 = [v5 initWithFrame:?];
    firstLineStack = v3->_firstLineStack;
    v3->_firstLineStack = v6;

    [(UIStackView *)v3->_firstLineStack setAxis:0];
    [(UIStackView *)v3->_firstLineStack setDistribution:4];
    [(UIStackView *)v3->_firstLineStack setAlignment:3];
    [(UIStackView *)v3->_firstLineStack setSpacing:0.0];
    [(UIStackView *)v3->_firstLineStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TraceControlView *)v3 addSubview:v3->_firstLineStack];
    v8 = [UIButton buttonWithType:1];
    viewCameraSnapshotsButton = v3->_viewCameraSnapshotsButton;
    v3->_viewCameraSnapshotsButton = v8;

    [(UIButton *)v3->_viewCameraSnapshotsButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = v3->_viewCameraSnapshotsButton;
    v11 = [UIImage imageNamed:@"navigation-view-snapshots"];
    v12 = [v11 imageWithRenderingMode:2];
    [(UIButton *)v10 setImage:v12 forState:0];

    [(UIButton *)v3->_viewCameraSnapshotsButton addTarget:v3 action:"_viewCameraSnapshotsButtonPressed:" forControlEvents:64];
    v13 = +[UIColor whiteColor];
    [(UIButton *)v3->_viewCameraSnapshotsButton setTintColor:v13];

    [(UIStackView *)v3->_firstLineStack addArrangedSubview:v3->_viewCameraSnapshotsButton];
    v14 = [UIButton buttonWithType:1];
    saveCameraSnapshotButton = v3->_saveCameraSnapshotButton;
    v3->_saveCameraSnapshotButton = v14;

    [(UIButton *)v3->_saveCameraSnapshotButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = v3->_saveCameraSnapshotButton;
    v17 = [UIImage imageNamed:@"navigation-save-snapshot"];
    v18 = [v17 imageWithRenderingMode:2];
    [(UIButton *)v16 setImage:v18 forState:0];

    [(UIButton *)v3->_saveCameraSnapshotButton addTarget:v3 action:"_saveCameraSnapshotButtonPressed:" forControlEvents:64];
    v19 = +[UIColor whiteColor];
    [(UIButton *)v3->_saveCameraSnapshotButton setTintColor:v19];

    LODWORD(v20) = 1140129792;
    [(UIButton *)v3->_saveCameraSnapshotButton setContentCompressionResistancePriority:0 forAxis:v20];
    [(UIStackView *)v3->_firstLineStack addArrangedSubview:v3->_saveCameraSnapshotButton];
    v21 = [UIButton buttonWithType:0];
    jumpBackButton = v3->_jumpBackButton;
    v3->_jumpBackButton = v21;

    [(UIButton *)v3->_jumpBackButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = v3->_jumpBackButton;
    v24 = [UIImage imageNamed:@"MN-skipback.png"];
    [(UIButton *)v23 setImage:v24 forState:0];

    [(UIButton *)v3->_jumpBackButton addTarget:v3 action:"_jumpBackButtonPressed:" forControlEvents:64];
    LODWORD(v25) = 1140785152;
    [(UIButton *)v3->_jumpBackButton setContentCompressionResistancePriority:0 forAxis:v25];
    [(UIStackView *)v3->_firstLineStack addArrangedSubview:v3->_jumpBackButton];
    v26 = [UIButton buttonWithType:0];
    frButton = v3->_frButton;
    v3->_frButton = v26;

    [(UIButton *)v3->_frButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [UIImage imageNamed:@"MN-fastforward.png"];
    v82 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v28 CGImage], 4, 1.0);

    [(UIButton *)v3->_frButton setImage:v82 forState:0];
    titleLabel = [(UIButton *)v3->_frButton titleLabel];
    [titleLabel setTextAlignment:4];

    v30 = [UIFont boldSystemFontOfSize:10.0];
    titleLabel2 = [(UIButton *)v3->_frButton titleLabel];
    [titleLabel2 setFont:v30];

    v32 = +[UIColor whiteColor];
    titleLabel3 = [(UIButton *)v3->_frButton titleLabel];
    [titleLabel3 setTextColor:v32];

    [(UIButton *)v3->_frButton addTarget:v3 action:"_frButtonPressed:" forControlEvents:64];
    LODWORD(v34) = 1135509504;
    [(UIButton *)v3->_frButton setContentCompressionResistancePriority:0 forAxis:v34];
    [(UIStackView *)v3->_firstLineStack addArrangedSubview:v3->_frButton];
    v35 = [UIButton buttonWithType:0];
    playButton = v3->_playButton;
    v3->_playButton = v35;

    [(UIButton *)v3->_playButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = v3->_playButton;
    v38 = [UIImage imageNamed:@"MN-pause.png"];
    [(UIButton *)v37 setImage:v38 forState:0];

    [(UIButton *)v3->_playButton addTarget:v3 action:"_playButtonPressed:" forControlEvents:64];
    LODWORD(v39) = 1144766464;
    [(UIButton *)v3->_playButton setContentCompressionResistancePriority:0 forAxis:v39];
    [(UIStackView *)v3->_firstLineStack addArrangedSubview:v3->_playButton];
    v40 = [UIButton buttonWithType:0];
    ffButton = v3->_ffButton;
    v3->_ffButton = v40;

    [(UIButton *)v3->_ffButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v42 = v3->_ffButton;
    v43 = [UIImage imageNamed:@"MN-fastforward.png"];
    [(UIButton *)v42 setImage:v43 forState:0];

    [(UIButton *)v3->_ffButton setTitle:@" " forState:0];
    v44 = [UIFont boldSystemFontOfSize:10.0];
    titleLabel4 = [(UIButton *)v3->_ffButton titleLabel];
    [titleLabel4 setFont:v44];

    v46 = +[UIColor whiteColor];
    titleLabel5 = [(UIButton *)v3->_ffButton titleLabel];
    [titleLabel5 setTextColor:v46];

    [(UIButton *)v3->_ffButton addTarget:v3 action:"_ffButtonPressed:" forControlEvents:64];
    LODWORD(v48) = 1135575040;
    [(UIButton *)v3->_ffButton setContentCompressionResistancePriority:0 forAxis:v48];
    [(UIStackView *)v3->_firstLineStack addArrangedSubview:v3->_ffButton];
    v3->_useDistanceAsPosition = 0;
    v49 = objc_alloc_init(UILabel);
    positionLabel = v3->_positionLabel;
    v3->_positionLabel = v49;

    [(UILabel *)v3->_positionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v51 = [UIFont boldSystemFontOfSize:13.0];
    [(UILabel *)v3->_positionLabel setFont:v51];

    v52 = +[UIColor whiteColor];
    [(UILabel *)v3->_positionLabel setTextColor:v52];

    [(UILabel *)v3->_positionLabel setText:0];
    LODWORD(v53) = 1132134400;
    [(UILabel *)v3->_positionLabel setContentCompressionResistancePriority:0 forAxis:v53];
    [(UIStackView *)v3->_firstLineStack addArrangedSubview:v3->_positionLabel];
    v54 = [UIButton buttonWithType:0];
    bookmarksButton = v3->_bookmarksButton;
    v3->_bookmarksButton = v54;

    [(UIButton *)v3->_bookmarksButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = v3->_bookmarksButton;
    v57 = [UIImage imageNamed:@"MN-Bookmark.png"];
    [(UIButton *)v56 setImage:v57 forState:0];

    [(UIButton *)v3->_bookmarksButton addTarget:v3 action:"_bookmarksButtonPressed:" forControlEvents:64];
    LODWORD(v58) = 1132593152;
    [(UIButton *)v3->_bookmarksButton setContentCompressionResistancePriority:0 forAxis:v58];
    [(UIStackView *)v3->_firstLineStack addArrangedSubview:v3->_bookmarksButton];
    arrangedSubviews = [(UIStackView *)v3->_firstLineStack arrangedSubviews];
    v3->_numberOfControls = [arrangedSubviews count];

    v60 = objc_alloc_init(NSMutableArray);
    centerXAnchor = [(UIStackView *)v3->_firstLineStack centerXAnchor];
    centerXAnchor2 = [(TraceControlView *)v3 centerXAnchor];
    v63 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v60 addObject:v63];

    widthAnchor = [(UIStackView *)v3->_firstLineStack widthAnchor];
    v65 = [widthAnchor constraintLessThanOrEqualToConstant:v3->_numberOfControls * 88.0];
    [v60 addObject:v65];

    leadingAnchor = [(UIStackView *)v3->_firstLineStack leadingAnchor];
    leadingAnchor2 = [(TraceControlView *)v3 leadingAnchor];
    v68 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];

    LODWORD(v69) = 1148829696;
    [v68 setPriority:v69];
    [v60 addObject:v68];
    trailingAnchor = [(TraceControlView *)v3 trailingAnchor];
    trailingAnchor2 = [(UIStackView *)v3->_firstLineStack trailingAnchor];
    v72 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:12.0];

    LODWORD(v73) = 1148829696;
    [v72 setPriority:v73];
    [v60 addObject:v72];
    topAnchor = [(UIStackView *)v3->_firstLineStack topAnchor];
    topAnchor2 = [(TraceControlView *)v3 topAnchor];
    v76 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v60 addObject:v76];

    bottomAnchor = [(UIStackView *)v3->_firstLineStack bottomAnchor];
    bottomAnchor2 = [(TraceControlView *)v3 bottomAnchor];
    v79 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    firstLineBottomToBottomConstraint = v3->_firstLineBottomToBottomConstraint;
    v3->_firstLineBottomToBottomConstraint = v79;

    [v60 addObject:v3->_firstLineBottomToBottomConstraint];
    [NSLayoutConstraint activateConstraints:v60];
  }

  return v3;
}

@end