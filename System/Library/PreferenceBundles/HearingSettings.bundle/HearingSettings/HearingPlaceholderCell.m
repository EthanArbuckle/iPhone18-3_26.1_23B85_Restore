@interface HearingPlaceholderCell
- (HearingPlaceholderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HearingPlaceholderCell

- (HearingPlaceholderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = HearingPlaceholderCell;
  v4 = [(HearingPlaceholderCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v4->_spinner;
    v4->_spinner = v5;

    v7 = [(HearingPlaceholderCell *)v4 contentView];
    [v7 addSubview:v4->_spinner];
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = HearingPlaceholderCell;
  [(HearingPlaceholderCell *)&v4 refreshCellContentsWithSpecifier:a3];
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
    v8 = [(HearingPlaceholderCell *)self contentView];
    [v8 frame];
    v7 = v9 - v4 + -10.0;
  }

  v10 = [(HearingPlaceholderCell *)self contentView];
  [v10 frame];
  v12 = (v11 - v6) * 0.5;
  v13 = ceilf(v12);

  [(UIActivityIndicatorView *)self->_spinner setFrame:v7, v13, v4, v6];
}

@end