@interface NavTrafficIncidentHeaderView
- (NavTrafficIncidentHeaderView)initWithFrame:(CGRect)a3;
- (NavTrafficIncidentHeaderViewDelegate)delegate;
- (id)_initialConstraints;
- (void)_setupViews;
- (void)dismissButtonTapped:(id)a3;
- (void)setImageSource:(id)a3;
@end

@implementation NavTrafficIncidentHeaderView

- (NavTrafficIncidentHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dismissButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navTrafficIncidentHeaderViewTappedDismissButton:self];
}

- (void)setImageSource:(id)a3
{
  [(MKArtworkImageView *)self->_artworkImageView setImageSource:?];
  v5 = 52.0;
  if (a3)
  {
    v6 = -10.0;
  }

  else
  {
    v5 = 0.0;
    v6 = -22.0;
  }

  [(NSLayoutConstraint *)self->_imageViewWidthConstraint setConstant:v5];
  [(NSLayoutConstraint *)self->_imageViewToPrimaryLabelVerticalConstraint setConstant:v6];
  if (!a3)
  {
    primaryLabelTrailingConstraint = self->_primaryLabelTrailingConstraint;
    v7 = [NSArray arrayWithObjects:&primaryLabelTrailingConstraint count:1];
    [NSLayoutConstraint deactivateConstraints:v7];

    v8 = [(UILabel *)self->_primaryLabel trailingAnchor];
    v9 = [(MapsCircularProgressButton *)self->_dismissButton leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:-18.0];
    v11 = self->_primaryLabelTrailingConstraint;
    self->_primaryLabelTrailingConstraint = v10;

    v13 = self->_primaryLabelTrailingConstraint;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [NSLayoutConstraint activateConstraints:v12];
  }
}

- (id)_initialConstraints
{
  v3 = [(MKArtworkImageView *)self->_artworkImageView widthAnchor];
  v4 = [v3 constraintEqualToConstant:52.0];
  imageViewWidthConstraint = self->_imageViewWidthConstraint;
  self->_imageViewWidthConstraint = v4;

  v6 = [(MKArtworkImageView *)self->_artworkImageView bottomAnchor];
  v7 = [(UILabel *)self->_primaryLabel topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:10.0];
  imageViewToPrimaryLabelVerticalConstraint = self->_imageViewToPrimaryLabelVerticalConstraint;
  self->_imageViewToPrimaryLabelVerticalConstraint = v8;

  v10 = [(UILabel *)self->_primaryLabel trailingAnchor];
  v11 = [(NavTrafficIncidentHeaderView *)self trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-4.0];
  primaryLabelTrailingConstraint = self->_primaryLabelTrailingConstraint;
  self->_primaryLabelTrailingConstraint = v12;

  v14 = [(UILabel *)self->_secondaryLabel firstBaselineAnchor];
  v15 = [(UILabel *)self->_primaryLabel lastBaselineAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:27.0];
  primaryToSecondaryLabelBaselineConstraint = self->_primaryToSecondaryLabelBaselineConstraint;
  self->_primaryToSecondaryLabelBaselineConstraint = v16;

  v57 = [(MKArtworkImageView *)self->_artworkImageView leadingAnchor];
  v56 = [(NavTrafficIncidentHeaderView *)self leadingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56 constant:2.0];
  v18 = self->_imageViewToPrimaryLabelVerticalConstraint;
  v58[0] = v55;
  v58[1] = v18;
  v58[2] = self->_imageViewWidthConstraint;
  v54 = [(UILabel *)self->_primaryLabel leadingAnchor];
  v53 = [(NavTrafficIncidentHeaderView *)self leadingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 constant:4.0];
  v19 = self->_primaryLabelTrailingConstraint;
  v58[3] = v52;
  v58[4] = v19;
  v51 = [(UILabel *)self->_secondaryLabel leadingAnchor];
  v50 = [(UILabel *)self->_primaryLabel leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v58[5] = v49;
  v48 = [(UILabel *)self->_secondaryLabel trailingAnchor];
  v47 = [(UILabel *)self->_primaryLabel trailingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v58[6] = v46;
  v45 = [(MKArtworkImageView *)self->_artworkImageView topAnchor];
  v44 = [(NavTrafficIncidentHeaderView *)self topAnchor];
  v43 = [v45 constraintEqualToAnchor:v44 constant:22.0];
  v58[7] = v43;
  v42 = [(MKArtworkImageView *)self->_artworkImageView heightAnchor];
  v41 = [(MKArtworkImageView *)self->_artworkImageView widthAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v20 = self->_primaryToSecondaryLabelBaselineConstraint;
  v58[8] = v40;
  v58[9] = v20;
  v39 = [(NavTrafficIncidentHeaderView *)self bottomAnchor];
  v38 = [(UILabel *)self->_secondaryLabel lastBaselineAnchor];
  v37 = [v39 constraintGreaterThanOrEqualToAnchor:v38 constant:26.0];
  v58[10] = v37;
  v36 = [(NavTrafficIncidentHeaderView *)self bottomAnchor];
  v35 = [(UILabel *)self->_secondaryLabel lastBaselineAnchor];
  LODWORD(v21) = 1148829696;
  v34 = [v36 constraintEqualToAnchor:v35 constant:26.0 priority:v21];
  v58[11] = v34;
  v22 = [(MapsCircularProgressButton *)self->_dismissButton trailingAnchor];
  v23 = [(NavTrafficIncidentHeaderView *)self trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:1.20000005];
  v58[12] = v24;
  v25 = [(MapsCircularProgressButton *)self->_dismissButton topAnchor];
  v26 = [(MKArtworkImageView *)self->_artworkImageView topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-3.79999995];
  v58[13] = v27;
  v28 = [(MapsCircularProgressButton *)self->_dismissButton heightAnchor];
  v29 = [v28 constraintEqualToConstant:50.0];
  v58[14] = v29;
  v30 = [(MapsCircularProgressButton *)self->_dismissButton widthAnchor];
  v31 = [v30 constraintEqualToConstant:50.0];
  v58[15] = v31;
  v33 = [NSArray arrayWithObjects:v58 count:16];

  return v33;
}

- (void)_setupViews
{
  v3 = [MapsThemeLabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(MapsThemeLabel *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v7;

  v9 = [UIFont systemFontOfSize:25.0 weight:UIFontWeightSemibold];
  [(UILabel *)self->_primaryLabel setFont:v9];

  [(UILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_primaryLabel setNumberOfLines:0];
  [(UILabel *)self->_primaryLabel setLineBreakStrategy:0];
  LODWORD(v10) = 1148829696;
  [(UILabel *)self->_primaryLabel setContentCompressionResistancePriority:1 forAxis:v10];
  v11 = +[UIColor labelColor];
  [(UILabel *)self->_primaryLabel setTextColor:v11];

  [(UILabel *)self->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
  [(NavTrafficIncidentHeaderView *)self addSubview:self->_primaryLabel];
  v12 = [[MapsThemeLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = &v12->super;

  v14 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium];
  [(UILabel *)self->_secondaryLabel setFont:v14];

  [(UILabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
  [(UILabel *)self->_secondaryLabel setLineBreakStrategy:0];
  LODWORD(v15) = 1148829696;
  [(UILabel *)self->_secondaryLabel setContentCompressionResistancePriority:1 forAxis:v15];
  v16 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_secondaryLabel setTextColor:v16];

  [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
  [(NavTrafficIncidentHeaderView *)self addSubview:self->_secondaryLabel];
  v17 = [[MKArtworkImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  artworkImageView = self->_artworkImageView;
  self->_artworkImageView = v17;

  [(MKArtworkImageView *)self->_artworkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKArtworkImageView *)self->_artworkImageView setContentMode:1];
  [(MKArtworkImageView *)self->_artworkImageView setAccessibilityIdentifier:@"ArtworkImageView"];
  [(NavTrafficIncidentHeaderView *)self addSubview:self->_artworkImageView];
  LODWORD(v19) = 1112014848;
  v20 = [NavUserDecisionButtonFactory dismissButtonWithHeight:v19];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v20;

  [(MapsCircularProgressButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsCircularProgressButton *)self->_dismissButton addTarget:self action:"dismissButtonTapped:" forControlEvents:64];
  LODWORD(v22) = 1148846080;
  [(MapsCircularProgressButton *)self->_dismissButton setContentHuggingPriority:0 forAxis:v22];
  [(MapsCircularProgressButton *)self->_dismissButton setHidden:1];
  [(MapsCircularProgressButton *)self->_dismissButton setProgressionHidden:1];
  v23 = [(MapsCircularProgressButton *)self->_dismissButton progressView];
  [v23 setLineWidth:3.5];

  v24 = self->_dismissButton;

  [(NavTrafficIncidentHeaderView *)self addSubview:v24];
}

- (NavTrafficIncidentHeaderView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = NavTrafficIncidentHeaderView;
  v3 = [(NavTrafficIncidentHeaderView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NavTrafficIncidentHeaderView *)v3 _setupViews];
    [(NavTrafficIncidentHeaderView *)v4 setAccessibilityIdentifier:@"NavTrafficIncidentHeaderView"];
    v5 = [(NavTrafficIncidentHeaderView *)v4 _initialConstraints];
    [NSLayoutConstraint activateConstraints:v5];
  }

  return v4;
}

@end