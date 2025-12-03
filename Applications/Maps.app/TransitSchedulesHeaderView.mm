@interface TransitSchedulesHeaderView
- (TransitSchedulesHeaderView)initWithTransitLine:(id)line;
- (void)createViewsWithTitle:(id)title subtitle:(id)subtitle artwork:(id)artwork;
- (void)setArtwork:(id)artwork;
@end

@implementation TransitSchedulesHeaderView

- (void)setArtwork:(id)artwork
{
  artworkCopy = artwork;
  v5 = +[MKArtworkDataSourceCache sharedInstance];
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [v5 imageForArtwork:artworkCopy size:7 featureType:2 scale:-[TransitSchedulesHeaderView _mapkit_isDarkModeEnabled](self nightMode:{"_mapkit_isDarkModeEnabled"), v8}];

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
      leadingAnchor = [(UIImageView *)self->_lineImageryView leadingAnchor];
      safeAreaLayoutGuide = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
      leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
      v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
      v33[0] = v29;
      topAnchor = [(UIImageView *)self->_lineImageryView topAnchor];
      safeAreaLayoutGuide2 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
      topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
      v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v24 = [DynamicTypeWizard autoscaledConstraint:v25 constant:&stru_10165D9E8 withFontProvider:20.0];
      v33[1] = v24;
      safeAreaLayoutGuide3 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
      bottomAnchor = [safeAreaLayoutGuide3 bottomAnchor];
      bottomAnchor2 = [(UIImageView *)self->_lineImageryView bottomAnchor];
      v19 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
      v33[2] = v19;
      leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
      trailingAnchor = [(UIImageView *)self->_lineImageryView trailingAnchor];
      v22 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
      v33[3] = v22;
      v23 = [NSArray arrayWithObjects:v33 count:4];
      [NSLayoutConstraint activateConstraints:v23];
    }
  }
}

- (void)createViewsWithTitle:(id)title subtitle:(id)subtitle artwork:(id)artwork
{
  artworkCopy = artwork;
  subtitleCopy = subtitle;
  titleCopy = title;
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
  [(UILabel *)self->_titleLabel setText:titleCopy];

  [(UILabel *)self->_subtitleLabel setText:subtitleCopy];
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  safeAreaLayoutGuide = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];

  LODWORD(v24) = 1144733696;
  v53 = v23;
  [v23 setPriority:v24];
  v55[0] = v23;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  safeAreaLayoutGuide2 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v49 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v55[1] = v49;
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  safeAreaLayoutGuide3 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide3 topAnchor];
  v45 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  v44 = [DynamicTypeWizard autoscaledConstraint:v45 constant:&stru_10165D9E8 withFontProvider:36.0];
  v55[2] = v44;
  safeAreaLayoutGuide4 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide4 bottomAnchor];
  bottomAnchor2 = [(UILabel *)self->_titleLabel bottomAnchor];
  v40 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:0.0];
  v55[3] = v40;
  leadingAnchor3 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor4 = [(UILabel *)self->_titleLabel leadingAnchor];
  v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v55[4] = v37;
  trailingAnchor3 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_titleLabel trailingAnchor];
  v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v55[5] = v34;
  firstBaselineAnchor2 = [(UILabel *)self->_subtitleLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v27 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  v28 = [DynamicTypeWizard autoscaledConstraint:v27 constant:&stru_10165D908 withFontProvider:21.0];
  v55[6] = v28;
  safeAreaLayoutGuide5 = [(TransitSchedulesHeaderView *)self safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide5 bottomAnchor];
  bottomAnchor4 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  v32 = [bottomAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:1.0];
  v55[7] = v32;
  v33 = [NSArray arrayWithObjects:v55 count:8];
  [NSLayoutConstraint activateConstraints:v33];

  [(TransitSchedulesHeaderView *)self setArtwork:artworkCopy];
}

- (TransitSchedulesHeaderView)initWithTransitLine:(id)line
{
  lineCopy = line;
  v10.receiver = self;
  v10.super_class = TransitSchedulesHeaderView;
  v5 = [(TransitSchedulesHeaderView *)&v10 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    artwork = [lineCopy artwork];
    system = [lineCopy system];
    name = [system name];

    [(TransitSchedulesHeaderView *)v5 createViewsWithTitle:name subtitle:0 artwork:artwork];
  }

  return v5;
}

@end