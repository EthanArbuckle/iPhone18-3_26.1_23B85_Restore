@interface MTATimerControlsView
+ (double)barWidthForStyle:(unint64_t)style;
+ (double)estimatedCountdownViewHeight;
+ (double)estimatedNonCountdownElementHeightWithSpacing;
+ (double)estimatedTonePickerHeight;
+ (double)estimatedViewHeight;
- (BOOL)isIpadAddSheet;
- (BOOL)isRunningInThirdSplitView;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (MTATimerControlsView)initWithDelegate:(id)delegate style:(unint64_t)style timerControlState:(unint64_t)state;
- (TimerControlsTarget)delegate;
- (double)compactSizeFont;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)displayTitle;
- (id)iPadSingleCellNewTimerConstraints;
- (id)setupCollectionViewConstraints;
- (id)setupCompactNewTimerConstraints;
- (id)setupMultipleTimerConstraints;
- (id)setupSingleTimerConstraints;
- (id)styleSpecificConstraints;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addLayoutGuide:(id)guide;
- (void)_configureAndAddButton:(id)button;
- (void)applyBackgroundColor:(id)color;
- (void)buildTableRowsWithStyle:(unint64_t)style;
- (void)deleteRecent;
- (void)greyOutExpectedTime;
- (void)handleContentSizeChange;
- (void)handleLocaleChange;
- (void)hideExpectedTime;
- (void)layoutSubviews;
- (void)pauseResumeTimer;
- (void)pickerView:(id)view didChangeSelectedDuration:(double)duration;
- (void)processCountdownState:(unint64_t)state previousState:(unint64_t)previousState remainingTime:(double)time duration:(double)duration forceRefresh:(BOOL)refresh;
- (void)resetLayout;
- (void)resetLayoutGuides;
- (void)setButtonControlViewsHidden:(BOOL)hidden;
- (void)setButtonSize:(unint64_t)size;
- (void)setControlsViewDelegate:(id)delegate;
- (void)setCountDownDuration:(double)duration;
- (void)setDurationTime:(double)time title:(id)title;
- (void)setRemainingTime:(double)time duration:(double)duration state:(unint64_t)state title:(id)title forceRefresh:(BOOL)refresh;
- (void)setState:(unint64_t)state animate:(BOOL)animate;
- (void)setStyle:(unint64_t)style forceRefresh:(BOOL)refresh;
- (void)setTime:(double)time;
- (void)setTimerControlState:(unint64_t)state;
- (void)setTimerToneName:(id)name;
- (void)setupCellButtons;
- (void)setupConstraints;
- (void)setupTimeView;
- (void)setupTimerNameLabelForTimerStyle:(unint64_t)style withFontStyle:(id)fontStyle;
- (void)showExpectedTimeWithRemainingTime:(double)time;
- (void)startRecent;
- (void)stopTimer;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)updatePauseResumeButtonWithState:(unint64_t)state;
@end

@implementation MTATimerControlsView

- (MTATimerControlsView)initWithDelegate:(id)delegate style:(unint64_t)style timerControlState:(unint64_t)state
{
  delegateCopy = delegate;
  v73.receiver = self;
  v73.super_class = MTATimerControlsView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(MTATimerControlsView *)&v73 initWithFrame:CGRectZero.origin.x, y, width, height];
  v13 = height;
  if (height)
  {
    objc_storeWeak(&height->_delegate, delegateCopy);
    [(MTATimerControlsView *)v13 setTimerControlState:state];
    v14 = [[MTATimerButtonsController alloc] initWithTarget:delegateCopy];
    buttonsController = v13->_buttonsController;
    v13->_buttonsController = v14;

    [(MTATimerControlsView *)v13 buildTableRowsWithStyle:style];
    v16 = +[NSMutableArray array];
    layoutGuides = v13->_layoutGuides;
    v13->_layoutGuides = v16;

    v18 = [UIColor colorWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.32];
    v19 = +[UIColor systemOrangeColor];
    v20 = [MTUITimerCountdownView alloc];
    [objc_opt_class() barWidthForStyle:style];
    v72 = v19;
    v21 = [v20 initWithBarColor:v19 backgroundBarColor:v18 barWidth:?];
    countdownView = v13->_countdownView;
    v13->_countdownView = v21;

    [(MTATimerControlsView *)v13 addSubview:v13->_countdownView];
    [(MTUITimerCountdownView *)v13->_countdownView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (style - 3 > 4)
    {
      v23 = &UIFontTextStyleTitle3;
    }

    else
    {
      v23 = *(&off_1000AE488 + style - 3);
    }

    v24 = *v23;
    [(MTATimerControlsView *)v13 setupTimerNameLabelForTimerStyle:style withFontStyle:v24];
    v25 = [MTUIGlyphTimeView alloc];
    v26 = [UIFont preferredFontForTextStyle:v24];
    v27 = +[UIColor mtui_secondaryTextColor];
    v28 = [v25 initWithFont:v26 textColor:v27 glyphName:@"bell.fill" style:style];
    expectedTimeView = v13->_expectedTimeView;
    v13->_expectedTimeView = v28;

    [(MTATimerControlsView *)v13 addSubview:v13->_expectedTimeView];
    [(MTUIGlyphTimeView *)v13->_expectedTimeView setTranslatesAutoresizingMaskIntoConstraints:0];
    height2 = [[MTATimerIntervalPickerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    timePicker = v13->_timePicker;
    v13->_timePicker = height2;

    [(MTATimerIntervalPickerView *)v13->_timePicker setDelegate:v13];
    [(MTATimerControlsView *)v13 addSubview:v13->_timePicker];
    v32 = +[UIColor clearColor];
    [(MTATimerIntervalPickerView *)v13->_timePicker setBackgroundColor:v32];

    [(MTATimerIntervalPickerView *)v13->_timePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [[MTATimerPickerCell alloc] initWithPicker:v13->_timePicker timeView:v13->_timeView expectedTimeView:v13->_expectedTimeView countdownView:v13->_countdownView reuseIdentifier:@"PICKER"];
    pickerCell = v13->_pickerCell;
    v13->_pickerCell = v33;

    v35 = [[MTATimerTonePickerCell alloc] initWithStyle:1 reuseIdentifier:@"TONE"];
    toneChooserCell = v13->_toneChooserCell;
    v13->_toneChooserCell = &v35->super.super;

    v37 = sub_100043B4C();
    textLabel = [(UITableViewCell *)v13->_toneChooserCell textLabel];
    [textLabel setFont:v37];

    detailTextLabel = [(UITableViewCell *)v13->_toneChooserCell detailTextLabel];
    [detailTextLabel setFont:v37];

    [(UITableViewCell *)v13->_toneChooserCell setAccessoryType:1];
    v40 = +[UIColor mtui_primaryTextColor];
    textLabel2 = [(UITableViewCell *)v13->_toneChooserCell textLabel];
    [textLabel2 setTextColor:v40];

    v42 = +[UIColor mtui_secondaryTextColor];
    detailTextLabel2 = [(UITableViewCell *)v13->_toneChooserCell detailTextLabel];
    [detailTextLabel2 setTextColor:v42];

    v44 = v13->_toneChooserCell;
    v45 = +[UIColor mtui_cellHighlightColor];
    [(UITableViewCell *)v44 setSelectedBackgroundColor:v45];

    v46 = +[NSBundle mainBundle];
    v47 = [v46 localizedStringForKey:@"WHEN_TIMER_ENDS" value:&stru_1000AEF10 table:0];
    textLabel3 = [(UITableViewCell *)v13->_toneChooserCell textLabel];
    [textLabel3 setText:v47];

    textLabel4 = [(UITableViewCell *)v13->_toneChooserCell textLabel];
    [textLabel4 setAdjustsFontForContentSizeCategory:1];

    textLabel5 = [(UITableViewCell *)v13->_toneChooserCell textLabel];
    [textLabel5 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

    detailTextLabel3 = [(UITableViewCell *)v13->_toneChooserCell detailTextLabel];
    [detailTextLabel3 setAdjustsFontForContentSizeCategory:1];

    detailTextLabel4 = [(UITableViewCell *)v13->_toneChooserCell detailTextLabel];
    [detailTextLabel4 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

    [(UITableViewCell *)v13->_toneChooserCell setSeparatorInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v53 = [MTALabelEditCell alloc];
    displayTitle = [(MTATimerControlsView *)v13 displayTitle];
    getCurrentLabel = [(MTATimerControlsView *)v13 getCurrentLabel];
    v56 = -[MTALabelEditCell initWithDelegate:currentTitle:isEmpty:](v53, "initWithDelegate:currentTitle:isEmpty:", delegateCopy, displayTitle, [getCurrentLabel length] == 0);
    editLabelCell = v13->_editLabelCell;
    v13->_editLabelCell = v56;

    v58 = v13->_editLabelCell;
    v59 = +[UIColor mtui_buttonBackgroundColor];
    [(MTALabelEditCell *)v58 setBackgroundColor:v59];

    v60 = v13->_editLabelCell;
    v61 = sub_100043B4C();
    [(MTALabelEditCell *)v60 setFont:v61];

    v62 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, y, width, height}];
    tableView = v13->_tableView;
    v13->_tableView = v62;

    [(UITableView *)v13->_tableView setDataSource:v13];
    [(UITableView *)v13->_tableView setDelegate:v13];
    [(UITableView *)v13->_tableView setScrollEnabled:0];
    [(UITableView *)v13->_tableView setLayoutMarginsFollowReadableWidth:1];
    [(UITableView *)v13->_tableView setEstimatedRowHeight:52.0];
    [(UITableView *)v13->_tableView setRowHeight:52.0];
    [(MTATimerControlsView *)v13 addSubview:v13->_tableView];
    [(UITableView *)v13->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    traitCollection = [(MTATimerControlsView *)v13 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    v66 = v65;
    layer = [(UITableView *)v13->_tableView layer];
    [layer setCornerRadius:v66];

    [(MTATimerControlsView *)v13 setState:1 animate:0];
    [(MTATimerControlsView *)v13 setStyle:style];
    [(MTATimerControlsView *)v13 setupTimeView];
    v68 = +[NSNotificationCenter defaultCenter];
    [v68 addObserver:v13 selector:"handleLocaleChange" name:NSCurrentLocaleDidChangeNotification object:0];

    v69 = MTCurrentDateProvider();
    currentDateProvider = v13->_currentDateProvider;
    v13->_currentDateProvider = v69;

    if (MTIdiomIpad() && style <= 4 && ((1 << style) & 0x1A) != 0)
    {
      [(MTATimerControlsView *)v13 setupConstraints];
    }
  }

  return v13;
}

+ (double)barWidthForStyle:(unint64_t)style
{
  result = 8.0;
  if ((style & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    return 6.0;
  }

  return result;
}

- (id)displayTitle
{
  getCurrentLabel = [(MTATimerControlsView *)self getCurrentLabel];
  v3 = getCurrentLabel;
  if (getCurrentLabel && [getCurrentLabel length])
  {
    v4 = v3;
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v4 = [v5 localizedStringForKey:@"Timer" value:&stru_1000AEF10 table:0];
  }

  return v4;
}

- (void)setControlsViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(MTATimerControlsView *)self setDelegate:delegateCopy];
  [(MTATimerButtonsController *)self->_buttonsController setTarget:delegateCopy];
  [(MTALabelEditCell *)self->_editLabelCell setDelegate:delegateCopy];
}

- (void)buildTableRowsWithStyle:(unint64_t)style
{
  v4 = objc_opt_new();
  [(MTATimerControlsView *)self setTableRows:v4];

  tableRows = [(MTATimerControlsView *)self tableRows];
  [tableRows addObject:&off_1000B18D8];

  tableRows2 = [(MTATimerControlsView *)self tableRows];
  [tableRows2 addObject:&off_1000B18F0];
}

- (void)applyBackgroundColor:(id)color
{
  countdownView = self->_countdownView;
  colorCopy = color;
  [(MTUITimerCountdownView *)countdownView setBackgroundColor:colorCopy];
  [(MTATimerPickerCell *)self->_pickerCell setBackgroundColor:colorCopy];
  [(MTATimerIntervalPickerView *)self->_timePicker setBackgroundColor:colorCopy];
  [(MTATimerControlsView *)self setBackgroundColor:colorCopy];
  [(MTALabelEditCell *)self->_editLabelCell setBackgroundColor:colorCopy];
  [(UITableView *)self->_tableView setBackgroundColor:colorCopy];
  [(UITableViewCell *)self->_toneChooserCell setBackgroundColor:colorCopy];
}

- (void)setupTimeView
{
  v3 = objc_alloc_init(UILabel);
  timeView = self->_timeView;
  self->_timeView = v3;

  [(MTATimerControlsView *)self addSubview:self->_timeView];
  [(UILabel *)self->_timeView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_timeView;
  v6 = +[UIColor clearColor];
  [(UILabel *)v5 setBackgroundColor:v6];

  style = [(MTATimerControlsView *)self style];
  v8 = self->_timeView;
  if (style == 7)
  {
    +[UIColor mtui_secondaryTextColor];
  }

  else
  {
    +[UIColor mtui_primaryTextColor];
  }
  v9 = ;
  [(UILabel *)v8 setTextColor:v9];

  [(UILabel *)self->_timeView setTextAlignment:1];
  [(UILabel *)self->_timeView setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_timeView setBaselineAdjustment:1];
  v10 = self->_timeView;

  [(UILabel *)v10 setLineBreakMode:2];
}

- (void)setupTimerNameLabelForTimerStyle:(unint64_t)style withFontStyle:(id)fontStyle
{
  fontStyleCopy = fontStyle;
  v7 = objc_alloc_init(UILabel);
  timerNameLabel = self->_timerNameLabel;
  self->_timerNameLabel = v7;

  [(MTATimerControlsView *)self addSubview:self->_timerNameLabel];
  [(UILabel *)self->_timerNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [UIFont preferredFontForTextStyle:fontStyleCopy];

  [(UILabel *)self->_timerNameLabel setFont:v9];
  v10 = self->_timerNameLabel;
  v11 = +[UIColor clearColor];
  [(UILabel *)v10 setBackgroundColor:v11];

  v12 = self->_timerNameLabel;
  v13 = +[UIColor mtui_secondaryTextColor];
  [(UILabel *)v12 setTextColor:v13];

  [(UILabel *)self->_timerNameLabel setTextAlignment:1];
  [(UILabel *)self->_timerNameLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_timerNameLabel setBaselineAdjustment:1];
  [(UILabel *)self->_timerNameLabel setLineBreakMode:2];
  if ((style & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    [(UILabel *)self->_timerNameLabel setAdjustsFontForContentSizeCategory:1];
    v14 = self->_timerNameLabel;

    [(UILabel *)v14 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  }
}

- (void)handleContentSizeChange
{
  [(MTATimerControlsView *)self setNeedsLayout];
  [(MTATimerControlsView *)self setupConstraints];
  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)resetLayout
{
  [(MTATimerControlsView *)self setupConstraints];
  [(UITableView *)self->_tableView reloadData];

  [(MTATimerControlsView *)self setNeedsLayout];
}

- (void)setRemainingTime:(double)time duration:(double)duration state:(unint64_t)state title:(id)title forceRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  titleCopy = title;
  [(MTATimerControlsView *)self processCountdownState:state previousState:[(MTATimerControlsView *)self state] remainingTime:refreshCopy duration:time forceRefresh:duration];
  if (self->_state != state)
  {
    [(MTATimerControlsView *)self setState:state];
  }

  [(MTALabelEditCell *)self->_editLabelCell setCurrentTitle:titleCopy];
  [(UILabel *)self->_timerNameLabel setText:titleCopy];
}

- (void)setDurationTime:(double)time title:(id)title
{
  countdownView = self->_countdownView;
  titleCopy = title;
  [(MTUITimerCountdownView *)countdownView stop];
  [(UILabel *)self->_timerNameLabel setText:titleCopy];

  [(MTATimerControlsView *)self setTime:time];
}

- (void)processCountdownState:(unint64_t)state previousState:(unint64_t)previousState remainingTime:(double)time duration:(double)duration forceRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  [(MTUITimerCountdownView *)self->_countdownView duration];
  v14 = v13;
  if (state == previousState && v13 == duration && !refreshCopy && ![(MTATimerControlsView *)self stateNeedsReset])
  {
    return;
  }

  [(MTUITimerCountdownView *)self->_countdownView setAnimationRemainingTime:time totalTime:duration];
  [(MTUITimerCountdownView *)self->_countdownView setNeedsLayout];
  if (state == 1)
  {
    [(MTATimerControlsView *)self hideExpectedTime];
    [(MTUITimerCountdownView *)self->_countdownView stop];
    if (previousState != 3)
    {
      return;
    }

    selfCopy2 = self;
    v16 = 2;
    goto LABEL_20;
  }

  if (state != 3)
  {
    if (state != 2)
    {
      return;
    }

    if (previousState == 3)
    {
      [(MTUITimerCountdownView *)self->_countdownView pause];
    }

    [(MTATimerControlsView *)self showExpectedTimeWithRemainingTime:time];
    [(MTATimerControlsView *)self greyOutExpectedTime];
    selfCopy2 = self;
    v16 = 1;
LABEL_20:

    [(MTATimerControlsView *)selfCopy2 setTimerControlState:v16];
    return;
  }

  [(MTATimerControlsView *)self showExpectedTimeWithRemainingTime:time];
  [(MTATimerControlsView *)self setTimerControlState:1];
  if (previousState == 3 && !refreshCopy)
  {
    if (v14 == duration)
    {
      if ([(MTATimerControlsView *)self stateNeedsReset])
      {
        [(MTUITimerCountdownView *)self->_countdownView start];

        [(MTATimerControlsView *)self setStateNeedsReset:0];
      }

      return;
    }

    goto LABEL_31;
  }

  if (previousState == 1 || previousState == 3)
  {
LABEL_31:
    countdownView = self->_countdownView;
LABEL_32:

    [(MTUITimerCountdownView *)countdownView start];
    return;
  }

  if (previousState != 2)
  {
    return;
  }

  isStarted = [(MTUITimerCountdownView *)self->_countdownView isStarted];
  countdownView = self->_countdownView;
  if (!isStarted)
  {
    goto LABEL_32;
  }

  [(MTUITimerCountdownView *)countdownView resume];
}

- (void)showExpectedTimeWithRemainingTime:(double)time
{
  v5 = (*(self->_currentDateProvider + 2))();
  v6 = [v5 dateByAddingTimeInterval:time];

  v7 = +[MTDateFormatting sharedInstance];
  v8 = +[NSTimeZone systemTimeZone];
  v16 = 0;
  v9 = [v7 localizedTimeStringFromDate:v6 forTimeZone:v8 timeDesignator:&v16];
  v10 = v16;

  v11 = +[MTDateFormatting sharedInstance];
  if ([v11 timeDesignatorAppearsBeforeTime])
  {
    [NSString stringWithFormat:@"%@ %@", v10, v9];
  }

  else
  {
    [NSString stringWithFormat:@"%@ %@", v9, v10];
  }
  v12 = ;
  timeLabel = [(MTUIGlyphTimeView *)self->_expectedTimeView timeLabel];
  [timeLabel setText:v12];

  expectedTimeView = self->_expectedTimeView;
  v15 = +[UIColor mtui_secondaryTextColor];
  [(MTUIGlyphTimeView *)expectedTimeView setComponentColor:v15];

  [(MTUIGlyphTimeView *)self->_expectedTimeView setHidden:0];
}

- (void)hideExpectedTime
{
  timeLabel = [(MTUIGlyphTimeView *)self->_expectedTimeView timeLabel];
  [timeLabel setText:&stru_1000AEF10];

  expectedTimeView = self->_expectedTimeView;

  [(MTUIGlyphTimeView *)expectedTimeView setHidden:1];
}

- (void)greyOutExpectedTime
{
  expectedTimeView = self->_expectedTimeView;
  v4 = +[UIColor mtui_quaternaryColor];
  [(MTUIGlyphTimeView *)expectedTimeView setComponentColor:v4];

  v5 = self->_expectedTimeView;

  [(MTUIGlyphTimeView *)v5 setHidden:0];
}

- (void)setTime:(double)time
{
  v4 = FormatTime();
  [(UILabel *)self->_timeView setText:v4];
}

- (void)setCountDownDuration:(double)duration
{
  [(MTATimerIntervalPickerView *)self->_timePicker setDuration:?];
  buttonsController = self->_buttonsController;

  [(MTATimerButtonsController *)buttonsController setShouldEnableStartButton:duration != 0.0];
}

- (void)handleLocaleChange
{
  ResetTimeFormatter();

  [(MTATimerControlsView *)self setNeedsLayout];
}

- (void)setTimerToneName:(id)name
{
  if (self->_toneName != name)
  {
    v4 = [name copy];
    toneName = self->_toneName;
    self->_toneName = v4;

    [(MTATimerControlsView *)self setNeedsLayout];
    v6 = self->_toneName;
    detailTextLabel = [(UITableViewCell *)self->_toneChooserCell detailTextLabel];
    [detailTextLabel setText:v6];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  timePicker = self->_timePicker;
  eventCopy = event;
  beganCopy = began;
  [(MTATimerIntervalPickerView *)timePicker endEditing:0];
  v9.receiver = self;
  v9.super_class = MTATimerControlsView;
  [(MTATimerControlsView *)&v9 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)setState:(unint64_t)state animate:(BOOL)animate
{
  animateCopy = animate;
  self->_state = state;
  v7 = state == 1;
  [(MTATimerButtonsController *)self->_buttonsController setState:?];
  if (self->_style == 6)
  {
    [(MTATimerControlsView *)self updatePauseResumeButtonWithState:state];
  }

  if (animateCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003BFB4;
    v10[3] = &unk_1000ADEA8;
    v10[4] = self;
    v11 = v7;
    [UIView animateWithDuration:v10 animations:0.2];
  }

  else
  {
    if (state == 1)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    if (state == 1)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    [(MTATimerIntervalPickerView *)self->_timePicker setAlpha:v8];
    [(UILabel *)self->_timeView setAlpha:v9];
    [(MTUITimerCountdownView *)self->_countdownView setAlpha:v9];
    [(MTUIGlyphTimeView *)self->_expectedTimeView setAlpha:v9];
  }

  [(MTATimerPickerCell *)self->_pickerCell setState:state animated:animateCopy];
}

- (void)updatePauseResumeButtonWithState:(unint64_t)state
{
  v5 = [UIImageSymbolConfiguration configurationWithWeight:7];
  if (state == 2)
  {
    v6 = @"play.fill";
  }

  else
  {
    v6 = @"pause";
  }

  v17 = v5;
  v7 = [UIImage systemImageNamed:v6 withConfiguration:?];
  if (state == 2)
  {
    v8 = +[UIColor systemGreenColor];
    normalShade = [v8 normalShade];
    pauseResumeButton = [(MTATimerControlsView *)self pauseResumeButton];
    [pauseResumeButton setBackgroundColor:normalShade];

    +[UIColor systemGreenColor];
  }

  else
  {
    v11 = +[UIColor systemOrangeColor];
    normalShade2 = [v11 normalShade];
    pauseResumeButton2 = [(MTATimerControlsView *)self pauseResumeButton];
    [pauseResumeButton2 setBackgroundColor:normalShade2];

    +[UIColor systemOrangeColor];
  }
  v14 = ;
  pauseResumeButton3 = [(MTATimerControlsView *)self pauseResumeButton];
  [pauseResumeButton3 setTintColor:v14];

  pauseResumeButton4 = [(MTATimerControlsView *)self pauseResumeButton];
  [pauseResumeButton4 setImage:v7 forState:0];
}

- (void)setStyle:(unint64_t)style forceRefresh:(BOOL)refresh
{
  style = self->_style;
  if (style == style && !refresh)
  {
    return;
  }

  if (style == 4 && style == 5)
  {
    self->_style = 4;
    v7 = 1;
LABEL_18:
    [(UILabel *)self->_timerNameLabel setHidden:1, refresh];
LABEL_19:
    isRunningTimer = [(MTATimerControlsView *)self isRunningTimer];
    v9 = self->_style;
    if ((isRunningTimer & 1) != 0 || (v9 != 4 ? (v10 = v9 == 2) : (v10 = 1), v10))
    {
      if (v9 - 3 > 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = MTUIIsPadIdiom();
        [(UILabel *)self->_timerNameLabel setHidden:1];
      }

      [(MTATimerControlsView *)self setButtonSize:v11];
    }

    if (v7)
    {
      [(MTATimerControlsView *)self setupConstraints];
    }

    [(UITableView *)self->_tableView reloadData];

    [(MTATimerControlsView *)self setNeedsLayout];
    return;
  }

  self->_style = style;
  if ((style & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    v7 = style == 2 && style == 4;
    if (style > 4 || ((1 << style) & 0x16) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [(UITableView *)self->_tableView setHidden:1, refresh];
  [(MTUIGlyphTimeView *)self->_expectedTimeView setHidden:self->_style == 7];
  [(UILabel *)self->_timerNameLabel setHidden:0];
  [(UILabel *)self->_timerNameLabel setNumberOfLines:2];
  [(UILabel *)self->_timerNameLabel setLineBreakMode:0];

  [(MTATimerControlsView *)self setupCellButtons];
}

- (void)setupCellButtons
{
  v47 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:17.0];
  v3 = objc_opt_new();
  [(MTATimerControlsView *)self setStopButton:v3];

  stopButton = [(MTATimerControlsView *)self stopButton];
  layer = [stopButton layer];
  [layer setCornerRadius:20.0];

  stopButton2 = [(MTATimerControlsView *)self stopButton];
  layer2 = [stopButton2 layer];
  [layer2 setMasksToBounds:1];

  v8 = +[UIColor whiteColor];
  v9 = [v8 colorWithAlphaComponent:0.1];
  stopButton3 = [(MTATimerControlsView *)self stopButton];
  [stopButton3 setNormalBackgroundColor:v9];

  v11 = +[UIColor blackColor];
  highlightedShade = [v11 highlightedShade];
  stopButton4 = [(MTATimerControlsView *)self stopButton];
  [stopButton4 setHighlightedBackgroundColor:highlightedShade];

  v14 = +[UIColor whiteColor];
  v15 = [v14 colorWithAlphaComponent:0.1];
  stopButton5 = [(MTATimerControlsView *)self stopButton];
  [stopButton5 setBackgroundColor:v15];

  v17 = [UIImage systemImageNamed:@"xmark" withConfiguration:v47];
  stopButton6 = [(MTATimerControlsView *)self stopButton];
  [stopButton6 setImage:v17 forState:0];

  stopButton7 = [(MTATimerControlsView *)self stopButton];
  [(MTATimerControlsView *)self addSubview:stopButton7];

  v20 = objc_opt_new();
  [(MTATimerControlsView *)self setPauseResumeButton:v20];

  pauseResumeButton = [(MTATimerControlsView *)self pauseResumeButton];
  layer3 = [pauseResumeButton layer];
  [layer3 setCornerRadius:20.0];

  pauseResumeButton2 = [(MTATimerControlsView *)self pauseResumeButton];
  layer4 = [pauseResumeButton2 layer];
  [layer4 setMasksToBounds:1];

  pauseResumeButton3 = [(MTATimerControlsView *)self pauseResumeButton];
  [(MTATimerControlsView *)self addSubview:pauseResumeButton3];

  style = self->_style;
  if (style == 7)
  {
    stopButton8 = [(MTATimerControlsView *)self stopButton];
    [stopButton8 addTarget:self action:"deleteRecent" forControlEvents:64];

    v38 = +[UIColor grayColor];
    stopButton9 = [(MTATimerControlsView *)self stopButton];
    [stopButton9 setTintColor:v38];

    pauseResumeButton4 = [(MTATimerControlsView *)self pauseResumeButton];
    [pauseResumeButton4 addTarget:self action:"startRecent" forControlEvents:64];

    v31 = [UIImage systemImageNamed:@"play.fill" withConfiguration:v47];
    pauseResumeButton5 = [(MTATimerControlsView *)self pauseResumeButton];
    [pauseResumeButton5 setImage:v31 forState:0];

    v42 = +[UIColor systemGreenColor];
    normalShade = [v42 normalShade];
    pauseResumeButton6 = [(MTATimerControlsView *)self pauseResumeButton];
    [pauseResumeButton6 setBackgroundColor:normalShade];

    v36 = +[UIColor systemGreenColor];
  }

  else
  {
    if (style != 6)
    {
      goto LABEL_6;
    }

    stopButton10 = [(MTATimerControlsView *)self stopButton];
    [stopButton10 addTarget:self action:"stopTimer" forControlEvents:64];

    v28 = +[UIColor whiteColor];
    stopButton11 = [(MTATimerControlsView *)self stopButton];
    [stopButton11 setTintColor:v28];

    pauseResumeButton7 = [(MTATimerControlsView *)self pauseResumeButton];
    [pauseResumeButton7 addTarget:self action:"pauseResumeTimer" forControlEvents:64];

    v31 = [UIImage systemImageNamed:@"pause" withConfiguration:v47];
    pauseResumeButton8 = [(MTATimerControlsView *)self pauseResumeButton];
    [pauseResumeButton8 setImage:v31 forState:0];

    v33 = +[UIColor systemOrangeColor];
    normalShade2 = [v33 normalShade];
    pauseResumeButton9 = [(MTATimerControlsView *)self pauseResumeButton];
    [pauseResumeButton9 setBackgroundColor:normalShade2];

    v36 = +[UIColor systemOrangeColor];
  }

  v45 = v36;
  pauseResumeButton10 = [(MTATimerControlsView *)self pauseResumeButton];
  [pauseResumeButton10 setTintColor:v45];

LABEL_6:
}

- (void)deleteRecent
{
  delegate = [(MTATimerControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTATimerControlsView *)self delegate];
    [delegate2 deleteRecent:self];
  }
}

- (void)startRecent
{
  delegate = [(MTATimerControlsView *)self delegate];
  [delegate startTimer:self];
}

- (void)stopTimer
{
  delegate = [(MTATimerControlsView *)self delegate];
  [delegate cancelTimer:self];
}

- (void)pauseResumeTimer
{
  delegate = [(MTATimerControlsView *)self delegate];
  [delegate pauseResumeTimer:self];
}

- (void)_configureAndAddButton:(id)button
{
  buttonCopy = button;
  [buttonCopy sizeToFit];
  [(MTATimerControlsView *)self addSubview:buttonCopy];
  [buttonCopy setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)setButtonSize:(unint64_t)size
{
  [(MTATimerButtonsController *)self->_buttonsController setButtonSize:size];
  startStopButton = [(MTATimerButtonsController *)self->_buttonsController startStopButton];
  [(MTATimerControlsView *)self _configureAndAddButton:startStopButton];

  cancelButton = [(MTATimerButtonsController *)self->_buttonsController cancelButton];
  [(MTATimerControlsView *)self _configureAndAddButton:cancelButton];
}

- (void)setTimerControlState:(unint64_t)state
{
  self->_timerControlState = state;
  if ((MTIdiomIpad() & 1) == 0)
  {
    v4 = self->_timerControlState == 0;

    [(MTATimerControlsView *)self setButtonControlViewsHidden:v4];
  }
}

- (void)setupConstraints
{
  v3 = objc_opt_new();
  styleSpecificConstraints = [(MTATimerControlsView *)self styleSpecificConstraints];
  v6 = [styleSpecificConstraints mutableCopy];

  constraints = [(MTATimerControlsView *)self constraints];
  [NSLayoutConstraint deactivateConstraints:constraints];

  [NSLayoutConstraint activateConstraints:v6];
  [(MTATimerControlsView *)self setConstraints:v6];
}

- (id)styleSpecificConstraints
{
  v3 = MTIdiomIpad();
  style = self->_style;
  if (!v3)
  {
    if (style == 2)
    {
      setupCompactNewTimerConstraints = [(MTATimerControlsView *)self setupCompactNewTimerConstraints];
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (style - 6 >= 2)
  {
    if (style != 1)
    {
      if (style == 4)
      {
        [(MTATimerControlsView *)self iPadSingleCellNewTimerConstraints];
      }

      else
      {
        [(MTATimerControlsView *)self setupSingleTimerConstraints];
      }
      setupCompactNewTimerConstraints = ;
      goto LABEL_12;
    }

LABEL_9:
    setupCompactNewTimerConstraints = [(MTATimerControlsView *)self setupMultipleTimerConstraints];
    goto LABEL_12;
  }

  setupCompactNewTimerConstraints = [(MTATimerControlsView *)self setupCollectionViewConstraints];
LABEL_12:

  return setupCompactNewTimerConstraints;
}

- (id)setupMultipleTimerConstraints
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [(MTATimerControlsView *)self addLayoutGuide:v4];
  safeAreaLayoutGuide = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  topAnchor2 = [v4 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v3 addObject:v8];

  safeAreaLayoutGuide2 = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v3 addObject:v12];

  safeAreaLayoutGuide3 = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  leadingAnchor = [safeAreaLayoutGuide3 leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v3 addObject:v16];

  safeAreaLayoutGuide4 = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide4 trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v3 addObject:v20];

  v188 = objc_opt_new();
  [(MTATimerControlsView *)self addLayoutGuide:?];
  v21 = objc_opt_new();
  mtui_isRTL = [(MTATimerControlsView *)self mtui_isRTL];
  buttonsController = self->_buttonsController;
  if (mtui_isRTL)
  {
    [(MTATimerButtonsController *)buttonsController startStopButton];
  }

  else
  {
    [(MTATimerButtonsController *)buttonsController cancelButton];
  }
  v24 = ;
  mtui_isRTL2 = [(MTATimerControlsView *)self mtui_isRTL];
  v26 = self->_buttonsController;
  if (mtui_isRTL2)
  {
    [(MTATimerButtonsController *)v26 cancelButton];
  }

  else
  {
    [(MTATimerButtonsController *)v26 startStopButton];
  }
  v27 = ;
  if ([(MTATimerControlsView *)self isRunningTimer]|| (v28 = 0.0, v29 = 0.0, [(MTATimerControlsView *)self timerControlState]== 2))
  {
    +[MTAUtilities controlButtonAttributesForView:buttonCircleSize:](MTAUtilities, "controlButtonAttributesForView:buttonCircleSize:", self, [v27 buttonCircleSize]);
    v29 = v189;
    v28 = v191;
    [(MTATimerControlsView *)self addLayoutGuide:v21];
    topAnchor3 = [v24 topAnchor];
    topAnchor4 = [v21 topAnchor];
    v32 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v3 addObject:v32];

    topAnchor5 = [v27 topAnchor];
    topAnchor6 = [v21 topAnchor];
    v35 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    [v3 addObject:v35];

    bottomAnchor3 = [v24 bottomAnchor];
    bottomAnchor4 = [v21 bottomAnchor];
    v38 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v3 addObject:v38];

    bottomAnchor5 = [v27 bottomAnchor];
    bottomAnchor6 = [v21 bottomAnchor];
    v41 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    [v3 addObject:v41];

    widthAnchor = [v27 widthAnchor];
    v43 = [widthAnchor constraintEqualToConstant:v190];
    [v3 addObject:v43];

    widthAnchor2 = [v27 widthAnchor];
    heightAnchor = [v27 heightAnchor];
    v46 = [widthAnchor2 constraintEqualToAnchor:heightAnchor];
    [v3 addObject:v46];

    widthAnchor3 = [v24 widthAnchor];
    v48 = [widthAnchor3 constraintEqualToConstant:v190];
    [v3 addObject:v48];

    widthAnchor4 = [v24 widthAnchor];
    heightAnchor2 = [v24 heightAnchor];
    v51 = [widthAnchor4 constraintEqualToAnchor:heightAnchor2];
    [v3 addObject:v51];

    heightAnchor3 = [v21 heightAnchor];
    v53 = [heightAnchor3 constraintEqualToConstant:v190];
    [v3 addObject:v53];
  }

  v187 = v24;
  v54 = objc_opt_new();
  [(MTATimerControlsView *)self addLayoutGuide:v54];
  topAnchor7 = [v54 topAnchor];
  topAnchor8 = [v4 topAnchor];
  v57 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  [v3 addObject:v57];

  leadingAnchor3 = [v54 leadingAnchor];
  leadingAnchor4 = [v4 leadingAnchor];
  v60 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v3 addObject:v60];

  trailingAnchor3 = [v54 trailingAnchor];
  trailingAnchor4 = [v4 trailingAnchor];
  v63 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v3 addObject:v63];

  topAnchor9 = [(MTUITimerCountdownView *)self->_countdownView topAnchor];
  topAnchor10 = [v54 topAnchor];
  v66 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:v28];
  [v3 addObject:v66];

  centerXAnchor = [(MTUITimerCountdownView *)self->_countdownView centerXAnchor];
  centerXAnchor2 = [v54 centerXAnchor];
  v69 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v3 addObject:v69];

  widthAnchor5 = [(MTUITimerCountdownView *)self->_countdownView widthAnchor];
  heightAnchor4 = [(MTUITimerCountdownView *)self->_countdownView heightAnchor];
  v72 = [widthAnchor5 constraintEqualToAnchor:heightAnchor4];
  [v3 addObject:v72];

  bottomAnchor7 = [(MTUITimerCountdownView *)self->_countdownView bottomAnchor];
  bottomAnchor8 = [v54 bottomAnchor];
  v75 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  [v3 addObject:v75];

  [(MTUITimerCountdownView *)self->_countdownView frame];
  v77 = v76 * v76;
  font = [(UILabel *)self->_timeView font];
  [font pointSize];
  v80 = sqrt(v77 + v79 * v79);

  widthAnchor6 = [v188 widthAnchor];
  v82 = [widthAnchor6 constraintEqualToConstant:v80 * 0.8];
  [v3 addObject:v82];

  leftAnchor = [(UILabel *)self->_timeView leftAnchor];
  leftAnchor2 = [v188 leftAnchor];
  v85 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v3 addObject:v85];

  rightAnchor = [(UILabel *)self->_timeView rightAnchor];
  rightAnchor2 = [v188 rightAnchor];
  v88 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v3 addObject:v88];

  heightAnchor5 = [(UILabel *)self->_timeView heightAnchor];
  font2 = [(UILabel *)self->_timeView font];
  [font2 pointSize];
  v91 = [heightAnchor5 constraintEqualToConstant:?];
  [v3 addObject:v91];

  [(MTATimerControlsView *)self compactSizeFont];
  v92 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  mtui_fontByAddingTimeFontAttributes = [v92 mtui_fontByAddingTimeFontAttributes];
  [(UILabel *)self->_timeView setFont:mtui_fontByAddingTimeFontAttributes];

  topAnchor11 = [(MTUIGlyphTimeView *)self->_expectedTimeView topAnchor];
  topAnchor12 = [v188 topAnchor];
  v96 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
  [v3 addObject:v96];

  bottomAnchor9 = [(MTUIGlyphTimeView *)self->_expectedTimeView bottomAnchor];
  topAnchor13 = [(UILabel *)self->_timeView topAnchor];
  v99 = [bottomAnchor9 constraintEqualToAnchor:topAnchor13];
  [v3 addObject:v99];

  centerXAnchor3 = [(MTUIGlyphTimeView *)self->_expectedTimeView centerXAnchor];
  centerXAnchor4 = [v188 centerXAnchor];
  v102 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v3 addObject:v102];

  if (MTUIIsLargeText())
  {
    widthAnchor7 = [(MTUIGlyphTimeView *)self->_expectedTimeView widthAnchor];
    v104 = [widthAnchor7 constraintEqualToConstant:v80 * 0.5];
    [v3 addObject:v104];
  }

  heightAnchor6 = [(MTUIGlyphTimeView *)self->_expectedTimeView heightAnchor];
  timeLabel = [(MTUIGlyphTimeView *)self->_expectedTimeView timeLabel];
  font3 = [timeLabel font];
  [font3 lineHeight];
  v108 = [heightAnchor6 constraintEqualToConstant:?];
  [v3 addObject:v108];

  bottomAnchor10 = [(UILabel *)self->_timeView bottomAnchor];
  bottomAnchor11 = [v188 bottomAnchor];
  v111 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
  [v3 addObject:v111];

  centerXAnchor5 = [(UILabel *)self->_timeView centerXAnchor];
  centerXAnchor6 = [(MTUITimerCountdownView *)self->_countdownView centerXAnchor];
  v114 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v3 addObject:v114];

  centerYAnchor = [(UILabel *)self->_timeView centerYAnchor];
  centerYAnchor2 = [(MTUITimerCountdownView *)self->_countdownView centerYAnchor];
  v117 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v3 addObject:v117];

  if ([(MTATimerControlsView *)self isIpadAddSheet])
  {
    heightAnchor7 = [v54 heightAnchor];
    v119 = [heightAnchor7 constraintEqualToConstant:275.3];
    [v3 addObject:v119];
LABEL_16:

    goto LABEL_17;
  }

  if (![(MTATimerControlsView *)self isRunningTimer])
  {
    heightAnchor7 = [v54 heightAnchor];
    v119 = +[UIScreen mainScreen];
    [v119 bounds];
    v121 = [heightAnchor7 constraintEqualToConstant:v120 * 0.64];
    [v3 addObject:v121];

    goto LABEL_16;
  }

LABEL_17:
  centerYAnchor3 = [(MTATimerIntervalPickerView *)self->_timePicker centerYAnchor];
  centerYAnchor4 = [v54 centerYAnchor];
  v124 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:-12.0];
  [v3 addObject:v124];

  heightAnchor8 = [(MTATimerIntervalPickerView *)self->_timePicker heightAnchor];
  heightAnchor9 = [v54 heightAnchor];
  v127 = [heightAnchor8 constraintEqualToAnchor:heightAnchor9];
  [v3 addObject:v127];

  widthAnchor8 = [(MTATimerIntervalPickerView *)self->_timePicker widthAnchor];
  v129 = [widthAnchor8 constraintEqualToConstant:320.0];
  [v3 addObject:v129];

  centerXAnchor7 = [(MTATimerIntervalPickerView *)self->_timePicker centerXAnchor];
  centerXAnchor8 = [v54 centerXAnchor];
  v132 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  [v3 addObject:v132];

  v133 = objc_opt_new();
  [(MTATimerControlsView *)self addLayoutGuide:v133];
  if ([(MTATimerControlsView *)self isRunningTimer]|| [(MTATimerControlsView *)self timerControlState]== 2)
  {
    topAnchor14 = [v21 topAnchor];
    topAnchor15 = [v4 topAnchor];
    v136 = [topAnchor14 constraintEqualToAnchor:topAnchor15 constant:v29];
    [v3 addObject:v136];

    leadingAnchor5 = [v21 leadingAnchor];
    leadingAnchor6 = [v4 leadingAnchor];
    v139 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v3 addObject:v139];

    trailingAnchor5 = [v21 trailingAnchor];
    trailingAnchor6 = [v4 trailingAnchor];
    v142 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v3 addObject:v142];

    leadingAnchor7 = [v187 leadingAnchor];
    leadingAnchor8 = [v21 leadingAnchor];
    v145 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
    [v3 addObject:v145];

    trailingAnchor7 = [v27 trailingAnchor];
    trailingAnchor8 = [v21 trailingAnchor];
    v148 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-16.0];
    [v3 addObject:v148];

    bottomAnchor12 = [v54 bottomAnchor];
    topAnchor16 = [v21 topAnchor];
    v151 = MTUIIsLargeText();
    v152 = 24.0;
    if (v151)
    {
      v152 = 0.0;
    }

    v153 = [bottomAnchor12 constraintEqualToAnchor:topAnchor16 constant:v152];
    [v3 addObject:v153];

    topAnchor17 = [v133 topAnchor];
    bottomAnchor13 = [v21 bottomAnchor];
    v156 = [topAnchor17 constraintEqualToAnchor:bottomAnchor13 constant:34.0];
  }

  else
  {
    if (![(MTATimerControlsView *)self isIpadAddSheet])
    {
      bottomAnchor14 = [v54 bottomAnchor];
      topAnchor18 = [v133 topAnchor];
      v159 = [bottomAnchor14 constraintEqualToAnchor:topAnchor18];
      [v3 addObject:v159];
    }

    topAnchor17 = [v133 bottomAnchor];
    bottomAnchor13 = [v4 bottomAnchor];
    v156 = [topAnchor17 constraintLessThanOrEqualToAnchor:bottomAnchor13];
  }

  v160 = v156;
  [v3 addObject:v156];

  leadingAnchor9 = [v133 leadingAnchor];
  leadingAnchor10 = [v4 leadingAnchor];
  v163 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v3 addObject:v163];

  trailingAnchor9 = [v133 trailingAnchor];
  trailingAnchor10 = [v4 trailingAnchor];
  v166 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [v3 addObject:v166];

  heightAnchor10 = [v133 heightAnchor];
  if (MTUIIsLargeText())
  {
    v168 = 104.0;
  }

  else
  {
    v168 = 52.0;
  }

  tableRows = [(MTATimerControlsView *)self tableRows];
  v170 = [heightAnchor10 constraintEqualToConstant:{v168 * objc_msgSend(tableRows, "count")}];
  [v3 addObject:v170];

  topAnchor19 = [(UITableView *)self->_tableView topAnchor];
  topAnchor20 = [v133 topAnchor];
  v173 = [topAnchor19 constraintEqualToAnchor:topAnchor20];
  [v3 addObject:v173];

  trailingAnchor11 = [(UITableView *)self->_tableView trailingAnchor];
  trailingAnchor12 = [v133 trailingAnchor];
  v176 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:-16.0];
  [v3 addObject:v176];

  leadingAnchor11 = [(UITableView *)self->_tableView leadingAnchor];
  leadingAnchor12 = [v133 leadingAnchor];
  v179 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:16.0];
  [v3 addObject:v179];

  bottomAnchor15 = [(UITableView *)self->_tableView bottomAnchor];
  bottomAnchor16 = [v133 bottomAnchor];
  v182 = [bottomAnchor15 constraintEqualToAnchor:bottomAnchor16];
  [v3 addObject:v182];

  centerXAnchor9 = [v188 centerXAnchor];
  centerXAnchor10 = [(MTUITimerCountdownView *)self->_countdownView centerXAnchor];
  v185 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  [v3 addObject:v185];

  return v3;
}

- (id)setupCompactNewTimerConstraints
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v4 setIdentifier:@"Parent"];
  [(MTATimerControlsView *)self addLayoutGuide:v4];
  safeAreaLayoutGuide = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  topAnchor2 = [v4 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v3 addObject:v8];

  safeAreaLayoutGuide2 = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v3 addObject:v12];

  safeAreaLayoutGuide3 = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  leadingAnchor = [safeAreaLayoutGuide3 leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v3 addObject:v16];

  safeAreaLayoutGuide4 = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide4 trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v3 addObject:v20];

  v21 = objc_opt_new();
  [v21 setIdentifier:@"buttonsContainer"];
  mtui_isRTL = [(MTATimerControlsView *)self mtui_isRTL];
  buttonsController = self->_buttonsController;
  if (mtui_isRTL)
  {
    [(MTATimerButtonsController *)buttonsController startStopButton];
  }

  else
  {
    [(MTATimerButtonsController *)buttonsController cancelButton];
  }
  v24 = ;
  mtui_isRTL2 = [(MTATimerControlsView *)self mtui_isRTL];
  v26 = self->_buttonsController;
  if (mtui_isRTL2)
  {
    [(MTATimerButtonsController *)v26 cancelButton];
  }

  else
  {
    [(MTATimerButtonsController *)v26 startStopButton];
  }
  v27 = ;
  +[MTAUtilities controlButtonAttributesForView:buttonCircleSize:](MTAUtilities, "controlButtonAttributesForView:buttonCircleSize:", self, [v27 buttonCircleSize]);
  [(MTATimerControlsView *)self addLayoutGuide:v21];
  topAnchor3 = [v24 topAnchor];
  topAnchor4 = [v21 topAnchor];
  v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v3 addObject:v30];

  topAnchor5 = [v27 topAnchor];
  topAnchor6 = [v21 topAnchor];
  v33 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v3 addObject:v33];

  bottomAnchor3 = [v24 bottomAnchor];
  bottomAnchor4 = [v21 bottomAnchor];
  v36 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v3 addObject:v36];

  bottomAnchor5 = [v27 bottomAnchor];
  bottomAnchor6 = [v21 bottomAnchor];
  v39 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [v3 addObject:v39];

  widthAnchor = [v27 widthAnchor];
  v41 = [widthAnchor constraintEqualToConstant:v132];
  [v3 addObject:v41];

  v131 = v27;
  widthAnchor2 = [v27 widthAnchor];
  heightAnchor = [v27 heightAnchor];
  v44 = [widthAnchor2 constraintEqualToAnchor:heightAnchor];
  [v3 addObject:v44];

  widthAnchor3 = [v24 widthAnchor];
  v46 = [widthAnchor3 constraintEqualToConstant:v132];
  [v3 addObject:v46];

  widthAnchor4 = [v24 widthAnchor];
  heightAnchor2 = [v24 heightAnchor];
  v49 = [widthAnchor4 constraintEqualToAnchor:heightAnchor2];
  [v3 addObject:v49];

  heightAnchor3 = [v21 heightAnchor];
  v51 = [heightAnchor3 constraintEqualToConstant:v132];
  [v3 addObject:v51];

  v52 = objc_opt_new();
  [v52 setIdentifier:@"pickerCountdownContainer"];
  [(MTATimerControlsView *)self addLayoutGuide:v52];
  topAnchor7 = [v52 topAnchor];
  topAnchor8 = [v4 topAnchor];
  v55 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  [v3 addObject:v55];

  leadingAnchor3 = [v52 leadingAnchor];
  leadingAnchor4 = [v4 leadingAnchor];
  v58 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v3 addObject:v58];

  trailingAnchor3 = [v52 trailingAnchor];
  trailingAnchor4 = [v4 trailingAnchor];
  v61 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v3 addObject:v61];

  v62 = +[UIScreen mainScreen];
  [v62 bounds];
  v64 = v63 * 0.64;

  timePicker = self->_timePicker;
  [(MTATimerControlsView *)self bounds];
  [(MTATimerIntervalPickerView *)timePicker sizeThatFits:v66, v67];
  v69 = v64 > v68;
  if (v64 < v68)
  {
    v64 = v68;
  }

  v70 = dbl_10008BC60[v69] * v64;
  heightAnchor4 = [v52 heightAnchor];
  v72 = [heightAnchor4 constraintEqualToConstant:v64];
  [v3 addObject:v72];

  topAnchor9 = [(MTATimerIntervalPickerView *)self->_timePicker topAnchor];
  topAnchor10 = [v52 topAnchor];
  v75 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  [v3 addObject:v75];

  heightAnchor5 = [(MTATimerIntervalPickerView *)self->_timePicker heightAnchor];
  heightAnchor6 = [v52 heightAnchor];
  v78 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
  [v3 addObject:v78];

  widthAnchor5 = [(MTATimerIntervalPickerView *)self->_timePicker widthAnchor];
  v80 = [widthAnchor5 constraintEqualToConstant:320.0];
  [v3 addObject:v80];

  centerXAnchor = [(MTATimerIntervalPickerView *)self->_timePicker centerXAnchor];
  centerXAnchor2 = [v52 centerXAnchor];
  v83 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v3 addObject:v83];

  v84 = objc_opt_new();
  [v84 setIdentifier:@"tableViewContainer"];
  [(MTATimerControlsView *)self addLayoutGuide:v84];
  leadingAnchor5 = [v21 leadingAnchor];
  leadingAnchor6 = [v4 leadingAnchor];
  v87 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v3 addObject:v87];

  trailingAnchor5 = [v21 trailingAnchor];
  trailingAnchor6 = [v4 trailingAnchor];
  v90 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v3 addObject:v90];

  leadingAnchor7 = [v24 leadingAnchor];
  leadingAnchor8 = [v21 leadingAnchor];
  v93 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
  [v3 addObject:v93];

  trailingAnchor7 = [v131 trailingAnchor];
  trailingAnchor8 = [v21 trailingAnchor];
  v96 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-16.0];
  [v3 addObject:v96];

  bottomAnchor7 = [v52 bottomAnchor];
  topAnchor11 = [v21 topAnchor];
  v99 = MTUIIsLargeText();
  v100 = 0.0;
  if (!v99)
  {
    v100 = v70;
  }

  v101 = [bottomAnchor7 constraintEqualToAnchor:topAnchor11 constant:v100];
  [v3 addObject:v101];

  topAnchor12 = [v84 topAnchor];
  bottomAnchor8 = [v21 bottomAnchor];
  v104 = [topAnchor12 constraintEqualToAnchor:bottomAnchor8 constant:34.0];
  [v3 addObject:v104];

  leadingAnchor9 = [v84 leadingAnchor];
  leadingAnchor10 = [v4 leadingAnchor];
  v107 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v3 addObject:v107];

  trailingAnchor9 = [v84 trailingAnchor];
  trailingAnchor10 = [v4 trailingAnchor];
  v110 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [v3 addObject:v110];

  heightAnchor7 = [v84 heightAnchor];
  if (MTUIIsLargeText())
  {
    v112 = 104.0;
  }

  else
  {
    v112 = 52.0;
  }

  tableRows = [(MTATimerControlsView *)self tableRows];
  v114 = [heightAnchor7 constraintEqualToConstant:{v112 * objc_msgSend(tableRows, "count")}];
  [v3 addObject:v114];

  topAnchor13 = [(UITableView *)self->_tableView topAnchor];
  topAnchor14 = [v84 topAnchor];
  v117 = [topAnchor13 constraintEqualToAnchor:topAnchor14];
  [v3 addObject:v117];

  trailingAnchor11 = [(UITableView *)self->_tableView trailingAnchor];
  trailingAnchor12 = [v84 trailingAnchor];
  v120 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:-16.0];
  [v3 addObject:v120];

  leadingAnchor11 = [(UITableView *)self->_tableView leadingAnchor];
  leadingAnchor12 = [v84 leadingAnchor];
  v123 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:16.0];
  [v3 addObject:v123];

  bottomAnchor9 = [(UITableView *)self->_tableView bottomAnchor];
  bottomAnchor10 = [v84 bottomAnchor];
  v126 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  [v3 addObject:v126];

  bottomAnchor11 = [v84 bottomAnchor];
  bottomAnchor12 = [v4 bottomAnchor];
  v129 = [bottomAnchor11 constraintLessThanOrEqualToAnchor:bottomAnchor12];
  [v3 addObject:v129];

  return v3;
}

- (BOOL)isIpadAddSheet
{
  v3 = MTIdiomIpad();
  if (v3)
  {
    LOBYTE(v3) = self->_style == 1;
  }

  return v3;
}

- (id)setupSingleTimerConstraints
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v4 setIdentifier:@"parentContainer"];
  [(MTATimerControlsView *)self addLayoutGuide:v4];
  safeAreaLayoutGuide = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  topAnchor2 = [v4 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v3 addObject:v8];

  safeAreaLayoutGuide2 = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v3 addObject:v12];

  safeAreaLayoutGuide3 = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  leadingAnchor = [safeAreaLayoutGuide3 leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v3 addObject:v16];

  safeAreaLayoutGuide4 = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide4 trailingAnchor];
  v307 = v4;
  trailingAnchor2 = [v4 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v3 addObject:v20];

  v21 = objc_opt_new();
  [v21 setIdentifier:@"groupedTimeContainer"];
  [(MTATimerControlsView *)self addLayoutGuide:v21];
  v22 = objc_opt_new();
  [v22 setIdentifier:@"buttonsContainer"];
  [(MTATimerControlsView *)self addLayoutGuide:v22];
  mtui_isRTL = [(MTATimerControlsView *)self mtui_isRTL];
  buttonsController = self->_buttonsController;
  if (mtui_isRTL)
  {
    [(MTATimerButtonsController *)buttonsController startStopButton];
  }

  else
  {
    [(MTATimerButtonsController *)buttonsController cancelButton];
  }
  v25 = ;
  mtui_isRTL2 = [(MTATimerControlsView *)self mtui_isRTL];
  v27 = self->_buttonsController;
  v306 = v21;
  if (mtui_isRTL2)
  {
    [(MTATimerButtonsController *)v27 cancelButton];
  }

  else
  {
    [(MTATimerButtonsController *)v27 startStopButton];
  }
  v28 = ;
  +[MTAUtilities controlButtonAttributesForView:buttonCircleSize:](MTAUtilities, "controlButtonAttributesForView:buttonCircleSize:", self, [v28 buttonCircleSize]);
  topAnchor3 = [v25 topAnchor];
  topAnchor4 = [v22 topAnchor];
  v31 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v3 addObject:v31];

  topAnchor5 = [v28 topAnchor];
  topAnchor6 = [v22 topAnchor];
  v34 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v3 addObject:v34];

  bottomAnchor3 = [v25 bottomAnchor];
  bottomAnchor4 = [v22 bottomAnchor];
  v37 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v3 addObject:v37];

  bottomAnchor5 = [v28 bottomAnchor];
  bottomAnchor6 = [v22 bottomAnchor];
  v40 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [v3 addObject:v40];

  widthAnchor = [v28 widthAnchor];
  v42 = [widthAnchor constraintEqualToConstant:0.0];
  [v3 addObject:v42];

  widthAnchor2 = [v28 widthAnchor];
  heightAnchor = [v28 heightAnchor];
  v45 = [widthAnchor2 constraintEqualToAnchor:heightAnchor];
  [v3 addObject:v45];

  widthAnchor3 = [v25 widthAnchor];
  v47 = [widthAnchor3 constraintEqualToConstant:0.0];
  [v3 addObject:v47];

  widthAnchor4 = [v25 widthAnchor];
  heightAnchor2 = [v25 heightAnchor];
  v50 = [widthAnchor4 constraintEqualToAnchor:heightAnchor2];
  [v3 addObject:v50];

  heightAnchor3 = [v22 heightAnchor];
  v52 = [heightAnchor3 constraintEqualToConstant:0.0];
  [v3 addObject:v52];

  v305 = v22;
  if (self->_style == 3)
  {
    leadingAnchor3 = [v22 leadingAnchor];
    leadingAnchor4 = [v4 leadingAnchor];
    v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v3 addObject:v55];

    trailingAnchor3 = [v22 trailingAnchor];
    trailingAnchor4 = [v4 trailingAnchor];
    v58 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v3 addObject:v58];

    leadingAnchor5 = [v25 leadingAnchor];
    leadingAnchor6 = [v22 leadingAnchor];
    v61 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
    [v3 addObject:v61];

    trailingAnchor5 = [v28 trailingAnchor];
    trailingAnchor6 = [v22 trailingAnchor];
    v64 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
    [v3 addObject:v64];

    v65 = objc_opt_new();
    [v65 setIdentifier:@"pickerCountdownContainer"];
    [(MTATimerControlsView *)self addLayoutGuide:v65];
    if (+[MTAUtilities isLandscape])
    {
      v66 = v28;
      centerYAnchor = [v22 centerYAnchor];
      centerYAnchor2 = [(MTATimerControlsView *)self centerYAnchor];
      v69 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v3 addObject:v69];

      centerYAnchor3 = [v65 centerYAnchor];
      centerYAnchor4 = [v4 centerYAnchor];
      v72 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      [v3 addObject:v72];

      centerXAnchor = [v65 centerXAnchor];
      centerXAnchor2 = [v4 centerXAnchor];
      v75 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v3 addObject:v75];

      heightAnchor4 = [v65 heightAnchor];
      v77 = +[UIScreen mainScreen];
      [v77 bounds];
      topAnchor13 = [heightAnchor4 constraintEqualToConstant:v78 * 0.64];

      LODWORD(v80) = 1144750080;
      [topAnchor13 setPriority:v80];
      [v3 addObject:topAnchor13];
      heightAnchor5 = [v65 heightAnchor];
      widthAnchor5 = [v65 widthAnchor];
      v83 = [heightAnchor5 constraintEqualToAnchor:widthAnchor5];
      [v3 addObject:v83];

      leadingAnchor7 = [v65 leadingAnchor];
      trailingAnchor7 = [v25 trailingAnchor];
      v86 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:trailingAnchor7 constant:8.0];
      [v3 addObject:v86];

      trailingAnchor8 = [v65 trailingAnchor];
      leadingAnchor8 = [v66 leadingAnchor];
      v89 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:leadingAnchor8 constant:8.0];
      [v3 addObject:v89];

      topAnchor7 = [(MTUITimerCountdownView *)self->_countdownView topAnchor];
      topAnchor8 = [v65 topAnchor];
      v92 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
      [v3 addObject:v92];
    }

    else
    {
      topAnchor9 = [v22 topAnchor];
      topAnchor10 = [v4 topAnchor];
      v214 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:0.0];
      [v3 addObject:v214];

      topAnchor11 = [v65 topAnchor];
      topAnchor12 = [v4 topAnchor];
      v217 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
      [v3 addObject:v217];

      leadingAnchor9 = [v65 leadingAnchor];
      leadingAnchor10 = [v4 leadingAnchor];
      v220 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
      [v3 addObject:v220];

      trailingAnchor9 = [v65 trailingAnchor];
      trailingAnchor10 = [v4 trailingAnchor];
      v223 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
      [v3 addObject:v223];

      bottomAnchor7 = [v65 bottomAnchor];
      bottomAnchor8 = [v22 bottomAnchor];
      v226 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-24.0];
      [v3 addObject:v226];

      topAnchor13 = [(MTUITimerCountdownView *)self->_countdownView topAnchor];
      topAnchor7 = [v65 topAnchor];
      topAnchor8 = [topAnchor13 constraintEqualToAnchor:topAnchor7 constant:0.0];
      [v3 addObject:topAnchor8];
    }

    centerXAnchor3 = [(MTUITimerCountdownView *)self->_countdownView centerXAnchor];
    centerXAnchor4 = [v65 centerXAnchor];
    v229 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v3 addObject:v229];

    widthAnchor6 = [(MTUITimerCountdownView *)self->_countdownView widthAnchor];
    heightAnchor6 = [(MTUITimerCountdownView *)self->_countdownView heightAnchor];
    v232 = [widthAnchor6 constraintEqualToAnchor:heightAnchor6];
    [v3 addObject:v232];

    bottomAnchor9 = [(MTUITimerCountdownView *)self->_countdownView bottomAnchor];
    bottomAnchor10 = [v65 bottomAnchor];
    v235 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
    [v3 addObject:v235];

    v236 = [UIFont systemFontOfSize:130.0 weight:UIFontWeightThin];
    mtui_fontByAddingTimeFontAttributes = [v236 mtui_fontByAddingTimeFontAttributes];
    [(UILabel *)self->_timeView setFont:mtui_fontByAddingTimeFontAttributes];

    [(MTUITimerCountdownView *)self->_countdownView frame];
    v239 = v238 * v238;
    font = [(UILabel *)self->_timeView font];
    [font pointSize];
    v242 = sqrt(v239 + v241 * v241);

    if (v242 >= 288.0)
    {
      v243 = v242;
    }

    else
    {
      v243 = 288.0;
    }

    v304 = v65;
    v21 = v306;
    widthAnchor7 = [v306 widthAnchor];
    v245 = [widthAnchor7 constraintEqualToConstant:v243];
    [v3 addObject:v245];

    topAnchor14 = [(MTUIGlyphTimeView *)self->_expectedTimeView topAnchor];
    topAnchor15 = [v306 topAnchor];
    v248 = [topAnchor14 constraintEqualToAnchor:topAnchor15];
    [v3 addObject:v248];

    heightAnchor7 = [(MTUIGlyphTimeView *)self->_expectedTimeView heightAnchor];
    timeLabel = [(MTUIGlyphTimeView *)self->_expectedTimeView timeLabel];
    font2 = [timeLabel font];
    [font2 lineHeight];
    v252 = [heightAnchor7 constraintEqualToConstant:?];
    [v3 addObject:v252];

    centerXAnchor5 = [(MTUIGlyphTimeView *)self->_expectedTimeView centerXAnchor];
    centerXAnchor6 = [v306 centerXAnchor];
    v255 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v3 addObject:v255];

    topAnchor16 = [(UILabel *)self->_timeView topAnchor];
    bottomAnchor11 = [(MTUIGlyphTimeView *)self->_expectedTimeView bottomAnchor];
    v258 = [topAnchor16 constraintEqualToAnchor:bottomAnchor11];
    [v3 addObject:v258];

    centerXAnchor7 = [(UILabel *)self->_timeView centerXAnchor];
    centerXAnchor8 = [(MTUITimerCountdownView *)self->_countdownView centerXAnchor];
    v261 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    [v3 addObject:v261];

    heightAnchor8 = [(UILabel *)self->_timeView heightAnchor];
    font3 = [(UILabel *)self->_timeView font];
    [font3 lineHeight];
    v264 = [heightAnchor8 constraintEqualToConstant:?];
    [v3 addObject:v264];

    widthAnchor8 = [(UILabel *)self->_timeView widthAnchor];
    v266 = [widthAnchor8 constraintEqualToConstant:v242 * 0.8];
    [(MTATimerControlsView *)self setTimerCountdownWidthConstraint:v266];

    timerCountdownWidthConstraint = [(MTATimerControlsView *)self timerCountdownWidthConstraint];
    [v3 addObject:timerCountdownWidthConstraint];

    centerXAnchor9 = [(MTATimerIntervalPickerView *)self->_timePicker centerXAnchor];
    centerXAnchor10 = [v304 centerXAnchor];
    v270 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
    [v3 addObject:v270];

    bottomAnchor12 = [(MTATimerIntervalPickerView *)self->_timePicker bottomAnchor];
    topAnchor17 = [(UITableView *)self->_tableView topAnchor];
    v273 = [bottomAnchor12 constraintEqualToAnchor:topAnchor17 constant:-34.0];
    [v3 addObject:v273];

    heightAnchor9 = [(MTATimerIntervalPickerView *)self->_timePicker heightAnchor];
    [(MTATimerIntervalPickerView *)self->_timePicker frame];
    v276 = [heightAnchor9 constraintEqualToConstant:v275];
    [v3 addObject:v276];

    widthAnchor9 = [(MTATimerIntervalPickerView *)self->_timePicker widthAnchor];
    [(MTATimerIntervalPickerView *)self->_timePicker frame];
    v279 = [widthAnchor9 constraintEqualToConstant:v278];
    [v3 addObject:v279];

    topAnchor18 = [(UITableView *)self->_tableView topAnchor];
    bottomAnchor13 = [(UILabel *)self->_timeView bottomAnchor];
    v282 = [topAnchor18 constraintEqualToAnchor:bottomAnchor13 constant:17.0];
    [v3 addObject:v282];

    centerXAnchor11 = [(UITableView *)self->_tableView centerXAnchor];
    centerXAnchor12 = [v306 centerXAnchor];
    v285 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
    [v3 addObject:v285];

    [(MTUITimerCountdownView *)self->_countdownView size];
    v287 = sqrt(v286 * v286 * 0.5) * 0.9;
    widthAnchor10 = [(UITableView *)self->_tableView widthAnchor];
    v289 = [widthAnchor10 constraintEqualToConstant:{fmin(v287, 332.0)}];
    [(MTATimerControlsView *)self setTableWidthConstraint:v289];

    tableWidthConstraint = [(MTATimerControlsView *)self tableWidthConstraint];
    [v3 addObject:tableWidthConstraint];

    heightAnchor10 = [(UITableView *)self->_tableView heightAnchor];
    if (MTUIIsLargeText())
    {
      v292 = 104.0;
    }

    else
    {
      v292 = 52.0;
    }

    tableRows = [(MTATimerControlsView *)self tableRows];
    v294 = [heightAnchor10 constraintEqualToConstant:{v292 * objc_msgSend(tableRows, "count")}];
    [v3 addObject:v294];

    bottomAnchor14 = [(UITableView *)self->_tableView bottomAnchor];
    bottomAnchor15 = [v306 bottomAnchor];
    v185BottomAnchor = [bottomAnchor14 constraintEqualToAnchor:bottomAnchor15];
    [v3 addObject:v185BottomAnchor];
    v190 = v4;
  }

  else
  {
    topAnchor19 = [v22 topAnchor];
    [v4 topAnchor];
    v95 = v94 = v28;
    v96 = [topAnchor19 constraintEqualToAnchor:v95 constant:0.0];
    [v3 addObject:v96];

    leadingAnchor11 = [v22 leadingAnchor];
    leadingAnchor12 = [v307 leadingAnchor];
    v99 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    [v3 addObject:v99];

    trailingAnchor11 = [v22 trailingAnchor];
    trailingAnchor12 = [v307 trailingAnchor];
    v102 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    [v3 addObject:v102];

    leadingAnchor13 = [v25 leadingAnchor];
    leadingAnchor14 = [v22 leadingAnchor];
    v105 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:16.0];
    [v3 addObject:v105];

    trailingAnchor13 = [v94 trailingAnchor];
    trailingAnchor14 = [v22 trailingAnchor];
    v108 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14 constant:-16.0];
    [v3 addObject:v108];

    v109 = objc_opt_new();
    [(MTATimerControlsView *)self addLayoutGuide:v109];
    topAnchor20 = [v109 topAnchor];
    topAnchor21 = [v307 topAnchor];
    v112 = [topAnchor20 constraintEqualToAnchor:topAnchor21];
    [v3 addObject:v112];

    leadingAnchor15 = [v109 leadingAnchor];
    leadingAnchor16 = [v307 leadingAnchor];
    v115 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16];
    [v3 addObject:v115];

    trailingAnchor15 = [v109 trailingAnchor];
    trailingAnchor16 = [v307 trailingAnchor];
    v118 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16];
    [v3 addObject:v118];

    bottomAnchor16 = [v109 bottomAnchor];
    topAnchor22 = [v22 topAnchor];
    v121 = MTUIIsLargeText();
    v122 = 24.0;
    v123 = 0.0;
    if (v121)
    {
      v122 = 0.0;
    }

    v124 = [bottomAnchor16 constraintEqualToAnchor:topAnchor22 constant:v122];
    [v3 addObject:v124];

    if (self->_style == 5)
    {
      v123 = 12.0;
    }

    topAnchor23 = [(MTUITimerCountdownView *)self->_countdownView topAnchor];
    topAnchor24 = [v109 topAnchor];
    v127 = [topAnchor23 constraintEqualToAnchor:topAnchor24 constant:v123 + 0.0];
    [v3 addObject:v127];

    centerXAnchor13 = [(MTUITimerCountdownView *)self->_countdownView centerXAnchor];
    centerXAnchor14 = [v109 centerXAnchor];
    v130 = [centerXAnchor13 constraintEqualToAnchor:centerXAnchor14];
    [v3 addObject:v130];

    widthAnchor11 = [(MTUITimerCountdownView *)self->_countdownView widthAnchor];
    heightAnchor11 = [(MTUITimerCountdownView *)self->_countdownView heightAnchor];
    v133 = [widthAnchor11 constraintEqualToAnchor:heightAnchor11];
    [v3 addObject:v133];

    bottomAnchor17 = [(MTUITimerCountdownView *)self->_countdownView bottomAnchor];
    bottomAnchor18 = [v109 bottomAnchor];
    v136 = [bottomAnchor17 constraintEqualToAnchor:bottomAnchor18 constant:-v123];
    [v3 addObject:v136];

    [(MTUITimerCountdownView *)self->_countdownView frame];
    v138 = v137 * v137;
    font4 = [(UILabel *)self->_timeView font];
    [font4 pointSize];
    v141 = sqrt(v138 + v140 * v140);

    widthAnchor12 = [v21 widthAnchor];
    v143 = [widthAnchor12 constraintEqualToConstant:v141 * 0.8];
    [v3 addObject:v143];

    topAnchor25 = [(UILabel *)self->_timeView topAnchor];
    topAnchor26 = [v21 topAnchor];
    v146 = [topAnchor25 constraintEqualToAnchor:topAnchor26];
    [v3 addObject:v146];

    leftAnchor = [(UILabel *)self->_timeView leftAnchor];
    leftAnchor2 = [v21 leftAnchor];
    v149 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v3 addObject:v149];

    rightAnchor = [(UILabel *)self->_timeView rightAnchor];
    rightAnchor2 = [v21 rightAnchor];
    v152 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v3 addObject:v152];

    heightAnchor12 = [(UILabel *)self->_timeView heightAnchor];
    font5 = [(UILabel *)self->_timeView font];
    [font5 pointSize];
    v155 = [heightAnchor12 constraintEqualToConstant:?];
    [v3 addObject:v155];

    [(MTATimerControlsView *)self compactSizeFont];
    v156 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    mtui_fontByAddingTimeFontAttributes2 = [v156 mtui_fontByAddingTimeFontAttributes];
    [(UILabel *)self->_timeView setFont:mtui_fontByAddingTimeFontAttributes2];

    centerXAnchor15 = [(MTUIGlyphTimeView *)self->_expectedTimeView centerXAnchor];
    centerXAnchor16 = [(UILabel *)self->_timeView centerXAnchor];
    v160 = [centerXAnchor15 constraintEqualToAnchor:centerXAnchor16];
    [v3 addObject:v160];

    topAnchor27 = [(MTUIGlyphTimeView *)self->_expectedTimeView topAnchor];
    bottomAnchor19 = [(UILabel *)self->_timeView bottomAnchor];
    v163 = [topAnchor27 constraintEqualToAnchor:bottomAnchor19 constant:12.0];
    [v3 addObject:v163];

    if (MTUIIsLargeText())
    {
      widthAnchor13 = [(MTUIGlyphTimeView *)self->_expectedTimeView widthAnchor];
      v165 = [widthAnchor13 constraintEqualToConstant:v141 * 0.5];
      [v3 addObject:v165];
    }

    heightAnchor13 = [(MTUIGlyphTimeView *)self->_expectedTimeView heightAnchor];
    timeLabel2 = [(MTUIGlyphTimeView *)self->_expectedTimeView timeLabel];
    font6 = [timeLabel2 font];
    [font6 lineHeight];
    v169 = [heightAnchor13 constraintEqualToConstant:?];
    [v3 addObject:v169];

    bottomAnchor20 = [(MTUIGlyphTimeView *)self->_expectedTimeView bottomAnchor];
    bottomAnchor21 = [v21 bottomAnchor];
    v172 = [bottomAnchor20 constraintEqualToAnchor:bottomAnchor21];
    [v3 addObject:v172];

    centerYAnchor5 = [(MTATimerIntervalPickerView *)self->_timePicker centerYAnchor];
    centerYAnchor6 = [v109 centerYAnchor];
    v175 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:-12.0];
    [v3 addObject:v175];

    centerXAnchor17 = [(MTATimerIntervalPickerView *)self->_timePicker centerXAnchor];
    v304 = v109;
    centerXAnchor18 = [v109 centerXAnchor];
    v178 = [centerXAnchor17 constraintEqualToAnchor:centerXAnchor18];
    [v3 addObject:v178];

    heightAnchor14 = [(MTATimerIntervalPickerView *)self->_timePicker heightAnchor];
    [(MTATimerIntervalPickerView *)self->_timePicker frame];
    v181 = [heightAnchor14 constraintEqualToConstant:v180];
    [v3 addObject:v181];

    widthAnchor14 = [(MTATimerIntervalPickerView *)self->_timePicker widthAnchor];
    [(MTATimerIntervalPickerView *)self->_timePicker frame];
    v184 = [widthAnchor14 constraintEqualToConstant:v183];
    [v3 addObject:v184];

    bottomAnchor14 = objc_opt_new();
    [(MTATimerControlsView *)self addLayoutGuide:bottomAnchor14];
    topAnchor28 = [bottomAnchor14 topAnchor];
    bottomAnchor22 = [v305 bottomAnchor];
    v188 = [topAnchor28 constraintEqualToAnchor:bottomAnchor22 constant:34.0];
    [v3 addObject:v188];

    leadingAnchor17 = [bottomAnchor14 leadingAnchor];
    v190 = v307;
    leadingAnchor18 = [v307 leadingAnchor];
    v192 = [leadingAnchor17 constraintEqualToAnchor:leadingAnchor18];
    [v3 addObject:v192];

    trailingAnchor17 = [bottomAnchor14 trailingAnchor];
    trailingAnchor18 = [v307 trailingAnchor];
    v195 = [trailingAnchor17 constraintEqualToAnchor:trailingAnchor18];
    [v3 addObject:v195];

    heightAnchor15 = [bottomAnchor14 heightAnchor];
    if (MTUIIsLargeText())
    {
      v197 = 104.0;
    }

    else
    {
      v197 = 52.0;
    }

    tableRows2 = [(MTATimerControlsView *)self tableRows];
    v199 = [heightAnchor15 constraintEqualToConstant:{v197 * objc_msgSend(tableRows2, "count")}];
    [v3 addObject:v199];

    topAnchor29 = [(UITableView *)self->_tableView topAnchor];
    topAnchor30 = [bottomAnchor14 topAnchor];
    v202 = [topAnchor29 constraintEqualToAnchor:topAnchor30];
    [v3 addObject:v202];

    trailingAnchor19 = [(UITableView *)self->_tableView trailingAnchor];
    trailingAnchor20 = [bottomAnchor14 trailingAnchor];
    v205 = [trailingAnchor19 constraintEqualToAnchor:trailingAnchor20 constant:-16.0];
    [v3 addObject:v205];

    leadingAnchor19 = [(UITableView *)self->_tableView leadingAnchor];
    leadingAnchor20 = [bottomAnchor14 leadingAnchor];
    v208 = [leadingAnchor19 constraintEqualToAnchor:leadingAnchor20 constant:16.0];
    [v3 addObject:v208];

    bottomAnchor15 = [(UITableView *)self->_tableView bottomAnchor];
    v185BottomAnchor = [bottomAnchor14 bottomAnchor];
    v211 = [bottomAnchor15 constraintEqualToAnchor:v185BottomAnchor];
    [v3 addObject:v211];
  }

  centerXAnchor19 = [v21 centerXAnchor];
  centerXAnchor20 = [(MTUITimerCountdownView *)self->_countdownView centerXAnchor];
  v297 = [centerXAnchor19 constraintEqualToAnchor:centerXAnchor20];
  [v3 addObject:v297];

  centerYAnchor7 = [v21 centerYAnchor];
  centerYAnchor8 = [(MTUITimerCountdownView *)self->_countdownView centerYAnchor];
  v300 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  [v3 addObject:v300];

  return v3;
}

- (id)iPadSingleCellNewTimerConstraints
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v4 setIdentifier:@"parentContainer"];
  [(MTATimerControlsView *)self addLayoutGuide:v4];
  safeAreaLayoutGuide = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  topAnchor2 = [v4 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v3 addObject:v8];

  safeAreaLayoutGuide2 = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v3 addObject:v12];

  safeAreaLayoutGuide3 = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  leadingAnchor = [safeAreaLayoutGuide3 leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v3 addObject:v16];

  safeAreaLayoutGuide4 = [(MTATimerControlsView *)self safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide4 trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v3 addObject:v20];

  v21 = objc_opt_new();
  [v21 setIdentifier:@"groupedTimeContainer"];
  [(MTATimerControlsView *)self addLayoutGuide:v21];
  v22 = objc_opt_new();
  [v22 setIdentifier:@"buttonsContainer"];
  [(MTATimerControlsView *)self addLayoutGuide:v22];
  mtui_isRTL = [(MTATimerControlsView *)self mtui_isRTL];
  buttonsController = self->_buttonsController;
  if (mtui_isRTL)
  {
    [(MTATimerButtonsController *)buttonsController startStopButton];
  }

  else
  {
    [(MTATimerButtonsController *)buttonsController cancelButton];
  }
  v25 = ;
  mtui_isRTL2 = [(MTATimerControlsView *)self mtui_isRTL];
  v27 = self->_buttonsController;
  if (mtui_isRTL2)
  {
    [(MTATimerButtonsController *)v27 cancelButton];
  }

  else
  {
    [(MTATimerButtonsController *)v27 startStopButton];
  }
  v28 = ;
  +[MTAUtilities controlButtonAttributesForView:buttonCircleSize:](MTAUtilities, "controlButtonAttributesForView:buttonCircleSize:", self, [v28 buttonCircleSize]);
  topAnchor3 = [v25 topAnchor];
  topAnchor4 = [v22 topAnchor];
  v31 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v3 addObject:v31];

  topAnchor5 = [v28 topAnchor];
  topAnchor6 = [v22 topAnchor];
  v34 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v3 addObject:v34];

  bottomAnchor3 = [v25 bottomAnchor];
  bottomAnchor4 = [v22 bottomAnchor];
  v37 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v3 addObject:v37];

  bottomAnchor5 = [v28 bottomAnchor];
  bottomAnchor6 = [v22 bottomAnchor];
  v40 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [v3 addObject:v40];

  widthAnchor = [v28 widthAnchor];
  v42 = [widthAnchor constraintEqualToConstant:0.0];
  [v3 addObject:v42];

  widthAnchor2 = [v28 widthAnchor];
  heightAnchor = [v28 heightAnchor];
  v45 = [widthAnchor2 constraintEqualToAnchor:heightAnchor];
  [v3 addObject:v45];

  widthAnchor3 = [v25 widthAnchor];
  v47 = [widthAnchor3 constraintEqualToConstant:0.0];
  [v3 addObject:v47];

  widthAnchor4 = [v25 widthAnchor];
  heightAnchor2 = [v25 heightAnchor];
  v50 = [widthAnchor4 constraintEqualToAnchor:heightAnchor2];
  [v3 addObject:v50];

  heightAnchor3 = [v22 heightAnchor];
  v52 = [heightAnchor3 constraintEqualToConstant:0.0];
  [v3 addObject:v52];

  leadingAnchor3 = [v22 leadingAnchor];
  leadingAnchor4 = [v4 leadingAnchor];
  v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v3 addObject:v55];

  trailingAnchor3 = [v22 trailingAnchor];
  trailingAnchor4 = [v4 trailingAnchor];
  v58 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v3 addObject:v58];

  v196 = v25;
  leadingAnchor5 = [v25 leadingAnchor];
  leadingAnchor6 = [v22 leadingAnchor];
  v61 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
  [v3 addObject:v61];

  v197 = v28;
  trailingAnchor5 = [v28 trailingAnchor];
  trailingAnchor6 = [v22 trailingAnchor];
  v64 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  [v3 addObject:v64];

  v65 = objc_opt_new();
  [v65 setIdentifier:@"pickerCountdownContainer"];
  [(MTATimerControlsView *)self addLayoutGuide:v65];
  v194 = v4;
  v195 = v22;
  if (+[MTAUtilities isLandscape])
  {
    v66 = +[UIApplication sharedApplication];
    delegate = [v66 delegate];

    centerYAnchor = [v22 centerYAnchor];
    [(MTATimerControlsView *)self topAnchor];
    v70 = v69 = v4;
    [delegate visibleViewHeight];
    v72 = [centerYAnchor constraintEqualToAnchor:v70 constant:v71 * 0.5];
    [v3 addObject:v72];

    centerYAnchor2 = [v65 centerYAnchor];
    centerYAnchor3 = [v69 centerYAnchor];
    v75 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
    [v3 addObject:v75];

    centerXAnchor = [v65 centerXAnchor];
    centerXAnchor2 = [v69 centerXAnchor];
    v78 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v3 addObject:v78];

    v79 = +[UIScreen mainScreen];
    [v79 bounds];
    v81 = v80;

    v82 = +[UIScreen mainScreen];
    [v82 bounds];
    v84 = v83;

    if (v81 >= v84)
    {
      v81 = v84;
    }

    heightAnchor4 = [v65 heightAnchor];
    topAnchor13 = [heightAnchor4 constraintEqualToConstant:v81 * 0.64];

    LODWORD(v87) = 1144750080;
    [topAnchor13 setPriority:v87];
    [v3 addObject:topAnchor13];
    heightAnchor5 = [v65 heightAnchor];
    widthAnchor5 = [v65 widthAnchor];
    v90 = [heightAnchor5 constraintEqualToAnchor:widthAnchor5];
    [v3 addObject:v90];

    leadingAnchor7 = [v65 leadingAnchor];
    trailingAnchor7 = [v196 trailingAnchor];
    v93 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:trailingAnchor7 constant:8.0];
    [v3 addObject:v93];

    trailingAnchor8 = [v65 trailingAnchor];
    leadingAnchor8 = [v197 leadingAnchor];
    v96 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:leadingAnchor8 constant:8.0];
    [v3 addObject:v96];

    topAnchor7 = [(MTUITimerCountdownView *)self->_countdownView topAnchor];
    topAnchor8 = [v65 topAnchor];
    v99 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    [v3 addObject:v99];
  }

  else
  {
    topAnchor9 = [v22 topAnchor];
    topAnchor10 = [v4 topAnchor];
    [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:0.0];
    v103 = v102 = v22;
    [v3 addObject:v103];

    topAnchor11 = [v65 topAnchor];
    topAnchor12 = [v4 topAnchor];
    v106 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
    [v3 addObject:v106];

    leadingAnchor9 = [v65 leadingAnchor];
    leadingAnchor10 = [v4 leadingAnchor];
    v109 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    [v3 addObject:v109];

    trailingAnchor9 = [v65 trailingAnchor];
    trailingAnchor10 = [v4 trailingAnchor];
    v112 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    [v3 addObject:v112];

    bottomAnchor7 = [v65 bottomAnchor];
    bottomAnchor8 = [v102 bottomAnchor];
    v115 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-24.0];
    [v3 addObject:v115];

    delegate = [(MTUITimerCountdownView *)self->_countdownView topAnchor];
    topAnchor13 = [v65 topAnchor];
    topAnchor7 = [delegate constraintEqualToAnchor:topAnchor13 constant:0.0];
    [v3 addObject:topAnchor7];
  }

  centerXAnchor3 = [(MTUITimerCountdownView *)self->_countdownView centerXAnchor];
  centerXAnchor4 = [v65 centerXAnchor];
  v118 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v3 addObject:v118];

  widthAnchor6 = [(MTUITimerCountdownView *)self->_countdownView widthAnchor];
  heightAnchor6 = [(MTUITimerCountdownView *)self->_countdownView heightAnchor];
  v121 = [widthAnchor6 constraintEqualToAnchor:heightAnchor6];
  [v3 addObject:v121];

  bottomAnchor9 = [(MTUITimerCountdownView *)self->_countdownView bottomAnchor];
  bottomAnchor10 = [v65 bottomAnchor];
  v124 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  [v3 addObject:v124];

  v125 = [UIFont systemFontOfSize:130.0 weight:UIFontWeightThin];
  mtui_fontByAddingTimeFontAttributes = [v125 mtui_fontByAddingTimeFontAttributes];
  [(UILabel *)self->_timeView setFont:mtui_fontByAddingTimeFontAttributes];

  [(MTUITimerCountdownView *)self->_countdownView frame];
  v128 = v127 * v127;
  font = [(UILabel *)self->_timeView font];
  [font pointSize];
  v131 = sqrt(v128 + v130 * v130);

  if (v131 >= 288.0)
  {
    v132 = v131;
  }

  else
  {
    v132 = 288.0;
  }

  widthAnchor7 = [v21 widthAnchor];
  v134 = [widthAnchor7 constraintEqualToConstant:v132];
  [v3 addObject:v134];

  topAnchor14 = [(MTUIGlyphTimeView *)self->_expectedTimeView topAnchor];
  topAnchor15 = [v21 topAnchor];
  v137 = [topAnchor14 constraintEqualToAnchor:topAnchor15];
  [v3 addObject:v137];

  heightAnchor7 = [(MTUIGlyphTimeView *)self->_expectedTimeView heightAnchor];
  timeLabel = [(MTUIGlyphTimeView *)self->_expectedTimeView timeLabel];
  font2 = [timeLabel font];
  [font2 lineHeight];
  v141 = [heightAnchor7 constraintEqualToConstant:?];
  [v3 addObject:v141];

  centerXAnchor5 = [(MTUIGlyphTimeView *)self->_expectedTimeView centerXAnchor];
  centerXAnchor6 = [v21 centerXAnchor];
  v144 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v3 addObject:v144];

  topAnchor16 = [(UILabel *)self->_timeView topAnchor];
  bottomAnchor11 = [(MTUIGlyphTimeView *)self->_expectedTimeView bottomAnchor];
  v147 = [topAnchor16 constraintEqualToAnchor:bottomAnchor11];
  [v3 addObject:v147];

  centerXAnchor7 = [(UILabel *)self->_timeView centerXAnchor];
  centerXAnchor8 = [(MTUITimerCountdownView *)self->_countdownView centerXAnchor];
  v150 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  [v3 addObject:v150];

  heightAnchor8 = [(UILabel *)self->_timeView heightAnchor];
  font3 = [(UILabel *)self->_timeView font];
  [font3 lineHeight];
  v153 = [heightAnchor8 constraintEqualToConstant:?];
  [v3 addObject:v153];

  widthAnchor8 = [(UILabel *)self->_timeView widthAnchor];
  v155 = [widthAnchor8 constraintEqualToConstant:v131 * 0.8];
  [(MTATimerControlsView *)self setTimerCountdownWidthConstraint:v155];

  timerCountdownWidthConstraint = [(MTATimerControlsView *)self timerCountdownWidthConstraint];
  [v3 addObject:timerCountdownWidthConstraint];

  centerXAnchor9 = [(MTATimerIntervalPickerView *)self->_timePicker centerXAnchor];
  centerXAnchor10 = [v65 centerXAnchor];
  v159 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  [v3 addObject:v159];

  bottomAnchor12 = [(MTATimerIntervalPickerView *)self->_timePicker bottomAnchor];
  topAnchor17 = [(UITableView *)self->_tableView topAnchor];
  v162 = [bottomAnchor12 constraintEqualToAnchor:topAnchor17 constant:-34.0];
  [v3 addObject:v162];

  heightAnchor9 = [(MTATimerIntervalPickerView *)self->_timePicker heightAnchor];
  [(MTATimerIntervalPickerView *)self->_timePicker frame];
  v165 = [heightAnchor9 constraintEqualToConstant:v164];
  [v3 addObject:v165];

  widthAnchor9 = [(MTATimerIntervalPickerView *)self->_timePicker widthAnchor];
  [(MTATimerIntervalPickerView *)self->_timePicker frame];
  v168 = [widthAnchor9 constraintEqualToConstant:v167];
  [v3 addObject:v168];

  topAnchor18 = [(UITableView *)self->_tableView topAnchor];
  bottomAnchor13 = [(UILabel *)self->_timeView bottomAnchor];
  v171 = [topAnchor18 constraintEqualToAnchor:bottomAnchor13 constant:17.0];
  [v3 addObject:v171];

  centerXAnchor11 = [(UITableView *)self->_tableView centerXAnchor];
  centerXAnchor12 = [v21 centerXAnchor];
  v174 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
  [v3 addObject:v174];

  [(MTUITimerCountdownView *)self->_countdownView size];
  v176 = sqrt(v175 * v175 * 0.5) * 0.9;
  widthAnchor10 = [(UITableView *)self->_tableView widthAnchor];
  v178 = [widthAnchor10 constraintEqualToConstant:{fmin(v176, 332.0)}];
  [(MTATimerControlsView *)self setTableWidthConstraint:v178];

  tableWidthConstraint = [(MTATimerControlsView *)self tableWidthConstraint];
  [v3 addObject:tableWidthConstraint];

  heightAnchor10 = [(UITableView *)self->_tableView heightAnchor];
  if (MTUIIsLargeText())
  {
    v181 = 104.0;
  }

  else
  {
    v181 = 52.0;
  }

  tableRows = [(MTATimerControlsView *)self tableRows];
  v183 = [heightAnchor10 constraintEqualToConstant:{v181 * objc_msgSend(tableRows, "count")}];
  [v3 addObject:v183];

  bottomAnchor14 = [(UITableView *)self->_tableView bottomAnchor];
  bottomAnchor15 = [v21 bottomAnchor];
  v186 = [bottomAnchor14 constraintEqualToAnchor:bottomAnchor15];
  [v3 addObject:v186];

  centerXAnchor13 = [v21 centerXAnchor];
  centerXAnchor14 = [(MTUITimerCountdownView *)self->_countdownView centerXAnchor];
  v189 = [centerXAnchor13 constraintEqualToAnchor:centerXAnchor14];
  [v3 addObject:v189];

  centerYAnchor4 = [v21 centerYAnchor];
  centerYAnchor5 = [(MTUITimerCountdownView *)self->_countdownView centerYAnchor];
  v192 = [centerYAnchor4 constraintEqualToAnchor:centerYAnchor5];
  [v3 addObject:v192];

  return v3;
}

- (id)setupCollectionViewConstraints
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v4 setIdentifier:@"parentContainer"];
  [(MTATimerControlsView *)self _addLayoutGuide:v4];
  topAnchor = [(MTATimerControlsView *)self topAnchor];
  topAnchor2 = [v4 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v3 addObject:v7];

  bottomAnchor = [(MTATimerControlsView *)self bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v3 addObject:v10];

  leadingAnchor = [(MTATimerControlsView *)self leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v3 addObject:v13];

  trailingAnchor = [(MTATimerControlsView *)self trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v3 addObject:v16];

  v17 = objc_opt_new();
  [v17 setIdentifier:@"groupedTimeView"];
  [(MTATimerControlsView *)self _addLayoutGuide:v17];
  centerXAnchor = [v17 centerXAnchor];
  centerXAnchor2 = [v4 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v3 addObject:v20];

  centerYAnchor = [v17 centerYAnchor];
  centerYAnchor2 = [v4 centerYAnchor];
  v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v3 addObject:v23];

  centerXAnchor3 = [(UILabel *)self->_timeView centerXAnchor];
  centerXAnchor4 = [v17 centerXAnchor];
  v26 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v3 addObject:v26];

  centerYAnchor3 = [(UILabel *)self->_timeView centerYAnchor];
  centerYAnchor4 = [v17 centerYAnchor];
  v29 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v3 addObject:v29];

  widthAnchor = [v17 widthAnchor];
  widthAnchor2 = [(MTUITimerCountdownView *)self->_countdownView widthAnchor];
  v32 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v3 addObject:v32];

  leadingAnchor3 = [(UILabel *)self->_timeView leadingAnchor];
  leadingAnchor4 = [(MTUITimerCountdownView *)self->_countdownView leadingAnchor];
  v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
  [v3 addObject:v35];

  trailingAnchor3 = [(UILabel *)self->_timeView trailingAnchor];
  trailingAnchor4 = [(MTUITimerCountdownView *)self->_countdownView trailingAnchor];
  v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-12.0];
  [v3 addObject:v38];

  v39 = [UIFont systemFontOfSize:64.0 weight:UIFontWeightThin];
  mtui_fontByAddingTimeFontAttributes = [v39 mtui_fontByAddingTimeFontAttributes];

  [(UILabel *)self->_timeView setFont:mtui_fontByAddingTimeFontAttributes];
  centerXAnchor5 = [(MTUIGlyphTimeView *)self->_expectedTimeView centerXAnchor];
  centerXAnchor6 = [v17 centerXAnchor];
  v43 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v3 addObject:v43];

  lastBaselineAnchor = [(MTUIGlyphTimeView *)self->_expectedTimeView lastBaselineAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_timeView lastBaselineAnchor];
  [mtui_fontByAddingTimeFontAttributes capHeight];
  v47 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:-(v46 + 20.0)];
  [v3 addObject:v47];

  topAnchor3 = [(MTUIGlyphTimeView *)self->_expectedTimeView topAnchor];
  topAnchor4 = [v17 topAnchor];
  v50 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  [v3 addObject:v50];

  leadingAnchor5 = [(MTUIGlyphTimeView *)self->_expectedTimeView leadingAnchor];
  leadingAnchor6 = [(UILabel *)self->_timeView leadingAnchor];
  v53 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];
  [v3 addObject:v53];

  trailingAnchor5 = [(MTUIGlyphTimeView *)self->_expectedTimeView trailingAnchor];
  trailingAnchor6 = [(UILabel *)self->_timeView trailingAnchor];
  v56 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
  [v3 addObject:v56];

  centerXAnchor7 = [(UILabel *)self->_timerNameLabel centerXAnchor];
  centerXAnchor8 = [v17 centerXAnchor];
  v59 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  [v3 addObject:v59];

  font = [(UILabel *)self->_timerNameLabel font];
  [font lineHeight];
  v62 = v61 * 0.5;

  centerYAnchor5 = [(UILabel *)self->_timerNameLabel centerYAnchor];
  lastBaselineAnchor3 = [(UILabel *)self->_timeView lastBaselineAnchor];
  v65 = [centerYAnchor5 constraintEqualToAnchor:lastBaselineAnchor3 constant:v62 + 20.0];
  [v3 addObject:v65];

  bottomAnchor3 = [(UILabel *)self->_timerNameLabel bottomAnchor];
  bottomAnchor4 = [v17 bottomAnchor];
  v68 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  [v3 addObject:v68];

  widthAnchor3 = [(UILabel *)self->_timerNameLabel widthAnchor];
  widthAnchor4 = [(MTUITimerCountdownView *)self->_countdownView widthAnchor];
  v71 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.6];
  [v3 addObject:v71];

  widthAnchor5 = [(MTUITimerCountdownView *)self->_countdownView widthAnchor];
  widthAnchor6 = [v4 widthAnchor];
  v74 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:0.78];
  [v3 addObject:v74];

  heightAnchor = [(MTUITimerCountdownView *)self->_countdownView heightAnchor];
  widthAnchor7 = [(MTUITimerCountdownView *)self->_countdownView widthAnchor];
  v77 = [heightAnchor constraintEqualToAnchor:widthAnchor7];
  [v3 addObject:v77];

  centerXAnchor9 = [(MTUITimerCountdownView *)self->_countdownView centerXAnchor];
  centerXAnchor10 = [v4 centerXAnchor];
  v80 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  [v3 addObject:v80];

  centerYAnchor6 = [(MTUITimerCountdownView *)self->_countdownView centerYAnchor];
  centerYAnchor7 = [v4 centerYAnchor];
  v83 = [centerYAnchor6 constraintEqualToAnchor:centerYAnchor7];
  [v3 addObject:v83];

  widthAnchor8 = [(MTUITimerCountdownView *)self->_countdownView widthAnchor];
  heightAnchor2 = [(MTUITimerCountdownView *)self->_countdownView heightAnchor];
  v86 = [widthAnchor8 constraintEqualToAnchor:heightAnchor2];
  [v3 addObject:v86];

  centerYAnchor8 = [(MTUITimerCountdownView *)self->_countdownView centerYAnchor];
  centerYAnchor9 = [v17 centerYAnchor];
  v89 = [centerYAnchor8 constraintEqualToAnchor:centerYAnchor9];
  [v3 addObject:v89];

  stopButton = [(MTATimerControlsView *)self stopButton];
  widthAnchor9 = [stopButton widthAnchor];
  v92 = [widthAnchor9 constraintEqualToConstant:40.0];
  [v3 addObject:v92];

  stopButton2 = [(MTATimerControlsView *)self stopButton];
  heightAnchor3 = [stopButton2 heightAnchor];
  stopButton3 = [(MTATimerControlsView *)self stopButton];
  widthAnchor10 = [stopButton3 widthAnchor];
  v97 = [heightAnchor3 constraintEqualToAnchor:widthAnchor10];
  [v3 addObject:v97];

  stopButton4 = [(MTATimerControlsView *)self stopButton];
  leadingAnchor7 = [stopButton4 leadingAnchor];
  leadingAnchor8 = [v4 leadingAnchor];
  v101 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:15.0];
  [v3 addObject:v101];

  stopButton5 = [(MTATimerControlsView *)self stopButton];
  bottomAnchor5 = [stopButton5 bottomAnchor];
  bottomAnchor6 = [v4 bottomAnchor];
  v105 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-15.0];
  [v3 addObject:v105];

  pauseResumeButton = [(MTATimerControlsView *)self pauseResumeButton];
  widthAnchor11 = [pauseResumeButton widthAnchor];
  v108 = [widthAnchor11 constraintEqualToConstant:40.0];
  [v3 addObject:v108];

  pauseResumeButton2 = [(MTATimerControlsView *)self pauseResumeButton];
  heightAnchor4 = [pauseResumeButton2 heightAnchor];
  pauseResumeButton3 = [(MTATimerControlsView *)self pauseResumeButton];
  widthAnchor12 = [pauseResumeButton3 widthAnchor];
  v113 = [heightAnchor4 constraintEqualToAnchor:widthAnchor12];
  [v3 addObject:v113];

  pauseResumeButton4 = [(MTATimerControlsView *)self pauseResumeButton];
  trailingAnchor7 = [pauseResumeButton4 trailingAnchor];
  trailingAnchor8 = [v4 trailingAnchor];
  v117 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-15.0];
  [v3 addObject:v117];

  pauseResumeButton5 = [(MTATimerControlsView *)self pauseResumeButton];
  bottomAnchor7 = [pauseResumeButton5 bottomAnchor];
  bottomAnchor8 = [v4 bottomAnchor];
  v121 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-15.0];
  [v3 addObject:v121];

  return v3;
}

- (void)setButtonControlViewsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  cancelButton = [(MTATimerButtonsController *)self->_buttonsController cancelButton];
  [cancelButton setHidden:hiddenCopy];

  startStopButton = [(MTATimerButtonsController *)self->_buttonsController startStopButton];
  [startStopButton setHidden:hiddenCopy];
}

- (void)resetLayoutGuides
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  layoutGuides = [(MTATimerControlsView *)self layoutGuides];
  v4 = [layoutGuides countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(layoutGuides);
        }

        [(MTATimerControlsView *)self removeLayoutGuide:*(*(&v9 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [layoutGuides countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  layoutGuides2 = [(MTATimerControlsView *)self layoutGuides];
  [layoutGuides2 removeAllObjects];
}

- (void)_addLayoutGuide:(id)guide
{
  guideCopy = guide;
  [(MTATimerControlsView *)self addLayoutGuide:guideCopy];
  [(NSMutableArray *)self->_layoutGuides addObject:guideCopy];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = MTATimerControlsView;
  [(MTATimerControlsView *)&v12 layoutSubviews];
  if (MTIdiomIpad() && self->_style - 3 <= 1)
  {
    [(MTUITimerCountdownView *)self->_countdownView size];
    v4 = fmin(sqrt(v3 * v3 * 0.5) * 0.9, 332.0);
    tableWidthConstraint = [(MTATimerControlsView *)self tableWidthConstraint];
    [tableWidthConstraint setConstant:v4];

    [(MTUITimerCountdownView *)self->_countdownView frame];
    v7 = v6 * v6;
    font = [(UILabel *)self->_timeView font];
    [font pointSize];
    v10 = sqrt(v7 + v9 * v9);

    timerCountdownWidthConstraint = [(MTATimerControlsView *)self timerCountdownWidthConstraint];
    [timerCountdownWidthConstraint setConstant:v10 * 0.8];
  }

  else if ([(MTATimerControlsView *)self shouldSetupConstraintsAtLayout])
  {
    [(MTATimerControlsView *)self setupConstraints];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MTATimerControlsView *)self tableRows:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableRows = [(MTATimerControlsView *)self tableRows];
  v7 = [pathCopy row];

  v8 = [tableRows objectAtIndexedSubscript:v7];
  unsignedIntValue = [v8 unsignedIntValue];

  if (unsignedIntValue)
  {
    if (unsignedIntValue == 1)
    {
      v10 = sub_100043B4C();
      textLabel = [(UITableViewCell *)self->_toneChooserCell textLabel];
      [textLabel setFont:v10];

      textLabel2 = [(UITableViewCell *)self->_toneChooserCell textLabel];
      [textLabel2 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

      v13 = +[UIColor mtui_primaryTextColor];
      textLabel3 = [(UITableViewCell *)self->_toneChooserCell textLabel];
      [textLabel3 setTextColor:v13];

      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"WHEN_TIMER_ENDS" value:&stru_1000AEF10 table:0];
      textLabel4 = [(UITableViewCell *)self->_toneChooserCell textLabel];
      [textLabel4 setText:v16];

      detailTextLabel = [(UITableViewCell *)self->_toneChooserCell detailTextLabel];
      [detailTextLabel setFont:v10];

      detailTextLabel2 = [(UITableViewCell *)self->_toneChooserCell detailTextLabel];
      [detailTextLabel2 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

      v20 = +[UIColor mtui_secondaryTextColor];
      detailTextLabel3 = [(UITableViewCell *)self->_toneChooserCell detailTextLabel];
      [detailTextLabel3 setTextColor:v20];

      toneName = self->_toneName;
      detailTextLabel4 = [(UITableViewCell *)self->_toneChooserCell detailTextLabel];
      [detailTextLabel4 setText:toneName];

      [(UITableViewCell *)self->_toneChooserCell setLayoutMargins:0.0, 16.0, 0.0, 0.0];
      v24 = self->_toneChooserCell;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    editLabelCell = self->_editLabelCell;
    v26 = sub_100043B4C();
    [(MTALabelEditCell *)editLabelCell setFont:v26];

    v24 = self->_editLabelCell;
  }

  return v24;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  tableRows = [(MTATimerControlsView *)self tableRows];
  v8 = [tableRows objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  unsignedIntValue = [v8 unsignedIntValue];

  if (unsignedIntValue == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
    [WeakRetained showSoundPicker:v11];

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableRows = [(MTATimerControlsView *)self tableRows];
  v7 = [pathCopy row];

  v8 = [tableRows objectAtIndexedSubscript:v7];
  LODWORD(v7) = [v8 unsignedIntValue];

  return v7 == 1;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = MTUIIsLargeText();
  result = 52.0;
  if (v4)
  {
    return 104.0;
  }

  return result;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = objc_opt_new();

  return v4;
}

- (void)pickerView:(id)view didChangeSelectedDuration:(double)duration
{
  [(MTATimerControlsView *)self setEdited:1];
  [(MTATimerButtonsController *)self->_buttonsController setShouldEnableStartButton:duration != 0.0];
  delegate = [(MTATimerControlsView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(MTATimerControlsView *)self delegate];
    [delegate2 timePickerDidSelectDuration:duration];
  }
}

- (BOOL)isRunningInThirdSplitView
{
  window = [(MTATimerControlsView *)self window];
  [window size];
  v4 = v3;

  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;

  return v4 < v7 * 0.5;
}

- (double)compactSizeFont
{
  isRunningInThirdSplitView = [(MTATimerControlsView *)self isRunningInThirdSplitView];
  v3 = &unk_10008BDA8;
  if (!isRunningInThirdSplitView)
  {
    v3 = &qword_10008BDB0;
  }

  return *v3;
}

+ (double)estimatedViewHeight
{
  if (!MTUIIsPadIdiom())
  {
    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    v10 = v9;
    [self estimatedNonCountdownElementHeight];
    v8 = v11 + v10 * 0.64;
LABEL_6:

    return v8;
  }

  v3 = +[MTAUtilities isLandscape];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  if (!v3)
  {
    v12 = 0.542 * v5;
    v13 = +[UIScreen mainScreen];
    [v13 bounds];
    v8 = fmin(v12, CGRectGetWidth(v15)) + 24.0;

    goto LABEL_6;
  }

  v6 = v5 * 0.5;

  [self estimatedCountdownViewHeight];
  return v6 + v7 / 3.0;
}

+ (double)estimatedCountdownViewHeight
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3 * 0.64;

  return v4;
}

+ (double)estimatedNonCountdownElementHeightWithSpacing
{
  [self estimatedNonCountdownElementHeight];
  v4 = v3;
  [self estimatedElementSpacing];
  return v4 + v5;
}

+ (double)estimatedTonePickerHeight
{
  v2 = MTUIIsLargeText();
  result = 104.0;
  if (v2)
  {
    return 208.0;
  }

  return result;
}

- (TimerControlsTarget)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end