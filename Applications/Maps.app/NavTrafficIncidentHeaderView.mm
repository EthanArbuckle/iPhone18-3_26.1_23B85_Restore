@interface NavTrafficIncidentHeaderView
- (NavTrafficIncidentHeaderView)initWithFrame:(CGRect)frame;
- (NavTrafficIncidentHeaderViewDelegate)delegate;
- (id)_initialConstraints;
- (void)_setupViews;
- (void)dismissButtonTapped:(id)tapped;
- (void)setImageSource:(id)source;
@end

@implementation NavTrafficIncidentHeaderView

- (NavTrafficIncidentHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dismissButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navTrafficIncidentHeaderViewTappedDismissButton:self];
}

- (void)setImageSource:(id)source
{
  [(MKArtworkImageView *)self->_artworkImageView setImageSource:?];
  v5 = 52.0;
  if (source)
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
  if (!source)
  {
    primaryLabelTrailingConstraint = self->_primaryLabelTrailingConstraint;
    v7 = [NSArray arrayWithObjects:&primaryLabelTrailingConstraint count:1];
    [NSLayoutConstraint deactivateConstraints:v7];

    trailingAnchor = [(UILabel *)self->_primaryLabel trailingAnchor];
    leadingAnchor = [(MapsCircularProgressButton *)self->_dismissButton leadingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-18.0];
    v11 = self->_primaryLabelTrailingConstraint;
    self->_primaryLabelTrailingConstraint = v10;

    v13 = self->_primaryLabelTrailingConstraint;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [NSLayoutConstraint activateConstraints:v12];
  }
}

- (id)_initialConstraints
{
  widthAnchor = [(MKArtworkImageView *)self->_artworkImageView widthAnchor];
  v4 = [widthAnchor constraintEqualToConstant:52.0];
  imageViewWidthConstraint = self->_imageViewWidthConstraint;
  self->_imageViewWidthConstraint = v4;

  bottomAnchor = [(MKArtworkImageView *)self->_artworkImageView bottomAnchor];
  topAnchor = [(UILabel *)self->_primaryLabel topAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:10.0];
  imageViewToPrimaryLabelVerticalConstraint = self->_imageViewToPrimaryLabelVerticalConstraint;
  self->_imageViewToPrimaryLabelVerticalConstraint = v8;

  trailingAnchor = [(UILabel *)self->_primaryLabel trailingAnchor];
  trailingAnchor2 = [(NavTrafficIncidentHeaderView *)self trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-4.0];
  primaryLabelTrailingConstraint = self->_primaryLabelTrailingConstraint;
  self->_primaryLabelTrailingConstraint = v12;

  firstBaselineAnchor = [(UILabel *)self->_secondaryLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_primaryLabel lastBaselineAnchor];
  v16 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:27.0];
  primaryToSecondaryLabelBaselineConstraint = self->_primaryToSecondaryLabelBaselineConstraint;
  self->_primaryToSecondaryLabelBaselineConstraint = v16;

  leadingAnchor = [(MKArtworkImageView *)self->_artworkImageView leadingAnchor];
  leadingAnchor2 = [(NavTrafficIncidentHeaderView *)self leadingAnchor];
  v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:2.0];
  v18 = self->_imageViewToPrimaryLabelVerticalConstraint;
  v58[0] = v55;
  v58[1] = v18;
  v58[2] = self->_imageViewWidthConstraint;
  leadingAnchor3 = [(UILabel *)self->_primaryLabel leadingAnchor];
  leadingAnchor4 = [(NavTrafficIncidentHeaderView *)self leadingAnchor];
  v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:4.0];
  v19 = self->_primaryLabelTrailingConstraint;
  v58[3] = v52;
  v58[4] = v19;
  leadingAnchor5 = [(UILabel *)self->_secondaryLabel leadingAnchor];
  leadingAnchor6 = [(UILabel *)self->_primaryLabel leadingAnchor];
  v49 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v58[5] = v49;
  trailingAnchor3 = [(UILabel *)self->_secondaryLabel trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_primaryLabel trailingAnchor];
  v46 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v58[6] = v46;
  topAnchor2 = [(MKArtworkImageView *)self->_artworkImageView topAnchor];
  topAnchor3 = [(NavTrafficIncidentHeaderView *)self topAnchor];
  v43 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:22.0];
  v58[7] = v43;
  heightAnchor = [(MKArtworkImageView *)self->_artworkImageView heightAnchor];
  widthAnchor2 = [(MKArtworkImageView *)self->_artworkImageView widthAnchor];
  v40 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v20 = self->_primaryToSecondaryLabelBaselineConstraint;
  v58[8] = v40;
  v58[9] = v20;
  bottomAnchor2 = [(NavTrafficIncidentHeaderView *)self bottomAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_secondaryLabel lastBaselineAnchor];
  v37 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2 constant:26.0];
  v58[10] = v37;
  bottomAnchor3 = [(NavTrafficIncidentHeaderView *)self bottomAnchor];
  lastBaselineAnchor3 = [(UILabel *)self->_secondaryLabel lastBaselineAnchor];
  LODWORD(v21) = 1148829696;
  v34 = [bottomAnchor3 constraintEqualToAnchor:lastBaselineAnchor3 constant:26.0 priority:v21];
  v58[11] = v34;
  trailingAnchor5 = [(MapsCircularProgressButton *)self->_dismissButton trailingAnchor];
  trailingAnchor6 = [(NavTrafficIncidentHeaderView *)self trailingAnchor];
  v24 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:1.20000005];
  v58[12] = v24;
  topAnchor4 = [(MapsCircularProgressButton *)self->_dismissButton topAnchor];
  topAnchor5 = [(MKArtworkImageView *)self->_artworkImageView topAnchor];
  v27 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:-3.79999995];
  v58[13] = v27;
  heightAnchor2 = [(MapsCircularProgressButton *)self->_dismissButton heightAnchor];
  v29 = [heightAnchor2 constraintEqualToConstant:50.0];
  v58[14] = v29;
  widthAnchor3 = [(MapsCircularProgressButton *)self->_dismissButton widthAnchor];
  v31 = [widthAnchor3 constraintEqualToConstant:50.0];
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
  height = [(MapsThemeLabel *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = height;

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
  height2 = [[MapsThemeLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = &height2->super;

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
  progressView = [(MapsCircularProgressButton *)self->_dismissButton progressView];
  [progressView setLineWidth:3.5];

  v24 = self->_dismissButton;

  [(NavTrafficIncidentHeaderView *)self addSubview:v24];
}

- (NavTrafficIncidentHeaderView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NavTrafficIncidentHeaderView;
  v3 = [(NavTrafficIncidentHeaderView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NavTrafficIncidentHeaderView *)v3 _setupViews];
    [(NavTrafficIncidentHeaderView *)v4 setAccessibilityIdentifier:@"NavTrafficIncidentHeaderView"];
    _initialConstraints = [(NavTrafficIncidentHeaderView *)v4 _initialConstraints];
    [NSLayoutConstraint activateConstraints:_initialConstraints];
  }

  return v4;
}

@end