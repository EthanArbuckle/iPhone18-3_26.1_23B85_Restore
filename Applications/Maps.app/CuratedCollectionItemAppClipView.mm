@interface CuratedCollectionItemAppClipView
- (CuratedCollectionItemAppClipView)initWithFrame:(CGRect)frame;
- (void)_updateFonts;
- (void)_updateFromModel;
- (void)setViewModel:(id)model;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CuratedCollectionItemAppClipView

- (void)_updateFromModel
{
  title = [(CuratedCollectionItemAppClipViewModel *)self->_viewModel title];
  [(UILabel *)self->_titleLabel setText:title];

  subtitle = [(CuratedCollectionItemAppClipViewModel *)self->_viewModel subtitle];
  [(UILabel *)self->_subtitleLabel setText:subtitle];

  objc_initWeak(&location, self);
  v5 = self->_viewModel;
  viewModel = self->_viewModel;
  traitCollection = [(CuratedCollectionItemAppClipView *)self traitCollection];
  [traitCollection displayScale];
  if (v8 > 0.0)
  {
    traitCollection2 = [(CuratedCollectionItemAppClipView *)self traitCollection];
    [traitCollection2 displayScale];
  }

  else
  {
    traitCollection2 = +[UIScreen mainScreen];
    [traitCollection2 scale];
  }

  v11 = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B29424;
  v13[3] = &unk_1016612F0;
  objc_copyWeak(&v15, &location);
  v12 = v5;
  v14 = v12;
  [(CuratedCollectionItemAppClipViewModel *)viewModel fetchAppClipIconWithSize:v13 scale:30.0 completion:30.0, v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_viewModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(CuratedCollectionItemAppClipViewModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_viewModel, model);
      [(CuratedCollectionItemAppClipView *)self _updateFromModel];
      v6 = v8;
    }
  }
}

- (void)_updateFonts
{
  v3 = +[UIFont system17SemiBold];
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = +[UIFont system13];
  [(UILabel *)self->_subtitleLabel setFont:v4];

  v6 = +[UIFont system20Semibold];
  v5 = [UIImageSymbolConfiguration configurationWithFont:v6 scale:2];
  [(UIImageView *)self->_appClipSymbolImageView setPreferredSymbolConfiguration:v5];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v14.receiver = self;
  v14.super_class = CuratedCollectionItemAppClipView;
  [(CuratedCollectionItemAppClipView *)&v14 traitCollectionDidChange:changeCopy];
  traitCollection = [(CuratedCollectionItemAppClipView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);

  if (v8)
  {
    [(CuratedCollectionItemAppClipView *)self _updateFonts];
  }

  traitCollection2 = [(CuratedCollectionItemAppClipView *)self traitCollection];
  [traitCollection2 displayScale];
  v11 = v10;
  [changeCopy displayScale];
  v13 = v12;

  if (v11 != v13)
  {
    [(CuratedCollectionItemAppClipView *)self _updateFromModel];
  }
}

- (CuratedCollectionItemAppClipView)initWithFrame:(CGRect)frame
{
  v52.receiver = self;
  v52.super_class = CuratedCollectionItemAppClipView;
  v3 = [(CuratedCollectionItemAppClipView *)&v52 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CuratedCollectionItemAppClipView *)v3 setClipsToBounds:1];
    layer = [(CuratedCollectionItemAppClipView *)v4 layer];
    [layer setCornerCurve:kCACornerCurveContinuous];

    layer2 = [(CuratedCollectionItemAppClipView *)v4 layer];
    [layer2 setCornerRadius:10.0];

    [(CuratedCollectionItemAppClipView *)v4 setAccessibilityIdentifier:@"CuratedCollectionItemAppClip"];
    v7 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v11;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = +[UIColor labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v13];

    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v14;

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:v16];

    [(UILabel *)v4->_subtitleLabel setAccessibilityIdentifier:@"SubtitleLabel"];
    v17 = [UIStackView alloc];
    v55[0] = v4->_titleLabel;
    v55[1] = v4->_subtitleLabel;
    v18 = [NSArray arrayWithObjects:v55 count:2];
    v19 = [v17 initWithArrangedSubviews:v18];
    titleStackView = v4->_titleStackView;
    v4->_titleStackView = v19;

    [(UIStackView *)v4->_titleStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_titleStackView setAxis:1];
    [(UIStackView *)v4->_titleStackView setAccessibilityIdentifier:@"TitleStackView"];
    v21 = objc_alloc_init(UIImageView);
    artworkImageView = v4->_artworkImageView;
    v4->_artworkImageView = v21;

    [(UIImageView *)v4->_artworkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_artworkImageView setContentMode:2];
    [(UIImageView *)v4->_artworkImageView setAccessibilityIdentifier:@"ArtworkImageView"];
    v23 = [UIImageView alloc];
    v24 = [UIImage systemImageNamed:@"appclip"];
    v25 = [v23 initWithImage:v24];
    appClipSymbolImageView = v4->_appClipSymbolImageView;
    v4->_appClipSymbolImageView = v25;

    [(UIImageView *)v4->_appClipSymbolImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v27) = 1132134400;
    [(UIImageView *)v4->_appClipSymbolImageView setContentHuggingPriority:0 forAxis:v27];
    LODWORD(v28) = 1144766464;
    [(UIImageView *)v4->_appClipSymbolImageView setContentCompressionResistancePriority:0 forAxis:v28];
    [(UIImageView *)v4->_appClipSymbolImageView setAccessibilityIdentifier:@"AppClipSymbolImageView"];
    v29 = [UIStackView alloc];
    v54[0] = v4->_artworkImageView;
    v54[1] = v4->_titleStackView;
    v54[2] = v4->_appClipSymbolImageView;
    v30 = [NSArray arrayWithObjects:v54 count:3];
    v31 = [v29 initWithArrangedSubviews:v30];
    contentStackView = v4->_contentStackView;
    v4->_contentStackView = v31;

    [(UIStackView *)v4->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_contentStackView setAlignment:3];
    [(UIStackView *)v4->_contentStackView setSpacing:10.0];
    [(UIStackView *)v4->_contentStackView setAccessibilityIdentifier:@"ContentStackView"];
    [(CuratedCollectionItemAppClipView *)v4 addSubview:v4->_contentStackView];
    topAnchor = [(UIStackView *)v4->_contentStackView topAnchor];
    topAnchor2 = [(CuratedCollectionItemAppClipView *)v4 topAnchor];
    v49 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    v53[0] = v49;
    leadingAnchor = [(UIStackView *)v4->_contentStackView leadingAnchor];
    leadingAnchor2 = [(CuratedCollectionItemAppClipView *)v4 leadingAnchor];
    v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v53[1] = v46;
    trailingAnchor = [(UIStackView *)v4->_contentStackView trailingAnchor];
    trailingAnchor2 = [(CuratedCollectionItemAppClipView *)v4 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v53[2] = v33;
    bottomAnchor = [(UIStackView *)v4->_contentStackView bottomAnchor];
    bottomAnchor2 = [(CuratedCollectionItemAppClipView *)v4 bottomAnchor];
    v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];
    v53[3] = v36;
    widthAnchor = [(UIImageView *)v4->_artworkImageView widthAnchor];
    v38 = [widthAnchor constraintEqualToConstant:30.0];
    v53[4] = v38;
    heightAnchor = [(UIImageView *)v4->_artworkImageView heightAnchor];
    v40 = [heightAnchor constraintEqualToConstant:30.0];
    v53[5] = v40;
    v41 = [NSArray arrayWithObjects:v53 count:6];
    [NSLayoutConstraint activateConstraints:v41];

    [(CuratedCollectionItemAppClipView *)v4 _updateFonts];
    v42 = +[UIColor secondarySystemGroupedBackgroundColor];
    [(CuratedCollectionItemAppClipView *)v4 setBackgroundColor:v42];
  }

  return v4;
}

@end