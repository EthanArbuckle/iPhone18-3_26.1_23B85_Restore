@interface MTAAlarmCollectionViewCell
+ (double)cellHeight;
- (CGRect)editingPopoverSourceRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTAAlarmCollectionViewCell)initWithFrame:(CGRect)frame;
- (MTAAlarmCollectionViewCellDelegate)delegate;
- (void)deleteTapped:(id)tapped;
- (void)refreshUI:(id)i animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)toggleEnabled:(id)enabled;
@end

@implementation MTAAlarmCollectionViewCell

- (MTAAlarmCollectionViewCell)initWithFrame:(CGRect)frame
{
  v76.receiver = self;
  v76.super_class = MTAAlarmCollectionViewCell;
  v3 = [(MTAAlarmCollectionViewCell *)&v76 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[MTUIDigitalClockLabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(MTAAlarmCollectionViewCell *)v3 setTimeLabel:v4];

    v5 = [UIFont mtui_thinTimeFontOfSize:58.0];
    timeLabel = [(MTAAlarmCollectionViewCell *)v3 timeLabel];
    [timeLabel setFont:v5];

    v7 = [UIFont _lightSystemFontOfSize:30.0];
    timeLabel2 = [(MTAAlarmCollectionViewCell *)v3 timeLabel];
    [timeLabel2 setTimeDesignatorFont:v7];

    v9 = +[UIColor clearColor];
    timeLabel3 = [(MTAAlarmCollectionViewCell *)v3 timeLabel];
    [timeLabel3 setBackgroundColor:v9];

    timeLabel4 = [(MTAAlarmCollectionViewCell *)v3 timeLabel];
    dateLabel = [timeLabel4 dateLabel];
    [dateLabel setAdjustsFontSizeToFitWidth:1];

    v13 = objc_opt_new();
    [(MTAAlarmCollectionViewCell *)v3 setNameLabel:v13];

    nameLabel = [(MTAAlarmCollectionViewCell *)v3 nameLabel];
    [nameLabel setAdjustsFontForContentSizeCategory:1];

    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    nameLabel2 = [(MTAAlarmCollectionViewCell *)v3 nameLabel];
    [nameLabel2 setFont:v15];

    nameLabel3 = [(MTAAlarmCollectionViewCell *)v3 nameLabel];
    [nameLabel3 setAdjustsFontSizeToFitWidth:1];

    nameLabel4 = [(MTAAlarmCollectionViewCell *)v3 nameLabel];
    [nameLabel4 setMinimumFontSize:10.0];

    nameLabel5 = [(MTAAlarmCollectionViewCell *)v3 nameLabel];
    [nameLabel5 setLineBreakMode:4];

    v20 = objc_opt_new();
    [(MTAAlarmCollectionViewCell *)v3 setRepeatLabel:v20];

    repeatLabel = [(MTAAlarmCollectionViewCell *)v3 repeatLabel];
    [repeatLabel setAdjustsFontForContentSizeCategory:1];

    v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    repeatLabel2 = [(MTAAlarmCollectionViewCell *)v3 repeatLabel];
    [repeatLabel2 setFont:v22];

    repeatLabel3 = [(MTAAlarmCollectionViewCell *)v3 repeatLabel];
    [repeatLabel3 setAdjustsFontSizeToFitWidth:1];

    v25 = objc_opt_new();
    [(MTAAlarmCollectionViewCell *)v3 setSoundLabel:v25];

    soundLabel = [(MTAAlarmCollectionViewCell *)v3 soundLabel];
    [soundLabel setAdjustsFontForContentSizeCategory:1];

    v27 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    soundLabel2 = [(MTAAlarmCollectionViewCell *)v3 soundLabel];
    [soundLabel2 setFont:v27];

    soundLabel3 = [(MTAAlarmCollectionViewCell *)v3 soundLabel];
    [soundLabel3 setAdjustsFontSizeToFitWidth:1];

    v30 = objc_opt_new();
    [(MTAAlarmCollectionViewCell *)v3 setEnableSwitch:v30];

    v31 = +[UIColor mtui_switchTintColor];
    enableSwitch = [(MTAAlarmCollectionViewCell *)v3 enableSwitch];
    [enableSwitch setTintColor:v31];

    enableSwitch2 = [(MTAAlarmCollectionViewCell *)v3 enableSwitch];
    [enableSwitch2 addTarget:v3 action:"toggleEnabled:" forControlEvents:4096];

    enableSwitch3 = [(MTAAlarmCollectionViewCell *)v3 enableSwitch];
    [enableSwitch3 setPreferredStyle:2];

    v35 = [UIButton buttonWithType:0];
    [(MTAAlarmCollectionViewCell *)v3 setDeleteButton:v35];

    deleteButton = [(MTAAlarmCollectionViewCell *)v3 deleteButton];
    v37 = +[UIImage mtui_deleteButtonImage];
    [deleteButton setImage:v37 forState:0];

    deleteButton2 = [(MTAAlarmCollectionViewCell *)v3 deleteButton];
    [deleteButton2 addTarget:v3 action:"deleteTapped:" forControlEvents:64];

    deleteButton3 = [(MTAAlarmCollectionViewCell *)v3 deleteButton];
    LODWORD(v40) = 1148846080;
    [deleteButton3 setContentCompressionResistancePriority:0 forAxis:v40];

    deleteButton4 = [(MTAAlarmCollectionViewCell *)v3 deleteButton];
    LODWORD(v42) = 1148846080;
    [deleteButton4 setContentHuggingPriority:0 forAxis:v42];

    v43 = +[UIShape circleShape];
    deleteButton5 = [(MTAAlarmCollectionViewCell *)v3 deleteButton];
    hoverStyle = [deleteButton5 hoverStyle];
    [hoverStyle setShape:v43];

    deleteButton6 = [(MTAAlarmCollectionViewCell *)v3 deleteButton];
    [deleteButton6 setAlpha:0.0];

    v47 = +[UIColor mtui_foregroundColor];
    contentView = [(MTAAlarmCollectionViewCell *)v3 contentView];
    [contentView setBackgroundColor:v47];

    v49 = objc_opt_new();
    v50 = +[UIColor clearColor];
    [v49 setBackgroundColor:v50];

    deleteButton7 = [(MTAAlarmCollectionViewCell *)v3 deleteButton];
    v81[0] = deleteButton7;
    timeLabel5 = [(MTAAlarmCollectionViewCell *)v3 timeLabel];
    v81[1] = timeLabel5;
    v72 = [NSArray arrayWithObjects:v81 count:2];
    v82[0] = v72;
    v80[0] = v49;
    nameLabel6 = [(MTAAlarmCollectionViewCell *)v3 nameLabel];
    v80[1] = nameLabel6;
    v51 = [NSArray arrayWithObjects:v80 count:2];
    v82[1] = v51;
    v79[0] = v49;
    repeatLabel4 = [(MTAAlarmCollectionViewCell *)v3 repeatLabel];
    v79[1] = repeatLabel4;
    v53 = [NSArray arrayWithObjects:v79 count:2];
    v82[2] = v53;
    v78[0] = v49;
    v75 = v49;
    soundLabel4 = [(MTAAlarmCollectionViewCell *)v3 soundLabel];
    v78[1] = soundLabel4;
    v55 = [NSArray arrayWithObjects:v78 count:2];
    v82[3] = v55;
    v77[0] = v49;
    enableSwitch4 = [(MTAAlarmCollectionViewCell *)v3 enableSwitch];
    v77[1] = enableSwitch4;
    v57 = [NSArray arrayWithObjects:v77 count:2];
    v82[4] = v57;
    v58 = [NSArray arrayWithObjects:v82 count:5];
    v59 = [NUIContainerGridView containerGridViewWithArrangedSubviewRows:v58];
    gridView = v3->_gridView;
    v3->_gridView = v59;

    contentView2 = [(MTAAlarmCollectionViewCell *)v3 contentView];
    [contentView2 bounds];
    [(NUIContainerGridView *)v3->_gridView setFrame:?];

    [(NUIContainerGridView *)v3->_gridView setAutoresizingMask:18];
    [(NUIContainerGridView *)v3->_gridView setVerticalAlignment:3];
    [(NUIContainerGridView *)v3->_gridView setHorizontalAlignment:1];
    gridView = [(MTAAlarmCollectionViewCell *)v3 gridView];
    v63 = [gridView columnAtIndex:0];

    [v63 setAlignment:3];
    [v63 setLength:38.0];
    [(NUIContainerGridView *)v3->_gridView setColumnSpacing:0.0];
    [(NUIContainerGridView *)v3->_gridView setDirectionalLayoutMargins:98.0, 0.0, 53.0, 16.0];
    [(NUIContainerGridView *)v3->_gridView setBaselineRelativeLayoutMarginsForArrangement:1];
    contentView3 = [(MTAAlarmCollectionViewCell *)v3 contentView];
    [contentView3 addSubview:v3->_gridView];

    traitCollection = [(MTAAlarmCollectionViewCell *)v3 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    v67 = v66;
    contentView4 = [(MTAAlarmCollectionViewCell *)v3 contentView];
    layer = [contentView4 layer];
    [layer setCornerRadius:v67];
  }

  return v3;
}

+ (double)cellHeight
{
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 lineHeight];
  v4 = v3 * 3.0 + 7.0 + 115.0;
  [v2 _scaledValueForValue:8.0];
  v6 = v4 + v5 + 31.0 + 53.0;

  return v6;
}

- (void)deleteTapped:(id)tapped
{
  delegate = [(MTAAlarmCollectionViewCell *)self delegate];
  [delegate deleteCell:self];
}

- (void)toggleEnabled:(id)enabled
{
  isOn = [enabled isOn];
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = isOn;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CollectionViewCell: alarm active toggled to %d", v7, 8u);
  }

  delegate = [(MTAAlarmCollectionViewCell *)self delegate];
  [delegate setAlarmEnabled:isOn forCell:self];
}

- (CGRect)editingPopoverSourceRect
{
  timeLabel = [(MTAAlarmCollectionViewCell *)self timeLabel];
  [timeLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  contentView = [(MTAAlarmCollectionViewCell *)self contentView];
  [(MTAAlarmCollectionViewCell *)self convertRect:contentView fromView:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    if (editing)
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.0;
    }

    deleteButton = [(MTAAlarmCollectionViewCell *)self deleteButton];
    [deleteButton setAlpha:v4];

    if (self->_editing)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    enableSwitch = [(MTAAlarmCollectionViewCell *)self enableSwitch];
    [enableSwitch setAlpha:v6];

    LOBYTE(enableSwitch) = self->_editing;
    enableSwitch2 = [(MTAAlarmCollectionViewCell *)self enableSwitch];
    [enableSwitch2 setEnabled:(enableSwitch & 1) == 0];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  if (animated)
  {
    [UIView beginAnimations:@"MTAlarmCollectionCellEditing"];
    [(MTAAlarmCollectionViewCell *)self setEditing:editingCopy];

    +[UIView commitAnimations];
  }

  else
  {

    [(MTAAlarmCollectionViewCell *)self setEditing:?];
  }
}

- (void)refreshUI:(id)i animated:(BOOL)animated
{
  iCopy = i;
  isEnabled = [iCopy isEnabled];
  timeLabel = [(MTAAlarmCollectionViewCell *)self timeLabel];
  [timeLabel setHour:objc_msgSend(iCopy minute:{"hour"), objc_msgSend(iCopy, "minute")}];

  if (isEnabled)
  {
    +[UIColor mtui_primaryTextColor];
  }

  else
  {
    +[UIColor mtui_disabledTextColor];
  }
  v7 = ;
  timeLabel2 = [(MTAAlarmCollectionViewCell *)self timeLabel];
  [timeLabel2 setTextColor:v7];

  displayTitle = [iCopy displayTitle];
  nameLabel = [(MTAAlarmCollectionViewCell *)self nameLabel];
  [nameLabel setText:displayTitle];

  if (isEnabled)
  {
    +[UIColor mtui_primaryTextColor];
  }

  else
  {
    +[UIColor mtui_disabledTextColor];
  }
  v11 = ;
  nameLabel2 = [(MTAAlarmCollectionViewCell *)self nameLabel];
  [nameLabel2 setTextColor:v11];

  [iCopy repeatSchedule];
  v13 = DateMaskToString();
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"EDIT_REPEAT_FORMAT" value:&stru_1000AEF10 table:@"Localizable"];
  v16 = [NSString stringWithFormat:v15, v13];
  repeatLabel = [(MTAAlarmCollectionViewCell *)self repeatLabel];
  [repeatLabel setText:v16];

  if (isEnabled)
  {
    +[UIColor mtui_secondaryTextColor];
  }

  else
  {
    +[UIColor mtui_disabledTextColor];
  }
  v18 = ;
  repeatLabel2 = [(MTAAlarmCollectionViewCell *)self repeatLabel];
  [repeatLabel2 setTextColor:v18];

  v20 = +[TLToneManager sharedToneManager];
  sound = [iCopy sound];
  if ([sound soundType] == 2)
  {
    toneIdentifier = [sound toneIdentifier];
    v23 = [v20 nameForToneIdentifier:toneIdentifier];
LABEL_14:
    v26 = v23;

    goto LABEL_16;
  }

  if ([sound soundType] == 3)
  {
    v24 = [MPMediaItem alloc];
    mediaItemIdentifier = [sound mediaItemIdentifier];
    toneIdentifier = [v24 initWithPersistentID:{objc_msgSend(mediaItemIdentifier, "longLongValue")}];

    v23 = [toneIdentifier valueForProperty:MPMediaItemPropertyTitle];
    goto LABEL_14;
  }

  v26 = &stru_1000AEF10;
LABEL_16:
  v27 = [NSBundle bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"EDIT_SOUND_FORMAT" value:&stru_1000AEF10 table:@"Localizable"];
  v29 = [NSString stringWithFormat:v28, v26];
  soundLabel = [(MTAAlarmCollectionViewCell *)self soundLabel];
  [soundLabel setText:v29];

  if (isEnabled)
  {
    +[UIColor mtui_secondaryTextColor];
  }

  else
  {
    +[UIColor mtui_disabledTextColor];
  }
  v31 = ;
  soundLabel2 = [(MTAAlarmCollectionViewCell *)self soundLabel];
  [soundLabel2 setTextColor:v31];

  enableSwitch = [(MTAAlarmCollectionViewCell *)self enableSwitch];
  [enableSwitch setOn:isEnabled];

  [(MTAAlarmCollectionViewCell *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  gridView = [(MTAAlarmCollectionViewCell *)self gridView];
  [gridView effectiveLayoutSizeFittingSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (MTAAlarmCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end