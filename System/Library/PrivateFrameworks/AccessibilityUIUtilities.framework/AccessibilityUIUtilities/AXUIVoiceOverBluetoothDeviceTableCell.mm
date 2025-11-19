@interface AXUIVoiceOverBluetoothDeviceTableCell
+ (id)checkedImage;
+ (id)selectedCheckedImage;
+ (id)spacerImage;
+ (id)textForBTPairedState:(int)a3;
- (AXUIVoiceOverBluetoothDeviceTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (AXUIVoiceOverBluetoothDeviceTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_setUp;
- (void)_updateCheckMarkIcon;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setDeviceState:(int)a3;
@end

@implementation AXUIVoiceOverBluetoothDeviceTableCell

- (AXUIVoiceOverBluetoothDeviceTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  v5 = [(PSTableCell *)&v8 initWithStyle:1 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    [(AXUIVoiceOverBluetoothDeviceTableCell *)v5 _setUp];
  }

  return v6;
}

- (AXUIVoiceOverBluetoothDeviceTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v5 = [(AXUIVoiceOverBluetoothDeviceTableCell *)self contentView];
  [v5 addSubview:self->_spinner];

  [(AXUIVoiceOverBluetoothDeviceTableCell *)self _updateCheckMarkIcon];
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
  v3.receiver = self;
  v3.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)setDeviceState:(int)a3
{
  self->_state = a3;
  if ((a3 - 2) < 3)
  {
    v4 = 4;
    goto LABEL_5;
  }

  if (a3 < 2)
  {
    v4 = 0;
LABEL_5:
    [(AXUIVoiceOverBluetoothDeviceTableCell *)self setAccessoryType:v4];
    v6 = [(AXUIVoiceOverBluetoothDeviceTableCell *)self detailTextLabel];
    [v6 setText:0];
    goto LABEL_6;
  }

  if (a3 != 5)
  {
    return;
  }

  [(AXUIVoiceOverBluetoothDeviceTableCell *)self setAccessoryType:4];
  v6 = AXUILocalizedStringForKey(@"PAIRED_AND_CONNECTED");
  v5 = [(AXUIVoiceOverBluetoothDeviceTableCell *)self detailTextLabel];
  [v5 setText:v6];

LABEL_6:
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  [(PSTableCell *)&v39 layoutSubviews];
  v38.receiver = self;
  v38.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  v3 = [(PSTableCell *)&v38 titleLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(PSTableCell *)self iconImageView];
  v11 = v10;
  if (v10)
  {
    [v10 frame];
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
    v30 = [(AXUIVoiceOverBluetoothDeviceTableCell *)self contentView];
    [v30 frame];
    v32 = v33;
  }

  else
  {
    [(UIActivityIndicatorView *)self->_spinner frame];
    v20 = v19;
    v22 = v21;
    if (v14)
    {
      v23 = [(AXUIVoiceOverBluetoothDeviceTableCell *)self contentView];
      [v23 frame];
      v25 = v24 - v20 + -10.0;
    }

    else
    {
      v25 = 10.0;
    }

    v26 = [(AXUIVoiceOverBluetoothDeviceTableCell *)self contentView];
    [v26 frame];
    v28 = (v27 - v22) * 0.5;
    v29 = floorf(v28);

    [(UIActivityIndicatorView *)self->_spinner setFrame:v25, v29, v20, v22];
    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    v30 = [(AXUIVoiceOverBluetoothDeviceTableCell *)self contentView];
    [v30 frame];
    v32 = v31 - v20;
  }

  v34 = v32 + -20.0 + -12.0 - v13;
  [(AXUIVoiceOverBluetoothDeviceTableCell *)self _updateCheckMarkIcon];
  if (v14)
  {
    [v11 frame];
    v5 = CGRectGetMinX(v40) + 10.0;
  }

  [v3 setFrame:{v5, v7, v34, v9}];
  [v3 setNeedsDisplay];
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
  v36 = [(PSTableCell *)&v37 titleLabel];
  [v36 setTextColor:v35];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = AXUIVoiceOverBluetoothDeviceTableCell;
  v4 = a3;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKey:@"bt-state"];
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
  v4 = [(PSTableCell *)self iconImageView];
  if (v3 == 1)
  {
    v5 = +[AXUIVoiceOverBluetoothDeviceTableCell checkedImage];
    [v4 setImage:v5];

    v8 = [(PSTableCell *)self iconImageView];
    v6 = +[AXUIVoiceOverBluetoothDeviceTableCell selectedCheckedImage];
    [v8 setHighlightedImage:v6];
  }

  else
  {
    v7 = +[AXUIVoiceOverBluetoothDeviceTableCell spacerImage];
    [v4 setImage:v7];

    v8 = [(PSTableCell *)self iconImageView];
    [v8 setHighlightedImage:0];
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
    v4 = [MEMORY[0x1E69DC888] systemBlueColor];
    v5 = [v3 imageWithTintColor:v4 renderingMode:1];
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

+ (id)textForBTPairedState:(int)a3
{
  v4 = [MEMORY[0x1E696AD60] string];
  if (a3 > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = AXUILocalizedStringForKey(off_1E812E478[a3]);
  }

  if ([v5 length])
  {
    [v4 appendString:v5];
  }

  return v4;
}

@end