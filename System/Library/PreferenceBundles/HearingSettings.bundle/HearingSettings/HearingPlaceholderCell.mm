@interface HearingPlaceholderCell
- (HearingPlaceholderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dealloc;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HearingPlaceholderCell

- (HearingPlaceholderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = HearingPlaceholderCell;
  v4 = [(HearingPlaceholderCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v4->_spinner;
    v4->_spinner = v5;

    contentView = [(HearingPlaceholderCell *)v4 contentView];
    [contentView addSubview:v4->_spinner];
  }

  return v4;
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
  v3.receiver = self;
  v3.super_class = HearingPlaceholderCell;
  [(HearingPlaceholderCell *)&v3 dealloc];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = HearingPlaceholderCell;
  [(HearingPlaceholderCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = HearingPlaceholderCell;
  [(HearingPlaceholderCell *)&v14 layoutSubviews];
  [(UIActivityIndicatorView *)self->_spinner frame];
  v4 = v3;
  v6 = v5;
  v7 = 10.0;
  if (![UIApp userInterfaceLayoutDirection])
  {
    contentView = [(HearingPlaceholderCell *)self contentView];
    [contentView frame];
    v7 = v9 - v4 + -10.0;
  }

  contentView2 = [(HearingPlaceholderCell *)self contentView];
  [contentView2 frame];
  v12 = (v11 - v6) * 0.5;
  v13 = ceilf(v12);

  [(UIActivityIndicatorView *)self->_spinner setFrame:v7, v13, v4, v6];
}

@end