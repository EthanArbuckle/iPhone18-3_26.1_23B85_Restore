@interface MacRAPCheckmarkCell
+ (NSString)identifier;
- (MacRAPCheckmarkCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (MacRAPCheckmarkCellDelegate)delegate;
- (void)_checkmarkToggled;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)setChecked:(BOOL)checked;
- (void)setDisplayText:(id)text;
@end

@implementation MacRAPCheckmarkCell

- (MacRAPCheckmarkCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_checkmarkToggled
{
  [(MacRAPCheckmarkCell *)self setChecked:!self->_checked];
  delegate = [(MacRAPCheckmarkCell *)self delegate];
  [delegate checkmarkTableViewCell:self isSelected:self->_checked];
}

- (void)setChecked:(BOOL)checked
{
  if (self->_checked != checked)
  {
    self->_checked = checked;
    [(MacRAPCheckmarkCell *)self _updateCheckmarkButton];
  }
}

- (void)setDisplayText:(id)text
{
  textCopy = text;
  if (self->_displayText != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_displayText, text);
    [(UILabel *)self->_checkmarkLabel setText:v6];
    textCopy = v6;
  }
}

- (void)_setupConstraints
{
  leadingAnchor = [(UISwitch *)self->_checkmarkSwitch leadingAnchor];
  contentView = [(MacRAPCheckmarkCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  v32[0] = v28;
  centerYAnchor = [(UISwitch *)self->_checkmarkSwitch centerYAnchor];
  contentView2 = [(MacRAPCheckmarkCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v32[1] = v24;
  widthAnchor = [(UISwitch *)self->_checkmarkSwitch widthAnchor];
  v22 = [widthAnchor constraintEqualToConstant:20.0];
  v32[2] = v22;
  heightAnchor = [(UISwitch *)self->_checkmarkSwitch heightAnchor];
  widthAnchor2 = [(UISwitch *)self->_checkmarkSwitch widthAnchor];
  v19 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v32[3] = v19;
  trailingAnchor = [(UISwitch *)self->_checkmarkSwitch trailingAnchor];
  leadingAnchor3 = [(UILabel *)self->_checkmarkLabel leadingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-7.0];
  v32[4] = v16;
  trailingAnchor2 = [(UILabel *)self->_checkmarkLabel trailingAnchor];
  contentView3 = [(MacRAPCheckmarkCell *)self contentView];
  trailingAnchor3 = [contentView3 trailingAnchor];
  v3 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-15.0];
  v32[5] = v3;
  firstBaselineAnchor = [(UILabel *)self->_checkmarkLabel firstBaselineAnchor];
  contentView4 = [(MacRAPCheckmarkCell *)self contentView];
  topAnchor = [contentView4 topAnchor];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:25.0];
  v32[6] = v7;
  lastBaselineAnchor = [(UILabel *)self->_checkmarkLabel lastBaselineAnchor];
  contentView5 = [(MacRAPCheckmarkCell *)self contentView];
  bottomAnchor = [contentView5 bottomAnchor];
  v11 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-12.0];
  v32[7] = v11;
  v12 = [NSArray arrayWithObjects:v32 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupSubviews
{
  v3 = objc_alloc_init(UISwitch);
  checkmarkSwitch = self->_checkmarkSwitch;
  self->_checkmarkSwitch = v3;

  [(UISwitch *)self->_checkmarkSwitch addTarget:self action:"_checkmarkToggled" forControlEvents:4096];
  [(UISwitch *)self->_checkmarkSwitch setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor clearColor];
  [(UISwitch *)self->_checkmarkSwitch setBackgroundColor:v5];

  [(UISwitch *)self->_checkmarkSwitch setContentVerticalAlignment:3];
  [(UISwitch *)self->_checkmarkSwitch setContentHorizontalAlignment:3];
  v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  checkmarkLabel = self->_checkmarkLabel;
  self->_checkmarkLabel = v6;

  [(UILabel *)self->_checkmarkLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[RAPFontManager regularTitleFont];
  [(UILabel *)self->_checkmarkLabel setFont:v8];

  [(UILabel *)self->_checkmarkLabel setNumberOfLines:0];
  contentView = [(MacRAPCheckmarkCell *)self contentView];
  [contentView addSubview:self->_checkmarkSwitch];

  contentView2 = [(MacRAPCheckmarkCell *)self contentView];
  [contentView2 addSubview:self->_checkmarkLabel];

  [(MacRAPCheckmarkCell *)self _updateCheckmarkButton];
}

- (MacRAPCheckmarkCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MacRAPCheckmarkCell;
  v4 = [(MacRAPCheckmarkCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MacRAPCheckmarkCell *)v4 _setupSubviews];
    [(MacRAPCheckmarkCell *)v5 _setupConstraints];
    [(MacRAPCheckmarkCell *)v5 _updateCheckmarkButton];
    [(MacRAPCheckmarkCell *)v5 setSelectionStyle:0];
  }

  return v5;
}

+ (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end