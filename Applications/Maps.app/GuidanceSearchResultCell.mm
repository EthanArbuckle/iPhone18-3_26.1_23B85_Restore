@interface GuidanceSearchResultCell
- (GuidanceSearchResultCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (GuidanceSearchResultCellDelegate)delegate;
- (void)_actionButtonAction:(id)action;
- (void)setActionButtonLoading:(BOOL)loading;
- (void)updateTheme;
@end

@implementation GuidanceSearchResultCell

- (GuidanceSearchResultCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_actionButtonAction:(id)action
{
  actionCopy = action;
  actionButton = [(GuidanceSearchResultCell *)self actionButton];

  if (actionButton == actionCopy)
  {
    delegate = [(GuidanceSearchResultCell *)self delegate];
    [delegate guidanceSearchResultCellDidTapActionButton:self];
  }
}

- (void)setActionButtonLoading:(BOOL)loading
{
  if (self->_actionButtonLoading != loading)
  {
    loadingCopy = loading;
    actionButton = [(GuidanceSearchResultCell *)self actionButton];
    if (loadingCopy)
    {
      v7 = +[UIColor clearColor];
      [actionButton setTitleColor:v7 forState:0];

      actionButtonActivityIndicatorView = [(GuidanceSearchResultCell *)self actionButtonActivityIndicatorView];
      [actionButtonActivityIndicatorView startAnimating];
    }

    else
    {
      v8 = +[UIColor whiteColor];
      [actionButton setTitleColor:v8 forState:0];

      actionButtonActivityIndicatorView = [(GuidanceSearchResultCell *)self actionButtonActivityIndicatorView];
      [actionButtonActivityIndicatorView stopAnimating];
    }
  }
}

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = GuidanceSearchResultCell;
  [(MapsThemeTableViewCell *)&v6 updateTheme];
  theme = [(GuidanceSearchResultCell *)self theme];
  keyColor = [theme keyColor];
  actionButton = [(GuidanceSearchResultCell *)self actionButton];
  [actionButton setBackgroundColor:keyColor];
}

- (GuidanceSearchResultCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v93.receiver = self;
  v93.super_class = GuidanceSearchResultCell;
  v4 = [(MapsThemeTableViewCell *)&v93 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(GuidanceSearchResultCell *)v4 setSelectionStyle:0];
    [(GuidanceSearchResultCell *)v5 setPreservesSuperviewLayoutMargins:0];
    [(GuidanceSearchResultCell *)v5 setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(GuidanceSearchResultCell *)v5 setSeparatorInset:0.0, 15.0, 0.0, 0.0];
    contentView = [(GuidanceSearchResultCell *)v5 contentView];
    [contentView setPreservesSuperviewLayoutMargins:0];

    contentView2 = [(GuidanceSearchResultCell *)v5 contentView];
    [contentView2 setLayoutMargins:{0.0, 15.0, 0.0, 15.0}];

    v8 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v12 = [v8 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v12;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle2 addingSymbolicTraits:2];
    [(UILabel *)v5->_titleLabel setFont:v14];

    contentView3 = [(GuidanceSearchResultCell *)v5 contentView];
    [contentView3 addSubview:v5->_titleLabel];

    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v16;

    [(UILabel *)v5->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_descriptionLabel setNumberOfLines:0];
    v18 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote addingSymbolicTraits:0];
    [(UILabel *)v5->_descriptionLabel setFont:v18];

    v19 = [UIColor colorWithWhite:0.419999987 alpha:1.0];
    [(UILabel *)v5->_descriptionLabel setTextColor:v19];

    contentView4 = [(GuidanceSearchResultCell *)v5 contentView];
    [contentView4 addSubview:v5->_descriptionLabel];

    v21 = [UIButton buttonWithType:0];
    actionButton = v5->_actionButton;
    v5->_actionButton = v21;

    [(UIButton *)v5->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIButton *)v5->_actionButton layer];
    [layer setCornerRadius:5.0];

    v24 = v5->_actionButton;
    v25 = objc_opt_new();
    [(UIButton *)v24 setBackgroundImage:v25 forState:0];

    v26 = v5->_actionButton;
    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:@"GO_SAR" value:@"localized string not found" table:0];
    [(UIButton *)v26 setTitle:v28 forState:0];

    v29 = v5->_actionButton;
    v30 = +[UIColor whiteColor];
    [(UIButton *)v29 setTitleColor:v30 forState:0];

    [(UIButton *)v5->_actionButton addTarget:v5 action:"_actionButtonAction:" forControlEvents:64];
    contentView5 = [(GuidanceSearchResultCell *)v5 contentView];
    [contentView5 addSubview:v5->_actionButton];

    v32 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    actionButtonActivityIndicatorView = v5->_actionButtonActivityIndicatorView;
    v5->_actionButtonActivityIndicatorView = v32;

    [(UIActivityIndicatorView *)v5->_actionButtonActivityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v5->_actionButton addSubview:v5->_actionButtonActivityIndicatorView];
    v34 = objc_opt_new();
    contentView6 = [(GuidanceSearchResultCell *)v5 contentView];
    [contentView6 addLayoutGuide:v34];

    leadingAnchor = [v34 leadingAnchor];
    contentView7 = [(GuidanceSearchResultCell *)v5 contentView];
    layoutMarginsGuide = [contentView7 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v88 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v94[0] = v88;
    trailingAnchor = [v34 trailingAnchor];
    leadingAnchor3 = [(UIButton *)v5->_actionButton leadingAnchor];
    v85 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-10.0];
    v94[1] = v85;
    centerYAnchor = [v34 centerYAnchor];
    contentView8 = [(GuidanceSearchResultCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView8 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
    v80 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v94[2] = v80;
    trailingAnchor2 = [(UIButton *)v5->_actionButton trailingAnchor];
    contentView9 = [(GuidanceSearchResultCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView9 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide3 trailingAnchor];
    v75 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v94[3] = v75;
    widthAnchor = [(UIButton *)v5->_actionButton widthAnchor];
    v73 = [widthAnchor constraintEqualToConstant:60.0];
    v94[4] = v73;
    topAnchor = [(UIButton *)v5->_actionButton topAnchor];
    topAnchor2 = [v34 topAnchor];
    v70 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v94[5] = v70;
    bottomAnchor = [(UIButton *)v5->_actionButton bottomAnchor];
    bottomAnchor2 = [v34 bottomAnchor];
    v67 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v94[6] = v67;
    centerXAnchor = [(UIActivityIndicatorView *)v5->_actionButtonActivityIndicatorView centerXAnchor];
    centerXAnchor2 = [(UIButton *)v5->_actionButton centerXAnchor];
    v64 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v94[7] = v64;
    centerYAnchor3 = [(UIActivityIndicatorView *)v5->_actionButtonActivityIndicatorView centerYAnchor];
    centerYAnchor4 = [(UIButton *)v5->_actionButton centerYAnchor];
    v60 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v94[8] = v60;
    leadingAnchor4 = [(UILabel *)v5->_titleLabel leadingAnchor];
    leadingAnchor5 = [v34 leadingAnchor];
    v57 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v94[9] = v57;
    trailingAnchor4 = [(UILabel *)v5->_titleLabel trailingAnchor];
    trailingAnchor5 = [v34 trailingAnchor];
    v54 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v94[10] = v54;
    topAnchor3 = [(UILabel *)v5->_titleLabel topAnchor];
    topAnchor4 = [v34 topAnchor];
    v51 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v94[11] = v51;
    leadingAnchor6 = [(UILabel *)v5->_descriptionLabel leadingAnchor];
    leadingAnchor7 = [v34 leadingAnchor];
    v48 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v94[12] = v48;
    trailingAnchor6 = [(UILabel *)v5->_descriptionLabel trailingAnchor];
    v36 = v34;
    v62 = v34;
    trailingAnchor7 = [v34 trailingAnchor];
    v38 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v94[13] = v38;
    topAnchor5 = [(UILabel *)v5->_descriptionLabel topAnchor];
    bottomAnchor3 = [(UILabel *)v5->_titleLabel bottomAnchor];
    v41 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
    v94[14] = v41;
    bottomAnchor4 = [(UILabel *)v5->_descriptionLabel bottomAnchor];
    bottomAnchor5 = [v36 bottomAnchor];
    v44 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v94[15] = v44;
    v45 = [NSArray arrayWithObjects:v94 count:16];
    [NSLayoutConstraint activateConstraints:v45];
  }

  return v5;
}

@end