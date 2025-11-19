@interface TransitSchedulesHeaderView
- (TransitSchedulesHeaderView)initWithTransitLine:(id)a3;
- (void)createViewsWithTitle:(id)a3 subtitle:(id)a4 artwork:(id)a5;
- (void)setArtwork:(id)a3;
@end

@implementation TransitSchedulesHeaderView

- (void)setArtwork:(id)a3
{
  v4 = a3;
  v5 = +[MKArtworkDataSourceCache sharedInstance];
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [v5 imageForArtwork:v4 size:7 featureType:2 scale:-[TransitSchedulesHeaderView _mapkit_isDarkModeEnabled](self nightMode:{"_mapkit_isDarkModeEnabled"), v8}];

  if (v9)
  {
    lineImageryView = self->_lineImageryView;
    if (lineImageryView)
    {
      [(UIImageView *)lineImageryView setImage:v9];
    }

    else
    {
      v11 = [[UIImageView alloc] initWithImage:v9];
      v12 = self->_lineImageryView;
      self->_lineImageryView = v11;

      [(UIImageView *)self->_lineImageryView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIImageView *)self->_lineImageryView setContentMode:1];
      [(UIImageView *)self->_lineImageryView setAccessibilityIdentifier:@"TransitSchedulesHeaderViewLineImageryView"];
      LODWORD(v13) = 1144750080;
      [(UIImageView *)self->_lineImageryView setContentCompressionResistancePriority:1 forAxis:v13];
      LODWORD(v14) = 1144750080;
      [(UIImageView *)self->_lineImageryView setContentCompressionResistancePriority:0 forAxis:v14];
      LODWORD(v15) = 1144750080;
      [(UIImageView *)self->_lineImageryView setContentHuggingPriority:0 forAxis:v15];
      [(TransitSchedulesHeaderView *)self addSubview:self->_lineImageryView];
      v31 = [(UIImageView *)self->_lineImageryView leadingAnchor];
      v32 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
      v30 = [v32 leadingAnchor];
      v29 = [v31 constraintEqualToAnchor:v30 constant:16.0];
      v33[0] = v29;
      v27 = [(UIImageView *)self->_lineImageryView topAnchor];
      v28 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
      v26 = [v28 topAnchor];
      v25 = [v27 constraintEqualToAnchor:v26];
      v24 = [DynamicTypeWizard autoscaledConstraint:v25 constant:&stru_10165D9E8 withFontProvider:20.0];
      v33[1] = v24;
      v16 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
      v17 = [v16 bottomAnchor];
      v18 = [(UIImageView *)self->_lineImageryView bottomAnchor];
      v19 = [v17 constraintEqualToSystemSpacingBelowAnchor:v18 multiplier:1.0];
      v33[2] = v19;
      v20 = [(UILabel *)self->_titleLabel leadingAnchor];
      v21 = [(UIImageView *)self->_lineImageryView trailingAnchor];
      v22 = [v20 constraintEqualToAnchor:v21 constant:10.0];
      v33[3] = v22;
      v23 = [NSArray arrayWithObjects:v33 count:4];
      [NSLayoutConstraint activateConstraints:v23];
    }
  }
}

- (void)createViewsWithTitle:(id)a3 subtitle:(id)a4 artwork:(id)a5
{
  v54 = a5;
  v8 = a4;
  v9 = a3;
  [(TransitSchedulesHeaderView *)self setAccessibilityIdentifier:@"TransitSchedulesHeaderView"];
  v10 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v10;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v12];

  [(UILabel *)self->_titleLabel setNumberOfLines:2];
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"TransitSchedulesHeaderViewTitleLabel"];
  LODWORD(v13) = 1148846080;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v13];
  LODWORD(v14) = 1132068864;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:0 forAxis:v14];
  [DynamicTypeWizard autorefreshLabel:self->_titleLabel withFontProvider:&stru_10165D9E8];
  [(TransitSchedulesHeaderView *)self addSubview:self->_titleLabel];
  v15 = objc_alloc_init(UILabel);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v15;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [DynamicTypeWizard autorefreshLabel:self->_subtitleLabel withFontProvider:&stru_10165D908];
  v17 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v17];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:2];
  [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:@"TransitSchedulesHeaderViewSubtitleLabel"];
  LODWORD(v18) = 1148846080;
  [(UILabel *)self->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v18];
  LODWORD(v19) = 1132068864;
  [(UILabel *)self->_subtitleLabel setContentCompressionResistancePriority:0 forAxis:v19];
  [(TransitSchedulesHeaderView *)self addSubview:self->_subtitleLabel];
  [(UILabel *)self->_titleLabel setText:v9];

  [(UILabel *)self->_subtitleLabel setText:v8];
  v20 = [(UILabel *)self->_titleLabel leadingAnchor];
  v21 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
  v22 = [v21 leadingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:16.0];

  LODWORD(v24) = 1144733696;
  v53 = v23;
  [v23 setPriority:v24];
  v55[0] = v23;
  v51 = [(UILabel *)self->_titleLabel trailingAnchor];
  v52 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
  v50 = [v52 trailingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v55[1] = v49;
  v47 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v48 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
  v46 = [v48 topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v44 = [DynamicTypeWizard autoscaledConstraint:v45 constant:&stru_10165D9E8 withFontProvider:36.0];
  v55[2] = v44;
  v43 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
  v42 = [v43 bottomAnchor];
  v41 = [(UILabel *)self->_titleLabel bottomAnchor];
  v40 = [v42 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v41 multiplier:0.0];
  v55[3] = v40;
  v39 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v38 = [(UILabel *)self->_titleLabel leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v55[4] = v37;
  v36 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v35 = [(UILabel *)self->_titleLabel trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v55[5] = v34;
  v25 = [(UILabel *)self->_subtitleLabel firstBaselineAnchor];
  v26 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v28 = [DynamicTypeWizard autoscaledConstraint:v27 constant:&stru_10165D908 withFontProvider:21.0];
  v55[6] = v28;
  v29 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
  v30 = [v29 bottomAnchor];
  v31 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  v32 = [v30 constraintEqualToSystemSpacingBelowAnchor:v31 multiplier:1.0];
  v55[7] = v32;
  v33 = [NSArray arrayWithObjects:v55 count:8];
  [NSLayoutConstraint activateConstraints:v33];

  [(TransitSchedulesHeaderView *)self setArtwork:v54];
}

- (TransitSchedulesHeaderView)initWithTransitLine:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TransitSchedulesHeaderView;
  v5 = [(TransitSchedulesHeaderView *)&v10 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = [v4 artwork];
    v7 = [v4 system];
    v8 = [v7 name];

    [(TransitSchedulesHeaderView *)v5 createViewsWithTitle:v8 subtitle:0 artwork:v6];
  }

  return v5;
}

@end