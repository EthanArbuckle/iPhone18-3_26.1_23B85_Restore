@interface MacRAPCheckmarkCell
+ (NSString)identifier;
- (MacRAPCheckmarkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (MacRAPCheckmarkCellDelegate)delegate;
- (void)_checkmarkToggled;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)setChecked:(BOOL)a3;
- (void)setDisplayText:(id)a3;
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
  v3 = [(MacRAPCheckmarkCell *)self delegate];
  [v3 checkmarkTableViewCell:self isSelected:self->_checked];
}

- (void)setChecked:(BOOL)a3
{
  if (self->_checked != a3)
  {
    self->_checked = a3;
    [(MacRAPCheckmarkCell *)self _updateCheckmarkButton];
  }
}

- (void)setDisplayText:(id)a3
{
  v5 = a3;
  if (self->_displayText != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_displayText, a3);
    [(UILabel *)self->_checkmarkLabel setText:v6];
    v5 = v6;
  }
}

- (void)_setupConstraints
{
  v30 = [(UISwitch *)self->_checkmarkSwitch leadingAnchor];
  v31 = [(MacRAPCheckmarkCell *)self contentView];
  v29 = [v31 leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:30.0];
  v32[0] = v28;
  v26 = [(UISwitch *)self->_checkmarkSwitch centerYAnchor];
  v27 = [(MacRAPCheckmarkCell *)self contentView];
  v25 = [v27 centerYAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v32[1] = v24;
  v23 = [(UISwitch *)self->_checkmarkSwitch widthAnchor];
  v22 = [v23 constraintEqualToConstant:20.0];
  v32[2] = v22;
  v21 = [(UISwitch *)self->_checkmarkSwitch heightAnchor];
  v20 = [(UISwitch *)self->_checkmarkSwitch widthAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v32[3] = v19;
  v18 = [(UISwitch *)self->_checkmarkSwitch trailingAnchor];
  v17 = [(UILabel *)self->_checkmarkLabel leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17 constant:-7.0];
  v32[4] = v16;
  v14 = [(UILabel *)self->_checkmarkLabel trailingAnchor];
  v15 = [(MacRAPCheckmarkCell *)self contentView];
  v13 = [v15 trailingAnchor];
  v3 = [v14 constraintEqualToAnchor:v13 constant:-15.0];
  v32[5] = v3;
  v4 = [(UILabel *)self->_checkmarkLabel firstBaselineAnchor];
  v5 = [(MacRAPCheckmarkCell *)self contentView];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:25.0];
  v32[6] = v7;
  v8 = [(UILabel *)self->_checkmarkLabel lastBaselineAnchor];
  v9 = [(MacRAPCheckmarkCell *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:-12.0];
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
  v9 = [(MacRAPCheckmarkCell *)self contentView];
  [v9 addSubview:self->_checkmarkSwitch];

  v10 = [(MacRAPCheckmarkCell *)self contentView];
  [v10 addSubview:self->_checkmarkLabel];

  [(MacRAPCheckmarkCell *)self _updateCheckmarkButton];
}

- (MacRAPCheckmarkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = MacRAPCheckmarkCell;
  v4 = [(MacRAPCheckmarkCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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