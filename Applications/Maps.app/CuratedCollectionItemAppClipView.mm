@interface CuratedCollectionItemAppClipView
- (CuratedCollectionItemAppClipView)initWithFrame:(CGRect)a3;
- (void)_updateFonts;
- (void)_updateFromModel;
- (void)setViewModel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CuratedCollectionItemAppClipView

- (void)_updateFromModel
{
  v3 = [(CuratedCollectionItemAppClipViewModel *)self->_viewModel title];
  [(UILabel *)self->_titleLabel setText:v3];

  v4 = [(CuratedCollectionItemAppClipViewModel *)self->_viewModel subtitle];
  [(UILabel *)self->_subtitleLabel setText:v4];

  objc_initWeak(&location, self);
  v5 = self->_viewModel;
  viewModel = self->_viewModel;
  v7 = [(CuratedCollectionItemAppClipView *)self traitCollection];
  [v7 displayScale];
  if (v8 > 0.0)
  {
    v9 = [(CuratedCollectionItemAppClipView *)self traitCollection];
    [v9 displayScale];
  }

  else
  {
    v9 = +[UIScreen mainScreen];
    [v9 scale];
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

- (void)setViewModel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_viewModel != v5)
  {
    v8 = v5;
    v7 = [(CuratedCollectionItemAppClipViewModel *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_viewModel, a3);
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CuratedCollectionItemAppClipView;
  [(CuratedCollectionItemAppClipView *)&v14 traitCollectionDidChange:v4];
  v5 = [(CuratedCollectionItemAppClipView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];
  v8 = sub_10008FB5C(v6, v7);

  if (v8)
  {
    [(CuratedCollectionItemAppClipView *)self _updateFonts];
  }

  v9 = [(CuratedCollectionItemAppClipView *)self traitCollection];
  [v9 displayScale];
  v11 = v10;
  [v4 displayScale];
  v13 = v12;

  if (v11 != v13)
  {
    [(CuratedCollectionItemAppClipView *)self _updateFromModel];
  }
}

- (CuratedCollectionItemAppClipView)initWithFrame:(CGRect)a3
{
  v52.receiver = self;
  v52.super_class = CuratedCollectionItemAppClipView;
  v3 = [(CuratedCollectionItemAppClipView *)&v52 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CuratedCollectionItemAppClipView *)v3 setClipsToBounds:1];
    v5 = [(CuratedCollectionItemAppClipView *)v4 layer];
    [v5 setCornerCurve:kCACornerCurveContinuous];

    v6 = [(CuratedCollectionItemAppClipView *)v4 layer];
    [v6 setCornerRadius:10.0];

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
    v51 = [(UIStackView *)v4->_contentStackView topAnchor];
    v50 = [(CuratedCollectionItemAppClipView *)v4 topAnchor];
    v49 = [v51 constraintEqualToAnchor:v50 constant:12.0];
    v53[0] = v49;
    v48 = [(UIStackView *)v4->_contentStackView leadingAnchor];
    v47 = [(CuratedCollectionItemAppClipView *)v4 leadingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47 constant:16.0];
    v53[1] = v46;
    v45 = [(UIStackView *)v4->_contentStackView trailingAnchor];
    v44 = [(CuratedCollectionItemAppClipView *)v4 trailingAnchor];
    v33 = [v45 constraintEqualToAnchor:v44 constant:-16.0];
    v53[2] = v33;
    v34 = [(UIStackView *)v4->_contentStackView bottomAnchor];
    v35 = [(CuratedCollectionItemAppClipView *)v4 bottomAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:-12.0];
    v53[3] = v36;
    v37 = [(UIImageView *)v4->_artworkImageView widthAnchor];
    v38 = [v37 constraintEqualToConstant:30.0];
    v53[4] = v38;
    v39 = [(UIImageView *)v4->_artworkImageView heightAnchor];
    v40 = [v39 constraintEqualToConstant:30.0];
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