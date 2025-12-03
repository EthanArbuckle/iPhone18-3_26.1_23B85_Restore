@interface AXUIVoiceOverBluetoothDeviceTableCell
+ (id)checkedImage;
+ (id)selectedCheckedImage;
+ (id)spacerImage;
+ (id)textForBTPairedState:(int)state;
- (AXUIVoiceOverBluetoothDeviceTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (AXUIVoiceOverBluetoothDeviceTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_setUp;
- (void)_updateCheckMarkIcon;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setDeviceState:(int)state;
@end

@implementation AXUIVoiceOverBluetoothDeviceTableCell

- (AXUIVoiceOverBluetoothDeviceTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  v5 = [(PSTableCell *)&v8 initWithStyle:1 reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(AXUIVoiceOverBluetoothDeviceTableCell *)v5 _setUp];
  }

  return v6;
}

- (AXUIVoiceOverBluetoothDeviceTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(AXUIVoiceOverBluetoothDeviceTableCell *)v4 _setUp];
  }

  return v5;
}

- (void)_setUp
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v3;

  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  contentView = [(AXUIVoiceOverBluetoothDeviceTableCell *)self contentView];
  [contentView addSubview:self->_spinner];

  [(AXUIVoiceOverBluetoothDeviceTableCell *)self _updateCheckMarkIcon];
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
  v3.receiver = self;
  v3.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)setDeviceState:(int)state
{
  self->_state = state;
  if ((state - 2) < 3)
  {
    v4 = 4;
    goto LABEL_5;
  }

  if (state < 2)
  {
    v4 = 0;
LABEL_5:
    [(AXUIVoiceOverBluetoothDeviceTableCell *)self setAccessoryType:v4];
    detailTextLabel = [(AXUIVoiceOverBluetoothDeviceTableCell *)self detailTextLabel];
    [detailTextLabel setText:0];
    goto LABEL_6;
  }

  if (state != 5)
  {
    return;
  }

  [(AXUIVoiceOverBluetoothDeviceTableCell *)self setAccessoryType:4];
  detailTextLabel = AXUILocalizedStringForKey(@"PAIRED_AND_CONNECTED");
  detailTextLabel2 = [(AXUIVoiceOverBluetoothDeviceTableCell *)self detailTextLabel];
  [detailTextLabel2 setText:detailTextLabel];

LABEL_6:
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  [(PSTableCell *)&v39 layoutSubviews];
  v38.receiver = self;
  v38.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  titleLabel = [(PSTableCell *)&v38 titleLabel];
  [titleLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  iconImageView = [(PSTableCell *)self iconImageView];
  v11 = iconImageView;
  if (iconImageView)
  {
    [iconImageView frame];
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AXUIVoiceOverBluetoothDeviceTableCell semanticContentAttribute](self, "semanticContentAttribute")}];
  state = self->_state;
  v16 = state > 4;
  v17 = (1 << state) & 0x1A;
  if (v16 || v17 == 0)
  {
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    contentView = [(AXUIVoiceOverBluetoothDeviceTableCell *)self contentView];
    [contentView frame];
    v32 = v33;
  }

  else
  {
    [(UIActivityIndicatorView *)self->_spinner frame];
    v20 = v19;
    v22 = v21;
    if (v14)
    {
      contentView2 = [(AXUIVoiceOverBluetoothDeviceTableCell *)self contentView];
      [contentView2 frame];
      v25 = v24 - v20 + -10.0;
    }

    else
    {
      v25 = 10.0;
    }

    contentView3 = [(AXUIVoiceOverBluetoothDeviceTableCell *)self contentView];
    [contentView3 frame];
    v28 = (v27 - v22) * 0.5;
    v29 = floorf(v28);

    [(UIActivityIndicatorView *)self->_spinner setFrame:v25, v29, v20, v22];
    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    contentView = [(AXUIVoiceOverBluetoothDeviceTableCell *)self contentView];
    [contentView frame];
    v32 = v31 - v20;
  }

  v34 = v32 + -20.0 + -12.0 - v13;
  [(AXUIVoiceOverBluetoothDeviceTableCell *)self _updateCheckMarkIcon];
  if (v14)
  {
    [v11 frame];
    v5 = CGRectGetMinX(v40) + 10.0;
  }

  [titleLabel setFrame:{v5, v7, v34, v9}];
  [titleLabel setNeedsDisplay];
  if ((self->_state & 0xFFFFFFFE) == 4)
  {
    [MEMORY[0x1E69DC888] tableCellValue1BlueColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v35 = ;
  v37.receiver = self;
  v37.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  titleLabel2 = [(PSTableCell *)&v37 titleLabel];
  [titleLabel2 setTextColor:v35];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];

  v6 = [userInfo objectForKey:@"bt-state"];
  -[AXUIVoiceOverBluetoothDeviceTableCell setDeviceState:](self, "setDeviceState:", [v6 intValue]);

  [(AXUIVoiceOverBluetoothDeviceTableCell *)self layoutSubviews];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  [(PSTableCell *)&v4 prepareForReuse];
  self->_state = 0;
  spinner = self->_spinner;
  self->_spinner = 0;
}

- (void)_updateCheckMarkIcon
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x1E69C57F0]);
  iconImageView = [(PSTableCell *)self iconImageView];
  if (v3 == 1)
  {
    v5 = +[AXUIVoiceOverBluetoothDeviceTableCell checkedImage];
    [iconImageView setImage:v5];

    iconImageView2 = [(PSTableCell *)self iconImageView];
    v6 = +[AXUIVoiceOverBluetoothDeviceTableCell selectedCheckedImage];
    [iconImageView2 setHighlightedImage:v6];
  }

  else
  {
    v7 = +[AXUIVoiceOverBluetoothDeviceTableCell spacerImage];
    [iconImageView setImage:v7];

    iconImageView2 = [(PSTableCell *)self iconImageView];
    [iconImageView2 setHighlightedImage:0];
  }
}

+ (id)spacerImage
{
  v2 = spacerImage__spacer;
  if (!spacerImage__spacer)
  {
    v3 = [MEMORY[0x1E69DCAB8] imageNamed:@"SearchResultsCheckmarkClear.png"];
    v4 = spacerImage__spacer;
    spacerImage__spacer = v3;

    v2 = spacerImage__spacer;
  }

  return v2;
}

+ (id)checkedImage
{
  v2 = checkedImage__checkedImage;
  if (!checkedImage__checkedImage)
  {
    v3 = [MEMORY[0x1E69DCAB8] kitImageNamed:@"UIPreferencesBlueCheck.png"];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v5 = [v3 imageWithTintColor:systemBlueColor renderingMode:1];
    v6 = checkedImage__checkedImage;
    checkedImage__checkedImage = v5;

    v2 = checkedImage__checkedImage;
  }

  return v2;
}

+ (id)selectedCheckedImage
{
  v2 = selectedCheckedImage__selectedChecked;
  if (!selectedCheckedImage__selectedChecked)
  {
    v3 = [MEMORY[0x1E69DCAB8] kitImageNamed:@"UIPreferencesWhiteCheck.png"];
    v4 = selectedCheckedImage__selectedChecked;
    selectedCheckedImage__selectedChecked = v3;

    v2 = selectedCheckedImage__selectedChecked;
  }

  return v2;
}

+ (id)textForBTPairedState:(int)state
{
  string = [MEMORY[0x1E696AD60] string];
  if (state > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = AXUILocalizedStringForKey(off_1E812E478[state]);
  }

  if ([v5 length])
  {
    [string appendString:v5];
  }

  return string;
}

@end