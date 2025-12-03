@interface PHVoicemailGreetingPlaybackCell
+ (double)rowHeight;
- (PHVoicemailGreetingPlaybackCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (PHVoicemailGreetingPlaybackCellDelegate)delegate;
- (void)_buildConstraints;
- (void)_playStopButtonTapped:(id)tapped;
- (void)_recordStopButtonTapped:(id)tapped;
- (void)_updateConstraints;
- (void)_updateConstraintsConstants;
- (void)_updateFonts;
- (void)_updateRecordStopXConstraints;
- (void)_updateTextColor;
- (void)dealloc;
- (void)handleContentSizeCategoryDidChangeNotification:(id)notification;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)tintColorDidChange;
@end

@implementation PHVoicemailGreetingPlaybackCell

- (PHVoicemailGreetingPlaybackCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v41.receiver = self;
  v41.super_class = PHVoicemailGreetingPlaybackCell;
  v4 = [(PHVoicemailGreetingPlaybackCell *)&v41 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"handleContentSizeCategoryDidChangeNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [(PHVoicemailGreetingPlaybackCell *)v4 setSeparatorInset:UIEdgeInsetsZero.top, left, bottom, right];
    [(PHVoicemailGreetingPlaybackCell *)v4 setPreservesSuperviewLayoutMargins:0];
    [(PHVoicemailGreetingPlaybackCell *)v4 setLayoutMargins:UIEdgeInsetsZero.top, left, bottom, right];
    traitCollection = [(PHVoicemailGreetingPlaybackCell *)v4 traitCollection];
    v4->_accessibilityConstraintsEnabled = [traitCollection isPreferredContentSizeCategoryAccessible];

    v10 = [UIButton buttonWithType:0];
    playStopButton = v4->_playStopButton;
    v4->_playStopButton = v10;

    [(UIButton *)v4->_playStopButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_playStopButton setContentHorizontalAlignment:1];
    [(UIButton *)v4->_playStopButton addTarget:v4 action:"_playStopButtonTapped:" forControlEvents:64];
    LODWORD(v12) = 1148846080;
    [(UIButton *)v4->_playStopButton setContentHuggingPriority:1 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [(UIButton *)v4->_playStopButton setContentCompressionResistancePriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(UIButton *)v4->_playStopButton setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = -0.75;
    [(UIButton *)v4->_playStopButton setCharge:v15];
    [(UIButton *)v4->_playStopButton _setChargeEnabled:1];
    v16 = v4->_playStopButton;
    v17 = [UIImage systemImageNamed:@"play.fill"];
    [(UIButton *)v16 setImage:v17 forState:0];

    contentView = [(PHVoicemailGreetingPlaybackCell *)v4 contentView];
    [contentView addSubview:v4->_playStopButton];

    v19 = [UIButton buttonWithType:0];
    recordStopButton = v4->_recordStopButton;
    v4->_recordStopButton = v19;

    [(UIButton *)v4->_recordStopButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_recordStopButton setContentHorizontalAlignment:2];
    [(UIButton *)v4->_recordStopButton addTarget:v4 action:"_recordStopButtonTapped:" forControlEvents:64];
    LODWORD(v21) = 1148846080;
    [(UIButton *)v4->_recordStopButton setContentHuggingPriority:1 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [(UIButton *)v4->_recordStopButton setContentCompressionResistancePriority:1 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIButton *)v4->_recordStopButton setContentCompressionResistancePriority:0 forAxis:v23];
    LODWORD(v24) = -0.75;
    [(UIButton *)v4->_recordStopButton setCharge:v24];
    [(UIButton *)v4->_recordStopButton _setChargeEnabled:1];
    v25 = v4->_recordStopButton;
    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"RECORD" value:&stru_10028F310 table:@"Voicemail"];
    [(UIButton *)v25 setTitle:v27 forState:0];

    contentView2 = [(PHVoicemailGreetingPlaybackCell *)v4 contentView];
    [contentView2 addSubview:v4->_recordStopButton];

    v29 = [UILabel alloc];
    [(PHVoicemailGreetingPlaybackCell *)v4 bounds];
    v31 = v30;
    [objc_opt_class() rowHeight];
    v33 = [v29 initWithFrame:{0.0, 0.0, v31, v32}];
    recordingLabel = v4->_recordingLabel;
    v4->_recordingLabel = v33;

    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:@"RECORDING" value:&stru_10028F310 table:@"Voicemail"];
    [(UILabel *)v4->_recordingLabel setText:v36];

    [(UIButton *)v4->_recordStopButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = +[UIColor systemGrayColor];
    [(UILabel *)v4->_recordingLabel setTextColor:v37];

    [(UILabel *)v4->_recordingLabel setTextAlignment:1];
    v38 = +[UIFont telephonyUISubheadlineShortFont];
    [(UILabel *)v4->_recordingLabel setFont:v38];

    [(UILabel *)v4->_recordingLabel setHidden:1];
    contentView3 = [(PHVoicemailGreetingPlaybackCell *)v4 contentView];
    [contentView3 addSubview:v4->_recordingLabel];

    [(PHVoicemailGreetingPlaybackCell *)v4 _updateTextColor];
    [(PHVoicemailGreetingPlaybackCell *)v4 _updateFonts];
    [(PHVoicemailGreetingPlaybackCell *)v4 _updateConstraints];
  }

  return v4;
}

- (void)dealloc
{
  [(PHVoicemailGreetingPlaybackCell *)self setDelegate:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHVoicemailGreetingPlaybackCell;
  [(PHVoicemailGreetingPlaybackCell *)&v4 dealloc];
}

- (void)_buildConstraints
{
  if (![(PHVoicemailGreetingPlaybackCell *)self builtConstraints])
  {
    playStopButton = self->_playStopButton;
    contentView = [(PHVoicemailGreetingPlaybackCell *)self contentView];
    v5 = [NSLayoutConstraint constraintWithItem:playStopButton attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
    playStopYConstraint = self->_playStopYConstraint;
    self->_playStopYConstraint = v5;

    contentView2 = [(PHVoicemailGreetingPlaybackCell *)self contentView];
    [contentView2 addConstraint:self->_playStopYConstraint];

    contentView3 = [(PHVoicemailGreetingPlaybackCell *)self contentView];
    v9 = self->_playStopButton;
    contentView4 = [(PHVoicemailGreetingPlaybackCell *)self contentView];
    v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:4 relatedBy:-1 toItem:contentView4 attribute:4 multiplier:1.0 constant:0.0];
    [contentView3 addConstraint:v11];

    contentView5 = [(PHVoicemailGreetingPlaybackCell *)self contentView];
    v13 = self->_playStopButton;
    contentView6 = [(PHVoicemailGreetingPlaybackCell *)self contentView];
    v15 = [NSLayoutConstraint constraintWithItem:v13 attribute:1 relatedBy:0 toItem:contentView6 attribute:1 multiplier:1.0 constant:15.0];
    [contentView5 addConstraint:v15];

    recordStopButton = self->_recordStopButton;
    contentView7 = [(PHVoicemailGreetingPlaybackCell *)self contentView];
    v18 = [NSLayoutConstraint constraintWithItem:recordStopButton attribute:10 relatedBy:0 toItem:contentView7 attribute:10 multiplier:1.0 constant:0.0];
    recordStopYConstraint = self->_recordStopYConstraint;
    self->_recordStopYConstraint = v18;

    contentView8 = [(PHVoicemailGreetingPlaybackCell *)self contentView];
    [contentView8 addConstraint:self->_recordStopYConstraint];

    [(PHVoicemailGreetingPlaybackCell *)self _updateRecordStopXConstraints];

    [(PHVoicemailGreetingPlaybackCell *)self setBuiltConstraints:1];
  }
}

- (void)_updateRecordStopXConstraints
{
  if (self->_recordStopXConstraint)
  {
    contentView = [(PHVoicemailGreetingPlaybackCell *)self contentView];
    [contentView removeConstraint:self->_recordStopXConstraint];
  }

  accessibilityConstraintsEnabled = [(PHVoicemailGreetingPlaybackCell *)self accessibilityConstraintsEnabled];
  recordStopButton = self->_recordStopButton;
  if (accessibilityConstraintsEnabled)
  {
    v6 = [NSLayoutConstraint constraintWithItem:self->_recordStopButton attribute:1 relatedBy:0 toItem:self->_playStopButton attribute:1 multiplier:1.0 constant:0.0];
    recordStopXConstraint = self->_recordStopXConstraint;
    self->_recordStopXConstraint = v6;
  }

  else
  {
    recordStopXConstraint = [(PHVoicemailGreetingPlaybackCell *)self contentView];
    v8 = [NSLayoutConstraint constraintWithItem:recordStopButton attribute:2 relatedBy:0 toItem:recordStopXConstraint attribute:2 multiplier:1.0 constant:0.0];
    v9 = self->_recordStopXConstraint;
    self->_recordStopXConstraint = v8;
  }

  contentView2 = [(PHVoicemailGreetingPlaybackCell *)self contentView];
  [contentView2 addConstraint:self->_recordStopXConstraint];
}

- (void)_updateConstraintsConstants
{
  accessibilityConstraintsEnabled = [(PHVoicemailGreetingPlaybackCell *)self accessibilityConstraintsEnabled];
  recordStopXConstraint = self->_recordStopXConstraint;
  if (accessibilityConstraintsEnabled)
  {
    [(NSLayoutConstraint *)recordStopXConstraint setConstant:0.0];
    [objc_opt_class() rowHeight];
    [(NSLayoutConstraint *)self->_playStopYConstraint setConstant:v5 * -0.25];
    [objc_opt_class() rowHeight];
    v7 = v6 * 0.25;
  }

  else
  {
    [(NSLayoutConstraint *)recordStopXConstraint setConstant:-15.0];
    v7 = 0.0;
    [(NSLayoutConstraint *)self->_playStopYConstraint setConstant:0.0];
  }

  recordStopYConstraint = self->_recordStopYConstraint;

  [(NSLayoutConstraint *)recordStopYConstraint setConstant:v7];
}

- (void)_updateConstraints
{
  if (![(PHVoicemailGreetingPlaybackCell *)self builtConstraints])
  {
    [(PHVoicemailGreetingPlaybackCell *)self _buildConstraints];
  }

  [(PHVoicemailGreetingPlaybackCell *)self _updateConstraintsConstants];

  [(PHVoicemailGreetingPlaybackCell *)self setNeedsLayout];
}

- (void)_updateFonts
{
  v3 = +[UIFont telephonyUIBodyShortFont];
  titleLabel = [(UIButton *)self->_playStopButton titleLabel];
  [titleLabel setFont:v3];

  v6 = +[UIFont telephonyUIBodyShortFont];
  titleLabel2 = [(UIButton *)self->_recordStopButton titleLabel];
  [titleLabel2 setFont:v6];
}

- (void)_playStopButtonTapped:(id)tapped
{
  delegate = [(PHVoicemailGreetingPlaybackCell *)self delegate];
  [delegate playStopButtonTapped];
}

- (void)_recordStopButtonTapped:(id)tapped
{
  delegate = [(PHVoicemailGreetingPlaybackCell *)self delegate];
  [delegate recordStopButtonTapped];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = PHVoicemailGreetingPlaybackCell;
  [(PHVoicemailGreetingPlaybackCell *)&v5 setUserInteractionEnabled:?];
  [(UIButton *)self->_playStopButton setEnabled:enabledCopy];
  [(UIButton *)self->_recordStopButton setEnabled:enabledCopy];
}

+ (double)rowHeight
{
  v2 = +[UIScreen mainScreen];
  traitCollection = [v2 traitCollection];
  isPreferredContentSizeCategoryAccessible = [traitCollection isPreferredContentSizeCategoryAccessible];

  if (isPreferredContentSizeCategoryAccessible)
  {
    v5 = 86.0;
  }

  else
  {
    v5 = 43.0;
  }

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v6 _scaledValueForValue:v5];
  v8 = v7;

  return v8;
}

- (void)handleContentSizeCategoryDidChangeNotification:(id)notification
{
  traitCollection = [(PHVoicemailGreetingPlaybackCell *)self traitCollection];
  isPreferredContentSizeCategoryAccessible = [traitCollection isPreferredContentSizeCategoryAccessible];

  if (isPreferredContentSizeCategoryAccessible != [(PHVoicemailGreetingPlaybackCell *)self accessibilityConstraintsEnabled])
  {
    [(PHVoicemailGreetingPlaybackCell *)self setAccessibilityConstraintsEnabled:isPreferredContentSizeCategoryAccessible];
    [(PHVoicemailGreetingPlaybackCell *)self _updateRecordStopXConstraints];
  }

  [(PHVoicemailGreetingPlaybackCell *)self _updateConstraints];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = PHVoicemailGreetingPlaybackCell;
  [(PHVoicemailGreetingPlaybackCell *)&v3 tintColorDidChange];
  [(PHVoicemailGreetingPlaybackCell *)self _updateTextColor];
}

- (void)_updateTextColor
{
  playStopButton = self->_playStopButton;
  tintColor = [(PHVoicemailGreetingPlaybackCell *)self tintColor];
  v5 = [(PHVoicemailGreetingPlaybackCell *)self _accessibilityHigherContrastTintColorForColor:tintColor];
  [(UIButton *)playStopButton setTitleColor:v5 forState:0];

  v6 = self->_playStopButton;
  v7 = +[UIColor systemGrayColor];
  v8 = [(PHVoicemailGreetingPlaybackCell *)self _accessibilityHigherContrastTintColorForColor:v7];
  [(UIButton *)v6 setTitleColor:v8 forState:2];

  recordStopButton = self->_recordStopButton;
  tintColor2 = [(PHVoicemailGreetingPlaybackCell *)self tintColor];
  v11 = [(PHVoicemailGreetingPlaybackCell *)self _accessibilityHigherContrastTintColorForColor:tintColor2];
  [(UIButton *)recordStopButton setTitleColor:v11 forState:0];

  v12 = self->_recordStopButton;
  v13 = +[UIColor systemGrayColor];
  v14 = [(PHVoicemailGreetingPlaybackCell *)self _accessibilityHigherContrastTintColorForColor:v13];
  [(UIButton *)v12 setTitleColor:v14 forState:2];

  recordingLabel = self->_recordingLabel;
  v17 = +[UIColor systemGrayColor];
  v16 = [(PHVoicemailGreetingPlaybackCell *)self _accessibilityHigherContrastTintColorForColor:v17];
  [(UILabel *)recordingLabel setTextColor:v16];
}

- (PHVoicemailGreetingPlaybackCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end