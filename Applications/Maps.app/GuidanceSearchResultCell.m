@interface GuidanceSearchResultCell
- (GuidanceSearchResultCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (GuidanceSearchResultCellDelegate)delegate;
- (void)_actionButtonAction:(id)a3;
- (void)setActionButtonLoading:(BOOL)a3;
- (void)updateTheme;
@end

@implementation GuidanceSearchResultCell

- (GuidanceSearchResultCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_actionButtonAction:(id)a3
{
  v4 = a3;
  v5 = [(GuidanceSearchResultCell *)self actionButton];

  if (v5 == v4)
  {
    v6 = [(GuidanceSearchResultCell *)self delegate];
    [v6 guidanceSearchResultCellDidTapActionButton:self];
  }
}

- (void)setActionButtonLoading:(BOOL)a3
{
  if (self->_actionButtonLoading != a3)
  {
    v4 = a3;
    v6 = [(GuidanceSearchResultCell *)self actionButton];
    if (v4)
    {
      v7 = +[UIColor clearColor];
      [v6 setTitleColor:v7 forState:0];

      v9 = [(GuidanceSearchResultCell *)self actionButtonActivityIndicatorView];
      [v9 startAnimating];
    }

    else
    {
      v8 = +[UIColor whiteColor];
      [v6 setTitleColor:v8 forState:0];

      v9 = [(GuidanceSearchResultCell *)self actionButtonActivityIndicatorView];
      [v9 stopAnimating];
    }
  }
}

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = GuidanceSearchResultCell;
  [(MapsThemeTableViewCell *)&v6 updateTheme];
  v3 = [(GuidanceSearchResultCell *)self theme];
  v4 = [v3 keyColor];
  v5 = [(GuidanceSearchResultCell *)self actionButton];
  [v5 setBackgroundColor:v4];
}

- (GuidanceSearchResultCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v93.receiver = self;
  v93.super_class = GuidanceSearchResultCell;
  v4 = [(MapsThemeTableViewCell *)&v93 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(GuidanceSearchResultCell *)v4 setSelectionStyle:0];
    [(GuidanceSearchResultCell *)v5 setPreservesSuperviewLayoutMargins:0];
    [(GuidanceSearchResultCell *)v5 setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(GuidanceSearchResultCell *)v5 setSeparatorInset:0.0, 15.0, 0.0, 0.0];
    v6 = [(GuidanceSearchResultCell *)v5 contentView];
    [v6 setPreservesSuperviewLayoutMargins:0];

    v7 = [(GuidanceSearchResultCell *)v5 contentView];
    [v7 setLayoutMargins:{0.0, 15.0, 0.0, 15.0}];

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

    v15 = [(GuidanceSearchResultCell *)v5 contentView];
    [v15 addSubview:v5->_titleLabel];

    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v16;

    [(UILabel *)v5->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_descriptionLabel setNumberOfLines:0];
    v18 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote addingSymbolicTraits:0];
    [(UILabel *)v5->_descriptionLabel setFont:v18];

    v19 = [UIColor colorWithWhite:0.419999987 alpha:1.0];
    [(UILabel *)v5->_descriptionLabel setTextColor:v19];

    v20 = [(GuidanceSearchResultCell *)v5 contentView];
    [v20 addSubview:v5->_descriptionLabel];

    v21 = [UIButton buttonWithType:0];
    actionButton = v5->_actionButton;
    v5->_actionButton = v21;

    [(UIButton *)v5->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(UIButton *)v5->_actionButton layer];
    [v23 setCornerRadius:5.0];

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
    v31 = [(GuidanceSearchResultCell *)v5 contentView];
    [v31 addSubview:v5->_actionButton];

    v32 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    actionButtonActivityIndicatorView = v5->_actionButtonActivityIndicatorView;
    v5->_actionButtonActivityIndicatorView = v32;

    [(UIActivityIndicatorView *)v5->_actionButtonActivityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v5->_actionButton addSubview:v5->_actionButtonActivityIndicatorView];
    v34 = objc_opt_new();
    v35 = [(GuidanceSearchResultCell *)v5 contentView];
    [v35 addLayoutGuide:v34];

    v91 = [v34 leadingAnchor];
    v92 = [(GuidanceSearchResultCell *)v5 contentView];
    v90 = [v92 layoutMarginsGuide];
    v89 = [v90 leadingAnchor];
    v88 = [v91 constraintEqualToAnchor:v89];
    v94[0] = v88;
    v87 = [v34 trailingAnchor];
    v86 = [(UIButton *)v5->_actionButton leadingAnchor];
    v85 = [v87 constraintEqualToAnchor:v86 constant:-10.0];
    v94[1] = v85;
    v83 = [v34 centerYAnchor];
    v84 = [(GuidanceSearchResultCell *)v5 contentView];
    v82 = [v84 layoutMarginsGuide];
    v81 = [v82 centerYAnchor];
    v80 = [v83 constraintEqualToAnchor:v81];
    v94[2] = v80;
    v78 = [(UIButton *)v5->_actionButton trailingAnchor];
    v79 = [(GuidanceSearchResultCell *)v5 contentView];
    v77 = [v79 layoutMarginsGuide];
    v76 = [v77 trailingAnchor];
    v75 = [v78 constraintEqualToAnchor:v76];
    v94[3] = v75;
    v74 = [(UIButton *)v5->_actionButton widthAnchor];
    v73 = [v74 constraintEqualToConstant:60.0];
    v94[4] = v73;
    v72 = [(UIButton *)v5->_actionButton topAnchor];
    v71 = [v34 topAnchor];
    v70 = [v72 constraintEqualToAnchor:v71];
    v94[5] = v70;
    v69 = [(UIButton *)v5->_actionButton bottomAnchor];
    v68 = [v34 bottomAnchor];
    v67 = [v69 constraintEqualToAnchor:v68];
    v94[6] = v67;
    v66 = [(UIActivityIndicatorView *)v5->_actionButtonActivityIndicatorView centerXAnchor];
    v65 = [(UIButton *)v5->_actionButton centerXAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v94[7] = v64;
    v63 = [(UIActivityIndicatorView *)v5->_actionButtonActivityIndicatorView centerYAnchor];
    v61 = [(UIButton *)v5->_actionButton centerYAnchor];
    v60 = [v63 constraintEqualToAnchor:v61];
    v94[8] = v60;
    v59 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v58 = [v34 leadingAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v94[9] = v57;
    v56 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v55 = [v34 trailingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v94[10] = v54;
    v53 = [(UILabel *)v5->_titleLabel topAnchor];
    v52 = [v34 topAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v94[11] = v51;
    v50 = [(UILabel *)v5->_descriptionLabel leadingAnchor];
    v49 = [v34 leadingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v94[12] = v48;
    v47 = [(UILabel *)v5->_descriptionLabel trailingAnchor];
    v36 = v34;
    v62 = v34;
    v37 = [v34 trailingAnchor];
    v38 = [v47 constraintEqualToAnchor:v37];
    v94[13] = v38;
    v39 = [(UILabel *)v5->_descriptionLabel topAnchor];
    v40 = [(UILabel *)v5->_titleLabel bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v94[14] = v41;
    v42 = [(UILabel *)v5->_descriptionLabel bottomAnchor];
    v43 = [v36 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v94[15] = v44;
    v45 = [NSArray arrayWithObjects:v94 count:16];
    [NSLayoutConstraint activateConstraints:v45];
  }

  return v5;
}

@end