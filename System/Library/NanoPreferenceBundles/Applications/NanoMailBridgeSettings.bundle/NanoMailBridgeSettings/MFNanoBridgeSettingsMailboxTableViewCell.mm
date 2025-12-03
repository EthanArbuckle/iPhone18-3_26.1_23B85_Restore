@interface MFNanoBridgeSettingsMailboxTableViewCell
- (MFNanoBridgeSettingsMailboxTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_subtitleFont;
- (id)_titleFont;
- (void)layoutSubviews;
- (void)setIcon:(id)icon;
@end

@implementation MFNanoBridgeSettingsMailboxTableViewCell

- (MFNanoBridgeSettingsMailboxTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v29.receiver = self;
  v29.super_class = MFNanoBridgeSettingsMailboxTableViewCell;
  v7 = [(MFNanoBridgeSettingsMailboxTableViewCell *)&v29 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = objc_alloc_init(UILabel);
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v8;

    v10 = v7->_titleLabel;
    v11 = BPSTextColor();
    [(UILabel *)v10 setTextColor:v11];

    v12 = v7->_titleLabel;
    _titleFont = [(MFNanoBridgeSettingsMailboxTableViewCell *)v7 _titleFont];
    [(UILabel *)v12 setFont:_titleFont];

    [(UILabel *)v7->_titleLabel setOpaque:0];
    [(UILabel *)v7->_titleLabel setBackgroundColor:0];
    contentView = [(MFNanoBridgeSettingsMailboxTableViewCell *)v7 contentView];
    [contentView addSubview:v7->_titleLabel];

    v15 = objc_alloc_init(UILabel);
    subtitleLabel = v7->_subtitleLabel;
    v7->_subtitleLabel = v15;

    v17 = v7->_subtitleLabel;
    v18 = BPSDetailTextColor();
    [(UILabel *)v17 setTextColor:v18];

    [(UILabel *)v7->_subtitleLabel setTextAlignment:2];
    v19 = v7->_subtitleLabel;
    _subtitleFont = [(MFNanoBridgeSettingsMailboxTableViewCell *)v7 _subtitleFont];
    [(UILabel *)v19 setFont:_subtitleFont];

    [(UILabel *)v7->_subtitleLabel setOpaque:0];
    [(UILabel *)v7->_subtitleLabel setBackgroundColor:0];
    contentView2 = [(MFNanoBridgeSettingsMailboxTableViewCell *)v7 contentView];
    [contentView2 addSubview:v7->_subtitleLabel];

    v22 = [[UIImageView alloc] initWithImage:0];
    iconImageView = v7->_iconImageView;
    v7->_iconImageView = v22;

    v24 = v7->_iconImageView;
    v25 = BPSBridgeTintColor();
    [(UIImageView *)v24 setTintColor:v25];

    contentView3 = [(MFNanoBridgeSettingsMailboxTableViewCell *)v7 contentView];
    [contentView3 addSubview:v7->_iconImageView];

    v27 = BPSCellHightlightColor();
    [(MFNanoBridgeSettingsMailboxTableViewCell *)v7 setSelectionTintColor:v27];
  }

  return v7;
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  [(UIImageView *)self->_iconImageView setImage:?];
  [(UIImageView *)self->_iconImageView sizeToFit];
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = MFNanoBridgeSettingsMailboxTableViewCell;
  [(MFNanoBridgeSettingsMailboxTableViewCell *)&v55 layoutSubviews];
  contentView = [(MFNanoBridgeSettingsMailboxTableViewCell *)self contentView];
  [contentView bounds];
  v54 = v4;

  [(MFNanoBridgeSettingsMailboxTableViewCell *)self frame];
  v6 = v5;
  v8 = v7;
  rect = v9;
  v11 = v10;
  _shouldReverseLayoutDirection = [(MFNanoBridgeSettingsMailboxTableViewCell *)self _shouldReverseLayoutDirection];
  [(UIImageView *)self->_iconImageView frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  MailTableCellImageCenterForLevel(self->_level);
  if (_shouldReverseLayoutDirection)
  {
    v56.origin.x = v14;
    v56.origin.y = v16;
    v56.size.width = v18;
    v56.size.height = v20;
    CGRectGetWidth(v56);
    UIRoundToViewScale();
    v22 = v21;
  }

  else
  {
    v57.origin.x = v14;
    v57.origin.y = v16;
    v57.size.width = v18;
    v57.size.height = v20;
    CGRectGetWidth(v57);
    UIRoundToViewScale();
    if (v23 >= 0.0)
    {
      v22 = v23;
    }

    else
    {
      v22 = 0.0;
    }
  }

  UIRoundToViewScale();
  [(UIImageView *)self->_iconImageView setFrame:v22, v24, v18, v20];
  [(UILabel *)self->_subtitleLabel sizeToFit];
  [(UILabel *)self->_subtitleLabel frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v6;
  v32 = v8;
  v33 = rect;
  v34 = v11;
  if (_shouldReverseLayoutDirection)
  {
    CGRectGetMinX(*&v31);
  }

  else
  {
    CGRectGetMaxX(*&v31);
  }

  contentView2 = [(MFNanoBridgeSettingsMailboxTableViewCell *)self contentView];
  [contentView2 frame];
  UIRoundToViewScale();
  v37 = v36;

  v58.origin.x = v37;
  v58.origin.y = v26;
  v58.size.width = v28;
  v58.size.height = v30;
  CGRectGetHeight(v58);
  UIRoundToViewScale();
  [(UILabel *)self->_subtitleLabel setFrame:v37, v38, v28, v30];
  [(UILabel *)self->_titleLabel sizeToFit];
  [(UILabel *)self->_titleLabel frame];
  v41 = v40;
  if (_shouldReverseLayoutDirection)
  {
    v42 = v22 + -16.0;
    v43 = v54 - v42;
    UIRoundToViewScale();
    v45 = v44;
    v46 = v42 - v44;
  }

  else
  {
    v47 = v39;
    v43 = v18 + v22 + 16.0;
    UIRoundToViewScale();
    v45 = v48;
    contentView3 = [(MFNanoBridgeSettingsMailboxTableViewCell *)self contentView];
    [contentView3 frame];
    v46 = v37 - v45 + -5.0 - v50;

    if (v47 < v46)
    {
      v46 = v47;
    }
  }

  UIRoundToViewScale();
  UIRoundToViewScale();
  v52 = v51;
  [(MFNanoBridgeSettingsMailboxTableViewCell *)self _setMarginWidth:v43];
  [(UILabel *)self->_titleLabel setFrame:v45, v52, v46, v41];
}

- (id)_titleFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:3];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (id)_subtitleFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:3];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  return v3;
}

@end